# Virtual Pro-Wrestling 2 | data_003/refereeframes.s
# Referee frame-related data
# These are meant to go at 0x14C59C in the Z64 ROM; 80151EEC runtime.
/*----------------------------------------------------------------------------*/
#80151EEC (pinfall count)
tbl_RefereeFrames_PinfallCount:
	.short 0x04AB
	.short 0x04A9
	.short 0
	.short 0

#80151EF4 (2 count)
tbl_RefereeFrames_2Count:
	.short 0x04AD
	.short 0x04AF
	.short 0x04B1
	.short 0x04AF
	.short 0x04B1
	.short 0

#80151F00 (match over - pin)
tbl_RefereeFrames_PinfallVictory:
	.short 0x04AB
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0
	.short 0

#80151F14 (check submission)
tbl_RefereeFrames_CheckSubmission:
	.short 0x04B7
	.short 0x04B9
	.short 0x04B7
	.short 0x04B9
	.short 0xFFFF
	.short 0

#80151F20 (match over - tap out)
tbl_RefereeFrames_TapOut:
	.short 0x04BB
	.short 0x04BD
	.short 0x04BB
	.short 0x04BD
	.short 0x04BB
	.short 0x04BD
	.short 0x04BB
	.short 0x04BD
	.short 0
	.short 0

#80151F34 (outside count)
tbl_RefereeFrames_OutsideCount:
	.short 0x04BF
	.short 0x04C1
	.short 0
	.short 0

#80151F3C (match over - count out)
tbl_RefereeFrames_CountedOut:
	.short 0x04BF
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0
	.short 0

#80151F50 (rope break)
tbl_RefereeFrames_RopeBreak:
	.short 0x04C3
	.short 0x04C5
	.short 0
	.short 0

#80151F58 ("fight!" 1)
tbl_RefereeFrames_Fight1:
	.short 0x04C7
	.short 0x04C7
	.short 0x04C9
	.short 0x04CB
	.short 0
	.short 0

#80151F64 (match over - generic?)
tbl_RefereeFrames_MatchOver:
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0x04B5
	.short 0x04B3
	.short 0

#80151F74 ("fight!" 2)
tbl_RefereeFrames_Fight2:
	.short 0x04C7
	.short 0x04C7
	.short 0x04C9
	.short 0x04CB

# 80151F7C [w] (0x98C offset into data003) pointer table
ptrTbl_RefereeFrames:
	.word 0
	.word tbl_RefereeFrames_PinfallCount
	.word tbl_RefereeFrames_2Count
	.word tbl_RefereeFrames_PinfallVictory
	.word tbl_RefereeFrames_CheckSubmission
	.word tbl_RefereeFrames_TapOut
	.word tbl_RefereeFrames_OutsideCount
	.word tbl_RefereeFrames_CountedOut
	.word tbl_RefereeFrames_RopeBreak
	.word tbl_RefereeFrames_Fight1
	.word tbl_RefereeFrames_MatchOver
	.word tbl_RefereeFrames_Fight2

/*----------------------------------------------------------------------------*/
# 80151FAC (0x9BC offset)
# "Starting at 80151FAC is the time each frame is displayed for." - S.K. Stylez

tbl_RefereeFrameTime_80151FAC:
	.byte 0x0F, 0x78, 0x00, 0x00

tbl_RefereeFrameTime_80151FB0:
	.byte 0x0F, 0x0F, 0x0F, 0x0F, 0x1E, 0x00, 0x00, 0x00

tbl_RefereeFrameTime_80151FB8:
	.byte 0x0F, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x14

tbl_RefereeFrameTime_80151FC0:
	.byte 0x05, 0x05, 0x05, 0x0F

tbl_RefereeFrameTime_80151FC4:
	.byte 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05

tbl_RefereeFrameTime_80151FCC:
	.byte 0x1E, 0x78, 0x00, 0x00

tbl_RefereeFrameTime_80151FD0:
	.byte 0x1E, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x14

tbl_RefereeFrameTime_80151FD8:
	.byte 0x0F, 0x1E, 0x00, 0x00

tbl_RefereeFrameTime_80151FDC:
	.byte 0x06, 0x06, 0x06, 0x1E

tbl_RefereeFrameTime_80151FE0:
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x14, 0x00

tbl_RefereeFrameTime_80151FE8:
	.byte 0x1E, 0x06, 0x06, 0x1E

# 80151FEC (0x9FC offset)
ptrTbl_80151FEC:
	.word tbl_RefereeFrameTime_80151FAC
	.word tbl_RefereeFrameTime_80151FB0
	.word tbl_RefereeFrameTime_80151FB8
	.word tbl_RefereeFrameTime_80151FC0
	.word tbl_RefereeFrameTime_80151FC4
	.word tbl_RefereeFrameTime_80151FCC
	.word tbl_RefereeFrameTime_80151FD0
	.word tbl_RefereeFrameTime_80151FD8
	.word tbl_RefereeFrameTime_80151FDC
	.word tbl_RefereeFrameTime_80151FE0
	.word tbl_RefereeFrameTime_80151FE8
