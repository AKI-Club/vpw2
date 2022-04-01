# Virtual Pro-Wrestling 2 | data_main/mastermovemods.s
# "Master Move Mods"
# These are meant to go at 0x3E63C in the Z64 ROM; 8003DA3C runtime.

# https://www.tapatalk.com/groups/vpw2dojo/master-move-mods-t79.html
# todo: a better explanation of what these actually are...

/*----------------------------------------------------------------------------*/
# List of first entries in each group?

tbl_8003DA3C:
	.short 0x0000
	.short 0x000A
	.short 0x0136
	.short 0x04C4
	.short 0x07F8
	.short 0x0B36
	.short 0x0BFE
	.short 0x0D70
	.short 0x0DE8
	.short 0x0F1E
	.short 0x0F46
	.short 0x0FBE
	.short 0x0FF0
	.short 0x0FFA
	.short 0x1004
	.short 0x107C
	.short 0x111C
	.short 0x1194
	.short 0x11A8
	.short 0x11BC
	.short 0x11D0
	.short 0x11E4
	.short 0x11EE
	.short 0x11F8
	.short 0x1216
	.short 0x122A
	.short 0x1234
	.short 0x1248
	.short 0x127A
	.short 0x1298
	.short 0x12A2
	.short 0x12B6
	.short 0x12D4
	.short 0x12E8
	.short 0x12FC
	.short 0x1310
	.short 0x131A
	.short 0x132E
	.short 0x1342
	.short 0x1374
	.short 0x1388
	.short 0x139C
	.short 0x13BA
	.short 0x13D8
	.short 0x13F6
	.short 0x140A
	.short 0x1414
	.short 0x141E
	.short 0x14BE
	.short 0x1586
	.short 0x15FE
	.short 0x1612
	.short 0x1676
	.short 0x16C6
	.short 0x1766
	.short 0x178E
	.short 0x1798
	.short 0x1BD0
	.short 0x1BDA
	.short 0x1BE4
	.short 0x1CDE
	.short 0x1CF2
	.short 0x1D88
	.short 0x1DC4
	.short 0x1DE2
	.short 0x1DF6
	.short 0x1F22
	.short 0x1F90
	.short 0x213E
	.short 0x2314
	.short 0x2382
	.short 0x23A0
	.short 0x23F0
	.short 0x2422
	.short 0x2710
	.short 0x2CC4
	.short 0x2CCE
	.short 0x2D78
	.short 0x2DC8
	.short 0x2E2C
	.short 0x2E72
	.short 0x2F58
	.short 0x2FB2
	.short 0x2FBC
	.short 0x2FC6
	.short 0x3070
	.short 0x30CA
	.short 0x30D4
	.short 0x30DE
	.short 0x312E
	.short 0x314C
	.short 0x3156
	.short 0x3160
	.short 0x316A
	.short 0x3174
	.short 0x317E
	.short 0x3188
	.short 0x3232
	.short 0x3296
	.short 0x32FA
	.short 0x3372
	.short 0x3386
	.short 0x33AE
	.short 0x33B8
	.short 0x33E0
	.short 0x33FE
	.short 0x3426
	.short 0x344E
	.short 0x3458
	.short 0x3476
	.short 0x348A
	.short 0x3494
	.short 0x34D0
	.short 0x34E4
	.short 0x3516
	.short 0x35E8
	.short 0x364C
	.short 0x3A2A
	.short 0x3A52
	.short 0x3AF2
	.short 0x3B56
	.short 0x3B60
	.short 0x3BA6
	.short 0x3BB0
	.short 0x3BD8
	.short 0x3BF6
	.short 0x3C00
	.short 0x3C0A
	.short 0x3C14
	.short 0x3C1E
	.short 0x3C3C
	.short 0x3C46
	.short 0x3DCC

	.short 0x7530 # unsure what this is for, though.

/*----------------------------------------------------------------------------*/
# 8003DB48 (0x3804 offset into data01)
tbl_MasterMoveMods_Fallback:
	.short 0x0000 # None
	.short 0xFFFF # section end

# 8003DB4C (Front Grapple Weak)
tbl_MasterMoveMods_FrontGrappleWeak:
	.short 0x0000 # None
	.short 0x000A # Elbow Strike
	.short 0x0014 # European Uppercut
	.short 0x001E # Spinning European Uppercut
	.short 0x0028
	.short 0x0032
	.short 0x003C
	.short 0x0046
	.short 0x0050
	.short 0x005A
	.short 0x0064
	.short 0x006E
	.short 0x0078
	.short 0x0082
	.short 0x008C
	.short 0x0096
	.short 0x00A0
	.short 0x00AA
	.short 0x00B4
	.short 0x00BE
	.short 0x00C8
	.short 0x00D2
	.short 0x00DC
	.short 0x00E6
	.short 0x00F0
	.short 0x00FA
	.short 0x0104
	.short 0x010E
	.short 0x0118
	.short 0x0122
	.short 0x012C
	.short 0xFFFF # section end

# 8003DB8C (Front Grapple Strong)
tbl_MasterMoveMods_FrontGrappleStrong:
	.short 0x0000 # None
	.short 0x0136 # Stalling Fallaway Slam
	.short 0x0140 # Front Powerslam
	.short 0x014A # Powerslam
	.short 0x0154
	.short 0x015E
	.short 0x0168
	.short 0x0172
	.short 0x017C
	.short 0x0186
	.short 0x0190
	.short 0x019A
	.short 0x01A4
	.short 0x01AE
	.short 0x01B8
	.short 0x01C2
	.short 0x01CC
	.short 0x01D6
	.short 0x01E0
	.short 0x01EA
	.short 0x01F4
	.short 0x01FE
	.short 0x0208
	.short 0x0212
	.short 0x021C
	.short 0x0226
	.short 0x0230
	.short 0x023A
	.short 0x0244
	.short 0x024E
	.short 0x0258
	.short 0x0262
	.short 0x026C
	.short 0x0276
	.short 0x0280
	.short 0x028A
	.short 0x0294
	.short 0x029E
	.short 0x02A8
	.short 0x02B2
	.short 0x02BC
	.short 0x02C6
	.short 0x02D0
	.short 0x02DA
	.short 0x02E4
	.short 0x02EE
	.short 0x02F8
	.short 0x0302
	.short 0x030C
	.short 0x0316
	.short 0x0320
	.short 0x032A
	.short 0x0334
	.short 0x033E
	.short 0x0348
	.short 0x0352
	.short 0x035C
	.short 0x0366
	.short 0x0370
	.short 0x037A
	.short 0x0384
	.short 0x038E
	.short 0x0398
	.short 0x03A2
	.short 0x03AC
	.short 0x03B6
	.short 0x03C0
	.short 0x03CA
	.short 0x03D4
	.short 0x03DE
	.short 0x03E8
	.short 0x03F2
	.short 0x03FC
	.short 0x0406
	.short 0x0410
	.short 0x041A
	.short 0x0424
	.short 0x042E
	.short 0x0438
	.short 0x0442
	.short 0x044C
	.short 0x0456
	.short 0x0460
	.short 0x046A
	.short 0x0474
	.short 0x047E
	.short 0x0488
	.short 0x0492
	.short 0x049C
	.short 0x04A6
	.short 0x04B0
	.short 0x04BA
	.short 0xFFFF # section end
	.short 0x0000

# 8003DC48 (Front Grapple Special)
tbl_MasterMoveMods_FrontGrappleSpecial:
	.short 0x0000 # None
	.short 0x04C4 # Tiger Driver '91
	.short 0x04CE
	.short 0x04D8
	.short 0x04E2
	.short 0x04EC
	.short 0x04F6
	.short 0x0500
	.short 0x050A
	.short 0x0514
	.short 0x051E
	.short 0x0528
	.short 0x0532
	.short 0x053C
	.short 0x0546
	.short 0x0550
	.short 0x055A
	.short 0x0564
	.short 0x056E
	.short 0x0578
	.short 0x0582
	.short 0x058C
	.short 0x0596
	.short 0x05A0
	.short 0x05AA
	.short 0x05B4
	.short 0x05BE
	.short 0x05C8
	.short 0x05D2
	.short 0x05DC
	.short 0x05E6
	.short 0x05F0
	.short 0x05FA
	.short 0x0604
	.short 0x060E
	.short 0x0618
	.short 0x0622
	.short 0x062C
	.short 0x0636
	.short 0x0640
	.short 0x064A
	.short 0x0654
	.short 0x065E
	.short 0x0668
	.short 0x0672
	.short 0x067C
	.short 0x0686
	.short 0x0690
	.short 0x069A
	.short 0x06A4
	.short 0x06AE
	.short 0x06B8
	.short 0x06C2
	.short 0x06CC
	.short 0x06D6
	.short 0x06E0
	.short 0x06EA
	.short 0x06F4
	.short 0x06FE
	.short 0x0708
	.short 0x0712
	.short 0x071C
	.short 0x0726
	.short 0x0730
	.short 0x073A
	.short 0x0744
	.short 0x074E
	.short 0x0758
	.short 0x0762
	.short 0x076C
	.short 0x0776
	.short 0x0780
	.short 0x078A
	.short 0x0794
	.short 0x079E
	.short 0x07A8
	.short 0x07B2
	.short 0x07BC
	.short 0x07C6
	.short 0x07D0
	.short 0x07DA
	.short 0x07E4
	.short 0x07EE
	.short 0xFFFF # section end

