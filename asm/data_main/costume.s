# Virtual Pro-Wrestling 2 | data_main/costume.s
# Costume Definitions
# These are meant to go at 0x414B0 in the Z64 ROM; 800408B0 runtime.

# Warning: this file is going to be huge

/*----------------------------------------------------------------------------*/
# 800408B0 (Z64 0x414B0; data01 bin offset: 0x656C): some values idk
D_800408B0:
	.byte 0,2,4,0,1,3,5,0

/*----------------------------------------------------------------------------*/
# 800408B8 (Z64 0x414B8; data01 bin offset: 0x6574): *actual* costume data begins here, holy shit

# [Models] Ring Attire F1/F2 - Trunks
D_800408B8:
	.short 0x0C4E
	.short 0
	.short 0
	.short 0
	.short 0x0C4F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C50
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800408DC:
	.short 0x0CB6
	.short 0
	.short 0
	.short 0
	.short 0x0CB7
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CB8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040900:
	.short 0x0C88
	.short 0
	.short 0
	.short 0
	.short 0x0C89
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C8A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040924:
	.short 0x0CE3
	.short 0
	.short 0
	.short 0
	.short 0x0CE4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CE5
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040948:
	.short 0x0D1F
	.short 0
	.short 0
	.short 0
	.short 0x0D20
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D21
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_8004096C:
	.short 0x0D4E
	.short 0
	.short 0
	.short 0
	.short 0x0D4F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D50
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040990:
	.word D_8004096C
	.word D_8004096C
	.word D_80040948
	.word D_80040948
	.word D_80040924
	.word D_80040924
	.word D_80040900
	.word D_800408DC
	.word D_800408B8

/*----------------------------------------------------------------------------*/
# [Models] Ring Attire F13 - Cut Jeans

D_800409B4:
	.short 0x0D5C
	.short 0
	.short 0
	.short 0x0D5D
	.short 0x0D5E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D5F
	.short 0x0D60
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800409D8:
	.short 0x0D2D
	.short 0
	.short 0
	.short 0x0D2E
	.short 0x0D2F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D30
	.short 0x0D31
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800409FC:
	.short 0x0CEE
	.short 0
	.short 0
	.short 0x0CEF
	.short 0x0CF0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CF1
	.short 0x0CF2
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040A20:
	.short 0x0C95
	.short 0
	.short 0
	.short 0x0C96
	.short 0x0C97
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C98
	.short 0x0C99
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040A44:
	.short 0x0C5C
	.short 0
	.short 0
	.short 0x0C5D
	.short 0x0C5E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C5F
	.short 0x0C60
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040A68:
	.short 0x0CC2
	.short 0
	.short 0
	.short 0x0CC3
	.short 0x0CC4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CC5
	.short 0x0CC6
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040A8C:
	.word D_800409B4
	.word D_800409B4
	.word D_800409D8
	.word D_800409D8
	.word D_800409FC
	.word D_800409FC
	.word D_80040A20
	.word D_80040A68
	.word D_80040A44

/*----------------------------------------------------------------------------*/
# [Models] Ring Attire D1-D9

D_80040AB0:
	.short 0x0D61
	.short 0
	.short 0
	.short 0x0D62
	.short 0x0D63
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D64
	.short 0x0D65
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040AD4:
	.short 0x0D32
	.short 0
	.short 0
	.short 0x0D33
	.short 0x0D34
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D35
	.short 0x0D36
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040AF8:
	.short 0x0CF3
	.short 0
	.short 0
	.short 0x0CF4
	.short 0x0CF5
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CF6
	.short 0x0CF7
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040B1C:
	.short 0x0C9A
	.short 0
	.short 0
	.short 0x0C9B
	.short 0x0C9C
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C9D
	.short 0x0C9E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040B40:
	.short 0x0C61
	.short 0
	.short 0
	.short 0x0C62
	.short 0x0C63
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C64
	.short 0x0C65
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040B64:
	.short 0x0CC7
	.short 0
	.short 0
	.short 0x0CC8
	.short 0x0CC9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CCA
	.short 0x0CCB
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040B88:
	.word D_80040AB0
	.word D_80040AB0
	.word D_80040AD4
	.word D_80040AD4
	.word D_80040AF8
	.word D_80040AF8
	.word D_80040B1C
	.word D_80040B64
	.word D_80040B40

/*----------------------------------------------------------------------------*/
# [Models] Gi

D_80040BAC:
	.short 0x09B2
	.short 0x09B3
	.short 0x09B4
	.short 0x09B5
	.short 0x09B6
	.short 0
	.short 0
	.short 0
	.short 0x09B7
	.short 0x09B8
	.short 0x09B9
	.short 0x09BA
	.short 0
	.short 0x09BB
	.short 0
	.short 0
	.short 0x09BC
	.short 0

D_80040BD0:
	.short 0x0A29
	.short 0x0A2A
	.short 0x0A2B
	.short 0x0A2C
	.short 0x0A2D
	.short 0
	.short 0
	.short 0
	.short 0x0A2E
	.short 0x0A2F
	.short 0x0A30
	.short 0x0A31
	.short 0
	.short 0x0A32
	.short 0
	.short 0
	.short 0x0A33
	.short 0

D_80040BF4:
	.short 0x0A9D
	.short 0x0A9E
	.short 0x0A9F
	.short 0x0AA0
	.short 0x0AA1
	.short 0
	.short 0
	.short 0
	.short 0x0AA2
	.short 0x0AA3
	.short 0x0AA4
	.short 0x0AA5
	.short 0
	.short 0x0AA6
	.short 0
	.short 0
	.short 0x0AA7
	.short 0

D_80040C18:
	.short 0x0B0C
	.short 0x0B0D
	.short 0x0B0E
	.short 0x0B0F
	.short 0x0B10
	.short 0
	.short 0
	.short 0
	.short 0x0B11
	.short 0x0B12
	.short 0x0B13
	.short 0x0B14
	.short 0
	.short 0x0B15
	.short 0
	.short 0
	.short 0x0B16
	.short 0

D_80040C3C:
	.short 0x0B7F
	.short 0x0B80
	.short 0x0B81
	.short 0x0B82
	.short 0x0B83
	.short 0
	.short 0
	.short 0
	.short 0x0B84
	.short 0x0B85
	.short 0x0B86
	.short 0x0B87
	.short 0
	.short 0x0B88
	.short 0
	.short 0
	.short 0x0B89
	.short 0

D_80040C60:
	.short 0x0BF7
	.short 0x0BF8
	.short 0x0BF9
	.short 0x0BFA
	.short 0x0BFB
	.short 0
	.short 0
	.short 0
	.short 0x0BFC
	.short 0x0BFD
	.short 0x0BFE
	.short 0x0BFF
	.short 0
	.short 0x0C00
	.short 0
	.short 0
	.short 0x0C01
	.short 0

ptrTbl_80040C84:
	.word D_80040C60
	.word D_80040C60
	.word D_80040C3C
	.word D_80040C3C
	.word D_80040C18
	.word D_80040C18
	.word D_80040BD0
	.word D_80040BF4
	.word D_80040BAC

/*----------------------------------------------------------------------------*/
# [Models] Ring Attire D13, D15 (with Belt Polygon)

D_80040CA8:
	.short 0x0C66
	.short 0
	.short 0
	.short 0x0C67
	.short 0x0C68
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C69
	.short 0x0C6A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040CCC:
	.short 0x0C9F
	.short 0
	.short 0
	.short 0x0CA0
	.short 0x0CA1
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CA2
	.short 0x0CA3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040CF0:
	.short 0x0CCC
	.short 0
	.short 0
	.short 0x0CCD
	.short 0x0CCE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CCF
	.short 0x0CD0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040D14:
	.short 0x0CF8
	.short 0
	.short 0
	.short 0x0CF9
	.short 0x0CFA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CFB
	.short 0x0CFC
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040D38:
	.short 0x0D37
	.short 0
	.short 0
	.short 0x0D38
	.short 0x0D39
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D3A
	.short 0x0D3B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040D5C:
	.short 0x0D66
	.short 0
	.short 0
	.short 0x0D67
	.short 0x0D68
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D69
	.short 0x0D6A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040D80:
	.word D_80040D5C
	.word D_80040D5C
	.word D_80040D38
	.word D_80040D38
	.word D_80040D14
	.word D_80040D14
	.word D_80040CCC
	.word D_80040CF0
	.word D_80040CA8

/*----------------------------------------------------------------------------*/
# [Models] Entrance D3, D4

D_80040DA4:
	.short 0x0C54
	.short 0x099E
	.short 0x099F
	.short 0x0C55
	.short 0x0C56
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C57
	.short 0x0C58
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040DC8:
	.short 0x0C8E
	.short 0x09FE
	.short 0x09FF
	.short 0x0C8F
	.short 0x0C90
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C91
	.short 0x0C92
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040DEC:
	.short 0x0CBC
	.short 0x0A76
	.short 0x0A77
	.short 0x0CBD
	.short 0x0CBE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CBF
	.short 0x0CC0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040E10:
	.short 0x0CE6
	.short 0x0AE7
	.short 0x0AE8
	.short 0x0CE7
	.short 0x0CE8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CE9
	.short 0x0CEA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040E34:
	.short 0x0D25
	.short 0x0B54
	.short 0x0B55
	.short 0x0D26
	.short 0x0D27
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D28
	.short 0x0D29
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040E58:
	.short 0x0D54
	.short 0x0BCC
	.short 0x0BCD
	.short 0x0D55
	.short 0x0D56
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D57
	.short 0x0D58
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040E7C:
	.word D_80040E58
	.word D_80040E58
	.word D_80040E34
	.word D_80040E34
	.word D_80040E10
	.word D_80040E10
	.word D_80040DC8
	.word D_80040DEC
	.word D_80040DA4

/*----------------------------------------------------------------------------*/
# [Models] Vest (Entrance D1, D2)

D_80040EA0:
	.short 0
	.short 0x099E
	.short 0x099F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040EC4:
	.short 0
	.short 0x09FE
	.short 0x09FF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040EE8:
	.short 0
	.short 0x0A76
	.short 0x0A77
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040F0C:
	.short 0
	.short 0x0AE7
	.short 0x0AE8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040F30:
	.short 0
	.short 0x0B54
	.short 0x0B55
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040F54:
	.short 0
	.short 0x0BCC
	.short 0x0BCD
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80040F78:
	.word D_80040F54
	.word D_80040F54
	.word D_80040F30
	.word D_80040F30
	.word D_80040F0C
	.word D_80040F0C
	.word D_80040EC4
	.word D_80040EE8
	.word D_80040EA0

/*----------------------------------------------------------------------------*/
D_80040F9C:
	.short 0
	.short 0x09A0
	.short 0x09A1
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040FC0:
	.short 0
	.short 0x0A09
	.short 0x0A0A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80040FE4:
	.short 0
	.short 0x0A7D
	.short 0x0A7E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041008:
	.short 0
	.short 0x0AEC
	.short 0x0AED
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_8004102C:
	.short 0
	.short 0x0B5F
	.short 0x0B60
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041050:
	.short 0
	.short 0x0BD7
	.short 0x0BD8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80041074:
	.word D_80041050
	.word D_80041050
	.word D_8004102C
	.word D_8004102C
	.word D_80041008
	.word D_80041008
	.word D_80040FC0
	.word D_80040FE4
	.word D_80040F9C

/*----------------------------------------------------------------------------*/
D_80041098:
	.short 0x09A7
	.short 0x09A8
	.short 0x09A9
	.short 0x09AA
	.short 0x09AB
	.short 0
	.short 0
	.short 0
	.short 0x09AC
	.short 0x09AD
	.short 0x09AE
	.short 0x09AF
	.short 0
	.short 0x09B0
	.short 0
	.short 0
	.short 0x09B1
	.short 0

D_800410BC:
	.short 0x0A92
	.short 0x0A93
	.short 0x0A94
	.short 0x0A95
	.short 0x0A96
	.short 0
	.short 0
	.short 0
	.short 0x0A97
	.short 0x0A98
	.short 0x0A99
	.short 0x0A9A
	.short 0
	.short 0x0A9B
	.short 0
	.short 0
	.short 0x0A9C
	.short 0

D_800410E0:
	.short 0x0A1E
	.short 0x0A1F
	.short 0x0A20
	.short 0x0A21
	.short 0x0A22
	.short 0
	.short 0
	.short 0
	.short 0x0A23
	.short 0x0A24
	.short 0x0A25
	.short 0x0A26
	.short 0
	.short 0x0A27
	.short 0
	.short 0
	.short 0x0A28
	.short 0

D_80041104:
	.short 0x0B01
	.short 0x0B02
	.short 0x0B03
	.short 0x0B04
	.short 0x0B05
	.short 0
	.short 0
	.short 0
	.short 0x0B06
	.short 0x0B07
	.short 0x0B08
	.short 0x0B09
	.short 0
	.short 0x0B0A
	.short 0
	.short 0
	.short 0x0B0B
	.short 0

D_80041128:
	.short 0x0B74
	.short 0x0B75
	.short 0x0B76
	.short 0x0B77
	.short 0x0B78
	.short 0
	.short 0
	.short 0
	.short 0x0B79
	.short 0x0B7A
	.short 0x0B7B
	.short 0x0B7C
	.short 0
	.short 0x0B7D
	.short 0
	.short 0
	.short 0x0B7E
	.short 0

D_8004114C:
	.short 0x0BEC
	.short 0x0BED
	.short 0x0BEE
	.short 0x0BEF
	.short 0x0BF0
	.short 0
	.short 0
	.short 0
	.short 0x0BF1
	.short 0x0BF2
	.short 0x0BF3
	.short 0x0BF4
	.short 0
	.short 0x0BF5
	.short 0
	.short 0
	.short 0x0BF6
	.short 0

ptrTbl_80041170:
	.word D_8004114C
	.word D_8004114C
	.word D_80041128
	.word D_80041128
	.word D_80041104
	.word D_80041104
	.word D_800410E0
	.word D_800410BC
	.word D_80041098

/*----------------------------------------------------------------------------*/
D_80041194:
	.short 0
	.short 0x09BD
	.short 0x09BE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09BF
	.short 0x09C0
	.short 0
	.short 0
	.short 0
	.short 0x09C1
	.short 0
	.short 0
	.short 0x09C2
	.short 0

D_800411B8:
	.short 0
	.short 0x0A34
	.short 0x0A35
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A36
	.short 0x0A37
	.short 0
	.short 0
	.short 0
	.short 0x0A38
	.short 0
	.short 0
	.short 0x0A39
	.short 0

D_800411DC:
	.short 0
	.short 0x0AA8
	.short 0x0AA9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AAA
	.short 0x0AAB
	.short 0
	.short 0
	.short 0
	.short 0x0AAC
	.short 0
	.short 0
	.short 0x0AAD
	.short 0

D_80041200:
	.short 0
	.short 0x0B17
	.short 0x0B18
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B8C
	.short 0x0B8D
	.short 0
	.short 0
	.short 0
	.short 0x0B8E
	.short 0
	.short 0
	.short 0x0B8F
	.short 0

D_80041224:
	.short 0
	.short 0x0B8A
	.short 0x0B8B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B8C
	.short 0x0B8D
	.short 0
	.short 0
	.short 0
	.short 0x0B8E
	.short 0
	.short 0
	.short 0x0B8F
	.short 0

D_80041248:
	.short 0
	.short 0x0C02
	.short 0x0C03
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C04
	.short 0x0C05
	.short 0
	.short 0
	.short 0
	.short 0x0C06
	.short 0
	.short 0
	.short 0x0C07
	.short 0

ptrTbl_8004126C:
	.word D_80041248
	.word D_80041248
	.word D_80041224
	.word D_80041224
	.word D_80041200
	.word D_80041200
	.word D_800411B8
	.word D_800411DC
	.word D_80041194

/*----------------------------------------------------------------------------*/
D_80041290:
	.short 0
	.short 0x09CA
	.short 0x09CB
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09CC
	.short 0x09CD
	.short 0
	.short 0
	.short 0
	.short 0x09CE
	.short 0
	.short 0
	.short 0x09CF
	.short 0

D_800412B4:
	.short 0
	.short 0x0AB5
	.short 0x0AB6
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AB7
	.short 0x0AB8
	.short 0
	.short 0
	.short 0
	.short 0x0AB9
	.short 0
	.short 0
	.short 0x0ABA
	.short 0

D_800412D8:
	.short 0
	.short 0x0A41
	.short 0x0A42
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A43
	.short 0x0A44
	.short 0
	.short 0
	.short 0
	.short 0x0A45
	.short 0
	.short 0
	.short 0x0A46
	.short 0

D_800412FC:
	.short 0
	.short 0x0B22
	.short 0x0B23
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B24
	.short 0x0B25
	.short 0
	.short 0
	.short 0
	.short 0x0B26
	.short 0
	.short 0
	.short 0x0B27
	.short 0

D_80041320:
	.short 0
	.short 0x0B97
	.short 0x0B98
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B99
	.short 0x0B9A
	.short 0
	.short 0
	.short 0
	.short 0x0B9B
	.short 0
	.short 0
	.short 0x0B9C
	.short 0

D_80041344:
	.short 0
	.short 0x0C15
	.short 0x0C16
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C17
	.short 0x0C18
	.short 0
	.short 0
	.short 0
	.short 0x0C19
	.short 0
	.short 0
	.short 0x0C1A
	.short 0

ptrTbl_80041368:
	.word D_80041344
	.word D_80041344
	.word D_80041320
	.word D_80041320
	.word D_800412FC
	.word D_800412FC
	.word D_800412D8
	.word D_800412B4
	.word D_80041290

/*----------------------------------------------------------------------------*/
D_8004138C:
	.short 0
	.short 0
	.short 0x09D0
	.short 0

D_80041394:
	.short 0
	.short 0
	.short 0x0ABB
	.short 0

D_8004139C:
	.short 0
	.short 0
	.short 0x0A47
	.short 0

D_800413A4:
	.short 0
	.short 0
	.short 0x0B28
	.short 0

D_800413AC:
	.short 0
	.short 0
	.short 0x0B9D
	.short 0

D_800413B4:
	.short 0
	.short 0
	.short 0x0C1B
	.short 0

ptrTbl_800413BC:
	.word D_800413B4
	.word D_800413B4
	.word D_800413AC
	.word D_800413AC
	.word D_800413A4
	.word D_800413A4
	.word D_8004139C
	.word D_80041394
	.word D_8004138C

/*----------------------------------------------------------------------------*/
D_800413E0:
	.short 0
	.short 0x09D7
	.short 0x09D8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09D9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09DA
	.short 0

D_80041404:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AC2
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AC3
	.short 0

D_80041428:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A4E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A4F
	.short 0

D_8004144C:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B2F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B30
	.short 0

D_80041470:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BA4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BA5
	.short 0

D_80041494:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C1C
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C1D
	.short 0

ptrTbl_800414B8:
	.word D_80041494
	.word D_80041494
	.word D_80041470
	.word D_80041470
	.word D_8004144C
	.word D_8004144C
	.word D_80041428
	.word D_80041404
	.word D_800413E0

/*----------------------------------------------------------------------------*/
D_800414DC:
	.short 0
	.short 0x09EF
	.short 0x09F0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041500:
	.short 0
	.short 0x0AD8
	.short 0x0AD9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041524:
	.short 0
	.short 0x0A67
	.short 0x0A68
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041548:
	.short 0
	.short 0x0B45
	.short 0x0B46
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_8004156C:
	.short 0
	.short 0x0BBD
	.short 0x0BBE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041590:
	.short 0
	.short 0x0C32
	.short 0x0C33
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_800415B4:
	.word D_80041590
	.word D_80041590
	.word D_8004156C
	.word D_8004156C
	.word D_80041548
	.word D_80041548
	.word D_80041524
	.word D_80041500
	.word D_800414DC

/*----------------------------------------------------------------------------*/
D_800415D8:
	.short 0
	.short 0
	.short 0x09F1
	.short 0

D_800415E0:
	.short 0
	.short 0
	.short 0x0ADA
	.short 0

D_800415E8:
	.short 0
	.short 0
	.short 0x0A69
	.short 0

D_800415F0:
	.short 0
	.short 0
	.short 0x0B47
	.short 0

D_800415F8:
	.short 0
	.short 0
	.short 0x0BBF
	.short 0

D_80041600:
	.short 0
	.short 0
	.short 0x0C34
	.short 0

ptrTbl_80041608:
	.word D_80041600
	.word D_80041600
	.word D_800415F8
	.word D_800415F8
	.word D_800415F0
	.word D_800415F0
	.word D_800415E8
	.word D_800415E0
	.word D_800415D8

/*----------------------------------------------------------------------------*/
# [Models] Upper Costume C8, C9, C10
D_8004162C:
	.short 0
	.short 0
	.short 0x0C3B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041650:
	.short 0
	.short 0
	.short 0x0BC6
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041674:
	.short 0
	.short 0
	.short 0x0B4E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041698:
	.short 0
	.short 0
	.short 0x0A70
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800416BC:
	.short 0
	.short 0
	.short 0x09F2
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800416E0:
	.short 0
	.short 0
	.short 0x0AE1
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80041704:
	.word D_8004162C
	.word D_8004162C
	.word D_80041650
	.word D_80041650
	.word D_80041674
	.word D_80041674
	.word D_80041698
	.word D_800416E0
	.word D_800416BC

/*----------------------------------------------------------------------------*/
D_80041728:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09F5
	.short 0x09F6
	.short 0
	.short 0
	.short 0
	.short 0x09F7
	.short 0
	.short 0
	.short 0x09F8
	.short 0

D_8004174C:
	.short 0
	.short 0x0ADB
	.short 0x0ADC
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0ADD
	.short 0x0ADE
	.short 0
	.short 0
	.short 0
	.short 0x0ADF
	.short 0
	.short 0
	.short 0x0AE0
	.short 0

