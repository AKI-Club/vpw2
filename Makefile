# Makefile to rebuild VPW2 split image

############### Base ROM (for extracting data) ##############
BASE_ROM := baserom.z64

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR := build

# this name is a holdover and should eventually be changed
TARGET = vpw2_z

# Linker script and output files
OUT_ROM := $(TARGET).z64
OUT_ELF := $(BUILD_DIR)/$(TARGET).elf
LD_SCRIPT := $(TARGET).ld

# Code directories
SRC_DIRS := src src/menu1 src/cutscene src/menu2 src/game
ASM_DIRS := asm
BIN_DIRS := bin bin/soundtable

# todo: these should be 1) available 2) determined by filename (see mario party makefile)
# header, boot
# main code, main data
# segment0
# segment1
# segment2
# segment3

# Code Files
#C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))

# Object Files
O_FILES := $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o))

##################### Compiler Options #######################
CROSS = mips-linux-gnu-
AS = $(CROSS)as
CC = $(CROSS)gcc
CPP = cpp -P
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy --pad-to=0x2000000 --gap-fill=0xff

ASFLAGS = -EB -mtune=vr4300 -mabi=32 -march=vr4300 -I include
CFLAGS  = -Wall -O2 -mtune=vr4300 -march=vr4300 -I include -G 0 -c
LDFLAGS = -T undefined_syms.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(BUILD_DIR)/vpw2.map

####################### Other Tools #########################

SHA1SUM = sha1sum

# N64 tools
TOOLS_DIR = tools
N64CKSUM = $(TOOLS_DIR)/n64cksum
ASM_PREPROC := python3 tools/asmpreproc/asm-processor.py

FixPath = $(subst /,\,$1)

######################## Targets #############################

default: all

all: $(OUT_ROM)

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(OUT_ROM)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(BUILD_DIR)/%.o: asm/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(BUILD_DIR)/$(TARGET).o: $(TARGET).s Makefile | $(BUILD_DIR)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c Makefile.as | $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $<

$(OUT_ELF): $(BUILD_DIR)/$(TARGET).o $(BUILD_DIR)/$(LD_SCRIPT)
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

.PHONY: all clean default diff

