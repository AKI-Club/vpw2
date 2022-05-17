# Virtual Pro-Wrestling 2 | data_main/body.s
# Body Part Definitions and junk
# These are meant to go at 0x409D0 in the Z64 ROM; 8003FDD0 runtime.

/*----------------------------------------------------------------------------*/
# body part displacement related data at 8003FDD0 (Z64 0x409D0; data01 bin offset: 0x5A8C)

# typically, the values are
# first value: x displacement
# second value: y displacement

tbl_BodyPartDisplacement:
	.byte 0, 0
	.byte 0, 10   # Pelvis
	.byte 0, 23   # Torso/Stomach
	.byte 0, 35   # Chest
	.byte 0, 58   # Head X/Y
	.byte 0, 72   # Head Depth
	.byte 9, -31  # Left Lower Leg
	.byte 9, 6    # Left Upper Leg
	.byte 9, -74  # Left Foot
	.byte 24, 7   # Left Hand
	.byte 24, -4  # Left Fingers
	.byte 24, 29  # Left Forearm
	.byte 22, 56  # Left Upper Arm
	.byte -9, -31 # Right Lower Leg
	.byte -9, 6   # Right Upper Leg
	.byte -9, -74 # Right Foot
	.byte -24, 29 # Right Hand
	.byte -24, 7  # Right Fingers
	.byte -24, -4 # Right Forearm
	.byte -22, 56 # Right Upper Arm

D_8003FDF8:
	.byte 0
	.byte 1    # Pelvis
	.byte 2    # Torso/Stomach
	.byte 3    # Chest
	.byte 4    # Head X/Y
	.byte 5    # Head Depth
	.byte 7    # Left Upper Leg
	.byte 6    # Left Lower Leg
	.byte 8    # Left Foot
	.byte 0xC  # Left Upper Arm
	.byte 0xB  # Left Forearm
	.byte 9    # Left Hand
	.byte 0xA  # Left Fingers
	.byte 0xE  # Right Upper Leg
	.byte 0xD  # Right Lower Leg
	.byte 0xF  # Right Foot
	.byte 0x13 # Right Upper Arm
	.byte 0x10 # Right Hand
	.byte 0x11 # Right Fingers
	.byte 0x12 # Right Forearm

# "somehow related to body part positioning" (0x5AC8 offset)
D_8003FE0C:
	.byte 0
	.byte 0    # Pelvis
	.byte 0    # Torso/Stomach
	.byte 0    # Chest
	.byte 3    # Head 1
	.byte 4    # Head 2
	.byte 7    # Left Lower Leg
	.byte 0    # Left Upper Leg
	.byte 6    # Left Foot
	.byte 0xB  # Left Hand
	.byte 9    # Left Fingers
	.byte 0xC  # Left Forearm
	.byte 0    # Left Upper Arm
	.byte 0xE  # Right Lower Leg
	.byte 0    # Right Upper Leg
	.byte 0xD  # Right Foot
	.byte 0x13 # Right Hand
	.byte 0x10 # Right Fingers
	.byte 0x11 # Right Forearm
	.byte 0    # Right Upper Arm

# (0x5ADC offset)
D_8003FE20:
	.byte 0
	.byte 1
	.byte 2
	.byte 3
	.byte 4
	.byte 5
	.byte 6
	.byte 7
	.byte 8
	.byte 9
	.byte 0xA
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0xB
	.byte 1
	.byte 2
	.byte 5
	.byte 6

# (0x5AF4 offset)
D_8003FE38:
	.byte 0x12,0x12,0xA,0xA,0xF,0xF,8,8

D_8003FE40:
	.byte 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte 0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte 0xFF,0xFF,0x01,0xFF

/*----------------------------------------------------------------------------*/
tbl_8003FE54:
	.word 0x3F800000 # 1.0f
	.word 0x3F4CCCCD # 0.8f
	.word 0x3F8CCCCD # 1.1f
	.word 0x3F666666 # 0.9f

tbl_8003FE64:
	.word 0x3F800000 # 1.0f
	.word 0x3F800000 # 1.0f
	.word 0x3F800000 # 1.0f
	.word 0x3F8CCCCD # 1.1f

tbl_8003FE74:
	.word 0x3F800000 # 1.0f
	.word 0x3F666666 # 0.9f
	.word 0x3F8CCCCD # 1.1f
	.word 0x3F4CCCCD # 0.8f

tbl_8003FE84:
	.word 0xBF800000 # -1.0f
	.word 0xC089999A # -4.3f
	.word 0x40800000 # 4.0f
	.word 0xC0133333 # -2.3f

tbl_8003FE94:
	.word 0x3F800000 # 1.0f
	.word 0x4089999A # 4.3f
	.word 0xC0800000 # -4.0f
	.word 0x40133333 # 2.3f

tbl_8003FEA4:
	.word 0x00000000 # 0.0f
	.word 0x00000000 # 0.0f
	.word 0x00000000 # 0.0f
	.word 0xBF19999A # -0.6f

