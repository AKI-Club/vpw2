#ifndef AKIFILETABLE_H_
#define AKIFILETABLE_H_

typedef struct {
	char *listFilename; /* input list */
	char *outDataFilename; /* output filetable data */
	char *outIndexFilename; /* output filetable index */
	char *outHeaderFilename; /* output header filename */
	char *outAsmIncludeFilename; /* output asm include filename */
	bool verbose; /* display extra output */
	bool headerOnly; /* only update header file if true */
} InputArgs;

static const InputArgs defaultArgs = {
	.listFilename = NULL,
	.outDataFilename = "filetable.bin",
	.outIndexFilename = "filetable.idx",
	.outHeaderFilename = "filetable.h",
	.outAsmIncludeFilename = "filetable.inc",
	.verbose = false,
	.headerOnly = false
};

typedef struct {
	char *file;        /* path to file to include */
	bool lzss;         /* if true, mark file as LZSS encoded in the index */
	char *symbol;      /* optional export symbol in the format "FILEID_%s" */
	bool exportsize;   /* if true, export a symbol with the filesize. symbol must not be NULL */
	int exportsizepad; /* optional; pad output filesize symbol value; only used if exportsize==true */
} ListEntry;

#endif
