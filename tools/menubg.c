/* menubg - Menu background converter tool for AKI Corporation's N64 games
 * written by freem
 *
 * This program is licensed under the Unlicense.
 * See the "UNLICENSE" file for more information.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdint.h>
#include "lodepng.h"

/* SCALE_M_N: upscale/downscale M-bit integer to N-bit */
#define SCALE_5_8(VAL_) (((VAL_) * 0xFF) / 0x1F)
#define SCALE_8_5(VAL_) ((((VAL_) + 4) * 0x1F) / 0xFF)

#define MENU_BACKGROUND_WIDTH  320
#define MENU_BACKGROUND_HEIGHT 240

enum ProgMode{
	MODE_EXPORT = 0, /* -l; export MenuBG files to PNG */
	MODE_IMPORT      /* -p; convert PNG to MenuBG files */
} ProgramMode;

enum BackgroundType{
	BGTYPE_OLD = 0, /* 320x24px chunks; 10 files, 1 column  x 10 rows (WM2000) */
	BGTYPE_NEW,     /* 64x30px chunks;  40 files, 5 columns x 8 rows  (VPW2/No Mercy) */
};

static inline int GetChunkWidth(int bgType) { return bgType == BGTYPE_NEW ? 64 : MENU_BACKGROUND_WIDTH; }
static inline int GetChunkHeight(int bgType){ return bgType == BGTYPE_NEW ? 30 : MENU_BACKGROUND_HEIGHT/10; }

static inline int GetNumChunkRows(int bgType){ return bgType == BGTYPE_NEW ? 8 : 10; }
static inline int GetNumChunkCols(int bgType){ return bgType == BGTYPE_NEW ? 5 : 1; }

/*----------------------------------------------------------------------------*/
typedef struct {
	char *pngFilename;
	char *listFilename;
	int   bgType;
	int   modeDefined;
	char *outDir;
} InputArgs;

static const InputArgs defaultArgs = {
	.pngFilename = NULL,
	.listFilename = NULL,
	.bgType = -1,
	.modeDefined = 0,
	.outDir = NULL
};

/*----------------------------------------------------------------------------*/
static int StringToBGType(const char* str){
	if(strcmp(str, "old") == 0){
		return BGTYPE_OLD;
	}
	else if(strcmp(str, "new") == 0){
		return BGTYPE_NEW;
	}
	return -1;
}

static char* GetBaseFilename(const char* filename){
	const char* lastDot = strrchr(filename, '.');
	if(lastDot == NULL || lastDot == filename){
		return "";
	}
	int fnLen = (int)(lastDot-filename);
	char* base = (char*)calloc(fnLen+1, 1);
	if(!base){
		printf("[GetBaseFilename] Error allocating memory for base filename\n");
		return NULL;
	}
	strncpy(base, filename, fnLen);
	base[fnLen] = '\0';
	return base;
}

/*----------------------------------------------------------------------------*/
static int parseArgs(int argc, char* argv[], InputArgs* outArgs){
	for(int i = 1; i < argc; i++){
		if(argv[i][0] == '-'){
			switch(argv[i][1]){
				case 'l': /* -l: export list of MenuBackground binary files to a single PNG */
					if(++i >= argc){
						printf("Error: -l requires a filename\n");
						return 0;
					}
					outArgs->listFilename = argv[i];
					if(!outArgs->modeDefined){
						ProgramMode = MODE_EXPORT;
						outArgs->modeDefined = 1;
					}
					else{
						printf("Error: Cannot use -l when -p has been defined\n");
						return 0;
					}
					break;

				case 'p': /* -p: export PNG file as MenuBackground binary */
					if(++i >= argc){
						printf("Error: -p requires a filename\n");
						return 0;
					}
					outArgs->pngFilename = argv[i];
					if(!outArgs->modeDefined){
						ProgramMode = MODE_IMPORT;
						outArgs->modeDefined = 1;
					}
					else{
						printf("Error: Cannot use -p when -l has been defined\n");
						return 0;
					}
					break;

				case 't': /* -t: background type */
					if(++i >= argc){
						printf("Error: -t requires a type\n");
						return 0;
					}
					outArgs->bgType = StringToBGType(argv[i]);
					if(outArgs->bgType < 0){
						printf("Error: Unrecognized BG type string '%s'\n", argv[i]);
						return 0;
					}
					break;

				case 'd': /* -d: output directory */
					if(++i >= argc){
						printf("Error: -d requires a directory\n");
						return 0;
					}
					outArgs->outDir = argv[i];
					break;

				default:
					printf("Unrecognized option '%s'.\n", argv[i]);
					return 0;
					break;
			}
		}
	}
	return 1; /* ok */
}

