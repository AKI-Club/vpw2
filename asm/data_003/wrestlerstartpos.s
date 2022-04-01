# Virtual Pro-Wrestling 2 | data_003/wrestlerstartpos.s
# Wrestler starting position data
# These are meant to go at 0x14DE6C??? in the Z64 ROM; 801537BC runtime.
/*----------------------------------------------------------------------------*/
tbl_WrestlerStartPos_801537BC:
	.word 0xC3340000 # -180.0

tbl_WrestlerStartPos_801537C0:
	.word 0xC3340000

	.word 0x43340000 # 180.0
	.word 0x43340000

	.word 0xC3340000
	.word 0xC39B0000 # -310.0

	.word 0x43340000
	.word 0x439B0000 # 310.0

tbl_WrestlerStartPos_801537DC:
	.short 0x0034
	.short 0x0035
	.short 0x0036
	.short 0x0000

# todo: this table belongs to the MMA rules number of points
tbl_WrestlerStartPos_801537E4:
	.short 0
	.short 3
	.short 5
	.short 10
	.short 15
	.short 0

# todo: this table is related to 800980A0
tbl_WrestlerStartPos_801537F0:
	.word 1
	.word 2
	.word 4
	.word 8

tbl_WrestlerStartPos_80153800:
	.word 0xC3340000

tbl_WrestlerStartPos_80153804:
	.word 0xC3340000

tbl_WrestlerStartPos_80153808:
	.word 0x43340000

tbl_WrestlerStartPos_8015380C:
	.word 0x43340000
	.word 0x43340000
	.word 0xC3340000
	.word 0xC3340000
	.word 0x43340000

tbl_WrestlerStartPos_80153820:
	.word 0xC3340000

tbl_WrestlerStartPos_80153824:
	.word 0x43340000
	.word 0xC3340000
	.word 0xC3340000
	.word 0x43340000
	.word 0x43340000
	.word 0x43340000
	.word 0xC3340000

tbl_WrestlerStartPos_80153840:
	.word 0xC2F00000 # -120.0

tbl_WrestlerStartPos_80153844:
	.word 0xC3340000
	.word 0xC3340000
	.word 0xC2F00000
	.word 0x43340000
	.word 0x42F00000 # 120.0
	.word 0x42F00000
	.word 0x43340000

tbl_WrestlerStartPos_80153860:
	.word 0xC3340000

tbl_WrestlerStartPos_80153864:
	.word 0xC3340000
	.word 0xC3340000
	.word 0xC3340000
	.word 0x43340000
	.word 0x43340000
	.word 0x43340000
	.word 0x43340000

tbl_WrestlerStartPos_80153880:
	.word 0xC3340000

tbl_WrestlerStartPos_80153884:
	.word 0xC3848000 # -265.0
	.word 0xC3340000
	.word 0xC3848000
	.word 0x43340000
	.word 0x43848000 # 265.0
	.word 0x43340000
	.word 0x43848000

tbl_WrestlerStartPos_801538A0:
	.word 0xC3340000
tbl_WrestlerStartPos_801538A4:
	.word 0xC39B0000

	.word 0x43340000
	.word 0x439B0000
	.word 0xC3340000
	.word 0xC3AF0000 # -350.0
	.word 0x43340000
	.word 0x43AF0000 # 350.0

tbl_WrestlerStartPos_801538C0:
	.short 0x0102
	.short 0x0000

tbl_WrestlerStartPos_801538C4:
	.short 0x0200
	.short 0x0000
	.short 0x0400
	.short 0x0000
	.short 0x0800
	.short 0x0000
	.short 0x1000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

tbl_WrestlerStartPos_801538E0:
	.short 0x0100

tbl_WrestlerStartPos_801538E2:
	.short 0x0200
	.short 0x0800
	.short 0x0400
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000


tbl_WrestlerStartPos_801538F0:
	.short 0x0200
	.short 0x0800
	.short 0x0100
	.short 0x0400

tbl_WrestlerStartPos_801538F8:
	.short 0x0100
	.short 0x0400
	.short 0x0200
	.short 0x0800

D_80153900:
	.short 0x0010
	.short 0x0020

D_80153904:
	.short 0x0040
	.short 0x0080
	.short 0x0000
	.short 0x0000
	.short 0x0000
	.short 0x0000

D_80153910:
	.short 0x0010
	.short 0x0020

D_80153914:
	.short 1,2,4,8

# Battle Royal Run-in Corner
D_8015391C:
	.byte 3 # top left
	.byte 2 # bottom left
	.byte 0 # top right
	.byte 1 # bottom right

# Battle Royal Run-in Start Location
tbl_WrestlerStartPos_80153920:
	.word 0x44D48000 # 1700.0
	.word 0x44D48000 # 1700.0

	.word 0x44D48000 # 1700.0
	.word 0xC4D48000 # -1700.0

	.word 0xC4D48000 # -1700.0
	.word 0xC4D48000 # -1700.0

	.word 0xC4D48000 # -1700.0
	.word 0x44D48000 # 1700.0

# Battle Royal Run-in Destination
tbl_WrestlerStartPos_80153940:
	.word 0x43660000 # 230.0
	.word 0x439B0000 # 310.0

	.word 0x43660000 # 230.0
	.word 0xC39B0000 # -310.0

	.word 0xC3660000 # -230.0
	.word 0xC39B0000 # -310.0

	.word 0xC3660000 # -230.0
	.word 0x439B0000 # 310.0