D_80041770:
	.short 0
	.short 0x0A6A
	.short 0x0A6B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A6C
	.short 0x0A6D
	.short 0
	.short 0
	.short 0
	.short 0x0A6E
	.short 0
	.short 0
	.short 0x0A6F
	.short 0

D_80041794:
	.short 0
	.short 0x0B48
	.short 0x0B49
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B4A
	.short 0x0B4B
	.short 0
	.short 0
	.short 0
	.short 0x0B4C
	.short 0
	.short 0
	.short 0x0B4D
	.short 0

D_800417B8:
	.short 0
	.short 0x0BC0
	.short 0x0BC1
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BC2
	.short 0x0BC3
	.short 0
	.short 0
	.short 0
	.short 0x0BC4
	.short 0
	.short 0
	.short 0x0BC5
	.short 0

D_800417DC:
	.short 0
	.short 0x0C35
	.short 0x0C36
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C37
	.short 0x0C38
	.short 0
	.short 0
	.short 0
	.short 0x0C39
	.short 0
	.short 0
	.short 0x0C3A
	.short 0

ptrTbl_80041800:
	.word D_800417DC
	.word D_800417DC
	.word D_800417B8
	.word D_800417B8
	.word D_80041794
	.word D_80041794
	.word D_80041770
	.word D_8004174C
	.word D_80041728

/*----------------------------------------------------------------------------*/
D_80041824:
	.short 0
	.short 0x09F9
	.short 0x09FA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09FB
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09FC
	.short 0

D_80041848:
	.short 0
	.short 0x0AE2
	.short 0x0AE3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AE4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AE5
	.short 0

D_8004186C:
	.short 0
	.short 0x0A71
	.short 0x0A72
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A73
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A74
	.short 0

D_80041890:
	.short 0
	.short 0x0B4F
	.short 0x0B50
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B51
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B52
	.short 0

D_800418B4:
	.short 0
	.short 0x0BC7
	.short 0x0BC8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BC9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BCA
	.short 0

D_800418D8:
	.short 0
	.short 0x0C3C
	.short 0x0C3D
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C3E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C3F
	.short 0

ptrTbl_800418FC:
	.word D_800418D8
	.word D_800418D8
	.word D_800418B4
	.word D_800418B4
	.word D_80041890
	.word D_80041890
	.word D_8004186C
	.word D_80041848
	.word D_80041824

/*----------------------------------------------------------------------------*/
D_80041920:
	.short 0
	.short 0
	.short 0x09FD
	.short 0

D_80041928:
	.short 0
	.short 0
	.short 0x0AE6
	.short 0

D_80041930:
	.short 0
	.short 0
	.short 0x0A75
	.short 0

D_80041938:
	.short 0
	.short 0
	.short 0x0B53
	.short 0

D_80041940:
	.short 0
	.short 0
	.short 0x0BCB
	.short 0

D_80041948:
	.short 0
	.short 0
	.short 0x0C40
	.short 0

ptrTbl_80041950:
	.word D_80041948
	.word D_80041948
	.word D_80041940
	.word D_80041940
	.word D_80041938
	.word D_80041938
	.word D_80041930
	.word D_80041928
	.word D_80041920

/*----------------------------------------------------------------------------*/
D_80041974:
	.short 0x0C41
	.short 0x0C42
	.short 0x0C43
	.short 0x0C44
	.short 0x0C45
	.short 0
	.short 0
	.short 0
	.short 0x0C46
	.short 0x0C47
	.short 0x0C48
	.short 0x0C49
	.short 0
	.short 0x0C4A
	.short 0
	.short 0
	.short 0x0C4B
	.short 0

D_80041998:
	.short 0x0C6B
	.short 0x0C6C
	.short 0x0C6D
	.short 0x0C6E
	.short 0x0C6F
	.short 0
	.short 0
	.short 0
	.short 0x0C70
	.short 0x0C71
	.short 0x0C72
	.short 0x0C73
	.short 0
	.short 0x0C74
	.short 0
	.short 0
	.short 0x0C75
	.short 0

D_800419BC:
	.short 0x0CA9
	.short 0x0CAA
	.short 0x0CAB
	.short 0x0CAC
	.short 0x0CAD
	.short 0
	.short 0
	.short 0
	.short 0x0CAE
	.short 0x0CAF
	.short 0x0CB0
	.short 0x0CB1
	.short 0
	.short 0x0CB2
	.short 0
	.short 0
	.short 0x0CB3
	.short 0

D_800419E0:
	.short 0x0CD6
	.short 0x0CD7
	.short 0x0CD8
	.short 0x0CD9
	.short 0x0CDA
	.short 0
	.short 0
	.short 0
	.short 0x0CDB
	.short 0x0CDC
	.short 0x0CDD
	.short 0x0CDE
	.short 0
	.short 0x0CDF
	.short 0
	.short 0
	.short 0x0CE0
	.short 0

D_80041A04:
	.short 0x0D02
	.short 0x0D03
	.short 0x0D04
	.short 0x0D05
	.short 0x0D06
	.short 0
	.short 0
	.short 0
	.short 0x0D07
	.short 0x0D08
	.short 0x0D09
	.short 0x0D0A
	.short 0
	.short 0x0D0B
	.short 0
	.short 0
	.short 0x0D0C
	.short 0

D_80041A28:
	.short 0x0D41
	.short 0x0D42
	.short 0x0D43
	.short 0x0D44
	.short 0x0D45
	.short 0
	.short 0
	.short 0
	.short 0x0D46
	.short 0x0D47
	.short 0x0D48
	.short 0x0D49
	.short 0
	.short 0x0D4A
	.short 0
	.short 0
	.short 0x0D4B
	.short 0

ptrTbl_80041A4C:
	.word D_80041A28
	.word D_80041A28
	.word D_80041A04
	.word D_80041A04
	.word D_800419E0
	.word D_800419E0
	.word D_80041998
	.word D_800419BC
	.word D_80041974

/*----------------------------------------------------------------------------*/
D_80041A70:
	.short 0x0C4C
	.short 0x0C4D
	.short 0
	.short 0

D_80041A78:
	.short 0x0C76
	.short 0x0C77
	.short 0
	.short 0

D_80041A80:
	.short 0x0CB4
	.short 0x0CB5
	.short 0
	.short 0

D_80041A88:
	.short 0x0CE1
	.short 0x0CE2
	.short 0
	.short 0

D_80041A90:
	.short 0x0D0D
	.short 0x0D0E
	.short 0
	.short 0

D_80041A98:
	.short 0x0D4C
	.short 0x0D4D
	.short 0
	.short 0

ptrTbl_80041AA0:
	.word D_80041A98
	.word D_80041A98
	.word D_80041A90
	.word D_80041A90
	.word D_80041A88
	.word D_80041A88
	.word D_80041A78
	.word D_80041A80
	.word D_80041A70

/*----------------------------------------------------------------------------*/
D_80041AC4:
	.short 0x0C78
	.short 0x0C79
	.short 0x0C7A
	.short 0x0C7C
	.short 0x0C7D
	.short 0
	.short 0
	.short 0
	.short 0x0DF3
	.short 0x0DF4
	.short 0x0C80
	.short 0x0C81
	.short 0
	.short 0x0DF7
	.short 0
	.short 0
	.short 0x0DF8
	.short 0

D_80041AE8:
	.short 0x0D0F
	.short 0x0D10
	.short 0x0D11
	.short 0x0D13
	.short 0x0D14
	.short 0
	.short 0
	.short 0
	.short 0x0E0D
	.short 0x0E0E
	.short 0x0D17
	.short 0x0D18
	.short 0
	.short 0x0E11
	.short 0
	.short 0
	.short 0x0E12
	.short 0

ptrTbl_80041B0C:
	.word D_80041AE8
	.word D_80041AE8
	.word D_80041AE8
	.word D_80041AE8
	.word D_80041AE8
	.word D_80041AE8
	.word D_80041AC4
	.word D_80041AC4
	.word D_80041AE8

/*----------------------------------------------------------------------------*/
D_80041B30:
	.short 0x0C85
	.short 0x0C86
	.short 0x0C87
	.short 0

D_80041B38:
	.short 0x0D1C
	.short 0x0D1D
	.short 0x0D1E
	.short 0

ptrTbl_80041B40:
	.word D_80041B38
	.word D_80041B38
	.word D_80041B38
	.word D_80041B38
	.word D_80041B38
	.word D_80041B38
	.word D_80041B30
	.word D_80041B30
	.word D_80041B38

/*----------------------------------------------------------------------------*/
D_80041B64:
	.short 0x0D54
	.short 0
	.short 0
	.short 0x0D55
	.short 0x0D56
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D57
	.short 0x0D58
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041B88:
	.short 0x0D25
	.short 0
	.short 0
	.short 0x0D26
	.short 0x0D27
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0D28
	.short 0x0D29
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041BAC:
	.short 0x0CE6
	.short 0
	.short 0
	.short 0x0CE7
	.short 0x0CE8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CE9
	.short 0x0CEA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041BD0:
	.short 0x0C8E
	.short 0
	.short 0
	.short 0x0C8F
	.short 0x0C90
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C91
	.short 0x0C92
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041BF4:
	.short 0x0C54
	.short 0
	.short 0
	.short 0x0C55
	.short 0x0C56
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C57
	.short 0x0C58
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041C18:
	.short 0x0CBC
	.short 0
	.short 0
	.short 0x0CBD
	.short 0x0CBE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0CBF
	.short 0x0CC0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80041C3C:
	.word D_80041B64
	.word D_80041B64
	.word D_80041B88
	.word D_80041B88
	.word D_80041BAC
	.word D_80041BAC
	.word D_80041BD0
	.word D_80041C18
	.word D_80041BF4

/*----------------------------------------------------------------------------*/
D_80041C60:
	.short 0
	.short 0
	.short 0x0C59
	.short 0

D_80041C68:
	.short 0
	.short 0
	.short 0x0CC1
	.short 0

D_80041C70:
	.short 0
	.short 0
	.short 0x0C93
	.short 0

D_80041C78:
	.short 0
	.short 0
	.short 0x0CEB
	.short 0

D_80041C80:
	.short 0
	.short 0
	.short 0x0D2A
	.short 0

D_80041C88:
	.short 0
	.short 0
	.short 0x0D59
	.short 0

ptrTbl_80041C90:
	.word D_80041C88
	.word D_80041C88
	.word D_80041C80
	.word D_80041C80
	.word D_80041C78
	.word D_80041C78
	.word D_80041C70
	.word D_80041C68
	.word D_80041C60

/*----------------------------------------------------------------------------*/
D_80041CB4:
	.short 0x09E2
	.short 0x09E3
	.short 0x09E4
	.short 0x09E5
	.short 0x09E6
	.short 0
	.short 0
	.short 0
	.short 0x09E7
	.short 0x09E8
	.short 0x09E9
	.short 0x09EA
	.short 0
	.short 0x09EB
	.short 0
	.short 0
	.short 0x09EC
	.short 0

D_80041CD8:
	.short 0x0ACB
	.short 0x0ACC
	.short 0x0ACD
	.short 0x0ACE
	.short 0x0ACF
	.short 0
	.short 0
	.short 0
	.short 0x0AD0
	.short 0x0AD1
	.short 0x0AD2
	.short 0x0AD3
	.short 0
	.short 0x0AD4
	.short 0
	.short 0
	.short 0x0AD5
	.short 0

D_80041CFC:
	.short 0x0A5A
	.short 0x0A5B
	.short 0x0A5C
	.short 0x0A5D
	.short 0x0A5E
	.short 0
	.short 0
	.short 0
	.short 0x0A5F
	.short 0x0A60
	.short 0x0A61
	.short 0x0A62
	.short 0
	.short 0x0A63
	.short 0
	.short 0
	.short 0x0A64
	.short 0

D_80041D20:
	.short 0x0B38
	.short 0x0B39
	.short 0x0B3A
	.short 0x0B3B
	.short 0x0B3C
	.short 0
	.short 0
	.short 0
	.short 0x0B3D
	.short 0x0B3E
	.short 0x0B3F
	.short 0x0B40
	.short 0
	.short 0x0B41
	.short 0
	.short 0
	.short 0x0B42
	.short 0

D_80041D44:
	.short 0x0BB0
	.short 0x0BB1
	.short 0x0BB2
	.short 0x0BB3
	.short 0x0BB4
	.short 0
	.short 0
	.short 0
	.short 0x0BB5
	.short 0x0BB6
	.short 0x0BB7
	.short 0x0BB8
	.short 0
	.short 0x0BB9
	.short 0
	.short 0
	.short 0x0BBA
	.short 0

D_80041D68:
	.short 0x0C25
	.short 0x0C26
	.short 0x0C27
	.short 0x0C28
	.short 0x0C29
	.short 0
	.short 0
	.short 0
	.short 0x0C2A
	.short 0x0C2B
	.short 0x0C2C
	.short 0x0C2D
	.short 0
	.short 0x0C2E
	.short 0
	.short 0
	.short 0x0C2F
	.short 0

ptrTbl_80041D8C:
	.word D_80041D68
	.word D_80041D68
	.word D_80041D44
	.word D_80041D44
	.word D_80041D20
	.word D_80041D20
	.word D_80041CFC
	.word D_80041CD8
	.word D_80041CB4

/*----------------------------------------------------------------------------*/
D_80041DB0:
	.short 0x09ED
	.short 0x09EE
	.short 0
	.short 0

D_80041DB8:
	.short 0x0A65
	.short 0x0A66
	.short 0
	.short 0

D_80041DC0:
	.short 0x0AD6
	.short 0x0AD7
	.short 0
	.short 0

D_80041DC8:
	.short 0x0B43
	.short 0x0B44
	.short 0
	.short 0

D_80041DD0:
	.short 0x0BBB
	.short 0x0BBC
	.short 0
	.short 0

D_80041DD8:
	.short 0x0C30
	.short 0x0C31
	.short 0
	.short 0

ptrTbl_80041DE0:
	.word D_80041DD8
	.word D_80041DD8
	.word D_80041DD0
	.word D_80041DD0
	.word D_80041DC8
	.word D_80041DC8
	.word D_80041DB8
	.word D_80041DC0
	.word D_80041DB0

/*----------------------------------------------------------------------------*/
D_80041E04:
	.short 0
	.short 0x09A2
	.short 0x09A3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041E28:
	.short 0
	.short 0x0A8D
	.short 0x0A8E
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041E4C:
	.short 0
	.short 0x0A19
	.short 0x0A1A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041E70:
	.short 0
	.short 0x0AFC
	.short 0x0AFD
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041E94:
	.short 0
	.short 0x0B6F
	.short 0x0B70
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80041EB8:
	.short 0
	.short 0x0BE7
	.short 0x0BE8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80041EDC:
	.word D_80041EB8
	.word D_80041EB8
	.word D_80041E94
	.word D_80041E94
	.word D_80041E70
	.word D_80041E70
	.word D_80041E4C
	.word D_80041E28
	.word D_80041E04

/*----------------------------------------------------------------------------*/
D_80041F00:
	.short 0x09A4
	.short 0x09A5
	.short 0x09A6
	.short 0

D_80041F08:
	.short 0x0A8F
	.short 0x0A90
	.short 0x0A91
	.short 0

D_80041F10:
	.short 0x0A1B
	.short 0x0A1C
	.short 0x0A1D
	.short 0

D_80041F18:
	.short 0x0AFE
	.short 0x0AFF
	.short 0x0B00
	.short 0

D_80041F20:
	.short 0x0B71
	.short 0x0B72
	.short 0x0B73
	.short 0

D_80041F28:
	.short 0x0BE9
	.short 0x0BEA
	.short 0x0BEB
	.short 0

ptrTbl_80041F30:
	.word D_80041F28
	.word D_80041F28
	.word D_80041F20
	.word D_80041F20
	.word D_80041F18
	.word D_80041F18
	.word D_80041F10
	.word D_80041F08
	.word D_80041F00

/*----------------------------------------------------------------------------*/
D_80041F54:
	.short 0
	.short 0x09C3
	.short 0x09C4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09C5
	.short 0x09C6
	.short 0
	.short 0
	.short 0
	.short 0x09C7
	.short 0
	.short 0
	.short 0x09C8
	.short 0

D_80041F78:
	.short 0
	.short 0x0AAE
	.short 0x0AAF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AB0
	.short 0x0AB1
	.short 0
	.short 0
	.short 0
	.short 0x0AB2
	.short 0
	.short 0
	.short 0x0AB3
	.short 0

D_80041F9C:
	.short 0
	.short 0x0A3A
	.short 0x0A3B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A3C
	.short 0x0A3D
	.short 0
	.short 0
	.short 0
	.short 0x0A3E
	.short 0
	.short 0
	.short 0x0A3F
	.short 0

D_80041FC0:
	.short 0
	.short 0x0B1B
	.short 0x0B1C
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B1D
	.short 0x0B1E
	.short 0
	.short 0
	.short 0
	.short 0x0B1F
	.short 0
	.short 0
	.short 0x0B20
	.short 0

D_80041FE4:
	.short 0
	.short 0x0B90
	.short 0x0B91
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B92
	.short 0x0B93
	.short 0
	.short 0
	.short 0
	.short 0x0B94
	.short 0
	.short 0
	.short 0x0B95
	.short 0

D_80042008:
	.short 0
	.short 0x0C08
	.short 0x0C09
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C0A
	.short 0x0C0B
	.short 0
	.short 0
	.short 0
	.short 0x0C0C
	.short 0
	.short 0
	.short 0x0C0D
	.short 0

ptrTbl_8004202C:
	.word D_80042008
	.word D_80042008
	.word D_80041FE4
	.word D_80041FE4
	.word D_80041FC0
	.word D_80041FC0
	.word D_80041F9C
	.word D_80041F78
	.word D_80041F54

/*----------------------------------------------------------------------------*/
D_80042050:
	.short 0
	.short 0
	.short 0x09C9
	.short 0

D_80042058:
	.short 0
	.short 0
	.short 0x0AB4
	.short 0

D_80042060:
	.short 0
	.short 0
	.short 0x0A40
	.short 0

D_80042068:
	.short 0
	.short 0
	.short 0x0B21
	.short 0

D_80042070:
	.short 0
	.short 0
	.short 0x0B96
	.short 0

D_80042078:
	.short 0
	.short 0
	.short 0x0C0E
	.short 0

ptrTbl_80042080:
	.word D_80042078
	.word D_80042078
	.word D_80042070
	.word D_80042070
	.word D_80042068
	.word D_80042068
	.word D_80042060
	.word D_80042058
	.word D_80042050

/*----------------------------------------------------------------------------*/
D_800420A4:
	.short 0
	.short 0x09D1
	.short 0x09D2
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09D3
	.short 0x09D4
	.short 0
	.short 0
	.short 0
	.short 0x09D5
	.short 0
	.short 0
	.short 0x09D6
	.short 0

D_800420C8:
	.short 0
	.short 0x0A48
	.short 0x0A49
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A4A
	.short 0x0A4B
	.short 0
	.short 0
	.short 0
	.short 0x0A4C
	.short 0
	.short 0
	.short 0x0A4D
	.short 0

D_800420EC:
	.short 0
	.short 0x0ABC
	.short 0x0ABD
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0ABE
	.short 0x0ABF
	.short 0
	.short 0
	.short 0
	.short 0x0AC0
	.short 0
	.short 0
	.short 0x0AC1
	.short 0

D_80042110:
	.short 0
	.short 0x0B29
	.short 0x0B2A
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BA0
	.short 0x0BA1
	.short 0
	.short 0
	.short 0
	.short 0x0BA2
	.short 0
	.short 0
	.short 0x0BA3
	.short 0

D_80042134:
	.short 0
	.short 0x0B9E
	.short 0x0B9F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BA0
	.short 0x0BA1
	.short 0
	.short 0
	.short 0
	.short 0x0BA2
	.short 0
	.short 0
	.short 0x0BA3
	.short 0

D_80042158:
	.short 0
	.short 0x0C0F
	.short 0x0C10
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C11
	.short 0x0C12
	.short 0
	.short 0
	.short 0
	.short 0x0C13
	.short 0
	.short 0
	.short 0x0C14
	.short 0

ptrTbl_8004217C:
	.word D_80042158
	.word D_80042158
	.word D_80042134
	.word D_80042134
	.word D_80042110
	.word D_80042110
	.word D_800420C8
	.word D_800420EC
	.word D_800420A4

/*----------------------------------------------------------------------------*/
D_800421A0:
	.short 0
	.short 0x09DB
	.short 0x09DC
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09DD
	.short 0x09DE
	.short 0
	.short 0
	.short 0
	.short 0x09DF
	.short 0
	.short 0
	.short 0x09E0
	.short 0

D_800421C4:
	.short 0
	.short 0x0A53
	.short 0x0A54
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A55
	.short 0x0A56
	.short 0
	.short 0
	.short 0
	.short 0x0A57
	.short 0
	.short 0
	.short 0x0A58
	.short 0

D_800421E8:
	.short 0
	.short 0x0AC4
	.short 0x0AC5
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AC6
	.short 0x0AC7
	.short 0
	.short 0
	.short 0
	.short 0x0AC8
	.short 0
	.short 0
	.short 0x0AC9
	.short 0

D_8004220C:
	.short 0
	.short 0x0B31
	.short 0x0B32
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B33
	.short 0x0B34
	.short 0
	.short 0
	.short 0
	.short 0x0B35
	.short 0
	.short 0
	.short 0x0B36
	.short 0

D_80042230:
	.short 0
	.short 0x0BA9
	.short 0x0BAA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BAB
	.short 0x0BAC
	.short 0
	.short 0
	.short 0
	.short 0x0BAD
	.short 0
	.short 0
	.short 0x0BAE
	.short 0

D_80042254:
	.short 0
	.short 0x0C1E
	.short 0x0C1F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0C20
	.short 0x0C21
	.short 0
	.short 0
	.short 0
	.short 0x0C22
	.short 0
	.short 0
	.short 0x0C23
	.short 0

