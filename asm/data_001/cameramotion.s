# Virtual Pro-Wrestling 2 | data_001/introdata.s
# Camera Motion data

/*----------------------------------------------------------------------------*/
# Camera Movement is defined as (location,framenum) pairs.
# frame 0x7FFF is the terminator value.

# Melonbread's important notes
# (src https://melonbread.co.uk/hacking-the-game-intro-camera-controls/)
# - "The game actually halves the frame value"
# - "the X axis is reversed for camera instructions"
# - "for the X axis, moving East takes us into negative values is the OPPOSITE from the Wrestler coordinate values"
# - (pitch) "negative values...point the camera upwards, positive values...point it downwards"

# "Height" should probably be "Y" and original "Y" should probably be "Z"

/*----------------------------------------------------------------------------*/
# 801267F0 (0x2720 offset)
# Camera Motion 0x80

D_801267F0:
	.short 0, 0x14
	.short 0, 0x7FFF

# 801267F8 (0x2728 offset)
D_801267F8:
	.short 0x05C8, 0x14
	.short 0, 0x7FFF

# 80126800 (0x2730 offset)
D_80126800:
	.short 0xF978, 0x14
	.short 0, 0x7FFF

# 80126808 (0x2738 offset)
D_80126808:
	.short 0x2A, 0x14
	.short 0, 0x7FFF

# 80126810 (0x2740 offset)
D_80126810:
	.short 0, 0x14
	.short 0, 0x7FFF

# 80126818 (0x2748 offset)
D_80126818:
	.short 0, 0x14
	.short 0, 0x7FFF

# 80126820 (0x2750 offset)
ptrTbl_80126820:
	.word D_801267F0 # x
	.word D_801267F8 # height
	.word D_80126800 # y
	.word D_80126808 # pitch
	.word D_80126810 # pan
	.word D_80126818 # roll

/*----------------------------------------------*/
# Camera Motion 0x81

# 80126838
D_80126838:
	.short 0x011B, 0
	.short 0x00FD, 0x007A
	.short 0, 0x7FFF

# 80126844
D_80126844:
	.short 0x0012, 0
	.short 0x0019, 0x007A
	.short 0, 0x7FFF

# 80126850
D_80126850:
	.short 0x01AC, 0
	.short 0x0111, 0x007A
	.short 0, 0x7FFF

# 8012685C
D_8012685C:
	.short 0xFFFA, 0
	.short 0xFFF5, 0x007A
	.short 0, 0x7FFF

# 80126868
D_80126868:
	.short 0x0046, 0
	.short 0x0030, 0x007A
	.short 0, 0x7FFF

# 80126874
D_80126874:
	.short 0, 0
	.short 0, 0x007A
	.short 0, 0x7FFF

# 80126880 (0x27B0 offset)
ptrTbl_80126880:
	.word D_80126838 # x
	.word D_80126844 # height
	.word D_80126850 # y
	.word D_8012685C # pitch
	.word D_80126868 # pan
	.word D_80126874 # roll

/*----------------------------------------------*/
# Camera Motion 0x82

# 80126898
D_80126898:
	.short 0xFFA8, 0x0000
	.short 0xFE76, 0x007A
	.short 0x0000, 0x7FFF

# 801268A4
D_801268A4:
	.short 0x0059, 0x0000
	.short 0x0173, 0x007A
	.short 0x0000, 0x7FFF

# 801268B0
D_801268B0:
	.short 0x00F2, 0x0000
	.short 0xFFC0, 0x007A
	.short 0x0000, 0x7FFF

# 801268BC
D_801268BC:
	.short 0xFFEB, 0x0000
	.short 0x0014, 0x007A
	.short 0x0000, 0x7FFF

# 801268C8
D_801268C8:
	.short 0x009E, 0x0000
	.short 0x0050, 0x007A
	.short 0x0000, 0x7FFF

# 801268D4
D_801268D4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 801268E0 (0x2810 offset)
ptrTbl_801268E0:
	.word D_80126898 # x
	.word D_801268A4 # height
	.word D_801268B0 # y
	.word D_801268BC # pitch
	.word D_801268C8 # pan
	.word D_801268D4 # roll

/*----------------------------------------------*/
# Camera Motion 0x83

# 801268F8
D_801268F8:
	.short 0xFFF1, 0x0000
	.short 0x001B, 0x003E
	.short 0x0000, 0x7FFF

# 80126904
D_80126904:
	.short 0x0064, 0x0000
	.short 0x006E, 0x003E
	.short 0x0000, 0x7FFF

# 80126910
D_80126910:
	.short 0xFE82, 0x0000
	.short 0xFF34, 0x003E
	.short 0x0000, 0x7FFF

# 8012691C
D_8012691C:
	.short 0xFFFB, 0x0000
	.short 0xFFF8, 0x003E
	.short 0x0000, 0x7FFF

# 80126928
D_80126928:
	.short 0x000D, 0x0000
	.short 0x000F, 0x003E
	.short 0x0000, 0x7FFF

# 80126934
D_80126934:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126940 (0x2870 offset)
ptrTbl_80126940:
	.word D_801268F8 # x
	.word D_80126904 # height
	.word D_80126910 # y
	.word D_8012691C # pitch
	.word D_80126928 # pan
	.word D_80126934 # roll

/*----------------------------------------------*/
# Camera Motion 0x84

# 80126958
D_80126958:
	.short 0xFF4A, 0x0000
	.short 0xFF4A, 0x003E
	.short 0x0000, 0x7FFF

# 80126964
D_80126964:
	.short 0x0052, 0x0000
	.short 0x0052, 0x003E
	.short 0x0000, 0x7FFF

# 80126970
D_80126970:
	.short 0xFD95, 0x0000
	.short 0xFD95, 0x003E
	.short 0x0000, 0x7FFF

# 8012697C
D_8012697C:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x003E
	.short 0x0000, 0x7FFF

# 80126988
D_80126988:
	.short 0x002C, 0x0000
	.short 0x0025, 0x003E
	.short 0x0000, 0x7FFF

# 80126994
D_80126994:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801269A0 (0x28D0 offset)
ptrTbl_801269A0:
	.word D_80126958 # x
	.word D_80126964 # height
	.word D_80126970 # y
	.word D_8012697C # pitch
	.word D_80126988 # pan
	.word D_80126994 # roll

/*----------------------------------------------*/
# Camera Motion 0x85

# 801269B8
D_801269B8:
	.short 0xFEA4, 0x0000
	.short 0xFE87, 0x007A
	.short 0x0000, 0x7FFF

# 801269C4
D_801269C4:
	.short 0x0011, 0x0000
	.short 0x007C, 0x007A
	.short 0x0000, 0x7FFF

# 801269D0
D_801269D0:
	.short 0x0116, 0x0000
	.short 0x013B, 0x007A
	.short 0x0000, 0x7FFF

# 801269DC
D_801269DC:
	.short 0xFFF7, 0x0000
	.short 0xFFFD, 0x007A
	.short 0x0000, 0x7FFF

# 801269E8
D_801269E8:
	.short 0xFFDE, 0x0000
	.short 0xFFE1, 0x007A
	.short 0x0000, 0x7FFF

# 801269F4
D_801269F4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80126A00 (0x2930 offset)
ptrTbl_80126A00:
	.word D_801269B8 # x
	.word D_801269C4 # height
	.word D_801269D0 # y
	.word D_801269DC # pitch
	.word D_801269E8 # pan
	.word D_801269F4 # roll

/*----------------------------------------------*/
# Camera Motion 0x86

# 80126A18
D_80126A18:
	.short 0xFF44, 0x0000
	.short 0xFF44, 0x003E
	.short 0x0000, 0x7FFF

# 80126A24
D_80126A24:
	.short 0x0090, 0x0000
	.short 0x0090, 0x003E
	.short 0x0000, 0x7FFF

# 80126A30
D_80126A30:
	.short 0xFFA9, 0x0000
	.short 0xFFA9, 0x003E
	.short 0x0000, 0x7FFF

# 80126A3C
D_80126A3C:
	.short 0xFFF5, 0x0000
	.short 0xFFE0, 0x003E
	.short 0x0000, 0x7FFF

# 80126A48
D_80126A48:
	.short 0x0041, 0x0000
	.short 0x0045, 0x003E
	.short 0x0000, 0x7FFF

# 80126A54
D_80126A54:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126A60 (0x2990 offset)
ptrTbl_80126A60:
	.word D_80126A18 # x
	.word D_80126A24 # height
	.word D_80126A30 # y
	.word D_80126A3C # pitch
	.word D_80126A48 # pan
	.word D_80126A54 # roll

/*----------------------------------------------*/
# Camera Motion 0x87

# 80126A78 (0x29A8 offset)
D_80126A78:
	.short 0x016F, 0x0000
	.short 0x0194, 0x003E
	.short 0x0000, 0x7FFF

# 80126A84
D_80126A84:
	.short 0x0064, 0x0000
	.short 0x00C4, 0x003E
	.short 0x0000, 0x7FFF

# 80126A90
D_80126A90:
	.short 0xFF2F, 0x0000
	.short 0xFEEE, 0x003E
	.short 0x0000, 0x7FFF

# 80126A9C
D_80126A9C:
	.short 0xFFF3, 0x0000
	.short 0xFFF8, 0x003E
	.short 0x0000, 0x7FFF

# 80126AA8
D_80126AA8:
	.short 0xFFBF, 0x0000
	.short 0xFFBC, 0x003E
	.short 0x0000, 0x7FFF

# 80126AB4
D_80126AB4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126AC0 (0x29F0 offset)
ptrTbl_80126AC0:
	.word D_80126A78 # x
	.word D_80126A84 # height
	.word D_80126A90 # y
	.word D_80126A9C # pitch
	.word D_80126AA8 # pan
	.word D_80126AB4 # roll

/*----------------------------------------------*/
# Camera Motion 0x88

# 80126AD8
D_80126AD8:
	.short 0xFF46, 0x0000
	.short 0xFF78, 0x0052
	.short 0x0000, 0x7FFF

# 80126AE4
D_80126AE4:
	.short 0x006C, 0x0000
	.short 0x006C, 0x0052
	.short 0x0000, 0x7FFF

# 80126AF0
D_80126AF0:
	.short 0xFE75, 0x0000
	.short 0xFE75, 0x0052
	.short 0x0000, 0x7FFF

# 80126AFC
D_80126AFC:
	.short 0xFFF8, 0x0000
	.short 0xFFF2, 0x0052
	.short 0x0000, 0x7FFF

# 80126B08
D_80126B08:
	.short 0x0019, 0x0000
	.short 0x001D, 0x0052
	.short 0x0000, 0x7FFF

# 80126B14
D_80126B14:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80126B20
ptrTbl_80126B20:
	.word D_80126AD8 # x
	.word D_80126AE4 # height
	.word D_80126AF0 # y
	.word D_80126AFC # pitch
	.word D_80126B08 # pan
	.word D_80126B14 # roll

/*----------------------------------------------*/
# Camera Motion 0x89

# 80126B38
D_80126B38:
	.short 0x00A9, 0x0000
	.short 0x010A, 0x0052
	.short 0x0000, 0x7FFF

# 80126B44
D_80126B44:
	.short 0x008E, 0x0000
	.short 0x005E, 0x0052
	.short 0x0000, 0x7FFF

# 80126B50
D_80126B50:
	.short 0x000B, 0x0000
	.short 0xFF5D, 0x0052
	.short 0x0000, 0x7FFF

# 80126B5C
D_80126B5C:
	.short 0xFFEE, 0x0000
	.short 0xFFF4, 0x0052
	.short 0x0000, 0x7FFF

# 80126B68
D_80126B68:
	.short 0xFFC0, 0x0000
	.short 0xFFC8, 0x0052
	.short 0x0000, 0x7FFF

# 80126B74
D_80126B74:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80126B80
ptrTbl_80126B80:
	.word D_80126B38 # x
	.word D_80126B44 # height
	.word D_80126B50 # y
	.word D_80126B5C # pitch
	.word D_80126B68 # pan
	.word D_80126B74 # roll

/*----------------------------------------------*/
# Camera Motion 0x8A

# 80126B98
D_80126B98:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126BA4
D_80126BA4:
	.short 0x0105, 0x0000
	.short 0x008C, 0x003E
	.short 0x0000, 0x7FFF

# 80126BB0
D_80126BB0:
	.short 0xFC6E, 0x0000
	.short 0xFED4, 0x003E
	.short 0x0000, 0x7FFF

# 80126BBC
D_80126BBC:
	.short 0x0007, 0x0000
	.short 0xFFFA, 0x003E
	.short 0x0000, 0x7FFF

# 80126BC8
D_80126BC8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126BD4
D_80126BD4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126BE0
ptrTbl_80126BE0:
	.word D_80126B98 # x
	.word D_80126BA4 # height
	.word D_80126BB0 # y
	.word D_80126BBC # pitch
	.word D_80126BC8 # pan
	.word D_80126BD4 # roll

/*----------------------------------------------*/
# Camera Motion 0x8B

D_80126BF8:
	.short 0x0000, 0x0000
	.short 0xFF2C, 0x000E
	.short 0xFED4, 0x001E
	.short 0xFF2C, 0x002C
	.short 0x0000, 0x003C
	.short 0x00D4, 0x004A
	.short 0x012C, 0x005A
	.short 0x00D4, 0x0068
	.short 0x0000, 0x0078
	.short 0x0000, 0x7FFF

D_80126C20:
	.short 0xFED4, 0x0000
	.short 0xFF2C, 0x000E
	.short 0x0000, 0x001E
	.short 0x00D4, 0x002C
	.short 0x012C, 0x003C
	.short 0x00D4, 0x004A
	.short 0x0000, 0x005A
	.short 0xFF2C, 0x0068
	.short 0xFED4, 0x0078
	.short 0x0000, 0x7FFF

D_80126C48:
	.short 0x0000, 0x0000
	.short 0x002D, 0x000E
	.short 0x005A, 0x001E
	.short 0x0087, 0x002C
	.short 0x00B4, 0x003C
	.short 0x00E1, 0x004A
	.short 0x010E, 0x005A
	.short 0x013B, 0x0068
	.short 0x0168, 0x0078
	.short 0x0000, 0x7FFF

D_80126C70:
	.short 0x008C, 0x0000
	.short 0x008C, 0x0078
	.short 0x0000, 0x7FFF

D_80126C7C:
	.short 0xFFFA, 0x0000
	.short 0xFFFA, 0x0078
	.short 0x0000, 0x7FFF

D_80126C88:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0078
	.short 0x0000, 0x7FFF

ptrTbl_80126C94:
	.word D_80126BF8 # x
	.word D_80126C70 # height
	.word D_80126C20 # y
	.word D_80126C7C # pitch
	.word D_80126C48 # pan
	.word D_80126C88 # roll

/*----------------------------------------------*/
# Camera Motion 0x8C

D_80126CAC:
	.short 0x0000, 0x0000
	.short 0x002D, 0x003E
	.short 0x0000, 0x7FFF

D_80126CB8:
	.short 0x008C, 0x0000
	.short 0x0068, 0x003E
	.short 0x0000, 0x7FFF

D_80126CC4:
	.short 0xFED4, 0x0000
	.short 0xFD06, 0x003E
	.short 0x0000, 0x7FFF

D_80126CD0:
	.short 0xFFFA, 0x0000
	.short 0xFFFA, 0x003E
	.short 0x0000, 0x7FFF

D_80126CDC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

D_80126CE8:
	.short 0x0000, 0x0000
	.short 0x0023, 0x003E
	.short 0x0000, 0x7FFF

ptrTbl_80126CF4:
	.word D_80126CAC # x
	.word D_80126CB8 # height
	.word D_80126CC4 # y
	.word D_80126CD0 # pitch
	.word D_80126CDC # pan
	.word D_80126CE8 # roll

/*----------------------------------------------*/
# Camera Motion 0x8D

# 80126D0C
D_80126D0C:
	.short 0x0029, 0x0014
	.short 0x0000, 0x7FFF

# 80126D14
D_80126D14:
	.short 0x008B, 0x0014
	.short 0x0000, 0x7FFF

# 80126D1C
D_80126D1C:
	.short 0xFF69, 0x0014
	.short 0x0000, 0x7FFF

# 80126D24
D_80126D24:
	.short 0xFFFE, 0x0014
	.short 0x0000, 0x7FFF

# 80126D2C
D_80126D2C:
	.short 0x017A, 0x0014
	.short 0x0000, 0x7FFF

# 80126D34
D_80126D34:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80126D3C
ptrTbl_80126D3C:
	.word D_80126D0C # x
	.word D_80126D14 # height
	.word D_80126D1C # y
	.word D_80126D24 # pitch
	.word D_80126D2C # pan
	.word D_80126D34 # roll

/*----------------------------------------------*/
# Camera Motion 0x8E

# 80126D54
D_80126D54:
	.short 0xFF96, 0x0000
	.short 0xFF05, 0x003E
	.short 0x0000, 0x7FFF

# 80126D60
D_80126D60:
	.short 0x0075, 0x0000
	.short 0x0067, 0x003E
	.short 0x0000, 0x7FFF

# 80126D6C
D_80126D6C:
	.short 0xFEFA, 0x0000
	.short 0xFF18, 0x003E
	.short 0x0000, 0x7FFF

# 80126D78
D_80126D78:
	.short 0xFFF0, 0x0000
	.short 0xFFF8, 0x003E
	.short 0x0000, 0x7FFF

# 80126D84
D_80126D84:
	.short 0x017D, 0x0000
	.short 0x0197, 0x003E
	.short 0x0000, 0x7FFF

# 80126D90
D_80126D90:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126D9C
ptrTbl_80126D9C:
	.word D_80126D54 # x
	.word D_80126D60 # height
	.word D_80126D6C # y
	.word D_80126D78 # pitch
	.word D_80126D84 # pan
	.word D_80126D90 # roll

/*----------------------------------------------*/
# Camera Motion 0x8F

# 80126DB4
D_80126DB4:
	.short 0xFF8A, 0x0000
	.short 0xFEED, 0x0066
	.short 0x0000, 0x7FFF

# 80126DC0
D_80126DC0:
	.short 0x0088, 0x0000
	.short 0x008E, 0x0066
	.short 0x0000, 0x7FFF

# 80126DCC
D_80126DCC:
	.short 0xFEDF, 0x0000
	.short 0x000A, 0x0066
	.short 0x0000, 0x7FFF

# 80126DD8
D_80126DD8:
	.short 0xFFF1, 0x0000
	.short 0xFFFE, 0x0066
	.short 0x0000, 0x7FFF

# 80126DE4
D_80126DE4:
	.short 0x0049, 0x0000
	.short 0x005F, 0x0066
	.short 0x0000, 0x7FFF

# 80126DF0
D_80126DF0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 80126DFC
ptrTbl_80126DFC:
	.word D_80126DB4 # x
	.word D_80126DC0 # height
	.word D_80126DCC # y
	.word D_80126DD8 # pitch
	.word D_80126DE4 # pan
	.word D_80126DF0 # roll

/*----------------------------------------------*/
# Camera Motion 0x90

# 80126E14
D_80126E14:
	.short 0x017B, 0x0000
	.short 0x017B, 0x0052
	.short 0x0000, 0x7FFF

# 80126E20
D_80126E20:
	.short 0x007F, 0x0000
	.short 0x007F, 0x0052
	.short 0x0000, 0x7FFF

# 80126E2C
D_80126E2C:
	.short 0x00DD, 0x0000
	.short 0x00DD, 0x0052
	.short 0x0000, 0x7FFF

# 80126E38
D_80126E38:
	.short 0xFFFC, 0x0000
	.short 0xFFFC, 0x0052
	.short 0x0000, 0x7FFF

# 80126E44
D_80126E44:
	.short 0x00E9, 0x0000
	.short 0x00FF, 0x0052
	.short 0x0000, 0x7FFF

# 80126E50
D_80126E50:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80126E5C
ptrTbl_80126E5C:
	.word D_80126E14 # x
	.word D_80126E20 # height
	.word D_80126E2C # y
	.word D_80126E38 # pitch
	.word D_80126E44 # pan
	.word D_80126E50 # roll

/*----------------------------------------------*/
# Camera Motion 0x91

# 80126E74
D_80126E74:
	.short 0xFF43, 0x0000
	.short 0xFF6F, 0x0048
	.short 0x0000, 0x7FFF

# 80126E80
D_80126E80:
	.short 0x007D, 0x0000
	.short 0x005F, 0x0048
	.short 0x0000, 0x7FFF

# 80126E8C
D_80126E8C:
	.short 0xFE76, 0x0000
	.short 0xFDFA, 0x0048
	.short 0x0000, 0x7FFF

# 80126E98
D_80126E98:
	.short 0xFFF1, 0x0000
	.short 0xFFF4, 0x0048
	.short 0x0000, 0x7FFF

# 80126EA4
D_80126EA4:
	.short 0xFEBF, 0x0000
	.short 0xFEAF, 0x0048
	.short 0x0000, 0x7FFF