tbl_8003FEB4:
	.word 0x00000000 # 0.0f
	.word 0xBF000000 # -0.5f
	.word 0x40400000 # 3.0f
	.word 0xBF000000 # -0.5f

ptrTbl_8003FEC4:
	.word tbl_8003FE94
	.word tbl_8003FE84

/*----------------------------------------------------------------------------*/
# 8003FECC (0x5B88 offset)
D_8003FECC:
	.byte 1,1,0,0,0,0,2,2,3,0,0,0

# 8003FED8 (0x5B94 offset)
D_8003FED8:
	.word 0x00000001

D_8003FEDC:
	.word 0x3F400000 # 0.75f
	.word 0x3F19999A # 0.6f
	.word 0x3EE66666 # 0.45f
	.word 0x3E99999A # 0.3f
	.word 0x3E19999A # 0.15f

# 8003FEF0 (0x5BAC offset)
D_8003FEF0:
	.word 0x3F000000 # 0.5f
	.word 0x3EAAAAAB # 0.33333334f
	.word 0x3F000000 # 0.5f
	.word 0

# unsure what these are for...
.byte 0xF8,0x01,0x07,0xC1,0x00,0x3F,0x00,0x00,0x0B,0x06,0x01,0x00

# 8003FF0C (0x5BC8 offset)
D_8003FF0C:
	.byte 0xFF,0x01,0x02,0x03,0xFF,0xFF,0x06,0x07
	.byte 0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F
	.byte 0x10,0x11,0x12,0x13,0xFF,0x16,0x17,0x00

# 8003FF24 (0x5BE0 offset)
D_8003FF24:
	.byte 0,0,4,0,0,2,2,2,3,2,0,2,2,2,2,3,2,2,0,2

# 8003FF38 (0x5BF4 offset)
D_8003FF38:
	.byte 2,0,3,0,0,1,1,1,1,2,0,1,1,1,1,1,1,2,0,1

# 8003FF4C (0x5C08 offset)
D_8003FF4C:
	.byte 0x00,0x20,0x1C,0x20,0x00,0x0E,0x10,0x11
	.byte 0x0D,0x0B,0x00,0x0C,0x0E,0x10,0x11,0x0D
	.byte 0x0C,0x0B,0x00,0x0E

# 8003FF60 (0x5C1C offset)
D_8003FF60:
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x40066666 # 2.1f
	.word 0x3FB9999A # 1.45f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FECCCCD # 1.85f
	.word 0x40000000 # 2.0f
	.word 0x40066666 # 2.1f
	.word 0x3FB9999A # 1.45f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FECCCCD # 1.85f
	.word 0x3FEF5C29 # 1.87f
	.word 0x3FEF5C29 # 1.87f
	.word 0x40000000 # 2.0f

# 8003FFB0 (0x5C6C offset)
D_8003FFB0:
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFEFF
	.word 0xFFFB77FF
	.word 0xFFFD1EFF
	.word 0xFFF84FFF
	.word 0xFFFF0FFF
	.word 0xFFFE8FFF
	.word 0xFFFE0BFF
	.word 0xFFFD0FFF
	.word 0xFFFB0FFF
	.word 0xFFFE0FFF
	.word 0xFFFD4FFF
	.word 0xFFFF2EFF
	.word 0xFFFEEBFF
	.word 0xFFFDEAFF
	.word 0xFFFFCCFF

D_80040004:
	.word 0xFFFFAAFF
	.word 0xFFFFEBFF
	.word 0xFFFFE5FF
	.word 0xFFEFC7FF
	.word 0xFFEF87FF
	.word 0xFFEF8FFF
	.word 0xFFCFCBFF
	.word 0xFFDFDBFF
	.word 0xFFDFBBFF
	.word 0xFFBFB7FF
	.word 0xFFAF77FF
	.word 0xFFED77FF
	.word 0xFFFAF7FF
	.word 0xFFFAF7FF
	.word 0xFFE5FFFF
	.word 0xFFEFFFFF
	.word 0xFFEBFEFF
	.word 0xFFEBFEFF
	.word 0xFFE3FDFF
	.word 0xFFE7FDFF
	.word 0xFFF7FFFF
	.word 0xFFF7FAFF
	.word 0xFFFFFAFF
	.word 0xFFFFFAFF
	.word 0xFFFFF9FF
	.word 0xFFFFF1FF
	.word 0xFFFFF3FF
	.word 0xFFFFF3FF
	.word 0xFFFFF7FF
	.word 0xFFFFF7FF
	.word 0xFFEFF5FF
	.word 0xFFEFF5FF
	.word 0xFFE7F5FF
	.word 0xFFE7FBFF
	.word 0xFFEFFAFF
	.word 0xFFEFFAFF
	.word 0xFFFFFEFF
	.word 0xFFDFF6FF
	.word 0xFF9FF4FF
	.word 0xFF9FFDFF
	.word 0xFFDFFDFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF

# 800400B0 (0x5D6C offset)
D_800400B0:
	.word 0xFFFFFFFF
	.word 0xFFFEC128
	.word 0xFFFFFFFF
	.word 0xFFFED338
	.word 0xFFFFFFFF
	.word 0xFFFED730
	.word 0xFFFFFFFF
	.word 0xFFFFE630
	.word 0xFFFFFFFF
	.word 0xFFFDE228
	.word 0xFFFFFFFF
	.word 0xFFF9C638
	.word 0xFFFFFFFF
	.word 0xFFF1CEB8
	.word 0xFFFFFFFF
	.word 0xFFF5CFB8
	.word 0xFFFFFFFF
	.word 0xFFFDD7A0
	.word 0xFFFFFFFF
	.word 0xFFF796A0
	.word 0xFFFFFFFF
	.word 0xFFFF8EC0
	.word 0xFFFFFFFF
	.word 0xFFFF97D0
	.word 0xFFFFFFFF
	.word 0xFFFF97D1
	.word 0xFFFFFFFF
	.word 0xFFFF5FD1
	.word 0xFFFFFFFF
	.word 0xFFFFDEA1
	.word 0xFFFFFFFF
	.word 0xFFF75CA1
	.word 0xFFFFFFFF
	.word 0xFFF76DA3
	.word 0xFFFFFFFF
	.word 0xFFF76F33
	.word 0xFFFFFFFF
	.word 0xFFE7EE73
	.word 0xFFFFFFFF
	.word 0xFFEFEE33
	.word 0xFFFFFFFF
	.word 0xFFEEEF33
	.word 0xFFFFFFFF
	.word 0xFFFEEF31
	.word 0xFFFFFFFF
	.word 0xFFFEDFA1
	.word 0xFFFFFFFF
	.word 0xFFFCDF69
	.word 0xFFFFFFFF
	.word 0xFFFC5E68
	.word 0xFFFFFFFF
	.word 0xFFFA1E70
	.word 0xFFFFFFFF
	.word 0xFFFE1E72
	.word 0xFFFFFFFF
	.word 0xFFFC5E73
	.word 0xFFFFFFFF
	.word 0xFFFD5E73
	.word 0xFFFFFFFF
	.word 0xFFFDDC73
	.word 0xFFFFFFFF
	.word 0xFFFDDC7B
	.word 0xFFFFFFFF
	.word 0xFFF9DD7B

D_800401B0:
	.word 0xFFFFFFFF
	.word 0xFFFFF9C0
	.word 0xFFFFFFFF
	.word 0xFFFFDAC2
	.word 0xFFFFFFFF
	.word 0xFFFFF2CA
	.word 0xFFFFFFFF
	.word 0xFFFFF806
	.word 0xFFFFFFFF
	.word 0xFFFFFE2F
	.word 0xFFFFFFFF
	.word 0xFFFFBA7C
	.word 0xFFFFFFFF
	.word 0xFFFFB6D4
	.word 0xFFFFFFFF
	.word 0xFFFFFFF6
	.word 0xFFFFFFFF
	.word 0xFFFFDBEF
	.word 0xFFFFFFFF
	.word 0xFFFDF5FA
	.word 0xFFFFFFFF
	.word 0xFFFFFDFB
	.word 0xFFFFFFFF
	.word 0xFFFFEAB7
	.word 0xFFFFFFFF
	.word 0xFFFB7FFF
	.word 0xFFFFFFFF
	.word 0xFFF3FCF7
	.word 0xFFFFFFFF
	.word 0xFFBBFCFF
	.word 0xFFFFFFFF
	.word 0xFFFFFEFF
	.word 0xFFFFFFFF
	.word 0xFFFFFBFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF

D_800402B0:
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFEFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
	.word 0xFFFF3DFF
	.word 0xFFFFFFFF
	.word 0xFFFFEFDF
	.word 0xFFFFFFFF
	.word 0xFFFFFF7F
	.word 0xFFFFFFFF
	.word 0xFFFFDFBF
	.word 0xFFFFFFFF
	.word 0xFFFFFADF
	.word 0xFFFFFFFF
	.word 0xFFFFCF3B
	.word 0xFFFFFFFF
	.word 0xFFFFFFD8
	.word 0xFFFFFFFF
	.word 0xFFFFF759
	.word 0xFFFFFFFF
	.word 0xFFFFFE4F
	.word 0xFFFFFFFF
	.word 0xFFFF380C
	.word 0xFFFFFFFF
	.word 0xFFFFE019
	.word 0xFFFFFFFF
	.word 0xFFFE3C08
	.word 0xFFFFFFFF
	.word 0xFFFF9013
	.word 0xFFFFFFFF
	.word 0xFFFFE407
	.word 0xFFFFFFFF
	.word 0xFFFFFF07
	.word 0xFFFFFFFF
