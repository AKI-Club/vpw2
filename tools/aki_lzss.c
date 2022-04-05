/* aki_lzss - LZSS encoder and decoder for AKI Corporation's N64 wrestling games */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

enum ProgramMode{
	MODE_ENCODE = 0,
	MODE_DECODE
} PROGRAM_MODE;

/* required for dealing with ints during encoding */
static const int EndianTest = 1;
#define is_BigEndian() ((*(char*)&EndianTest) == 0)

int minimum(int v1, int v2){
	if(v1 < v2) return v1;
	else return v2;
}

/* program constants */
#define N 4096 /* a.k.a. BUFFER_SIZE */
#define F 18 /* a.k.a. MATCH_LIMIT */
#define THRESHOLD 2
#define NIL N

/* begin encoding section */

static int match_position;
static int match_length;

static void InsertNode(unsigned char* dataBuf, int* lson, int* rson, int* dad, int r){
	int i, p, cmp;
	unsigned char* key;

	cmp = 1;
	key = &dataBuf[r];
	p = N + 1 + key[0];
	rson[r] = lson[r] = NIL;
	match_length = 0;

	for(;;){
		if(cmp >= 0){
			if(rson[p] != NIL){
				p = rson[p];
			}
			else{
				rson[p] = r;
				dad[r] = p;
				return;
			}
		}
		else{
			if(lson[p] != NIL){
				p = lson[p];
			}
			else{
				lson[p] = r;
				dad[r] = p;
				return;
			}
		}

		for(i = 1; i < F; i++){
			if((cmp = key[i] - dataBuf[p+i]) != 0){
				break;
			}
		}

		if(i > match_length){
			match_position = p;
			if((match_length = i) >= F){
				break;
			}
		}
	}

	dad[r] = dad[p];
	lson[r] = lson[p];
	rson[r] = rson[p];
	dad[lson[p]] = r;
	dad[rson[p]] = r;

	if(rson[dad[p]] == p){
		rson[dad[p]] = r;
	}
	else{
		lson[dad[p]] = r;
	}

	dad[p] = NIL;
}

static void DeleteNode(int* lson, int* rson, int* dad, int p){
	int q;

	if(dad[p] == NIL){
		return;
	}

	if(rson[p] == NIL){
		q = lson[p];
	}
	else if(lson[p] == NIL){
		q = rson[p];
	}
	else{
		q = lson[p];
		if(rson[q] != NIL){
			do{
				q = rson[q];
			}while(rson[q] != NIL);

			rson[dad[q]] = lson[q];
			dad[lson[q]] = dad[q];
			lson[q] = lson[p];
			dad[lson[p]] = q;
		}
		rson[q] = rson[p];
		dad[rson[p]] = q;
	}
	dad[q] = dad[p];

	if(rson[dad[p]] == p){
		rson[dad[p]] = q;
	}
	else{
		lson[dad[p]] = q;
	}
	
	dad[p] = NIL;
}

