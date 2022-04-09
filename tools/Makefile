# tools makefile
CFLAGS := -Wall -s

BUILD_PROGRAMS := extract_filetable
extract_filetable_SOURCES := extract_filetable.c

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