# 80126EB0
D_80126EB0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0048
	.short 0x0000, 0x7FFF

# 80126EBC
ptrTbl_80126EBC:
	.word D_80126E74 # x
	.word D_80126E80 # height
	.word D_80126E8C # y
	.word D_80126E98 # pitch
	.word D_80126EA4 # pan
	.word D_80126EB0 # roll

/*----------------------------------------------*/
# Camera Motion 0x92

# 80126ED4
D_80126ED4:
	.short 0xFF0E, 0x0000
	.short 0xFFC3, 0x0052
	.short 0x0000, 0x7FFF

# 80126EE0
D_80126EE0:
	.short 0x006C, 0x0000
	.short 0x006B, 0x0052
	.short 0x0000, 0x7FFF

# 80126EEC
D_80126EEC:
	.short 0xFF88, 0x0000
	.short 0xFEDB, 0x0052
	.short 0x0000, 0x7FFF

# 80126EF8
D_80126EF8:
	.short 0xFFF7, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80126F04
D_80126F04:
	.short 0x003E, 0x0000
	.short 0x0014, 0x0052
	.short 0x0000, 0x7FFF

# 80126F10
D_80126F10:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80126F1C
ptrTbl_80126F1C:
	.word D_80126ED4 # x
	.word D_80126EE0 # height
	.word D_80126EEC # y
	.word D_80126EF8 # pitch
	.word D_80126F04 # pan
	.word D_80126F10 # roll

/*----------------------------------------------*/
# Camera Motion 0x93

# 80126F34
D_80126F34:
	.short 0xFFB8, 0x0000
	.short 0xFFB8, 0x003E
	.short 0x0000, 0x7FFF

# 80126F40
D_80126F40:
	.short 0x005C, 0x0000
	.short 0x005C, 0x003E
	.short 0x0000, 0x7FFF

# 80126F4C
D_80126F4C:
	.short 0xFE50, 0x0000
	.short 0xFE50, 0x003E
	.short 0x0000, 0x7FFF

# 80126F58
D_80126F58:
	.short 0xFFF5, 0x0000
	.short 0xFFF3, 0x003E
	.short 0x0000, 0x7FFF

# 80126F64
D_80126F64:
	.short 0x0018, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126F70
D_80126F70:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80126F7C
ptrTbl_80126F7C:
	.word D_80126F34 # x
	.word D_80126F40 # height
	.word D_80126F4C # y
	.word D_80126F58 # pitch
	.word D_80126F64 # pan
	.word D_80126F70 # roll

/*----------------------------------------------*/
# Camera Motion 0x94

# 80126F94
D_80126F94:
	.short 0x0043, 0x0000
	.short 0x0043, 0x0052
	.short 0x0000, 0x7FFF

# 80126FA0
D_80126FA0:
	.short 0x006C, 0x0000
	.short 0x006C, 0x0052
	.short 0x0000, 0x7FFF

# 80126FAC
D_80126FAC:
	.short 0xFF20, 0x0000
	.short 0xFF20, 0x0052
	.short 0x0000, 0x7FFF

# 80126FB8
D_80126FB8:
	.short 0xFFF8, 0x0000
	.short 0xFFF8, 0x0052
	.short 0x0000, 0x7FFF

# 80126FC4
D_80126FC4:
	.short 0x0147, 0x0000
	.short 0x0157, 0x0052
	.short 0x0000, 0x7FFF

# 80126FD0
D_80126FD0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80126FDC
ptrTbl_80126FDC:
	.word D_80126F94 # x
	.word D_80126FA0 # height
	.word D_80126FAC # y
	.word D_80126FB8 # pitch
	.word D_80126FC4 # pan
	.word D_80126FD0 # roll

/*----------------------------------------------*/
# Camera Motion 0x95

# 80126FF4
D_80126FF4:
	.short 0x017F, 0x0000
	.short 0x017F, 0x0052
	.short 0x0000, 0x7FFF

# 80127000
D_80127000:
	.short 0x0067, 0x0000
	.short 0x0067, 0x0052
	.short 0x0000, 0x7FFF

# 8012700C
D_8012700C:
	.short 0xFF35, 0x0000
	.short 0xFF35, 0x0052
	.short 0x0000, 0x7FFF

# 80127018
D_80127018:
	.short 0xFFFA, 0x0000
	.short 0xFFF8, 0x0052
	.short 0x0000, 0x7FFF

# 80127024
D_80127024:
	.short 0xFFCD, 0x0000
	.short 0xFFB5, 0x0052
	.short 0x0000, 0x7FFF

# 80127030
D_80127030:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012703C
ptrTbl_8012703C:
	.word D_80126FF4 # x
	.word D_80127000 # height
	.word D_8012700C # y
	.word D_80127018 # pitch
	.word D_80127024 # pan
	.word D_80127030 # roll

/*----------------------------------------------*/
# Camera Motion 0x96

# 80127054
D_80127054:
	.short 0x0487, 0x0000
	.short 0x0487, 0x0052
	.short 0x0000, 0x7FFF

# 80127060
D_80127060:
	.short 0x006E, 0x0000
	.short 0x006E, 0x0052
	.short 0x0000, 0x7FFF

# 8012706C
D_8012706C:
	.short 0xFFE9, 0x0000
	.short 0xFFE9, 0x0052
	.short 0x0000, 0x7FFF

# 80127078
D_80127078:
	.short 0xFFF6, 0x0000
	.short 0xFFF6, 0x0052
	.short 0x0000, 0x7FFF

# 80127084
D_80127084:
	.short 0xFFB4, 0x0000
	.short 0xFFA1, 0x0052
	.short 0x0000, 0x7FFF

# 80127090
D_80127090:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012709C
ptrTbl_8012709C:
	.word D_80127054 # x
	.word D_80127060 # height
	.word D_8012706C # y
	.word D_80127078 # pitch
	.word D_80127084 # pan
	.word D_80127090 # roll

/*----------------------------------------------*/
# Camera Motion 0x97

# 801270B4
D_801270B4:
	.short 0xFFA9, 0x0000
	.short 0xFF6F, 0x0052
	.short 0x0000, 0x7FFF

# 801270C0
D_801270C0:
	.short 0x0077, 0x0000
	.short 0x0068, 0x0052
	.short 0x0000, 0x7FFF

# 801270CC
D_801270CC:
	.short 0xFE5B, 0x0000
	.short 0xFE65, 0x0052
	.short 0x0000, 0x7FFF

# 801270D8
D_801270D8:
	.short 0xFFF7, 0x0000
	.short 0xFFED, 0x0052
	.short 0x0000, 0x7FFF

# 801270E4
D_801270E4:
	.short 0x002E, 0x0000
	.short 0x001F, 0x0052
	.short 0x0000, 0x7FFF

# 801270F0
D_801270F0:
	.short 0x0000, 0x0000
	.short 0xFFE9, 0x0052
	.short 0x0000, 0x7FFF

# 801270FC
ptrTbl_801270FC:
	.word D_801270B4 # x
	.word D_801270C0 # height
	.word D_801270CC # y
	.word D_801270D8 # pitch
	.word D_801270E4 # pan
	.word D_801270F0 # roll

/*----------------------------------------------*/
# Camera Motion 0x98

# 80127114
D_80127114:
	.short 0x00EC, 0x0000
	.short 0x00DF, 0x0052
	.short 0x0000, 0x7FFF

# 80127120
D_80127120:
	.short 0x007F, 0x0000
	.short 0x006F, 0x0052
	.short 0x0000, 0x7FFF

# 8012712C
D_8012712C:
	.short 0xFE8D, 0x0000
	.short 0xFE40, 0x0052
	.short 0x0000, 0x7FFF

# 80127138
D_80127138:
	.short 0xFFEF, 0x0000
	.short 0xFFF9, 0x0052
	.short 0x0000, 0x7FFF

# 80127144
D_80127144:
	.short 0xFFCC, 0x0000
	.short 0xFFE7, 0x0052
	.short 0x0000, 0x7FFF

# 80127150
D_80127150:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012715C
ptrTbl_8012715C:
	.word D_80127114 # x
	.word D_80127120 # height
	.word D_8012712C # y
	.word D_80127138 # pitch
	.word D_80127144 # pan
	.word D_80127150 # roll

/*----------------------------------------------*/
# Camera Motion 0x99

# 80127174
D_80127174:
	.short 0x0044, 0x0000
	.short 0xFF53, 0x0066
	.short 0x0000, 0x7FFF

# 80127180
D_80127180:
	.short 0x009B, 0x0000
	.short 0x0081, 0x0066
	.short 0x0000, 0x7FFF

# 8012718C
D_8012718C:
	.short 0xFE50, 0x0000
	.short 0xFEA0, 0x0066
	.short 0x0000, 0x7FFF

# 80127198
D_80127198:
	.short 0xFFF2, 0x0000
	.short 0xFFF9, 0x0066
	.short 0x0000, 0x7FFF

# 801271A4
D_801271A4:
	.short 0x0015, 0x0000
	.short 0x0042, 0x0066
	.short 0x0000, 0x7FFF

# 801271B0
D_801271B0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 801271BC
ptrTbl_801271BC:
	.word D_80127174 # x
	.word D_80127180 # height
	.word D_8012718C # y
	.word D_80127198 # pitch
	.word D_801271A4 # pan
	.word D_801271B0 # roll

/*----------------------------------------------*/
# Camera Motion 0x9A

# 801271D4
D_801271D4:
	.short 0xFF6C, 0x0000
	.short 0xFFA2, 0x0052
	.short 0x0000, 0x7FFF

# 801271E0
D_801271E0:
	.short 0x0060, 0x0000
	.short 0x0061, 0x0052
	.short 0x0000, 0x7FFF

# 801271EC
D_801271EC:
	.short 0x0194, 0x0000
	.short 0x0184, 0x0052
	.short 0x0000, 0x7FFF

# 801271F8
D_801271F8:
	.short 0xFFEE, 0x0000
	.short 0xFFF1, 0x0052
	.short 0x0000, 0x7FFF

# 80127204
D_80127204:
	.short 0x00A1, 0x0000
	.short 0x00A8, 0x0052
	.short 0x0000, 0x7FFF

# 80127210
D_80127210:
	.short 0xFFF5, 0x0000
	.short 0xFFEE, 0x0052
	.short 0x0000, 0x7FFF

# 8012721C
ptrTbl_8012721C:
	.word D_801271D4 # x
	.word D_801271E0 # height
	.word D_801271EC # y
	.word D_801271F8 # pitch
	.word D_80127204 # pan
	.word D_80127210 # roll

/*----------------------------------------------*/
# Camera Motion 0x9B

# 80127234
D_80127234:
	.short 0xFF05, 0x0000
	.short 0xFFEA, 0x0052
	.short 0x0000, 0x7FFF

# 80127240
D_80127240:
	.short 0x0070, 0x0000
	.short 0x0067, 0x0052
	.short 0x0000, 0x7FFF

# 8012724C
D_8012724C:
	.short 0xFF86, 0x0000
	.short 0xFF14, 0x0052
	.short 0x0000, 0x7FFF

# 80127258
D_80127258:
	.short 0xFFF3, 0x0000
	.short 0xFFEC, 0x0052
	.short 0x0000, 0x7FFF

# 80127264
D_80127264:
	.short 0x019B, 0x0000
	.short 0x016B, 0x0052
	.short 0x0000, 0x7FFF

# 80127270
D_80127270:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012727C
ptrTbl_8012727C:
	.word D_80127234 # x
	.word D_80127240 # height
	.word D_8012724C # y
	.word D_80127258 # pitch
	.word D_80127264 # pan
	.word D_80127270 # roll

/*----------------------------------------------*/
# Camera Motion 0x9C

# 80127294
D_80127294:
	.short 0x0034, 0x0000
	.short 0x00A8, 0x0052
	.short 0x0000, 0x7FFF

# 801272A0
D_801272A0:
	.short 0x0067, 0x0000
	.short 0x0063, 0x0052
	.short 0x0000, 0x7FFF

# 801272AC
D_801272AC:
	.short 0xFEF9, 0x0000
	.short 0xFF20, 0x0052
	.short 0x0000, 0x7FFF

# 801272B8
D_801272B8:
	.short 0xFFF7, 0x0000
	.short 0xFFF5, 0x0052
	.short 0x0000, 0x7FFF

# 801272C4
D_801272C4:
	.short 0xFFFD, 0x0000
	.short 0xFFDD, 0x0052
	.short 0x0000, 0x7FFF

# 801272D0
D_801272D0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801272DC
ptrTbl_801272DC:
	.word D_80127294 # x
	.word D_801272A0 # height
	.word D_801272AC # y
	.word D_801272B8 # pitch
	.word D_801272C4 # pan
	.word D_801272D0 # roll

/*----------------------------------------------*/
# Camera Motion 0x9D

# 801272F4
D_801272F4:
	.short 0xFEFE, 0x0000
	.short 0xFFBD, 0x0052
	.short 0x0000, 0x7FFF

# 80127300
D_80127300:
	.short 0x0070, 0x0000
	.short 0x006F, 0x0052
	.short 0x0000, 0x7FFF

# 8012730C
D_8012730C:
	.short 0xFF71, 0x0000
	.short 0xFEE7, 0x0052
	.short 0x0000, 0x7FFF

# 80127318
D_80127318:
	.short 0xFFF5, 0x0000
	.short 0xFFF8, 0x0052
	.short 0x0000, 0x7FFF

# 80127324
D_80127324:
	.short 0x0034, 0x0000
	.short 0x0009, 0x0052
	.short 0x0000, 0x7FFF

# 80127330
D_80127330:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012733C
ptrTbl_8012733C:
	.word D_801272F4 # x
	.word D_80127300 # height
	.word D_8012730C # y
	.word D_80127318 # pitch
	.word D_80127324 # pan
	.word D_80127330 # roll

/*----------------------------------------------*/
# Camera Motion 0x9E

# 80127354
D_80127354:
	.short 0x004F, 0x0000
	.short 0x00A8, 0x0052
	.short 0x0000, 0x7FFF

# 80127360
D_80127360:
	.short 0x0079, 0x0000
	.short 0x007A, 0x0052
	.short 0x0000, 0x7FFF

# 8012736C
D_8012736C:
	.short 0xFF26, 0x0000
	.short 0xFF6A, 0x0052
	.short 0x0000, 0x7FFF

# 80127378
D_80127378:
	.short 0xFFFD, 0x0000
	.short 0xFFFF, 0x0052
	.short 0x0000, 0x7FFF

# 80127384
D_80127384:
	.short 0x0164, 0x0000
	.short 0x014D, 0x0052
	.short 0x0000, 0x7FFF

# 80127390
D_80127390:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012739C
ptrTbl_8012739C:
	.word D_80127354 # x
	.word D_80127360 # height
	.word D_8012736C # y
	.word D_80127378 # pitch
	.word D_80127384 # pan
	.word D_80127390 # roll

/*----------------------------------------------*/
# Camera Motion 0x9F

# 801273B4
D_801273B4:
	.short 0x005F, 0x0000
	.short 0xFFBA, 0x0052
	.short 0x0000, 0x7FFF

# 801273C0
D_801273C0:
	.short 0x0060, 0x0000
	.short 0x006C, 0x0052
	.short 0x0000, 0x7FFF

# 801273CC
D_801273CC:
	.short 0xFEFB, 0x0000
	.short 0xFEDC, 0x0052
	.short 0x0000, 0x7FFF

# 801273D8
D_801273D8:
	.short 0xFFE7, 0x0000
	.short 0xFFF9, 0x0052
	.short 0x0000, 0x7FFF

# 801273E4
D_801273E4:
	.short 0x014D, 0x0000
	.short 0x0173, 0x0052
	.short 0x0000, 0x7FFF

# 801273F0
D_801273F0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801273FC
ptrTbl_801273FC:
	.word D_801273B4 # x
	.word D_801273C0 # height
	.word D_801273CC # y
	.word D_801273D8 # pitch
	.word D_801273E4 # pan
	.word D_801273F0 # roll

/*----------------------------------------------*/
# Camera Motion 0xA0

# 80127414
D_80127414:
	.short 0xFF09, 0x0000
	.short 0xFF22, 0x0052
	.short 0x0000, 0x7FFF

# 80127420
D_80127420:
	.short 0x0081, 0x0000
	.short 0x0071, 0x0052
	.short 0x0000, 0x7FFF

# 8012742C
D_8012742C:
	.short 0x003A, 0x0000
	.short 0xFFBD, 0x0052
	.short 0x0000, 0x7FFF

# 80127438
D_80127438:
	.short 0xFFF6, 0x0000
	.short 0xFFFA, 0x0052
	.short 0x0000, 0x7FFF

# 80127444
D_80127444:
	.short 0x01CF, 0x0000
	.short 0x01B4, 0x0052
	.short 0x0000, 0x7FFF

# 80127450
D_80127450:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 8012745C
ptrTbl_8012745C:
	.word D_80127414 # x
	.word D_80127420 # height
	.word D_8012742C # y
	.word D_80127438 # pitch
	.word D_80127444 # pan
	.word D_80127450 # roll

/*----------------------------------------------*/
# Camera Motion 0xA1

# 80127474
D_80127474:
	.short 0xFEF7, 0x0000
	.short 0xFEB7, 0x0066
	.short 0x0000, 0x7FFF

# 80127480
D_80127480:
	.short 0x0064, 0x0000
	.short 0x0068, 0x0066
	.short 0x0000, 0x7FFF

# 8012748C
D_8012748C:
	.short 0xFF3E, 0x0000
	.short 0xFFD6, 0x0066
	.short 0x0000, 0x7FFF

# 80127498
D_80127498:
	.short 0xFFF4, 0x0000
	.short 0xFFF7, 0x0066
	.short 0x0000, 0x7FFF

# 801274A4
D_801274A4:
	.short 0x019D, 0x0000
	.short 0x01B7, 0x0066
	.short 0x0000, 0x7FFF

# 801274B0
D_801274B0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 801274BC
ptrTbl_801274BC:
	.word D_80127474 # x
	.word D_80127480 # height
	.word D_8012748C # y
	.word D_80127498 # pitch
	.word D_801274A4 # pan
	.word D_801274B0 # roll

/*----------------------------------------------*/
# Camera Motion 0xA2

# 801274D4
D_801274D4:
	.short 0xFE5B, 0x0000
	.short 0xFF0B, 0x0052
	.short 0x0000, 0x7FFF

# 801274E0
D_801274E0:
	.short 0x0095, 0x0000
	.short 0x008C, 0x0052
	.short 0x0000, 0x7FFF

# 801274EC
D_801274EC:
	.short 0x0060, 0x0000
	.short 0xFFE8, 0x0052
	.short 0x0000, 0x7FFF

# 801274F8
D_801274F8:
	.short 0x0000, 0x0000
	.short 0x0012, 0x0052
	.short 0x0000, 0x7FFF

# 80127504
D_80127504:
	.short 0x006D, 0x0000
	.short 0x0064, 0x0052
	.short 0x0000, 0x7FFF

# 80127510
D_80127510:
	.short 0x0000, 0x0000
	.short 0x001B, 0x0052
	.short 0x0000, 0x7FFF

# 8012751C
ptrTbl_8012751C:
	.word D_801274D4 # x
	.word D_801274E0 # height
	.word D_801274EC # y
	.word D_801274F8 # pitch
	.word D_80127504 # pan
	.word D_80127510 # roll

/*----------------------------------------------*/
# Camera Motion 0xA3

# 80127534
D_80127534:
	.short 0xFEF4, 0x0000
	.short 0xFF2B, 0x0052
	.short 0x0000, 0x7FFF

# 80127540
D_80127540:
	.short 0x0064, 0x0000
	.short 0x0069, 0x0052
	.short 0x0000, 0x7FFF

# 8012754C
D_8012754C:
	.short 0xFF1C, 0x0000
	.short 0xFF0F, 0x0052
	.short 0x0000, 0x7FFF

# 80127558
D_80127558:
	.short 0xFFF2, 0x0000
	.short 0xFFE3, 0x0052
	.short 0x0000, 0x7FFF

# 80127564
D_80127564:
	.short 0x0032, 0x0000
	.short 0x002B, 0x0052
	.short 0x0000, 0x7FFF

# 80127570
D_80127570:
	.short 0x0000, 0x0000
	.short 0xFFE8, 0x0052
	.short 0x0000, 0x7FFF

# 8012757C
ptrTbl_8012757C:
	.word D_80127534 # x
	.word D_80127540 # height
	.word D_8012754C # y
	.word D_80127558 # pitch
	.word D_80127564 # pan
	.word D_80127570 # roll

/*----------------------------------------------*/
# Camera Motion 0xA4

# 80127594
D_80127594:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801275A0
D_801275A0:
	.short 0x0105, 0x0000
	.short 0x008C, 0x003E
	.short 0x0000, 0x7FFF

# 801275AC
D_801275AC:
	.short 0xFC6E, 0x0000
	.short 0xFED4, 0x003E
	.short 0x0000, 0x7FFF