# 8003DCF0
tbl_MasterMoveMods_8003DCF0:
	.short 0x0000 # None
	.short 0x07F8 # Low Kick
	.short 0x0802
	.short 0x080C
	.short 0x0816
	.short 0x0820
	.short 0x082A
	.short 0x0834
	.short 0x083E
	.short 0x0848
	.short 0x0852
	.short 0x085C
	.short 0x0866
	.short 0x0870
	.short 0x087A
	.short 0x0884
	.short 0x088E
	.short 0x0898
	.short 0x08A2
	.short 0x08AC
	.short 0x08B6
	.short 0x08C0
	.short 0x08CA
	.short 0x08D4
	.short 0x08DE
	.short 0x08E8
	.short 0x08F2
	.short 0x08FC
	.short 0x0906
	.short 0x0910
	.short 0x091A
	.short 0x0924
	.short 0x092E
	.short 0x0938
	.short 0x0942
	.short 0x094C
	.short 0x0956
	.short 0x0960
	.short 0x096A
	.short 0x0974
	.short 0x097E
	.short 0x0988
	.short 0x0992
	.short 0x099C
	.short 0x09A6
	.short 0x09B0
	.short 0x09BA
	.short 0x09C4
	.short 0x09CE
	.short 0x09D8
	.short 0x09E2
	.short 0x09EC
	.short 0x09F6
	.short 0x0A00
	.short 0x0A0A
	.short 0x0A14
	.short 0x0A1E
	.short 0x0A28
	.short 0x0A32
	.short 0x0A3C
	.short 0x0A46
	.short 0x0A50
	.short 0x0A5A
	.short 0x0A64
	.short 0x0A6E
	.short 0x0A78
	.short 0x0A82
	.short 0x0A8C
	.short 0x0A96
	.short 0x0AA0
	.short 0x0AAA
	.short 0x0AB4
	.short 0x0ABE
	.short 0x0AC8
	.short 0x0AD2
	.short 0x0ADC
	.short 0x0AE6
	.short 0x0AF0
	.short 0x0AFA
	.short 0x0B04
	.short 0x0B0E
	.short 0x0B18
	.short 0x0B22
	.short 0x0B2C
	.short 0xFFFF # section end
	.short 0x0000

# 8003DD9C (Back Grapple Weak)
tbl_MasterMoveMods_BackGrappleWeak:
	.short 0x0000 # None
	.short 0x0B36 # Backdrop
	.short 0x0B40
	.short 0x0B4A
	.short 0x0B54
	.short 0x0B5E
	.short 0x0B68
	.short 0x0B72
	.short 0x0B7C
	.short 0x0B86
	.short 0x0B90
	.short 0x0B9A
	.short 0x0BA4
	.short 0x0BAE
	.short 0x0BB8
	.short 0x0BC2
	.short 0x0BCC
	.short 0x0BD6
	.short 0x0BE0
	.short 0x0BEA
	.short 0x0BF4
	.short 0xFFFF # section end

# 8003DDC8 (Back Grapple Strong)
tbl_MasterMoveMods_BackGrappleStrong:
	.short 0x0000 # None
	.short 0x0BFE # Backdrop Pin
	.short 0x0C08
	.short 0x0C12
	.short 0x0C1C
	.short 0x0C26
	.short 0x0C30
	.short 0x0C3A
	.short 0x0C44
	.short 0x0C4E
	.short 0x0C58
	.short 0x0C62
	.short 0x0C6C
	.short 0x0C76
	.short 0x0C80
	.short 0x0C8A
	.short 0x0C94
	.short 0x0C9E
	.short 0x0CA8
	.short 0x0CB2
	.short 0x0CBC
	.short 0x0CC6
	.short 0x0CD0
	.short 0x0CDA
	.short 0x0CE4
	.short 0x0CEE
	.short 0x0CF8
	.short 0x0D02
	.short 0x0D0C
	.short 0x0D16
	.short 0x0D20
	.short 0x0D2A
	.short 0x0D34
	.short 0x0D3E
	.short 0x0D48
	.short 0x0D52
	.short 0x0D5C
	.short 0x0D66
	.short 0xFFFF # section end
	.short 0x0000

# 8003DE18 (Back Grapple Counter)
tbl_MasterMoveMods_BackGrappleCounter:
	.short 0x0000 # None
	.short 0x0D70 # Counter Elbow Strike
	.short 0x0D7A
	.short 0x0D84
	.short 0x0D8E
	.short 0x0D98
	.short 0x0DA2
	.short 0x0DAC
	.short 0x0DB6
	.short 0x0DC0
	.short 0x0DCA
	.short 0x0DD4
	.short 0x0DDE
	.short 0xFFFF # section end

# 8003DE34 (Grapple to Running Opponent?)
tbl_MasterMoveMods_8003DE34:
	.short 0x0000 # None
	.short 0x0DE8 # Monkey Flip
	.short 0x0DF2
	.short 0x0DFC
	.short 0x0E06
	.short 0x0E10
	.short 0x0E1A
	.short 0x0E24
	.short 0x0E2E
	.short 0x0E38
	.short 0x0E42
	.short 0x0E4C
	.short 0x0E56
	.short 0x0E60
	.short 0x0E6A
	.short 0x0E74
	.short 0x0E7E
	.short 0x0E88
	.short 0x0E92
	.short 0x0E9C
	.short 0x0EA6
	.short 0x0EB0
	.short 0x0EBA
	.short 0x0EC4
	.short 0x0ECE
	.short 0x0ED8
	.short 0x0EE2
	.short 0x0EEC
	.short 0x0EF6
	.short 0x0F00
	.short 0x0F0A
	.short 0x0F14
	.short 0xFFFF # section end
	.short 0x0000

# 8003DE78 (Special Grapple to Running Opponent)
tbl_MasterMoveMods_8003DE78:
	.short 0x0000 # None
	.short 0x0F1E
	.short 0x0F28 # Body Press Ace Crusher
	.short 0x0F32 # Nagata Lock II
	.short 0x0F3C
	.short 0xFFFF # section end

# 8003DE84 (Running Front Grapple)
tbl_MasterMoveMods_RunningFrontGrapple:
	.short 0x0000 # None
	.short 0x0F46 # Neckbreaker
	.short 0x0F50
	.short 0x0F5A
	.short 0x0F64
	.short 0x0F6E
	.short 0x0F78
	.short 0x0F82
	.short 0x0F8C
	.short 0x0F96
	.short 0x0FA0
	.short 0x0FAA
	.short 0x0FB4
	.short 0xFFFF # section end

# 8003DEA0 (Running Back Grapple)
tbl_MasterMoveMods_RunningBackGrapple:
	.short 0x0000 # None
	.short 0x0FBE # Bulldog
	.short 0x0FC8
	.short 0x0FD2
	.short 0x0FDC # Half Nelson Suplex
	.short 0x0FE6 # Release German Suplex
	.short 0xFFFF # section end
	.short 0x0000

# 8003DEB0
tbl_MasterMoveMods_8003DEB0:
	.short 0x0000 # None
	.short 0x0FF0
	.short 0xFFFF # section end
	.short 0x0000

# 8003DEB8
tbl_MasterMoveMods_8003DEB8:
	.short 0x0000 # None
	.short 0x0FFA
	.short 0xFFFF # section end
	.short 0x0000

# 8003DEC0 (Corner Front Grapple Weak)
tbl_MasterMoveMods_CornerFrontGrappleWeak:
	.short 0x0000 # None
	.short 0x1004 # Big Chop
	.short 0x100E
	.short 0x1018
	.short 0x1022
	.short 0x102C
	.short 0x1036
	.short 0x1040
	.short 0x104A
	.short 0x1054
	.short 0x105E
	.short 0x1068
	.short 0x1072
	.short 0xFFFF # section end

# 8003DEDC (Corner Front Grapple Strong)
tbl_MasterMoveMods_CornerFrontGrappleStrong:
	.short 0x0000 # None
	.short 0x107C # Superplex
	.short 0x1086
	.short 0x1090
	.short 0x109A
	.short 0x10A4
	.short 0x10AE
	.short 0x10B8
	.short 0x10C2
	.short 0x10CC
	.short 0x10D6
	.short 0x10E0
	.short 0x10EA
	.short 0x10F4
	.short 0x10FE
	.short 0x1108
	.short 0x1112
	.short 0xFFFF # section end

# 8003DF00 (Corner Front Grapple Special)
tbl_MasterMoveMods_CornerFrontGrappleSpecial:
	.short 0x0000 # None
	.short 0x111C # Super Brainbuster
	.short 0x1126
	.short 0x1130
	.short 0x113A
	.short 0x1144
	.short 0x114E
	.short 0x1158
	.short 0x1162
	.short 0x116C
	.short 0x1176
	.short 0x1180
	.short 0x118A
	.short 0xFFFF # section end

# 8003DF1C (Corner Back Grapple)
tbl_MasterMoveMods_CornerBackGrapple:
	.short 0x0000 # None
	.short 0x1194 # Forearm Smash
	.short 0x119E # Super Backdrop
	.short 0xFFFF # section end

