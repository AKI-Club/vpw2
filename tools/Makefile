# tools makefile
CFLAGS := -Wall -s -O2

KMC_DIR         := gcc_kmc/linux/2.7.2
KMC_GCC         := $(KMC_DIR)/gcc
KMC_BINUTILS    := $(KMC_DIR)/as

BUILD_PROGRAMS := extract_filetable aki_lzss akiarc akitext menubg akifiletable

extract_filetable_SOURCES := extract_filetable.c
aki_lzss_SOURCES := aki_lzss.c
akiarc_SOURCES := akiarc.c
akitext_SOURCES := akitext.c
menubg_SOURCES := menubg.c lodepng.c
akifiletable_SOURCES := frozen.c akifiletable.c

.phony: all, clean

default: all

all: $(BUILD_PROGRAMS) $(KMC_GCC) $(KMC_BINUTILS)

clean:
	rm -f $(BUILD_PROGRAMS)
	rm -rf $(KMC_DIR) gcc_kmc

$(KMC_GCC): | $(KMC_DIR)
	wget https://github.com/gumorr/mips-gcc-2.7.2/releases/download/v0.1-FILE_OFFSET_FIX/gcc-2.7.2-linux.tar.gz
	tar xf gcc-2.7.2-linux.tar.gz -C $(KMC_DIR)
	$(RM) gcc-2.7.2-linux.tar.gz

$(KMC_BINUTILS): | $(KMC_DIR)
	wget https://github.com/gumorr/mips-binutils-2.6/releases/download/v0.3-FILE_OFFSET_FIX/binutils-2.6-linux.tar.gz
	tar xf binutils-2.6-linux.tar.gz -C $(KMC_DIR)
	$(RM) binutils-2.6-linux.tar.gz

$(KMC_DIR):
	mkdir -p $@

define COMPILE
$(1): $($1_SOURCES)
	$$(CC) $(CFLAGS) $($1_CFLAGS) $$^ -o $$@ $($1_LDFLAGS) $(LDFLAGS)
endef

$(foreach p,$(BUILD_PROGRAMS),$(eval $(call COMPILE,$(p))))