# 801275B8
D_801275B8:
	.short 0x0007, 0x0000
	.short 0xFFFA, 0x003E
	.short 0x0000, 0x7FFF

# 801275C4
D_801275C4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801275D0
D_801275D0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801275DC
ptrTbl_801275DC:
	.word D_80127594 # x
	.word D_801275A0 # height
	.word D_801275AC # y
	.word D_801275B8 # pitch
	.word D_801275C4 # pan
	.word D_801275D0 # roll

/*----------------------------------------------*/
# Camera Motion 0xA5

# 801275F4
D_801275F4:
	.short 0x0000, 0x0000
	.short 0x00D4, 0x000E
	.short 0x012C, 0x001E
	.short 0x00D4, 0x002C
	.short 0x0000, 0x003C
	.short 0xFF2C, 0x004A
	.short 0xFED4, 0x005A
	.short 0xFF2C, 0x0068
	.short 0x0000, 0x0078
	.short 0x0000, 0x7FFF

# 8012761C
D_8012761C:
	.short 0xFED4, 0x0000
	.short 0xFF2C, 0x000E
	.short 0x0000, 0x001E
	.short 0x00D4, 0x002C
	.short 0x012C, 0x003C
	.short 0x00D4, 0x004A
	.short 0x0000, 0x005A
	.short 0xFF2C, 0x0068
	.short 0xFED4, 0x0078
	.short 0x0000, 0x7FFF

# 80127644
D_80127644:
	.short 0x0000, 0x0000
	.short 0xFFD3, 0x000E
	.short 0xFFA6, 0x001E
	.short 0xFF79, 0x002C
	.short 0xFF4C, 0x003C
	.short 0xFF1F, 0x004A
	.short 0xFEF2, 0x005A
	.short 0xFEC5, 0x0068
	.short 0xFE98, 0x0078
	.short 0x0000, 0x7FFF

# 8012766C
D_8012766C:
	.short 0x008C, 0x0000
	.short 0x008C, 0x0078
	.short 0x0000, 0x7FFF

# 80127678
D_80127678:
	.short 0xFFFA, 0x0000
	.short 0xFFFA, 0x0078
	.short 0x0000, 0x7FFF

# 80127684
D_80127684:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0078
	.short 0x0000, 0x7FFF

# 80127690
ptrTbl_80127690:
	.word D_801275F4 # x
	.word D_8012766C # height
	.word D_8012761C # y
	.word D_80127678 # pitch
	.word D_80127644 # pan
	.word D_80127684 # roll

/*----------------------------------------------*/
# Camera Motion 0xA6

# 801276A8
D_801276A8:
	.short 0x0000, 0x0000
	.short 0x0001, 0x003E
	.short 0x0000, 0x7FFF

# 801276B4
D_801276B4:
	.short 0x008C, 0x0000
	.short 0x0085, 0x003E
	.short 0x0000, 0x7FFF

# 801276C0
D_801276C0:
	.short 0xFED4, 0x0000
	.short 0xFC7E, 0x003E
	.short 0x0000, 0x7FFF

# 801276CC
D_801276CC:
	.short 0xFFFA, 0x0000
	.short 0xFFFA, 0x003E
	.short 0x0000, 0x7FFF

# 801276D8
D_801276D8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801276E4
D_801276E4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 801276F0
ptrTbl_801276F0:
	.word D_801276A8 # x
	.word D_801276B4 # height
	.word D_801276C0 # y
	.word D_801276CC # pitch
	.word D_801276D8 # pan
	.word D_801276E4 # roll

/*----------------------------------------------*/
# Camera Motion 0xA7

# 80127708
D_80127708:
	.short 0x01C4, 0x0000
	.short 0x0184, 0x002A
	.short 0x0000, 0x7FFF

# 80127714
D_80127714:
	.short 0x0076, 0x0000
	.short 0x0088, 0x002A
	.short 0x0000, 0x7FFF

# 80127720
D_80127720:
	.short 0xFF61, 0x0000
	.short 0xFF82, 0x002A
	.short 0x0000, 0x7FFF

# 8012772C
D_8012772C:
	.short 0xFFF0, 0x0000
	.short 0xFFF4, 0x002A
	.short 0x0000, 0x7FFF

# 80127738
D_80127738:
	.short 0xFFC2, 0x0000
	.short 0xFFBE, 0x002A
	.short 0x0000, 0x7FFF

# 80127744
D_80127744:
	.short 0x0000, 0x0000
	.short 0x0000, 0x002A
	.short 0x0000, 0x7FFF

# 80127750
ptrTbl_80127750:
	.word D_80127708 # x
	.word D_80127714 # height
	.word D_80127720 # y
	.word D_8012772C # pitch
	.word D_80127738 # pan
	.word D_80127744 # roll

/*----------------------------------------------*/
# Camera Motion 0xA8

# 80127768
D_80127768:
	.short 0xFEEB, 0x0000
	.short 0xFEEB, 0x002A
	.short 0x0000, 0x7FFF

# 80127774
D_80127774:
	.short 0x0060, 0x0000
	.short 0x0060, 0x002A
	.short 0x0000, 0x7FFF

# 80127780
D_80127780:
	.short 0xFF05, 0x0000
	.short 0xFF05, 0x002A
	.short 0x0000, 0x7FFF

# 8012778C
D_8012778C:
	.short 0xFFF1, 0x0000
	.short 0xFFF5, 0x002A
	.short 0x0000, 0x7FFF

# 80127798
D_80127798:
	.short 0x002A, 0x0000
	.short 0x0025, 0x002A
	.short 0x0000, 0x7FFF

# 801277A4
D_801277A4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x002A
	.short 0x0000, 0x7FFF

# 801277B0
ptrTbl_801277B0:
	.word D_80127768 # x
	.word D_80127774 # height
	.word D_80127780 # y
	.word D_8012778C # pitch
	.word D_80127798 # pan
	.word D_801277A4 # roll

/*----------------------------------------------*/
# Camera Motion 0xA9

# 801277C8
D_801277C8:
	.short 0xFEDD, 0x0000
	.short 0xFE41, 0x0052
	.short 0x0000, 0x7FFF

# 801277D4
D_801277D4:
	.short 0x0065, 0x0000
	.short 0x0062, 0x0052
	.short 0x0000, 0x7FFF

# 801277E0
D_801277E0:
	.short 0x00F2, 0x0000
	.short 0xFFF3, 0x0052
	.short 0x0000, 0x7FFF

# 801277EC
D_801277EC:
	.short 0xFFF5, 0x0000
	.short 0xFFF6, 0x0052
	.short 0x0000, 0x7FFF

# 801277F8
D_801277F8:
	.short 0x0084, 0x0000
	.short 0x005B, 0x0052
	.short 0x0000, 0x7FFF

# 80127804
D_80127804:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127810
ptrTbl_80127810:
	.word D_801277C8 # x
	.word D_801277D4 # height
	.word D_801277E0 # y
	.word D_801277EC # pitch
	.word D_801277F8 # pan
	.word D_80127804 # roll

/*----------------------------------------------*/
# Camera Motion 0xAA

# 80127828
D_80127828:
	.short 0x00DB, 0x0000
	.short 0x00DB, 0x0052
	.short 0x0000, 0x7FFF

# 80127834
D_80127834:
	.short 0x0082, 0x0000
	.short 0x0073, 0x0052
	.short 0x0000, 0x7FFF

# 80127840
D_80127840:
	.short 0xFF3F, 0x0000
	.short 0xFF3F, 0x0052
	.short 0x0000, 0x7FFF

# 8012784C
D_8012784C:
	.short 0xFFEA, 0x0000
	.short 0xFFFB, 0x0052
	.short 0x0000, 0x7FFF

# 80127858
D_80127858:
	.short 0x0138, 0x0000
	.short 0x0132, 0x0052
	.short 0x0000, 0x7FFF

# 80127864
D_80127864:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127870
ptrTbl_80127870:
	.word D_80127828 # x
	.word D_80127834 # height
	.word D_80127840 # y
	.word D_8012784C # pitch
	.word D_80127858 # pan
	.word D_80127864 # roll

/*----------------------------------------------*/
# Camera Motion 0xAB

# 80127888
D_80127888:
	.short 0x00FD, 0x0000
	.short 0x0110, 0x0052
	.short 0x0000, 0x7FFF

# 80127894
D_80127894:
	.short 0x0068, 0x0000
	.short 0x005E, 0x0052
	.short 0x0000, 0x7FFF

# 801278A0
D_801278A0:
	.short 0x0038, 0x0000
	.short 0xFFF5, 0x0052
	.short 0x0000, 0x7FFF

# 801278AC
D_801278AC:
	.short 0xFFEC, 0x0000
	.short 0xFFEF, 0x0052
	.short 0x0000, 0x7FFF

# 801278B8
D_801278B8:
	.short 0xFF8B, 0x0000
	.short 0xFF8F, 0x0052
	.short 0x0000, 0x7FFF

# 801278C4
D_801278C4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801278D0
ptrTbl_801278D0:
	.word D_80127888 # x
	.word D_80127894 # height
	.word D_801278A0 # y
	.word D_801278AC # pitch
	.word D_801278B8 # pan
	.word D_801278C4 # roll

/*----------------------------------------------*/
# Camera Motion 0xAC

# 801278E8
D_801278E8:
	.short 0x0000, 0x0000
	.short 0x004F, 0x003E
	.short 0x0000, 0x7FFF

# 801278F4
D_801278F4:
	.short 0x0071, 0x0000
	.short 0x0077, 0x003E
	.short 0x0000, 0x7FFF

# 80127900
D_80127900:
	.short 0xFEF9, 0x0000
	.short 0xFF38, 0x003E
	.short 0x0000, 0x7FFF

# 8012790C
D_8012790C:
	.short 0xFFF8, 0x0000
	.short 0xFFF9, 0x003E
	.short 0x0000, 0x7FFF

# 80127918
D_80127918:
	.short 0xFFF3, 0x0000
	.short 0xFFE0, 0x003E
	.short 0x0000, 0x7FFF

# 80127924
D_80127924:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80127930
ptrTbl_80127930:
	.word D_801278E8 # x
	.word D_801278F4 # height
	.word D_80127900 # y
	.word D_8012790C # pitch
	.word D_80127918 # pan
	.word D_80127924 # roll

/*----------------------------------------------*/
# Camera Motion 0xAD

# 80127948
D_80127948:
	.short 0x001E, 0x0000
	.short 0x001B, 0x003E
	.short 0x0000, 0x7FFF

# 80127954
D_80127954:
	.short 0x005B, 0x0000
	.short 0x0075, 0x003E
	.short 0x0000, 0x7FFF

# 80127960
D_80127960:
	.short 0xFF04, 0x0000
	.short 0xFEEC, 0x003E
	.short 0x0000, 0x7FFF

# 8012796C
D_8012796C:
	.short 0xFFEE, 0x0000
	.short 0xFFFA, 0x003E
	.short 0x0000, 0x7FFF

# 80127978
D_80127978:
	.short 0xFFF4, 0x0000
	.short 0xFFFC, 0x003E
	.short 0x0000, 0x7FFF

# 80127984
D_80127984:
	.short 0x0000, 0x0000
	.short 0xFFF7, 0x003E
	.short 0x0000, 0x7FFF

# 80127990
ptrTbl_80127990:
	.word D_80127948 # x
	.word D_80127954 # height
	.word D_80127960 # y
	.word D_8012796C # pitch
	.word D_80127978 # pan
	.word D_80127984 # roll

/*----------------------------------------------*/
# Camera Motion 0xAE

# 801279A8
D_801279A8:
	.short 0x01BE, 0x0000
	.short 0x01E7, 0x0052
	.short 0x0000, 0x7FFF

# 801279B4
D_801279B4:
	.short 0x007B, 0x0000
	.short 0x006F, 0x0052
	.short 0x0000, 0x7FFF

# 801279C0
D_801279C0:
	.short 0x006B, 0x0000
	.short 0x00CD, 0x0052
	.short 0x0000, 0x7FFF

# 801279CC
D_801279CC:
	.short 0xFFFA, 0x0000
	.short 0xFFF9, 0x0052
	.short 0x0000, 0x7FFF

# 801279D8
D_801279D8:
	.short 0xFF7B, 0x0000
	.short 0xFF7E, 0x0052
	.short 0x0000, 0x7FFF

# 801279E4
D_801279E4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801279F0
ptrTbl_801279F0:
	.word D_801279A8 # x
	.word D_801279B4 # height
	.word D_801279C0 # y
	.word D_801279CC # pitch
	.word D_801279D8 # pan
	.word D_801279E4 # roll

/*----------------------------------------------*/
# Camera Motion 0xAF

# 80127A08
D_80127A08:
	.short 0xFF72, 0x0000
	.short 0xFFDD, 0x0052
	.short 0x0000, 0x7FFF

# 80127A14
D_80127A14:
	.short 0x006C, 0x0000
	.short 0x007B, 0x0052
	.short 0x0000, 0x7FFF

# 80127A20
D_80127A20:
	.short 0xFE2C, 0x0000
	.short 0xFE51, 0x0052
	.short 0x0000, 0x7FFF

# 80127A2C
D_80127A2C:
	.short 0xFFF6, 0x0000
	.short 0xFFF6, 0x0052
	.short 0x0000, 0x7FFF

# 80127A38
D_80127A38:
	.short 0x0013, 0x0000
	.short 0x0005, 0x0052
	.short 0x0000, 0x7FFF

# 80127A44
D_80127A44:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127A50
ptrTbl_80127A50:
	.word D_80127A08 # x
	.word D_80127A14 # height
	.word D_80127A20 # y
	.word D_80127A2C # pitch
	.word D_80127A38 # pan
	.word D_80127A44 # roll

/*----------------------------------------------*/
# Camera Motion 0xB0

# 80127A68
D_80127A68:
	.short 0x0054, 0x0000
	.short 0x00A6, 0x0052
	.short 0x0000, 0x7FFF

# 80127A74
D_80127A74:
	.short 0x006A, 0x0000
	.short 0x0064, 0x0052
	.short 0x0000, 0x7FFF

# 80127A80
D_80127A80:
	.short 0x012D, 0x0000
	.short 0x0027, 0x0052
	.short 0x0000, 0x7FFF

# 80127A8C
D_80127A8C:
	.short 0xFFF6, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80127A98
D_80127A98:
	.short 0xFF64, 0x0000
	.short 0xFF89, 0x0052
	.short 0x0000, 0x7FFF

# 80127AA4
D_80127AA4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127AB0
ptrTbl_80127AB0:
	.word D_80127A68 # x
	.word D_80127A74 # height
	.word D_80127A80 # y
	.word D_80127A8C # pitch
	.word D_80127A98 # pan
	.word D_80127AA4 # roll

/*----------------------------------------------*/
# Camera Motion 0xB1

# 80127AC8
D_80127AC8:
	.short 0x00D2, 0x0000
	.short 0x00D4, 0x0052
	.short 0x0000, 0x7FFF

# 80127AD4
D_80127AD4:
	.short 0x0065, 0x0000
	.short 0x006B, 0x0052
	.short 0x0000, 0x7FFF

# 80127AE0
D_80127AE0:
	.short 0xFF24, 0x0000
	.short 0xFF6D, 0x0052
	.short 0x0000, 0x7FFF

# 80127AEC
D_80127AEC:
	.short 0xFFEB, 0x0000
	.short 0xFFFB, 0x0052
	.short 0x0000, 0x7FFF

# 80127AF8
D_80127AF8:
	.short 0xFFDA, 0x0000
	.short 0xFFDA, 0x0052
	.short 0x0000, 0x7FFF

# 80127B04
D_80127B04:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127B10
ptrTbl_80127B10:
	.word D_80127AC8 # x
	.word D_80127AD4 # height
	.word D_80127AE0 # y
	.word D_80127AEC # pitch
	.word D_80127AF8 # pan
	.word D_80127B04 # roll

/*----------------------------------------------*/
# Camera Motion 0xB2

# 80127B28
D_80127B28:
	.short 0xFF74, 0x0000
	.short 0x0001, 0x007A
	.short 0x0000, 0x7FFF

# 80127B34
D_80127B34:
	.short 0x005F, 0x0000
	.short 0x0063, 0x007A
	.short 0x0000, 0x7FFF

# 80127B40
D_80127B40:
	.short 0xFEE8, 0x0000
	.short 0xFF0D, 0x007A
	.short 0x0000, 0x7FFF

# 80127B4C
D_80127B4C:
	.short 0xFFF4, 0x0000
	.short 0xFFF5, 0x007A
	.short 0x0000, 0x7FFF

# 80127B58
D_80127B58:
	.short 0x017E, 0x0000
	.short 0x0155, 0x007A
	.short 0x0000, 0x7FFF

# 80127B64
D_80127B64:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80127B70
ptrTbl_80127B70:
	.word D_80127B28 # x
	.word D_80127B34 # height
	.word D_80127B40 # y
	.word D_80127B4C # pitch
	.word D_80127B58 # pan
	.word D_80127B64 # roll

/*----------------------------------------------*/
# 80127B88
D_80127B88:
	.short 0x00FF, 0x0000
	.short 0x00FB, 0x0052
	.short 0x0000, 0x7FFF

# 80127B94
D_80127B94:
	.short 0x008F, 0x0000
	.short 0x006D, 0x0052
	.short 0x0000, 0x7FFF

# 80127BA0
D_80127BA0:
	.short 0xFFC7, 0x0000
	.short 0xFF4A, 0x0052
	.short 0x0000, 0x7FFF

# 80127BAC
D_80127BAC:
	.short 0xFFF5, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80127BB8
D_80127BB8:
	.short 0xFFBB, 0x0000
	.short 0xFFC8, 0x0052
	.short 0x0000, 0x7FFF

# 80127BC4
D_80127BC4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127BD0
ptrTbl_80127BD0:
	.word D_80127B88 # x
	.word D_80127B94 # height
	.word D_80127BA0 # y
	.word D_80127BAC # pitch
	.word D_80127BB8 # pan
	.word D_80127BC4 # roll

/*----------------------------------------------*/
# 80127BE8
D_80127BE8:
	.short 0x01FC, 0x0000
	.short 0x01F8, 0x0052
	.short 0x0000, 0x7FFF

# 80127BF4
D_80127BF4:
	.short 0x006D, 0x0000
	.short 0x0068, 0x0052
	.short 0x0000, 0x7FFF

# 80127C00
D_80127C00:
	.short 0xFFB9, 0x0000
	.short 0xFECA, 0x0052
	.short 0x0000, 0x7FFF

# 80127C0C
D_80127C0C:
	.short 0xFFF2, 0x0000
	.short 0xFFF3, 0x0052
	.short 0x0000, 0x7FFF

# 80127C18
D_80127C18:
	.short 0xFF99, 0x0000
	.short 0xFFBE, 0x0052
	.short 0x0000, 0x7FFF

# 80127C24
D_80127C24:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127C30
ptrTbl_80127C30:
	.word D_80127BE8 # x
	.word D_80127BF4 # height
	.word D_80127C00 # y
	.word D_80127C0C # pitch
	.word D_80127C18 # pan
	.word D_80127C24 # roll

/*----------------------------------------------*/
# 80127C48
D_80127C48:
	.short 0x00DE, 0x0000
	.short 0xFFA4, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C54
D_80127C54:
	.short 0x006C, 0x0000
	.short 0x0078, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C60
D_80127C60:
	.short 0xFECF, 0x0000
	.short 0xFE77, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C6C
D_80127C6C:
	.short 0xFFFA, 0x0000
	.short 0xFFF9, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C78
D_80127C78:
	.short 0xFFDD, 0x0000
	.short 0x0006, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C84
D_80127C84:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00A2
	.short 0x0000, 0x7FFF

# 80127C90
ptrTbl_80127C90:
	.word D_80127C48 # x
	.word D_80127C54 # height
	.word D_80127C60 # y
	.word D_80127C6C # pitch
	.word D_80127C78 # pan
	.word D_80127C84 # roll

/*----------------------------------------------*/
# 80127CA8
D_80127CA8:
	.short 0x0015, 0x0000
	.short 0x00D8, 0x0052
	.short 0x0000, 0x7FFF

# 80127CB4
D_80127CB4:
	.short 0x0073, 0x0000
	.short 0x006E, 0x0052
	.short 0x0000, 0x7FFF

# 80127CC0
D_80127CC0:
	.short 0xFEEA, 0x0000
	.short 0xFF10, 0x0052
	.short 0x0000, 0x7FFF

# 80127CCC
D_80127CCC:
	.short 0xFFEB, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80127CD8
D_80127CD8:
	.short 0x0000, 0x0000
	.short 0xFFD9, 0x0052
	.short 0x0000, 0x7FFF

# 80127CE4
D_80127CE4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127CF0
ptrTbl_80127CF0:
	.word D_80127CA8 # x
	.word D_80127CB4 # height
	.word D_80127CC0 # y
	.word D_80127CCC # pitch
	.word D_80127CD8 # pan
	.word D_80127CE4 # roll

