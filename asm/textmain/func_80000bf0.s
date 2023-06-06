# (possible file break?)

# Initial system setup function?

# Params:
# $a0 - pointer to ??
# $a1 - pointer to ??
# $a2 - always called with 120 here; unused?
# $a3 - VI mode type

glabel func_80000BF0
/* 0017F0 80000BF0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0017F4 80000BF4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0017F8 80000BF8 93B10053 */  lbu   $s1, 0x53($sp)
/* 0017FC 80000BFC 3C028000 */  lui   $v0, %hi(osTvType) # $v0, 0x8000
/* 001800 80000C00 8C420300 */  lw    $v0, %lo(osTvType)($v0)
/* 001804 80000C04 AFB60030 */  sw    $s6, 0x30($sp)
/* 001808 80000C08 0080B021 */  addu  $s6, $a0, $zero
/* 00180C 80000C0C AFBE0038 */  sw    $fp, 0x38($sp)
/* 001810 80000C10 00A0F021 */  addu  $fp, $a1, $zero
/* 001814 80000C14 24030001 */  li    $v1, 1
/* 001818 80000C18 AFBF003C */  sw    $ra, 0x3c($sp)
/* 00181C 80000C1C AFB70034 */  sw    $s7, 0x34($sp)
/* 001820 80000C20 AFB5002C */  sw    $s5, 0x2c($sp)
/* 001824 80000C24 AFB40028 */  sw    $s4, 0x28($sp)
/* 001828 80000C28 AFB30024 */  sw    $s3, 0x24($sp)
/* 00182C 80000C2C AFB20020 */  sw    $s2, 0x20($sp)
/* 001830 80000C30 AFB00018 */  sw    $s0, 0x18($sp)
/* 001834 80000C34 A6C30000 */  sh    $v1, ($s6)
/* 001838 80000C38 24030004 */  li    $v1, 4
/* 00183C 80000C3C 3C018005 */  lui   $at, %hi(bssMain_80052550) # $at, 0x8005
/* 001840 80000C40 AC362550 */  sw    $s6, %lo(bssMain_80052550)($at)
/* 001844 80000C44 AEC00260 */  sw    $zero, 0x260($s6)
/* 001848 80000C48 AEC0027C */  sw    $zero, 0x27c($s6)
/* 00184C 80000C4C A6C30020 */  sh    $v1, 0x20($s6)
/* 001850 80000C50 3C018005 */  lui   $at, %hi(bssMain_80052540) # $at, 0x8005
/* 001854 80000C54 AC202540 */  sw    $zero, %lo(bssMain_80052540)($at)
/* 001858 80000C58 3C018005 */  lui   $at, %hi(bssMain_80052544) # $at, 0x8005
/* 00185C 80000C5C AC202544 */  sw    $zero, %lo(bssMain_80052544)($at)
/* 001860 80000C60 3C018005 */  lui   $at, %hi(bssMain_80052548) # $at, 0x8005
/* 001864 80000C64 AC202548 */  sw    $zero, %lo(bssMain_80052548)($at)
/* 001868 80000C68 3C018005 */  lui   $at, %hi(bssMain_80052554) # $at, 0x8005
/* 00186C 80000C6C A4202554 */  sh    $zero, %lo(bssMain_80052554)($at)
/* 001870 80000C70 14400003 */  bnez  $v0, .L80000C80 # branch if NTSC or MPAL
/* 001874 80000C74 00E0B821 */   addu  $s7, $a3, $zero # VI mode type in $s7

/* 001878 80000C78 08000321 */  j     .L80000C84
/* 00187C 80000C7C 24020019 */   li    $v0, 25 # 25hz (50hz/2)

.L80000C80:
/* 001880 80000C80 2402001E */  li    $v0, 30 # 30hz (60hz/2)

.L80000C84:
/* 001884 80000C84 3C018005 */  lui   $at, %hi(bssMain_80052556) # $at, 0x8005
/* 001888 80000C88 A4222556 */  sh    $v0, %lo(bssMain_80052556)($at)
/* 00188C 80000C8C 3C028005 */  lui   $v0, %hi(bssMain_80052556) # $v0, 0x8005
/* 001890 80000C90 94422556 */  lhu   $v0, %lo(bssMain_80052556)($v0)
/* 001894 80000C94 323100FF */  andi  $s1, $s1, 0xff
/* 001898 80000C98 0051001A */  div   $zero, $v0, $s1
/* 00189C 80000C9C 16200002 */  bnez  $s1, .L80000CA8
/* 0018A0 80000CA0 00000000 */   nop   