ptrTbl_80042278:
	.word D_80042254
	.word D_80042254
	.word D_80042230
	.word D_80042230
	.word D_8004220C
	.word D_8004220C
	.word D_800421C4
	.word D_800421E8
	.word D_800421A0

/*----------------------------------------------------------------------------*/
D_8004229C:
	.short 0x09E1
	.short 0
	.short 0x0BA8
	.short 0

D_800422A4:
	.short 0x0A59
	.short 0
	.short 0x0A52
	.short 0

D_800422AC:
	.short 0x0ACA
	.short 0
	.short 0x0A52
	.short 0

D_800422B4:
	.short 0x0B37
	.short 0
	.short 0x0BA8
	.short 0

D_800422BC:
	.short 0x0BAF
	.short 0
	.short 0x0BA8
	.short 0

D_800422C4:
	.short 0x0C24
	.short 0
	.short 0x0BA8
	.short 0

ptrTbl_800422CC:
	.word D_800422C4
	.word D_800422C4
	.word D_800422BC
	.word D_800422BC
	.word D_800422B4
	.word D_800422B4
	.word D_800422A4
	.word D_800422AC
	.word D_8004229C

/*----------------------------------------------------------------------------*/
D_800422F0:
	.short 0x09B2
	.short 0x09B3
	.short 0x09B4
	.short 0x09B5
	.short 0x09B6
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x09B9
	.short 0x09BA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042314:
	.short 0x0A29
	.short 0x0A2A
	.short 0x0A2B
	.short 0x0A2C
	.short 0x0A2D
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0A30
	.short 0x0A31
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042338:
	.short 0x0A9D
	.short 0x0A9E
	.short 0x0A9F
	.short 0x0AA0
	.short 0x0AA1
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0AA4
	.short 0x0AA5
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_8004235C:
	.short 0x0B0C
	.short 0x0B0D
	.short 0x0B0E
	.short 0x0B0F
	.short 0x0B10
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B13
	.short 0x0B14
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042380:
	.short 0x0B7F
	.short 0x0B80
	.short 0x0B81
	.short 0x0B82
	.short 0x0B83
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0B86
	.short 0x0B87
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800423A4:
	.short 0x0BF7
	.short 0x0BF8
	.short 0x0BF9
	.short 0x0BFA
	.short 0x0BFB
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0BFE
	.short 0x0BFF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_800423C8:
	.word D_800423A4
	.word D_800423A4
	.word D_80042380
	.word D_80042380
	.word D_8004235C
	.word D_8004235C
	.word D_80042314
	.word D_80042338
	.word D_800422F0

/*----------------------------------------------------------------------------*/
D_800423EC:
	.short 0x0DB8
	.short 0
	.short 0
	.short 0
	.short 0x0DB9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DBA
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042410:
	.short 0x0DBD
	.short 0
	.short 0
	.short 0
	.short 0x0DBE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DBF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042434:
	.short 0x0DC2
	.short 0
	.short 0
	.short 0
	.short 0x0DC3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DC4
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80042458:
	.short 0x0DC7
	.short 0
	.short 0
	.short 0
	.short 0x0DC8
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DC9
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_8004247C:
	.short 0x0DCC
	.short 0
	.short 0
	.short 0
	.short 0x0DCD
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DCE
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_800424A0:
	.short 0x0DD1
	.short 0
	.short 0
	.short 0
	.short 0x0DD2
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0DD3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_800424C4:
	.word D_800424A0
	.word D_800424A0
	.word D_8004247C
	.word D_8004247C
	.word D_80042458
	.word D_80042458
	.word D_80042410
	.word D_80042434
	.word D_800423EC

/*----------------------------------------------------------------------------*/
# Skirt model file IDs

# (body type 9)
D_800424E8:
	.short 0x0DBB
	.short 0x0DBC
	.short 0
	.short 0

# (body type 8)
D_800424F0:
	.short 0x0DC0
	.short 0x0DC1
	.short 0
	.short 0

# (body type 7)
D_800424F8:
	.short 0x0DC5
	.short 0x0DC6
	.short 0
	.short 0

# (body type 5 and 6)
D_80042500:
	.short 0x0DCA
	.short 0x0DCB
	.short 0
	.short 0

# (body type 3 and 4)
D_80042508:
	.short 0x0DCF
	.short 0x0DD0
	.short 0
	.short 0

# (body type 1 and 2)
D_80042510:
	.short 0x0DD4
	.short 0x0DD5
	.short 0
	.short 0

ptrTbl_80042518:
	.word D_80042510
	.word D_80042510
	.word D_80042508
	.word D_80042508
	.word D_80042500
	.word D_80042500
	.word D_800424F0
	.word D_800424F8
	.word D_800424E8

/*----------------------------------------------------------------------------*/
D_8004253C:
	.short 0x0DD6
	.short 0x0DE1
	.short 0x0DE2
	.short 0x0DD7
	.short 0x0DD8
	.short 0
	.short 0
	.short 0
	.short 0x0DD9
	.short 0x0DDA
	.short 0x0DDB
	.short 0x0DDC
	.short 0
	.short 0x0DDD
	.short 0
	.short 0
	.short 0x0DDE
	.short 0

D_80042560:
	.short 0x0DE3
	.short 0x0DEE
	.short 0x0DEF
	.short 0x0DE4
	.short 0x0DE5
	.short 0
	.short 0
	.short 0
	.short 0x0DE6
	.short 0x0DE7
	.short 0x0DE8
	.short 0x0DE9
	.short 0
	.short 0x0DEA
	.short 0
	.short 0
	.short 0x0DEB
	.short 0

D_80042584:
	.short 0x0DF0
	.short 0x0DFB
	.short 0x0DFC
	.short 0x0DF1
	.short 0x0DF2
	.short 0
	.short 0
	.short 0
	.short 0x0DF3
	.short 0x0DF4
	.short 0x0DF5
	.short 0x0DF6
	.short 0
	.short 0x0DF7
	.short 0
	.short 0
	.short 0x0DF8
	.short 0

D_800425A8:
	.short 0x0DFD
	.short 0x0E08
	.short 0x0E09
	.short 0x0DFE
	.short 0x0DFF
	.short 0
	.short 0
	.short 0
	.short 0x0E00
	.short 0x0E01
	.short 0x0E02
	.short 0x0E03
	.short 0
	.short 0x0E04
	.short 0
	.short 0
	.short 0x0E05
	.short 0

D_800425CC:
	.short 0x0E0A
	.short 0x0E15
	.short 0x0E16
	.short 0x0E0B
	.short 0x0E0C
	.short 0
	.short 0
	.short 0
	.short 0x0E0D
	.short 0x0E0E
	.short 0x0E0F
	.short 0x0E10
	.short 0
	.short 0x0E11
	.short 0
	.short 0
	.short 0x0E12
	.short 0

D_800425F0:
	.short 0x0E17
	.short 0x0E22
	.short 0x0E23
	.short 0x0E18
	.short 0x0E19
	.short 0
	.short 0
	.short 0
	.short 0x0E1A
	.short 0x0E1B
	.short 0x0E1C
	.short 0x0E1D
	.short 0
	.short 0x0E1E
	.short 0
	.short 0
	.short 0x0E1F
	.short 0

ptrTbl_80042614:
	.word D_800425F0
	.word D_800425F0
	.word D_800425CC
	.word D_800425CC
	.word D_800425A8
	.word D_800425A8
	.word D_80042560
	.word D_80042584
	.word D_8004253C

/*----------------------------------------------------------------------------*/
D_80042638:
	.short 0x0DDF
	.short 0x0DE0
	.short 0
	.short 0

D_80042640:
	.short 0x0DEC
	.short 0x0DED
	.short 0
	.short 0

D_80042648:
	.short 0x0DF9
	.short 0x0DFA
	.short 0
	.short 0

D_80042650:
	.short 0x0E06
	.short 0x0E07
	.short 0
	.short 0

D_80042658:
	.short 0x0E13
	.short 0x0E14
	.short 0
	.short 0

D_80042660:
	.short 0x0E20
	.short 0x0E21
	.short 0
	.short 0

ptrTbl_80042668:
	.word D_80042660
	.word D_80042660
	.word D_80042658
	.word D_80042658
	.word D_80042650
	.word D_80042650
	.word D_80042640
	.word D_80042648
	.word D_80042638

/*----------------------------------------------------------------------------*/
# "Extra Model" definitions (e.g. T-Shirt overhang)

# data format:
# 0x00 - ?
# 0x01 - Z displacement
# 0x02 - texture file ID

# RingAttire_F3
D_8004268C:
	.byte 0xE9, 0x9E
	.short 0x10D1
	.byte 0xEE, 0xE9
	.short 0x10D3
	.short 0,0

# RingAttire_F4
D_80042698:
	.byte 0xE9, 0x9E
	.short 0x10D9
	.byte 0xEE, 0xE9
	.short 0x10DB
	.short 0,0

# RingAttire_F5
D_800426A4:
	.byte 0xE9, 0x9E
	.short 0x10E1
	.byte 0xEE, 0xE9
	.short 0x10E3
	.short 0,0

# UpperBody_B9
D_800426B0:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11C5

# UpperBody_B10
D_800426BC:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11CD

# UpperBody_B11
D_800426C8:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11D5

# UpperBody_B12
D_800426D4:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11DD

# UpperBody_B13
D_800426E0:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11E5

# UpperBody_B14
D_800426EC:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x11ED

# UpperBody_B17
D_800426F8:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1201

# UpperBody_C3
D_80042704:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1237

# UpperBody_C5
D_80042710:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1249

# UpperBody_B22
D_8004271C:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x126F

# UpperBody_B26
D_80042728:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1277

# UpperBody_B4
D_80042734:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x127D

# UpperBody_B2
D_80042740:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1283

# UpperBody_B23
D_8004274C:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x128F

# UpperBody_B24
D_80042758:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1297

# UpperBody_B25
D_80042764:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x129F

# Entrance_B1
D_80042770:
	.byte 0x99, 0xEF
	.short 0x14D5
	.byte 0x9A, 0xF9
	.short 0x14D7
	.short 0,0

# Entrance_B2
D_8004277C:
	.byte 0x99, 0xEF
	.short 0x14EF
	.byte 0x9A, 0xF9
	.short 0x14F1
	.short 0,0

# Entrance_B3
D_80042788:
	.byte 0x99, 0xEF
	.short 0x1501
	.byte 0x9A, 0xF9
	.short 0x1503
	.short 0,0

# Entrance_D8
D_80042794:
	.byte 0x99, 0xE4
	.short 0x150D
	.byte 0x99, 0xE4
	.short 0x150F
	.byte 0x79, 0xE4
	.short 0x1511

D_800427A0:
	.byte 0x0A, 0xF5
	.short 0x151F
	.byte 0x9A, 0xF9
	.short 0x1521
	.short 0,0

D_800427AC:
	.byte 0x0A, 0xF5
	.short 0x152F
	.byte 0x9A, 0xF9
	.short 0x1531
	.short 0,0

D_800427B8:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1541

D_800427C4:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x154D

D_800427D0:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1553

D_800427DC:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x155B

D_800427E8:
	.short 0,0
	.short 0,0
	.byte 0xC4, 0x04
	.short 0x1563

D_800427F4:
	.byte 0x0A, 0xF5
	.short 0x1575
	.byte 0x9A, 0xF9
	.short 0x1577
	.short 0,0

D_80042800:
	.short 0,0
	.short 0,0
	.byte 0x09, 0xE5
	.short 0x1585

D_8004280C:
	.short 0,0
	.short 0,0
	.byte 0x09, 0xE5
	.short 0x158F

D_80042818:
	.byte 0xE9, 0x9E
	.short 0x1593
	.byte 0xEE, 0xE9
	.short 0x1595
	.short 0,0

D_80042824:
	.byte 0xB9, 0xE5
	.short 0x15A3
	.short 0,0
	.byte 0xE0, 0x01
	.short 0x15A5

D_80042830:
	.byte 0x90, 0x01
	.short 0x15B5
	.byte 0x60, 0x01
	.short 0x15B7
	.short 0,0

D_8004283C:
	.byte 0x0E, 0x4D
	.short 0x0E4C
	.byte 0, 0
	.short 0x11

	.byte 0x0E, 0x4F
	.short 0x0E4E
	.byte 0, 0
	.short 0x11

ptrTbl_8004284C:
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C
	.word D_8004283C

# Entrance_B4
D_80042870:
	.byte 0x99, 0xEF
	.short 0x15CB
	.byte 0x9A, 0xF9
	.short 0x15CD
	.byte 0xE0, 0x01
	.short 0x15CF

# "Extra model textures"
ptrTbl_ExtraModelTextures:
	.word 0
	.word D_8004268C
	.word D_80042698
	.word D_800426A4
	.word D_800426B0
	.word D_800426BC
	.word D_800426C8
	.word D_800426D4
	.word D_800426E0
	.word D_800426EC
	.word D_800426F8
	.word D_80042704
	.word D_80042710
	.word D_8004271C
	.word D_80042728
	.word D_80042734
	.word D_80042740
	.word D_8004274C
	.word D_80042758
	.word D_80042764
	.word D_80042770
	.word D_8004277C
	.word D_80042788
	.word D_80042794
	.word D_800427A0
	.word D_800427AC
	.word D_800427B8
	.word D_800427C4
	.word D_800427D0
	.word D_800427DC
	.word D_800427E8
	.word D_800427F4
	.word D_80042800
	.word D_8004280C
	.word D_80042818
	.word D_80042824
	.word D_80042830
	.word D_80042870

# "Extra model polygons"
ptrTbl_ExtraModelModels:
	.word 0
	.word ptrTbl_80042518
	.word ptrTbl_80042518
	.word ptrTbl_80042518
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_800413BC
	.word ptrTbl_80042080
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041608
	.word ptrTbl_80041608
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041AA0
	.word ptrTbl_80041AA0
	.word ptrTbl_80041AA0
	.word ptrTbl_80041F30
	.word ptrTbl_80042668
	.word ptrTbl_80041DE0
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80041608
	.word ptrTbl_80041950
	.word ptrTbl_80041950
	.word ptrTbl_80042668
	.word ptrTbl_80041C90
	.word ptrTbl_80041C90
	.word ptrTbl_80042518
	.word ptrTbl_800422CC
	.word ptrTbl_8004284C
	.word ptrTbl_80041B40

/*----------------------------------------------------------------------------*/
# (Body Type Models and Textures begin here)

D_800429AC:
	.short 0x098D
	.short 0x098E
	.short 0x098F
	.short 0x0990
	.short 0x0991
	.short 0x0992
	.short 0x0993
	.short 0x0994
	.short 0x0995
	.short 0x0996
	.short 0x0997
	.short 0x0998
	.short 0x0999
	.short 0x099A
	.short 0x099B
	.short 0x099C
	.short 0x099D
	.short 0x0000

D_800429D0:
	.short 0x0000
	.short 0x098C
	.short 0x098B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800429F4:
	.short 0x097A
	.short 0x097B
	.short 0x097C
	.short 0x097D
	.short 0x097E
	.short 0x097F
	.short 0x0980
	.short 0x0981
	.short 0x0982
	.short 0x0983
	.short 0x0984
	.short 0x0985
	.short 0x0986
	.short 0x0987
	.short 0x0988
	.short 0x0989
	.short 0x098A
	.short 0x0000

D_80042A18:
	.short 0x0000
	.short 0x0979
	.short 0x0978
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042A3C:
	.short 0x0967
	.short 0x0968
	.short 0x0969
	.short 0x096A
	.short 0x096B
	.short 0x096C
	.short 0x096D
	.short 0x096E
	.short 0x096F
	.short 0x0970
	.short 0x0971
	.short 0x0972
	.short 0x0973
	.short 0x0974
	.short 0x0975
	.short 0x0976
	.short 0x0977
	.short 0x0000

D_80042A60:
	.short 0x0000
	.short 0x0966
	.short 0x0965
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042A84:
	.short 0x0941
	.short 0x0942
	.short 0x0943
	.short 0x0944
	.short 0x0945
	.short 0x0946
	.short 0x0947
	.short 0x0948
	.short 0x0949
	.short 0x094A
	.short 0x094B
	.short 0x094C
	.short 0x094D
	.short 0x094E
	.short 0x094F
	.short 0x0950
	.short 0x0951
	.short 0x0000

D_80042AA8:
	.short 0x0000
	.short 0x0940
	.short 0x093F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042ACC:
	.short 0x0954
	.short 0x0955
	.short 0x0956
	.short 0x0957
	.short 0x0958
	.short 0x0959
	.short 0x095A
	.short 0x095B
	.short 0x095C
	.short 0x095D
	.short 0x095E
	.short 0x095F
	.short 0x0960
	.short 0x0961
	.short 0x0962
	.short 0x0963
	.short 0x0964
	.short 0x0000

D_80042AF0:
	.short 0x0000
	.short 0x0953
	.short 0x0952
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042B14:
	.short 0x092E
	.short 0x092F
	.short 0x0930
	.short 0x0931
	.short 0x0932
	.short 0x0933
	.short 0x0934
	.short 0x0935
	.short 0x0936
	.short 0x0937
	.short 0x0938
	.short 0x0939
	.short 0x093A
	.short 0x093B
	.short 0x093C
	.short 0x093D
	.short 0x093E
	.short 0x0000

D_80042B38:
	.short 0x0000
	.short 0x092D
	.short 0x092C
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

/*----------------------------------------------*/
D_80042B5C:
	.short 0x0E9F
	.short 0x0E57
	.short 0x0E55
	.short 0x0E5F
	.short 0x0E5D
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E5B
	.short 0x0E59
	.short 0x0E5F
	.short 0x0E5D
	.short 0x1303
	.short 0x0E5B
	.short 0x1A32
	.short 0x1A34
	.short 0x0E59
	.short 0x0000

D_80042B80:
	.short 0x0E9F
	.short 0x0E63
	.short 0x0E61
	.short 0x0E97
	.short 0x0E6D
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E67
	.short 0x0E65
	.short 0x0E97
	.short 0x0E6D
	.short 0x1303
	.short 0x0E67
	.short 0x1A32
	.short 0x1A34
	.short 0x0E65
	.short 0x0000

D_80042BA4:
	.short 0x0E9F
	.short 0x0E71
	.short 0x0E6F
	.short 0x0E97
	.short 0x0E7B
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E75
	.short 0x0E73
	.short 0x0E97
	.short 0x0E7B
	.short 0x1303
	.short 0x0E75
	.short 0x1A32
	.short 0x1A34
	.short 0x0E73
	.short 0x0000

D_80042BC8:
	.short 0x0E9F
	.short 0x0E81
	.short 0x0E7F
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

D_80042BEC:
	.short 0x0E9F
	.short 0x0E8B
	.short 0x0E89
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

D_80042C10:
	.short 0x0E9F
	.short 0x0E8B
	.short 0x0E89
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

D_80042C34:
	.short 0x0E9F
	.short 0x0E85
	.short 0x0E83
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

D_80042C58:
	.short 0x0E9F
	.short 0x0E85
	.short 0x0E83
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

D_80042C7C:
	.short 0x0E9F
	.short 0x0E85
	.short 0x0E83
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8F
	.short 0x0E8D
	.short 0x0E97
	.short 0x0E95
	.short 0x1303
	.short 0x0E8F
	.short 0x1A32
	.short 0x1A34
	.short 0x0E8D
	.short 0x0000

/*----------------------------------------------------------------------------*/
	.short 0x0000
	.short 0x0000
	.short 0x0E87
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042CC4:
	.byte 0,0,1,1,1,1,2,2,0,1,1,0

/*----------------------------------------------------------------------------*/
# Body type model pointers
ptrTbl_BodyType_Models:
	.word D_800429AC
	.word D_800429AC
	.word D_800429F4
	.word D_800429F4
	.word D_80042A3C
	.word D_80042A3C
	.word D_80042A84
	.word D_80042ACC
	.word D_80042B14

ptrTbl_80042CF4:
	.word D_800429D0
	.word D_800429D0
	.word D_80042A18
	.word D_80042A18
	.word D_80042A60
	.word D_80042A60
	.word D_80042AA8
	.word D_80042AF0
	.word D_80042B38

# Body type texture pointers
ptrTbl_BodyType_Textures:
	.word D_80042C10
	.word D_80042C7C
	.word D_80042BEC
	.word D_80042C58
	.word D_80042BC8
	.word D_80042C34
	.word D_80042B80
	.word D_80042BA4
	.word D_80042B5C