/*----------------------------------------------*/
# 80127D08
D_80127D08:
	.short 0x00C2, 0x0000
	.short 0x001C, 0x0052
	.short 0x0000, 0x7FFF

# 80127D14
D_80127D14:
	.short 0x0060, 0x0000
	.short 0x0063, 0x0052
	.short 0x0000, 0x7FFF

# 80127D20
D_80127D20:
	.short 0x01D6, 0x0000
	.short 0x01C8, 0x0052
	.short 0x0000, 0x7FFF

# 80127D2C
D_80127D2C:
	.short 0xFFF2, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80127D38
D_80127D38:
	.short 0xFF6A, 0x0000
	.short 0xFF53, 0x0052
	.short 0x0000, 0x7FFF

# 80127D44
D_80127D44:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127D50
ptrTbl_80127D50:
	.word D_80127D08 # x
	.word D_80127D14 # height
	.word D_80127D20 # y
	.word D_80127D2C # pitch
	.word D_80127D38 # pan
	.word D_80127D44 # roll

/*----------------------------------------------*/
# 80127D68
D_80127D68:
	.short 0x00ED, 0x0000
	.short 0x00E2, 0x0066
	.short 0x0000, 0x7FFF

# 80127D74
D_80127D74:
	.short 0x0066, 0x0000
	.short 0x0061, 0x0066
	.short 0x0000, 0x7FFF

# 80127D80
D_80127D80:
	.short 0xFE97, 0x0000
	.short 0xFEA3, 0x0066
	.short 0x0000, 0x7FFF

# 80127D8C
D_80127D8C:
	.short 0xFFF9, 0x0000
	.short 0xFFF6, 0x0066
	.short 0x0000, 0x7FFF

# 80127D98
D_80127D98:
	.short 0xFFD1, 0x0000
	.short 0xFFE1, 0x0066
	.short 0x0000, 0x7FFF

# 80127DA4
D_80127DA4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 80127DB0
ptrTbl_80127DB0:
	.word D_80127D68 # x
	.word D_80127D74 # height
	.word D_80127D80 # y
	.word D_80127D8C # pitch
	.word D_80127D98 # pan
	.word D_80127DA4 # roll

/*----------------------------------------------*/
# 80127DC8
D_80127DC8:
	.short 0x00EA, 0x0000
	.short 0x0029, 0x0052
	.short 0x0000, 0x7FFF

# 80127DD4
D_80127DD4:
	.short 0x0061, 0x0000
	.short 0x006D, 0x0052
	.short 0x0000, 0x7FFF

# 80127DE0
D_80127DE0:
	.short 0x00C9, 0x0000
	.short 0x00DA, 0x0052
	.short 0x0000, 0x7FFF

# 80127DEC
D_80127DEC:
	.short 0xFFEA, 0x0000
	.short 0xFFF8, 0x0052
	.short 0x0000, 0x7FFF

# 80127DF8
D_80127DF8:
	.short 0x00E7, 0x0000
	.short 0x00BE, 0x0052
	.short 0x0000, 0x7FFF

# 80127E04
D_80127E04:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127E10
ptrTbl_80127E10:
	.word D_80127DC8 # x
	.word D_80127DD4 # height
	.word D_80127DE0 # y
	.word D_80127DEC # pitch
	.word D_80127DF8 # pan
	.word D_80127E04 # roll

/*----------------------------------------------*/
# 80127E28
D_80127E28:
	.short 0x00E3, 0x0000
	.short 0xFFB3, 0x0052
	.short 0x0000, 0x7FFF

# 80127E34
D_80127E34:
	.short 0x008F, 0x0000
	.short 0x0094, 0x0052
	.short 0x0000, 0x7FFF

# 80127E40
D_80127E40:
	.short 0x043F, 0x0000
	.short 0x0418, 0x0052
	.short 0x0000, 0x7FFF

# 80127E4C
D_80127E4C:
	.short 0xFFFD, 0x0000
	.short 0xFFFD, 0x0052
	.short 0x0000, 0x7FFF

# 80127E58
D_80127E58:
	.short 0xFF57, 0x0000
	.short 0xFF47, 0x0052
	.short 0x0000, 0x7FFF

# 80127E64
D_80127E64:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127E70
ptrTbl_80127E70:
	.word D_80127E28 # x
	.word D_80127E34 # height
	.word D_80127E40 # y
	.word D_80127E4C # pitch
	.word D_80127E58 # pan
	.word D_80127E64 # roll

/*----------------------------------------------*/
# 80127E88
D_80127E88:
	.short 0x0011, 0x0000
	.short 0x006F, 0x0052
	.short 0x0000, 0x7FFF

# 80127E94
D_80127E94:
	.short 0x0066, 0x0000
	.short 0x0064, 0x0052
	.short 0x0000, 0x7FFF

# 80127EA0
D_80127EA0:
	.short 0xFF03, 0x0000
	.short 0xFE97, 0x0052
	.short 0x0000, 0x7FFF

# 80127EAC
D_80127EAC:
	.short 0xFFE9, 0x0000
	.short 0xFFF3, 0x0052
	.short 0x0000, 0x7FFF

# 80127EB8
D_80127EB8:
	.short 0xFFF1, 0x0000
	.short 0xFFEB, 0x0052
	.short 0x0000, 0x7FFF

# 80127EC4
D_80127EC4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127ED0
ptrTbl_80127ED0:
	.word D_80127E88 # x
	.word D_80127E94 # height
	.word D_80127EA0 # y
	.word D_80127EAC # pitch
	.word D_80127EB8 # pan
	.word D_80127EC4 # roll

/*----------------------------------------------*/
# 80127EE8
D_80127EE8:
	.short 0x00BE, 0x0000
	.short 0x0092, 0x0052
	.short 0x0000, 0x7FFF

# 80127EF4
D_80127EF4:
	.short 0x0057, 0x0000
	.short 0x0064, 0x0052
	.short 0x0000, 0x7FFF

# 80127F00
D_80127F00:
	.short 0xFFC7, 0x0000
	.short 0xFFAE, 0x0052
	.short 0x0000, 0x7FFF

# 80127F0C
D_80127F0C:
	.short 0xFFE8, 0x0000
	.short 0xFFFA, 0x0052
	.short 0x0000, 0x7FFF

# 80127F18
D_80127F18:
	.short 0xFFC8, 0x0000
	.short 0xFFC6, 0x0052
	.short 0x0000, 0x7FFF

# 80127F24
D_80127F24:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80127F30
ptrTbl_80127F30:
	.word D_80127EE8 # x
	.word D_80127EF4 # height
	.word D_80127F00 # y
	.word D_80127F0C # pitch
	.word D_80127F18 # pan
	.word D_80127F24 # roll

/*----------------------------------------------*/
# 80127F48
D_80127F48:
	.short 0xFEE3, 0x0000
	.short 0xFF9C, 0x008E
	.short 0x0000, 0x7FFF

# 80127F54
D_80127F54:
	.short 0x0068, 0x0000
	.short 0x006D, 0x008E
	.short 0x0000, 0x7FFF

# 80127F60
D_80127F60:
	.short 0xFFB9, 0x0000
	.short 0xFEE6, 0x008E
	.short 0x0000, 0x7FFF

# 80127F6C
D_80127F6C:
	.short 0xFFF6, 0x0000
	.short 0xFFF8, 0x008E
	.short 0x0000, 0x7FFF

# 80127F78
D_80127F78:
	.short 0x0051, 0x0000
	.short 0x0012, 0x008E
	.short 0x0000, 0x7FFF

# 80127F84
D_80127F84:
	.short 0x0000, 0x0000
	.short 0x0000, 0x008E
	.short 0x0000, 0x7FFF

# 80127F90
ptrTbl_80127F90:
	.word D_80127F48 # x
	.word D_80127F54 # height
	.word D_80127F60 # y
	.word D_80127F6C # pitch
	.word D_80127F78 # pan
	.word D_80127F84 # roll

/*----------------------------------------------*/
# 80127FA8
D_80127FA8:
	.short 0xFE5C, 0x0000
	.short 0xFEFF, 0x0066
	.short 0x0000, 0x7FFF

# 80127FB4
D_80127FB4:
	.short 0x0062, 0x0000
	.short 0x0060, 0x0066
	.short 0x0000, 0x7FFF

# 80127FC0
D_80127FC0:
	.short 0x0014, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 80127FCC
D_80127FCC:
	.short 0xFFE5, 0x0000
	.short 0xFFBF, 0x0066
	.short 0x0000, 0x7FFF

# 80127FD8
D_80127FD8:
	.short 0x0060, 0x0000
	.short 0x006A, 0x0066
	.short 0x0000, 0x7FFF

# 80127FE4
D_80127FE4:
	.short 0xFFEE, 0x0000
	.short 0xFFC9, 0x0066
	.short 0x0000, 0x7FFF

# 80127FF0
ptrTbl_80127FF0:
	.word D_80127FA8 # x
	.word D_80127FB4 # height
	.word D_80127FC0 # y
	.word D_80127FCC # pitch
	.word D_80127FD8 # pan
	.word D_80127FE4 # roll

/*----------------------------------------------*/
# 80128008
D_80128008:
	.short 0xFFD7, 0x0000
	.short 0x0023, 0x0052
	.short 0x0000, 0x7FFF

# 80128014
D_80128014:
	.short 0x0063, 0x0000
	.short 0x0062, 0x0052
	.short 0x0000, 0x7FFF

# 80128020
D_80128020:
	.short 0xFF36, 0x0000
	.short 0xFF48, 0x0052
	.short 0x0000, 0x7FFF

# 8012802C
D_8012802C:
	.short 0xFFE8, 0x0000
	.short 0xFFF6, 0x0052
	.short 0x0000, 0x7FFF

# 80128038
D_80128038:
	.short 0xFFF1, 0x0000
	.short 0xFFEF, 0x0052
	.short 0x0000, 0x7FFF

# 80128044
D_80128044:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80128050
ptrTbl_80128050:
	.word D_80128008 # x
	.word D_80128014 # height
	.word D_80128020 # y
	.word D_8012802C # pitch
	.word D_80128038 # pan
	.word D_80128044 # roll

/*----------------------------------------------*/
# Camera Motion 0xC0

# 80128068
D_80128068:
	.short 0xFE44, 0x0000
	.short 0xFE65, 0x007A
	.short 0x0000, 0x7FFF

# 80128074
D_80128074:
	.short 0x0074, 0x0000
	.short 0x0063, 0x007A
	.short 0x0000, 0x7FFF

# 80128080
D_80128080:
	.short 0x00C6, 0x0000
	.short 0xFFE4, 0x007A
	.short 0x0000, 0x7FFF

# 8012808C
D_8012808C:
	.short 0xFFFC, 0x0000
	.short 0xFFF8, 0x007A
	.short 0x0000, 0x7FFF

# 80128098
D_80128098:
	.short 0x006C, 0x0000
	.short 0x0049, 0x007A
	.short 0x0000, 0x7FFF

# 801280A4
D_801280A4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 801280B0
ptrTbl_801280B0:
	.word D_80128068 # x
	.word D_80128074 # height
	.word D_80128080 # y
	.word D_8012808C # pitch
	.word D_80128098 # pan
	.word D_801280A4 # roll

/*----------------------------------------------*/
# 801280C8
D_801280C8:
	.short 0x0163, 0x0000
	.short 0x019C, 0x0066
	.short 0x0000, 0x7FFF

# 801280D4
D_801280D4:
	.short 0x0079, 0x0000
	.short 0x0063, 0x0066
	.short 0x0000, 0x7FFF

# 801280E0
D_801280E0:
	.short 0xFF26, 0x0000
	.short 0x00AC, 0x0066
	.short 0x0000, 0x7FFF

# 801280EC
D_801280EC:
	.short 0xFFF8, 0x0000
	.short 0xFFF6, 0x0066
	.short 0x0000, 0x7FFF

# 801280F8
D_801280F8:
	.short 0xFFC9, 0x0000
	.short 0xFF91, 0x0066
	.short 0x0000, 0x7FFF

# 80128104
D_80128104:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0066
	.short 0x0000, 0x7FFF

# 80128110
ptrTbl_80128110:
	.word D_801280C8 # x
	.word D_801280D4 # height
	.word D_801280E0 # y
	.word D_801280EC # pitch
	.word D_801280F8 # pan
	.word D_80128104 # roll

/*----------------------------------------------*/
# 80128128
D_80128128:
	.short 0xFF29, 0x0000
	.short 0xFF3E, 0x0052
	.short 0x0000, 0x7FFF

# 80128134
D_80128134:
	.short 0x0067, 0x0000
	.short 0x006B, 0x0052
	.short 0x0000, 0x7FFF

# 80128140
D_80128140:
	.short 0xFF3A, 0x0000
	.short 0xFF1B, 0x0052
	.short 0x0000, 0x7FFF

# 8012814C
D_8012814C:
	.short 0xFFE9, 0x0000
	.short 0xFFFA, 0x0052
	.short 0x0000, 0x7FFF

# 80128158
D_80128158:
	.short 0x003B, 0x0000
	.short 0x0033, 0x0052
	.short 0x0000, 0x7FFF

# 80128164
D_80128164:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80128170
ptrTbl_80128170:
	.word D_80128128 # x
	.word D_80128134 # height
	.word D_80128140 # y
	.word D_8012814C # pitch
	.word D_80128158 # pan
	.word D_80128164 # roll

/*----------------------------------------------*/
# 80128188
D_80128188:
	.short 0x01C9, 0x0000
	.short 0x01C7, 0x0052
	.short 0x0000, 0x7FFF

# 80128194
D_80128194:
	.short 0x0067, 0x0000
	.short 0x0067, 0x0052
	.short 0x0000, 0x7FFF

# 801281A0
D_801281A0:
	.short 0xFED0, 0x0000
	.short 0xFED4, 0x0052
	.short 0x0000, 0x7FFF

# 801281AC
D_801281AC:
	.short 0xFFF4, 0x0000
	.short 0xFFFB, 0x0052
	.short 0x0000, 0x7FFF

# 801281B8
D_801281B8:
	.short 0xFFE1, 0x0000
	.short 0xFFE4, 0x0052
	.short 0x0000, 0x7FFF

# 801281C4
D_801281C4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801281D0
ptrTbl_801281D0:
	.word D_80128188 # x
	.word D_80128194 # height
	.word D_801281A0 # y
	.word D_801281AC # pitch
	.word D_801281B8 # pan
	.word D_801281C4 # roll

/*----------------------------------------------*/
# 801281E8
D_801281E8:
	.short 0x00FF, 0x0000
	.short 0x0086, 0x0052
	.short 0x0000, 0x7FFF

# 801281F4
D_801281F4:
	.short 0x0069, 0x0000
	.short 0x005C, 0x0052
	.short 0x0000, 0x7FFF

# 80128200
D_80128200:
	.short 0xFF04, 0x0000
	.short 0xFEEE, 0x0052
	.short 0x0000, 0x7FFF

# 8012820C
D_8012820C:
	.short 0xFFE9, 0x0000
	.short 0xFFF4, 0x0052
	.short 0x0000, 0x7FFF

# 80128218
D_80128218:
	.short 0xFFD5, 0x0000
	.short 0xFFE1, 0x0052
	.short 0x0000, 0x7FFF

# 80128224
D_80128224:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80128230
ptrTbl_80128230:
	.word D_801281E8 # x
	.word D_801281F4 # height
	.word D_80128200 # y
	.word D_8012820C # pitch
	.word D_80128218 # pan
	.word D_80128224 # roll

/*----------------------------------------------*/
# 80128248
D_80128248:
	.short 0xFE30, 0x0000
	.short 0xFE26, 0x003E
	.short 0x0000, 0x7FFF

# 80128254
D_80128254:
	.short 0x003B, 0x0000
	.short 0x0030, 0x003E
	.short 0x0000, 0x7FFF

# 80128260
D_80128260:
	.short 0xFDB8, 0x0000
	.short 0xFE49, 0x003E
	.short 0x0000, 0x7FFF

# 8012826C
D_8012826C:
	.short 0x0001, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80128278
D_80128278:
	.short 0x003F, 0x0000
	.short 0x0053, 0x003E
	.short 0x0000, 0x7FFF

# 80128284
D_80128284:
	.short 0x0000, 0x0000
	.short 0x0000, 0x003E
	.short 0x0000, 0x7FFF

# 80128290
ptrTbl_80128290:
	.word D_80128248 # x
	.word D_80128254 # height
	.word D_80128260 # y
	.word D_8012826C # pitch
	.word D_80128278 # pan
	.word D_80128284 # roll

/*----------------------------------------------*/
# 801282A8
D_801282A8:
	.short 0xFF94, 0x0000
	.short 0xFF9A, 0x0052
	.short 0x0000, 0x7FFF

# 801282B4
D_801282B4:
	.short 0x0054, 0x0000
	.short 0x0072, 0x0052
	.short 0x0000, 0x7FFF

# 801282C0
D_801282C0:
	.short 0xFEA8, 0x0000
	.short 0xFE69, 0x0052
	.short 0x0000, 0x7FFF

# 801282CC
D_801282CC:
	.short 0xFFEA, 0x0000
	.short 0xFFF9, 0x0052
	.short 0x0000, 0x7FFF

# 801282D8
D_801282D8:
	.short 0x0015, 0x0000
	.short 0x0014, 0x0052
	.short 0x0000, 0x7FFF

# 801282E4
D_801282E4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801282F0
ptrTbl_801282F0:
	.word D_801282A8 # x
	.word D_801282B4 # height
	.word D_801282C0 # y
	.word D_801282CC # pitch
	.word D_801282D8 # pan
	.word D_801282E4 # roll

/*----------------------------------------------*/
# 80128308
D_80128308:
	.short 0xFF73, 0x0000
	.short 0xFF74, 0x0052
	.short 0x0000, 0x7FFF

# 80128314
D_80128314:
	.short 0x0064, 0x0000
	.short 0x006D, 0x0052
	.short 0x0000, 0x7FFF

# 80128320
D_80128320:
	.short 0x013F, 0x0000
	.short 0x00BC, 0x0052
	.short 0x0000, 0x7FFF

# 8012832C
D_8012832C:
	.short 0xFFF5, 0x0000
	.short 0xFFF7, 0x0052
	.short 0x0000, 0x7FFF

# 80128338
D_80128338:
	.short 0xFF39, 0x0000
	.short 0xFF3D, 0x0052
	.short 0x0000, 0x7FFF

# 80128344
D_80128344:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 80128350
ptrTbl_80128350:
	.word D_80128308 # x
	.word D_80128314 # height
	.word D_80128320 # y
	.word D_8012832C # pitch
	.word D_80128338 # pan
	.word D_80128344 # roll

/*----------------------------------------------*/
# 80128368
D_80128368:
	.short 0xFF8C, 0x0000
	.short 0xFFB2, 0x0052
	.short 0x0000, 0x7FFF

# 80128374
D_80128374:
	.short 0x006B, 0x0000
	.short 0x0062, 0x0052
	.short 0x0000, 0x7FFF

# 80128380
D_80128380:
	.short 0xFF1F, 0x0000
	.short 0xFF7E, 0x0052
	.short 0x0000, 0x7FFF

# 8012838C
D_8012838C:
	.short 0xFFEF, 0x0000
	.short 0xFFF5, 0x0052
	.short 0x0000, 0x7FFF

# 80128398
D_80128398:
	.short 0xFFFB, 0x0000
	.short 0xFFF5, 0x0052
	.short 0x0000, 0x7FFF

# 801283A4
D_801283A4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0052
	.short 0x0000, 0x7FFF

# 801283B0
ptrTbl_801283B0:
	.word D_80128368 # x
	.word D_80128374 # height
	.word D_80128380 # y
	.word D_8012838C # pitch
	.word D_80128398 # pan
	.word D_801283A4 # roll

/*----------------------------------------------*/
# 801283C8
D_801283C8:
	.short 0x01AF, 0x0000
	.short 0x049B, 0x007A
	.short 0x0000, 0x7FFF

# 801283D4
D_801283D4:
	.short 0x00A3, 0x0000
	.short 0x006B, 0x007A
	.short 0x0000, 0x7FFF

# 801283E0
D_801283E0:
	.short 0xFFE9, 0x0000
	.short 0x00DA, 0x007A
	.short 0x0000, 0x7FFF

# 801283EC
D_801283EC:
	.short 0xFFF0, 0x0000
	.short 0xFFF8, 0x007A
	.short 0x0000, 0x7FFF

# 801283F8
D_801283F8:
	.short 0xFFAC, 0x0000
	.short 0xFF98, 0x007A
	.short 0x0000, 0x7FFF

# 80128404
D_80128404:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80128410
ptrTbl_80128410:
	.word D_801283C8 # x
	.word D_801283D4 # height
	.word D_801283E0 # y
	.word D_801283EC # pitch
	.word D_801283F8 # pan
	.word D_80128404 # roll

/*----------------------------------------------*/
# 80128428
D_80128428:
	.short 0xFFB1, 0x0000
	.short 0xFFD9, 0x00CA
	.short 0x0000, 0x7FFF

