# Virtual Pro-Wrestling 2 | data_003/pausemenu.s
# Pause menu data defs
# These are meant to go at 0x14BCAC in the Z64 ROM; 801515FC runtime.
/*----------------------------------------------------------------------------*/
# pause menu X positions
D_801515FC:
	.short 0x09E # "pause"
	.short 0x0D8 # "controller 1"
	.short 0x0D8 # "controller 2"
	.short 0x0D8 # "controller 3"
	.short 0x0D8 # "controller 4"
	.short 0x000

# 80151608 # 0x18 offset into data003 [h]
D_80151608:
	.short 0x0B0 # "continue" x pos

# 8015160A # 0x1A offset into data003 [h]
D_8015160A:
	.short 0x0B0 # "quit" x pos
	.short 0x0B0 # "skip" x pos??
	.short 0x0B0 # "rematch" x pos

# 80151610 # 0x20 offset into data003 [h]
D_80151610:
	.short 0x0B0 # referee off x pos
	.short 0x0B0 # referee on x pos
	.short 0x0B0 # spirit meter off x pos
	.short 0x0B0 # spirit meter on x pos

# 80151618 # 0x28 offset into data003 [h]
D_80151618:
	.short 0x0B0 # replay off x pos
	.short 0x0B0 # replay on x pos

# 8015161C # 0x2C offset into data003 [h]
D_8015161C:
	.short 0x07A # "unpause" x pos

# 8015161E # 0x2E offset into data003 [h]
D_8015161E:
	.short 0x103 # "select" x pos

# 80151620 # 0x30 offset into data003 [h]
D_80151620:
	.short 0x14A # bottom row decide? x position (A button 1)
	.short 0x14A # bottom row toggle? x position (A button 2)
	.short 0x0B4 # "skip match?" x position
	.short 0x0B0 # "restart match?" x position
	.short 0x0B4 # "quit match?" x position

# 8015162A # 0x3A offset into data003 [h]
D_8015162A:
	.short 0x0E0 # "yes" x position

# 8015162C # 0x3C offset into data003 [h]
D_8015162C:
	.short 0x0E0 # "no" x position
	.short 0x000

# 80151630 # 0x40 offset into data003 [h]
D_80151630:
	.short 0x13B # A button x position
	.short 0x000

# 80151634 # 0x44 offset into data003 [h]
D_80151634:
	.short 0x05B # start and B button x position
	.short 0x000

# 80151638 # 0x48 offset into data003 [h]
D_80151638:
	.short 0x0E4 # up/down x position

# possibly padding? I have no idea.
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0

# pause menu Y positions

# 80151648 # 0x58 offset into data003 [h]
D_80151648:
	.short 0x029 # "pause"
	.short 0x029 # "controller 1"
	.short 0x029 # "controller 2"
	.short 0x029 # "controller 3"
	.short 0x029 # "controller 4"
	.short 0x000

# 80151654 # 0x64 offset into data003 [h]
D_80151654:
	.short 0x046 # "continue" y pos

# 80151656 # 0x66 offset into data003 [h]
D_80151656:
	.short 0x066 # "quit" y pos
	.short 0x056 # "skip" y pos?
	.short 0x056 # "rematch" y pos

# 8015165C # 0x6C offset into data003 [h]
D_8015165C:
	.short 0x086 # referee off y pos
	.short 0x086 # referee on y pos
	.short 0x076 # spirit meter off y pos
	.short 0x076 # spirit meter on y pos

# 80151664 # 0x74 offset into data003 [h]
D_80151664:
	.short 0x096 # replay off y pos
	.short 0x096 # replay on y pos

# 80151668 # 0x78 offset into data003 [h]
D_80151668:
	.short 0x0B7 # "unpause" y pos

# 8015166A # 0x7A offset into data003 [h]
D_8015166A:
	.short 0x0B7 # "select" y pos

# 8015166C # 0x7C offset into data003 [h]
D_8015166C:
	.short 0x0B7 # bottom row decide? (A button 1) y position
	.short 0x0B7 # bottom row toggle? (A button 2) y position
	.short 0x050 # "skip match?" y position
	.short 0x050 # "restart match?" y position
	.short 0x050 # "quit match?" y position

# 80151676 # 0x86 offset into data003 [h]
D_80151676:
	.short 0x073 # "yes" y position

# 80151678 # 0x88 offset into data003 [h]
D_80151678:
	.short 0x087 # "no" y position
	.short 0x000

# 8015167C # 0x8C offset into data003 [h]
D_8015167C:
	.short 0x0B7 # A button Y position
	.short 0x000

# 80151680 # 0x90 offset into data003 [h]
D_80151680:
	.short 0x0B7 # start and B button y position
	.short 0x000

# 80151684 # 0x94 offset into data003 [h]
D_80151684:
	.short 0x0B7 # up/down y position
	.short 0x000

# 80151688 # 0x98 offset into data003 [h]
D_80151688:
	.short 0x52C # file ID for decide
	.short 0x52C # file ID for decide
	.short 0x52C # file ID for decide
	.short 0x52D # file ID for toggle
	.short 0x52D # file ID for toggle
	.short 0x52D # file ID for toggle

# 80151694 # 0xA4 offset into data003 [h]
D_80151694:
	.short 0x520 # file ID: continue
	.short 0x523 # file ID: rematch
	.short 0x521 # file ID: quit
	.short 0x527 # file ID: spirit meter on
	.short 0x525 # file ID: referee on
	.short 0x529 # file ID: replay on

# 801516A0 # 0xB0 offset into data003 [b]
# related to pause menu background quad stretching animation
D_801516A0:
	.byte 0
	.byte 0xF,0x1E,0x28,0x2F,0x31
	.byte 0x32

# 801516A7 # 0xB7 offset into data003 [b]
# current index into above table?
D_801516A7:
	.byte 0

# 801516A8 # 0xB8 offset into data003 [h]
D_801516A8:
	.short 2
	.short 4
	.short 3
	.short 4

# 801516B0 # 0xC0 offset into data003 [b]
D_801516B0:
	.byte 0

# 801516B1 # 0xC1 offset into data003 [b]
D_801516B1:
	.byte 1

# 801516B2 # 0xC2 offset into data003 [b]
D_801516B2:
	.byte 0

# more padding?
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0