/*----------------------------------------------------------------------------*/
# Ring Attire A1 textures
D_80042D3C:
	.short 0x0EA1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042D60:
	.short 0x0EA3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EA5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EA5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042D84:
	.short 0x0EA7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042DA8:
	.short 0x0EA9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042DCC:
	.short 0x0EAB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042DF0:
	.short 0x0EAD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042E14:
	.short 0x0EAF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042E38:
	.short 0x0EB1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042E5C:
	.short 0x0EB3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042E80:
	.short 0x0EB5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042EA4:
	.short 0x0EB7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042EC8:
	.short 0x0EB9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042EEC:
	.short 0x0EBB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042F10:
	.short 0x0EBD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042F34:
	.short 0x0EBF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042F58:
	.short 0x0EC1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042F7C:
	.short 0x0EC3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042FA0:
	.short 0x0EC5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EC7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EC7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042FC4:
	.short 0x0EC9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ECB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ECB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80042FE8:
	.short 0x0ECD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ECF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ECF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004300C:
	.short 0x0ED1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ED3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ED3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043030:
	.short 0x0ED5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ED7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0ED7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043054:
	.short 0x0ED9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EDB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EDB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043078:
	.short 0x0EDD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EDF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EE1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004309C:
	.short 0x0EE3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EE5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EE5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800430C0:
	.short 0x0EE7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EE9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EE9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800430E4:
	.short 0x0EEB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EED
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EEF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043108:
	.short 0x0EF1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EF3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EF3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004312C:
	.short 0x0EF5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EF7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EF7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043150:
	.short 0x0EF9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EFB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EFB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043174:
	.short 0x0EFD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EFF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0EFF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043198:
	.short 0x0F01
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F03
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F03
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800431BC:
	.short 0x0F05
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F07
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F07
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800431E0:
	.short 0x0F09
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F0B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F0B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043204:
	.short 0x0F0D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F0F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F0F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043228:
	.short 0x0F11
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F13
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F13
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004324C:
	.short 0x0F15
	.short 0x0000
	.short 0x0000
	.short 0x0F19
	.short 0x0F17
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F19
	.short 0x0F17
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043270:
	.short 0x0F1B
	.short 0x0000
	.short 0x0000
	.short 0x0F1F
	.short 0x0F1D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F1F
	.short 0x0F1D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043294:
	.short 0x0F21
	.short 0x0000
	.short 0x0000
	.short 0x0F25
	.short 0x0F23
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F25
	.short 0x0F23
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800432B8:
	.short 0x0F27
	.short 0x0000
	.short 0x0000
	.short 0x0F2B
	.short 0x0F29
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F2B
	.short 0x0F29
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800432DC:
	.short 0x0F2D
	.short 0x0000
	.short 0x0000
	.short 0x0F31
	.short 0x0F2F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F31
	.short 0x0F2F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043300:
	.short 0x0F33
	.short 0x0000
	.short 0x0000
	.short 0x0F37
	.short 0x0F35
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F37
	.short 0x0F39
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043324:
	.short 0x0F3B
	.short 0x0000
	.short 0x0000
	.short 0x0F3F
	.short 0x0F3D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F3F
	.short 0x0F3D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043348:
	.short 0x0F41
	.short 0x0000
	.short 0x0000
	.short 0x0F45
	.short 0x0F43
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F45
	.short 0x0F43
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004336C:
	.short 0x0F47
	.short 0x0000
	.short 0x0000
	.short 0x0F4B
	.short 0x0F49
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F4B
	.short 0x0F49
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043390:
	.short 0x0F4D
	.short 0x0000
	.short 0x0000
	.short 0x0F51
	.short 0x0F4F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F51
	.short 0x0F4F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800433B4:
	.short 0x0F53
	.short 0x0000
	.short 0x0000
	.short 0x0F57
	.short 0x0F55
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F57
	.short 0x0F55
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800433D8:
	.short 0x0F59
	.short 0x0000
	.short 0x0000
	.short 0x0F5D
	.short 0x0F5B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F5D
	.short 0x0F5B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800433FC:
	.short 0x0F5F
	.short 0x0000
	.short 0x0000
	.short 0x0F63
	.short 0x0F61
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F67
	.short 0x0F65
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043420:
	.short 0x0F69
	.short 0x0000
	.short 0x0000
	.short 0x0F6D
	.short 0x0F6B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F6D
	.short 0x0F6B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043444:
	.short 0x0F6F
	.short 0x0000
	.short 0x0000
	.short 0x0F73
	.short 0x0F71
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F73
	.short 0x0F71
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043468:
	.short 0x0F75
	.short 0x0000
	.short 0x0000
	.short 0x0F79
	.short 0x0F77
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F79
	.short 0x0F77
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004348C:
	.short 0x0F7B
	.short 0x0000
	.short 0x0000
	.short 0x0F7F
	.short 0x0F7D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F7F
	.short 0x0F7D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800434B0:
	.short 0x0F81
	.short 0x0000
	.short 0x0000
	.short 0x0F85
	.short 0x0F83
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F85
	.short 0x0F83
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800434D4:
	.short 0x0F87
	.short 0x0000
	.short 0x0000
	.short 0x0F8B
	.short 0x0F89
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F8B
	.short 0x0F89
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800434F8:
	.short 0x0F8D
	.short 0x0000
	.short 0x0000
	.short 0x0F91
	.short 0x0F8F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F91
	.short 0x0F8F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004351C:
	.short 0x0F93
	.short 0x0000
	.short 0x0000
	.short 0x0F97
	.short 0x0F95
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F97
	.short 0x0F95
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043540:
	.short 0x0F99
	.short 0x0000
	.short 0x0000
	.short 0x0F9D
	.short 0x0F9B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0F9D
	.short 0x0F9B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043564:
	.short 0x0F9F
	.short 0x0000
	.short 0x0000
	.short 0x0FA3
	.short 0x0FA1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FA3
	.short 0x0FA1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043588:
	.short 0x0FA5
	.short 0x0000
	.short 0x0000
	.short 0x0FA9
	.short 0x0FA7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FA9
	.short 0x0FA7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800435AC:
	.short 0x0FAB
	.short 0x0000
	.short 0x0000
	.short 0x0FAF
	.short 0x0FAD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FAF
	.short 0x0FAD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800435D0:
	.short 0x0FB1
	.short 0x0000
	.short 0x0000
	.short 0x0FB5
	.short 0x0FB3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FB5
	.short 0x0FB3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800435F4:
	.short 0x0FB7
	.short 0x0000
	.short 0x0000
	.short 0x0FBB
	.short 0x0FB9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FBF
	.short 0x0FBD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043618:
	.short 0x0FC1
	.short 0x0000
	.short 0x0000
	.short 0x0FC5
	.short 0x0FC3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FC5
	.short 0x0FC3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004363C:
	.short 0x0FC7
	.short 0x0000
	.short 0x0000
	.short 0x0FCB
	.short 0x0FC9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FCB
	.short 0x0FC9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043660:
	.short 0x0FCD
	.short 0x0000
	.short 0x0000
	.short 0x0FD1
	.short 0x0FCF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FD1
	.short 0x0FCF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043684:
	.short 0x0FD3
	.short 0x0000
	.short 0x0000
	.short 0x0FD7
	.short 0x0FD5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FD7
	.short 0x0FD5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800436A8:
	.short 0x0FD9
	.short 0x0000
	.short 0x0000
	.short 0x0FDD
	.short 0x0FDB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FDD
	.short 0x0FDB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800436CC:
	.short 0x0FDF
	.short 0x0000
	.short 0x0000
	.short 0x0FE3
	.short 0x0FE1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FE3
	.short 0x0FE1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800436F0:
	.short 0x0FE5
	.short 0x0000
	.short 0x0000
	.short 0x0FE9
	.short 0x0FE7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FE9
	.short 0x0FE7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043714:
	.short 0x0FEB
	.short 0x0000
	.short 0x0000
	.short 0x0FEF
	.short 0x0FED
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FEF
	.short 0x0FED
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043738:
	.short 0x0FF1
	.short 0x0000
	.short 0x0000
	.short 0x0FF5
	.short 0x0FF3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FF5
	.short 0x0FF3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004375C:
	.short 0x0FF7
	.short 0x0000
	.short 0x0000
	.short 0x0FFB
	.short 0x0FF9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0FFB
	.short 0x0FF9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043780:
	.short 0x0FFD
	.short 0x0000
	.short 0x0000
	.short 0x1001
	.short 0x0FFF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1001
	.short 0x0FFF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800437A4:
	.short 0x1003
	.short 0x0000
	.short 0x0000
	.short 0x1007
	.short 0x1005
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1007
	.short 0x1005
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800437C8:
	.short 0x1009
	.short 0x0000
	.short 0x0000
	.short 0x100D
	.short 0x100B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x100D
	.short 0x100B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800437EC:
	.short 0x100F
	.short 0x0000
	.short 0x0000
	.short 0x1013
	.short 0x1011
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1013
	.short 0x1011
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043810:
	.short 0x1015
	.short 0x0000
	.short 0x0000
	.short 0x1019
	.short 0x1017
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1019
	.short 0x1017
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043834:
	.short 0x101B
	.short 0x0000
	.short 0x0000
	.short 0x101F
	.short 0x101D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x101F
	.short 0x101D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043858:
	.short 0x1021
	.short 0x0000
	.short 0x0000
	.short 0x1025
	.short 0x1023
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1025
	.short 0x1023
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004387C:
	.short 0x1027
	.short 0x0000
	.short 0x0000
	.short 0x102B
	.short 0x1029
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x102B
	.short 0x1029
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800438A0:
	.short 0x102D
	.short 0x0000
	.short 0x0000
	.short 0x1031
	.short 0x102F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1031
	.short 0x1033
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800438C4:
	.short 0x1035
	.short 0x0000
	.short 0x0000
	.short 0x1039
	.short 0x1037
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1039
	.short 0x1037
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800438E8:
	.short 0x103B
	.short 0x0000
	.short 0x0000
	.short 0x103F
	.short 0x103D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x103F
	.short 0x103D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004390C:
	.short 0x1041
	.short 0x0000
	.short 0x0000
	.short 0x1045
	.short 0x1043
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1049
	.short 0x1047
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043930:
	.short 0x104B
	.short 0x0000
	.short 0x0000
	.short 0x104F
	.short 0x104D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x104F
	.short 0x1051
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043954:
	.short 0x1053
	.short 0x0000
	.short 0x0000
	.short 0x1057
	.short 0x1055
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1057
	.short 0x1055
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043978:
	.short 0x1059
	.short 0x0000
	.short 0x0000
	.short 0x105D
	.short 0x105B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x105D
	.short 0x105B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004399C:
	.short 0x105F
	.short 0x0000
	.short 0x0000
	.short 0x1063
	.short 0x1061
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1063
	.short 0x1061
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800439C0:
	.short 0x1065
	.short 0x0000
	.short 0x0000
	.short 0x1069
	.short 0x1067
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1069
	.short 0x1067
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800439E4:
	.short 0x106B
	.short 0x0000
	.short 0x0000
	.short 0x106F
	.short 0x106D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x106F
	.short 0x106D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043A08:
	.short 0x1071
	.short 0x0000
	.short 0x0000
	.short 0x1075
	.short 0x1073
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1075
	.short 0x1073
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043A2C:
	.short 0x1077
	.short 0x0000
	.short 0x0000
	.short 0x107B
	.short 0x1079
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x107B
	.short 0x1079
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043A50:
	.short 0x107D
	.short 0x0000
	.short 0x0000
	.short 0x1081
	.short 0x107F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1081
	.short 0x107F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043A74:
	.short 0x1083
	.short 0x0000
	.short 0x0000
	.short 0x1087
	.short 0x1085
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1087
	.short 0x1085
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043A98:
	.short 0x1089
	.short 0x0000
	.short 0x0000
	.short 0x108D
	.short 0x108B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x108D
	.short 0x108B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043ABC:
	.short 0x1093
	.short 0x1091
	.short 0x108F
	.short 0x0000
	.short 0x1095
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1095
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043AE0:
	.short 0x109B
	.short 0x1099
	.short 0x1097
	.short 0x0000
	.short 0x109D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x109D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043B04:
	.short 0x10A3
	.short 0x10A1
	.short 0x109F
	.short 0x0000
	.short 0x10A5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10A5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043B28:
	.short 0x10AB
	.short 0x10A9
	.short 0x10A7
	.short 0x0000
	.short 0x10AD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10AD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043B4C:
	.short 0x10B3
	.short 0x10B1
	.short 0x10AF
	.short 0x0000
	.short 0x10B5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10B5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043B70:
	.short 0x10BB
	.short 0x10B9
	.short 0x10B7
	.short 0x0000
	.short 0x10BD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10BD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043B94:
	.short 0x10C3
	.short 0x10C1
	.short 0x10BF
	.short 0x0000
	.short 0x10C5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10C5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043BB8:
	.short 0x10C7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10C9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10C9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043BDC:
	.short 0x10CB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10CD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10CD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043C00:
	.short 0x10CF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0001

D_80043C24:
	.short 0x10D7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0002

D_80043C48:
	.short 0x10DF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0003

D_80043C6C:
	.short 0x10E9
	.short 0x10E7
	.short 0x10E5
	.short 0x10F1
	.short 0x10EF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10ED
	.short 0x10EB
	.short 0x10F1
	.short 0x10EF
	.short 0x0000
	.short 0x10ED
	.short 0x0000
	.short 0x0000
	.short 0x10EB
	.short 0x0000

D_80043C90:
	.short 0x10F7
	.short 0x10F5
	.short 0x10F3
	.short 0x10FF
	.short 0x10FD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x10FB
	.short 0x10F9
	.short 0x10FF
	.short 0x10FD
	.short 0x0000
	.short 0x10FB
	.short 0x0000
	.short 0x0000
	.short 0x10F9
	.short 0x0000

D_80043CB4:
	.short 0x1105
	.short 0x1103
	.short 0x1101
	.short 0x110D
	.short 0x110B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1109
	.short 0x1107
	.short 0x110D
	.short 0x110B
	.short 0x0000
	.short 0x1109
	.short 0x0000
	.short 0x0000
	.short 0x1107
	.short 0x0000

D_80043CD8:
	.short 0x1113
	.short 0x1111
	.short 0x110F
	.short 0x111B
	.short 0x1119
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1117
	.short 0x1115
	.short 0x111B
	.short 0x1119
	.short 0x0000
	.short 0x1117
	.short 0x0000
	.short 0x0000
	.short 0x1115
	.short 0x0000

D_80043CFC:
	.short 0x1121
	.short 0x111F
	.short 0x111D
	.short 0x1125
	.short 0x1123
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1125
	.short 0x1123
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043D20:
	.short 0x1127
	.short 0x0000
	.short 0x0000
	.short 0x112B
	.short 0x1129
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x112B
	.short 0x112D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043D44:
	.short 0x1133
	.short 0x1131
	.short 0x112F
	.short 0x113B
	.short 0x1139
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1137
	.short 0x1135
	.short 0x1143
	.short 0x1141
	.short 0x0000
	.short 0x113F
	.short 0x0000
	.short 0x0000
	.short 0x113D
	.short 0x0000

D_80043D68:
	.short 0x1145
	.short 0x0000
	.short 0x0000
	.short 0x1149
	.short 0x1147
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1149
	.short 0x114B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043D8C:
	.short 0x114D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x114F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x114F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043DB0:
	.short 0x1151
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1153
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1155
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043DD4:
	.short 0x1157
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1159
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x115B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043DF8:
	.short 0x115D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x115F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1161
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80043E1C:
	.short 0x1167
	.short 0x1165
	.short 0x1163
	.short 0x116F
	.short 0x116D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x116B
	.short 0x1169
	.short 0x116F
	.short 0x116D
	.short 0x0000
	.short 0x116B
	.short 0x0000
	.short 0x0000
	.short 0x1169
	.short 0x0000

/*----------------------------------------------------------------------------*/
# 80043E40 (Z64 0x44A40; data01 bin offset: 0x9AFC): ring attire default colors

tbl_RingAttire_DefaultColors:
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x03, 0x02
	.byte 0x04, 0x07
	.byte 0x03, 0x04
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x02, 0x03
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x02, 0x03
	.byte 0x01, 0x01
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x03, 0x06
	.byte 0x06, 0x01
	.byte 0x06, 0x01
	.byte 0x01, 0x06
	.byte 0x01, 0x02
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x01, 0x01
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x06, 0x02
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x01, 0x02
	.byte 0x00, 0x00
	.byte 0x03, 0x02
	.byte 0x06, 0x01
	.byte 0x03, 0x06
	.byte 0x03, 0x02
	.byte 0x01, 0x06
	.byte 0x01, 0x01
	.byte 0x01, 0x06
	.byte 0x02, 0x01
	.byte 0x02, 0x01
	.byte 0x03, 0x02
	.byte 0x03, 0x02
	.byte 0x06, 0x01
	.byte 0x01, 0x02
	.byte 0x01, 0x02
	.byte 0x02, 0x01
	.byte 0x03, 0x03
	.byte 0x02, 0x06
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x03, 0x03
	.byte 0x00, 0x00
	.byte 0x03, 0x06
	.byte 0x06, 0x01
	.byte 0x06, 0x01
	.byte 0x00, 0x00
	.byte 0x04, 0x07
	.byte 0x01, 0x02
	.byte 0x06, 0x01
	.byte 0x06, 0x03
	.byte 0x04, 0x02
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x04, 0x01
	.byte 0x0A, 0x0A
	.byte 0x04, 0x02
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x03, 0x06
	.byte 0x06, 0x03
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x04, 0x03
	.byte 0x03, 0x02
	.byte 0x00, 0x00
	.byte 0x04, 0x02
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x01, 0x03
	.byte 0x00, 0x01
	.byte 0x00, 0x00
	.byte 0x00, 0x00
	.byte 0x06, 0x01
	.byte 0x06, 0x01
	.byte 0x04, 0x02
	.byte 0x06, 0x01
	.byte 0x00, 0x00
	.byte 0x00, 0x00

/*----------------------------------------------------------------------------*/
D_80043F34:
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

ptrTbl_80043F58:
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34
	.word D_80043F34

/*----------------------------------------------------------------------------*/
# 80043F7C - Ring attire model pointers

ptrTbl_RingAttireModels:
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80040D80
	.word ptrTbl_80040A8C
	.word ptrTbl_80040D80
	.word ptrTbl_80040A8C
	.word ptrTbl_80043F58
	.word ptrTbl_80040A8C
	.word ptrTbl_80043F58
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80040B88
	.word ptrTbl_80040B88
	.word ptrTbl_80040A8C
	.word ptrTbl_80040A8C
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80040990
	.word ptrTbl_80040990
	.word ptrTbl_800424C4
	.word ptrTbl_800424C4
	.word ptrTbl_800424C4
	.word ptrTbl_80041170
	.word ptrTbl_80041170
	.word ptrTbl_80041170
	.word ptrTbl_80040C84
	.word ptrTbl_800423C8
	.word ptrTbl_80040A8C
	.word ptrTbl_80040C84
	.word ptrTbl_80040A8C
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58
	.word ptrTbl_80043F58

/*----------------------------------------------------------------------------*/
# 80044160: Ring Attire Texture Pointers

ptrTbl_RingAttireTextures:
	.word D_80042D3C
	.word D_80042D60
	.word D_80042D84
	.word D_80042DA8
	.word D_80042DCC
	.word D_80042DF0
	.word D_80042E14
	.word D_80042E38
	.word D_80042E5C
	.word D_80042E80
	.word D_80042EA4
	.word D_80042EC8
	.word D_80042EEC
	.word D_80042F10
	.word D_80042F34
	.word D_80042F58
	.word D_80042F7C
	.word D_80042FA0
	.word D_80042FC4
	.word D_80042FE8
	.word D_8004300C
	.word D_80043030
	.word D_80043054
	.word D_80043078
	.word D_8004309C
	.word D_800430C0
	.word D_800430E4
	.word D_80043108
	.word D_8004312C
	.word D_80043150
	.word D_80043174
	.word D_80043198
	.word D_800431BC
	.word D_800431E0
	.word D_80043204
	.word D_80043228
	.word D_8004324C
	.word D_80043270
	.word D_80043294
	.word D_800432B8
	.word D_800432DC
	.word D_80043300
	.word D_80043324
	.word D_80043348
	.word D_8004336C
	.word D_80043390
	.word D_800433B4
	.word D_800433D8
	.word D_800433FC
	.word D_80043420
	.word D_80043444
	.word D_80043468
	.word D_8004348C
	.word D_800434B0
	.word D_800434D4
	.word D_800434F8
	.word D_8004351C
	.word D_80043540
	.word D_80043564
	.word D_80043588
	.word D_800435AC
	.word D_800435D0
	.word D_800435F4
	.word D_80043618
	.word D_8004363C
	.word D_80043660
	.word D_80043684
	.word D_800436A8
	.word D_800436CC
	.word D_800436F0
	.word D_80043714
	.word D_80043738
	.word D_8004375C
	.word D_80043780
	.word D_800437A4
	.word D_800437C8
	.word D_800437EC
	.word D_80043810
	.word D_80043834
	.word D_80043858
	.word D_8004387C
	.word D_800438A0
	.word D_800438C4
	.word D_800438E8
	.word D_8004390C
	.word D_80043930
	.word D_80043954
	.word D_80043978
	.word D_8004399C
	.word D_800439C0
	.word D_800439E4
	.word D_80043A08
	.word D_80043A2C
	.word D_80043A50
	.word D_80043A74
	.word D_80043A98
	.word D_80043ABC
	.word D_80043AE0
	.word D_80043B04
	.word D_80043B28
	.word D_80043B4C
	.word D_80043B70
	.word D_80043B94
	.word D_80043BB8
	.word D_80043BDC
	.word D_80043C00
	.word D_80043C24
	.word D_80043C48
	.word D_80043C6C
	.word D_80043C90
	.word D_80043CB4
	.word D_80043CD8
	.word D_80043CFC
	.word D_80043D20
	.word D_80043D44
	.word D_80043D68
	.word D_80043D8C
	.word D_80043DB0
	.word D_80043DD4
	.word D_80043DF8
	.word D_80043E1C

/*----------------------------------------------------------------------------*/
D_80044344:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

ptrTbl_80044368:
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344
	.word D_80044344

/*----------------------------------------------------------------------------*/
# 8004438C: Upper Attire Model Pointers

ptrTbl_UpperAttireModels:
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80041074
	.word ptrTbl_80041074
	.word ptrTbl_80041074
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_800418FC
	.word ptrTbl_80044368
	.word ptrTbl_800414B8
	.word ptrTbl_800414B8
	.word ptrTbl_800414B8
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_80041368
	.word ptrTbl_80041800
	.word ptrTbl_8004202C
	.word ptrTbl_8004126C
	.word ptrTbl_80041704
	.word ptrTbl_80041704
	.word ptrTbl_80041704
	.word ptrTbl_80044368
	.word ptrTbl_80044368
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800415B4
	.word ptrTbl_800415B4
	.word ptrTbl_80044368
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_80041800

