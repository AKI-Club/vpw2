# void LoadDataDMA (int romSrc /* a0 */, void *pRamDest /* a1 */, int len /* a2 */)
glabel LoadDataDMA
/* 001260 80000660 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 001264 80000664 AFB00030 */  sw    $s0, 0x30($sp)
/* 001268 80000668 00808021 */  addu  $s0, $a0, $zero
/* 00126C 8000066C AFB10034 */  sw    $s1, 0x34($sp)
/* 001270 80000670 00A08821 */  addu  $s1, $a1, $zero
/* 001274 80000674 AFB20038 */  sw    $s2, 0x38($sp)
/* 001278 80000678 00C09021 */  addu  $s2, $a2, $zero
/* 00127C 8000067C 27A40010 */  addiu $a0, $sp, 0x10
/* 001280 80000680 27A50028 */  addiu $a1, $sp, 0x28
/* 001284 80000684 24060001 */  li    $a2, 1 # count/number of messages
/* 001288 80000688 AFBF0048 */  sw    $ra, 0x48($sp)
/* 00128C 8000068C AFB50044 */  sw    $s5, 0x44($sp)
/* 001290 80000690 AFB40040 */  sw    $s4, 0x40($sp)
/* 001294 80000694 0C00C984 */  jal   osCreateMesgQueue
/* 001298 80000698 AFB3003C */   sw    $s3, 0x3c($sp)

/* 00129C 8000069C 02202021 */  addu  $a0, $s1, $zero # addr
/* 0012A0 800006A0 0C00C094 */  jal   osInvalDCache
/* 0012A4 800006A4 02402821 */   addu  $a1, $s2, $zero # num bytes

/* 0012A8 800006A8 0200A021 */  addu  $s4, $s0, $zero
/* 0012AC 800006AC 1A40001C */  blez  $s2, .L80000720
/* 0012B0 800006B0 02209821 */   addu  $s3, $s1, $zero

/* 0012B4 800006B4 3C118005 */  lui   $s1, %hi(bssMain_8004BD74) # $s1, 0x8005
/* 0012B8 800006B8 2631BD74 */  addiu $s1, %lo(bssMain_8004BD74) # addiu $s1, $s1, -0x428c
/* 0012BC 800006BC 27B50010 */  addiu $s5, $sp, 0x10

.L800006C0:
/* 0012C0 800006C0 2A420101 */  slti  $v0, $s2, 0x101
/* 0012C4 800006C4 14400002 */  bnez  $v0, .L800006D0
/* 0012C8 800006C8 02408021 */   addu  $s0, $s2, $zero

/* 0012CC 800006CC 24100100 */  addiu    $s0, $zero, 256

.L800006D0:
/* 0012D0 800006D0 AE350000 */  sw    $s5, ($s1)
/* 0012D4 800006D4 A220FFFE */  sb    $zero, -2($s1)
/* 0012D8 800006D8 AE340008 */  sw    $s4, 8($s1)
/* 0012DC 800006DC AE330004 */  sw    $s3, 4($s1)
/* 0012E0 800006E0 AE30000C */  sw    $s0, 0xc($s1)

.L800006E4:
# OSPiHandle *pihandle
/* 0012E4 800006E4 3C048005 */  lui   $a0, %hi(bssMain_8004BD68) # $a0, 0x8005
/* 0012E8 800006E8 8C84BD68 */  lw    $a0, %lo(bssMain_8004BD68)($a0)
# OSIoMesg *mb
/* 0012EC 800006EC 3C058005 */  lui   $a1, %hi(bssMain_8004BD70) # $a1, 0x8005
/* 0012F0 800006F0 24A5BD70 */  addiu $a1, %lo(bssMain_8004BD70) # addiu $a1, $a1, -0x4290
/* 0012F4 800006F4 0C00AD34 */  jal   osEPiStartDma
/* 0012F8 800006F8 00003021 */   addu  $a2, $zero, $zero # direction: OS_READ

/* 0012FC 800006FC 1440FFF9 */  bnez  $v0, .L800006E4
/* 001300 80000700 27A40010 */   addiu $a0, $sp, 0x10

/* 001304 80000704 27A5002C */  addiu $a1, $sp, 0x2c
/* 001308 80000708 0C00C9E0 */  jal   osRecvMesg
/* 00130C 8000070C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001310 80000710 0290A021 */  addu  $s4, $s4, $s0
/* 001314 80000714 02509023 */  subu  $s2, $s2, $s0
/* 001318 80000718 1E40FFE9 */  bgtz  $s2, .L800006C0
/* 00131C 8000071C 02709821 */   addu  $s3, $s3, $s0

.L80000720:
/* 001320 80000720 8FBF0048 */  lw    $ra, 0x48($sp)
/* 001324 80000724 8FB50044 */  lw    $s5, 0x44($sp)
/* 001328 80000728 8FB40040 */  lw    $s4, 0x40($sp)
/* 00132C 8000072C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 001330 80000730 8FB20038 */  lw    $s2, 0x38($sp)
/* 001334 80000734 8FB10034 */  lw    $s1, 0x34($sp)
/* 001338 80000738 8FB00030 */  lw    $s0, 0x30($sp)
/* 00133C 8000073C 03E00008 */  jr    $ra
/* 001340 80000740 27BD0050 */   addiu $sp, $sp, 0x50
