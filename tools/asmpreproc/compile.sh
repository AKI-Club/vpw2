#!/bin/bash
set -e
set -o pipefail
INPUT="$1"
OUTPUT="${INPUT%.c}.o"

CC="$QEMU_IRIX -silent -L $IRIX_ROOT $IRIX_ROOT/usr/bin/cc"
CFLAGS="-Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -fullwarn -wlint -woff 819,820,852,821 -signed -DVERSION_JP=1 -mips2" # -I include
AS="mips-linux-gnu-as"
ASFLAGS="-march=vr4300 -mabi=32 --defsym VERSION_JP=1" # -I include

python3 asm-processor.py -g "$INPUT" | $CC -c $CFLAGS include-stdin.c -o "$OUTPUT" -g
python3 asm-processor.py -g "$INPUT" --post-process "$OUTPUT" --assembler "$AS $ASFLAGS" --asm-prelude prelude.s