# 8003DF24 (Corner Back Grapple Special)
tbl_MasterMoveMods_CornerBackGrappleSpecial:
	.short 0x0000 # None
	.short 0x11A8 # Reverse Frankensteiner
	.short 0x11B2 # Spider German Suplex
	.short 0xFFFF # section end

# 8003DF2C
tbl_MasterMoveMods_8003DF2C:
	.short 0x0000 # None
	.short 0x11BC
	.short 0x11C6
	.short 0xFFFF # section end

# 8003DF34 (Turnbuckle Counter Front)
tbl_MasterMoveMods_TurnbuckleCounterFront:
	.short 0x0000 # None
	.short 0x11D0 # Throw
	.short 0x11DA # Rack 'em Up
	.short 0xFFFF # section end

# 8003DF3C (Turnbuckle Counter Back)
tbl_MasterMoveMods_TurnbuckleCounterBack:
	.short 0x0000 # None
	.short 0x11E4 # Super Backdrop
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF44
tbl_MasterMoveMods_8003DF44:
	.short 0x0000 # None
	.short 0x11EE
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF4C
tbl_MasterMoveMods_8003DF4C:
	.short 0x0000 # None
	.short 0x11F8
	.short 0x1202
	.short 0x120C
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF58 (Ring to Apron Grapple)
tbl_MasterMoveMods_8003DF58:
	.short 0x0000 # None
	.short 0x1216 # Club to Chest
	.short 0x1220 # Suplex to Inside
	.short 0xFFFF # section end

# 8003DF60
tbl_MasterMoveMods_8003DF60:
	.short 0x0000 # None
	.short 0x122A
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF68
tbl_MasterMoveMods_8003DF68:
	.short 0x0000 # None
	.short 0x1234
	.short 0x123E
	.short 0xFFFF # section end

# 8003DF70 (Apron to Ring Grapple)
tbl_MasterMoveMods_8003DF70:
	.short 0x0000 # None
	.short 0x1248 # Arm Breaker
	.short 0x1252
	.short 0x125C
	.short 0x1266
	.short 0x1270
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF80 (Apron to Ring Grapple Special)
tbl_MasterMoveMods_8003DF80:
	.short 0x0000 # None
	.short 0x127A # Chokeslam to outside
	.short 0x1284 # Powerbomb to outside
	.short 0x128E # Tiger Driver to outside
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF8C
tbl_MasterMoveMods_8003DF8C:
	.short 0x0000 # None
	.short 0x1298
	.short 0xFFFF # section end
	.short 0x0000

# 8003DF94
tbl_MasterMoveMods_8003DF94:
	.short 0x0000 # None
	.short 0x12A2
	.short 0x12AC
	.short 0xFFFF # section end

# 8003DF9C
tbl_MasterMoveMods_8003DF9C:
	.short 0x0000 # None
	.short 0x12B6 # Elbow Smash
	.short 0x12C0 # Knee Strike
	.short 0x12CA # Roundhouse Kick
	.short 0xFFFF # section end
	.short 0x0000

# 8003DFA8
tbl_MasterMoveMods_8003DFA8:
	.short 0x0000 # None
	.short 0x12D4 # Strong Kick
	.short 0x12DE # Weak Kick
	.short 0xFFFF # section end

# 8003DFB0
tbl_MasterMoveMods_8003DFB0:
	.short 0x0000 # None
	.short 0x12E8
	.short 0x12F2
	.short 0xFFFF # section end

# 8003DFB8
tbl_MasterMoveMods_8003DFB8:
	.short 0x0000 # None
	.short 0x12FC
	.short 0x1306
	.short 0xFFFF # section end

# 8003DFC0
tbl_MasterMoveMods_8003DFC0:
	.short 0x0000 # None
	.short 0x1310
	.short 0xFFFF # section end
	.short 0x0000

# 8003DFC8
tbl_MasterMoveMods_8003DFC8:
	.short 0x0000 # None
	.short 0x131A # Super Heavyweight Bodyslam
	.short 0x1324
	.short 0xFFFF # section end

# 8003DFD0
tbl_MasterMoveMods_8003DFD0:
	.short 0x0000 # None
	.short 0x132E # Super Heavyweight Backdrop
	.short 0x1338
	.short 0xFFFF # section end

# 8003DFD8 (Double Team Front Grapple)
tbl_MasterMoveMods_8003DFD8:
	.short 0x0000 # None
	.short 0x1342 # Wishbone Split
	.short 0x134C
	.short 0x1356
	.short 0x1360
	.short 0x136A
	.short 0xFFFF # section end
	.short 0x0000

# 8003DFE8 (Double Team Back Grapple)
tbl_MasterMoveMods_8003DFE8:
	.short 0x0000 # None
	.short 0x1374 # Double Atomic Drop
	.short 0x137E # Double Face Crusher
	.short 0xFFFF # section end

# 8003DFF0 (Double Team Sandwich Grapple)
tbl_MasterMoveMods_8003DFF0:
	.short 0x0000 # None
	.short 0x1388 # Double Piledriver
	.short 0x1392 # Double Powerbomb
	.short 0xFFFF # section end

# 8003DFF8
tbl_MasterMoveMods_8003DFF8:
	.short 0x0000 # None
	.short 0x139C
	.short 0x13A6
	.short 0x13B0
	.short 0xFFFF # section end
	.short 0x0000

# 8003E004
tbl_MasterMoveMods_8003E004:
	.short 0x0000 # None
	.short 0x13BA
	.short 0x13C4
	.short 0x13CE
	.short 0xFFFF # section end
	.short 0x0000

# 8003E010 (probably Double Team Lifted Reversal)
tbl_MasterMoveMods_8003E010:
	.short 0x0000 # None
	.short 0x13D8 # Punching Reversal
	.short 0x13E2 # Pinning Reversal
	.short 0x13EC # Roll Up Pinning Reversal
	.short 0xFFFF # section end
	.short 0x0000

# 8003E01C
tbl_MasterMoveMods_8003E01C:
	.short 0x0000 # None
	.short 0x13F6
	.short 0x1400
	.short 0xFFFF # section end

# 8003E024
tbl_MasterMoveMods_8003E024:
	.short 0x0000 # None
	.short 0x140A
	.short 0xFFFF # section end
	.short 0x0000

# 8003E02C
tbl_MasterMoveMods_8003E02C:
	.short 0x0000 # None
	.short 0x1414
	.short 0xFFFF # section end
	.short 0x0000

# 8003E034
tbl_MasterMoveMods_8003E034:
	.short 0x0000 # None
	.short 0x141E # Elbow Strike
	.short 0x1428 # Chop
	.short 0x1432
	.short 0x143C
	.short 0x1446
	.short 0x1450
	.short 0x145A
	.short 0x1464
	.short 0x146E
	.short 0x1478
	.short 0x1482
	.short 0x148C
	.short 0x1496
	.short 0x14A0
	.short 0x14AA
	.short 0x14B4
	.short 0xFFFF # section end

# 8003E058
tbl_MasterMoveMods_8003E058:
	.short 0x0000 # None
	.short 0x14BE # "Front Kick 04"
	.short 0x14C8
	.short 0x14D2
	.short 0x14DC
	.short 0x14E6
	.short 0x14F0
	.short 0x14FA
	.short 0x1504
	.short 0x150E
	.short 0x1518
	.short 0x1522
	.short 0x152C
	.short 0x1536
	.short 0x1540
	.short 0x154A
	.short 0x1554
	.short 0x155E
	.short 0x1568
	.short 0x1572
	.short 0x157C
	.short 0xFFFF # section end

# 8003E084
tbl_MasterMoveMods_8003E084:
	.short 0x0000 # None
	.short 0x1586 # Elbow Strike
	.short 0x1590
	.short 0x159A
	.short 0x15A4
	.short 0x15AE
	.short 0x15B8
	.short 0x15C2
	.short 0x15CC
	.short 0x15D6
	.short 0x15E0
	.short 0x15EA
	.short 0x15F4
	.short 0xFFFF # section end

# 8003E0A0
tbl_MasterMoveMods_8003E0A0:
	.short 0x0000 # None
	.short 0x15FE # Front Kick
	.short 0x1608 # Middle Kick
	.short 0xFFFF # section end

# 8003E0A8
tbl_MasterMoveMods_8003E0A8:
	.short 0x0000 # None
	.short 0x1612 # Armbreaker
	.short 0x161C
	.short 0x1626
	.short 0x1630
	.short 0x163A
	.short 0x1644
	.short 0x164E
	.short 0x1658
	.short 0x1662
	.short 0x166C
	.short 0xFFFF # section end

# 8003E0C0
tbl_MasterMoveMods_8003E0C0:
	.short 0x0000 # None
	.short 0x1676 # Backslide
	.short 0x1680
	.short 0x168A
	.short 0x1694
	.short 0x169E
	.short 0x16A8
	.short 0x16B2
	.short 0x16BC
	.short 0xFFFF # section end

# 8003E0D4
tbl_MasterMoveMods_8003E0D4:
	.short 0x0000 # None
	.short 0x16C6 # Pushing Takedown
	.short 0x16D0
	.short 0x16DA
	.short 0x16E4
	.short 0x16EE
	.short 0x16F8
	.short 0x1702
	.short 0x170C
	.short 0x1716
	.short 0x1720
	.short 0x172A
	.short 0x1734
	.short 0x173E # Low Blow 1
	.short 0x1748 # Low Blow 2
	.short 0x1752 # Low Blow 3
	.short 0x175C # Low Blow 4
	.short 0xFFFF # section end

