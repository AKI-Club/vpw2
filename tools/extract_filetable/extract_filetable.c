/* extract_filetable
 * tool to extract filetable contents from AKI Corporation's N64 wrestling games
 *
 * Warning: Only tested with Virtual Pro-Wrestling 2.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char* outputDir;

void ExtractFile(FILE* dataFile, int index, int address, int length, int lzss){
	FILE* outFile;
	char outFileName[512];
	char* outBuf;

	sprintf(outFileName, "%s/%04X.%s", outputDir, index, lzss == 1 ? "lzss" : "bin");

	fseek(dataFile, address, SEEK_SET);
	outBuf = (char*)malloc(sizeof(char)*length);
	fread(outBuf, 1, length, dataFile);

	outFile = fopen(outFileName, "wb");
	if(outFile == NULL){
		printf("Error: Unable to create output file '%s'.\n", outFileName);
		exit(6);
	}
	fwrite(outBuf, 1, length, outFile);

	free(outBuf);
	fclose(outFile);
}

int main(int argc, char* argv[]){
	char* indexFilename;
	char* dataFilename;
	FILE* indexFile;
	FILE* dataFile;

	long indexFileSize;
	long dataFileSize;
	unsigned char* indexTemp;
	int numIndexEntries;
	int* indexEntries;
	size_t readResult;

	printf("extract_filetable - extract filetable of N64 AKI wrestling games\n");

	if(argc <= 1){
		/* print usage */
		printf("usage: extract_filetable [index] [filedata] ([outdir])\n");
		exit(0);
	}

	if(argv[1] == 0){
		printf("Error: Must provide valid filetable index filename.\n");
		exit(1);
	}
	indexFilename = argv[1];
	indexFile = fopen(indexFilename, "rb");
	if(indexFile == NULL){
		printf("Error: Unable to open index file '%s' for reading.\n", indexFilename);
		exit(2);
	}

	if(argv[2] == 0){
		printf("Error: Must provide valid filetable data filename.\n");
		exit(3);
	}
	dataFilename = argv[2];
	dataFile = fopen(dataFilename, "rb");
	if(dataFile == NULL){
		printf("Error: Unable to open data file '%s' for reading.\n", dataFilename);
		exit(4);
	}

	/* output directory is optional */
	if(argv[3] != 0){
		outputDir = argv[3];
	}
	else{
		/* default to executable location */
		outputDir = "./";
	}

	/* start scanning index file */
	fseek(indexFile, 0, SEEK_END);
	indexFileSize = ftell(indexFile);
	rewind(indexFile);

	indexTemp = (unsigned char*)malloc(sizeof(unsigned char)*4);

	/* determine number of index entries */
	while(ftell(indexFile) < indexFileSize){
		fread(indexTemp, 1, 4, indexFile);
		++numIndexEntries;
	}
	rewind(indexFile);

	indexEntries = (int*)malloc(sizeof(unsigned int)*numIndexEntries);
	for(int i = 0; i < numIndexEntries; i++){
		readResult = fread(indexTemp, 1, 4, indexFile);
		if(readResult != 4){
			printf("Error during filetable index read.\n");
			exit(5);
		}
		indexEntries[i] = (int)(indexTemp[0] & 0xFF) << 24 | (indexTemp[1] & 0xFF) << 16 | (indexTemp[2] & 0xFF) << 8 | (indexTemp[3] & 0xFF);
	}
	fclose(indexFile);

	/* determine size of filetable data */
	fseek(dataFile, 0, SEEK_END);
	dataFileSize = ftell(dataFile);
	rewind(dataFile);

	/* handle extraction */
	for(int i = 0; i < numIndexEntries; i++){
		/* length check also serves as a sanity check */
		if(i < numIndexEntries-1){
			if(indexEntries[i+1] - indexEntries[i] > 0){
				ExtractFile(dataFile, i+1,
					indexEntries[i] & 0xFFFFFFFE,
					indexEntries[i+1] - indexEntries[i],
					indexEntries[i] & 1
				);
			}
			else{
				ExtractFile(dataFile, i+1,
					indexEntries[i] & 0xFFFFFFFE,
					dataFileSize - indexEntries[i],
					indexEntries[i] & 1
				);
			}
		}
	}

	free(indexEntries);
	fclose(dataFile);

	return 0;
}