/*----------------------------------------------------------------------------*/
D_8004445C:
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044480:
	.short 0x0000
	.short 0x1173
	.short 0x1171
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800444A4:
	.short 0x0000
	.short 0x1177
	.short 0x1175
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800444C8:
	.short 0x0000
	.short 0x117B
	.short 0x1179
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800444EC:
	.short 0x0000
	.short 0x117F
	.short 0x117D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044510:
	.short 0x0000
	.short 0x1183
	.short 0x1181
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044534:
	.short 0x0000
	.short 0x1187
	.short 0x1185
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044558:
	.short 0x0000
	.short 0x118B
	.short 0x1189
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004457C:
	.short 0x0000
	.short 0x118F
	.short 0x118D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800445A0:
	.short 0x0000
	.short 0x1193
	.short 0x1191
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800445C4:
	.short 0x0000
	.short 0x1197
	.short 0x1195
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800445E8:
	.short 0x0000
	.short 0x119B
	.short 0x1199
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004460C:
	.short 0x0000
	.short 0x119F
	.short 0x119D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044630:
	.short 0x0000
	.short 0x11A3
	.short 0x11A1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044654:
	.short 0x0000
	.short 0x11A7
	.short 0x11A5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044678:
	.short 0x0000
	.short 0x11AB
	.short 0x11A9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_8004469C:
	.short 0x0000
	.short 0x11AF
	.short 0x11AD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800446C0:
	.short 0x0000
	.short 0x11B3
	.short 0x11B1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11B5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11B7
	.short 0x0000

D_800446E4:
	.short 0x0000
	.short 0x11BB
	.short 0x11B9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11BD
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11BD
	.short 0x0000

D_80044708:
	.short 0x0000
	.short 0x11C1
	.short 0x11BF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11C3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11C3
	.short 0x0004

D_8004472C:
	.short 0x0000
	.short 0x11C9
	.short 0x11C7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11CB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11CB
	.short 0x0005

D_80044750:
	.short 0x0000
	.short 0x11D1
	.short 0x11CF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11D3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11D3
	.short 0x0006

D_80044774:
	.short 0x0000
	.short 0x11D9
	.short 0x11D7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11DB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11DB
	.short 0x0007

D_80044798:
	.short 0x0000
	.short 0x11E1
	.short 0x11DF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11E3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11E3
	.short 0x0008

D_800447BC:
	.short 0x0000
	.short 0x11E9
	.short 0x11E7
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11EB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11EB
	.short 0x0009

D_800447E0:
	.short 0x0000
	.short 0x11F1
	.short 0x11EF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11F3
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11F3
	.short 0x0000

D_80044804:
	.short 0x0000
	.short 0x11F7
	.short 0x11F5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11F9
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11F9
	.short 0x0000

D_80044828:
	.short 0x0000
	.short 0x11FD
	.short 0x11FB
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11FF
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x11FF
	.short 0x000A

D_8004484C:
	.short 0x0000
	.short 0x1205
	.short 0x1203
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1207
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1207
	.short 0x0000

D_80044870:
	.short 0x0000
	.short 0x120D
	.short 0x120B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x120F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x120F
	.short 0x0000

D_80044894:
	.short 0x0000
	.short 0x1213
	.short 0x1211
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1215
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1215
	.short 0x0000

D_800448B8:
	.short 0x0000
	.short 0x1219
	.short 0x1217
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x121B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x121B
	.short 0x0000

D_800448DC:
	.short 0x0000
	.short 0x1221
	.short 0x121F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1225
	.short 0x1223
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1225
	.short 0x0000
	.short 0x0000
	.short 0x1223
	.short 0x0000

D_80044900:
	.short 0x0000
	.short 0x1229
	.short 0x1227
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x122D
	.short 0x122B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x122D
	.short 0x0000
	.short 0x0000
	.short 0x122B
	.short 0x0000

D_80044924:
	.short 0x0000
	.short 0x1231
	.short 0x122F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1235
	.short 0x1233
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1235
	.short 0x0000
	.short 0x0000
	.short 0x1233
	.short 0x000B

D_80044948:
	.short 0x0000
	.short 0x123B
	.short 0x1239
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x123F
	.short 0x123D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x123F
	.short 0x0000
	.short 0x0000
	.short 0x123D
	.short 0x0000

D_8004496C:
	.short 0x0000
	.short 0x1243
	.short 0x1241
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1247
	.short 0x1245
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1247
	.short 0x0000
	.short 0x0000
	.short 0x1245
	.short 0x000C

D_80044990:
	.short 0x0000
	.short 0x124D
	.short 0x124B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1251
	.short 0x124F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1251
	.short 0x0000
	.short 0x0000
	.short 0x124F
	.short 0x0000

D_800449B4:
	.short 0x0000
	.short 0x1255
	.short 0x1253
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800449D8:
	.short 0x0000
	.short 0x1259
	.short 0x1257
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_800449FC:
	.short 0x0000
	.short 0x0000
	.short 0x125B
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044A20:
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x125F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x125F
	.short 0x0000

D_80044A44:
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1263
	.short 0x1261
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1267
	.short 0x0000
	.short 0x0000
	.short 0x1265
	.short 0x0000

D_80044A68:
	.short 0x0000
	.short 0x126B
	.short 0x1269
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x126D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x126D
	.short 0x000D

D_80044A8C:
	.short 0x0000
	.short 0x1273
	.short 0x1271
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1275
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1275
	.short 0x000E

D_80044AB0:
	.short 0x0000
	.short 0x127B
	.short 0x1279
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x000F

D_80044AD4:
	.short 0x0000
	.short 0x1281
	.short 0x127F
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0010

D_80044AF8:
	.short 0x0000
	.short 0x1287
	.short 0x1285
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80044B1C:
	.short 0x0000
	.short 0x128B
	.short 0x1289
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x128D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x128D
	.short 0x0011

D_80044B40:
	.short 0x0000
	.short 0x1293
	.short 0x1291
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1295
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x1295
	.short 0x0012

D_80044B64:
	.short 0x0000
	.short 0x129B
	.short 0x1299
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x129D
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x129D
	.short 0x0013

D_80044B88:
	.short 0x0000
	.short 0x12A3
	.short 0x12A1
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x12A7
	.short 0x12A5
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x12A7
	.short 0x0000
	.short 0x0000
	.short 0x12A9
	.short 0x0000

/*----------------------------------------------------------------------------*/
# Upper Attire Texture pointers
ptrTbl_UpperAttireTextures:
	.word D_8004445C
	.word D_80044480
	.word D_800444A4
	.word D_800444C8
	.word D_800444EC
	.word D_80044510
	.word D_80044534
	.word D_80044558
	.word D_8004457C
	.word D_800445A0
	.word D_800445C4
	.word D_800445E8
	.word D_8004460C
	.word D_80044630
	.word D_80044654
	.word D_80044678
	.word D_8004469C
	.word D_800446C0
	.word D_800446E4
	.word D_80044708
	.word D_8004472C
	.word D_80044750
	.word D_80044774
	.word D_80044798
	.word D_800447BC
	.word D_800447E0
	.word D_80044804
	.word D_80044828
	.word D_8004484C
	.word D_80044870
	.word D_80044894
	.word D_800448B8
	.word D_800448DC
	.word D_80044900
	.word D_80044924
	.word D_80044948
	.word D_8004496C
	.word D_80044990
	.word D_800449B4
	.word D_800449D8
	.word D_800449FC
	.word D_80044A20
	.word D_80044A44
	.word D_80044A68
	.word D_80044A8C
	.word D_80044AB0
	.word D_80044AD4
	.word D_80044AF8
	.word D_80044B1C
	.word D_80044B40
	.word D_80044B64
	.word D_80044B88

/*----------------------------------------------------------------------------*/
# 80044C7C (Z64 0x4587C; data01 bin offset: 0xA938)
# Upper Attire Default Costume Colors

tbl_UpperAttire_DefaultColors:
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 3, 3
	.byte 1, 3
	.byte 1, 3
	.byte 1, 4
	.byte 0, 0
	.byte 3, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 6, 1
	.byte 2, 1
	.byte 2, 1
	.byte 2, 1
	.byte 2, 1
	.byte 2, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 3
	.byte 1, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 1
	.byte 2, 1
	.byte 1, 2
	.byte 0, 0
	.byte 3, 3
	.byte 0, 0
	.byte 3, 1
	.byte 3, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0

/*----------------------------------------------------------------------------*/
# entrance costumes at data01 offset 0xA9A0

D_80044CE4:
	.short 0
	.short 0x147D
	.short 0x147B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1481
	.short 0x147F
	.short 0
	.short 0
	.short 0
	.short 0x1481
	.short 0
	.short 0
	.short 0x147F
	.short 0

D_80044D08:
	.short 0
	.short 0x1485
	.short 0x1483
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1489
	.short 0x1487
	.short 0
	.short 0
	.short 0
	.short 0x1489
	.short 0
	.short 0
	.short 0x1487
	.short 0

D_80044D2C:
	.short 0
	.short 0x148D
	.short 0x148B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1491
	.short 0x148F
	.short 0
	.short 0
	.short 0
	.short 0x1491
	.short 0
	.short 0
	.short 0x148F
	.short 0

D_80044D50:
	.short 0
	.short 0x1495
	.short 0x1493
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1499
	.short 0x1497
	.short 0
	.short 0
	.short 0
	.short 0x1499
	.short 0
	.short 0
	.short 0x1497
	.short 0

D_80044D74:
	.short 0
	.short 0x149D
	.short 0x149B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x14A1
	.short 0x149F
	.short 0
	.short 0
	.short 0
	.short 0x14A1
	.short 0
	.short 0
	.short 0x149F
	.short 0

D_80044D98:
	.short 0
	.short 0x14A5
	.short 0x14A3
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x14A9
	.short 0x14A7
	.short 0
	.short 0
	.short 0
	.short 0x14AD
	.short 0
	.short 0
	.short 0x14AB
	.short 0

D_80044DBC:
	.short 0
	.short 0x14B1
	.short 0x14AF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x14B5
	.short 0x14B3
	.short 0
	.short 0
	.short 0
	.short 0x14B5
	.short 0
	.short 0
	.short 0x14B3
	.short 0

D_80044DE0:
	.short 0
	.short 0x14B9
	.short 0x14B7
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x14BD
	.short 0x14BB
	.short 0
	.short 0
	.short 0
	.short 0x14BD
	.short 0
	.short 0
	.short 0x14BB
	.short 0

D_80044E04:
	.short 0
	.short 0x14C1
	.short 0x14BF
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x14C5
	.short 0x14C3
	.short 0
	.short 0
	.short 0
	.short 0x14C5
	.short 0
	.short 0
	.short 0x14C3
	.short 0

D_80044E28:
	.short 0x14CB
	.short 0x14C9
	.short 0x14C7
	.short 0x14D3
	.short 0x14D1
	.short 0
	.short 0
	.short 0
	.short 0x14CF
	.short 0x14CD
	.short 0x14DF
	.short 0x14DD
	.short 0
	.short 0x14DB
	.short 0
	.short 0
	.short 0x14D9
	.short 0x0014

D_80044E4C:
	.short 0x14E5
	.short 0x14E3
	.short 0x14E1
	.short 0x14ED
	.short 0x14EB
	.short 0
	.short 0
	.short 0
	.short 0x14E9
	.short 0x14E7
	.short 0x14ED
	.short 0x14EB
	.short 0
	.short 0x14E9
	.short 0
	.short 0
	.short 0x14E7
	.short 0x0015

D_80044E70:
	.short 0x14F7
	.short 0x14F5
	.short 0x14F3
	.short 0x14FF
	.short 0x14FD
	.short 0
	.short 0
	.short 0
	.short 0x14FB
	.short 0x14F9
	.short 0x1507
	.short 0x1505
	.short 0
	.short 0x14FB
	.short 0
	.short 0
	.short 0x14F9
	.short 0x0016

D_80044E94:
	.short 0
	.short 0x150B
	.short 0x1509
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0017

D_80044EB8:
	.short 0
	.short 0x1515
	.short 0x1513
	.short 0x151D
	.short 0x151B
	.short 0
	.short 0
	.short 0
	.short 0x1519
	.short 0x1517
	.short 0x151D
	.short 0x151B
	.short 0
	.short 0x1519
	.short 0
	.short 0
	.short 0x1517
	.short 0x0018

D_80044EDC:
	.short 0
	.short 0x1525
	.short 0x1523
	.short 0x152D
	.short 0x152B
	.short 0
	.short 0
	.short 0
	.short 0x1529
	.short 0x1527
	.short 0x152D
	.short 0x152B
	.short 0
	.short 0x1529
	.short 0
	.short 0
	.short 0x1527
	.short 0x0019

D_80044F00:
	.short 0
	.short 0x1535
	.short 0x1533
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80044F24:
	.short 0
	.short 0x1539
	.short 0x1537
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80044F48:
	.short 0
	.short 0x153D
	.short 0x153B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x153F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x153F
	.short 0x001A

D_80044F6C:
	.short 0
	.short 0x1545
	.short 0x1543
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80044F90:
	.short 0
	.short 0x1549
	.short 0x1547
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x154B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x154B
	.short 0x001B

D_80044FB4:
	.short 0
	.short 0x1551
	.short 0x154F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x001C

D_80044FD8:
	.short 0
	.short 0x1557
	.short 0x1555
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1559
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1559
	.short 0x001D

D_80044FFC:
	.short 0
	.short 0x155F
	.short 0x155D
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1561
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1561
	.short 0x001E

D_80045020:
	.short 0
	.short 0x1567
	.short 0x1565
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80045044:
	.short 0
	.short 0x156B
	.short 0x1569
	.short 0x1573
	.short 0x1571
	.short 0
	.short 0
	.short 0
	.short 0x156F
	.short 0x156D
	.short 0x157B
	.short 0x1579
	.short 0
	.short 0x156F
	.short 0
	.short 0
	.short 0x156D
	.short 0x001F

D_80045068:
	.short 0
	.short 0x157F
	.short 0x157D
	.short 0x1583
	.short 0x1581
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1583
	.short 0x1581
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0020

D_8004508C:
	.short 0
	.short 0x1589
	.short 0x1587
	.short 0x158D
	.short 0x158B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x158D
	.short 0x158B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0021

D_800450B0:
	.short 0x1591
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x0022

D_800450D4:
	.short 0
	.short 0x159D
	.short 0x159B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x15A1
	.short 0x159F
	.short 0
	.short 0
	.short 0
	.short 0x15A1
	.short 0
	.short 0
	.short 0x159F
	.short 0x0023

D_800450F8:
	.short 0x15AB
	.short 0x15A9
	.short 0x15A7
	.short 0x15B3
	.short 0x15B1
	.short 0
	.short 0
	.short 0
	.short 0x15AF
	.short 0x15AD
	.short 0x15B3
	.short 0x15B1
	.short 0
	.short 0x15AF
	.short 0
	.short 0
	.short 0x15AD
	.short 0x0024

D_8004511C:
	.short 0x15C1
	.short 0x15BF
	.short 0x15BD
	.short 0x15C9
	.short 0x15C7
	.short 0
	.short 0
	.short 0
	.short 0x15C5
	.short 0x15C3
	.short 0x15D3
	.short 0x15D1
	.short 0
	.short 0x15C5
	.short 0
	.short 0
	.short 0x15C3
	.short 0x0025

ptrTbl_EntranceAttireModels:
	.word 0
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004126C
	.word ptrTbl_8004217C
	.word ptrTbl_8004217C
	.word ptrTbl_80041A4C
	.word ptrTbl_80041A4C
	.word ptrTbl_80041A4C
	.word ptrTbl_80041EDC
	.word ptrTbl_80042614
	.word ptrTbl_80041D8C
	.word ptrTbl_80040F78
	.word ptrTbl_80040F78
	.word ptrTbl_800418FC
	.word ptrTbl_80041074
	.word ptrTbl_800418FC
	.word ptrTbl_800415B4
	.word ptrTbl_800418FC
	.word ptrTbl_800418FC
	.word ptrTbl_80044368
	.word ptrTbl_80042614
	.word ptrTbl_80040E7C
	.word ptrTbl_80040E7C
	.word ptrTbl_800424C4
	.word ptrTbl_80042278
	.word ptrTbl_80040C84
	.word ptrTbl_80041B0C

ptrTbl_EntranceAttireTextures:
	.word 0
	.word D_80044CE4
	.word D_80044D08
	.word D_80044D2C
	.word D_80044D50
	.word D_80044D74
	.word D_80044D98
	.word D_80044DBC
	.word D_80044DE0
	.word D_80044E04
	.word D_80044E28
	.word D_80044E4C
	.word D_80044E70
	.word D_80044E94
	.word D_80044EB8
	.word D_80044EDC
	.word D_80044F00
	.word D_80044F24
	.word D_80044F48
	.word D_80044F6C
	.word D_80044F90
	.word D_80044FB4
	.word D_80044FD8
	.word D_80044FFC
	.word D_80045020
	.word D_80045044
	.word D_80045068
	.word D_8004508C
	.word D_800450B0
	.word D_800450D4
	.word D_800450F8
	.word D_8004511C

/*----------------------------------------------------------------------------*/
# entrance attire facepaint
tbl_EntranceAttire_Facepaint:
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0x14, 0, 0, 0, 0

/*----------------------------------------------------------------------------*/
# entrance attire default colors
tbl_EntranceAttire_DefaultColors:
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 1, 3
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 1, 1
	.byte 0, 0
	.byte 0, 0

/*----------------------------------------------------------------------------*/
# 800452A0: start of gloves data

D_800452A0:
	.short 0
	.short 0
	.short 0
	#--------------#
	.short 0
	.short 0
	.short 0

ptrTbl_800452AC:
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0
	.word D_800452A0

D_800452D0:
	.short 0
	.short 0
	.short 0
	#--------------#
	.short 0
	.short 0
	.short 0

D_800452DC:
	.short 0x13E7
	.short 0x13E9
	.short 0x13EB
	#--------------#
	.short 0x13E7
	.short 0x13E9
	.short 0x13EB

D_800452E8:
	.short 0
	.short 0x13ED
	.short 0x13EF
	#--------------#
	.short 0
	.short 0x13ED
	.short 0x13EF

D_800452F4:
	.short 0
	.short 0x13ED
	.short 0x13EF
	#--------------#
	.short 0
	.short 0
	.short 0

D_80045300:
	.short 0
	.short 0x13F1
	.short 0x13F3
	#--------------#
	.short 0
	.short 0x13F1
	.short 0x13F3

D_8004530C:
	.short 0
	.short 0x13F5
	.short 0
	#--------------#
	.short 0
	.short 0x13F5
	.short 0

D_80045318:
	.short 0x13F7
	.short 0x13F9
	.short 0x13FB
	#--------------#
	.short 0x13F7
	.short 0x13F9
	.short 0x13FB

D_80045324:
	.short 0
	.short 0x1A3E
	.short 0x1A3C
	#--------------#
	.short 0
	.short 0x1A3F
	.short 0x1A3D

D_80045330:
	.short 0
	.short 0x1A40
	.short 0x1A3C
	#--------------#
	.short 0
	.short 0x1A41
	.short 0x1A3D

D_8004533C:
	.short 0
	.short 0x1A42
	.short 0x1A3C
	#--------------#
	.short 0
	.short 0x1A43
	.short 0x1A3D

D_80045348:
	.short 0
	.short 0x1A44
	.short 0x1A3C
	#--------------#
	.short 0
	.short 0x1A45
	.short 0x1A3D

ptrTbl_80045354:
	.word D_80045348
	.word D_80045348
	.word D_8004533C
	.word D_8004533C
	.word D_8004533C
	.word D_8004533C
	.word D_80045330
	.word D_80045330
	.word D_80045324

D_80045378:
	.short 0x13FD
	.short 0x13FF
	.short 0x1401
	#--------------#
	.short 0x13FD
	.short 0x13FF
	.short 0x1401

ptrTbl_80045384:
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_800452AC
	.word ptrTbl_80045354

ptrTbl_800453A4:
	.word D_800452D0
	.word D_800452DC
	.word D_800452E8
	.word D_800452F4
	.word D_80045300
	.word D_8004530C
	.word D_80045318
	.word D_80045378

/*----------------------------------------------------------------------------*/
# elbow pads at data01 offset 0xB080

D_800453C4:
	.short 0x12C7
	.short 0x12C9

D_800453C8:
	.short 0x12CB
	.short 0x12CD

D_800453CC:
	.short 0x12CF
	.short 0x12D1

ptrTbl_ElbowPadTextures:
	.word 0
	.word D_800453C4
	.word D_800453C8
	.word D_800453CC

/*----------------------------------------------------------------------------*/
# wristbands at data01 offset 0xB09C

tbl_WristbandTextures01:
	.short 0x12AB
	.short 0

tbl_WristbandTextures02:
	.short 0x12AD
	.short 0

tbl_WristbandTextures03:
	.short 0x12B1
	.short 0

tbl_WristbandTextures04:
	.short 0x12B3
	.short 0

tbl_WristbandTextures05:
	.short 0x12B5
	.short 0

tbl_WristbandTextures06:
	.short 0x12B7
	.short 0

tbl_WristbandTextures07:
	.short 0x12B9
	.short 0

tbl_WristbandTextures08:
	.short 0x12BB
	.short 0

tbl_WristbandTextures09:
	.short 0x12BD
	.short 0

tbl_WristbandTextures10:
	.short 0x12BF
	.short 0

tbl_WristbandTextures11:
	.short 0x12C1
	.short 0

tbl_WristbandTextures12:
	.short 0x12C3
	.short 0

tbl_WristbandTextures13:
	.short 0x12C5
	.short 0

# wristband pointers
ptrTbl_WristbandTextures:
	.word 0
	.word tbl_WristbandTextures01
	.word tbl_WristbandTextures02
	.word tbl_WristbandTextures03
	.word tbl_WristbandTextures04
	.word tbl_WristbandTextures05
	.word tbl_WristbandTextures06
	.word tbl_WristbandTextures07
	.word tbl_WristbandTextures08
	.word tbl_WristbandTextures09
	.word tbl_WristbandTextures10
	.word tbl_WristbandTextures11
	.word tbl_WristbandTextures12
	.word tbl_WristbandTextures13