# 80128434
D_80128434:
	.short 0x0007, 0x0000
	.short 0x0009, 0x00CA
	.short 0x0000, 0x7FFF

# 80128440
D_80128440:
	.short 0x0041, 0x0000
	.short 0x00D9, 0x00CA
	.short 0x0000, 0x7FFF

# 8012844C
D_8012844C:
	.short 0xFFFA, 0x0000
	.short 0xFFEC, 0x00CA
	.short 0x0000, 0x7FFF

# 80128458
D_80128458:
	.short 0xFF2A, 0x0000
	.short 0xFF44, 0x00CA
	.short 0x0000, 0x7FFF

# 80128464
D_80128464:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00CA
	.short 0x0000, 0x7FFF

# 80128470
ptrTbl_80128470:
	.word D_80128428 # x
	.word D_80128434 # height
	.word D_80128440 # y
	.word D_8012844C # pitch
	.word D_80128458 # pan
	.word D_80128464 # roll

/*----------------------------------------------*/
# 80128488
D_80128488:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128490
D_80128490:
	.short 0x0026, 0x0014
	.short 0x0000, 0x7FFF

# 80128498
D_80128498:
	.short 0x01D7, 0x0014
	.short 0x0000, 0x7FFF

# 801284A0
D_801284A0:
	.short 0xFFF9, 0x0014
	.short 0x0000, 0x7FFF

# 801284A8
D_801284A8:
	.short 0xFF4C, 0x0014
	.short 0x0000, 0x7FFF

# 801284B0
D_801284B0:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801284B8
ptrTbl_801284B8:
	.word D_80128488 # x
	.word D_80128490 # height
	.word D_80128498 # y
	.word D_801284A0 # pitch
	.word D_801284A8 # pan
	.word D_801284B0 # roll

/*----------------------------------------------*/
# 801284D0
D_801284D0:
	.short 0xFFB2, 0x0000
	.short 0xFF22, 0x007A
	.short 0x0000, 0x7FFF

# 801284DC
D_801284DC:
	.short 0x0006, 0x0000
	.short 0x0016, 0x007A
	.short 0x0000, 0x7FFF

# 801284E8
D_801284E8:
	.short 0xFF5A, 0x0000
	.short 0xFF76, 0x007A
	.short 0x0000, 0x7FFF

# 801284F4
D_801284F4:
	.short 0xFFF7, 0x0000
	.short 0xFFF8, 0x007A
	.short 0x0000, 0x7FFF

# 80128500
D_80128500:
	.short 0xFEB4, 0x0000
	.short 0xFEBD, 0x007A
	.short 0x0000, 0x7FFF

# 8012850C
D_8012850C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80128518
ptrTbl_80128518:
	.word D_801284D0 # x
	.word D_801284DC # height
	.word D_801284E8 # y
	.word D_801284F4 # pitch
	.word D_80128500 # pan
	.word D_8012850C # roll

/*----------------------------------------------*/
# 80128530
D_80128530:
	.short 0x0004, 0x0000
	.short 0x0008, 0x007A
	.short 0x0000, 0x7FFF

# 8012853C
D_8012853C:
	.short 0x003C, 0x0000
	.short 0x006B, 0x007A
	.short 0x0000, 0x7FFF

# 80128548
D_80128548:
	.short 0x0358, 0x0000
	.short 0x0294, 0x007A
	.short 0x0000, 0x7FFF

# 80128554
D_80128554:
	.short 0xFFF9, 0x0000
	.short 0xFFF8, 0x007A
	.short 0x0000, 0x7FFF

# 80128560
D_80128560:
	.short 0xFF4D, 0x0000
	.short 0xFF4F, 0x007A
	.short 0x0000, 0x7FFF

# 8012856C
D_8012856C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80128578
ptrTbl_80128578:
	.word D_80128530 # x
	.word D_8012853C # height
	.word D_80128548 # y
	.word D_80128554 # pitch
	.word D_80128560 # pan
	.word D_8012856C # roll

/*----------------------------------------------*/
# 80128590
D_80128590:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00DE
	.short 0x0000, 0x7FFF

# 8012859C
D_8012859C:
	.short 0x0017, 0x0000
	.short 0x0011, 0x00DE
	.short 0x0000, 0x7FFF

# 801285A8
D_801285A8:
	.short 0xFA88, 0x0000
	.short 0xFEB9, 0x00DE
	.short 0x0000, 0x7FFF

# 801285B4
D_801285B4:
	.short 0xFFF8, 0x0000
	.short 0xFFF8, 0x00DE
	.short 0x0000, 0x7FFF

# 801285C0
D_801285C0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00DE
	.short 0x0000, 0x7FFF

# 801285CC
D_801285CC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00DE
	.short 0x0000, 0x7FFF

# 801285D8
ptrTbl_801285D8:
	.word D_80128590 # x
	.word D_8012859C # height
	.word D_801285A8 # y
	.word D_801285B4 # pitch
	.word D_801285C0 # pan
	.word D_801285CC # roll

/*----------------------------------------------*/
# Camera Motion 0xD0

# 801285F0
D_801285F0:
	.short 0xFE3F, 0x0000
	.short 0xFE91, 0x007A
	.short 0x0000, 0x7FFF

# 801285FC
D_801285FC:
	.short 0x0024, 0x0000
	.short 0x0027, 0x007A
	.short 0x0000, 0x7FFF

# 80128608
D_80128608:
	.short 0xFE14, 0x0000
	.short 0xFD81, 0x007A
	.short 0x0000, 0x7FFF

# 80128614
D_80128614:
	.short 0xFFFA, 0x0000
	.short 0xFFFB, 0x007A
	.short 0x0000, 0x7FFF

# 80128620
D_80128620:
	.short 0x002F, 0x0000
	.short 0x0023, 0x007A
	.short 0x0000, 0x7FFF

# 8012862C
D_8012862C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80128638
ptrTbl_80128638:
	.word D_801285F0 # x
	.word D_801285FC # height
	.word D_80128608 # y
	.word D_80128614 # pitch
	.word D_80128620 # pan
	.word D_8012862C # roll

/*----------------------------------------------*/
# 80128650
D_80128650:
	.short 0x0174, 0x0000
	.short 0x0199, 0x007A
	.short 0x0000, 0x7FFF

# 8012865C
D_8012865C:
	.short 0x001D, 0x0000
	.short 0x001E, 0x007A
	.short 0x0000, 0x7FFF

# 80128668
D_80128668:
	.short 0xFE9D, 0x0000
	.short 0xFD0C, 0x007A
	.short 0x0000, 0x7FFF

# 80128674
D_80128674:
	.short 0xFFF8, 0x0000
	.short 0xFFFA, 0x007A
	.short 0x0000, 0x7FFF

# 80128680
D_80128680:
	.short 0xFFD1, 0x0000
	.short 0xFFE0, 0x007A
	.short 0x0000, 0x7FFF

# 8012868C
D_8012868C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 80128698
ptrTbl_80128698:
	.word D_80128650 # x
	.word D_8012865C # height
	.word D_80128668 # y
	.word D_80128674 # pitch
	.word D_80128680 # pan
	.word D_8012868C # roll

/*----------------------------------------------*/
# 801286B0
D_801286B0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 801286BC
D_801286BC:
	.short 0x0194, 0x0000
	.short 0x006A, 0x007A
	.short 0x0000, 0x7FFF

# 801286C8
D_801286C8:
	.short 0xF703, 0x0000
	.short 0xFBB7, 0x007A
	.short 0x0000, 0x7FFF

# 801286D4
D_801286D4:
	.short 0x000A, 0x0000
	.short 0xFFFD, 0x007A
	.short 0x0000, 0x7FFF

# 801286E0
D_801286E0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 801286EC
D_801286EC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x007A
	.short 0x0000, 0x7FFF

# 801286F8
ptrTbl_801286F8:
	.word D_801286B0 # x
	.word D_801286BC # height
	.word D_801286C8 # y
	.word D_801286D4 # pitch
	.word D_801286E0 # pan
	.word D_801286EC # roll

/*----------------------------------------------*/
# 80128710
D_80128710:
	.short 0x0000, 0x0000
	.short 0x0000, 0x011A
	.short 0x0000, 0x7FFF

# 8012871C
D_8012871C:
	.short 0x0071, 0x0000
	.short 0x00E0, 0x011A
	.short 0x0000, 0x7FFF

# 80128728
D_80128728:
	.short 0xFDD8, 0x0000
	.short 0x02BC, 0x011A
	.short 0x0000, 0x7FFF

# 80128734
D_80128734:
	.short 0xFFFA, 0x0000
	.short 0xFFFA, 0x011A
	.short 0x0000, 0x7FFF

# 80128740
D_80128740:
	.short 0x0000, 0x0000
	.short 0x0000, 0x011A
	.short 0x0000, 0x7FFF

# 8012874C
D_8012874C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x011A
	.short 0x0000, 0x7FFF

# 80128758
ptrTbl_80128758:
	.word D_80128710 # x
	.word D_8012871C # height
	.word D_80128728 # y
	.word D_80128734 # pitch
	.word D_80128740 # pan
	.word D_8012874C # roll

/*----------------------------------------------*/
# 80128770
D_80128770:
	.short 0xFEAB, 0x0000
	.short 0xFDD8, 0x0048
	.short 0x0000, 0x7FFF

# 8012877C
D_8012877C:
	.short 0x0067, 0x0000
	.short 0x006C, 0x0048
	.short 0x0000, 0x7FFF

# 80128788
D_80128788:
	.short 0xFF69, 0x0000
	.short 0xFF10, 0x0048
	.short 0x0000, 0x7FFF

# 80128794
D_80128794:
	.short 0xFFF2, 0x0000
	.short 0xFFFA, 0x0048
	.short 0x0000, 0x7FFF

# 801287A0
D_801287A0:
	.short 0x003E, 0x0000
	.short 0x0040, 0x0048
	.short 0x0000, 0x7FFF

# 801287AC
D_801287AC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0048
	.short 0x0000, 0x7FFF

# 801287B8
ptrTbl_801287B8:
	.word D_80128770 # x
	.word D_8012877C # height
	.word D_80128788 # y
	.word D_80128794 # pitch
	.word D_801287A0 # pan
	.word D_801287AC # roll

/*----------------------------------------------*/
# 801287D0
D_801287D0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 801287DC
D_801287DC:
	.short 0x0139, 0x0000
	.short 0x000B, 0x0202
	.short 0x0000, 0x7FFF

# 801287E8
D_801287E8:
	.short 0xF91C, 0x0000
	.short 0xFD61, 0x0202
	.short 0x0000, 0x7FFF

# 801287F4
D_801287F4:
	.short 0x0001, 0x0000
	.short 0xFFF7, 0x0202
	.short 0x0000, 0x7FFF

# 80128800
D_80128800:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 8012880C
D_8012880C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128818
ptrTbl_80128818:
	.word D_801287D0 # x
	.word D_801287DC # height
	.word D_801287E8 # y
	.word D_801287F4 # pitch
	.word D_80128800 # pan
	.word D_8012880C # roll

/*----------------------------------------------*/
# 80128830
# Camera Motion 0x01

D_80128830:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128838
D_80128838:
	.short 0x00C8, 0x0014
	.short 0x0000, 0x7FFF

# 80128840
D_80128840:
	.short 0xFB00, 0x0014
	.short 0x0000, 0x7FFF

# 80128848
D_80128848:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128850
D_80128850:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128858
D_80128858:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

#80128860
ptrTbl_80128860:
	.word D_80128830 # x
	.word D_80128838 # height
	.word D_80128840 # y
	.word D_80128848 # pitch
	.word D_80128850 # pan
	.word D_80128858 # roll

/*----------------------------------------------*/
# Camera Motion 0x0E (1)

# 80128878
D_80128878:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128884
D_80128884:
	.short 0x0553, 0x0000
	.short 0x02EA, 0x0202
	.short 0x0000, 0x7FFF

# 80128890
D_80128890:
	.short 0xFA79, 0x0000
	.short 0xFC16, 0x0202
	.short 0x0000, 0x7FFF

# 8012889C
D_8012889C:
	.short 0xFFEE, 0x0000
	.short 0x001D, 0x0202
	.short 0x0000, 0x7FFF

# 801288A8
D_801288A8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 801288B4
D_801288B4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 801288C0
ptrTbl_801288C0:
	.word D_80128878 # x
	.word D_80128884 # height
	.word D_80128890 # y
	.word D_8012889C # pitch
	.word D_801288A8 # pan
	.word D_801288B4 # roll

/*----------------------------------------------*/
# 801288D8
D_801288D8:
	.short 0xFDCD, 0x0000
	.short 0x01A9, 0x0202
	.short 0x0000, 0x7FFF

# 801288E4
D_801288E4:
	.short 0x0086, 0x0000
	.short 0x0129, 0x0202
	.short 0x0000, 0x7FFF

# 801288F0
D_801288F0:
	.short 0xFD33, 0x0000
	.short 0xFC96, 0x0202
	.short 0x0000, 0x7FFF

# 801288FC
D_801288FC:
	.short 0x0003, 0x0000
	.short 0x000D, 0x0202
	.short 0x0000, 0x7FFF

# 80128908
D_80128908:
	.short 0x0028, 0x0000
	.short 0xFFE5, 0x0202
	.short 0x0000, 0x7FFF

# 80128914
D_80128914:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128920
ptrTbl_80128920:
	.word D_801288D8 # x
	.word D_801288E4 # height
	.word D_801288F0 # y
	.word D_801288FC # pitch
	.word D_80128908 # pan
	.word D_80128914 # roll

/*----------------------------------------------*/
# 80128938
D_80128938:
	.short 0x0259, 0x0000
	.short 0xFDC1, 0x0202
	.short 0x0000, 0x7FFF

# 80128944
D_80128944:
	.short 0x0110, 0x0000
	.short 0x014F, 0x0202
	.short 0x0000, 0x7FFF

# 80128950
D_80128950:
	.short 0xFB2E, 0x0000
	.short 0xFB9D, 0x0202
	.short 0x0000, 0x7FFF

# 8012895C
D_8012895C:
	.short 0x0002, 0x0000
	.short 0x0005, 0x0202
	.short 0x0000, 0x7FFF

# 80128968
D_80128968:
	.short 0xFFE7, 0x0000
	.short 0x0014, 0x0202
	.short 0x0000, 0x7FFF

# 80128974
D_80128974:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128980
ptrTbl_80128980:
	.word D_80128938 # x
	.word D_80128944 # height
	.word D_80128950 # y
	.word D_8012895C # pitch
	.word D_80128968 # pan
	.word D_80128974 # roll

/*----------------------------------------------*/
# 80128998
D_80128998:
	.short 0x007F, 0x0000
	.short 0x022E, 0x0202
	.short 0x0000, 0x7FFF

# 801289A4
D_801289A4:
	.short 0x0008, 0x0000
	.short 0x04A8, 0x0202
	.short 0x0000, 0x7FFF

# 801289B0
D_801289B0:
	.short 0xFD12, 0x0000
	.short 0xFC51, 0x0202
	.short 0x0000, 0x7FFF

# 801289BC
D_801289BC:
	.short 0xFFC0, 0x0000
	.short 0x002A, 0x0202
	.short 0x0000, 0x7FFF

# 801289C8
D_801289C8:
	.short 0x0016, 0x0000
	.short 0xFFE3, 0x0202
	.short 0x0000, 0x7FFF

# 801289D4
D_801289D4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 801289E0
ptrTbl_801289E0:
	.word D_80128998 # x
	.word D_801289A4 # height
	.word D_801289B0 # y
	.word D_801289BC # pitch
	.word D_801289C8 # pan
	.word D_801289D4 # roll

/*----------------------------------------------*/
# 801289F8
D_801289F8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128A04
D_80128A04:
	.short 0x0168, 0x0000
	.short 0x024F, 0x0202
	.short 0x0000, 0x7FFF

# 80128A10
D_80128A10:
	.short 0x02BE, 0x0000
	.short 0xFA80, 0x0202
	.short 0x0000, 0x7FFF

# 80128A1C
D_80128A1C:
	.short 0xFFF8, 0x0000
	.short 0x000D, 0x0202
	.short 0x0000, 0x7FFF

# 80128A28
D_80128A28:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128A34
D_80128A34:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0202
	.short 0x0000, 0x7FFF

# 80128A40
ptrTbl_80128A40:
	.word D_801289F8 # x
	.word D_80128A04 # height
	.word D_80128A10 # y
	.word D_80128A1C # pitch
	.word D_80128A28 # pan
	.word D_80128A34 # roll

/*----------------------------------------------*/
# 80128A58
D_80128A58:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x00EE
	.short 0x0000, 0x00F0
	.short 0xFC68, 0x0170
	.short 0xFAEC, 0x01F0
	.short 0xFC68, 0x0270
	.short 0x0000, 0x02F0
	.short 0x0398, 0x0370
	.short 0x0514, 0x03F0
	.short 0x0398, 0x0470
	.short 0x0000, 0x04F0
	.short 0x0398, 0x0570
	.short 0x0000, 0x7FFF

# 80128A90
D_80128A90:
	.short 0xFE60, 0x0000
	.short 0xFE60, 0x0002
	.short 0xFAEC, 0x006E
	.short 0xFAEC, 0x0070
	.short 0xFAEC, 0x00EE
	.short 0xFAEC, 0x00F0
	.short 0xFC68, 0x0170
	.short 0x0000, 0x01F0
	.short 0x0398, 0x0270
	.short 0x0514, 0x02F0
	.short 0x0398, 0x0370
	.short 0x0000, 0x03F0
	.short 0xFC68, 0x0470
	.short 0xFAEC, 0x04F0
	.short 0xFC68, 0x0570
	.short 0x0000, 0x7FFF

# 80128AD0
D_80128AD0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x00EE
	.short 0x0000, 0x00F0
	.short 0x002D, 0x0170
	.short 0x005A, 0x01F0
	.short 0x0087, 0x0270
	.short 0x00B4, 0x02F0
	.short 0x00E1, 0x0370
	.short 0x010E, 0x03F0
	.short 0x013B, 0x0470
	.short 0x0168, 0x04F0
	.short 0x0195, 0x0570
	.short 0x0000, 0x7FFF

# 80128B08
D_80128B08:
	.short 0x02DB, 0x0000
	.short 0x02DB, 0x0002
	.short 0x0718, 0x006E
	.short 0x0718, 0x0070
	.short 0x0718, 0x056E
	.short 0x0718, 0x0570
	.short 0x0000, 0x7FFF

# 80128B24
D_80128B24:
	.short 0x0014, 0x0000
	.short 0x0014, 0x0002
	.short 0x001E, 0x006E
	.short 0x001E, 0x0070
	.short 0x002D, 0x016E
	.short 0x002D, 0x0170
	.short 0x002D, 0x056E
	.short 0x002D, 0x0570
	.short 0x0000, 0x7FFF

# 80128B48
D_80128B48:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x056E
	.short 0x0000, 0x0570
	.short 0x0000, 0x7FFF

# 80128B5C
ptrTbl_80128B5C:
	.word D_80128A58 # x
	.word D_80128B08 # height
	.word D_80128A90 # y
	.word D_80128B24 # pitch
	.word D_80128AD0 # pan
	.word D_80128B48 # roll

/*----------------------------------------------*/
# Camera Motion 0x02

# 80128B74
D_80128B74:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128B7C
D_80128B7C:
	.short 0x01D3, 0x0014
	.short 0x0000, 0x7FFF

# 80128B84
D_80128B84:
	.short 0xFCE6, 0x0014
	.short 0x0000, 0x7FFF

# 80128B8C
D_80128B8C:
	.short 0x0013, 0x0014
	.short 0x0000, 0x7FFF

# 80128B94
D_80128B94:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128B9C
D_80128B9C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80128BA4
ptrTbl_80128BA4:
	.word D_80128B74 # x
	.word D_80128B7C # height
	.word D_80128B84 # y
	.word D_80128B8C # pitch
	.word D_80128B94 # pan
	.word D_80128B9C # roll

/*----------------------------------------------*/
# Camera Motion 0x0E (2)

# 80128BBC
D_80128BBC:
	.short 0x0054, 0x0000
	.short 0xFFF3, 0x0282
	.short 0x0000, 0x7FFF

# 80128BC8
D_80128BC8:
	.short 0x0020, 0x0000
	.short 0x00A6, 0x0282
	.short 0x0000, 0x7FFF

# 80128BD4
D_80128BD4:
	.short 0x014D, 0x0000
	.short 0x00F5, 0x0282
	.short 0x0000, 0x7FFF

# 80128BE0
D_80128BE0:
	.short 0xFFF1, 0x0000
	.short 0x0003, 0x0282
	.short 0x0000, 0x7FFF

# 80128BEC
D_80128BEC:
	.short 0xFF5C, 0x0000
	.short 0xFF4A, 0x0282
	.short 0x0000, 0x7FFF

# 80128BF8
D_80128BF8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0282
	.short 0x0000, 0x7FFF