# 8003E0F8
tbl_MasterMoveMods_8003E0F8:
	.short 0x0000 # None
	.short 0x1766 # Capture Suplex
	.short 0x1770
	.short 0x177A # Special Counter Stone Cold Stunner
	.short 0x1784
	.short 0xFFFF # section end

# 8003E104
tbl_MasterMoveMods_8003E104:
	.short 0x0000 # None
	.short 0x178E # Enzuigiri
	.short 0xFFFF # section end
	.short 0x0000

# 8003E10C
tbl_MasterMoveMods_8003E10C:
	.short 0x0000 # None
	.short 0x1798 # Big Kick
	.short 0x17A2
	.short 0x17AC
	.short 0x17B6
	.short 0x17C0
	.short 0x17CA
	.short 0x17D4
	.short 0x17DE
	.short 0x17E8
	.short 0x17F2
	.short 0x17FC
	.short 0x1806
	.short 0x1810
	.short 0x181A
	.short 0x1824
	.short 0x182E
	.short 0x1838
	.short 0x1842
	.short 0x184C
	.short 0x1856
	.short 0x1860
	.short 0x186A
	.short 0x1874
	.short 0x187E
	.short 0x1888
	.short 0x1892
	.short 0x189C
	.short 0x18A6
	.short 0x18B0
	.short 0x18BA
	.short 0x18C4
	.short 0x18CE
	.short 0x18D8
	.short 0x18E2
	.short 0x18EC
	.short 0x18F6
	.short 0x1900
	.short 0x190A
	.short 0x1914
	.short 0x191E
	.short 0x1928
	.short 0x1932
	.short 0x193C
	.short 0x1946
	.short 0x1950
	.short 0x195A
	.short 0x1964
	.short 0x196E
	.short 0x1978
	.short 0x1982
	.short 0x198C
	.short 0x1996
	.short 0x19A0
	.short 0x19AA
	.short 0x19B4
	.short 0x19BE
	.short 0x19C8
	.short 0x19D2
	.short 0x19DC
	.short 0x19E6
	.short 0x19F0
	.short 0x19FA
	.short 0x1A04
	.short 0x1A0E
	.short 0x1A18
	.short 0x1A22
	.short 0x1A2C
	.short 0x1A36
	.short 0x1A40
	.short 0x1A4A
	.short 0x1A54
	.short 0x1A5E
	.short 0x1A68
	.short 0x1A72
	.short 0x1A7C
	.short 0x1A86
	.short 0x1A90
	.short 0x1A9A
	.short 0x1AA4
	.short 0x1AAE
	.short 0x1AB8
	.short 0x1AC2
	.short 0x1ACC
	.short 0x1AD6
	.short 0x1AE0
	.short 0x1AEA
	.short 0x1AF4
	.short 0x1AFE
	.short 0x1B08
	.short 0x1B12
	.short 0x1B1C
	.short 0x1B26
	.short 0x1B30
	.short 0x1B3A
	.short 0x1B44
	.short 0x1B4E
	.short 0x1B58
	.short 0x1B62
	.short 0x1B6C
	.short 0x1B76
	.short 0x1B80
	.short 0x1B8A
	.short 0x1B94
	.short 0x1B9E
	.short 0x1BA8
	.short 0x1BB2
	.short 0x1BBC
	.short 0x1BC6
	.short 0xFFFF # section end

# 8003E1E8
tbl_MasterMoveMods_8003E1E8:
	.short 0x0000 # None
	.short 0x1BD0
	.short 0xFFFF # section end
	.short 0x0000

# 8003E1F0
tbl_MasterMoveMods_8003E1F0:
	.short 0x0000 # None
	.short 0x1BDA
	.short 0xFFFF # section end
	.short 0x0000

# 8003E1F8
tbl_MasterMoveMods_8003E1F8:
	.short 0x0000 # None
	.short 0x1BE4 # Kitchen Sink 01
	.short 0x1BEE
	.short 0x1BF8
	.short 0x1C02
	.short 0x1C0C
	.short 0x1C16
	.short 0x1C20
	.short 0x1C2A
	.short 0x1C34
	.short 0x1C3E
	.short 0x1C48
	.short 0x1C52
	.short 0x1C5C
	.short 0x1C66
	.short 0x1C70
	.short 0x1C7A
	.short 0x1C84
	.short 0x1C8E
	.short 0x1C98
	.short 0x1CA2
	.short 0x1CAC
	.short 0x1CB6
	.short 0x1CC0
	.short 0x1CCA
	.short 0x1CD4
	.short 0xFFFF # section end
	.short 0x0000

# 8003E230
tbl_MasterMoveMods_8003E230:
	.short 0x0000 # None
	.short 0x1CDE # Handspring Back Elbow Smash
	.short 0x1CE8 # Stinger Splash
	.short 0xFFFF # section end

# 8003E238 (Back Grapple Special)
tbl_MasterMoveMods_BackGrappleSpecial:
	.short 0x0000 # None
	.short 0x1CF2 # Tiger Suplex '85
	.short 0x1CFC
	.short 0x1D06
	.short 0x1D10
	.short 0x1D1A
	.short 0x1D24
	.short 0x1D2E
	.short 0x1D38
	.short 0x1D42
	.short 0x1D4C
	.short 0x1D56
	.short 0x1D60
	.short 0x1D6A
	.short 0x1D74
	.short 0x1D7E
	.short 0xFFFF # section end
	.short 0x0000

# 8003E25C
tbl_MasterMoveMods_8003E25C:
	.short 0x0000 # None
	.short 0x1D88 # Back Elbow
	.short 0x1D92
	.short 0x1D9C
	.short 0x1DA6
	.short 0x1DB0
	.short 0x1DBA
	.short 0xFFFF # section end

# 8003E26C (Corner Reversal Type?)
tbl_MasterMoveMods_8003E26C:
	.short 0x0000 # None
	.short 0x1DC4 # Boot to Face
	.short 0x1DCE # Slingshot
	.short 0x1DD8 # Headstand
	.short 0xFFFF # section end
	.short 0x0000

# 8003E278 (Evasion)
tbl_MasterMoveMods_Evasion:
	.short 0x0000 # None
	.short 0x1DE2 # Roll
	.short 0x1DEC # Cartwheel
	.short 0xFFFF # section end

# 8003E280 (Attack to Downed)
tbl_MasterMoveMods_8003E280:
	.short 0x0000 # None
	.short 0x1DF6 # Stomping
	.short 0x1E00
	.short 0x1E0A
	.short 0x1E14
	.short 0x1E1E
	.short 0x1E28
	.short 0x1E32
	.short 0x1E3C
	.short 0x1E46
	.short 0x1E50
	.short 0x1E5A
	.short 0x1E64
	.short 0x1E6E
	.short 0x1E78
	.short 0x1E82
	.short 0x1E8C
	.short 0x1E96
	.short 0x1EA0
	.short 0x1EAA
	.short 0x1EB4
	.short 0x1EBE
	.short 0x1EC8
	.short 0x1ED2
	.short 0x1EDC
	.short 0x1EE6
	.short 0x1EF0
	.short 0x1EFA
	.short 0x1F04
	.short 0x1F0E
	.short 0x1F18
	.short 0xFFFF # section end

# 8003E2C0 (Running Attack to Downed)
tbl_MasterMoveMods_8003E2C0:
	.short 0x0000 # None
	.short 0x1F22 # Running Elbowdrop
	.short 0x1F2C
	.short 0x1F36
	.short 0x1F40
	.short 0x1F4A
	.short 0x1F54
	.short 0x1F5E
	.short 0x1F68
	.short 0x1F72
	.short 0x1F7C
	.short 0x1F86
	.short 0xFFFF # section end
	.short 0x0000

# 8003E2DC
tbl_MasterMoveMods_8003E2DC:
	.short 0x0000 # None
	.short 0x1F90 # Jumping Front Dropkick
	.short 0x1F9A
	.short 0x1FA4
	.short 0x1FAE
	.short 0x1FB8
	.short 0x1FC2
	.short 0x1FCC
	.short 0x1FD6
	.short 0x1FE0
	.short 0x1FEA
	.short 0x1FF4
	.short 0x1FFE
	.short 0x2008
	.short 0x2012
	.short 0x201C
	.short 0x2026
	.short 0x2030
	.short 0x203A
	.short 0x2044
	.short 0x204E
	.short 0x2058
	.short 0x2062
	.short 0x206C
	.short 0x2076
	.short 0x2080
	.short 0x208A
	.short 0x2094
	.short 0x209E
	.short 0x20A8
	.short 0x20B2
	.short 0x20BC
	.short 0x20C6
	.short 0x20D0
	.short 0x20DA
	.short 0x20E4
	.short 0x20EE
	.short 0x20F8
	.short 0x2102
	.short 0x210C
	.short 0x2116
	.short 0x2120
	.short 0x212A
	.short 0x2134
	.short 0xFFFF # section end
	.short 0x0000