# wristband default colors start at 8004544C
tbl_Wristband_DefaultColors:
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 2
	.byte 1, 1
	.byte 2, 2
	.byte 0, 0
	.byte 2, 2
	.byte 2, 2
	.byte 0, 0

/*----------------------------------------------------------------------------*/
# kneepads at data01 offset 0xB124

D_80045468:
	.short 0x12D3
	.short 0

D_8004546C:
	.short 0x12D5
	.short 0x12D7

D_80045470:
	.short 0x12D9
	.short 0x12DB

D_80045474:
	.short 0x12DD
	.short 0

D_80045478:
	.short 0x12DF
	.short 0x12E1

D_8004547C:
	.short 0x12E3
	.short 0

D_80045480:
	.short 0x12E5
	.short 0x12E7

D_80045484:
	.short 0x12E9
	.short 0

D_80045488:
	.short 0x12EB
	.short 0x12ED

D_8004548C:
	.short 0x12EF
	.short 0

D_80045490:
	.short 0x12F1
	.short 0x12F3

D_80045494:
	.short 0x12F5
	.short 0

D_80045498:
	.short 0x12F9
	.short 0x12FB

D_8004549C:
	.short 0x12FD
	.short 0

D_800454A0:
	.short 0x12FF
	.short 0x1301

ptrTbl_KneepadTextures:
	.word 0
	.word D_80045468
	.word D_8004546C
	.word D_80045470
	.word D_80045474
	.word D_80045478
	.word D_8004547C
	.word D_80045480
	.word D_80045484
	.word D_80045488
	.word D_8004548C
	.word D_80045490
	.word D_80045494
	.word D_80045498
	.word D_8004549C
	.word D_800454A0

# kneepad default colors
tbl_Kneepad_DefaultColors:
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 3, 3
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0

/*----------------------------------------------------------------------------*/
# boots? at data01 offset 0xB1C0

# models start at 80045504
D_80045504:
	.short 0
	.short 0x0922
	.short 0
	.short 0x0923

D_8004550C:
	.short 0
	.short 0x0920
	.short 0
	.short 0x0921

D_80045514:
	.short 0
	.short 0x091E
	.short 0
	.short 0x091F

D_8004551C:
	.short 0
	.short 0x0928
	.short 0
	.short 0x0929

# textures start at 80045524
D_80045524:
	.short 0
	.short 0
	.short 0
	.short 0

D_8004552C:
	.short 0x1305
	.short 0x1307
	.short 0x1305
	.short 0x1307

D_80045534:
	.short 0x1309
	.short 0x130B
	.short 0x1309
	.short 0x130B

D_8004553C:
	.short 0x130D
	.short 0x130F
	.short 0x130D
	.short 0x130F

D_80045544:
	.short 0x1311
	.short 0x1313
	.short 0x1311
	.short 0x1313

D_8004554C:
	.short 0x1315
	.short 0x1317
	.short 0x1315
	.short 0x1317

D_80045554:
	.short 0x1319
	.short 0x131B
	.short 0x1319
	.short 0x131B

D_8004555C:
	.short 0x131D
	.short 0x131F
	.short 0x131D
	.short 0x131F

D_80045564:
	.short 0x1321
	.short 0x1323
	.short 0x1321
	.short 0x1323

D_8004556C:
	.short 0x1325
	.short 0x1327
	.short 0x1325
	.short 0x1327

D_80045574:
	.short 0x1329
	.short 0x132B
	.short 0x1329
	.short 0x132B

D_8004557C:
	.short 0x132D
	.short 0x132F
	.short 0x132D
	.short 0x132F

D_80045584:
	.short 0x1331
	.short 0x1333
	.short 0x1331
	.short 0x1333

D_8004558C:
	.short 0x1335
	.short 0x1337
	.short 0x1335
	.short 0x1337

D_80045594:
	.short 0x1339
	.short 0x133B
	.short 0x1339
	.short 0x133B

D_8004559C:
	.short 0x133D
	.short 0x133F
	.short 0x133D
	.short 0x133F

D_800455A4:
	.short 0x1341
	.short 0x1343
	.short 0x1341
	.short 0x1343

D_800455AC:
	.short 0x1345
	.short 0x1347
	.short 0x1345
	.short 0x1347

D_800455B4:
	.short 0x1349
	.short 0x134B
	.short 0x134D
	.short 0x134B

D_800455BC:
	.short 0x134F
	.short 0x1351
	.short 0x134F
	.short 0x1351

D_800455C4:
	.short 0x1353
	.short 0x1355
	.short 0x1353
	.short 0x1355

D_800455CC:
	.short 0x1357
	.short 0x1359
	.short 0x1357
	.short 0x1359

D_800455D4:
	.short 0x135B
	.short 0x135D
	.short 0x135B
	.short 0x135D

D_800455DC:
	.short 0x135F
	.short 0x1361
	.short 0x135F
	.short 0x1361

D_800455E4:
	.short 0x1363
	.short 0x1365
	.short 0x1363
	.short 0x1365

D_800455EC:
	.short 0x1367
	.short 0x1369
	.short 0x1367
	.short 0x1369

D_800455F4:
	.short 0x136B
	.short 0x136D
	.short 0x136B
	.short 0x136D

D_800455FC:
	.short 0x136F
	.short 0x1371
	.short 0x136F
	.short 0x1371

D_80045604:
	.short 0x1373
	.short 0x1375
	.short 0x1373
	.short 0x1375

D_8004560C:
	.short 0x1377
	.short 0x1379
	.short 0x137B
	.short 0x1379

D_80045614:
	.short 0x137D
	.short 0x137F
	.short 0x137D
	.short 0x137F

D_8004561C:
	.short 0x1381
	.short 0x1383
	.short 0x1381
	.short 0x1383

D_80045624:
	.short 0x1385
	.short 0x1387
	.short 0x1385
	.short 0x1387

D_8004562C:
	.short 0x1389
	.short 0x138B
	.short 0x1389
	.short 0x138B

D_80045634:
	.short 0x138D
	.short 0x138F
	.short 0x138D
	.short 0x138F

D_8004563C:
	.short 0x1391
	.short 0x1393
	.short 0x1391
	.short 0x1393

D_80045644:
	.short 0x1395
	.short 0x1397
	.short 0x1395
	.short 0x1397

D_8004564C:
	.short 0x1399
	.short 0x139B
	.short 0x1399
	.short 0x139B

D_80045654:
	.short 0x139D
	.short 0x139F
	.short 0x139D
	.short 0x139F

D_8004565C:
	.short 0x13A1
	.short 0x13A3
	.short 0x13A1
	.short 0x13A3

D_80045664:
	.short 0x13A5
	.short 0x13A7
	.short 0x13A5
	.short 0x13A7

D_8004566C:
	.short 0
	.short 0x13A9
	.short 0
	.short 0x13A9

D_80045674:
	.short 0x13AB
	.short 0x13AD
	.short 0x13AB
	.short 0x13AD

D_8004567C:
	.short 0
	.short 0x13AF
	.short 0
	.short 0x13AF

D_80045684:
	.short 0
	.short 0x13B1
	.short 0
	.short 0x13B1

D_8004568C:
	.short 0x13B3
	.short 0x1463
	.short 0x13B3
	.short 0x1463

D_80045694:
	.short 0x13B5
	.short 0x13B7
	.short 0x13B5
	.short 0x13B7

D_8004569C:
	.short 0x13B9
	.short 0x13BB
	.short 0x13B9
	.short 0x13BB

D_800456A4:
	.short 0x13BD
	.short 0x13BF
	.short 0x13BD
	.short 0x13BF

D_800456AC:
	.short 0x13C1
	.short 0x13C3
	.short 0x13C1
	.short 0x13C3

D_800456B4:
	.short 0x13C5
	.short 0x13C7
	.short 0x13C5
	.short 0x13C7

D_800456BC:
	.short 0x13C9
	.short 0x146D
	.short 0x13C9
	.short 0x146D

# pointers for boot models
ptrTbl_BootModels:
	.word D_80045514
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word D_80045504
	.word D_80045504
	.word D_8004550C
	.word 0
	.word 0
	.word D_8004551C
	.word 0
	.word 0
	.word 0
	.word 0
	.word D_80045514
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word D_80045514

# pointers for boot textures
ptrTbl_BootTextures:
	.word D_80045524
	.word D_8004552C
	.word D_80045534
	.word D_8004553C
	.word D_80045544
	.word D_8004554C
	.word D_80045554
	.word D_8004555C
	.word D_80045564
	.word D_8004556C
	.word D_80045574
	.word D_8004557C
	.word D_80045584
	.word D_8004558C
	.word D_80045594
	.word D_8004559C
	.word D_800455A4
	.word D_800455AC
	.word D_800455B4
	.word D_800455BC
	.word D_800455C4
	.word D_800455CC
	.word D_800455D4
	.word D_800455DC
	.word D_800455E4
	.word D_800455EC
	.word D_800455F4
	.word D_800455FC
	.word D_80045604
	.word D_8004560C
	.word D_80045614
	.word D_8004561C
	.word D_80045624
	.word D_8004562C
	.word D_80045634
	.word D_8004563C
	.word D_80045644
	.word D_8004564C
	.word D_80045654
	.word D_8004565C
	.word D_80045664
	.word D_8004566C
	.word D_80045674
	.word D_8004567C
	.word D_80045684
	.word D_8004568C
	.word D_80045694
	.word D_8004569C
	.word D_800456A4
	.word D_800456AC
	.word D_800456B4
	.word D_800456BC

# boot default colors start at 80045864
tbl_Boot_DefaultColors:
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 1, 2
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 1
	.byte 0, 0
	.byte 0, 0
	.byte 1, 2
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 3
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0
	.byte 2, 1
	.byte 2, 1
	.byte 0, 0
	.byte 0, 0
	.byte 0, 0

/*----------------------------------------------------------------------------*/
# 800458CC hair models (data01 offset 0xB588, z64 0x464CC)

D_800458CC:
	.short 0x16D3
	.short 0x16D2
	.short 0x16D1
	.short 0

D_800458D4:
	.short 0x16D6
	.short 0x16D5
	.short 0x16D4
	.short 0

D_800458DC:
	.short 0x16D9
	.short 0x16D8
	.short 0x16D7
	.short 0

D_800458E4:
	.short 0x16DC
	.short 0x16DB
	.short 0x16DA
	.short 0

D_800458EC:
	.short 0x16DF
	.short 0x16DE
	.short 0x16DD
	.short 0

D_800458F4:
	.short 0x16E2
	.short 0x16E1
	.short 0x16E0
	.short 0

D_800458FC:
	.short 0x16E5
	.short 0x16E4
	.short 0x16E3
	.short 0

D_80045904:
	.short 0x16F1
	.short 0x16F0
	.short 0x16EF
	.short 0

D_8004590C:
	.short 0x16F4
	.short 0x16F3
	.short 0x16F2
	.short 0

D_80045914:
	.short 0x161F
	.short 0x161E
	.short 0x161D
	.short 0

D_8004591C:
	.short 0x1622
	.short 0x1621
	.short 0x1620
	.short 0

D_80045924:
	.short 0x1625
	.short 0x1624
	.short 0x1623
	.short 0

D_8004592C:
	.short 0x1628
	.short 0x1627
	.short 0x1626
	.short 0

D_80045934:
	.short 0x162B
	.short 0x162A
	.short 0x1629
	.short 0

D_8004593C:
	.short 0x162E
	.short 0x162D
	.short 0x162C
	.short 0

D_80045944:
	.short 0x1631
	.short 0x1630
	.short 0x162F
	.short 0

D_8004594C:
	.short 0x163D
	.short 0x163C
	.short 0x163B
	.short 0

D_80045954:
	.short 0x1640
	.short 0x163F
	.short 0x163E
	.short 0

D_8004595C:
	.short 0x171B
	.short 0x171A
	.short 0x1719
	.short 0

D_80045964:
	.short 0x171E
	.short 0x171D
	.short 0x171C
	.short 0

D_8004596C:
	.short 0x1721
	.short 0x1720
	.short 0x171F
	.short 0

D_80045974:
	.short 0x1724
	.short 0x1723
	.short 0x1722
	.short 0

D_8004597C:
	.short 0x1727
	.short 0x1726
	.short 0x1725
	.short 0

D_80045984:
	.short 0x172A
	.short 0x1729
	.short 0x1728
	.short 0

D_8004598C:
	.short 0x172D
	.short 0x172C
	.short 0x172B
	.short 0

D_80045994:
	.short 0x1739
	.short 0x1738
	.short 0x1737
	.short 0

D_8004599C:
	.short 0x173C
	.short 0x173B
	.short 0x173A
	.short 0

D_800459A4:
	.short 0x1667
	.short 0x1666
	.short 0x1665
	.short 0

D_800459AC:
	.short 0x166A
	.short 0x1669
	.short 0x1668
	.short 0

D_800459B4:
	.short 0x166D
	.short 0x166C
	.short 0x166B
	.short 0

D_800459BC:
	.short 0x1670
	.short 0x166F
	.short 0x166E
	.short 0

D_800459C4:
	.short 0x1673
	.short 0x1672
	.short 0x1671
	.short 0

D_800459CC:
	.short 0x1676
	.short 0x1675
	.short 0x1674
	.short 0

D_800459D4:
	.short 0x1679
	.short 0x1678
	.short 0x1677
	.short 0

D_800459DC:
	.short 0x1685
	.short 0x1684
	.short 0x1683
	.short 0

D_800459E4:
	.short 0x1688
	.short 0x1687
	.short 0x1686
	.short 0

D_800459EC:
	.short 0x16AF
	.short 0x16AE
	.short 0x16AD
	.short 0

D_800459F4:
	.short 0x16B2
	.short 0x16B1
	.short 0x16B0
	.short 0

D_800459FC:
	.short 0x16B5
	.short 0x16B4
	.short 0x16B3
	.short 0

D_80045A04:
	.short 0x16B8
	.short 0x16B7
	.short 0x16B6
	.short 0

D_80045A0C:
	.short 0x16BB
	.short 0x16BA
	.short 0x16B9
	.short 0

D_80045A14:
	.short 0x16BE
	.short 0x16BD
	.short 0x16BC
	.short 0

D_80045A1C:
	.short 0x16C1
	.short 0x16C0
	.short 0x16BF
	.short 0

D_80045A24:
	.short 0x16CD
	.short 0x16CC
	.short 0x16CB
	.short 0

D_80045A2C:
	.short 0x16D0
	.short 0x16CF
	.short 0x16CE
	.short 0

D_80045A34:
	.short 0x15FB
	.short 0x15FA
	.short 0x15F9
	.short 0

D_80045A3C:
	.short 0x15FE
	.short 0x15FD
	.short 0x15FC
	.short 0

D_80045A44:
	.short 0x1601
	.short 0x1600
	.short 0x15FF
	.short 0

D_80045A4C:
	.short 0x1604
	.short 0x1603
	.short 0x1602
	.short 0

D_80045A54:
	.short 0x1607
	.short 0x1606
	.short 0x1605
	.short 0

D_80045A5C:
	.short 0x160A
	.short 0x1609
	.short 0x1608
	.short 0

D_80045A64:
	.short 0x160D
	.short 0x160C
	.short 0x160B
	.short 0

D_80045A6C:
	.short 0x1619
	.short 0x1618
	.short 0x1617
	.short 0

D_80045A74:
	.short 0x161C
	.short 0x161B
	.short 0x161A
	.short 0

D_80045A7C:
	.short 0x16F7
	.short 0x16F6
	.short 0x16F5
	.short 0

D_80045A84:
	.short 0x16FA
	.short 0x16F9
	.short 0x16F8
	.short 0

D_80045A8C:
	.short 0x16FD
	.short 0x16FC
	.short 0x16FB
	.short 0

D_80045A94:
	.short 0x1700
	.short 0x16FF
	.short 0x16FE
	.short 0

D_80045A9C:
	.short 0x1703
	.short 0x1702
	.short 0x1701
	.short 0

D_80045AA4:
	.short 0x1706
	.short 0x1705
	.short 0x1704
	.short 0

D_80045AAC:
	.short 0x1709
	.short 0x1708
	.short 0x1707
	.short 0

D_80045AB4:
	.short 0x1715
	.short 0x1714
	.short 0x1713
	.short 0

D_80045ABC:
	.short 0x1718
	.short 0x1717
	.short 0x1716
	.short 0

D_80045AC4:
	.short 0x1643
	.short 0x1642
	.short 0x1641
	.short 0

D_80045ACC:
	.short 0x1646
	.short 0x1645
	.short 0x1644
	.short 0

D_80045AD4:
	.short 0x1649
	.short 0x1648
	.short 0x1647
	.short 0

D_80045ADC:
	.short 0x164C
	.short 0x164B
	.short 0x164A
	.short 0

D_80045AE4:
	.short 0x164F
	.short 0x164E
	.short 0x164D
	.short 0

D_80045AEC:
	.short 0x1652
	.short 0x1651
	.short 0x1650
	.short 0

D_80045AF4:
	.short 0x1655
	.short 0x1654
	.short 0x1653
	.short 0

D_80045AFC:
	.short 0x1661
	.short 0x1660
	.short 0x165F
	.short 0

D_80045B04:
	.short 0x1664
	.short 0x1663
	.short 0x1662
	.short 0

D_80045B0C:
	.short 0x168B
	.short 0x168A
	.short 0x1689
	.short 0

D_80045B14:
	.short 0x168E
	.short 0x168D
	.short 0x168C
	.short 0

D_80045B1C:
	.short 0x1691
	.short 0x1690
	.short 0x168F
	.short 0

D_80045B24:
	.short 0x1694
	.short 0x1693
	.short 0x1692
	.short 0

D_80045B2C:
	.short 0x1697
	.short 0x1696
	.short 0x1695
	.short 0

D_80045B34:
	.short 0x169A
	.short 0x1699
	.short 0x1698
	.short 0

D_80045B3C:
	.short 0x169D
	.short 0x169C
	.short 0x169B
	.short 0

D_80045B44:
	.short 0x16A9
	.short 0x16A8
	.short 0x16A7
	.short 0

D_80045B4C:
	.short 0x16AC
	.short 0x16AB
	.short 0x16AA
	.short 0

D_80045B54:
	.short 0x15D7
	.short 0x15D6
	.short 0x15D5
	.short 0

D_80045B5C:
	.short 0x15DA
	.short 0x15D9
	.short 0x15D8
	.short 0

D_80045B64:
	.short 0x15DD
	.short 0x15DC
	.short 0x15DB
	.short 0

D_80045B6C:
	.short 0x15E0
	.short 0x15DF
	.short 0x15DE
	.short 0

D_80045B74:
	.short 0x15E3
	.short 0x15E2
	.short 0x15E1
	.short 0

D_80045B7C:
	.short 0x15E6
	.short 0x15E5
	.short 0x15E4
	.short 0

D_80045B84:
	.short 0x15E9
	.short 0x15E8
	.short 0x15E7
	.short 0

D_80045B8C:
	.short 0x15F5
	.short 0x15F4
	.short 0x15F3
	.short 0

D_80045B94:
	.short 0x15F8
	.short 0x15F7
	.short 0x15F6
	.short 0

/* ---------------------- */
# 80045B9C: hair model pointers begin here

ptrTbl_80045B9C:
	.word D_800458CC
	.word D_8004595C
	.word D_800459EC
	.word D_80045A7C
	.word D_80045B0C

ptrTbl_80045BB0:
	.word D_80045914
	.word D_800459A4
	.word D_80045A34
	.word D_80045AC4
	.word D_80045B54

ptrTbl_80045BC4:
	.word ptrTbl_80045B9C
	.word ptrTbl_80045B9C
	.word ptrTbl_80045BB0
/* ---------------------- */

ptrTbl_80045BD0:
	.word D_800458D4
	.word D_80045964
	.word D_800459F4
	.word D_80045A84
	.word D_80045B14

ptrTbl_80045BE4:
	.word D_8004591C
	.word D_800459AC
	.word D_80045A3C
	.word D_80045ACC
	.word D_80045B5C

ptrTbl_80045BF8:
	.word ptrTbl_80045BD0
	.word ptrTbl_80045BD0
	.word ptrTbl_80045BE4
/* ---------------------- */

ptrTbl_80045C04:
	.word D_800458DC
	.word D_8004596C
	.word D_800459FC
	.word D_80045A8C
	.word D_80045B1C

ptrTbl_80045C18:
	.word D_80045924
	.word D_800459B4
	.word D_80045A44
	.word D_80045AD4
	.word D_80045B64

ptrTbl_80045C2C:
	.word ptrTbl_80045C04
	.word ptrTbl_80045C04
	.word ptrTbl_80045C18
/* ---------------------- */

ptrTbl_80045C38:
	.word D_800458E4
	.word D_80045974
	.word D_80045A04
	.word D_80045A94
	.word D_80045B24

ptrTbl_80045C4C:
	.word D_8004592C
	.word D_800459BC
	.word D_80045A4C
	.word D_80045ADC
	.word D_80045B6C

ptrTbl_80045C60:
	.word ptrTbl_80045C38
	.word ptrTbl_80045C38
	.word ptrTbl_80045C4C
/* ---------------------- */

ptrTbl_80045C6C:
	.word D_800458EC
	.word D_8004597C
	.word D_80045A0C
	.word D_80045A9C
	.word D_80045B2C

ptrTbl_80045C80:
	.word D_80045934
	.word D_800459C4
	.word D_80045A54
	.word D_80045AE4
	.word D_80045B74

ptrTbl_80045C94:
	.word ptrTbl_80045C6C
	.word ptrTbl_80045C6C
	.word ptrTbl_80045C80
/* ---------------------- */

ptrTbl_80045CA0:
	.word D_800458F4
	.word D_80045984
	.word D_80045A14
	.word D_80045AA4
	.word D_80045B34

ptrTbl_80045CB4:
	.word D_8004593C
	.word D_800459CC
	.word D_80045A5C
	.word D_80045AEC
	.word D_80045B7C

