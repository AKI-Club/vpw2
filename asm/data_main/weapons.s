# Virtual Pro-Wrestling 2 | data_main/weapons.s
# Weapon Definitions
# These are meant to go at 0x487F0 in the Z64 ROM; 80047BF0 runtime.

/*----------------------------------------------------------------------------*/
# related to weapon reach distance?
D_80047BF0:
	.byte 0x02 # kendo stick
	.byte 0x02 # sickle
	.byte 0x02 # microphone?
	.byte 0x02 # baseball bat
	.byte 0x02 # barbed wire baseball bat
	.byte 0x04 # chair
	.byte 0x04 # table piece
	.byte 0x00, 0x00, 0x00, 0x00, 0x00

D_80047BFC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x1E, 0x1E, 0xE2, 0xE2

D_80047C04:
	.byte 0x28, 0xD8, 0x28, 0xD8
	.byte 0x32, 0xCE, 0x32, 0xCE

/*----------------------------------------------------------------------------*/
# 80047C0C (Z64: 0x4880C; data01 offset: 0x)

WeaponModel_Bat:
	.short 0x8F8, 0x8FB

WeaponTex_Bat:
	.short 0x8F9, 0x8F9

WeaponTex_BarbedWireBat:
	.short 0x8FC, 0x8FC

WeaponModel_Chair:
	.short 0x8FE, 0x901, 0x904, 0

WeaponTex_Chair:
	.short 0x8FF, 0x902, 0x905, 0

WeaponModel_Table:
	.short 0x8FE, 0x901, 0x904, 0

WeaponTex_Table:
	.short 0x907, 0x909, 0x90B, 0

PropModel_Microphone:
	.short 0x912, 0

PropTex_Microphone:
	.short 0x910, 0

WeaponModel_KendoStick:
	.short 0x915, 0x916

WeaponTex_KendoStick:
	.short 0x913, 0x913

WeaponModel_Sickle:
	.short 0x90F, 0

WeaponTex_Sickle:
	.short 0x90D, 0

/* todo: more stuff */