/* 0018A4 80000CA4 0007000D */  break 7

.L80000CA8:
/* 0018A8 80000CA8 2401FFFF */  li    $at, -1
/* 0018AC 80000CAC 16210004 */  bne   $s1, $at, .L80000CC0
/* 0018B0 80000CB0 3C018000 */   lui   $at, 0x8000
/* 0018B4 80000CB4 14410002 */  bne   $v0, $at, .L80000CC0
/* 0018B8 80000CB8 00000000 */   nop   

/* 0018BC 80000CBC 0006000D */  break 6

.L80000CC0:
/* 0018C0 80000CC0 00001012 */  mflo  $v0
/* 0018C4 80000CC4 26D20040 */  addiu $s2, $s6, 0x40
/* 0018C8 80000CC8 02402021 */  addu  $a0, $s2, $zero
/* 0018CC 80000CCC 26C50058 */  addiu $a1, $s6, 0x58
/* 0018D0 80000CD0 2442FFFB */  addiu $v0, $v0, -5
/* 0018D4 80000CD4 3C018005 */  lui   $at, %hi(bssMain_80052556) # $at, 0x8005
/* 0018D8 80000CD8 A4222556 */  sh    $v0, %lo(bssMain_80052556)($at)
/* 0018DC 80000CDC 0C00C984 */  jal   osCreateMesgQueue
/* 0018E0 80000CE0 24060008 */   li    $a2, 8 # count/number of messages

/* 0018E4 80000CE4 3C108005 */  lui   $s0, %hi(bssMain_800520C8) # $s0, 0x8005
/* 0018E8 80000CE8 261020C8 */  addiu $s0, %lo(bssMain_800520C8) # addiu $s0, $s0, 0x20c8
/* 0018EC 80000CEC 02002021 */  addu  $a0, $s0, $zero # OSMesgQueue *mq
/* 0018F0 80000CF0 26050018 */  addiu $a1, $s0, 0x18 # OSMesg *msg
/* 0018F4 80000CF4 0C00C984 */  jal   osCreateMesgQueue
/* 0018F8 80000CF8 24060008 */   li    $a2, 8 # count/number of messages

/* 0018FC 80000CFC 2613FFC8 */  addiu $s3, $s0, -0x38
/* 001900 80000D00 02602021 */  addu  $a0, $s3, $zero # OSMesgQueue *mq
/* 001904 80000D04 2605FFE0 */  addiu $a1, $s0, -0x20 # OSMesg *msg
/* 001908 80000D08 0C00C984 */  jal   osCreateMesgQueue
/* 00190C 80000D0C 24060008 */   li    $a2, 8 # count/number of messages

/* 001910 80000D10 26150038 */  addiu $s5, $s0, 0x38
/* 001914 80000D14 02A02021 */  addu  $a0, $s5, $zero # OSMesgQueue *mq
/* 001918 80000D18 26050050 */  addiu $a1, $s0, 0x50 # OSMesg *msg
/* 00191C 80000D1C 0C00C984 */  jal   osCreateMesgQueue
/* 001920 80000D20 24060008 */   li    $a2, 8 # count/number of messages

/* 001924 80000D24 26140070 */  addiu $s4, $s0, 0x70
/* 001928 80000D28 02802021 */  addu  $a0, $s4, $zero # OSMesgQueue *mq
/* 00192C 80000D2C 26050088 */  addiu $a1, $s0, 0x88 # OSMesg *msg
/* 001930 80000D30 0C00C984 */  jal   osCreateMesgQueue
/* 001934 80000D34 24060008 */   li    $a2, 8 # count/number of messages

/* 001938 80000D38 260400E0 */  addiu $a0, $s0, 0xe0 # OSMesgQueue *mq
/* 00193C 80000D3C 260500F8 */  addiu $a1, $s0, 0xf8 # OSMesg *msg
/* 001940 80000D40 0C00C984 */  jal   osCreateMesgQueue
/* 001944 80000D44 24060008 */   li    $a2, 8 # count/number of messages