# 8003E338
tbl_MasterMoveMods_8003E338:
	.short 0x0000 # None
	.short 0x213E # "Flipping Heel Kick"
	.short 0x2148
	.short 0x2152
	.short 0x215C
	.short 0x2166
	.short 0x2170
	.short 0x217A
	.short 0x2184
	.short 0x218E
	.short 0x2198
	.short 0x21A2
	.short 0x21AC
	.short 0x21B6
	.short 0x21C0
	.short 0x21CA
	.short 0x21D4
	.short 0x21DE
	.short 0x21E8
	.short 0x21F2
	.short 0x21FC
	.short 0x2206
	.short 0x2210
	.short 0x221A
	.short 0x2224
	.short 0x222E
	.short 0x2238
	.short 0x2242
	.short 0x224C
	.short 0x2256
	.short 0x2260
	.short 0x226A
	.short 0x2274
	.short 0x227E
	.short 0x2288
	.short 0x2292
	.short 0x229C
	.short 0x22A6
	.short 0x22B0
	.short 0x22BA
	.short 0x22C4
	.short 0x22CE
	.short 0x22D8
	.short 0x22E2
	.short 0x22EC
	.short 0x22F6
	.short 0x2300
	.short 0x230A
	.short 0xFFFF # section end
	.short 0x0000

# 8003E39C (Ducking Strike)
tbl_MasterMoveMods_DuckingStrike:
	.short 0x0000 # None
	.short 0x2314 # Body Tackle
	.short 0x231E
	.short 0x2328
	.short 0x2332
	.short 0x233C
	.short 0x2346
	.short 0x2350
	.short 0x235A
	.short 0x2364
	.short 0x236E
	.short 0x2378
	.short 0xFFFF # section end
	.short 0x0000

# 8003E3B8
tbl_MasterMoveMods_8003E3B8:
	.short 0x0000 # None
	.short 0x2382
	.short 0x238C
	.short 0x2396
	.short 0xFFFF # section end
	.short 0x0000

# 8003E3C4
tbl_MasterMoveMods_8003E3C4:
	.short 0x0000 # None
	.short 0x23A0 # Counter Back Weak Grapple [A+Direction]
	.short 0x23AA
	.short 0x23B4
	.short 0x23BE
	.short 0x23C8
	.short 0x23D2
	.short 0x23DC
	.short 0x23E6
	.short 0xFFFF # section end

# 8003E3D8 (Introduction Stance)
tbl_MasterMoveMods_IntroStance:
	.short 0x0000 # None
	.short 0x23F0 # Arms Crossed
	.short 0x23FA
	.short 0x2404
	.short 0x240E
	.short 0x2418
	.short 0xFFFF # section end
	.short 0x0000

# 8003E3E8 (Introduction Taunts)
tbl_MasterMoveMods_IntroTaunts:
	.short 0x0000 # None
	.short 0x2422
	.short 0x242C
	.short 0x2436
	.short 0x2440
	.short 0x244A
	.short 0x2454
	.short 0x245E
	.short 0x2468
	.short 0x2472
	.short 0x247C
	.short 0x2486
	.short 0x2490
	.short 0x249A
	.short 0x24A4
	.short 0x24AE
	.short 0x24B8
	.short 0x24C2
	.short 0x24CC
	.short 0x24D6
	.short 0x24E0
	.short 0x24EA
	.short 0x24F4
	.short 0x24FE
	.short 0x2508
	.short 0x2512
	.short 0x251C
	.short 0x2526
	.short 0x2530
	.short 0x253A
	.short 0x2544
	.short 0x254E
	.short 0x2558
	.short 0x2562
	.short 0x256C
	.short 0x2576
	.short 0x2580
	.short 0x258A
	.short 0x2594
	.short 0x259E
	.short 0x25A8
	.short 0x25B2
	.short 0x25BC
	.short 0x25C6
	.short 0x25D0
	.short 0x25DA
	.short 0x25E4
	.short 0x25EE
	.short 0x25F8
	.short 0x2602
	.short 0x260C
	.short 0x2616
	.short 0x2620
	.short 0x262A
	.short 0x2634
	.short 0x263E
	.short 0x2648
	.short 0x2652
	.short 0x265C
	.short 0x2666
	.short 0x2670
	.short 0x267A
	.short 0x2684
	.short 0x268E
	.short 0x2698
	.short 0x26A2
	.short 0x26AC
	.short 0x26B6
	.short 0x26C0
	.short 0x26CA
	.short 0x26D4
	.short 0x26DE
	.short 0x26E8
	.short 0x26F2
	.short 0x26FC
	.short 0x2706
	.short 0xFFFF # section end
	.short 0x0000

# 8003E484 (Standing Taunts)
tbl_MasterMoveMods_8003E484:
	.short 0x0000 # None
	.short 0x2710 # Giant Baba 01
	.short 0x271A
	.short 0x2724
	.short 0x272E
	.short 0x2738
	.short 0x2742
	.short 0x274C
	.short 0x2756
	.short 0x2760
	.short 0x276A
	.short 0x2774
	.short 0x277E
	.short 0x2788
	.short 0x2792
	.short 0x279C
	.short 0x27A6
	.short 0x27B0
	.short 0x27BA
	.short 0x27C4
	.short 0x27CE
	.short 0x27D8
	.short 0x27E2
	.short 0x27EC
	.short 0x27F6
	.short 0x2800
	.short 0x280A
	.short 0x2814
	.short 0x281E
	.short 0x2828
	.short 0x2832
	.short 0x283C
	.short 0x2846
	.short 0x2850
	.short 0x285A
	.short 0x2864
	.short 0x286E
	.short 0x2878
	.short 0x2882
	.short 0x288C
	.short 0x2896
	.short 0x28A0
	.short 0x28AA
	.short 0x28B4
	.short 0x28BE
	.short 0x28C8
	.short 0x28D2
	.short 0x28DC
	.short 0x28E6
	.short 0x28F0
	.short 0x28FA
	.short 0x2904
	.short 0x290E
	.short 0x2918
	.short 0x2922
	.short 0x292C
	.short 0x2936
	.short 0x2940
	.short 0x294A
	.short 0x2954
	.short 0x295E
	.short 0x2968
	.short 0x2972
	.short 0x297C
	.short 0x2986
	.short 0x2990
	.short 0x299A
	.short 0x29A4
	.short 0x29AE
	.short 0x29B8
	.short 0x29C2
	.short 0x29CC
	.short 0x29D6
	.short 0x29E0
	.short 0x29EA
	.short 0x29F4
	.short 0x29FE
	.short 0x2A08
	.short 0x2A12
	.short 0x2A1C
	.short 0x2A26
	.short 0x2A30
	.short 0x2A3A
	.short 0x2A44
	.short 0x2A4E
	.short 0x2A58
	.short 0x2A62
	.short 0x2A6C
	.short 0x2A76
	.short 0x2A80
	.short 0x2A8A
	.short 0x2A94
	.short 0x2A9E
	.short 0x2AA8
	.short 0x2AB2
	.short 0x2ABC
	.short 0x2AC6
	.short 0x2AD0
	.short 0x2ADA
	.short 0x2AE4
	.short 0x2AEE
	.short 0x2AF8
	.short 0x2B02
	.short 0x2B0C
	.short 0x2B16
	.short 0x2B20
	.short 0x2B2A
	.short 0x2B34
	.short 0x2B3E
	.short 0x2B48
	.short 0x2B52
	.short 0x2B5C
	.short 0x2B66
	.short 0x2B70
	.short 0x2B7A
	.short 0x2B84
	.short 0x2B8E
	.short 0x2B98
	.short 0x2BA2
	.short 0x2BAC
	.short 0x2BB6
	.short 0x2BC0
	.short 0x2BCA
	.short 0x2BD4
	.short 0x2BDE
	.short 0x2BE8
	.short 0x2BF2
	.short 0x2BFC
	.short 0x2C06
	.short 0x2C10
	.short 0x2C1A
	.short 0x2C24
	.short 0x2C2E
	.short 0x2C38
	.short 0x2C42
	.short 0x2C4C
	.short 0x2C56
	.short 0x2C60
	.short 0x2C6A
	.short 0x2C74
	.short 0x2C7E
	.short 0x2C88
	.short 0x2C92
	.short 0x2C9C
	.short 0x2CA6
	.short 0x2CB0
	.short 0x2CBA
	.short 0xFFFF # section end

# 8003E5AC
tbl_MasterMoveMods_8003E5AC:
	.short 0x0000 # None
	.short 0x2CC4
	.short 0xFFFF # section end
	.short 0x0000

# 8003E5B4
tbl_MasterMoveMods_8003E5B4:
	.short 0x0000 # None
	.short 0x2CCE # "taunt 09"
	.short 0x2CD8
	.short 0x2CE2
	.short 0x2CEC
	.short 0x2CF6
	.short 0x2D00
	.short 0x2D0A
	.short 0x2D14
	.short 0x2D1E
	.short 0x2D28
	.short 0x2D32
	.short 0x2D3C
	.short 0x2D46
	.short 0x2D50
	.short 0x2D5A
	.short 0x2D64
	.short 0x2D6E
	.short 0xFFFF # section end
	.short 0x0000

# 8003E5DC
tbl_MasterMoveMods_8003E5DC:
	.short 0x0000 # None
	.short 0x2D78 # "taunt 07"
	.short 0x2D82
	.short 0x2D8C
	.short 0x2D96
	.short 0x2DA0
	.short 0x2DAA
	.short 0x2DB4
	.short 0x2DBE
	.short 0xFFFF # section end