# 80128C04
ptrTbl_80128C04:
	.word D_80128BBC # x
	.word D_80128BC8 # height
	.word D_80128BD4 # y
	.word D_80128BE0 # pitch
	.word D_80128BEC # pan
	.word D_80128BF8 # roll

/*----------------------------------------------*/
# 80128C1C
D_80128C1C:
	.short 0xFED8, 0x0000
	.short 0xFFB9, 0x0282
	.short 0x0000, 0x7FFF

# 80128C28
D_80128C28:
	.short 0x0117, 0x0000
	.short 0x00A2, 0x0282
	.short 0x0000, 0x7FFF

# 80128C34
D_80128C34:
	.short 0x003D, 0x0000
	.short 0x010F, 0x0282
	.short 0x0000, 0x7FFF

# 80128C40
D_80128C40:
	.short 0xFEB3, 0x0000
	.short 0xFEAF, 0x0282
	.short 0x0000, 0x7FFF

# 80128C4C
D_80128C4C:
	.short 0x0066, 0x0000
	.short 0x00AD, 0x0282
	.short 0x0000, 0x7FFF

# 80128C58
D_80128C58:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0282
	.short 0x0000, 0x7FFF

# 80128C64
ptrTbl_80128C64:
	.word D_80128C1C # x
	.word D_80128C28 # height
	.word D_80128C34 # y
	.word D_80128C40 # pitch
	.word D_80128C4C # pan
	.word D_80128C58 # roll

/*----------------------------------------------*/
# 80128C7C
D_80128C7C:
	.short 0x00B3, 0x0000
	.short 0xFF5B, 0x0282
	.short 0x0000, 0x7FFF

# 80128C88
D_80128C88:
	.short 0x008E, 0x0000
	.short 0x0044, 0x0282
	.short 0x0000, 0x7FFF

# 80128C94
D_80128C94:
	.short 0xFF34, 0x0000
	.short 0xFE98, 0x0282
	.short 0x0000, 0x7FFF

# 80128CA0
D_80128CA0:
	.short 0xFFFD, 0x0000
	.short 0xFFFD, 0x0282
	.short 0x0000, 0x7FFF

# 80128CAC
D_80128CAC:
	.short 0x0141, 0x0000
	.short 0x0141, 0x0282
	.short 0x0000, 0x7FFF

# 80128CB8
D_80128CB8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0282
	.short 0x0000, 0x7FFF

# 80128CC4
ptrTbl_80128CC4:
	.word D_80128C7C # x
	.word D_80128C88 # height
	.word D_80128C94 # y
	.word D_80128CA0 # pitch
	.word D_80128CAC # pan
	.word D_80128CB8 # roll

/*----------------------------------------------*/
# 80128CDC
D_80128CDC:
	.short 0xFC68, 0x0000
	.short 0x0000, 0x0080
	.short 0x0398, 0x0100
	.short 0x0514, 0x0180
	.short 0x0398, 0x0200
	.short 0x0000, 0x0280
	.short 0xFC68, 0x0300
	.short 0xFAEC, 0x0380
	.short 0xFC68, 0x0400
	.short 0x0000, 0x0480
	.short 0x0000, 0x7FFF

# 80128D08
D_80128D08:
	.short 0x0718, 0x0000
	.short 0x0718, 0x0002
	.short 0x0718, 0x0400
	.short 0x0718, 0x0400
	.short 0x0000, 0x7FFF

# 80128D1C
D_80128D1C:
	.short 0x0398, 0x0000
	.short 0x0514, 0x0080
	.short 0x0398, 0x0100
	.short 0x0000, 0x0180
	.short 0xFC68, 0x0200
	.short 0xFAEC, 0x0280
	.short 0xFC68, 0x0300
	.short 0x0000, 0x0380
	.short 0x0398, 0x0400
	.short 0x0514, 0x0480
	.short 0x0000, 0x7FFF

# 80128D48
D_80128D48:
	.short 0x002D, 0x0000
	.short 0x002D, 0x0002
	.short 0x002D, 0x03FE
	.short 0x002D, 0x0400
	.short 0x0000, 0x7FFF

# 80128D5C
D_80128D5C:
	.short 0xFF1F, 0x0000
	.short 0xFF4C, 0x0080
	.short 0xFF79, 0x0100
	.short 0xFFA6, 0x0180
	.short 0xFFD3, 0x0200
	.short 0x0000, 0x0280
	.short 0x002D, 0x0300
	.short 0x005A, 0x0380
	.short 0x0087, 0x0400
	.short 0x0000, 0x7FFF

# 80128D84
D_80128D84:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x03FE
	.short 0x0000, 0x0400
	.short 0x0000, 0x7FFF

# 80128D98
ptrTbl_80128D98:
	.word D_80128CDC # x
	.word D_80128D08 # height
	.word D_80128D1C # y
	.word D_80128D48 # pitch
	.word D_80128D5C # pan
	.word D_80128D84 # roll

/*----------------------------------------------*/
# 80128DB0
D_80128DB0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x009E
	.short 0x0000, 0x0100
	.short 0x0000, 0x7FFF

# 80128DC4
D_80128DC4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0000, 0x00FE
	.short 0x0000, 0x0100
	.short 0x0000, 0x7FFF

# 80128DD8
D_80128DD8:
	.short 0x00C8, 0x0000
	.short 0x00C8, 0x0040
	.short 0x0050, 0x00C0
	.short 0x0060, 0x0100
	.short 0x0000, 0x7FFF

# 80128DEC
D_80128DEC:
	.short 0xFB00, 0x0000
	.short 0xFB00, 0x0002
	.short 0xFC40, 0x00FE
	.short 0xFC40, 0x0100
	.short 0x0000, 0x7FFF

# 80128E00
ptrTbl_80128E00:
	.word D_80128DC4 # x
	.word D_80128DD8 # height
	.word D_80128DEC # y
	.word D_80128DB0 # pitch
	.word D_80128DB0 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80128E18
D_80128E18:
	.short 0x0190, 0x0000
	.short 0x0190, 0x0002
	.short 0x0190, 0x00FE
	.short 0x0190, 0x0100
	.short 0x0000, 0x7FFF

# 80128E2C
ptrTbl_80128E2C:
	.word D_80128E18 # x
	.word D_80128DD8 # height
	.word D_80128DEC # y
	.word D_80128DB0 # pitch
	.word D_80128DB0 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80128E44
D_80128E44:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0xFE6E, 0x009E
	.short 0xFE6E, 0x00C8
	.short 0xFF30, 0x0100
	.short 0x0000, 0x7FFF

# 80128E5C
D_80128E5C:
	.short 0x00C8, 0x0000
	.short 0x00C8, 0x0028
	.short 0x00A2, 0x0078
	.short 0x00A2, 0x00A0
	.short 0x004C, 0x0100
	.short 0x0000, 0x7FFF

# 80128E74
D_80128E74:
	.short 0xFB00, 0x0000
	.short 0xFB00, 0x0002
	.short 0xFC6A, 0x009E
	.short 0xFC6A, 0x00A0
	.short 0xFD24, 0x0100
	.short 0x0000, 0x7FFF

# 80128E8C
D_80128E8C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0028
	.short 0x0004, 0x0078
	.short 0x0004, 0x00A0
	.short 0xFFF8, 0x0100
	.short 0x0000, 0x7FFF

# 80128EA4
D_80128EA4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0025, 0x009E
	.short 0x0025, 0x00C8
	.short 0x0027, 0x0100
	.short 0x0000, 0x7FFF

# 80128EBC
ptrTbl_80128EBC:
	.word D_80128E44 # x
	.word D_80128E5C # height
	.word D_80128E74 # y
	.word D_80128E8C # pitch
	.word D_80128EA4 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80128ED4
D_80128ED4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x0192, 0x009E
	.short 0x0192, 0x00C8
	.short 0x00D0, 0x0100
	.short 0x0000, 0x7FFF

# 80128EEC
D_80128EEC:
	.short 0x00C8, 0x0000
	.short 0x00C8, 0x0028
	.short 0x00A2, 0x0078
	.short 0x00A2, 0x00A0
	.short 0x004C, 0x0100
	.short 0x0000, 0x7FFF

# 80128F04
D_80128F04:
	.short 0xFB00, 0x0000
	.short 0xFB00, 0x0002
	.short 0xFC6A, 0x009E
	.short 0xFC6A, 0x00A0
	.short 0xFD24, 0x0100
	.short 0x0000, 0x7FFF

# 80128F1C
D_80128F1C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0028
	.short 0x0004, 0x0078
	.short 0x0004, 0x00A0
	.short 0xFFF8, 0x0100
	.short 0x0000, 0x7FFF

# 80128F34
D_80128F34:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0xFFDB, 0x009E
	.short 0xFFDB, 0x00C8
	.short 0xFFD9, 0x0100
	.short 0x0000, 0x7FFF

# 80128F4C
ptrTbl_80128F4C:
	.word D_80128ED4 # x
	.word D_80128EEC # height
	.word D_80128F04 # y
	.word D_80128F1C # pitch
	.word D_80128F34 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80128F64
D_80128F64:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0xFDA4, 0x009E
	.short 0xFDA4, 0x00C8
	.short 0xFEDA, 0x0100
	.short 0x0000, 0x7FFF

# 80128F7C
D_80128F7C:
	.short 0x00C8, 0x0000
	.short 0x00C8, 0x0028
	.short 0x0231, 0x0078
	.short 0x0231, 0x00A0
	.short 0x0174, 0x0100
	.short 0x0000, 0x7FFF

# 80128F94
D_80128F94:
	.short 0xFB00, 0x0000
	.short 0xFB00, 0x0002
	.short 0xFC96, 0x009E
	.short 0xFC96, 0x00A0
	.short 0xFD08, 0x0100
	.short 0x0000, 0x7FFF

# 80128FAC
D_80128FAC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0028
	.short 0x001A, 0x0078
	.short 0x001A, 0x00A0
	.short 0x0020, 0x0100
	.short 0x0000, 0x7FFF

# 80128FC4
D_80128FC4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x001C, 0x009E
	.short 0x001C, 0x00C8
	.short 0x002A, 0x0100
	.short 0x0000, 0x7FFF

# 80128FDC
ptrTbl_80128FDC:
	.word D_80128F64 # x
	.word D_80128F7C # height
	.word D_80128F94 # y
	.word D_80128FAC # pitch
	.word D_80128FC4 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80128FF4
D_80128FF4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0x025C, 0x009E
	.short 0x025C, 0x00C8
	.short 0x0126, 0x0100
	.short 0x0000, 0x7FFF

# 8012900C
D_8012900C:
	.short 0x00C8, 0x0000
	.short 0x00C8, 0x0028
	.short 0x0231, 0x0078
	.short 0x0231, 0x00A0
	.short 0x0174, 0x0100
	.short 0x0000, 0x7FFF

# 80129024
D_80129024:
	.short 0xFB00, 0x0000
	.short 0xFB00, 0x0002
	.short 0xFC96, 0x009E
	.short 0xFC96, 0x00A0
	.short 0xFD08, 0x0100
	.short 0x0000, 0x7FFF

# 8012903C
D_8012903C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0028
	.short 0x001A, 0x0078
	.short 0x001A, 0x00A0
	.short 0x0020, 0x0100
	.short 0x0000, 0x7FFF

# 80129054
D_80129054:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0002
	.short 0xFFE4, 0x009E
	.short 0xFFE4, 0x00C8
	.short 0xFFD6, 0x0100
	.short 0x0000, 0x7FFF

# 8012906C
ptrTbl_8012906C:
	.word D_80128FF4 # x
	.word D_8012900C # height
	.word D_80129024 # y
	.word D_8012903C # pitch
	.word D_80129054 # pan
	.word D_80128DB0 # roll

/*----------------------------------------------*/
# 80129084
D_80129084:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012908C
D_8012908C:
	.short 0x0064, 0x0014
	.short 0x0000, 0x7FFF

# 80129094
D_80129094:
	.short 0xFCE0, 0x0014
	.short 0x0000, 0x7FFF

# 8012909C
D_8012909C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801290A4
D_801290A4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801290AC
D_801290AC:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801290B4
ptrTbl_801290B4:
	.word D_80129084 # x
	.word D_8012908C # height
	.word D_80129094 # y
	.word D_8012909C # pitch
	.word D_801290A4 # pan
	.word D_801290AC # roll

/*----------------------------------------------*/
# 801290CC
D_801290CC:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 801290D8
D_801290D8:
	.short 0xFFCB, 0x0000
	.short 0x0044, 0x00F2
	.short 0x0000, 0x7FFF

# 801290E4
D_801290E4:
	.short 0xFDA0, 0x0000
	.short 0xFCC8, 0x00F2
	.short 0x0000, 0x7FFF

# 801290F0
D_801290F0:
	.short 0xFFD1, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 801290FC
D_801290FC:
	.short 0x000F, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129108
D_80129108:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129114
ptrTbl_80129114:
	.word D_801290CC # x
	.word D_801290D8 # height
	.word D_801290E4 # y
	.word D_801290F0 # pitch
	.word D_801290FC # pan
	.word D_80129108 # roll

/*----------------------------------------------*/
# 8012912C
D_8012912C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x012E
	.short 0x0000, 0x7FFF

# 80129138
D_80129138:
	.short 0x0096, 0x0000
	.short 0x0060, 0x012E
	.short 0x0000, 0x7FFF

# 80129144
D_80129144:
	.short 0xFCE0, 0x0000
	.short 0xF830, 0x012E
	.short 0x0000, 0x7FFF

# 80129150
D_80129150:
	.short 0x0000, 0x0000
	.short 0x0000, 0x012E
	.short 0x0000, 0x7FFF

# 8012915C
D_8012915C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x012E
	.short 0x0000, 0x7FFF

# 80129168
D_80129168:
	.short 0x0000, 0x0000
	.short 0x0000, 0x012E
	.short 0x0000, 0x7FFF

# 80129174
ptrTbl_80129174:
	.word D_8012912C # x
	.word D_80129138 # height
	.word D_80129144 # y
	.word D_80129150 # pitch
	.word D_8012915C # pan
	.word D_80129168 # roll

/*----------------------------------------------*/
# 8012918C
D_8012918C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129194
D_80129194:
	.short 0x00C8, 0x0014
	.short 0x0000, 0x7FFF

# 8012919C
D_8012919C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801291A4
D_801291A4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801291AC
D_801291AC:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801291B4
D_801291B4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801291BC
ptrTbl_801291BC:
	.word D_8012918C # x
	.word D_80129194 # height
	.word D_8012919C # y
	.word D_801291A4 # pitch
	.word D_801291AC # pan
	.word D_801291B4 # roll

/*----------------------------------------------*/
# 801291D4
D_801291D4:
	.short 0x012C, 0x0000
	.short 0x00C8, 0x0192
	.short 0x0000, 0x7FFF

# 801291E0
D_801291E0:
	.short 0x0032, 0x0000
	.short 0x012C, 0x0192
	.short 0x0000, 0x7FFF

# 801291EC
D_801291EC:
	.short 0xFF38, 0x0000
	.short 0xFF38, 0x0192
	.short 0x0000, 0x7FFF

# 801291F8
D_801291F8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129204
D_80129204:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129210
D_80129210:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 8012921C
ptrTbl_8012921C:
	.word D_801291D4 # x
	.word D_801291E0 # height
	.word D_801291EC # y
	.word D_801291F8 # pitch
	.word D_80129204 # pan
	.word D_80129210 # roll

/*----------------------------------------------*/
# 80129234
D_80129234:
	.short 0x012C, 0x0000
	.short 0x0190, 0x0192
	.short 0x0000, 0x7FFF

# 80129240
D_80129240:
	.short 0x0190, 0x0000
	.short 0x0032, 0x0192
	.short 0x0000, 0x7FFF

# 8012924C
D_8012924C:
	.short 0xFED4, 0x0000
	.short 0xFE70, 0x0192
	.short 0x0000, 0x7FFF

# 80129258
D_80129258:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129264
D_80129264:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129270
D_80129270:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 8012927C
ptrTbl_8012927C:
	.word D_80129234 # x
	.word D_80129240 # height
	.word D_8012924C # y
	.word D_80129258 # pitch
	.word D_80129264 # pan
	.word D_80129270 # roll

/*----------------------------------------------*/
# 80129294
D_80129294:
	.short 0xFED4, 0x0000
	.short 0xFF06, 0x0192
	.short 0x0000, 0x7FFF

# 801292A0
D_801292A0:
	.short 0x0190, 0x0000
	.short 0x0032, 0x0192
	.short 0x0000, 0x7FFF

# 801292AC
D_801292AC:
	.short 0x00C8, 0x0000
	.short 0x00FA, 0x0192
	.short 0x0000, 0x7FFF

# 801292B8
D_801292B8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801292C4
D_801292C4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801292D0
D_801292D0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801292DC
ptrTbl_801292DC:
	.word D_80129294 # x
	.word D_801292A0 # height
	.word D_801292AC # y
	.word D_801292B8 # pitch
	.word D_801292C4 # pan
	.word D_801292D0 # roll

/*----------------------------------------------*/
# 801292F4
D_801292F4:
	.short 0xFE0C, 0x0000
	.short 0xFF9C, 0x0192
	.short 0x0000, 0x7FFF

# 80129300
D_80129300:
	.short 0x0032, 0x0000
	.short 0x012C, 0x0192
	.short 0x0000, 0x7FFF

# 8012930C
D_8012930C:
	.short 0x01F4, 0x0000
	.short 0x0064, 0x0192
	.short 0x0000, 0x7FFF

# 80129318
D_80129318:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129324
D_80129324:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129330
D_80129330:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 8012933C
ptrTbl_8012933C:
	.word D_801292F4 # x
	.word D_80129300 # height
	.word D_8012930C # y
	.word D_80129318 # pitch
	.word D_80129324 # pan
	.word D_80129330 # roll

/*----------------------------------------------*/
# 80129354
D_80129354:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129360
D_80129360:
	.short 0x0064, 0x0000
	.short 0x012C, 0x0192
	.short 0x0000, 0x7FFF

# 8012936C
D_8012936C:
	.short 0x04B0, 0x0000
	.short 0x0320, 0x0192
	.short 0x0000, 0x7FFF

# 80129378
D_80129378:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129384
D_80129384:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129390
D_80129390:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 8012939C
ptrTbl_8012939C:
	.word D_80129354 # x
	.word D_80129360 # height
	.word D_8012936C # y
	.word D_80129378 # pitch
	.word D_80129384 # pan
	.word D_80129390 # roll

/*----------------------------------------------*/
# 801293B4
D_801293B4:
	.short 0x00C8, 0x0000
	.short 0xFF38, 0x0192
	.short 0x0000, 0x7FFF

# 801293C0
D_801293C0:
	.short 0x0064, 0x0000
	.short 0x00C8, 0x0192
	.short 0x0000, 0x7FFF

# 801293CC
D_801293CC:
	.short 0x0104, 0x0000
	.short 0x0104, 0x0192
	.short 0x0000, 0x7FFF

# 801293D8
D_801293D8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801293E4
D_801293E4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801293F0
D_801293F0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801293FC
ptrTbl_801293FC:
	.word D_801293B4 # x
	.word D_801293C0 # height
	.word D_801293CC # y
	.word D_801293D8 # pitch
	.word D_801293E4 # pan
	.word D_801293F0 # roll

/*----------------------------------------------*/
# 80129414
D_80129414:
	.short 0xFF10, 0x0000
	.short 0x00C8, 0x0192
	.short 0x0000, 0x7FFF

# 80129420
D_80129420:
	.short 0x0190, 0x0000
	.short 0x012C, 0x0192
	.short 0x0000, 0x7FFF

# 8012942C
D_8012942C:
	.short 0x00C8, 0x0000
	.short 0xFF10, 0x0192
	.short 0x0000, 0x7FFF

# 80129438
D_80129438:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129444
D_80129444:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129450
D_80129450:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 8012945C
ptrTbl_8012945C:
	.word D_80129414 # x
	.word D_80129420 # height
	.word D_8012942C # y
	.word D_80129438 # pitch
	.word D_80129444 # pan
	.word D_80129450 # roll

/*----------------------------------------------*/
# 80129474
D_80129474:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129480
D_80129480:
	.short 0x0063, 0x0000
	.short 0x0190, 0x0192
	.short 0x0000, 0x7FFF

# 8012948C
D_8012948C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 80129498
D_80129498:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801294A4
D_801294A4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801294B0
D_801294B0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0192
	.short 0x0000, 0x7FFF

# 801294BC
ptrTbl_801294BC:
	.word D_80129474 # x
	.word D_80129480 # height
	.word D_8012948C # y
	.word D_80129498 # pitch
	.word D_801294A4 # pan
	.word D_801294B0 # roll

/*----------------------------------------------*/
# 801294D4
D_801294D4:
	.short 0xFE8B, 0x0014
	.short 0x0000, 0x7FFF

# 801294DC
D_801294DC:
	.short 0x0067, 0x0014
	.short 0x0000, 0x7FFF

