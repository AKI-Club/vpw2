# Virtual Pro-Wrestling 2 | data_main/stablewrestlers.s
# Wrestler ID2 values for default stables
# These are meant to go at 0x4060C in the Z64 ROM; 8003FA0C runtime.

# offset into the chunked data binary (vpw2_z.03A730.data01.bin): 0x5EDC
# ends at 0x5F80 (non-inclusive)

ID2List_AJPW1:
	.byte 0x0B # Giant Baba
	.byte 0x01 # Mitsuharu Misawa
	.byte 0x02 # Yoshinari Ogawa
	.byte 0x0A # Masahito Kakihara
	.byte 0x05 # Kenta Kobashi
	.byte 0x06 # Jun Akiyama
	.byte 0x1A # Kentaro Shiga
	.byte 0x00

ID2List_AJPW2:
	.byte 0x03 # Toshiaki Kawada
	.byte 0x04 # Akira Taue
	.byte 0x19 # Takao Omori
	.byte 0x09 # Yoshihiro Takayama
	.byte 0x07 # Hiroshi Hase
	.byte 0x13 # Jun Izumida
	.byte 0x08 # Maunakea Mossman
	.byte 0x00

ID2List_AJPW3:
	.byte 0x0F # Vader
	.byte 0x0E # Stan Hansen
	.byte 0x10 # Johnny Ace
	.byte 0x11 # Mike Barton
	.byte 0x14 # Gary Albright
	.byte 0x15 # Johnny Smith
	.byte 0x12 # Giant Kimala
	.byte 0x00

ID2List_NSW1:
	.byte 0x1B #
	.byte 0x1C #
	.byte 0x1D #
	.byte 0x20 #
	.byte 0x22 #
	.byte 0x21 #
	.byte 0x1E #
	.byte 0x23 #
	.word 0 # (alignment)

ID2List_NSW2:
	.byte 0x28 #
	.byte 0x2A #
	.byte 0x29 #
	.byte 0x2B #
	.byte 0x2C #
	.byte 0x2D #
	.byte 0x00
	.byte 0x00

ID2List_NSW3:
	.byte 0x2F #
	.byte 0x30 #
	.byte 0x31 #
	.byte 0x35 #
	.byte 0x32 #
	.byte 0x33 #
	.byte 0x34 #
	.byte 0x00

ID2List_DAW:
	.byte 0x39 #
	.byte 0x3E #
	.byte 0x3A #
	.byte 0x3D #
	.byte 0x3B #
	.byte 0x3C #
	.byte 0x3F #
	.byte 0x1F #
	.word 0 # (alignment)

ID2List_ILW:
	.byte 0x43 #
	.byte 0x44 #
	.byte 0x47 #
	.byte 0x46 #
	.byte 0x45 #
	.byte 0x37 #
	.byte 0x38 #
	.byte 0x40 #
	.word 0 # (alignment)

ID2List_JUNKS:
	.byte 0x4A #
	.byte 0x4B #
	.byte 0x4C #
	.byte 0x4D #
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

ID2List_Perfecshi:
	.byte 0x56 #
	.byte 0x57 #
	.byte 0x58 #
	.byte 0x59 #
	.byte 0x5B #
	.byte 0x00
	.byte 0x00
	.byte 0x00

ID2List_Brand:
	.byte 0x5C #
	.byte 0x5D #
	.byte 0x49 #
	.byte 0x55 #
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

ID2List_Battration:
	.byte 0x50 #
	.byte 0x51 #
	.byte 0x52 #
	.byte 0x53 #
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

ID2List_Legend1:
	.byte 0x0C #
	.byte 0x48 #
	.byte 0x42 #
	.byte 0x0D #
	.byte 0x17 #
	.byte 0x18 #
	.byte 0x16 #
	.byte 0x62 #
	.word 0 # (alignment)

ID2List_Legend2:
	.byte 0x60 #
	.byte 0x4E #
	.byte 0x4F #
	.byte 0x5F #
	.byte 0x5E #
	.byte 0x5A #
	.byte 0x2E #
	.byte 0x61 #
	.word 0 # (alignment)

ID2List_Legend3:
	.byte 0x25 #
	.byte 0x36 #
	.byte 0x24 #
	.byte 0x26 #
	.byte 0x27 #
	.byte 0x41 #
	.byte 0x54 #
	.byte 0x00

ID2List_Edit1:
	.byte 0x63 # Original A
	.byte 0x64 # Original B
	.byte 0x65 # Original C
	.byte 0x66 # Original D
	.byte 0x67 # Original E
	.byte 0x68 # Original F
	.byte 0x69 # Original G
	.byte 0x6A # Original H
	.word 0 # (alignment)

ID2List_Edit2:
	.byte 0x6B # Original I
	.byte 0x6C # Original J
	.byte 0x6D # Original K
	.byte 0x6E # Original L
	.byte 0x6F # Original M
	.byte 0x70 # Original N
	.byte 0x71 # Original O
	.byte 0x72 # Original P
	.word 0 # (alignment)

# after this file: ptrTbl_WrestlerData