# 8003E5F0
tbl_MasterMoveMods_8003E5F0:
	.short 0x0000 # None
	.short 0x2DC8 # "taunt 02"
	.short 0x2DD2
	.short 0x2DDC
	.short 0x2DE6
	.short 0x2DF0
	.short 0x2DFA
	.short 0x2E04
	.short 0x2E0E
	.short 0x2E18
	.short 0x2E22
	.short 0xFFFF # section end

# 8003E608
tbl_MasterMoveMods_8003E608:
	.short 0x0000 # None
	.short 0x2E2C # "taunt 01"
	.short 0x2E36
	.short 0x2E40
	.short 0x2E4A
	.short 0x2E54
	.short 0x2E5E
	.short 0x2E68
	.short 0xFFFF # section end
	.short 0x0000

# 8003E61C (Ground Grapple Face Up at Head)
tbl_MasterMoveMods_8003E61C:
	.short 0x0000 # None
	.short 0x2E72 # Front Headlock
	.short 0x2E7C
	.short 0x2E86
	.short 0x2E90
	.short 0x2E9A
	.short 0x2EA4
	.short 0x2EAE
	.short 0x2EB8
	.short 0x2EC2
	.short 0x2ECC
	.short 0x2ED6
	.short 0x2EE0
	.short 0x2EEA
	.short 0x2EF4
	.short 0x2EFE
	.short 0x2F08
	.short 0x2F12
	.short 0x2F1C
	.short 0x2F26
	.short 0x2F30
	.short 0x2F3A
	.short 0x2F44
	.short 0x2F4E
	.short 0xFFFF # section end
	.short 0x0000

# 8003E650 (Ground Grapple Face Down at Head)
tbl_MasterMoveMods_8003E650:
	.short 0x0000 # None
	.short 0x2F58 # Camel Clutch
	.short 0x2F62
	.short 0x2F6C
	.short 0x2F76
	.short 0x2F80
	.short 0x2F8A
	.short 0x2F94
	.short 0x2F9E
	.short 0x2FA8
	.short 0xFFFF # section end
	.short 0x0000

# 8003E668
tbl_MasterMoveMods_8003E668:
	.short 0x0000 # None
	.short 0x2FB2
	.short 0xFFFF # section end
	.short 0x0000

# 8003E670
tbl_MasterMoveMods_8003E670:
	.short 0x0000 # None
	.short 0x2FBC
	.short 0xFFFF # section end
	.short 0x0000

# 8003E678 (Ground Grapple Face Up at Legs)
tbl_MasterMoveMods_8003E678:
	.short 0x0000 # None
	.short 0x2FC6 # Boston Crab
	.short 0x2FD0
	.short 0x2FDA
	.short 0x2FE4
	.short 0x2FEE
	.short 0x2FF8
	.short 0x3002
	.short 0x300C
	.short 0x3016
	.short 0x3020
	.short 0x302A
	.short 0x3034
	.short 0x303E
	.short 0x3048
	.short 0x3052
	.short 0x305C
	.short 0x3066
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6A0 (Ground Grapple Face Down at Legs)
tbl_MasterMoveMods_8003E6A0:
	.short 0x0000 # None
	.short 0x3070 # Boston Crab
	.short 0x307A
	.short 0x3084
	.short 0x308E
	.short 0x3098
	.short 0x30A2
	.short 0x30AC
	.short 0x30B6
	.short 0x30C0
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6B8
tbl_MasterMoveMods_8003E6B8:
	.short 0x0000 # None
	.short 0x30CA # Kick to Face Reversal
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6C0
tbl_MasterMoveMods_8003E6C0:
	.short 0x0000 # None
	.short 0x30D4 # Boston Crab Reversal
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6C8 (Ground Grapple Sitting Up at Head)
tbl_MasterMoveMods_8003E6C8:
	.short 0x0000 # None
	.short 0x30DE # Sleeperhold
	.short 0x30E8
	.short 0x30F2
	.short 0x30FC
	.short 0x3106
	.short 0x3110
	.short 0x311A
	.short 0x3124
	.short 0xFFFF # section end

# 8003E6DC (Ground Grapple Kneeling Down at Head)
tbl_MasterMoveMods_8003E6DC:
	.short 0x0000 # None
	.short 0x312E # Camel Clutch
	.short 0x3138 # Mahistrol Cradle
	.short 0x3142 # Rear Naked Choke
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6E8
tbl_MasterMoveMods_8003E6E8:
	.short 0x0000 # None
	.short 0x314C # Kick to Head Counter
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6F0
tbl_MasterMoveMods_8003E6F0:
	.short 0x0000 # None
	.short 0x3156 # Leg Trip Counter
	.short 0xFFFF # section end
	.short 0x0000

# 8003E6F8
tbl_MasterMoveMods_8003E6F8:
	.short 0x0000 # None
	.short 0x3160 # Armbar
	.short 0xFFFF # section end
	.short 0x0000

# 8003E700
tbl_MasterMoveMods_8003E700:
	.short 0x0000 # None
	.short 0x316A # Armbar to Armbar Counter
	.short 0xFFFF # section end
	.short 0x0000

# 8003E708
tbl_MasterMoveMods_8003E708:
	.short 0x0000 # None
	.short 0x3174 # Rear Naked Choke
	.short 0xFFFF # section end
	.short 0x0000

# 8003E710
tbl_MasterMoveMods_8003E710:
	.short 0x0000 # None
	.short 0x317E # Rear Naked Choke Counter
	.short 0xFFFF # section end
	.short 0x0000

# 8003E718
tbl_MasterMoveMods_8003E718:
	.short 0x0000 # None
	.short 0x3188 # Elbow Strike
	.short 0x3192
	.short 0x319C
	.short 0x31A6
	.short 0x31B0
	.short 0x31BA
	.short 0x31C4
	.short 0x31CE
	.short 0x31D8
	.short 0x31E2
	.short 0x31EC
	.short 0x31F6
	.short 0x3200
	.short 0x320A
	.short 0x3214
	.short 0x321E
	.short 0x3228
	.short 0xFFFF # section end
	.short 0x0000

# 8003E740
tbl_MasterMoveMods_8003E740:
	.short 0x0000 # None
	.short 0x3232 # Elbowdrop
	.short 0x323C
	.short 0x3246
	.short 0x3250
	.short 0x325A
	.short 0x3264
	.short 0x326E
	.short 0x3278
	.short 0x3282
	.short 0x328C
	.short 0xFFFF # section end

# 8003E758
tbl_MasterMoveMods_8003E758:
	.short 0x0000 # None
	.short 0x3296 # Moonsault
	.short 0x32A0
	.short 0x32AA
	.short 0x32B4
	.short 0x32BE
	.short 0x32C8
	.short 0x32D2
	.short 0x32DC
	.short 0x32E6
	.short 0x32F0
	.short 0xFFFF # section end

# 8003E770
tbl_MasterMoveMods_8003E770:
	.short 0x0000 # None
	.short 0x32FA # Baseball Slide
	.short 0x3304
	.short 0x330E
	.short 0x3318
	.short 0x3322
	.short 0x332C
	.short 0x3336
	.short 0x3340
	.short 0x334A
	.short 0x3354
	.short 0x335E
	.short 0x3368
	.short 0xFFFF # section end

# 8003E78C (Running Rope Taunt)
tbl_MasterMoveMods_8003E78C:
	.short 0x0000 # None
	.short 0x3372 # Dive Feint
	.short 0x337C # Misawa Flip Feint
	.short 0xFFFF # section end

# 8003E794
tbl_MasterMoveMods_8003E794:
	.short 0x0000 # None
	.short 0x3386 # Plancha
	.short 0x3390
	.short 0x339A
	.short 0x33A4
	.short 0xFFFF # section end

# 8003E7A0 (probably Direction+A near ropes with downed opponent)
tbl_MasterMoveMods_8003E7A0:
	.short 0x0000 # None
	.short 0x33AE # Moonsault from 2nd rope
	.short 0xFFFF # section end
	.short 0x0000

# 8003E7A8 (Corner Splash Attack)
tbl_MasterMoveMods_8003E7A8:
	.short 0x0000 # None
	.short 0x33B8 # Body Splash
	.short 0x33C2 # Diving Elbow
	.short 0x33CC # Legdrop
	.short 0x33D6 # Vader Bomb
	.short 0xFFFF # section end

# 8003E7B4 (Dive from Apron to Outside)
tbl_MasterMoveMods_8003E7B4:
	.short 0x0000 # None
	.short 0x33E0
	.short 0x33EA
	.short 0x33F4
	.short 0xFFFF # section end
	.short 0x0000

# 8003E7C0 (Running Dive from Apron to Outside)
tbl_MasterMoveMods_8003E7C0:
	.short 0x0000 # None
	.short 0x33FE # con Hilo
	.short 0x3408 # Dropkick
	.short 0x3412 # Diving Elbow
	.short 0x341C
	.short 0xFFFF # section end

# 8003E7CC
tbl_MasterMoveMods_8003E7CC:
	.short 0x0000 # None
	.short 0x3426 # Dropkick
	.short 0x3430
	.short 0x343A
	.short 0x3444
	.short 0xFFFF # section end