static void Usage(char* execName){
	printf("Usage:\n");
	printf("  MenuBG list to PNG: \t%s -l LIST_FILE -t BG_TYPE [-d OUT_DIR]\n", execName);
	printf("  PNG to MenuBG files:\t%s -p PNG_FILE -t BG_TYPE [-d OUT_DIR]\n", execName);
	printf("\n");
	printf("Valid BG_TYPE values are:\n");
	printf("  - 'old' (320x24px chunks; WM2000)\n");
	printf("  - 'new' (64x30px chunks; VPW2/No Mercy)\n");
	printf("\n");
	printf("Notice: Input PNG files *must* be 320x240 pixels and 16 colors, paletted.\n");
}

/*----------------------------------------------------------------------------*/
int main(int argc, char* argv[]){
	InputArgs progArgs = defaultArgs;
	char** fileList;
	char* outFilenameBase;
	FILE* curBgFile;
	uint8_t palData[16*2];
	uint8_t* rawData;
	LodePNGState lpState;
	unsigned lodepngReturnVal = 0;
	int bytesPerChunk;

	printf("menubg - Menu background converter tool for AKI Corporation's N64 games\n");

	if(argc <= 1){
		Usage(argv[0]);
		exit(EXIT_FAILURE);
	}

	if(!parseArgs(argc, argv, &progArgs)){
		exit(EXIT_FAILURE);
	}

	if(progArgs.bgType < 0 || progArgs.bgType > 1){
		printf("Error: Background type not set to a valid option.\n");
		exit(EXIT_FAILURE);
	}

	if(ProgramMode == MODE_EXPORT){
		/* list of MenuBG binary files to stitch into a PNG */
		FILE* listFile;
		int numLines = progArgs.bgType == BGTYPE_NEW ? 40 : 10;
		int totalBinSize;
		char outFilename[256];
		unsigned char *outPngData;
		size_t outPngSize;

		outFilenameBase = GetBaseFilename(progArgs.listFilename);
		if(progArgs.outDir != NULL){
			sprintf(outFilename, "%s/%s.png", progArgs.outDir, outFilenameBase);
		}
		else{
			sprintf(outFilename, "%s.png", outFilenameBase);
		}

		listFile = fopen(progArgs.listFilename, "r");
		if(!listFile){
			printf("Unable to open list file '%s'\n", progArgs.listFilename);
			exit(EXIT_FAILURE);
		}

		fileList = (char**)calloc(sizeof(char*)*numLines, 1);
		if(!fileList){
			printf("Unable to allocate memory for fileList\n");
			exit(EXIT_FAILURE);
		}

		for(int i = 0; i < numLines; i++){
			fileList[i] = calloc(256, 1);
			if(fgets(fileList[i], 256, listFile) != NULL){
				fileList[i][strcspn(fileList[i], "\n")] = '\0';
			}
		}
		fclose(listFile);

		lodepng_state_init(&lpState);

		/* get palette from first file */
		curBgFile = fopen(fileList[0],"rb");
		if(!curBgFile){
			printf("Error opening first background file '%s'\n", fileList[0]);
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		fread(palData, sizeof(uint8_t), 32, curBgFile);

		/* convert n64 rgba 5551 to rgba8888 for output palette */
		for(int i = 0; i < 16; i++){
			int r = SCALE_5_8((palData[i*2] & 0xF8) >> 3);
			int g = SCALE_5_8((palData[i*2] & 0x07) << 2 | (palData[(i*2)+1] & 0xC0) >> 6);
			int b = SCALE_5_8((palData[(i*2)+1] & 0x3E) >> 1);
			int a = ((palData[(i*2)+1] & 1) == 0) ? 0 : 255;
			lodepng_palette_add(&lpState.info_png.color, r, g, b, a);
			lodepng_palette_add(&lpState.info_raw, r, g, b, a);
		}

		lpState.info_png.color.colortype = LCT_PALETTE;
		lpState.info_png.color.bitdepth = 4;
		lpState.info_raw.colortype = LCT_PALETTE;
		lpState.info_raw.bitdepth = 4;
		lpState.encoder.auto_convert = 0;

		/* calculate size */
		bytesPerChunk = (GetChunkWidth(progArgs.bgType)*GetChunkHeight(progArgs.bgType))/2;
		totalBinSize = bytesPerChunk * GetNumChunkRows(progArgs.bgType) * GetNumChunkCols(progArgs.bgType);

		rawData = (uint8_t*)calloc(totalBinSize, 1);
		if(!rawData){
			printf("Error allocating memory for raw data\n");
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		/* get pixels from first file */
		fread(rawData, 1, bytesPerChunk, curBgFile);

		fclose(curBgFile);

		/* handle pixel data */
		if(progArgs.bgType == BGTYPE_OLD){
			for(int i = 1; i < numLines; i++){
				curBgFile = fopen(fileList[i], "rb");
				if(!curBgFile){
					printf("Error opening file '%s' for reading\n", fileList[i]);
					lodepng_state_cleanup(&lpState);
					exit(EXIT_FAILURE);
				}
				fread(rawData+(bytesPerChunk*i), 1, bytesPerChunk, curBgFile);
				fclose(curBgFile);
			}

			lodepngReturnVal = lodepng_encode(&outPngData, &outPngSize, rawData, MENU_BACKGROUND_WIDTH, MENU_BACKGROUND_HEIGHT, &lpState);
			if(!lodepngReturnVal){
				lodepng_save_file(outPngData, outPngSize, outFilename);
			}

			if(lodepngReturnVal){
				printf("Error writing to '%s':\nlodepng error %u: %s\n", outFilename, lodepngReturnVal, lodepng_error_text(lodepngReturnVal));
				lodepng_state_cleanup(&lpState);
				exit(EXIT_FAILURE);
			}

		}
		else{ /* BGTYPE_NEW */
			/* this is a lot more challenging to piece together. */
			uint8_t* transformed;
			int transformPos = 0;
			int bytesChunkRow = bytesPerChunk/GetChunkHeight(progArgs.bgType);

			/* start by getting the remaining data */
			for(int i = 1; i < numLines; i++){
				curBgFile = fopen(fileList[i], "rb");
				if(!curBgFile){
					printf("Error opening file '%s' for reading\n", fileList[i]);
					lodepng_state_cleanup(&lpState);
					exit(EXIT_FAILURE);
				}
				fread(rawData+(bytesPerChunk*i), 1, bytesPerChunk, curBgFile);
				fclose(curBgFile);
			}

			/* rawData now has each 64x30px chunk one after the other.
			 * we need to re-organize it. */
			transformed = (uint8_t*)calloc(totalBinSize, 1);
			if(!transformed){
				printf("Error allocating memory for transformed data\n");
				lodepng_state_cleanup(&lpState);
				exit(EXIT_FAILURE);
			}

			/* for each chunk, get 32 pixels to compose a row of 320px */
			for(int cRow = 0; cRow < GetNumChunkRows(progArgs.bgType); cRow++){
				for(int pRow = 0; pRow < GetChunkHeight(progArgs.bgType); pRow++){
					for(int cCol = 0; cCol < GetNumChunkCols(progArgs.bgType); cCol++){
						int chunkNum = cRow*GetNumChunkCols(progArgs.bgType) + cCol;
						int basePos = chunkNum*bytesPerChunk+(pRow*bytesChunkRow);
						memcpy(transformed+transformPos, rawData+basePos, bytesChunkRow);
						transformPos+=bytesChunkRow;
					}
				}
			}

			lodepngReturnVal = lodepng_encode(&outPngData, &outPngSize, transformed, MENU_BACKGROUND_WIDTH, MENU_BACKGROUND_HEIGHT, &lpState);
			if(!lodepngReturnVal){
				lodepng_save_file(outPngData, outPngSize, outFilename);
			}

			if(lodepngReturnVal){
				printf("Error writing to '%s':\nlodepng error %u: %s\n", outFilename, lodepngReturnVal, lodepng_error_text(lodepngReturnVal));
				lodepng_state_cleanup(&lpState);
				exit(EXIT_FAILURE);
			}
			free(transformed);
		}

		/* clean up */
		lodepng_state_cleanup(&lpState);
		free(rawData);
		for(int i = numLines; i >= 0; i--){
			free(fileList[i]);
		}
	}
	else{ /* MODE_IMPORT */
		unsigned error;
		size_t pngSize;
		unsigned char *imageData = 0;
		unsigned char *inPngData = 0;
		unsigned width, height;
		char *curOutFilename = 0;
		int curFileNum = 0;

		/* load a PNG file, chunk it up into pieces and spit them out */
		outFilenameBase = GetBaseFilename(progArgs.pngFilename);

		lodepng_state_init(&lpState);

		/* load png and perform some sanity checks */
		error = lodepng_load_file(&inPngData, &pngSize, progArgs.pngFilename);
		if(!error){
			lpState.info_raw.colortype = LCT_PALETTE;
			lpState.info_raw.bitdepth = 4;
			lpState.decoder.color_convert = 0;
			error = lodepng_decode(&imageData, &width, &height, &lpState, inPngData, pngSize);
		}
		if(error){
			printf("LodePNG decoding error %u: %s\n", error, lodepng_error_text(error));
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		/* resolution sanity check: all menu bgs are 320x240 when assembled */
		if(width != MENU_BACKGROUND_WIDTH || height != MENU_BACKGROUND_HEIGHT){
			printf("Error: Input menu background image must be 320x240 pixels; found %u x %u.\n",width,height);
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		/* palette sanity check: only paletted images are accepted */
		if(lpState.info_png.color.colortype != LCT_PALETTE){
			printf("Error: Input menu background image must use a 16 color palette.\n");
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		/* bit sanity depth check: only 4bpp/16 color images are accepted */
		if(lpState.info_png.color.bitdepth != 4){
			printf("Error: Input menu background image must be 4bpp/16 colors; input image bit depth is %d.\n", lpState.info_png.color.bitdepth);
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		int outFilenameLen = 0;
		if(progArgs.outDir != NULL){
			outFilenameLen = strlen(outFilenameBase)+strlen(progArgs.outDir)+9;
		}
		else{
			outFilenameLen = strlen(outFilenameBase)+8;
		}

		curOutFilename = (char *)calloc(outFilenameLen, 1);
		if(!curOutFilename){
			printf("Error attempting to allocate string memory.\n");
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		if(progArgs.outDir != NULL){
			sprintf(curOutFilename, "%s/%s_%02d.bin", progArgs.outDir, outFilenameBase, curFileNum);
		}
		else{
			sprintf(curOutFilename, "%s_%02d.bin", outFilenameBase, curFileNum);
		}

		curBgFile = fopen(curOutFilename, "wb");
		if(!curBgFile){
			printf("Error opening output file '%s'.\n", curOutFilename);
			lodepng_state_cleanup(&lpState);
			exit(EXIT_FAILURE);
		}

		/* calculate size */
		bytesPerChunk = (GetChunkWidth(progArgs.bgType)*GetChunkHeight(progArgs.bgType))/2;

		/* extract palette from input image into palData */
		/* has to be converted from rgba8888 to rgba5551 */
		for(int i = 0; i < 16; i++){
			int r = SCALE_8_5(lpState.info_png.color.palette[(i*4)]);
			int g = SCALE_8_5(lpState.info_png.color.palette[(i*4)+1]);
			int b = SCALE_8_5(lpState.info_png.color.palette[(i*4)+2]);
			int a = lpState.info_png.color.palette[(i*4)+3];

			palData[(i*2)] = ((r & 0x1F) << 3) | ((g & 0x1C) >> 2);
			palData[(i*2)+1] = ((g & 3) << 6) | ((b & 0x1F) << 1);
			palData[(i*2)+1] |= (a == 0) ? 0 : 1;
		}
		/* write palette at the beginning of the first bg chunk file */
		fwrite(palData, sizeof(uint8_t), sizeof(palData), curBgFile);
		free(inPngData);

		/* convert remaining chunks based on output type */
		if(progArgs.bgType == BGTYPE_OLD){
			/* write pixels for first bg chunk file */
			fwrite(imageData, 1, bytesPerChunk, curBgFile);
			fclose(curBgFile);

			/* 320x24, 10 files */
			for(curFileNum = 1; curFileNum < 10; curFileNum++){
				if(progArgs.outDir != NULL){
					sprintf(curOutFilename, "%s/%s_%02d.bin", progArgs.outDir, outFilenameBase, curFileNum);
				}
				else{
					sprintf(curOutFilename, "%s_%02d.bin", outFilenameBase, curFileNum);
				}

				curBgFile = fopen(curOutFilename, "wb");
				if(!curBgFile){
					printf("Error opening file '%s' for writing\n", curOutFilename);
					lodepng_state_cleanup(&lpState);
					exit(EXIT_FAILURE);
				}
				fwrite(imageData+bytesPerChunk*curFileNum, 1, bytesPerChunk, curBgFile);
				fclose(curBgFile);
			}
		}
		else{
			/* 64x30, 40 files */
			/* chunking the input PNG into various sections is a pain. */
			int curChunkRow = 0;
			int curChunkCol = 1; /* only start using this after dealing with the first chunk */

			/* finish up first chunk; get a 64x30px selection from 0,0 */
			for(int i = 0; i < GetChunkHeight(progArgs.bgType); i++){
				fwrite(imageData+(i*(MENU_BACKGROUND_WIDTH/2)), 1, GetChunkWidth(progArgs.bgType)/2, curBgFile);
			}
			fclose(curBgFile);
			curFileNum++;

			/* work on other chunks, starting with next chunk to the right */
			while(curFileNum < 40){
				if(progArgs.outDir != NULL){
					sprintf(curOutFilename, "%s/%s_%02d.bin", progArgs.outDir, outFilenameBase, curFileNum);
				}
				else{
					sprintf(curOutFilename, "%s_%02d.bin", outFilenameBase, curFileNum);
				}

				curBgFile = fopen(curOutFilename, "wb");
				if(!curBgFile){
					printf("Error opening file '%s' for writing\n", curOutFilename);
					lodepng_state_cleanup(&lpState);
					exit(EXIT_FAILURE);
				}

				for(int i = 0; i < GetChunkHeight(progArgs.bgType); i++){
					fwrite(imageData+(curChunkCol*(GetChunkWidth(progArgs.bgType)/2))+(curChunkRow*(MENU_BACKGROUND_WIDTH/2)*GetChunkHeight(progArgs.bgType))+(i*(MENU_BACKGROUND_WIDTH/2)), 1, GetChunkWidth(progArgs.bgType)/2, curBgFile);
				}
				fclose(curBgFile);

				curChunkCol++;
				if(curChunkCol > GetNumChunkCols(progArgs.bgType)-1){
					curChunkCol = 0;
					curChunkRow++;
				}
				curFileNum++;
			}
		}

		free(imageData);
		lodepng_state_cleanup(&lpState);
	}

	return EXIT_SUCCESS;
}
