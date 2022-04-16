/* akitext - AKI Text archive tool
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

/* is 1024 Shift-JIS characters enough? */
#define MAX_STRING_LEN 2048

/* this has not been tested or confirmed */
#define MAX_ARCHIVE_ENTRIES 1024

enum ProgMode{
	MODE_EXTRACT = 0, /* -e; extract strings */
	MODE_BUILD        /* -b; build text archive */
} ProgramMode;

enum ParseState{
	PARSE_STATE_CHECK_OPEN_BRACKET = 0, /* check for opening bracket combo '{', '\"' */
	PARSE_STATE_GET_STRING,             /* actual string content */
	PARSE_STATE_CHECK_CLOSE_BRACKET     /* '\"' isn't always followed up by '}' */
} CurParseState;

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
	char* binFilename;
	char* textFilename;
	char* outFilename;
	int quiet;

	/* -- options that solely aid in matching decomp -- */

	/* Some AKIText archives don't end with a 0x00 byte.
	 * If ignoreLastNull is nonzero, replicate this behavior.
	 * (todo: may require string to be on a uint16_t boundary?)
	 */
	int ignoreLastNull;

	/* Some AKIText archives have an offset table with more entries
	 * than the number of actual strings in the table.
	 * If overrideNumEntries is greater than 0, pad the offset table
	 * to overrideNumEntries entries with 0x0000 values.
	 */
	int overrideNumEntries;

} InputArgs;

static const InputArgs defaultArgs = {
	.binFilename = NULL,
	.textFilename = NULL,
	.outFilename = NULL,
	.quiet = 0,

	/* options that solely aid in matching decomp */
	.ignoreLastNull = 0,
	.overrideNumEntries = 0
};

static void Usage(char* execName){
	printf("%s - AKI text archive tool\n", execName);
	printf("Usage:\n");
	printf("  Extract strings:\t%s -e AKITEXT_FILE [-o OUTFILE] [-q]\n", execName);
	printf("  Build text archive:\t%s -b INPUT_FILE [-o OUTFILE] [-q] [-i] [-n NUM_ENTRIES]\n", execName);
	printf("Optional Parameters:\n");
	printf("  -o OUTFILE        Set output file name; (default: input filename without extension)\n");
	printf("  -q                Quiet mode\n");
	printf("  -i                (decomp matching) Ignore last NULL\n");
	printf("  -p NUM_ENTRIES    (decomp matching) Pad offset table to NUM_ENTRIES\n");
}

static int parseArgs(int argc, char* argv[], InputArgs* outArgs){
	for(int i = 1; i < argc; i++){
		if(argv[i][0] == '-'){
			switch(argv[i][1]){
				case 'e': /* -e: extract strings */
					if(++i >= argc){
						printf("Error: -e requires a filename\n");
						return 0;
					}
					outArgs->binFilename = argv[i];
					ProgramMode = MODE_EXTRACT;
					break;

				case 'b': /* -b: build text archive */
					if(++i >= argc){
						printf("Error: -b requires a filename\n");
						return 0;
					}
					outArgs->textFilename = argv[i];
					ProgramMode = MODE_BUILD;
					break;

				case 'o': /* -o: output filename */
					if(++i >= argc){
						printf("Error: -o requires a filename\n");
						return 0;
					}
					outArgs->outFilename = argv[i];
					break;

				case 'q': /* -q: quiet mode */
					outArgs->quiet = 1;
					break;

				/* begin options that only matter for matching decomp */

				case 'i': /* -i: ignore last null */
					outArgs->ignoreLastNull = 1;
					break;

				case 'p': /* -p: pad offset table to specified number of entries */
					if(++i >= argc){
						printf("Error: -p requires a number\n");
						return 0;
					}
					outArgs->overrideNumEntries = strtoul(argv[i], NULL, 0);
					break;

				/* end options that only matter for matching decomp */

				default:
					printf("Unrecognized option '%s'.\n", argv[i]);
					return 0;
					break;
			}
		}
		else{
			printf("Unrecognized option '%s'.\n", argv[i]);
			return 0;
		}
	}

	return 1;
}