# 801294E4
D_801294E4:
	.short 0xFFE2, 0x0014
	.short 0x0000, 0x7FFF

# 801294EC
D_801294EC:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801294F4
D_801294F4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801294FC
D_801294FC:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129504
ptrTbl_80129504:
	.word D_801294D4 # x
	.word D_801294DC # height
	.word D_801294E4 # y
	.word D_801294EC # pitch
	.word D_801294F4 # pan
	.word D_801294FC # roll

/*----------------------------------------------*/
# 8012951C
D_8012951C:
	.short 0x0173, 0x0000
	.short 0xFEC3, 0x01E2
	.short 0x0000, 0x7FFF

# 80129528
D_80129528:
	.short 0x00F1, 0x0000
	.short 0x00F4, 0x01E2
	.short 0x0000, 0x7FFF

# 80129534
D_80129534:
	.short 0xFB9E, 0x0000
	.short 0xFBF6, 0x01E2
	.short 0x0000, 0x7FFF

# 80129540
D_80129540:
	.short 0x0000, 0x0000
	.short 0x0002, 0x01E2
	.short 0x0000, 0x7FFF

# 8012954C
D_8012954C:
	.short 0xFFEE, 0x0000
	.short 0x0010, 0x01E2
	.short 0x0000, 0x7FFF

# 80129558
D_80129558:
	.short 0x0000, 0x0000
	.short 0x0000, 0x01E2
	.short 0x0000, 0x7FFF

# 80129564
ptrTbl_80129564:
	.word D_8012951C # x
	.word D_80129528 # height
	.word D_80129534 # y
	.word D_80129540 # pitch
	.word D_8012954C # pan
	.word D_80129558 # roll

/*----------------------------------------------*/
# 8012957C
D_8012957C:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129588
D_80129588:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129594
D_80129594:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 801295A0
D_801295A0:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 801295AC
D_801295AC:
	.short 0x0087, 0x0000
	.short 0x0087, 0x00B6
	.short 0x0000, 0x7FFF

# 801295B8
D_801295B8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 801295C4
ptrTbl_801295C4:
	.word D_8012957C # x
	.word D_80129588 # height
	.word D_80129594 # y
	.word D_801295A0 # pitch
	.word D_801295AC # pan
	.word D_801295B8 # roll

/*----------------------------------------------*/
# 801295DC
D_801295DC:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 801295E8
D_801295E8:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 801295F4
D_801295F4:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129600
D_80129600:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012960C
D_8012960C:
	.short 0x013B, 0x0000
	.short 0x013B, 0x00B6
	.short 0x0000, 0x7FFF

# 80129618
D_80129618:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129624
ptrTbl_80129624:
	.word D_801295DC # x
	.word D_801295E8 # height
	.word D_801295F4 # y
	.word D_80129600 # pitch
	.word D_8012960C # pan
	.word D_80129618 # roll

/*----------------------------------------------*/
# 8012963C
D_8012963C:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129648
D_80129648:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129654
D_80129654:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 80129660
D_80129660:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012966C
D_8012966C:
	.short 0x008C, 0x0000
	.short 0x008C, 0x00B6
	.short 0x0000, 0x7FFF

# 80129678
D_80129678:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129684
ptrTbl_80129684:
	.word D_8012963C # x
	.word D_80129648 # height
	.word D_80129654 # y
	.word D_80129660 # pitch
	.word D_8012966C # pan
	.word D_80129678 # roll

/*----------------------------------------------*/
# 8012969C
D_8012969C:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 801296A8
D_801296A8:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 801296B4
D_801296B4:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 801296C0
D_801296C0:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 801296CC
D_801296CC:
	.short 0x0082, 0x0000
	.short 0x0082, 0x00B6
	.short 0x0000, 0x7FFF

# 801296D8
D_801296D8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 801296E4
ptrTbl_801296E4:
	.word D_8012969C # x
	.word D_801296A8 # height
	.word D_801296B4 # y
	.word D_801296C0 # pitch
	.word D_801296CC # pan
	.word D_801296D8 # roll

/*----------------------------------------------*/
# 801296FC
D_801296FC:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 80129708
D_80129708:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129714
D_80129714:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129720
D_80129720:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012972C
D_8012972C:
	.short 0xFFD8, 0x0000
	.short 0xFFD8, 0x00B6
	.short 0x0000, 0x7FFF

# 80129738
D_80129738:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129744
ptrTbl_80129744:
	.word D_801296FC # x
	.word D_80129708 # height
	.word D_80129714 # y
	.word D_80129720 # pitch
	.word D_8012972C # pan
	.word D_80129738 # roll

/*----------------------------------------------*/
# 8012975C
D_8012975C:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 80129768
D_80129768:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129774
D_80129774:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129780
D_80129780:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012978C
D_8012978C:
	.short 0xFFCE, 0x0000
	.short 0xFFCE, 0x00B6
	.short 0x0000, 0x7FFF

# 80129798
D_80129798:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 801297A4
ptrTbl_801297A4:
	.word D_8012975C # x
	.word D_80129768 # height
	.word D_80129774 # y
	.word D_80129780 # pitch
	.word D_8012978C # pan
	.word D_80129798 # roll

/*----------------------------------------------*/
# 801297BC
D_801297BC:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 801297C8
D_801297C8:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 801297D4
D_801297D4:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 801297E0
D_801297E0:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 801297EC
D_801297EC:
	.short 0x002D, 0x0000
	.short 0x002D, 0x00B6
	.short 0x0000, 0x7FFF

# 801297F8
D_801297F8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129804
ptrTbl_80129804:
	.word D_801297BC # x
	.word D_801297C8 # height
	.word D_801297D4 # y
	.word D_801297E0 # pitch
	.word D_801297EC # pan
	.word D_801297F8 # roll

/*----------------------------------------------*/
# 8012981C
D_8012981C:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 80129828
D_80129828:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129834
D_80129834:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 80129840
D_80129840:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012984C
D_8012984C:
	.short 0x0087, 0x0000
	.short 0x0087, 0x00B6
	.short 0x0000, 0x7FFF

# 80129858
D_80129858:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129864
ptrTbl_80129864:
	.word D_8012981C # x
	.word D_80129828 # height
	.word D_80129834 # y
	.word D_80129840 # pitch
	.word D_8012984C # pan
	.word D_80129858 # roll

/*----------------------------------------------*/
# 8012987C
D_8012987C:
	.short 0x0000, 0x0000, 0x005A, 0x00B6, 0x0000, 0x7FFF

# 80129888
D_80129888:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 80129894
D_80129894:
	.short 0x0000, 0x0000
	.short 0xFFA6, 0x00B6
	.short 0x0000, 0x7FFF

# 801298A0
D_801298A0:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 801298AC
D_801298AC:
	.short 0xFFD3, 0x0000
	.short 0xFFD3, 0x00B6
	.short 0x0000, 0x7FFF

# 801298B8
D_801298B8:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 801298C4
ptrTbl_801298C4:
	.word D_8012987C # x
	.word D_80129888 # height
	.word D_80129894 # y
	.word D_801298A0 # pitch
	.word D_801298AC # pan
	.word D_801298B8 # roll

/*----------------------------------------------*/
# 801298DC
D_801298DC:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 801298E8
D_801298E8:
	.short 0x00C8, 0x0000
	.short 0x0096, 0x00B6
	.short 0x0000, 0x7FFF

# 801298F4
D_801298F4:
	.short 0x0000, 0x0000
	.short 0x005A, 0x00B6
	.short 0x0000, 0x7FFF

# 80129900
D_80129900:
	.short 0xFFF6, 0x0000
	.short 0xFFF1, 0x00B6
	.short 0x0000, 0x7FFF

# 8012990C
D_8012990C:
	.short 0xFF79, 0x0000
	.short 0xFF79, 0x00B6
	.short 0x0000, 0x7FFF

# 80129918
D_80129918:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00B6
	.short 0x0000, 0x7FFF

# 80129924
ptrTbl_80129924:
	.word D_801298DC # x
	.word D_801298E8 # height
	.word D_801298F4 # y
	.word D_80129900 # pitch
	.word D_8012990C # pan
	.word D_80129918 # roll

/*----------------------------------------------*/
# 8012993C
D_8012993C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129948
D_80129948:
	.short 0x01DA, 0x0000
	.short 0x01DA, 0x00F2
	.short 0x0000, 0x7FFF

# 80129954
D_80129954:
	.short 0xFD00, 0x0000
	.short 0xFC2C, 0x00F2
	.short 0x0000, 0x7FFF

# 80129960
D_80129960:
	.short 0x000F, 0x0000
	.short 0x000F, 0x00F2
	.short 0x0000, 0x7FFF

# 8012996C
D_8012996C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129978
D_80129978:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129984
ptrTbl_80129984:
	.word D_8012993C # x
	.word D_80129948 # height
	.word D_80129954 # y
	.word D_80129960 # pitch
	.word D_8012996C # pan
	.word D_80129978 # roll

/*----------------------------------------------*/
# 8012999C
D_8012999C:
	.short 0xFEFD, 0x0014
	.short 0x0000, 0x7FFF

# 801299A4
D_801299A4:
	.short 0x00A8, 0x0014
	.short 0x0000, 0x7FFF

# 801299AC
D_801299AC:
	.short 0xFF9F, 0x0014
	.short 0x0000, 0x7FFF

# 801299B4
D_801299B4:
	.short 0x0008, 0x0014
	.short 0x0000, 0x7FFF

# 801299BC
D_801299BC:
	.short 0x0037, 0x0014
	.short 0x0000, 0x7FFF

# 801299C4
D_801299C4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 801299CC
ptrTbl_801299CC:
	.word D_8012999C # x
	.word D_801299A4 # height
	.word D_801299AC # y
	.word D_801299B4 # pitch
	.word D_801299BC # pan
	.word D_801299C4 # roll

/*----------------------------------------------*/
# 801299E4
D_801299E4:
	.short 0x00CF, 0x0014
	.short 0x0000, 0x7FFF

# 801299EC
D_801299EC:
	.short 0x0111, 0x0014
	.short 0x0000, 0x7FFF

# 801299F4
D_801299F4:
	.short 0xFFD8, 0x0014
	.short 0x0000, 0x7FFF

# 801299FC
D_801299FC:
	.short 0x0013, 0x0014
	.short 0x0000, 0x7FFF

# 80129A04
D_80129A04:
	.short 0xFFC7, 0x0014
	.short 0x0000, 0x7FFF

# 80129A0C
D_80129A0C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129A14
ptrTbl_80129A14:
	.word D_801299E4 # x
	.word D_801299EC # height
	.word D_801299F4 # y
	.word D_801299FC # pitch
	.word D_80129A04 # pan
	.word D_80129A0C # roll

/*----------------------------------------------*/
# 80129A2C
D_80129A2C:
	.short 0x0006, 0x0014
	.short 0x0000, 0x7FFF

# 80129A34
D_80129A34:
	.short 0x0072, 0x0014
	.short 0x0000, 0x7FFF

# 80129A3C
D_80129A3C:
	.short 0x0126, 0x0014
	.short 0x0000, 0x7FFF

# 80129A44
D_80129A44:
	.short 0xFFE5, 0x0014
	.short 0x0000, 0x7FFF

# 80129A4C
D_80129A4C:
	.short 0xFF4E, 0x0014
	.short 0x0000, 0x7FFF

# 80129A54
D_80129A54:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129A5C
ptrTbl_80129A5C:
	.word D_80129A2C # x
	.word D_80129A34 # height
	.word D_80129A3C # y
	.word D_80129A44 # pitch
	.word D_80129A4C # pan
	.word D_80129A54 # roll

/*----------------------------------------------*/
# 80129A74
D_80129A74:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0020
	.short 0x0000, 0x7FFF

# 80129A80
D_80129A80:
	.short 0x013F, 0x0000
	.short 0x01D3, 0x0020
	.short 0x0000, 0x7FFF

# 80129A8C
D_80129A8C:
	.short 0xFF71, 0x0000
	.short 0xFCE6, 0x0020
	.short 0x0000, 0x7FFF

# 80129A98
D_80129A98:
	.short 0x0013, 0x0000
	.short 0x0013, 0x0020
	.short 0x0000, 0x7FFF

# 80129AA4
D_80129AA4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0020
	.short 0x0000, 0x7FFF

# 80129AB0
D_80129AB0:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0020
	.short 0x0000, 0x7FFF

# 80129ABC
ptrTbl_80129ABC:
	.word D_80129A74 # x
	.word D_80129A80 # height
	.word D_80129A8C # y
	.word D_80129A98 # pitch
	.word D_80129AA4 # pan
	.word D_80129AB0 # roll

/*----------------------------------------------*/
# 80129AD4
D_80129AD4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129AE0
D_80129AE0:
	.short 0x00CD, 0x0000
	.short 0x00CD, 0x00F2
	.short 0x0000, 0x7FFF

# 80129AEC
D_80129AEC:
	.short 0xFF7B, 0x0000
	.short 0xFF7B, 0x00F2
	.short 0x0000, 0x7FFF

# 80129AF8
D_80129AF8:
	.short 0x001C, 0x0000
	.short 0xFFF3, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B04
D_80129B04:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B10
D_80129B10:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B1C
ptrTbl_80129B1C:
	.word D_80129AD4 # x
	.word D_80129AE0 # height
	.word D_80129AEC # y
	.word D_80129AF8 # pitch
	.word D_80129B04 # pan
	.word D_80129B10 # roll

/*----------------------------------------------*/
# 80129B34
D_80129B34:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B40
D_80129B40:
	.short 0x00CD, 0x0000
	.short 0x00CD, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B4C
D_80129B4C:
	.short 0x0115, 0x0000
	.short 0x0115, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B58
D_80129B58:
	.short 0x001F, 0x0000
	.short 0xFFF3, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B64
D_80129B64:
	.short 0x00B4, 0x0000
	.short 0x00B4, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B70
D_80129B70:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129B7C
ptrTbl_80129B7C:
	.word D_80129B34 # x
	.word D_80129B40 # height
	.word D_80129B4C # y
	.word D_80129B58 # pitch
	.word D_80129B64 # pan
	.word D_80129B70 # roll

/*----------------------------------------------*/
# 80129B94
D_80129B94:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x00A0
	.short 0x0000, 0x00F2
	.short 0x0000, 0x00F4
	.short 0x0000, 0x7FFF

# 80129BAC
D_80129BAC:
	.short 0x014C, 0xFFFE
	.short 0x014C, 0x0000
	.short 0x00AC, 0x00A0
	.short 0x01CC, 0x00F2
	.short 0x01CC, 0x00F4
	.short 0x0000, 0x7FFF

# 80129BC4
D_80129BC4:
	.short 0x0708, 0xFFFE
	.short 0x0708, 0x0000
	.short 0xFF5D, 0x00A0
	.short 0xFA88, 0x00F2
	.short 0xFA88, 0x00F4
	.short 0x0000, 0x7FFF

# 80129BDC
D_80129BDC:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x00A0
	.short 0x000B, 0x00F2
	.short 0x000B, 0x00F4
	.short 0x0000, 0x7FFF

# 80129BF4
D_80129BF4:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x00A0
	.short 0x0000, 0x00F2
	.short 0x0000, 0x00F4
	.short 0x0000, 0x7FFF

# 80129C0C
D_80129C0C:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x00A0
	.short 0x0000, 0x00F2
	.short 0x0000, 0x00F4
	.short 0x0000, 0x7FFF

# 80129C24
ptrTbl_80129C24:
	.word D_80129B94 # x
	.word D_80129BAC # height
	.word D_80129BC4 # y
	.word D_80129BDC # pitch
	.word D_80129BF4 # pan
	.word D_80129C0C # roll

/*----------------------------------------------*/
# 80129C3C
D_80129C3C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C48
D_80129C48:
	.short 0x006F, 0x0000
	.short 0x0376, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C54
D_80129C54:
	.short 0x0305, 0x0000
	.short 0x0860, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C60
D_80129C60:
	.short 0x0000, 0x0000
	.short 0x0015, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C6C
D_80129C6C:
	.short 0xFF4C, 0x0000
	.short 0xFF4C, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C78
D_80129C78:
	.short 0x0000, 0x0000
	.short 0x0000, 0x00F2
	.short 0x0000, 0x7FFF

# 80129C84
ptrTbl_80129C84:
	.word D_80129C3C # x
	.word D_80129C48 # height
	.word D_80129C54 # y
	.word D_80129C60 # pitch
	.word D_80129C6C # pan
	.word D_80129C78 # roll

/*----------------------------------------------*/
# 80129C9C
D_80129C9C:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129CA4
D_80129CA4:
	.short 0x00D0, 0x0014
	.short 0x0000, 0x7FFF

# 80129CAC
D_80129CAC:
	.short 0xFF6A, 0x0014
	.short 0x0000, 0x7FFF

# 80129CB4
D_80129CB4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129CBC
D_80129CBC:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129CC4
D_80129CC4:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129CCC
ptrTbl_80129CCC:
	.word D_80129C9C # x
	.word D_80129CA4 # height
	.word D_80129CAC # y
	.word D_80129CB4 # pitch
	.word D_80129CBC # pan
	.word D_80129CC4 # roll

/*----------------------------------------------*/
# 80129CE4
D_80129CE4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x04B0
	.short 0xFF12, 0x0960
	.short 0xFE42, 0x0E10
	.short 0xFF2C, 0x12C0
	.short 0x0000, 0x1770
	.short 0x00B7, 0x1C20
	.short 0x0103, 0x20D0
	.short 0x0104, 0x2580
	.short 0x0000, 0x2A30
	.short 0x0000, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129D14
D_80129D14:
	.short 0x00C8, 0x0000
	.short 0x00C0, 0x04B0
	.short 0x0064, 0x0960
	.short 0x015A, 0x0E10
	.short 0x0217, 0x12C0
	.short 0x0267, 0x1770
	.short 0x01E9, 0x1C20
	.short 0x0126, 0x20D0
	.short 0x009C, 0x2580
	.short 0x0131, 0x2A30
	.short 0x00C8, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129D44
D_80129D44:
	.short 0xFB00, 0x0000
	.short 0xFEC6, 0x04B0
	.short 0xFF08, 0x0960
	.short 0xFFAD, 0x0E10
	.short 0x00B1, 0x12C0
	.short 0x011C, 0x1770
	.short 0x00AD, 0x1C20
	.short 0x001D, 0x20D0
	.short 0xFF42, 0x2580
	.short 0xFEAF, 0x2A30
	.short 0xFB00, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129D74
D_80129D74:
	.short 0x0000, 0x0000
	.short 0x0000, 0x04B0
	.short 0xFFED, 0x0960
	.short 0x0015, 0x0E10
	.short 0x0035, 0x12C0
	.short 0x003A, 0x1770
	.short 0x0034, 0x1C20
	.short 0x000F, 0x20D0
	.short 0xFFF5, 0x2580
	.short 0x000E, 0x2A30
	.short 0x0000, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129DA4
D_80129DA4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x04B0
	.short 0x002C, 0x0960
	.short 0x0052, 0x0E10
	.short 0x0085, 0x12C0
	.short 0x00AF, 0x1770
	.short 0x00D8, 0x1C20
	.short 0x0106, 0x20D0
	.short 0x0136, 0x2580
	.short 0x0168, 0x2A30
	.short 0x0168, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129DD4
D_80129DD4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x004B
	.short 0x0000, 0x2E95
	.short 0x0000, 0x2EE0
	.short 0x0000, 0x7FFF

# 80129DE8
ptrTbl_80129DE8:
	.word D_80129CE4 # x
	.word D_80129D14 # height
	.word D_80129D44 # y
	.word D_80129D74 # pitch
	.word D_80129DA4 # pan
	.word D_80129DD4 # roll

/*----------------------------------------------*/
# 80129E00
D_80129E00:
	.short 0x0022, 0xFFFE
	.short 0x0022, 0x0000
	.short 0x00F8, 0x0080
	.short 0x004D, 0x0102
	.short 0x004D, 0x0104
	.short 0x0000, 0x7FFF

# 80129E18
D_80129E18:
	.short 0x0107, 0xFFFE
	.short 0x0107, 0x0000
	.short 0x0110, 0x0080
	.short 0x00EB, 0x0102
	.short 0x00EB, 0x0104
	.short 0x0000, 0x7FFF

# 80129E30
D_80129E30:
	.short 0x00C4, 0xFFFE
	.short 0x00C4, 0x0000
	.short 0x0040, 0x0080
	.short 0xFF23, 0x0102
	.short 0xFF23, 0x0104
	.short 0x0000, 0x7FFF

# 80129E48
D_80129E48:
	.short 0x0008, 0xFFFE
	.short 0x0008, 0x0000
	.short 0x0007, 0x0080
	.short 0x0000, 0x0102
	.short 0x0000, 0x0104
	.short 0x0000, 0x7FFF

# 80129E60
D_80129E60:
	.short 0xFF53, 0xFFFE
	.short 0xFF53, 0x0000
	.short 0xFF9B, 0x0080
	.short 0xFFF4, 0x0102
	.short 0xFFF4, 0x0104
	.short 0x0000, 0x7FFF