/* 001948 80000D48 260400A8 */  addiu $a0, $s0, 0xa8 # OSMesgQueue *mq
/* 00194C 80000D4C 260500C0 */  addiu $a1, $s0, 0xc0 # OSMesg *msg
/* 001950 80000D50 0C00C984 */  jal   osCreateMesgQueue
/* 001954 80000D54 24060008 */   li    $a2, 8 # count/number of messages

/* 001958 80000D58 0C00CE58 */  jal   osCreateViManager
/* 00195C 80000D5C 240400FE */   li    $a0, 254 # OS_PRIORITY_VIMGR

# mask for valid mode type and use as index into table
/* 001960 80000D60 32E200FF */  andi  $v0, $s7, 0xff
/* 001964 80000D64 00022080 */  sll   $a0, $v0, 2
/* 001968 80000D68 00822021 */  addu  $a0, $a0, $v0
/* 00196C 80000D6C 00042100 */  sll   $a0, $a0, 4
/* 001970 80000D70 3C028005 */  lui   $v0, %hi(tbl_800486F0) # $v0, 0x8005
/* 001974 80000D74 244286F0 */  addiu $v0, %lo(tbl_800486F0) # addiu $v0, $v0, -0x7910
/* 001978 80000D78 0C00CF40 */  jal   osViSetMode
/* 00197C 80000D7C 00822021 */   addu  $a0, $a0, $v0

/* 001980 80000D80 0C00D09C */  jal   osViBlack
/* 001984 80000D84 24040001 */   li    $a0, 1


/* 001988 80000D88 02402021 */  addu  $a0, $s2, $zero # OSMesgQueue *mq
/* 00198C 80000D8C 2405029A */  li    $a1, 666 # OSMesg msg (retrace/VIDEO_MSG)
/* 001990 80000D90 0C00CF28 */  jal   osViSetEvent
/* 001994 80000D94 02203021 */   addu  $a2, $s1, $zero # u32 retraceCount

/* 001998 80000D98 2404000E */  li    $a0, 14 # OS_EVENT_PRENMI
/* 00199C 80000D9C 02402821 */  addu  $a1, $s2, $zero # OSMesgQueue *mq
/* 0019A0 80000DA0 0C00CA78 */  jal   osSetEventMesg
/* 0019A4 80000DA4 2406029D */   li    $a2, 669 # OSMesg m (pre-nmi/PRE_NMI_MSG)

/* 0019A8 80000DA8 24040004 */  li    $a0, 4 # OS_EVENT_SP
/* 0019AC 80000DAC 02A02821 */  addu  $a1, $s5, $zero # OSMesgQueue *mq
/* 0019B0 80000DB0 0C00CA78 */  jal   osSetEventMesg
/* 0019B4 80000DB4 2406029B */   li    $a2, 667 # OSMesg m (rsp task done/RSP_DONE_MSG)

/* 0019B8 80000DB8 24040009 */  li    $a0, 9 # OS_EVENT_DP
/* 0019BC 80000DBC 02802821 */  addu  $a1, $s4, $zero # OSMesgQueue *mq
/* 0019C0 80000DC0 0C00CA78 */  jal   osSetEventMesg
/* 0019C4 80000DC4 2406029C */   li    $a2, 668 # OSMesg m (rdp draw done/RDP_DONE_MSG)

# Scheduler Thread {
/* 0019C8 80000DC8 26D100B0 */  addiu $s1, $s6, 0xb0
/* 0019CC 80000DCC 02202021 */  addu  $a0, $s1, $zero
/* 0019D0 80000DD0 24050004 */  li    $a1, 4 # thread ID 4
/* 0019D4 80000DD4 3C068000 */  lui   $a2, %hi(thread_80000F9C) # $a2, 0x8000
/* 0019D8 80000DD8 24C60F9C */  addiu $a2, %lo(thread_80000F9C) # addiu $a2, $a2, 0xf9c
/* 0019DC 80000DDC 02C03821 */  addu  $a3, $s6, $zero
/* 0019E0 80000DE0 24020078 */  li    $v0, 120 # NN_SC_PRI (scheduler)
/* 0019E4 80000DE4 AFBE0010 */  sw    $fp, 0x10($sp)
/* 0019E8 80000DE8 0C00CBF4 */  jal   osCreateThread
/* 0019EC 80000DEC AFA20014 */   sw    $v0, 0x14($sp)