ptrTbl_80045CC8:
	.word ptrTbl_80045CA0
	.word ptrTbl_80045CA0
	.word ptrTbl_80045CB4
/* ---------------------- */

ptrTbl_80045CD4:
	.word D_800458FC
	.word D_8004598C
	.word D_80045A1C
	.word D_80045AAC
	.word D_80045B3C

ptrTbl_80045CE8:
	.word D_80045944
	.word D_800459D4
	.word D_80045A64
	.word D_80045AF4
	.word D_80045B84

ptrTbl_80045CFC:
	.word ptrTbl_80045CD4
	.word ptrTbl_80045CD4
	.word ptrTbl_80045CE8
/* ---------------------- */

ptrTbl_80045D08:
	.word D_80045904
	.word D_80045994
	.word D_80045A24
	.word D_80045AB4
	.word D_80045B44

ptrTbl_80045D1C:
	.word D_8004594C
	.word D_800459DC
	.word D_80045A6C
	.word D_80045AFC
	.word D_80045B8C

ptrTbl_80045D30:
	.word ptrTbl_80045D08
	.word ptrTbl_80045D08
	.word ptrTbl_80045D1C
/* ---------------------- */

ptrTbl_80045D3C:
	.word D_8004590C
	.word D_8004599C
	.word D_80045A2C
	.word D_80045ABC
	.word D_80045B4C

ptrTbl_80045D50:
	.word D_80045954
	.word D_800459E4
	.word D_80045A74
	.word D_80045B04
	.word D_80045B94

ptrTbl_80045D64:
	.word ptrTbl_80045D3C
	.word ptrTbl_80045D3C
	.word ptrTbl_80045D50
/* ---------------------- */

# 80045D70: per-bodytype hair model pointer tables?
ptrTbl_80045D70:
	.word ptrTbl_80045BC4
	.word ptrTbl_80045BF8
	.word ptrTbl_80045C2C
	.word ptrTbl_80045C60
	.word ptrTbl_80045C94
	.word ptrTbl_80045CC8
	.word ptrTbl_80045CFC
	.word ptrTbl_80045D30
	.word ptrTbl_80045D64

/*----------------------------------------------------------------------------*/
# related to skin colors (data01 bin offset: 0xBA50)

# face colors
tbl_FacePalettes:
	.short 0x1745
	.short 0x1746
	.short 0x1747
	.short 0x1748

# skin colors?
D_80045D9C:
	.short 0x173D
	.short 0x173E
	.short 0x173F
	.short 0x1740

# ? colors
D_80045DA4:
	.short 0x1741
	.short 0x1742
	.short 0x1743
	.short 0x1744

	.short 0,0

/*----------------------------------------------------------------------------*/
# 80045DB0 (Z64 0x469B0; data01 bin offset: 0xBA6C): more values I don't know

D_80045DB0:
	.byte 1, 0, 2, 0, 0, 0, 0, 0

/*----------------------------------------------------------------------------*/
# 80045DB8 (Z64 0x469B8; data01 bin offset: 0xBA74): per-face facial hair vert. displacement table
tbl_DefaultFace_FacialHair_VertDisplacement:
	.byte 0x2D, 0x2D, 0x2F, 0x2D, 0x2F, 0x2E, 0x2E, 0x2D
	.byte 0x2E, 0x2C, 0x2D, 0x2C, 0x2E, 0x2E, 0x28, 0x2D
	.byte 0x2E, 0x2F, 0x2C, 0x2D, 0x2B, 0x2F, 0x2F, 0x2D
	.byte 0x2E, 0x2E, 0x2E, 0x2D, 0x2B, 0x2D, 0x2D, 0x2C
	.byte 0x2F, 0x2D, 0x2B, 0x2F, 0x2D, 0x2E, 0x2E, 0x2C
	.byte 0x2E, 0x2D, 0x2C, 0x2E, 0x2D, 0x2F, 0x2F, 0x2F
	.byte 0x2F, 0x2E, 0x2D, 0x2F, 0x2E, 0x2E, 0x2D, 0x2E
	.byte 0x2F, 0x2F, 0x2F, 0x30, 0x2E, 0x30, 0x30, 0x2E
	.byte 0x30, 0x2F, 0x2C, 0x2E, 0x2F, 0x2B, 0x2D, 0x2C
	.byte 0x2D, 0x2F, 0x2E, 0x2F, 0x2E, 0x30, 0x30, 0x2B
	.byte 0x2E, 0x2D, 0x2F, 0x2F, 0x2A, 0x2E, 0x2D, 0x2C
	.byte 0x2F, 0x2E, 0x2E, 0x2E, 0x2E, 0x2D, 0x2D, 0x2F
	.byte 0x2E, 0x2E, 0x2E, 0x31, 0x2F, 0x2C, 0x2C, 0x2C
	.byte 0x2C, 0x2C, 0x2E, 0x2C, 0x2C, 0x2E, 0x00, 0x00

# 80045E28 (Z64 0x46A28; data01 bin offset: 0xBAE4): per-face facepaint/accessory vert. displacement table
tbl_DefaultFace_PaintAccessory_VertDisplacement:
	.byte 0x18, 0x1D, 0x1D, 0x1B, 0x1A, 0x1E, 0x1B, 0x1D
	.byte 0x1A, 0x1B, 0x18, 0x1B, 0x1D, 0x1C, 0x19, 0x1D
	.byte 0x1B, 0x1C, 0x1C, 0x1C, 0x1B, 0x1C, 0x1D, 0x1C
	.byte 0x1A, 0x1C, 0x1C, 0x1B, 0x19, 0x1A, 0x1C, 0x1B
	.byte 0x1E, 0x1D, 0x17, 0x1D, 0x1A, 0x1C, 0x1D, 0x1B
	.byte 0x1D, 0x1C, 0x1E, 0x1D, 0x1B, 0x1D, 0x1E, 0x1D
	.byte 0x1D, 0x1D, 0x1B, 0x1D, 0x1D, 0x1D, 0x1C, 0x1D
	.byte 0x1D, 0x1C, 0x1D, 0x1E, 0x1D, 0x1D, 0x1E, 0x1D
	.byte 0x1D, 0x1C, 0x1A, 0x1C, 0x1C, 0x19, 0x1D, 0x19
	.byte 0x1C, 0x1D, 0x1A, 0x1D, 0x1C, 0x1D, 0x1D, 0x17
	.byte 0x1B, 0x1B, 0x1C, 0x1E, 0x17, 0x1A, 0x1B, 0x18
	.byte 0x1D, 0x1E, 0x1D, 0x1C, 0x1C, 0x1B, 0x1C, 0x1C
	.byte 0x1E, 0x1D, 0x1D, 0x1F, 0x1C, 0x1C, 0x1B, 0x1A
	.byte 0x1B, 0x1A, 0x1C, 0x1C, 0x1B, 0x1C, 0x00, 0x00

/*----------------------------------------------------------------------------*/
# 80045E98 (Z64 0x46A98; data01 bin offset: 0xBB54) related to front hair colors

D_80045E98:
	.short 0x17E5
	.short 0x17E6
	.short 0x17E7
	.short 0x17E8
	.short 0x17E9
	.short 0x17EA
	.short 0x17EB
	.short 0x17EC

D_80045EA8:
	.short 0x17DD
	.short 0x17DE
	.short 0x17DF
	.short 0x17E0
	.short 0x17E1
	.short 0x17E2
	.short 0x17E3
	.short 0x17E4

D_80045EB8:
	.short 0x17D5
	.short 0x17D6
	.short 0x17D7
	.short 0x17D8
	.short 0x17D9
	.short 0x17DA
	.short 0x17DB
	.short 0x17DC

 ptrTbl_80045EC8:
	.word D_80045E98
	.word D_80045EA8
	.word D_80045EB8
	.word D_80045EB8

/*----------------------------------------------------------------------------*/
# 80045ED8 (Z64 0x46AD8; data01 bin offset: 0xBB94) normal hair colors

D_80045ED8:
	.short 0x17AB
	.short 0x17AC
	.short 0x17AD
	.short 0x17AE
	.short 0x17AF
	.short 0x17B0
	.short 0x17B1
	.short 0x17B2

D_80045EE8:
	.short 0x17A3
	.short 0x17A4
	.short 0x17A5
	.short 0x17A6
	.short 0x17A7
	.short 0x17A8
	.short 0x17A9
	.short 0x17AA

D_80045EF8:
	.short 0x179B
	.short 0x179C
	.short 0x179D
	.short 0x179E
	.short 0x179F
	.short 0x17A0
	.short 0x17A1
	.short 0x17A2

ptrTbl_80045F08:
	.word D_80045ED8
	.word D_80045EE8
	.word D_80045EF8
	.word D_80045EF8

/*----------------------------------------------------------------------------*/
# 80045F18 (Z64 0x46B18; data01 bin offset: 0xBBD4) "extra hair color mods"

D_80045F18:
	.short 0x17C8
	.short 0x17C9
	.short 0x17CA
	.short 0x17CB
	.short 0x17CC
	.short 0x17CD
	.short 0x17CE
	.short 0x17CF

D_80045F28:
	.short 0x17C0
	.short 0x17C1
	.short 0x17C2
	.short 0x17C3
	.short 0x17C4
	.short 0x17C5
	.short 0x17C6
	.short 0x17C7

D_80045F38:
	.short 0x17B8
	.short 0x17B9
	.short 0x17BA
	.short 0x17BB
	.short 0x17BC
	.short 0x17BD
	.short 0x17BE
	.short 0x17BF

ptrTbl_80045F48:
	.word D_80045F18
	.word D_80045F28
	.word D_80045F38
	.word D_80045F38

/*----------------------------------------------------------------------------*/
# 80045F58 (Z64 0x46B58; data01 bin offset: 0xBC14) facial hair colors

tbl_80045F58:
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE
	.short 0x17EE

tbl_80045F68:
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED
	.short 0x17ED

ptrTbl_FacialHairColors:
	.word tbl_80045F58
	.word tbl_80045F58
	.word tbl_80045F68
	.word tbl_80045F68

/*----------------------------------------------------------------------------*/
# 80045F88 (Z64 0x46B88; data01 bin offset: 0xBC44) hair textures

D_80045F88:
	.short 0
	.short 0
	.short 0
	.short 0

# (unused)
D_80045F90:
	.short 0x176A
	.short 0
	.short 0
	.short 0

D_80045F98:
	.short 0x176D
	.short 0
	.short 0
	.short 0

D_80045FA0:
	.short 0x1770
	.short 0
	.short 0
	.short 0

D_80045FA8:
	.short 0x176B
	.short 0x1783
	.short 0
	.short 0

D_80045FB0:
	.short 0x176E
	.short 0x1783
	.short 0
	.short 0

D_80045FB8:
	.short 0x177C
	.short 0x178A
	.short 0
	.short 0

D_80045FC0:
	.short 0x176F
	.short 0x1783
	.short 0
	.short 0

# afro
D_80045FC8:
	.short 0x1774
	.short 0
	.short 0x177D
	.short 0

# shaved
D_80045FD0:
	.short 0x1775
	.short 0
	.short 0x177E
	.short 0

D_80045FD8:
	.short 0x1776
	.short 0
	.short 0xFFFF
	.short 0

D_80045FE0:
	.short 0x1777
	.short 0
	.short 0xFFFF
	.short 0

# buzz cut
D_80045FE8:
	.short 0x1778
	.short 0
	.short 0x177F
	.short 0

# dreads
D_80045FF0:
	.short 0x1779
	.short 0x1787
	.short 0x1780
	.short 0

# mullet
D_80045FF8:
	.short 0x177A
	.short 0x1788
	.short 0x1781
	.short 0

D_80046000:
	.short 0x177B
	.short 0x1789
	.short 0
	.short 0

ptrTbl_HairTextures:
	.word D_80045F88
	.word D_80045FB8
	.word D_80045F98
	.word D_80045FA0
	.word D_80045FA8
	.word D_80045FB0
	.word D_80045FC0
	.word D_80045FC8
	.word D_80045FD0
	.word D_80045FD8
	.word D_80045FE0
	.word D_80045FE8
	.word D_80045FA0
	.word D_80045FF0
	.word D_80045FF8
	.word D_80046000

# 80046048 (Z64 0x46C48; data01 bin offset: 0xBD04) hair extra models indices
D_80046048:
	.byte 0,1,0,0,2,3,3,4,0,5,0,0,6,7,3,8

/*----------------------------------------------------------------------------*/
# 80046058 (Z64 0x46C58; data01 bin offset: 0xBD14) per-item facial hair vertical displacement table

tbl_PerItem_FacialHair_VertDisplacement:
	.byte 0x00, 0x2D, 0x2F, 0x2D, 0x2C, 0x2D, 0x2C, 0x2D
	.byte 0x2B, 0x2D, 0x2E, 0x2D, 0x2D, 0x2C, 0x2D, 0x2B
	.byte 0x2D, 0x2E, 0x2C, 0x2F, 0x2D, 0x2F, 0x2C, 0x2D
	.byte 0x2E, 0x2D, 0x2D, 0x2E, 0x2F, 0x2E, 0x2E, 0x30

/*----------------------------------------------------------------------------*/
# 80046078 (Z64 0x46CA8; data01 bin offset: 0xBD34) neck hair textures

D_80046078:
	.short 0x0000
	.short 0

D_8004607C:
	.short 0x178B
	.short 0

D_80046080:
	.short 0x178C
	.short 0

D_80046084:
	.short 0x178D
	.short 0

D_80046088:
	.short 0x178E
	.short 0

D_8004608C:
	.short 0x178F
	.short 0

D_80046090:
	.short 0x1790
	.short 0

D_80046094:
	.short 0x1791
	.short 0

D_80046098:
	.short 0x1792
	.short 0

D_8004609C:
	.short 0x1793
	.short 0

D_800460A0:
	.short 0x1794
	.short 0

D_800460A4:
	.short 0x1795
	.short 0

ptrTbl_NeckHairTextures:
	.word D_80046078
	.word D_8004607C
	.word D_80046080
	.word D_80046084
	.word D_80046088
	.word D_8004608C
	.word D_80046090
	.word D_80046094
	.word D_80046098
	.word D_8004609C
	.word D_800460A0
	.word D_800460A4

/*----------------------------------------------------------------------------*/
# 800460D8 (Z64 0x46CD8; data01 bin offset: 0xBD94): facepaint vertical displacement table
D_800460D8:
	.byte 0x00, 0x1B, 0x1D, 0x1D, 0x1D, 0x1D, 0x1C, 0x1C
	.byte 0x1C, 0x1A, 0x1C, 0x1C, 0x1C, 0x1C, 0x1C, 0x1C
	.byte 0xFF, 0x1D, 0x1D, 0x1D, 0x1D, 0x1C, 0xFF, 0xFF
	.byte 0xFF, 0xFE, 0xFD, 0xFC, 0xFB, 0xFF, 0x1E, 0xFF

# 800460F8 (Z64 0x46CF8; data01 bin offset: 0xBDB4): accessory vertical displacement table
	.byte 0x1D, 0x1A, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0x1A
	.byte 0x1D, 0x1A, 0x1B, 0x1E, 0xF5, 0x1D, 0xF4, 0x1E
	.byte 0x1E, 0xFF, 0x1C, 0x1D, 0x1C, 0x1C, 0x1D, 0x1D
	.byte 0x1A, 0x1C, 0x1C, 0x1C, 0x1D, 0x2E, 0xFF, 0x00

# 80046118 (Z64 0x46D18; data01 bin offset: 0xBDD4): facepaint type table
tbl_FacepaintType:
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 2, 2, 2, 2, 0, 0, 0

# 80046138 (Z64 0x46D38; data01 bin offset: 0xBDF4): accessory type table
tbl_FaceAccessoryType:
	.byte 0, 0, 0, 2, 2, 2, 2, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0, 0, 4, 0, 0

# 80046158 (Z64 0x46D58; data01 bin offset: 0xBE14) unknown data related to facepaint
D_80046158:
	.byte 1, 0, 1, 1, 0, 0, 0, 0

# 80046160: possible file split here?
# not sure if this data is part of the above table or not
	.byte 1, 1, 1, 1, 1, 0, 0, 0

/*----------------------------------------------------------------------------*/
# 80046168 (Z64 0x46D68; data01 bin offset: 0xBE24) tattoo textures?

D_80046168:
	.short 0
	.short 0
	.short 0x1403
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1407
	.short 0x1405

D_8004618C:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1409
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1409
	.short 0

D_800461B0:
	.short 0
	.short 0x140F
	.short 0x140B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x140D

D_800461D4:
	.short 0
	.short 0x1415
	.short 0x1411
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1419
	.short 0x1417
	.short 0
	.short 0
	.short 0
	.short 0x1419
	.short 0
	.short 0
	.short 0x1417
	.short 0x1413

D_800461F8:
	.short 0
	.short 0
	.short 0x141B
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x141D

D_8004621C:
	.short 0
	.short 0x1423
	.short 0x141F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1421

D_80046240:
	.short 0
	.short 0
	.short 0
	.short 0x1425
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1427
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0

D_80046264:
	.short 0
	.short 0
	.short 0x1429
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x142B

D_80046288:
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x142D
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x142F
	.short 0

D_800462AC:
	.short 0
	.short 0x1435
	.short 0x1431
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1433

D_800462D0:
	.short 0
	.short 0x143B
	.short 0x1437
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x143F
	.short 0x143D
	.short 0
	.short 0
	.short 0
	.short 0x143F
	.short 0
	.short 0
	.short 0x143D
	.short 0x1439

D_800462F4:
	.short 0
	.short 0x1445
	.short 0x1441
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1449
	.short 0x1447
	.short 0
	.short 0
	.short 0
	.short 0x1449
	.short 0
	.short 0
	.short 0x1447
	.short 0x1443

D_80046318:
	.short 0
	.short 0x144F
	.short 0x144B
	.short 0
	.short 0x1453
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1451
	.short 0
	.short 0x1457
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1455
	.short 0x144D

D_8004633C:
	.short 0
	.short 0x145D
	.short 0x1459
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x145B

D_80046360:
	.short 0
	.short 0
	.short 0x145F
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0
	.short 0x1461

ptrTbl_TattooTextures:
	.word 0
	.word D_80046168
	.word D_8004618C
	.word D_800461B0
	.word D_800461D4
	.word D_800461F8
	.word D_8004621C
	.word D_80046240
	.word D_80046264
	.word D_80046288
	.word D_800462AC
	.word D_800462D0
	.word D_800462F4
	.word D_80046318
	.word D_8004633C
	.word D_80046360

/*----------------------------------------------------------------------------*/
# 800463C4 (Z64 0x46FC4; data01 bin offset: 0xC080)
# tattoo sub-palettes per skin color

tbl_TattooSubPals:
	.byte 0,0,1,1

# padding?
	.byte 0,0,0,0

/*----------------------------------------------------------------------------*/
# 800463CC (Z64 0x46FCC; data01 bin offset: 0xC088) mask models?

D_800463CC:
	.short 0x19A7
	.short 0x199F
	.short 0x1981
	.short 0

D_800463D4:
	.short 0x19A7
	.short 0x199F
	.short 0x197B
	.short 0

D_800463DC:
	.short 0x19A7
	.short 0x199F
	.short 0x198D
	.short 0

D_800463E4:
	.short 0x19A7
	.short 0x199F
	.short 0x1987
	.short 0

D_800463EC:
	.short 0x19A7
	.short 0x199F
	.short 0x1975
	.short 0

D_800463F4:
	.short 0x19A7
	.short 0x199E
	.short 0x1980
	.short 0

D_800463FC:
	.short 0x19A7
	.short 0x199E
	.short 0x197A
	.short 0

D_80046404:
	.short 0x19A7
	.short 0x199E
	.short 0x198C
	.short 0

D_8004640C:
	.short 0x19A7
	.short 0x199E
	.short 0x1986
	.short 0

D_80046414:
	.short 0x19A7
	.short 0x199E
	.short 0x1974
	.short 0

D_8004641C:
	.short 0x19A4
	.short 0x1999
	.short 0x1963
	.short 0

D_80046424:
	.short 0x19A4
	.short 0x1999
	.short 0x195D
	.short 0

D_8004642C:
	.short 0x19A4
	.short 0x1999
	.short 0x196F
	.short 0

D_80046434:
	.short 0x19A4
	.short 0x1999
	.short 0x1969
	.short 0

D_8004643C:
	.short 0x19A4
	.short 0x1999
	.short 0x1957
	.short 0

D_80046444:
	.short 0x19A4
	.short 0x1998
	.short 0x1962
	.short 0

D_8004644C:
	.short 0x19A4
	.short 0x1998
	.short 0x195C
	.short 0

D_80046454:
	.short 0x19A4
	.short 0x1998
	.short 0x196E
	.short 0

D_8004645C:
	.short 0x19A4
	.short 0x1998
	.short 0x1968
	.short 0

D_80046464:
	.short 0x19A4
	.short 0x1998
	.short 0x1956
	.short 0

D_8004646C:
	.short 0x19A9
	.short 0x19A3
	.short 0x1985
	.short 0

D_80046474:
	.short 0x19A9
	.short 0x19A3
	.short 0x197F
	.short 0

D_8004647C:
	.short 0x19A9
	.short 0x19A3
	.short 0x1991
	.short 0

D_80046484:
	.short 0x19A9
	.short 0x19A3
	.short 0x198B
	.short 0

D_8004648C:
	.short 0x19A9
	.short 0x19A3
	.short 0x1979
	.short 0

D_80046494:
	.short 0x19A9
	.short 0x19A2
	.short 0x1984
	.short 0

D_8004649C:
	.short 0x19A9
	.short 0x19A2
	.short 0x197E
	.short 0

D_800464A4:
	.short 0x19A9
	.short 0x19A2
	.short 0x1990
	.short 0

D_800464AC:
	.short 0x19A9
	.short 0x19A2
	.short 0x198A
	.short 0

D_800464B4:
	.short 0x19A9
	.short 0x19A2
	.short 0x1978
	.short 0

