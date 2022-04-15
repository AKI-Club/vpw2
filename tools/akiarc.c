/* akiarc - AKI archive tool
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

enum ProgMode{
	MODE_EXTRACT = 0, /* -e; extract files */
	MODE_BUILD        /* -b; build archive */
} ProgramMode;

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

/*============================================================================
 * Program input arguments
 *============================================================================*/
typedef struct {
	char *arcFilename;
	char *listFilename;
	char **buildArcFiles;
	int numFilesDefined;
	int quiet;
} InputArgs;

static const InputArgs defaultArgs = {
	.arcFilename = NULL,
	.listFilename = NULL,
	.buildArcFiles = NULL,
	.numFilesDefined = 0,
	.quiet = 0
};

static void Usage(char* execName){
	printf("%s - AKI archive tool\n", execName);
	printf("Usage:\n");
	printf("  Extract files:\t%s -e ARCHIVE_FILE\n", execName);
	printf("  Build archive:\t%s -b ARCHIVE_FILE [FILES]\n", execName);
	printf("Optional arguments:\n");
	printf(" -q            Quiet mode; only show errors and success messages\n");
	printf(" -l LIST_FILE  (Build mode only) List of files to add to the archive\n");
}

static int parseArgs(int argc, char* argv[], InputArgs* outArgs){
	int firstFileArg = 0;
	for(int i = 1; i < argc; i++){
		if(argv[i][0] == '-'){
			switch(argv[i][1]){
				case 'e': /* -e: extract archive */
					if(++i >= argc){
						printf("Error: -e requires a filename\n");
						return 0;
					}
					outArgs->arcFilename = argv[i];
					ProgramMode = MODE_EXTRACT;
					break;

				case 'b': /* -b: build archive */
					if(++i >= argc){
						printf("Error: -b requires a filename\n");
						return 0;
					}
					outArgs->arcFilename = argv[i];
					ProgramMode = MODE_BUILD;
					break;

				case 'q': /* -q: quiet mode */
					outArgs->quiet = 1;
					break;

				case 'l': /* -l: list for build mode */
					if(++i >= argc){
						printf("Error: -l requires a filename\n");
						return 0;
					}
					if(ProgramMode != MODE_BUILD){
						printf("Error: -l can only be used in build mode (-b).\n");
						return 0;
					}
					outArgs->listFilename = argv[i];
					break;

				default:
					printf("Unrecognized option '%s'.\n", argv[i]);
					return 0;
					break;
			}
		}
		else{
			if(ProgramMode == MODE_BUILD && !outArgs->listFilename){
				if(firstFileArg == 0){
					firstFileArg = i;
				}
				outArgs->numFilesDefined++;
			}
			else if(ProgramMode == MODE_BUILD && outArgs->listFilename){
				printf("Error: Unable to combine input list with files on command line.\n");
				return 0;
			}
			else{
				printf("Unrecognized option '%s'.\n", argv[i]);
				return 0;
			}
		}
	}

	if(ProgramMode == MODE_BUILD && !outArgs->listFilename){
		/* properly handle the file list now that we know how many files are on it */
		outArgs->buildArcFiles = (char**)calloc(sizeof(char*)*outArgs->numFilesDefined, 1);
		if(!outArgs->buildArcFiles){
			printf("Unable to allocate memory for buildArcFiles\n");
			return 0;
		}

		for(int i = 0; i < outArgs->numFilesDefined; i++){
			outArgs->buildArcFiles[i] = (char*)calloc(256, 1);
			strcpy(outArgs->buildArcFiles[i], argv[i+(argc-outArgs->numFilesDefined)]);
		}
	}

	return 1;
}