void Encode(size_t inLen, unsigned char* inData, FILE* outFile){
	int lson[N+1];
	int rson[N+257];
	int dad[N+1];
	unsigned short mask = 0xFF00;
	unsigned char ringBuffer[N+F]; // text_buf <-> RingBuffer
	int bufferIndex = N - F; // r <-> bufferIndex
	unsigned char codebuf[17]; // code_buf <-> codebuf
	int codebufPos;

	if(inLen <= 0){
		return;
	}

	// write length of uncompressed data to file
	// (inLen must be smaller than 0x01000000, and also > 0)
	fputc('\0',outFile);
	// file size in big endian
	fputc((inLen & 0xFF0000)>>16, outFile);
	fputc((inLen & 0x00FF00)>>8, outFile);
	fputc((inLen & 0x0000FF), outFile);

	// start at 4 because we write 4 bytes as a file header
	size_t codeSize = 4;

	// perform some init
	match_position = 0;
	match_length = 0;

	for(int i = 0; i < N+F; i++){
		ringBuffer[i] = 0;
	}

	for(int i = 0; i < N+1; i++){
		lson[i] = 0;
	}

	for(int i = 0; i < N+1; i++){
		rson[i] = 0;
	}
	for(int i = N+1; i <= N+256; i++){
		rson[i] = NIL;
	}

	for(int i = 0; i < N; i++){
		dad[i] = NIL;
	}

	codebuf[0] = 0;
	codebufPos = 1;

	int s = 0;

	// step 3: draw the rest of the fucking owl
	int p = minimum(F,inLen-1);
	for(int i = 0; i < p; i++){
		ringBuffer[i + bufferIndex] = inData[i];
	}
	int cur = p;
	for(int i = 1; i < F+1; i++){
		InsertNode(ringBuffer,lson,rson,dad,bufferIndex-i);
	}
	InsertNode(ringBuffer,lson,rson,dad,bufferIndex);

	while(1){
		mask >>= 1;

		if(match_length > p){
			match_length = p;
		}

		if(match_length <= THRESHOLD){
			match_length = 1;
			codebuf[codebufPos++] = ringBuffer[bufferIndex];
		}
		else{
			mask ^= 128;

			int a = (match_position >> 4) & 0xF0;
			a |= (match_length - THRESHOLD - 1);
			int b = match_position & 0xFF;
			// xxx: this differs between architectures
			if(is_BigEndian()){
				// big endian code:
				codebuf[codebufPos++] = a;
				codebuf[codebufPos++] = b;
			}
			else{
				// little endian code:
				codebuf[codebufPos++] = b;
				codebuf[codebufPos++] = a;
			}
		}

		if(mask < 256){
			fputc(mask,outFile);
			for(int i = 1; i < codebufPos; i++){
				fputc(codebuf[i],outFile);
			}
			codeSize += codebufPos;
			codebuf[0] = 0;
			codebufPos = 1;
			mask = 0xFF00;
		}

		int prevMatchLen = match_length;
		int j = minimum(prevMatchLen, (inLen - cur));
		for(int i = 0; i < j; i++){
			DeleteNode(lson,rson,dad,s);
			ringBuffer[s] = inData[cur];
			if(s < F - 1){
				ringBuffer[s+N] = inData[cur];
			}
			cur += 1;
			s += 1;
			s &= (N-1);
			bufferIndex += 1;
			bufferIndex &= (N-1);
			InsertNode(ringBuffer,lson,rson,dad,bufferIndex);
		}

		for(int i = j; i < prevMatchLen; i++){
			DeleteNode(lson,rson,dad,s);
			s += 1;
			s &= (N-1);
			bufferIndex += 1;
			bufferIndex &= (N-1);
			p -= 1;
			if(p != 0){
				InsertNode(ringBuffer,lson,rson,dad,bufferIndex);
			}
		}

		if(p == 0){
			break;
		}
	}

	// final
	if(codebufPos > 0){
		int temp = mask;
		int l = 0;
		do{
			l++;
		}while((temp >>= 1) != 0);
		l -= 8;

		mask &= 0xFF;
		fputc((mask >> l),outFile);
		for(int i = 1; i < codebufPos; i++){
			fputc(codebuf[i],outFile);
		}
		codeSize += codebufPos;
	}

	// pad the file if necessary
	if((codeSize % 2) != 0){
		fputc('\0',outFile);
	}
}

/* end encoding section */

/* begin decoding section */

void Decode(unsigned char* inData, FILE* outFile, unsigned int outLen){
	int inputPos = 0;
	int outputPos = 0;
	unsigned char* outData = malloc(outLen);

	unsigned long command = 0;
	while(outputPos < outLen){
		command >>= 1;
		if(command < 2){
			command = inData[inputPos++] | 0x0100;
		}

		if((command & 1) != 0 ){
			outData[outputPos++] = inData[inputPos++];
		}
		else{
			signed long p = inData[inputPos++]; // position
			unsigned long l = inData[inputPos++]; // length
			p |= ((l << 4) & 0x0F00);
			l &= 0x0F;
			p += 0x12;
			p &= 0x0FFF;
			// "funky correction here"
			unsigned long c = (outputPos & 0x0FFF);
			p -= c;
			if(p >= 0){
				p -= 0x1000;
			}
			p += outputPos;

			for(int i = 0; i < l + 3; i++){
				unsigned long v = 0;
				if(p < 0){
					v = 0;
				}
				else{
					v = outData[p];
				}
				outData[outputPos++] = v;
				p += 1;
			}
		}
	}
	fwrite(outData, 1, outLen, outFile);
	fflush(outFile);
	free(outData);
}