/*============================================================================*/
int main(int argc, char* argv[]){
	InputArgs progArgs = defaultArgs;
	FILE* binFileHandle;
	FILE* textFileHandle;
	char* outFilenameBase;
	char outFilename[256];
	uint16_t tableLength;
	uint16_t numStringsClaimed;
	uint16_t* offsets;

	if(argc <= 1){
		Usage(argv[0]);
		exit(EXIT_FAILURE);
	}

	if(!parseArgs(argc, argv, &progArgs)){
		exit(EXIT_FAILURE);
	}

	if(!progArgs.quiet){
		printf("akitext - AKI text archive tool\n");
	}

	if(ProgramMode == MODE_EXTRACT){
		char len[2];
		int numActualStrings = 0;
		char c;
		char* outString;

		binFileHandle = fopen(progArgs.binFilename, "rb");
		if(!binFileHandle){
			printf("Error opening file '%s'.\n", progArgs.binFilename);
			exit(EXIT_FAILURE);
		}

		fread(len, 2, 1, binFileHandle);
		tableLength = (len[0] & 0xFF) << 8 | (len[1] & 0xFF);
		rewind(binFileHandle);

		numStringsClaimed = tableLength / 2;

		offsets = (uint16_t*)calloc(numStringsClaimed,sizeof(uint16_t));
		if(!offsets){
			printf("Error allocating memory for offset table.\n");
			exit(EXIT_FAILURE);
		}

		/* sometimes there will be an entry with a value of 0x0000;
		 * this is likely for padding purposes, so don't include it.
		 */
		
		for(int i = 0; i < numStringsClaimed; i++){
			fread(len, 2, 1, binFileHandle);
			uint16_t val = (len[0] & 0xFF) << 8 | (len[1] & 0xFF);
			if(val != 0){
				offsets[numActualStrings++] = val;
			}
		}

		if(progArgs.outFilename != NULL){
			sprintf(outFilename, "%s", progArgs.outFilename);
		}
		else{
			outFilenameBase = GetBaseFilename(progArgs.binFilename);
			sprintf(outFilename, "%s.txt", outFilenameBase);
		}
		textFileHandle = fopen(outFilename, "wb");
		if(!textFileHandle){
			printf("Error opening output file '%s'\n", outFilename);
			exit(EXIT_FAILURE);
		}

		/* go through strings */
		for(int i = 0; i < numActualStrings; i++){
			int strLen = 0;
			fseek(binFileHandle, offsets[i], SEEK_SET);

			while((c = fgetc(binFileHandle)) != 0){
				/* some AkiText archives don't end on an 0x00 byte */
				if(c == EOF){
					break;
				}
				++strLen;
			}

			fseek(binFileHandle, offsets[i], SEEK_SET);
			outString = (char*)calloc(strLen+1, 1);
			if(!outString){
				printf("Unable to allocate %d bytes for output string\n",strLen+1);
				exit(EXIT_FAILURE);
			}

			/* {"string"} */
			fread(outString, strLen+1, 1, binFileHandle);
			fputc('{',textFileHandle);
			fputc('\"',textFileHandle);
			fwrite(outString, strLen, 1, textFileHandle);
			fputc('\"',textFileHandle);
			fputc('}',textFileHandle);
			fputc('\n', textFileHandle);
		}
		if(outString != NULL){
			free(outString);
		}
		fclose(textFileHandle);

		printf("Successfully extracted %d strings from '%s'.\n", numActualStrings, progArgs.binFilename);

		free(offsets);
		fclose(binFileHandle);
	}
	else{ /* ProgramMode == MODE_BUILD */
		int numActualStrings = 0;
		char c;
		long prevOffset = 0;
		char outString[MAX_STRING_LEN];
		int outStringPos = 0;
		int stringLengths[MAX_ARCHIVE_ENTRIES]; /* sans null terminator */
		int curStringLen = 0;
		char** binStrings;
		int curStringNum = 0; /* for second pass */

		textFileHandle = fopen(progArgs.textFilename, "r");
		if(!textFileHandle){
			printf("Error opening file '%s'.\n", progArgs.textFilename);
			exit(EXIT_FAILURE);
		}

		if(progArgs.outFilename != NULL){
			sprintf(outFilename, "%s", progArgs.outFilename);
		}
		else{
			outFilenameBase = GetBaseFilename(progArgs.textFilename);
			sprintf(outFilename, "%s.txt", outFilenameBase);
		}
		binFileHandle = fopen(outFilename, "wb");
		if(!binFileHandle){
			printf("Error opening output file '%s'\n", outFilename);
			exit(EXIT_FAILURE);
		}

		CurParseState = PARSE_STATE_CHECK_OPEN_BRACKET;
		numStringsClaimed = 0;

		/* pass 1: determine number of strings and string lengths */
		while((c = fgetc(textFileHandle)) != EOF){
			switch(CurParseState){
				case PARSE_STATE_CHECK_OPEN_BRACKET:
					if(c == '{'){
						if((c = fgetc(textFileHandle)) == '\"'){
							CurParseState = PARSE_STATE_GET_STRING;
							curStringLen = 0;
						}
					}
					break;

				case PARSE_STATE_GET_STRING:
					if(c == '\"'){
						CurParseState = PARSE_STATE_CHECK_CLOSE_BRACKET;
					}
					else{
						++curStringLen;
					}
					break;

				case PARSE_STATE_CHECK_CLOSE_BRACKET:
					if(c == '}'){
						CurParseState = PARSE_STATE_CHECK_OPEN_BRACKET;
						stringLengths[numStringsClaimed] = curStringLen;
						if(curStringLen > MAX_STRING_LEN){
							printf("WARNING: String #%d has length %d (> MAX_STRING_LEN)\n", numStringsClaimed, curStringLen);
						}
						++numStringsClaimed;
					}
					else{
						++curStringLen;
					}
					break;
			}
		}
		rewind(textFileHandle);

		numActualStrings = numStringsClaimed;
		if(!progArgs.quiet){
			printf("Input file string count: %d\n", numStringsClaimed);
		}

		if(progArgs.overrideNumEntries > 0){
			if(progArgs.overrideNumEntries < numActualStrings){
				printf("Error: -p value %d is less than actual string count %d\n", progArgs.overrideNumEntries, numActualStrings);
				exit(EXIT_FAILURE);
			}
			if(!progArgs.quiet){
				printf("Overriding number of strings from %d to %d\n", numStringsClaimed, progArgs.overrideNumEntries);
			}
			numStringsClaimed = progArgs.overrideNumEntries;
		}

		tableLength = numStringsClaimed*sizeof(uint16_t);
		if(numStringsClaimed % 2 != 0 && progArgs.overrideNumEntries <= 0){
			tableLength += 2;
			if(!progArgs.quiet){
				printf("Number of strings is odd; extending table size to %d\n", tableLength);
			}
		}

		if(!progArgs.quiet){
			printf("Strings will start at file offset 0x%X\n", tableLength);
		}

		binStrings = (char**)calloc(numStringsClaimed*MAX_STRING_LEN, 1);
		if(!binStrings){
			printf("Unable to allocate memory for binStrings\n");
			exit(EXIT_FAILURE);
		}

		/* pass 2: read strings from text file */
		CurParseState = PARSE_STATE_CHECK_OPEN_BRACKET;

		while((c = fgetc(textFileHandle)) != EOF){
			switch(CurParseState){
				case PARSE_STATE_CHECK_OPEN_BRACKET:
					if(c == '{'){
						prevOffset = ftell(textFileHandle);
						if((c = fgetc(textFileHandle)) == '\"'){
							CurParseState = PARSE_STATE_GET_STRING;
							outStringPos = 0;
							memset(outString, 0, MAX_STRING_LEN);
						}
						else{
							fseek(textFileHandle, prevOffset, SEEK_SET);
						}
					}
					break;

				case PARSE_STATE_GET_STRING:
					if(c == '\"'){
						prevOffset = ftell(textFileHandle);
						CurParseState = PARSE_STATE_CHECK_CLOSE_BRACKET;
					}
					else{
						outString[outStringPos++] = c;
					}
					break;

				case PARSE_STATE_CHECK_CLOSE_BRACKET:
					if(c == '}'){
						CurParseState = PARSE_STATE_CHECK_OPEN_BRACKET;
						outString[outStringPos++] = '\0';
						binStrings[curStringNum] = (char*)calloc(strlen(outString)+1, 1);
						strncpy(binStrings[curStringNum], outString, strlen(outString)+1);
						++curStringNum;
					}
					else if(c == '\"'){
						/* string ends with a double quote, so we have two
						 * double quotes in a row. don't change parse state. */
						outString[outStringPos++] = c;
					}
					else{
						outString[outStringPos++] = '\"';
						outString[outStringPos++] = c;
						CurParseState = PARSE_STATE_GET_STRING;
					}
					break;

				default:
					printf("unknown state %d; character '%c'\n", CurParseState, c);
					break;
			}
		}

		/* pass 3: build offset table */
		uint16_t offset = tableLength;
		for(int i = 0; i < numActualStrings; i++){
			fputc((int)((offset & 0xFF00)>>8) & 0xFF, binFileHandle);
			fputc((int)(offset & 0x00FF), binFileHandle);
			offset += stringLengths[i]+1;
		}

		/* padding check */
		for(int i = 0; i < (int)(tableLength - numStringsClaimed*sizeof(uint16_t)); i++){
			fputc(0, binFileHandle);
		}

		if(progArgs.overrideNumEntries > 0){
			int diff = progArgs.overrideNumEntries - numActualStrings;
			for(int i = 0; i < diff; i++){
				fputc(0,binFileHandle);
				fputc(0,binFileHandle);
			}
		}

		/* pass 4: write strings to akitext archive (finally) */
		for(int i = 0; i < numActualStrings; i++){
			if(i == numActualStrings-1){
				if(progArgs.ignoreLastNull){
					fwrite(binStrings[i], stringLengths[i], 1, binFileHandle);
				}
				else{
					fwrite(binStrings[i], stringLengths[i]+1, 1, binFileHandle);
				}
			}
			else{
				fwrite(binStrings[i], stringLengths[i]+1, 1, binFileHandle);
			}
		}

		fclose(textFileHandle);
		fclose(binFileHandle);

		for(int i = numActualStrings; i >= 0; i--){
			free(binStrings[i]);
		}

		printf("Successfully converted %d strings from '%s' to '%s'.\n", numActualStrings, progArgs.textFilename, outFilename);
	}

	return EXIT_SUCCESS;
}
