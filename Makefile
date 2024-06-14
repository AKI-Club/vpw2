# Makefile to rebuild VPW2 split image

################################################################################
# Base ROM (for extracting data)
################################################################################
BASE_ROM := baserom.z64

################################################################################
# Target Executable, Sources, and Binaries
################################################################################

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR := build

# this name is a holdover and should eventually be changed
TARGET = vpw2_z

# Linker script and output files
OUT_ROM := $(TARGET).z64
OUT_ELF := $(BUILD_DIR)/$(TARGET).elf
LD_SCRIPT := $(TARGET).ld

INCLUDE_DIR := include

# Code directories
SRC_DIR := src
SRC_DIRS := src src/seg0_menu1 src/seg1_cutscene src/seg2_menu2 src/seg3_game
ASM_DIRS := asm

# Binary Directories
MAIN_BIN_DIR := bin

SOUNDTABLE_BINDIR := $(MAIN_BIN_DIR)/soundtable
FILETABLE_BINDIR  := $(MAIN_BIN_DIR)/filetable

BIN_DIRS := $(MAIN_BIN_DIR) $(SOUNDTABLE_BINDIR) $(FILETABLE_BINDIR)

# Asset Directories
ASSET_DIR := assets

# todo: these should be 1) available 2) determined by filename (see mario party makefile)
# header, boot
# main code, main data
# segment0
# segment1
# segment2
# segment3

# Code Files
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))

# Object Files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o))
O_FILES += $(BUILD_DIR)/$(TARGET).o

################################################################################
# Compiler & Assembler Options
################################################################################

ifneq ($(CROSS),)
else ifneq ($(shell which mips-linux-gnu-ld 2> /dev/null),)
	CROSS := mips-linux-gnu-
else ifneq ($(shell which mips64-linux-gnu-ld 2> /dev/null),)
	CROSS := mips64-linux-gnu-
else ifneq ($(shell which mips64-elf-ld 2> /dev/null),)
	CROSS := mips64-elf-
else
	$(error Unable to detect a suitable MIPS toolchain installed)
endif

AS = $(CROSS)as
CC = COMPILER_PATH=$(TOOLS_DIR)/gcc_kmc/linux/2.7.2 $(TOOLS_DIR)/gcc_kmc/linux/2.7.2/gcc
CC_CHECK = gcc -fsyntax-only -fno-builtin -fsigned-char -std=gnu90 -m32 $(CHECK_WARNINGS) -I $(INCLUDE_DIR)
CPP = cpp -P
GREP = grep -rl
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy --pad-to=0x2000000 --gap-fill=0xff
STRIP	 = $(CROSS)strip

ASFLAGS = -EB -mtune=vr4300 -mabi=32 -march=vr4300 -I $(INCLUDE_DIR)
CFLAGS  = -c -G0 -mips3 -mgp32 -mfp32 -O2 -I $(INCLUDE_DIR) -nostdinc
CHECK_WARNINGS := -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wunused-function -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces -Wno-int-conversion
LDFLAGS = -T undefined_syms.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(BUILD_DIR)/vpw2.map

################################################################################
# Other Tools 
################################################################################
# general tools
SHA1SUM := sha1sum

# N64 tools
TOOLS_DIR = tools
N64CKSUM = $(TOOLS_DIR)/n64cksum
N64GRAPHICS = $(TOOLS_DIR)/n64graphics
ASM_PREPROC := python3 $(TOOLS_DIR)/asmpreproc/asm-processor.py

ASM_PROCESSOR_DIR := $(TOOLS_DIR)/asm-processor
ASM_PROCESSOR_BUILD = python3 $(ASM_PROCESSOR_DIR)/build.py

# repo-specific tools
AKI_LZSS = $(TOOLS_DIR)/aki_lzss
EXTRACT_FILETABLE = $(TOOLS_DIR)/extract_filetable

FixPath = $(subst /,\,$1)

# Files requiring pre/post-processing
GLOBAL_ASM_C_FILES := $(shell $(GREP) GLOBAL_ASM $(SRC_DIR) </dev/null 2>/dev/null)
GLOBAL_ASM_O_FILES := $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

################################################################################
# Filetable-related 
################################################################################
FILETABLE_INPUT_LIST := vpw2filetable.json
FILETABLE_INDEX := $(MAIN_BIN_DIR)/filetable.idx
FILETABLE_DATA := $(MAIN_BIN_DIR)/filedata.bin
FILETABLE_HEADER := $(INCLUDE_DIR)/filetable.h
FILETABLE_ASMINCLUDE := $(INCLUDE_DIR)/filetable.inc
FILETABLE_LINKER := filetable.txt