/* end decoding section */

int main(int argc, char* argv[]){
	char* inFilename;
	char* outFilename;
	FILE* inFile;
	FILE* outFile;

	printf("aki_lzss - LZSS encoder and decoder for N64 AKI wrestling games\n");

	if(argc <= 1){
		/* print usage */
		printf("usage: aki_lzss [mode] [infile] [outfile]\n");
		printf("Mode flags:\n");
		printf("-e \t Encode file\n");
		printf("-d \t Decode file\n");
		exit(0);
	}

	/* "aki_lzss -e infile outfile" to encode */
	if(memcmp(argv[1], "-e", 2) == 0){
		PROGRAM_MODE = MODE_ENCODE;
	}
	/* "aki_lzss -d infile ourfile" to decode */
	else if(memcmp(argv[1], "-d", 2) == 0){
		PROGRAM_MODE = MODE_DECODE;
	}
	else{
		printf("Error: Unknown mode flag '%s'\n", argv[1]);
		exit(1);
	}

	if(argv[2] == 0){
		printf("Error: Must provide valid input filename.\n");
		exit(2);
	}
	//strcpy(inFilename, argv[2]);
	inFilename = argv[2];

	inFile = fopen(inFilename,"rb");
	if(inFile == NULL){
		printf("Error: Unable to open input file '%s' for reading.\n", inFilename);
		exit(3);
	}

	if(argv[3] != NULL){
		//strcpy(outFilename, argv[3]);
		outFilename = argv[3];
	}
	else{
		/* if we aren't given an output filename, make one up */
		outFilename = malloc(14);
		sprintf(outFilename, "temp_out.%s", (PROGRAM_MODE==MODE_ENCODE) ? "lzss" : "bin");
		printf("Warning: No output filename defined. Outputting to '%s'.\n", outFilename);
	}

	outFile = fopen(outFilename, "wb");
	if(outFile == NULL){
		printf("Error: Unable to open output file '%s' for writing.\n", outFilename);
		exit(4);
	}

	switch(PROGRAM_MODE){
		case MODE_ENCODE:
		{
			fseek(inFile, 0, SEEK_END);
			long inSize = ftell(inFile);
			fseek(inFile, 0, SEEK_SET);
			unsigned char* inData = malloc(inSize);
			if(inData == NULL){
				printf("Unable to allocate memory for input file data.\n");
				exit(5);
			}
			fread(inData, 1, inSize, inFile);

			Encode(inSize, inData, outFile);
			free(inData);
			printf("Successfully encoded file '%s' to '%s'.\n",inFilename,outFilename);
		}
			break;

		case MODE_DECODE:
		{
			char firstByte = getc(inFile);
			if(firstByte != '\0'){
				printf("Error: File is not encoded.\n");
				exit(6);
			}
			char filesize[3];
			fread(filesize, 1, 3, inFile);

			/* get output file length from next 3 bytes (big endian) */
			unsigned int outSize = (filesize[0] << 16 | filesize[1] << 8 | filesize[2]);

			/* read encoded data into a buffer */
			fseek(inFile, 0, SEEK_END);
			long inSize = ftell(inFile) - 4;
			fseek(inFile, 4, SEEK_SET);
			unsigned char* encodedData = malloc(inSize);
			if(encodedData == NULL){
				printf("Unable to allocate memory for input file data.\n");
				exit(7);
			}
			fread(encodedData, 1, inSize, inFile);

			/* decode data to output file */
			Decode(encodedData, outFile, outSize);
			free(encodedData);
			printf("Successfully decoded file '%s' to '%s'.\n",inFilename,outFilename);
		}
			break;

		default:
			printf("shouldn't get here\n");
			break;
	}

	free(outFilename);
	fclose(inFile);
	fclose(outFile);

	return 0;
}