# 80129E78
D_80129E78:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0080
	.short 0x0000, 0x0102
	.short 0x0000, 0x0104
	.short 0x0000, 0x7FFF

# 80129E90
ptrTbl_80129E90:
	.word D_80129E00 # x
	.word D_80129E18 # height
	.word D_80129E30 # y
	.word D_80129E48 # pitch
	.word D_80129E60 # pan
	.word D_80129E78 # roll

/*----------------------------------------------*/
# 80129EA8
D_80129EA8:
	.short 0xFF84, 0x0000
	.short 0x0016, 0x0402
	.short 0x0000, 0x7FFF

# 80129EB4
D_80129EB4:
	.short 0x00AE, 0x0000
	.short 0x010F, 0x0402
	.short 0x0000, 0x7FFF

# 80129EC0
D_80129EC0:
	.short 0xFFF4, 0x0000
	.short 0xFFBE, 0x0402
	.short 0x0000, 0x7FFF

# 80129ECC
D_80129ECC:
	.short 0x0001, 0x0000
	.short 0x0001, 0x0402
	.short 0x0000, 0x7FFF

# 80129ED8
D_80129ED8:
	.short 0xFFF1, 0x0000
	.short 0xFFF1, 0x0402
	.short 0x0000, 0x7FFF

# 80129EE4
D_80129EE4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0402
	.short 0x0000, 0x7FFF

# 80129EF0
ptrTbl_80129EF0:
	.word D_80129EA8 # x
	.word D_80129EB4 # height
	.word D_80129EC0 # y
	.word D_80129ECC # pitch
	.word D_80129ED8 # pan
	.word D_80129EE4 # roll

/*----------------------------------------------*/
# Camera Motion 0x0E (3)

# 80129F08
D_80129F08:
	.short 0x0028, 0x0014
	.short 0x0000, 0x7FFF

# 80129F10
D_80129F10:
	.short 0x0100, 0x0014
	.short 0x0000, 0x7FFF

# 80129F18
D_80129F18:
	.short 0xFF69, 0x0014
	.short 0x0000, 0x7FFF

# 80129F20
D_80129F20:
	.short 0x0007, 0x0014
	.short 0x0000, 0x7FFF

# 80129F28
D_80129F28:
	.short 0xFFF3, 0x0014
	.short 0x0000, 0x7FFF

# 80129F30
D_80129F30:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129F38
ptrTbl_80129F38:
	.word D_80129F08 # x
	.word D_80129F10 # height
	.word D_80129F18 # y
	.word D_80129F20 # pitch
	.word D_80129F28 # pan
	.word D_80129F30 # roll

/*----------------------------------------------*/
# 80129F50
D_80129F50:
	.short 0x001C, 0x0014
	.short 0x0000, 0x7FFF

# 80129F58
D_80129F58:
	.short 0x0100, 0x0014
	.short 0x0000, 0x7FFF

# 80129F60
D_80129F60:
	.short 0x00C5, 0x0014
	.short 0x0000, 0x7FFF

# 80129F68
D_80129F68:
	.short 0x0007, 0x0014
	.short 0x0000, 0x7FFF

# 80129F70
D_80129F70:
	.short 0xFF4D, 0x0014
	.short 0x0000, 0x7FFF

# 80129F78
D_80129F78:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 80129F80
ptrTbl_80129F80:
	.word D_80129F50 # x
	.word D_80129F58 # height
	.word D_80129F60 # y
	.word D_80129F68 # pitch
	.word D_80129F70 # pan
	.word D_80129F78 # roll

/*----------------------------------------------*/
# 80129F98
D_80129F98:
	.short 0xFFE7, 0x0000
	.short 0x0028, 0x0102
	.short 0x0000, 0x7FFF

# 80129FA4
D_80129FA4:
	.short 0x007A, 0x0000
	.short 0x0100, 0x0102
	.short 0x0000, 0x7FFF

# 80129FB0
D_80129FB0:
	.short 0xFF16, 0x0000
	.short 0xFF69, 0x0102
	.short 0x0000, 0x7FFF

# 80129FBC
D_80129FBC:
	.short 0xFFFF, 0x0000
	.short 0x0007, 0x0102
	.short 0x0000, 0x7FFF

# 80129FC8
D_80129FC8:
	.short 0x0005, 0x0000
	.short 0xFFF3, 0x0102
	.short 0x0000, 0x7FFF

# 80129FD4
D_80129FD4:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0102
	.short 0x0000, 0x7FFF

# 80129FE0
ptrTbl_80129FE0:
	.word D_80129F98 # x
	.word D_80129FA4 # height
	.word D_80129FB0 # y
	.word D_80129FBC # pitch
	.word D_80129FC8 # pan
	.word D_80129FD4 # roll

/*----------------------------------------------*/
# 80129FF8
D_80129FF8:
	.short 0x015C, 0x0000
	.short 0xFF3D, 0x0142
	.short 0x0000, 0x7FFF

# 8012A004
D_8012A004:
	.short 0x0104, 0x0000
	.short 0x07E7, 0x0142
	.short 0x0000, 0x7FFF

# 8012A010
D_8012A010:
	.short 0xFF8D, 0x0000
	.short 0xFEDA, 0x0142
	.short 0x0000, 0x7FFF

# 8012A01C
D_8012A01C:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0142
	.short 0x0000, 0x7FFF

# 8012A028
D_8012A028:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0142
	.short 0x0000, 0x7FFF

# 8012A034
D_8012A034:
	.short 0x0000, 0x0000
	.short 0x0000, 0x0142
	.short 0x0000, 0x7FFF

# 8012A040
ptrTbl_8012A040:
	.word D_80129FF8 # x
	.word D_8012A004 # height
	.word D_8012A010 # y
	.word D_8012A01C # pitch
	.word D_8012A028 # pan
	.word D_8012A034 # roll

/*----------------------------------------------*/
# 8012A058
D_8012A058:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A060
D_8012A060:
	.short 0x00F8, 0x0014
	.short 0x0000, 0x7FFF

# 8012A068
D_8012A068:
	.short 0xFEF2, 0x0014
	.short 0x0000, 0x7FFF

# 8012A070
D_8012A070:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A078
D_8012A078:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A080
D_8012A080:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A088
ptrTbl_8012A088:
	.word D_8012A058 # x
	.word D_8012A060 # height
	.word D_8012A068 # y
	.word D_8012A070 # pitch
	.word D_8012A078 # pan
	.word D_8012A080 # roll

/*----------------------------------------------*/
# 8012A0A0
D_8012A0A0:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0A8
D_8012A0A8:
	.short 0x0157, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0B0
D_8012A0B0:
	.short 0xFDC5, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0B8
D_8012A0B8:
	.short 0x000E, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0C0
D_8012A0C0:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0C8
D_8012A0C8:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0D0
ptrTbl_8012A0D0:
	.word D_8012A0A0 # x
	.word D_8012A0A8 # height
	.word D_8012A0B0 # y
	.word D_8012A0B8 # pitch
	.word D_8012A0C0 # pan
	.word D_8012A0C8 # roll

/*----------------------------------------------*/
# 8012A0E8
D_8012A0E8:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0F0
D_8012A0F0:
	.short 0x00F8, 0x0014
	.short 0x0000, 0x7FFF

# 8012A0F8
D_8012A0F8:
	.short 0xFE3E, 0x0014
	.short 0x0000, 0x7FFF

# 8012A100
D_8012A100:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A108
D_8012A108:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A110
D_8012A110:
	.short 0x0000, 0x0014
	.short 0x0000, 0x7FFF

# 8012A118
ptrTbl_8012A118:
	.word D_8012A0E8 # x
	.word D_8012A0F0 # height
	.word D_8012A0F8 # y
	.word D_8012A100 # pitch
	.word D_8012A108 # pan
	.word D_8012A110 # roll

/*----------------------------------------------*/
# 8012A130
D_8012A130:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A148
D_8012A148:
	.short 0x00F8, 0xFFFE
	.short 0x00F8, 0x0000
	.short 0x00F8, 0x0096
	.short 0x00F8, 0x012E
	.short 0x00F8, 0x0130
	.short 0x0000, 0x7FFF

# 8012A160
D_8012A160:
	.short 0xFEF2, 0xFFFE
	.short 0xFEF2, 0x0000
	.short 0xFEF2, 0x0096
	.short 0xFEF2, 0x012E
	.short 0xFEF2, 0x0130
	.short 0x0000, 0x7FFF

# 8012A178
D_8012A178:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A190
D_8012A190:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0xFFEC, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A1A8
D_8012A1A8:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A1C0
ptrTbl_8012A1C0:
	.word D_8012A130 # x
	.word D_8012A148 # height
	.word D_8012A160 # y
	.word D_8012A178 # pitch
	.word D_8012A190 # pan
	.word D_8012A1A8 # roll

/*----------------------------------------------*/
# 8012A1D8
D_8012A1D8:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A1F0
D_8012A1F0:
	.short 0x00F8, 0xFFFE
	.short 0x00F8, 0x0000
	.short 0x00F8, 0x0096
	.short 0x00F8, 0x012E
	.short 0x00F8, 0x0130
	.short 0x0000, 0x7FFF

# 8012A208
D_8012A208:
	.short 0xFEF2, 0xFFFE
	.short 0xFEF2, 0x0000
	.short 0xFEF2, 0x0096
	.short 0xFEF2, 0x012E
	.short 0xFEF2, 0x0130
	.short 0x0000, 0x7FFF

# 8012A220
D_8012A220:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A238
D_8012A238:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0014, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A250
D_8012A250:
	.short 0x0000, 0xFFFE
	.short 0x0000, 0x0000
	.short 0x0000, 0x0096
	.short 0x0000, 0x012E
	.short 0x0000, 0x0130
	.short 0x0000, 0x7FFF

# 8012A268
ptrTbl_8012A268:
	.word D_8012A1D8 # x
	.word D_8012A1F0 # height
	.word D_8012A208 # y
	.word D_8012A220 # pitch
	.word D_8012A238 # pan
	.word D_8012A250 # roll

/*----------------------------------------------------------------------------*/
# 8012A280 (0x61B0 offset)
# 0x00 [w] pointer to camera controls
# 0x04 [s] 
# 0x06 [s] camera motion preset

D_8012A280:
	.word ptrTbl_80126820
	.short 0x0000, 0x0080

	.word ptrTbl_80126880
	.short 0x0000, 0x0081

	.word ptrTbl_801268E0
	.short 0x0000, 0x0082

	.word ptrTbl_80126940
	.short 0x0000, 0x0083

	.word ptrTbl_801269A0
	.short 0x0000, 0x0084

	.word ptrTbl_80126A00
	.short 0x0000, 0x0085

	.word ptrTbl_80126A60
	.short 0x0000, 0x0086

	.word ptrTbl_80126AC0
	.short 0x0000, 0x0087

	.word ptrTbl_80126B20
	.short 0x0000, 0x0088

	.word ptrTbl_80126B80
	.short 0x0000, 0x0089

	.word ptrTbl_80126BE0
	.short 0x0000, 0x008A

	.word ptrTbl_80126C94
	.short 0x0000, 0x008B

	.word ptrTbl_80126CF4
	.short 0x0000, 0x008C

	.word ptrTbl_80126D3C
	.short 0x0000, 0x008D

	.word ptrTbl_80126D9C
	.short 0x0000, 0x008E

	.word ptrTbl_80126DFC
	.short 0x0000, 0x008F

	.word ptrTbl_80126E5C
	.short 0x0000, 0x0090

	.word ptrTbl_80126EBC
	.short 0x0000, 0x0091

	.word ptrTbl_80126F1C
	.short 0x0000, 0x0092

	.word ptrTbl_80126F7C
	.short 0x0000, 0x0093

	.word ptrTbl_80126FDC
	.short 0x0000, 0x0094

	.word ptrTbl_8012703C
	.short 0x0000, 0x0095

	.word ptrTbl_8012709C
	.short 0x0000, 0x0096

	.word ptrTbl_801270FC
	.short 0x0000, 0x0097

	.word ptrTbl_8012715C
	.short 0x0000, 0x0098

	.word ptrTbl_801271BC
	.short 0x0000, 0x0099

	.word ptrTbl_8012721C
	.short 0x0000, 0x009A

	.word ptrTbl_8012727C
	.short 0x0000, 0x009B

	.word ptrTbl_801272DC
	.short 0x0000, 0x009C

	.word ptrTbl_8012733C
	.short 0x0000, 0x009D

	.word ptrTbl_8012739C
	.short 0x0000, 0x009E

	.word ptrTbl_801273FC
	.short 0x0000, 0x009F

	.word ptrTbl_8012745C
	.short 0x0000, 0x00A0

	.word ptrTbl_801274BC
	.short 0x0000, 0x00A1

	.word ptrTbl_8012751C
	.short 0x0000, 0x00A2

	.word ptrTbl_8012757C
	.short 0x0000, 0x00A3

	.word ptrTbl_801275DC
	.short 0x0000, 0x00A4

	.word ptrTbl_80127690
	.short 0x0000, 0x00A5

	.word ptrTbl_801276F0
	.short 0x0000, 0x00A6

	.word ptrTbl_80127750
	.short 0x0000, 0x00A7

	.word ptrTbl_801277B0
	.short 0x0000, 0x00A8

	.word ptrTbl_80127810
	.short 0x0000, 0x00A9

	.word ptrTbl_80127870
	.short 0x0000, 0x00AA

	.word ptrTbl_801278D0
	.short 0x0000, 0x00AB

	.word ptrTbl_80127930
	.short 0x0000, 0x00AC

	.word ptrTbl_80127990
	.short 0x0000, 0x00AD

	.word ptrTbl_801279F0
	.short 0x0000, 0x00AE

	.word ptrTbl_80127A50
	.short 0x0000, 0x00AF

	.word ptrTbl_80127AB0
	.short 0x0000, 0x00B0

	.word ptrTbl_80127B10
	.short 0x0000, 0x00B1

	.word ptrTbl_80127B70
	.short 0x0000, 0x00B2

	.word ptrTbl_80127BD0
	.short 0x0000, 0x00B3

	.word ptrTbl_80127C30
	.short 0x0000, 0x00B4

	.word ptrTbl_80127C90
	.short 0x0000, 0x00B5

	.word ptrTbl_80127CF0
	.short 0x0000, 0x00B6

	.word ptrTbl_80127D50
	.short 0x0000, 0x00B7

	.word ptrTbl_80127DB0
	.short 0x0000, 0x00B8

	.word ptrTbl_80127E10
	.short 0x0000, 0x00B9

	.word ptrTbl_80127E70
	.short 0x0000, 0x00BA

	.word ptrTbl_80127ED0
	.short 0x0000, 0x00BB

	.word ptrTbl_80127F30
	.short 0x0000, 0x00BC

	.word ptrTbl_80127F90
	.short 0x0000, 0x00BD

	.word ptrTbl_80127FF0
	.short 0x0000, 0x00BE

	.word ptrTbl_80128050
	.short 0x0000, 0x00BF

	.word ptrTbl_801280B0
	.short 0x0000, 0x00C0

	.word ptrTbl_80128110
	.short 0x0000, 0x00C1

	.word ptrTbl_80128170
	.short 0x0000, 0x00C2

	.word ptrTbl_801281D0
	.short 0x0000, 0x00C3

	.word ptrTbl_80128230
	.short 0x0000, 0x00C4

	.word ptrTbl_80128290
	.short 0x0000, 0x00C5

	.word ptrTbl_801282F0
	.short 0x0000, 0x00C6

	.word ptrTbl_80128350
	.short 0x0000, 0x00C7

	.word ptrTbl_801283B0
	.short 0x0000, 0x00C8

	.word ptrTbl_80128410
	.short 0x0000, 0x00C9

	.word ptrTbl_80128470
	.short 0x0000, 0x00CA

	.word ptrTbl_801284B8
	.short 0x0000, 0x00CB

	.word ptrTbl_80128518
	.short 0x0000, 0x00CC

	.word ptrTbl_80128578
	.short 0x0000, 0x00CD

	.word ptrTbl_801285D8
	.short 0x0000, 0x00CE

	.word ptrTbl_80128638
	.short 0x0000, 0x00D0

	.word ptrTbl_80128698
	.short 0x0000, 0x00D1

	.word ptrTbl_801286F8
	.short 0x0000, 0x00D2

	.word ptrTbl_80128758
	.short 0x0000, 0x00D3

	.word ptrTbl_80128818
	.short 0x0000, 0x00D4

	.word ptrTbl_80128860
	.short 0x000C, 0x0001

	.word ptrTbl_801288C0
	.short 0x0001, 0x000E

	.word ptrTbl_80128920
	.short 0x0001, 0x0012

	.word ptrTbl_80128980
	.short 0x0001, 0x0013

	.word ptrTbl_801289E0
	.short 0x0001, 0x0016

	.word ptrTbl_80128A40
	.short 0x0001, 0x0017

	.word ptrTbl_80128B5C
	.short 0x0002, 0x0004

	.word ptrTbl_80128BA4
	.short 0x0001, 0x0002

	.word ptrTbl_80128C04
	.short 0x0003, 0x000E

	.word ptrTbl_80128C64
	.short 0x0003, 0x0012

	.word ptrTbl_80128CC4
	.short 0x0003, 0x0013

	.word ptrTbl_80128D98
	.short 0x0002, 0x000D

	.word ptrTbl_80128E00
	.short 0x0001, 0x0004

	.word ptrTbl_80128EBC
	.short 0x0001, 0x0005

	.word ptrTbl_80128F4C
	.short 0x0001, 0x0006

	.word ptrTbl_80128FDC
	.short 0x0001, 0x0007

	.word ptrTbl_8012906C
	.short 0x0001, 0x0008

	.word ptrTbl_80128E2C
	.short 0x0001, 0x0009

	.word ptrTbl_801290B4
	.short 0x0004, 0x000A

	.word ptrTbl_80129114
	.short 0x000A, 0x000B

	.word ptrTbl_80129174
	.short 0x0004, 0x000D

	.word ptrTbl_801291BC
	.short 0x000D, 0x000B

	.word ptrTbl_8012921C
	.short 0x0000, 0x000F

	.word ptrTbl_801292DC
	.short 0x0000, 0x0010

	.word ptrTbl_8012939C
	.short 0x0000, 0x0011

	.word ptrTbl_8012945C
	.short 0x0000, 0x0012

	.word ptrTbl_801294BC
	.short 0x0000, 0x0013

	.word ptrTbl_80129504
	.short 0x0000, 0x0016

	.word ptrTbl_80129564
	.short 0x0000, 0x0017

	.word ptrTbl_801295C4
	.short 0x0000, 0x0018

	.word ptrTbl_80129624
	.short 0x0000, 0x0019

	.word ptrTbl_80129684
	.short 0x0000, 0x001A

	.word ptrTbl_801296E4
	.short 0x0000, 0x001B

	.word ptrTbl_80129744
	.short 0x0000, 0x001C

	.word ptrTbl_801297A4
	.short 0x0000, 0x001D

	.word ptrTbl_80129804
	.short 0x0000, 0x001E

	.word ptrTbl_80129864
	.short 0x0000, 0x001F

	.word ptrTbl_801298C4
	.short 0x0000, 0x0020

	.word ptrTbl_80129924
	.short 0x0000, 0x0021

	.word ptrTbl_80129984
	.short 0x0000, 0x0022

	.word ptrTbl_80129E90
	.short 0x0025, 0x000D

	.word ptrTbl_80129F38
	.short 0x0025, 0x000E

	.word ptrTbl_80129F80
	.short 0x0025, 0x0012

	.word ptrTbl_80129EF0
	.short 0x0025, 0x0013

	.word ptrTbl_80129FE0
	.short 0x0025, 0x0016

	.word ptrTbl_801299CC
	.short 0x0026, 0x000F

	.word ptrTbl_80129A14
	.short 0x0026, 0x0010

	.word ptrTbl_80129A5C
	.short 0x0026, 0x0011

	.word ptrTbl_80129ABC
	.short 0x0026, 0x000E

	.word ptrTbl_80129CCC
	.short 0x0026, 0x0022

	.word ptrTbl_80129B1C
	.short 0x0026, 0x0014

	.word ptrTbl_80129B7C
	.short 0x0026, 0x0015

	.word ptrTbl_80129C24
	.short 0x0026, 0x0016

	.word ptrTbl_80129C84
	.short 0x0026, 0x0017

	.word ptrTbl_8012A040
	.short 0x0025, 0x0004

	.word ptrTbl_8012A088
	.short 0x0002, 0x0024

	.word ptrTbl_8012A0D0
	.short 0x0002, 0x0025

	.word ptrTbl_8012A1C0
	.short 0x0024, 0x000E

	.word ptrTbl_8012A268
	.short 0x0024, 0x0012

	.word ptrTbl_8012A118
	.short 0x0024, 0x0013

	.word 0, 0
	.word 0, 0
