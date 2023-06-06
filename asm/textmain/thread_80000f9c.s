# 80000F9C: scheduler thread

glabel thread_80000F9C
/* 001B9C 80000F9C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 001BA0 80000FA0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 001BA4 80000FA4 00808821 */  addu  $s1, $a0, $zero
/* 001BA8 80000FA8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 001BAC 80000FAC 2415029A */  li    $s5, 666 # VIDEO_MSG
/* 001BB0 80000FB0 AFB40028 */  sw    $s4, 0x28($sp)
/* 001BB4 80000FB4 2414029D */  li    $s4, 669 # PRE_NMI_MSG
/* 001BB8 80000FB8 AFB30024 */  sw    $s3, 0x24($sp)
/* 001BBC 80000FBC 24130001 */  li    $s3, 1
/* 001BC0 80000FC0 AFBF0030 */  sw    $ra, 0x30($sp)
/* 001BC4 80000FC4 AFB20020 */  sw    $s2, 0x20($sp)
/* 001BC8 80000FC8 AFB00018 */  sw    $s0, 0x18($sp)
/* 001BCC 80000FCC 26240040 */  addiu $a0, $s1, 0x40

#{
.L80000FD0:
/* 001BD0 80000FD0 27A50010 */  addiu $a1, $sp, 0x10
/* 001BD4 80000FD4 0C00C9E0 */  jal   osRecvMesg
/* 001BD8 80000FD8 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

# check message type
/* 001BDC 80000FDC 8FA20010 */  lw    $v0, 0x10($sp)
/* 001BE0 80000FE0 10550005 */  beq   $v0, $s5, .L80000FF8 # branch if video
/* 001BE4 80000FE4 00000000 */   nop   

/* 001BE8 80000FE8 10540023 */  beq   $v0, $s4, .L80001078 # branch if pre-nmi
/* 001BEC 80000FEC 26240040 */   addiu $a0, $s1, 0x40

/* 001BF0 80000FF0 080003F4 */  j     .L80000FD0 # loop
/* 001BF4 80000FF4 00000000 */   nop   

# video
.L80000FF8:
/* 001BF8 80000FF8 8E22027C */  lw    $v0, 0x27c($s1)
/* 001BFC 80000FFC 8E300260 */  lw    $s0, 0x260($s1)
/* 001C00 80001000 24420001 */  addiu $v0, $v0, 1
/* 001C04 80001004 12000008 */  beqz  $s0, .L80001028
/* 001C08 80001008 AE22027C */   sw    $v0, 0x27c($s1)

.L8000100C:
/* 001C0C 8000100C 8E040004 */  lw    $a0, 4($s0) # OSMesgQueue *mq
/* 001C10 80001010 02202821 */  addu  $a1, $s1, $zero # OSMesg msg
/* 001C14 80001014 0C00CA2C */  jal   osSendMesg
/* 001C18 80001018 00003021 */   addu  $a2, $zero, $zero

/* 001C1C 8000101C 8E100000 */  lw    $s0, ($s0)
/* 001C20 80001020 1600FFFA */  bnez  $s0, .L8000100C
/* 001C24 80001024 00000000 */   nop   

.L80001028:
/* 001C28 80001028 3C038005 */  lui   $v1, %hi(bssMain_80052554) # $v1, 0x8005
/* 001C2C 8000102C 94632554 */  lhu   $v1, %lo(bssMain_80052554)($v1)
/* 001C30 80001030 1060FFE7 */  beqz  $v1, .L80000FD0
/* 001C34 80001034 26240040 */   addiu $a0, $s1, 0x40

/* 001C38 80001038 3242FFFF */  andi  $v0, $s2, 0xffff
/* 001C3C 8000103C 10400003 */  beqz  $v0, .L8000104C
/* 001C40 80001040 34620002 */   ori   $v0, $v1, 2

/* 001C44 80001044 080003F4 */  j     .L80000FD0
/* 001C48 80001048 2652FFFF */   addiu $s2, $s2, -1

.L8000104C:
/* 001C4C 8000104C 3C018005 */  lui   $at, %hi(bssMain_80052554) # $at, 0x8005
/* 001C50 80001050 0C00DC68 */  jal   osAfterPreNMI
/* 001C54 80001054 A4222554 */   sh    $v0, %lo(bssMain_80052554)($at)

/* 001C58 80001058 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 001C5C 8000105C 44816000 */  mtc1  $at, $f12
/* 001C60 80001060 0C00CFB0 */  jal   osViSetYScale
/* 001C64 80001064 00000000 */   nop   

/* 001C68 80001068 0C00D09C */  jal   osViBlack
/* 001C6C 8000106C 24040001 */   li    $a0, 1

/* 001C70 80001070 080003F4 */  j     .L80000FD0
/* 001C74 80001074 26240040 */   addiu $a0, $s1, 0x40

# pre-nmi
.L80001078:
/* 001C78 80001078 8E300260 */  lw    $s0, 0x260($s1)
/* 001C7C 8000107C 3C018005 */  lui   $at, %hi(bssMain_80052554) # $at, 0x8005
/* 001C80 80001080 12000008 */  beqz  $s0, .L800010A4
/* 001C84 80001084 A4332554 */   sh    $s3, %lo(bssMain_80052554)($at)

.L80001088:
/* 001C88 80001088 8E040004 */  lw    $a0, 4($s0) # OSMesgQueue *mq
/* 001C8C 8000108C 26250020 */  addiu $a1, $s1, 0x20 # OSMesg msg
/* 001C90 80001090 0C00CA2C */  jal   osSendMesg
/* 001C94 80001094 00003021 */   addu  $a2, $zero, $zero

/* 001C98 80001098 8E100000 */  lw    $s0, ($s0)
/* 001C9C 8000109C 1600FFFA */  bnez  $s0, .L80001088
/* 001CA0 800010A0 00000000 */   nop   

.L800010A4:
/* 001CA4 800010A4 3C128005 */  lui   $s2, %hi(bssMain_80052556) # $s2, 0x8005
/* 001CA8 800010A8 96522556 */  lhu   $s2, %lo(bssMain_80052556)($s2)
/* 001CAC 800010AC 080003F4 */  j     .L80000FD0
/* 001CB0 800010B0 26240040 */   addiu $a0, $s1, 0x40
#}

/* 001CB4 800010B4 8FBF0030 */  lw    $ra, 0x30($sp)
/* 001CB8 800010B8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 001CBC 800010BC 8FB40028 */  lw    $s4, 0x28($sp)
/* 001CC0 800010C0 8FB30024 */  lw    $s3, 0x24($sp)
/* 001CC4 800010C4 8FB20020 */  lw    $s2, 0x20($sp)
/* 001CC8 800010C8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001CCC 800010CC 8FB00018 */  lw    $s0, 0x18($sp)
/* 001CD0 800010D0 03E00008 */  jr    $ra
/* 001CD4 800010D4 27BD0038 */   addiu $sp, $sp, 0x38