/* 0019F0 80000DF0 0C00CC64 */  jal   osStartThread
/* 0019F4 80000DF4 02202021 */   addu  $a0, $s1, $zero
#}

# Audio Thread {
/* 0019F8 80000DF8 26110118 */  addiu $s1, $s0, 0x118
/* 0019FC 80000DFC 02202021 */  addu  $a0, $s1, $zero
/* 001A00 80000E00 24050012 */  li    $a1, 18 # thread ID 18 (0x12)
/* 001A04 80000E04 3C068000 */  lui   $a2, %hi(thread_800010E4) # $a2, 0x8000
/* 001A08 80000E08 24C610E4 */  addiu $a2, %lo(thread_800010E4) # addiu $a2, $a2, 0x10e4
/* 001A0C 80000E0C 02603821 */  addu  $a3, $s3, $zero
/* 001A10 80000E10 3C028005 */  lui   $v0, %hi(bssMain_80050090) # $v0, 0x8005
/* 001A14 80000E14 24420090 */  addiu $v0, %lo(bssMain_80050090) # addiu $v0, $v0, 0x90
/* 001A18 80000E18 AFA20010 */  sw    $v0, 0x10($sp)
/* 001A1C 80000E1C 2402006E */  li    $v0, 110 # NN_SC_AUDIO_PRI (audio)
/* 001A20 80000E20 0C00CBF4 */  jal   osCreateThread
/* 001A24 80000E24 AFA20014 */   sw    $v0, 0x14($sp)

/* 001A28 80000E28 0C00CC64 */  jal   osStartThread
/* 001A2C 80000E2C 02202021 */   addu  $a0, $s1, $zero
#}

# Graphics Thread {
/* 001A30 80000E30 261002C8 */  addiu $s0, $s0, 0x2c8
/* 001A34 80000E34 02002021 */  addu  $a0, $s0, $zero
/* 001A38 80000E38 24050011 */  li    $a1, 17 # thread ID 17 (0x11)
/* 001A3C 80000E3C 3C068000 */  lui   $a2, %hi(thread_80001240) # $a2, 0x8000
/* 001A40 80000E40 24C61240 */  addiu $a2, %lo(thread_80001240) # addiu $a2, $a2, 0x1240
/* 001A44 80000E44 02603821 */  addu  $a3, $s3, $zero
/* 001A48 80000E48 3C028005 */  lui   $v0, %hi(bssMain_80052090) # $v0, 0x8005
/* 001A4C 80000E4C 24422090 */  addiu $v0, %lo(bssMain_80052090) # addiu $v0, $v0, 0x2090
/* 001A50 80000E50 AFA20010 */  sw    $v0, 0x10($sp)
/* 001A54 80000E54 24020064 */  li    $v0, 100 # NN_SC_GRAPHICS_PRI (graphics)
/* 001A58 80000E58 0C00CBF4 */  jal   osCreateThread
/* 001A5C 80000E5C AFA20014 */   sw    $v0, 0x14($sp)

/* 001A60 80000E60 0C00CC64 */  jal   osStartThread
/* 001A64 80000E64 02002021 */   addu  $a0, $s0, $zero
#}

/* 001A68 80000E68 8FBF003C */  lw    $ra, 0x3c($sp)
/* 001A6C 80000E6C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 001A70 80000E70 8FB70034 */  lw    $s7, 0x34($sp)
/* 001A74 80000E74 8FB60030 */  lw    $s6, 0x30($sp)
/* 001A78 80000E78 8FB5002C */  lw    $s5, 0x2c($sp)
/* 001A7C 80000E7C 8FB40028 */  lw    $s4, 0x28($sp)
/* 001A80 80000E80 8FB30024 */  lw    $s3, 0x24($sp)
/* 001A84 80000E84 8FB20020 */  lw    $s2, 0x20($sp)
/* 001A88 80000E88 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001A8C 80000E8C 8FB00018 */  lw    $s0, 0x18($sp)
/* 001A90 80000E90 03E00008 */  jr    $ra
/* 001A94 80000E94 27BD0040 */   addiu $sp, $sp, 0x40
