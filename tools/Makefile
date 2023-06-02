# tools makefile
CFLAGS := -Wall -s

BUILD_PROGRAMS := extract_filetable aki_lzss akiarc akitext menubg

extract_filetable_SOURCES := extract_filetable.c
aki_lzss_SOURCES := aki_lzss.c
akiarc_SOURCES := akiarc.c
akitext_SOURCES := akitext.c
menubg_SOURCES := menubg.c lodepng.c

.phony: all, clean

default: all

all: $(BUILD_PROGRAMS)

clean:
	rm -f $(BUILD_PROGRAMS)

define COMPILE
$(1): $($1_SOURCES)
	$$(CC) $(CFLAGS) $($1_CFLAGS) $$^ -o $$@ $($1_LDFLAGS) $(LDFLAGS)
endef

$(foreach p,$(BUILD_PROGRAMS),$(eval $(call COMPILE,$(p))))