# 8003E7D8
tbl_MasterMoveMods_8003E7D8:
	.short 0x0000 # None
	.short 0x344E # Missile Dropkick
	.short 0xFFFF # section end
	.short 0x0000

# 8003E7E0
tbl_MasterMoveMods_8003E7E0:
	.short 0x0000 # None
	.short 0x3458 # Slingshot Body Splash
	.short 0x3462
	.short 0x346C
	.short 0xFFFF # section end
	.short 0x0000

# 8003E7EC
tbl_MasterMoveMods_8003E7EC:
	.short 0x0000 # None
	.short 0x3476 # Moonsault
	.short 0x3480 # Back Elbow
	.short 0xFFFF # section end

# 8003E7F4
tbl_MasterMoveMods_8003E7F4:
	.short 0x0000 # None
	.short 0x348A # Doomsday Device (??)
	.short 0xFFFF # section end
	.short 0x0000

# 8003E7FC (Combo Stance)
tbl_MasterMoveMods_ComboStance:
	.short 0x0000 # None
	.short 0x3494 # Standard
	.short 0x349E
	.short 0x34A8
	.short 0x34B2
	.short 0x34BC
	.short 0x34C6
	.short 0xFFFF # section end

# 8003E80C
tbl_MasterMoveMods_8003E80C:
	.short 0x0000 # None
	.short 0x34D0 # Kick off apron
	.short 0x34DA # Chop off apron
	.short 0xFFFF # section end

# 8003E814
tbl_MasterMoveMods_8003E814:
	.short 0x0000 # None
	.short 0x34E4
	.short 0x34EE
	.short 0x34F8
	.short 0x3502
	.short 0x350C
	.short 0xFFFF # section end
	.short 0x0000

# 8003E824
tbl_MasterMoveMods_8003E824:
	.short 0x0000 # None
	.short 0x3516 # "Al Snow"
	.short 0x3520
	.short 0x352A
	.short 0x3534
	.short 0x353E
	.short 0x3548
	.short 0x3552
	.short 0x355C
	.short 0x3566
	.short 0x3570
	.short 0x357A
	.short 0x3584
	.short 0x358E
	.short 0x3598
	.short 0x35A2
	.short 0x35AC
	.short 0x35B6
	.short 0x35C0
	.short 0x35CA
	.short 0x35D4
	.short 0x35DE
	.short 0xFFFF # section end
	.short 0x0000

# 8003E854
tbl_MasterMoveMods_8003E854:
	.short 0x0000 # None
	.short 0x35E8 # "Big Show"
	.short 0x35F2
	.short 0x35FC
	.short 0x3606
	.short 0x3610
	.short 0x361A
	.short 0x3624
	.short 0x362E
	.short 0x3638
	.short 0x3642
	.short 0xFFFF # section end

# 8003E86C
tbl_MasterMoveMods_8003E86C:
	.short 0x0000 # None
	.short 0x364C # "Big Show 01"
	.short 0x3656
	.short 0x3660
	.short 0x366A
	.short 0x3674
	.short 0x367E
	.short 0x3688
	.short 0x3692
	.short 0x369C
	.short 0x36A6
	.short 0x36B0
	.short 0x36BA
	.short 0x36C4
	.short 0x36CE
	.short 0x36D8
	.short 0x36E2
	.short 0x36EC
	.short 0x36F6
	.short 0x3700
	.short 0x370A
	.short 0x3714
	.short 0x371E
	.short 0x3728
	.short 0x3732
	.short 0x373C
	.short 0x3746
	.short 0x3750
	.short 0x375A
	.short 0x3764
	.short 0x376E
	.short 0x3778
	.short 0x3782
	.short 0x378C
	.short 0x3796
	.short 0x37A0
	.short 0x37AA
	.short 0x37B4
	.short 0x37BE
	.short 0x37C8
	.short 0x37D2
	.short 0x37DC
	.short 0x37E6
	.short 0x37F0
	.short 0x37FA
	.short 0x3804
	.short 0x380E
	.short 0x3818
	.short 0x3822
	.short 0x382C
	.short 0x3836
	.short 0x3840
	.short 0x384A
	.short 0x3854
	.short 0x385E
	.short 0x3868
	.short 0x3872
	.short 0x387C
	.short 0x3886
	.short 0x3890
	.short 0x389A
	.short 0x38A4
	.short 0x38AE
	.short 0x38B8
	.short 0x38C2
	.short 0x38CC
	.short 0x38D6
	.short 0x38E0
	.short 0x38EA
	.short 0x38F4
	.short 0x38FE
	.short 0x3908
	.short 0x3912
	.short 0x391C
	.short 0x3926
	.short 0x3930
	.short 0x393A
	.short 0x3944
	.short 0x394E
	.short 0x3958
	.short 0x3962
	.short 0x396C
	.short 0x3976
	.short 0x3980
	.short 0x398A
	.short 0x3994
	.short 0x399E
	.short 0x39A8
	.short 0x39B2
	.short 0x39BC
	.short 0x39C6
	.short 0x39D0
	.short 0x39DA
	.short 0x39E4
	.short 0x39EE
	.short 0x39F8
	.short 0x3A02
	.short 0x3A0C
	.short 0x3A16
	.short 0x3A20
	.short 0xFFFF # section end
	.short 0x0000

# 8003E938
tbl_MasterMoveMods_8003E938:
	.short 0x0000 # None
	.short 0x3A2A # Counter Strong Grapple [B]
	.short 0x3A34 # Counter Strong Grapple [B+Left/Right]
	.short 0x3A3E # Counter Strong Grapple [B+Up]
	.short 0x3A48 # Counter Strong Grapple [B+Down]
	.short 0xFFFF # section end

# 8003E944
tbl_MasterMoveMods_8003E944:
	.short 0x0000 # None
	.short 0x3A52 # "Edge"
	.short 0x3A5C
	.short 0x3A66
	.short 0x3A70
	.short 0x3A7A
	.short 0x3A84
	.short 0x3A8E
	.short 0x3A98
	.short 0x3AA2
	.short 0x3AAC
	.short 0x3AB6
	.short 0x3AC0
	.short 0x3ACA
	.short 0x3AD4
	.short 0x3ADE
	.short 0x3AE8
	.short 0xFFFF # section end

# 8003E968
tbl_MasterMoveMods_8003E968:
	.short 0x0000 # None
	.short 0x3AF2 # "Steve Austin"
	.short 0x3AFC
	.short 0x3B06
	.short 0x3B10
	.short 0x3B1A
	.short 0x3B24
	.short 0x3B2E
	.short 0x3B38
	.short 0x3B42
	.short 0x3B4C
	.short 0xFFFF # section end

# 8003E980
tbl_MasterMoveMods_8003E980:
	.short 0x0000 # None
	.short 0x3B56
	.short 0xFFFF # section end
	.short 0x0000

# 8003E988
tbl_MasterMoveMods_8003E988:
	.short 0x0000 # None
	.short 0x3B60 # "nWo"
	.short 0x3B6A
	.short 0x3B74
	.short 0x3B7E
	.short 0x3B88
	.short 0x3B92
	.short 0x3B9C
	.short 0xFFFF # section end
	.short 0x0000

# 8003E99C
tbl_MasterMoveMods_8003E99C:
	.short 0x0000 # None
	.short 0x3BA6 # Generic Walk
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9A4
tbl_MasterMoveMods_8003E9A4:
	.short 0x0000 # None
	.short 0x3BB0
	.short 0x3BBA
	.short 0x3BC4
	.short 0x3BCE
	.short 0xFFFF # section end

# 8003E9B0
tbl_MasterMoveMods_8003E9B0:
	.short 0x0000 # None
	.short 0x3BD8
	.short 0x3BE2
	.short 0x3BEC
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9BC
tbl_MasterMoveMods_8003E9BC:
	.short 0x0000 # None
	.short 0x3BF6
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9C4
tbl_MasterMoveMods_8003E9C4:
	.short 0x0000 # None
	.short 0x3C00
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9CC
tbl_MasterMoveMods_8003E9CC:
	.short 0x0000 # None
	.short 0x3C0A
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9D4
tbl_MasterMoveMods_8003E9D4:
	.short 0x0000 # None
	.short 0x3C14
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9DC (Front Grapple Super Special)
tbl_MasterMoveMods_FrontGrappleSuperSpecial:
	.short 0x0000 # None
	.short 0x3C1E # Emerald Flowsion
	.short 0x3C28
	.short 0x3C32
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9E8 (Back Grapple Super Special)
tbl_MasterMoveMods_BackGrappleSuperSpecial:
	.short 0x0000 # None
	.short 0x3C3C # Burning Hammer
	.short 0xFFFF # section end
	.short 0x0000

# 8003E9F0
tbl_MasterMoveMods_8003E9F0:
	.short 0x0000 # None
	.short 0x3C46 # Headlock Takedown
	.short 0x3C50
	.short 0x3C5A
	.short 0x3C64
	.short 0x3C6E
	.short 0x3C78
	.short 0x3C82
	.short 0x3C8C
	.short 0x3C96
	.short 0x3CA0
	.short 0x3CAA
	.short 0x3CB4
	.short 0x3CBE
	.short 0x3CC8
	.short 0x3CD2
	.short 0x3CDC
	.short 0x3CE6
	.short 0x3CF0
	.short 0x3CFA
	.short 0x3D04
	.short 0x3D0E
	.short 0x3D18
	.short 0x3D22
	.short 0x3D2C
	.short 0x3D36
	.short 0x3D40
	.short 0x3D4A
	.short 0x3D54
	.short 0x3D5E
	.short 0x3D68
	.short 0x3D72
	.short 0x3D7C
	.short 0x3D86
	.short 0x3D90
	.short 0x3D9A
	.short 0x3DA4
	.short 0x3DAE
	.short 0x3DB8
	.short 0x3DC2
	.short 0xFFFF # section end
	.short 0x0000