################################################################################
# Targets 
################################################################################

default: all

all: $(OUT_ROM)

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(OUT_ROM)

distclean:
	make -C $(TOOLS_DIR) clean
	make -C $(TOOLS_DIR)/sm64tools clean
	rm -rf $(N64CKSUM) $(N64GRAPHICS)
	rm -rf $(BUILD_DIR)
	rm -rf $(MAIN_BIN_DIR)
	rm -f $(OUT_ROM)

#------------------------------------------------------------#
setup: tools extractbins extractft buildfth

# tools - build any tools used
tools:
	make -C $(TOOLS_DIR)
	make -C $(TOOLS_DIR)/sm64tools n64cksum n64graphics
	mv $(TOOLS_DIR)/sm64tools/n64cksum $(N64CKSUM)
	mv $(TOOLS_DIR)/sm64tools/n64graphics $(N64GRAPHICS)

# extractbins - extract main binary files from ROM
extractbins:
	./extract_baserom.sh

# extractft - extract contents of file table
extractft:
	if [ ! -d $(FILETABLE_BINDIR) ]; then \
		mkdir $(FILETABLE_BINDIR); \
	fi

	$(EXTRACT_FILETABLE) $(FILETABLE_INDEX) $(FILETABLE_DATA) $(FILETABLE_BINDIR)

# delzss - decode LZSS-encoded files
LZSS_EXTRACT_INPUT := $(wildcard $(FILETABLE_BINDIR)/*.lzss)
LZSS_EXTRACT_OUTPUT := $(foreach file,$(LZSS_EXTRACT_INPUT),$(file:.lzss=.bin))

delzss: $(LZSS_EXTRACT_OUTPUT)

$(FILETABLE_BINDIR)/%.bin: $(FILETABLE_BINDIR)/%.lzss
	@$(AKI_LZSS) -d $< $@

#------------------------------------------------------------#
# todo2: both steps of the asset conversion process
# (game-ready to human-editable and vice versa)

#------------------------------------------------------------#
# filetable re-building process
buildft:
	$(AKI_FILETABLE) -l $(FILETABLE_INPUT_LIST) -o $(FILETABLE_DATA) -i $(FILETABLE_INDEX) -h $(FILETABLE_HEADER) -a $(FILETABLE_ASMINCLUDE) -n $(FILETABLE_LINKER)

# header only version
buildfth:
	$(AKI_FILETABLE) -l $(FILETABLE_INPUT_LIST) -d -h $(FILETABLE_HEADER) -a $(FILETABLE_ASMINCLUDE) -n $(FILETABLE_LINKER)

#------------------------------------------------------------#
$(BUILD_DIR):
	mkdir $(BUILD_DIR)

#$(BUILD_DIR)/%.o: asm/%.s
#	$(AS) $(ASFLAGS) -o $@ $<

$(GLOBAL_ASM_O_FILES): CC = COMPILER_PATH=$(TOOLS_DIR)/gcc_kmc/linux/2.7.2 $(ASM_PROCESSOR_BUILD) $(TOOLS_DIR)/gcc_kmc/linux/2.7.2/gcc -- $(AS) $(ASFLAGS) --

# need to make the build/src directory otherwise this will shit the bed

$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(@D)
	$(CC_CHECK) $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(STRIP) $@ -N $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I $(INCLUDE_DIR)/ -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

# assembly code
$(BUILD_DIR)/$(TARGET).o: $(TARGET).s Makefile | $(BUILD_DIR)
	$(AS) $(ASFLAGS) -o $@ $<

$(OUT_ELF): $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT)
	$(LD) $(LDFLAGS) -o $@ $< $(LIBS)

$(BUILD_DIR)/$(TARGET).bin: $(OUT_ELF)
	$(OBJCOPY) $< $@ -O binary

# final z64 updates checksum
$(OUT_ROM): $(BUILD_DIR)/$(TARGET).bin
	$(N64CKSUM) $< $@
	@$(SHA1SUM) -c vpw2.sha1

$(BUILD_DIR)/$(TARGET).hex: $(OUT_ROM)
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(OUT_ELF)
	$(OBJDUMP) -D $< > $@

.PHONY: all clean default diff setup tools extractbins extractft delzss
