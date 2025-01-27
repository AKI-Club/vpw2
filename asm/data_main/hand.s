# Virtual Pro-Wrestling 2 | data_main/hand.s
# Hand Definitions?
# These are meant to go at 0x411D4 in the Z64 ROM; 800405D4 runtime.

/*----------------------------------------------------------------------------*/
# hand data begins at 800405D4 (Z64 0x411D4; data01 bin offset: 0x6290)

# Hand - Finger Models
# Left Hand
D_800405D4:
	.short 0x1A12
	.short 0x1A16
	.short 0x1A17
	.short 0x1A18
	.short 0x1A19
	.short 0x1A1A
	.short 0x1A1B
	.short 0x1A1C
	.short 0x1A1D
	.short 0x1A1E
	.short 0x1A14
	.short 0

# Right Hand
D_800405EC:
	.short 0x1A20
	.short 0x1A24
	.short 0x1A25
	.short 0x1A26
	.short 0x1A27
	.short 0x1A28
	.short 0x1A29
	.short 0x1A2A
	.short 0x1A2B
	.short 0x1A2C
	.short 0x1A22
	.short 0

ptrTbl_80040604:
	.word D_800405D4
	.word D_800405EC

/*----------------------------------------------------------------------------*/
# Hand - Palm Models
# Left Hand

# Giant Baba body type
D_8004060C: .short 0x19FA, 0x19FE, 0x1A02, 0x19FA

# Body Types 7 and 8
D_80040614: .short 0x19FB, 0x19FF, 0x1A03, 0x19FB

# Body Types 3 through 6
D_8004061C: .short 0x19FC, 0x1A00, 0x1A04, 0x19FC

# Body Types 1 and 2
D_80040624: .short 0x19FD, 0x1A01, 0x1A05, 0x19FD

ptrTbl_8004062C:
	.word D_80040614
	.word D_8004061C
	.word D_80040624
	.word D_8004060C

# Right Hand

# Giant Baba body type
D_8004063C: .short 0x1A06, 0x1A0A, 0x1A0E, 0x1A06

# Body Types 7 and 8
D_80040644: .short 0x1A07, 0x1A0B, 0x1A0F, 0x1A2E

# Body Types 3 through 6
D_8004064C: .short 0x1A08, 0x1A0C, 0x1A10, 0x1A2F

# Body Types 1 and 2
D_80040654: .short 0x1A09, 0x1A0D, 0x1A11, 0x1A30

ptrTbl_8004065C:
	.word D_80040644
	.word D_8004064C
	.word D_80040654
	.word D_8004063C

ptrTbl_8004066C:
	.word ptrTbl_8004062C
	.word ptrTbl_8004065C

/*----------------------------------------------------------------------------*/
# 80040674: palm and finger texture file IDs
tbl_HandTextureFiles:
	.short 0x1A32, 0x1A34
	.short 0x1A32, 0x1A34

# 8004067C: mapping of body type to palm model table?
D_8004067C:
	.byte 2 # Body Type 1
	.byte 2 # Body Type 2
	.byte 1 # Body Type 3
	.byte 1 # Body Type 4
	.byte 1 # Body Type 5
	.byte 1 # Body Type 6
	.byte 0 # Body Type 7
	.byte 0 # Body Type 8
	.byte 3 # Body Type 9 (Giant Baba)
	.byte 0
	.byte 0
	.byte 0

/*----------------------------------------------------------------------------*/
D_80040688:
	.byte 0,0,0,0,0,2,0,8,0,1,6,0,6,0,4,0xA,5,2,7,0

D_8004069C:
	.byte 0,5,7,9,2,2,8,8,1,1,0,6,6,4,4,0xA,0,0,7,0

D_800406B0:
	.byte 0,0,0,0,0,1,0,2,0,2,2,0,2,0,1,1,2,1,2,0

D_800406C4:
	.byte 0,2,2,1,1,1,2,2,2,2,0,2,2,1,1,1,0,0,2,0

ptrTbl_800406D8:
	.word D_800406C4
	.word D_8004069C
	.word D_800406B0
	.word D_80040688

/*----------------------------------------------------------------------------*/
D_800406E8:
	.byte 1,1,0,0

D_800406EC:
	.byte 0x11,0x12,9,0xA

#(0x63AC)
D_800406F0:
	.byte 0,0,0,0x1D,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x1F,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x0D,0,0,0,0,0,0,0,0

#(0x63DC)
D_80040720:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x13,0,0,0,0,0,0,0,0

# (0x6418)
D_8004075C:
	.byte 0,0,0,0x1C,0,0,0,0x2F,0,0,0,0,0,0,0,0,0,0,0,0x1A,0,0,0,0x20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x644C)
D_80040790:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0x1A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x6474)
D_800407B8:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x6484)
D_800407C8:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x64A4)
D_800407E8:
	.byte 0,0,0,0x06,0,0,0,0x05,0,0,0,0x04,0,0,0,0x0A,0,0,0,0x04,0,0,0,0x06

# (0x64BC)
D_80040800:
	.byte 0,0,0,0x15,0,0x1A,0,0x1A,0,0,0,0x0D,0,0,0,0x18,0,0,0,0x0C,0,0,0,0x07

# (0x64D4)
D_80040818:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x64F4)
D_80040838:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# (0x650C)
ptrTbl_80040850:
	.word D_800406F0
	.word D_80040720
	.word D_8004075C
	.word D_80040790
	.word D_800407B8
	.word D_800407C8
	.word D_800407E8
	.word D_80040800
	.word D_80040818
	.word D_80040838