/*============================================================================*/
int main(int argc, char* argv[]){
	InputArgs progArgs = defaultArgs;
	FILE* arcFileHandle;
	char* outFilenameBase; /* used for extract mode */
	int arcFileLength;
	int numFiles;
	int numExtractedFiles = 0;

	if(argc <= 1){
		Usage(argv[0]);
		exit(EXIT_FAILURE);
	}

	if(!parseArgs(argc, argv, &progArgs)){
		exit(EXIT_FAILURE);
	}

	if(!progArgs.quiet){
		printf("akiarc - AKI archive tool\n");
	}

	if(ProgramMode == MODE_BUILD && progArgs.listFilename == NULL){
		if(progArgs.numFilesDefined <= 0){
			printf("Must specify at least one file to add to the archive.\n");
			exit(EXIT_FAILURE);
		}
	}

	if(ProgramMode == MODE_EXTRACT){
		uint32_t* offsets;
		char outFilename[256];

		arcFileHandle = fopen(progArgs.arcFilename, "rb");
		if(!arcFileHandle){
			printf("Error opening archive '%s'\n", progArgs.arcFilename);
			exit(EXIT_FAILURE);
		}

		fseek(arcFileHandle, 0, SEEK_END);
		arcFileLength = ftell(arcFileHandle);
		rewind(arcFileHandle);

		char* headerNumFiles = (char*)calloc(4,sizeof(char));
		if(!headerNumFiles){
			printf("Error allocating memory for number of files\n");
			exit(EXIT_FAILURE);
		}
		fread(headerNumFiles, 1, 4, arcFileHandle);
		numFiles = (headerNumFiles[0] & 0xFF) << 24 | (headerNumFiles[1] & 0xFF) << 16 | (headerNumFiles[2] & 0xFF) << 8 | (headerNumFiles[3] & 0xFF);
		if(!progArgs.quiet){
			printf("Header claims to have %d files; we'll see about that...\n", numFiles);
		}
		free(headerNumFiles);

		offsets = (uint32_t*)calloc(numFiles,sizeof(uint32_t));
		if(!offsets){
			printf("Error allocating memory for offset list\n");
			exit(EXIT_FAILURE);
		}
		/* parse numFiles entries */
		char* _offset = (char*)calloc(4,sizeof(char));
		for(int i = 0; i < numFiles; i++){
			fread(_offset, 1, 4, arcFileHandle);
			offsets[i] = (_offset[0] & 0xFF) << 24 | (_offset[1] & 0xFF) << 16 | (_offset[2] & 0xFF) << 8 | (_offset[3] & 0xFF);
		}
		free(_offset);

		outFilenameBase = GetBaseFilename(progArgs.arcFilename);

		for(int i = 0; i < numFiles; i++){
			FILE* extracted;
			int len = 0;

			sprintf(outFilename, "%s_%02X.bin", outFilenameBase, i);
			extracted = fopen(outFilename, "wb");
			if(!extracted){
				printf("Error opening '%s' for writing\n", outFilename);
				exit(EXIT_FAILURE);
			}

			if(i < numFiles - 1){
				len = offsets[i+1] - offsets[i];
			}
			else{
				len = arcFileLength - offsets[i];
			}

			if(len <= 0){
				printf("Invalid file length %d for entry %d; skipping\n", len, i);
				fclose(extracted);
				continue;
			}

			char* data = (char*)calloc(len, 1);
			if(!data){
				printf("Error allocating memory for extracted file\n");
				exit(EXIT_FAILURE);
			}
			fseek(arcFileHandle, offsets[i], SEEK_SET);
			fread(data, len, 1, arcFileHandle);
			fwrite(data, len, 1, extracted);
			fclose(extracted);
			free(data);
			++numExtractedFiles;
		}

		printf("Successfully extracted %d files from '%s'.\n", numExtractedFiles, progArgs.arcFilename);

		free(outFilenameBase);
		free(offsets);
		fclose(arcFileHandle);
	}
	else{ /* ProgramMode == MODE_BUILD */
		uint32_t* fileLengths;
		numFiles = progArgs.numFilesDefined;
		char c;

		/* list parsing */
		if(progArgs.listFilename){
			FILE* listFile;

			listFile = fopen(progArgs.listFilename, "r");
			if(!listFile){
				printf("Unable to open list file '%s'\n", progArgs.listFilename);
				exit(EXIT_FAILURE);
			}

			/* determine number of files (via number of lines) */
			while((c = fgetc(listFile)) != EOF){
				if(c == '\n'){
					++progArgs.numFilesDefined;
				}
			}
			rewind(listFile);

			/* fill progArgs.buildArcFiles */
			progArgs.buildArcFiles = (char**)calloc(sizeof(char*)*progArgs.numFilesDefined, 1);
			if(!progArgs.buildArcFiles){
				printf("Unable to allocate memory for buildArcFiles\n");
				exit(EXIT_FAILURE);
			}
	
			for(int i = 0; i < progArgs.numFilesDefined; i++){
				progArgs.buildArcFiles[i] = calloc(256, 1);
				if(fgets(progArgs.buildArcFiles[i], 256, listFile) != NULL){
					progArgs.buildArcFiles[i][strcspn(progArgs.buildArcFiles[i], "\n")] = '\0';
				}
			}

			fclose(listFile);
		}

		arcFileHandle = fopen(progArgs.arcFilename, "wb");
		if(!arcFileHandle){
			printf("Error opening '%s' for writing\n", progArgs.arcFilename);
			exit(EXIT_FAILURE);
		}

		/* write number of files (4 bytes, big endian) */
		char nfBytes[4] = {
			(progArgs.numFilesDefined & 0xFF000000) >> 24,
			(progArgs.numFilesDefined & 0x00FF0000) >> 16,
			(progArgs.numFilesDefined & 0x0000FF00) >> 8,
			(progArgs.numFilesDefined & 0x000000FF)
		};
		fwrite(nfBytes, sizeof(char), 4, arcFileHandle);

		/* get each file's real length */
		fileLengths = (uint32_t*)calloc(progArgs.numFilesDefined, sizeof(uint32_t));
		if(!fileLengths){
			printf("Error allocating memory for file lengths table\n");
			exit(EXIT_FAILURE);
		}

		for(int i = 0; i < progArgs.numFilesDefined; i++){
			FILE* import = fopen(progArgs.buildArcFiles[i],"rb");
			if(!import){
				printf("Error opening '%s' for reading\n", progArgs.buildArcFiles[i]);
				exit(EXIT_FAILURE);
			}

			fseek(import, 0, SEEK_END);
			fileLengths[i] = ftell(import);

			fclose(import);
		}

		/* determine if we need to pad the offset table */
		int curOffset = (sizeof(uint32_t)*progArgs.numFilesDefined)+4;
		if(curOffset % 8 != 0){
			int diff = (curOffset &0xF);
			if(diff > 8){
				diff = 16 - diff;
			}
			else{
				diff = 8 - diff;
			}
			curOffset += diff;
		}

		/* write offsets */
		for(int i = 0; i < progArgs.numFilesDefined; i++){
			char offsetBytes[4] = {
				(curOffset & 0xFF000000) >> 24,
				(curOffset & 0x00FF0000) >> 16,
				(curOffset & 0x0000FF00) >> 8,
				(curOffset & 0x000000FF)
			};
			fwrite(offsetBytes, sizeof(char), 4, arcFileHandle);

			/* file lengths need to be padded to the nearest dword boundary */
			if(fileLengths[i] % 8 != 0){
				int diff = fileLengths[i] & 0xF;
				if(diff > 8){
					diff = 16 - diff;
				}
				else{
					diff = 8 - diff;
				}
				curOffset += diff;
			}

			curOffset += fileLengths[i];
		}

		/* write offset list padding if needed */
		if(ftell(arcFileHandle) % 8 != 0){
			char pad[4] = {0xFF, 0xFF, 0xFF, 0xFF};
			int diff = ftell(arcFileHandle) & 0xF;
			if(diff > 8){
				diff = 16 - (ftell(arcFileHandle) & 0xF);
			}
			else{
				diff = 8 - (ftell(arcFileHandle) & 0xF);
			}
			for(int i = 0; i < diff/4; i++){
				fwrite(pad, 4, 1, arcFileHandle);
			}
		}

		/* write each file's data to the archive */
		for(int i = 0; i < progArgs.numFilesDefined; i++){
			uint8_t *data;
			FILE* import = fopen(progArgs.buildArcFiles[i],"rb");
			if(!import){
				printf("Error opening '%s' for reading\n", progArgs.buildArcFiles[i]);
				exit(EXIT_FAILURE);
			}

			data = (uint8_t*)calloc(fileLengths[i],1);
			if(!data){
				printf("Error allocating memory for file data\n");
				exit(EXIT_FAILURE);
			}
			fread(data, fileLengths[i], 1, import);
			fclose(import);
			fwrite(data, fileLengths[i], 1, arcFileHandle);
			free(data);

			/* files need to be padded to the nearest dword boundary */
			if(ftell(arcFileHandle) % 8 != 0){
				int diff = (ftell(arcFileHandle) & 0xF);
				if(diff > 8){
					diff = 16 - diff;
				}
				else{
					diff = 8 - diff;
				}
				/*printf("file #%d needs padding of %d bytes\n",i, diff);*/
				for(int i = 0; i < diff; i++){
					fputc('\0', arcFileHandle);
				}
			}
		}

		fclose(arcFileHandle);

		printf("Successfully wrote %d files to archive '%s'.\n", numExtractedFiles, progArgs.arcFilename);

		for(int i = progArgs.numFilesDefined-1; i >= 0; i--){
			free(progArgs.buildArcFiles[i]);
		}
	}

	return EXIT_SUCCESS;
}