D_800464BC:
	.short 0x19A6
	.short 0x199D
	.short 0x1967
	.short 0

D_800464C4:
	.short 0x19A6
	.short 0x199D
	.short 0x1961
	.short 0

D_800464CC:
	.short 0x19A6
	.short 0x199D
	.short 0x1973
	.short 0

D_800464D4:
	.short 0x19A6
	.short 0x199D
	.short 0x196D
	.short 0

D_800464DC:
	.short 0x19A6
	.short 0x199D
	.short 0x195B
	.short 0

D_800464E4:
	.short 0x19A6
	.short 0x199C
	.short 0x1966
	.short 0

D_800464EC:
	.short 0x19A6
	.short 0x199C
	.short 0x1960
	.short 0

D_800464F4:
	.short 0x19A6
	.short 0x199C
	.short 0x1972
	.short 0

D_800464FC:
	.short 0x19A6
	.short 0x199C
	.short 0x196C
	.short 0

D_80046504:
	.short 0x19A6
	.short 0x199C
	.short 0x195A
	.short 0

D_8004650C:
	.short 0x19A8
	.short 0x19A1
	.short 0x1983
	.short 0

D_80046514:
	.short 0x19A8
	.short 0x19A1
	.short 0x197D
	.short 0

D_8004651C:
	.short 0x19A8
	.short 0x19A1
	.short 0x198F
	.short 0

D_80046524:
	.short 0x19A8
	.short 0x19A1
	.short 0x1989
	.short 0

D_8004652C:
	.short 0x19A8
	.short 0x19A1
	.short 0x1977
	.short 0

D_80046534:
	.short 0x19A8
	.short 0x19A0
	.short 0x1982
	.short 0

D_8004653C:
	.short 0x19A8
	.short 0x19A0
	.short 0x197C
	.short 0

D_80046544:
	.short 0x19A8
	.short 0x19A0
	.short 0x198E
	.short 0

D_8004654C:
	.short 0x19A8
	.short 0x19A0
	.short 0x1988
	.short 0

D_80046554:
	.short 0x19A8
	.short 0x19A0
	.short 0x1976
	.short 0

D_8004655C:
	.short 0x19A5
	.short 0x199B
	.short 0x1965
	.short 0

D_80046564:
	.short 0x19A5
	.short 0x199B
	.short 0x195F
	.short 0

D_8004656C:
	.short 0x19A5
	.short 0x199B
	.short 0x1971
	.short 0

D_80046574:
	.short 0x19A5
	.short 0x199B
	.short 0x196B
	.short 0

D_8004657C:
	.short 0x19A5
	.short 0x199B
	.short 0x1959
	.short 0

D_80046584:
	.short 0x19A5
	.short 0x199A
	.short 0x1964
	.short 0

D_8004658C:
	.short 0x19A5
	.short 0x199A
	.short 0x195E
	.short 0

D_80046594:
	.short 0x19A5
	.short 0x199A
	.short 0x1970
	.short 0

D_8004659C:
	.short 0x19A5
	.short 0x199A
	.short 0x196A
	.short 0

D_800465A4:
	.short 0x19A5
	.short 0x199A
	.short 0x1958
	.short 0

/* ---------------------- */
ptrTbl_800465AC:
	.word D_800463CC
	.word D_8004646C
	.word D_8004650C

ptrTbl_800465B8:
	.word D_8004641C
	.word D_800464BC
	.word D_8004655C

ptrTbl_800465C4:
	.word ptrTbl_800465AC
	.word ptrTbl_800465AC
	.word ptrTbl_800465B8

/* ----------- */
ptrTbl_800465D0:
	.word D_800463F4
	.word D_80046494
	.word D_80046534

ptrTbl_800465DC:
	.word D_80046444
	.word D_800464E4
	.word D_80046584

ptrTbl_800465E8:
	.word ptrTbl_800465D0
	.word ptrTbl_800465D0
	.word ptrTbl_800465DC

/* ---------------------- */
ptrTbl_800465F4:
	.word ptrTbl_800465C4
	.word ptrTbl_800465C4
	.word ptrTbl_800465C4
	.word ptrTbl_800465E8

/* ---------------------- */
ptrTbl_80046604:
	.word D_800463D4
	.word D_80046474
	.word D_80046514

ptrTbl_80046610:
	.word D_80046424
	.word D_800464C4
	.word D_80046564

ptrTbl_8004661C:
	.word ptrTbl_80046604
	.word ptrTbl_80046604
	.word ptrTbl_80046610

/* ----------- */
ptrTbl_80046628:
	.word D_800463FC
	.word D_8004649C
	.word D_8004653C

ptrTbl_80046634:
	.word D_8004644C
	.word D_800464EC
	.word D_8004658C

ptrTbl_80046640:
	.word ptrTbl_80046628
	.word ptrTbl_80046628
	.word ptrTbl_80046634

/* ---------------------- */
ptrTbl_8004664C:
	.word ptrTbl_8004661C
	.word ptrTbl_8004661C
	.word ptrTbl_8004661C
	.word ptrTbl_80046640

/* ---------------------- */
ptrTbl_8004665C:
	.word D_800463DC
	.word D_8004647C
	.word D_8004651C

ptrTbl_80046668:
	.word D_8004642C
	.word D_800464CC
	.word D_8004656C

ptrTbl_80046674:
	.word ptrTbl_8004665C
	.word ptrTbl_8004665C
	.word ptrTbl_80046668

/* ----------- */
ptrTbl_80046680:
	.word D_80046404
	.word D_800464A4
	.word D_80046544

ptrTbl_8004668C:
	.word D_80046454
	.word D_800464F4
	.word D_80046594

ptrTbl_80046698:
	.word ptrTbl_80046680
	.word ptrTbl_80046680
	.word ptrTbl_8004668C

/* ---------------------- */
ptrTbl_800466A4:
	.word ptrTbl_80046674
	.word ptrTbl_80046674
	.word ptrTbl_80046674
	.word ptrTbl_80046698

/* ---------------------- */
ptrTbl_800466B4:
	.word D_800463E4
	.word D_80046484
	.word D_80046524

ptrTbl_800466C0:
	.word D_80046434
	.word D_800464D4
	.word D_80046574

ptrTbl_800466CC:
	.word ptrTbl_800466B4
	.word ptrTbl_800466B4
	.word ptrTbl_800466C0

/* ----------- */
ptrTbl_800466D8:
	.word D_8004640C
	.word D_800464AC
	.word D_8004654C

ptrTbl_800466E4:
	.word D_8004645C
	.word D_800464FC
	.word D_8004659C

ptrTbl_800466F0:
	.word ptrTbl_800466D8
	.word ptrTbl_800466D8
	.word ptrTbl_800466E4

/* ---------------------- */
ptrTbl_800466FC:
	.word ptrTbl_800466CC
	.word ptrTbl_800466CC
	.word ptrTbl_800466CC
	.word ptrTbl_800466F0

/* ---------------------- */
ptrTbl_8004670C:
	.word D_800463EC
	.word D_8004648C
	.word D_8004652C

ptrTbl_80046718:
	.word D_8004643C
	.word D_800464DC
	.word D_8004657C

ptrTbl_80046724:
	.word ptrTbl_8004670C
	.word ptrTbl_8004670C
	.word ptrTbl_80046718

/* ----------- */
ptrTbl_80046730:
	.word D_80046414
	.word D_800464B4
	.word D_80046554

ptrTbl_8004673C:
	.word D_80046464
	.word D_80046504
	.word D_800465A4

ptrTbl_80046748:
	.word ptrTbl_80046730
	.word ptrTbl_80046730
	.word ptrTbl_8004673C

/* ---------------------- */
ptrTbl_80046754:
	.word ptrTbl_80046724
	.word ptrTbl_80046724
	.word ptrTbl_80046724
	.word ptrTbl_80046748

/* ---------------------- */
ptrTbl_80046764:
	.word ptrTbl_800465F4
	.word ptrTbl_8004664C
	.word ptrTbl_800466A4
	.word ptrTbl_800466FC
	.word ptrTbl_80046754

/*----------------------------------------------------------------------------*/
# 80046778 (Z64 0x47378; data01 bin offset: 0xC434): begin MaskTextureSet entries

MaskTextureSet_Mask01:
	.short 0x19CE
	.short 0
	.short 0x19AA
	.short 0

MaskTextureSet_Mask02:
	.short 0x19CF
	.short 0
	.short 0x19AB
	.short 0

MaskTextureSet_Mask03:
	.short 0x19D0
	.short 0
	.short 0x19AC
	.short 0

MaskTextureSet_Mask04:
	.short 0x19D1
	.short 0
	.short 0x19AD
	.short 0

MaskTextureSet_Mask05:
	.short 0x19D2
	.short 0
	.short 0x19AE
	.short 0

MaskTextureSet_Mask06:
	.short 0x19D3
	.short 0
	.short 0x19AF
	.short 0

MaskTextureSet_Mask07:
	.short 0x19D4
	.short 0
	.short 0x19B0
	.short 0

MaskTextureSet_Mask08:
	.short 0x19D5
	.short 0
	.short 0x19B1
	.short 0

MaskTextureSet_Mask09:
	.short 0x19D6
	.short 0x19C9
	.short 0x19B2
	.short 0

MaskTextureSet_Mask10:
	.short 0x19D7
	.short 0
	.short 0x19B3
	.short 0

MaskTextureSet_Mask11:
	.short 0x19D8
	.short 0
	.short 0x19B4
	.short 0

MaskTextureSet_Mask12:
	.short 0x19D9
	.short 0
	.short 0x19B5
	.short 0

MaskTextureSet_Mask13:
	.short 0x19DA
	.short 0
	.short 0x19B6
	.short 0

MaskTextureSet_Mask14:
	.short 0x19DB
	.short 0
	.short 0x19B7
	.short 0

MaskTextureSet_Mask15:
	.short 0x19DC
	.short 0
	.short 0x19B8
	.short 0

MaskTextureSet_Mask16:
	.short 0x19DD
	.short 0
	.short 0x19B9
	.short 0

MaskTextureSet_Mask17:
	.short 0x19DE
	.short 0
	.short 0x19BA
	.short 0

MaskTextureSet_Mask18:
	.short 0x19DF
	.short 0
	.short 0x19BB
	.short 0

MaskTextureSet_Mask19:
	.short 0x19E0
	.short 0
	.short 0x19BC
	.short 0

MaskTextureSet_Mask20:
	.short 0x19E1
	.short 0
	.short 0x19BD
	.short 0

MaskTextureSet_Mask21:
	.short 0x19E2
	.short 0
	.short 0x19BE
	.short 0

MaskTextureSet_Mask22:
	.short 0x19E3
	.short 0
	.short 0x19BF
	.short 0

ptrTbl_MaskTextureSet:
	.word MaskTextureSet_Mask01
	.word MaskTextureSet_Mask02
	.word MaskTextureSet_Mask03
	.word MaskTextureSet_Mask04
	.word MaskTextureSet_Mask05
	.word MaskTextureSet_Mask06
	.word MaskTextureSet_Mask07
	.word MaskTextureSet_Mask08
	.word MaskTextureSet_Mask09
	.word MaskTextureSet_Mask10
	.word MaskTextureSet_Mask11
	.word MaskTextureSet_Mask12
	.word MaskTextureSet_Mask13
	.word MaskTextureSet_Mask14
	.word MaskTextureSet_Mask15
	.word MaskTextureSet_Mask16
	.word MaskTextureSet_Mask17
	.word MaskTextureSet_Mask18
	.word MaskTextureSet_Mask19
	.word MaskTextureSet_Mask20
	.word MaskTextureSet_Mask21
	.word MaskTextureSet_Mask22

# 80046880 (Z64 0x47480; data01 bin offset: 0xC53C) ripped mask textures
tbl_RippedMaskTextures:
	.short 0x19E4
	.short 0x19E5
	.short 0x19E6
	.short 0x19E7
	.short 0x19E8
	.short 0x19E9
	.short 0x19EA
	.short 0x19EB
	.short 0x19EC
	.short 0x19ED
	.short 0x19EE
	.short 0x19EF
	.short 0x19F0
	.short 0x19F1
	.short 0x19F2
	.short 0x19F3
	.short 0x19F4
	.short 0x19F5
	.short 0x19F6
	.short 0x19F7
	.short 0x19F8
	.short 0x19F9

# 800468AC (Z64 0x474AC; data01 bin offset: 0xC568) mask neck textures

D_800468AC:
	.short 0
	.short 0x19CA
	.short 0
	.short 0

D_800468B4:
	.short 0
	.short 0x19CB
	.short 0
	.short 0

D_800468BC:
	.short 0
	.short 0x19CC
	.short 0
	.short 0

D_800468C4:
	.short 0
	.short 0x19CD
	.short 0x19C0
	.short 0

ptrTbl_800468CC:
	.word D_800468AC
	.word D_800468B4
	.word D_800468BC
	.word D_800468C4

# 800468DC (Z64 0x474DC; data01 bin offset: 0xC598) head accessories 2

D_800468DC:
	.short 0x193E
	.short 0x19C1

D_800468E0:
	.short 0x1938
	.short 0x19C1

D_800468E4:
	.short 0x193F
	.short 0x19C2

D_800468E8:
	.short 0x1939
	.short 0x19C2

D_800468EC:
	.short 0x1940
	.short 0x19C3

D_800468F0:
	.short 0x193A
	.short 0x19C3

D_800468F4:
	.short 0x1941
	.short 0x19C4

D_800468F8:
	.short 0x193B
	.short 0x19C4

D_800468FC:
	.short 0x1942
	.short 0x19C5

D_80046900:
	.short 0x193C
	.short 0x19C5

D_80046904:
	.short 0x1944
	.short 0

D_80046908:
	.short 0x1947
	.short 0

D_8004690C:
	.short 0x194A
	.short 0

D_80046910:
	.short 0x194D
	.short 0

D_80046914:
	.short 0x1950
	.short 0

D_80046918:
	.short 0x1953
	.short 0

D_8004691C:
	.short 0x1932
	.short 0x19C6

D_80046920:
	.short 0x1934
	.short 0x19C6

D_80046924:
	.short 0x1936
	.short 0x19C6

D_80046928:
	.short 0x192C
	.short 0x19C6

D_8004692C:
	.short 0x192E
	.short 0x19C6

D_80046930:
	.short 0x1930
	.short 0x19C6

D_80046934:
	.short 0x1945
	.short 0

D_80046938:
	.short 0x1948
	.short 0

D_8004693C:
	.short 0x194B
	.short 0

D_80046940:
	.short 0x194E
	.short 0

D_80046944:
	.short 0x1951
	.short 0

D_80046948:
	.short 0x1954
	.short 0

D_8004694C:
	.short 0x1943
	.short 0x19C7

D_80046950:
	.short 0x193D
	.short 0x19C7

D_80046954:
	.short 0x1946
	.short 0

D_80046958:
	.short 0x1949
	.short 0

D_8004695C:
	.short 0x194C
	.short 0

D_80046960:
	.short 0x194F
	.short 0

D_80046964:
	.short 0x1952
	.short 0

D_80046968:
	.short 0x1955
	.short 0

D_8004696C:
	.short 0x1933
	.short 0x19C8

D_80046970:
	.short 0x1935
	.short 0x19C8

D_80046974:
	.short 0x1937
	.short 0x19C8

D_80046978:
	.short 0x192D
	.short 0x19C8

D_8004697C:
	.short 0x192F
	.short 0x19C8

D_80046980:
	.short 0x1931
	.short 0x19C8

ptrTbl_80046984:
	.word 0
	.word D_800468DC
	.word D_800468E4
	.word D_800468EC
	.word D_800468F4
	.word D_800468FC
	.word D_80046904
	.word D_8004691C
	.word D_80046934
	.word D_8004694C
	.word D_80046954
	.word D_8004696C

ptrTbl_800469B4:
	.word 0
	.word D_800468DC
	.word D_800468E4
	.word D_800468EC
	.word D_800468F4
	.word D_800468FC
	.word D_80046908
	.word D_80046920
	.word D_80046938
	.word D_8004694C
	.word D_80046958
	.word D_80046970

ptrTbl_800469E4:
	.word 0
	.word D_800468DC
	.word D_800468E4
	.word D_800468EC
	.word D_800468F4
	.word D_800468FC
	.word D_8004690C
	.word D_80046924
	.word D_8004693C
	.word D_8004694C
	.word D_8004695C
	.word D_80046974

ptrTbl_80046A14:
	.word 0
	.word D_800468E0
	.word D_800468E8
	.word D_800468F0
	.word D_800468F8
	.word D_80046900
	.word D_80046910
	.word D_80046928
	.word D_80046940
	.word D_80046950
	.word D_80046960
	.word D_80046978

ptrTbl_80046A44:
	.word 0
	.word D_800468E0
	.word D_800468E8
	.word D_800468F0
	.word D_800468F8
	.word D_80046900
	.word D_80046914
	.word D_8004692C
	.word D_80046944
	.word D_80046950
	.word D_80046964
	.word D_8004697C

ptrTbl_80046A74:
	.word 0
	.word D_800468E0
	.word D_800468E8
	.word D_800468F0
	.word D_800468F8
	.word D_80046900
	.word D_80046918
	.word D_80046930
	.word D_80046948
	.word D_80046950
	.word D_80046968
	.word D_80046980

ptrTbl_80046AA4:
	.word ptrTbl_80046984
	.word ptrTbl_80046984
	.word ptrTbl_80046A14

ptrTbl_80046AB0:
	.word ptrTbl_800469B4
	.word ptrTbl_800469B4
	.word ptrTbl_80046A44

ptrTbl_80046ABC:
	.word ptrTbl_800469E4
	.word ptrTbl_800469E4
	.word ptrTbl_80046A74

ptrTbl_80046AC8:
	.word ptrTbl_80046AA4
	.word ptrTbl_80046ABC
	.word ptrTbl_80046AB0

/*----------------------------------------------------------------------------*/
# 80046AD4 (Z64 0x476D4; data01 bin offset: 0xC790): mask default colors table

tbl_MaskDefaultColors:
	.byte 0x02, 0x03, 0x03, 0x01
	.byte 0x02, 0x03, 0x06, 0x01
	.byte 0x02, 0x03, 0x01, 0x03
	.byte 0x01, 0x02, 0x06, 0x03
	.byte 0x02, 0x01, 0x06, 0x03
	.byte 0x02, 0x06, 0x03, 0x01
	.byte 0x02, 0x06, 0x03, 0x01
	.byte 0x02, 0x03, 0x01, 0x06
	.byte 0x02, 0x01, 0x03, 0x02
	.byte 0x02, 0x01, 0x04, 0x01
	.byte 0x02, 0x01, 0x03, 0x06
	.byte 0x01, 0x03, 0x03, 0x02
	.byte 0x01, 0x03, 0x02, 0x06
	.byte 0x01, 0x01, 0x06, 0x02
	.byte 0x01, 0x1F, 0x03, 0x01
	.byte 0x02, 0x03, 0x02, 0x02
	.byte 0x02, 0x01, 0x01, 0x03
	.byte 0x02, 0x01, 0x06, 0x03
	.byte 0x03, 0x1F, 0x01, 0x1F
	.byte 0x0A, 0x03, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01
	.byte 0x03, 0x02, 0x01, 0x01

/*----------------------------------------------------------------------------*/
# 80046B2C
# other costume-related stuff

# 80046B2C [b] - related to boots?
D_80046B2C:
	.byte 0x00, 0x04, 0x04, 0x04, 0x00, 0x00, 0x08, 0x08
	.byte 0x04, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x04
	.byte 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x01, 0x02
	.byte 0xFF, 0xFF, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
	.byte 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10

# 80046B5C [b]
D_80046B5C:
	.byte 0x01, 0x02

# 80046B5E [b]
D_80046B5E:
	.byte 0x03, 0x06
	.byte 0x07, 0x08
	.byte 0x09, 0x0A
	.byte 0x0B, 0x0C
	.byte 0x0D, 0x0E
	.byte 0x0F, 0x10
	.byte 0x11, 0x12
	.byte 0x13, 0
	.byte 0, 0

# 80046B70 [b]
D_80046B70:
	.byte 0x0B, 0x09, 0x0A, 0x10, 0x11, 0x12, 0, 0

# 80046B78 [b]
D_80046B78:
	.byte 0x0C, 0x0B, 0, 0

# 80046B7C [b]
D_80046B7C:
	.byte 0x13, 0x10, 0, 0

# 80046B80 [b]
D_80046B80:
	.byte 0x0B, 0, 0, 0

# 80046B84 [b]
D_80046B84:
	.byte 0x10, 0, 0, 0

# 80046B88 [b]
D_80046B88:
	.byte 7, 6, 0, 0

# 80046B8C [b]
D_80046B8C:
	.byte 0x0E, 0x0D, 0, 0

# 80046B90 [b]
D_80046B90:
	.byte 6, 8, 0x0D, 0x0F, 0, 0, 0, 0

# 80046B98 [b] - related to mask colors? (data01 bin offset 0xC854)
D_80046B98:
	.byte 0x05, 0x04, 0x14, 0x15, 0, 0, 0, 0

# 80046BA0 [b]
D_80046BA0:
	.byte 0x16, 0x17, 0x18, 0

# 80046BA4 [h] - related to "extra models"?
D_80046BA4:
	.short 0xF00F, 0xF0F0, 0xFF00, 0

# 80046BAC [b]
D_80046BAC:
	.byte 0, 5, 4, 3, 2, 1, 0x0C, 0x0B, 9, 7, 6, 0x13, 0x10, 0x11, 0x0E, 0x0D

# 80046BBC [h]
D_80046BBC:
	.short 0x07C1, 0x003F

# 80046BC0 [b]
D_80046BC0:
	.byte 6, 1, 0, 0

# 80046BC4 [w] - related to costume colors being loaded; 0 if true
# probably belongs outside of this file
D_80046BC4:
	.word 1, 0, 0