# 8003EA44
tbl_MasterMoveMods_8003EA44:
	.short 0x0000 # None
	.short 0x3DCC # "Running Clothesline 01"
	.short 0x3DD6
	.short 0x3DE0
	.short 0x3DEA
	.short 0x3DF4
	.short 0x3DFE
	.short 0x3E08
	.short 0x3E12
	.short 0x3E1C
	.short 0x3E26
	.short 0x3E30
	.short 0x3E3A
	.short 0x3E44
	.short 0x3E4E
	.short 0x3E58
	.short 0x3E62
	.short 0x3E6C
	.short 0x3E76
	.short 0x3E80
	.short 0x3E8A
	.short 0x3E94
	.short 0x3E9E
	.short 0x3EA8
	.short 0x3EB2
	.short 0x3EBC
	.short 0x3EC6
	.short 0x3ED0
	.short 0x3EDA
	.short 0x3EE4
	.short 0x3EEE
	.short 0x3EF8
	.short 0x3F02
	.short 0x3F0C
	.short 0x3F16
	.short 0xFFFF # section end

/*----------------------------------------------------------------------------*/
# 8003EA8C: master move mods pointer table
ptrTbl_MasterMoveMods:
	.word tbl_MasterMoveMods_Fallback
	.word tbl_MasterMoveMods_FrontGrappleWeak
	.word tbl_MasterMoveMods_FrontGrappleStrong
	.word tbl_MasterMoveMods_FrontGrappleSpecial
	.word tbl_MasterMoveMods_8003DCF0
	.word tbl_MasterMoveMods_BackGrappleWeak
	.word tbl_MasterMoveMods_BackGrappleStrong
	.word tbl_MasterMoveMods_BackGrappleCounter
	.word tbl_MasterMoveMods_8003DE34
	.word tbl_MasterMoveMods_8003DE78
	.word tbl_MasterMoveMods_RunningFrontGrapple
	.word tbl_MasterMoveMods_RunningBackGrapple
	.word tbl_MasterMoveMods_8003DEB0
	.word tbl_MasterMoveMods_8003DEB8
	.word tbl_MasterMoveMods_CornerFrontGrappleWeak
	.word tbl_MasterMoveMods_CornerFrontGrappleStrong
	.word tbl_MasterMoveMods_CornerFrontGrappleSpecial
	.word tbl_MasterMoveMods_CornerBackGrapple
	.word tbl_MasterMoveMods_CornerBackGrappleSpecial
	.word tbl_MasterMoveMods_8003DF2C
	.word tbl_MasterMoveMods_TurnbuckleCounterFront
	.word tbl_MasterMoveMods_TurnbuckleCounterBack
	.word tbl_MasterMoveMods_8003DF44
	.word tbl_MasterMoveMods_8003DF4C
	.word tbl_MasterMoveMods_8003DF58
	.word tbl_MasterMoveMods_8003DF60
	.word tbl_MasterMoveMods_8003DF68
	.word tbl_MasterMoveMods_8003DF70
	.word tbl_MasterMoveMods_8003DF80
	.word tbl_MasterMoveMods_8003DF8C
	.word tbl_MasterMoveMods_8003DF94
	.word tbl_MasterMoveMods_8003DF9C
	.word tbl_MasterMoveMods_8003DFA8
	.word tbl_MasterMoveMods_8003DFB0
	.word tbl_MasterMoveMods_8003DFB8
	.word tbl_MasterMoveMods_8003DFC0
	.word tbl_MasterMoveMods_8003DFC8
	.word tbl_MasterMoveMods_8003DFD0
	.word tbl_MasterMoveMods_8003DFD8
	.word tbl_MasterMoveMods_8003DFE8
	.word tbl_MasterMoveMods_8003DFF0
	.word tbl_MasterMoveMods_8003DFF8
	.word tbl_MasterMoveMods_8003E004
	.word tbl_MasterMoveMods_8003E010
	.word tbl_MasterMoveMods_8003E01C
	.word tbl_MasterMoveMods_8003E024
	.word tbl_MasterMoveMods_8003E02C
	.word tbl_MasterMoveMods_8003E034
	.word tbl_MasterMoveMods_8003E058
	.word tbl_MasterMoveMods_8003E084
	.word tbl_MasterMoveMods_8003E0A0
	.word tbl_MasterMoveMods_8003E0A8
	.word tbl_MasterMoveMods_8003E0C0
	.word tbl_MasterMoveMods_8003E0D4
	.word tbl_MasterMoveMods_8003E0F8
	.word tbl_MasterMoveMods_8003E104
	.word tbl_MasterMoveMods_8003E10C
	.word tbl_MasterMoveMods_8003E1E8
	.word tbl_MasterMoveMods_8003E1F0
	.word tbl_MasterMoveMods_8003E1F8
	.word tbl_MasterMoveMods_8003E230
	.word tbl_MasterMoveMods_BackGrappleSpecial
	.word tbl_MasterMoveMods_8003E25C
	.word tbl_MasterMoveMods_8003E26C
	.word tbl_MasterMoveMods_Evasion
	.word tbl_MasterMoveMods_8003E280
	.word tbl_MasterMoveMods_8003E2C0
	.word tbl_MasterMoveMods_8003E2DC
	.word tbl_MasterMoveMods_8003E338
	.word tbl_MasterMoveMods_DuckingStrike
	.word tbl_MasterMoveMods_8003E3B8
	.word tbl_MasterMoveMods_8003E3C4
	.word tbl_MasterMoveMods_IntroStance
	.word tbl_MasterMoveMods_IntroTaunts
	.word tbl_MasterMoveMods_8003E484
	.word tbl_MasterMoveMods_8003E5AC
	.word tbl_MasterMoveMods_8003E5B4
	.word tbl_MasterMoveMods_8003E5DC
	.word tbl_MasterMoveMods_8003E5F0
	.word tbl_MasterMoveMods_8003E608
	.word tbl_MasterMoveMods_8003E61C
	.word tbl_MasterMoveMods_8003E650
	.word tbl_MasterMoveMods_8003E668
	.word tbl_MasterMoveMods_8003E670
	.word tbl_MasterMoveMods_8003E678
	.word tbl_MasterMoveMods_8003E6A0
	.word tbl_MasterMoveMods_8003E6B8
	.word tbl_MasterMoveMods_8003E6C0
	.word tbl_MasterMoveMods_8003E6C8
	.word tbl_MasterMoveMods_8003E6DC
	.word tbl_MasterMoveMods_8003E6E8
	.word tbl_MasterMoveMods_8003E6F0
	.word tbl_MasterMoveMods_8003E6F8
	.word tbl_MasterMoveMods_8003E700
	.word tbl_MasterMoveMods_8003E708
	.word tbl_MasterMoveMods_8003E710
	.word tbl_MasterMoveMods_8003E718
	.word tbl_MasterMoveMods_8003E740
	.word tbl_MasterMoveMods_8003E758
	.word tbl_MasterMoveMods_8003E770
	.word tbl_MasterMoveMods_8003E78C
	.word tbl_MasterMoveMods_8003E794
	.word tbl_MasterMoveMods_8003E7A0
	.word tbl_MasterMoveMods_8003E7A8
	.word tbl_MasterMoveMods_8003E7B4
	.word tbl_MasterMoveMods_8003E7C0
	.word tbl_MasterMoveMods_8003E7CC
	.word tbl_MasterMoveMods_8003E7D8
	.word tbl_MasterMoveMods_8003E7E0
	.word tbl_MasterMoveMods_8003E7EC
	.word tbl_MasterMoveMods_8003E7F4
	.word tbl_MasterMoveMods_ComboStance
	.word tbl_MasterMoveMods_8003E80C
	.word tbl_MasterMoveMods_8003E814
	.word tbl_MasterMoveMods_8003E824
	.word tbl_MasterMoveMods_8003E854
	.word tbl_MasterMoveMods_8003E86C
	.word tbl_MasterMoveMods_8003E938
	.word tbl_MasterMoveMods_8003E944
	.word tbl_MasterMoveMods_8003E968
	.word tbl_MasterMoveMods_8003E980
	.word tbl_MasterMoveMods_8003E988
	.word tbl_MasterMoveMods_8003E99C
	.word tbl_MasterMoveMods_8003E9A4
	.word tbl_MasterMoveMods_8003E9B0
	.word tbl_MasterMoveMods_8003E9BC
	.word tbl_MasterMoveMods_8003E9C4
	.word tbl_MasterMoveMods_8003E9CC
	.word tbl_MasterMoveMods_8003E9D4
	.word tbl_MasterMoveMods_FrontGrappleSuperSpecial
	.word tbl_MasterMoveMods_BackGrappleSuperSpecial
	.word tbl_MasterMoveMods_8003E9F0
	.word tbl_MasterMoveMods_8003EA44
