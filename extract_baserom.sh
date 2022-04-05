#!/bin/bash
# Extract binary data from an unmodified Z64 format Virtual Pro-Wrestling 2 ROM
# using dd. Makes no attempt to extract files from the filetable or soundtables.

# default base ROM name if none passed in
BASEROM="./baserom.z64"

if [ ! -z $1 ]; then
	BASEROM=$1
fi

if [ ! -e $BASEROM ]; then
	echo "[extract_baserom] File $BASEROM not found."
	return ${BASEROM} 2>/dev/null
	exit 1
fi

echo "[extract_baserom] Extracting data from $BASEROM"

# create bin directory if it doesn't exist
[ ! -d ./bin ] && mkdir -p ./bin

# template for extract lines:
# dd if=$BASEROM of=./bin/output.bin skip="$((0xaddr))" count=size iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# 0x40: boot code ("vpw2_z.000040.boot.bin") 4032 bytes
echo "[extract_baserom] bin/boot.bin"
dd if=$BASEROM of=./bin/boot.bin skip="$((0x40))" count=4032 iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# [graphics microcode]
# 0x3AF50: f3dex2.xbus
echo "[extract_baserom] bin/f3dex2_xbus.bin"
dd if=$BASEROM of=./bin/f3dex2_xbus.bin skip="$((0x3AF50))" count=5024 iflag=count_bytes,skip_bytes status=none

# 0x3C2F0: f3dlx2.rej.xbus
echo "[extract_baserom] bin/f3dlx2.rej_xbus.bin"
dd if=$BASEROM of=./bin/f3dlx2.rej_xbus.bin skip="$((0x3C2F0))" count=4504 iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# 0x4BEA0: base_dl (until it gets converted into macros, anyways)
echo "[extract_baserom] bin/base_dl.bin"
dd if=$BASEROM of=./bin/base_dl.bin skip="$((0x4BEA0))" count=160 iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# [filetable initial extract]
# 0x152DF0: filetable data (18604368 bytes)
echo "[extract_baserom] bin/filedata.bin (just under 18 megabytes; this will take a moment...)"
dd if=$BASEROM of=./bin/filedata.bin bs=4096 skip="$((0x152DF0))" count=18604368 iflag=count_bytes,skip_bytes status=none

# 0x1310F40: filetable index (52368 bytes)
echo "[extract_baserom] bin/filetable.idx"
dd if=$BASEROM of=./bin/filetable.idx skip="$((0x1310F40))" count=52368 iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# 0x131DBD0: data with currently unknown purpose, a.k.a. "somejunk"
echo "[extract_baserom] bin/somejunk.bin"
dd if=$BASEROM of=./bin/somejunk.bin skip="$((0x131DBD0))" count=118960 iflag=count_bytes,skip_bytes status=none

#------------------------------------------------------------------------------#
# [soundtable stuff]

# create soundtable bin directory if it doesn't exist
echo "[extract_baserom] Starting soundtable extraction"
[ ! -d ./bin/soundtable ] && mkdir -p ./bin/soundtable

echo "[extract_baserom] bin/soundtable/sndtbl1_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl1_ptr.bin skip="$((0x133AC80))" count=8592 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl1_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl1_wbk.bin skip="$((0x133CE10))" count=1118864 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl1_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl1_tbl.bin skip="$((0x144E0A0))" count=7312 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl2_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl2_ptr.bin skip="$((0x144FD30))" count=20208 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl2_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl2_wbk.bin skip="$((0x1454C20))" count=1153968 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl2_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl2_tbl.bin skip="$((0x156E7D0))" count=608 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl3_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl3_ptr.bin skip="$((0x156EA30))" count=2224 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl3_wbk.bin (just over 7 megabytes; this will take a moment...)"
dd if=$BASEROM of=./bin/soundtable/sndtbl3_wbk.bin bs=2048 skip="$((0x156F2E0))" count=7504160 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl3_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl3_tbl.bin skip="$((0x1C97400))" count=5648 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl4_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl4_ptr.bin skip="$((0x1C98A10))" count=15600 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl4_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl4_wbk.bin skip="$((0x1C9C700))" count=451904 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl4_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl4_tbl.bin skip="$((0x1D0AC40))" count=5424 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl5_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl5_ptr.bin skip="$((0x1D0C170))" count=14752 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl5_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl5_wbk.bin skip="$((0x1D0FB10))" count=1278944 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl5_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl5_tbl.bin skip="$((0x1E47EF0))" count=2240 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl6_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl6_ptr.bin skip="$((0x1E487B0))" count=6144 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl6_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl6_wbk.bin skip="$((0x1E49FB0))" count=286848 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl6_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl6_tbl.bin skip="$((0x1E90030))" count=1744 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl7_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl7_ptr.bin skip="$((0x1E90700))" count=10704 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl7_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl7_wbk.bin skip="$((0x1E930D0))" count=299840 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl7_tbl.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl7_tbl.bin skip="$((0x1EDC410))" count=1744 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] bin/soundtable/sndtbl8_ptr.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl8_ptr.bin skip="$((0x1EDCAE0))" count=10704 iflag=count_bytes,skip_bytes status=none
echo "[extract_baserom] bin/soundtable/sndtbl8_wbk.bin"
dd if=$BASEROM of=./bin/soundtable/sndtbl8_wbk.bin skip="$((0x1EDF4B0))" count=413952 iflag=count_bytes,skip_bytes status=none

echo "[extract_baserom] Finished extracting data from base ROM."
