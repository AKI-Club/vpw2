# tools makefile

BUILD_PROGRAMS := aki_lzss extract_filetable
aki_lzss_SOURCES := aki_lzss.c
extract_filetable_SOURCES := extract_filetable.c

.phony: all, clean

default: all

all: $(BUILD_PROGRAMS)

clean:
	rm $(BUILD_PROGRAMS)

define COMPILE
$(1): $($1_SOURCES)
	$$(CC) $(CFLAGS) $($1_CFLAGS) $$^ -o $$@ $($1_LDFLAGS) $(LDFLAGS)
endef

$(foreach p,$(BUILD_PROGRAMS),$(eval $(call COMPILE,$(p))))
