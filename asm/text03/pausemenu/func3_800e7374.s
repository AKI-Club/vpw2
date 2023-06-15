# main pause menu routine? if not, it's very highly related to it.

# Params:
# $a0 - ?
# $a1 - somehow toggles text display

glabel func3_800E7374
/* 0E1A24 800E7374 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0E1A28 800E7378 AFB20068 */  sw    $s2, 0x68($sp)
/* 0E1A2C 800E737C 00809021 */  addu  $s2, $a0, $zero
/* 0E1A30 800E7380 00052C00 */  sll   $a1, $a1, 0x10
/* 0E1A34 800E7384 AFB00060 */  sw    $s0, 0x60($sp)
/* 0E1A38 800E7388 00058403 */  sra   $s0, $a1, 0x10
/* 0E1A3C 800E738C 24020001 */  li    $v0, 1
/* 0E1A40 800E7390 AFBF0070 */  sw    $ra, 0x70($sp)
/* 0E1A44 800E7394 AFB3006C */  sw    $s3, 0x6c($sp)
/* 0E1A48 800E7398 1602025A */  bne   $s0, $v0, .L3_800E7D04 # exit
/* 0E1A4C 800E739C AFB10064 */   sw    $s1, 0x64($sp)

/* 0E1A50 800E73A0 8E4E0000 */  lw    $t6, ($s2)
/* 0E1A54 800E73A4 3C0DE200 */  lui   $t5, (0xE200001C >> 16) # lui $t5, 0xe200
/* 0E1A58 800E73A8 35AD001C */  ori   $t5, (0xE200001C & 0xFFFF) # ori $t5, $t5, 0x1c
/* 0E1A5C 800E73AC 3C0C0F0A */  lui   $t4, (0x0F0A7008 >> 16) # lui $t4, 0xf0a
/* 0E1A60 800E73B0 358C7008 */  ori   $t4, (0x0F0A7008 & 0xFFFF) # ori $t4, $t4, 0x7008
/* 0E1A64 800E73B4 3C0BFCFF */  lui   $t3, (0xFCFFFFFF >> 16) # lui $t3, 0xfcff
/* 0E1A68 800E73B8 356BFFFF */  ori   $t3, (0xFCFFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* 0E1A6C 800E73BC 3C0AFFFC */  lui   $t2, (0xFFFCF279 >> 16) # lui $t2, 0xfffc
/* 0E1A70 800E73C0 354AF279 */  ori   $t2, (0xFFFCF279 & 0xFFFF) # ori $t2, $t2, 0xf279
/* 0E1A74 800E73C4 3C07E300 */  lui   $a3, (0xE3000A01 >> 16) # lui $a3, 0xe300
/* 0E1A78 800E73C8 34E70A01 */  ori   $a3, (0xE3000A01 & 0xFFFF) # ori $a3, $a3, 0xa01
/* 0E1A7C 800E73CC 3C08E300 */  lui   $t0, (0xE3001201 >> 16) # lui $t0, 0xe300
/* 0E1A80 800E73D0 35081201 */  ori   $t0, (0xE3001201 & 0xFFFF) # ori $t0, $t0, 0x1201
/* 0E1A84 800E73D4 3C09E300 */  lui   $t1, (0xE3000C00 >> 16) # lui $t1, 0xe300
/* 0E1A88 800E73D8 35290C00 */  ori   $t1, (0xE3000C00 & 0xFFFF) # ori $t1, $t1, 0xc00
/* 0E1A8C 800E73DC 01C01021 */  addu  $v0, $t6, $zero
/* 0E1A90 800E73E0 25CE0008 */  addiu $t6, $t6, 8
/* 0E1A94 800E73E4 01C01821 */  addu  $v1, $t6, $zero
/* 0E1A98 800E73E8 25CE0008 */  addiu $t6, $t6, 8
/* 0E1A9C 800E73EC 01C02021 */  addu  $a0, $t6, $zero
/* 0E1AA0 800E73F0 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AA4 800E73F4 01C02821 */  addu  $a1, $t6, $zero
/* 0E1AA8 800E73F8 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AAC 800E73FC 01C03021 */  addu  $a2, $t6, $zero
/* 0E1AB0 800E7400 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AB4 800E7404 AC4D0000 */  sw    $t5, ($v0)
/* 0E1AB8 800E7408 AC4C0004 */  sw    $t4, 4($v0)
/* 0E1ABC 800E740C AC6B0000 */  sw    $t3, ($v1)
/* 0E1AC0 800E7410 AC6A0004 */  sw    $t2, 4($v1)
/* 0E1AC4 800E7414 AC870000 */  sw    $a3, ($a0)
/* 0E1AC8 800E7418 AC800004 */  sw    $zero, 4($a0)
/* 0E1ACC 800E741C ACA80000 */  sw    $t0, ($a1)
/* 0E1AD0 800E7420 ACA00004 */  sw    $zero, 4($a1)
/* 0E1AD4 800E7424 ACC90000 */  sw    $t1, ($a2)
/* 0E1AD8 800E7428 ACC00004 */  sw    $zero, 4($a2)
/* 0E1ADC 800E742C AE4E0000 */  sw    $t6, ($s2)

# check for pause sub-menu (e.g. quit/rematch/skip questions)
/* 0E1AE0 800E7430 3C028016 */  lui   $v0, %hi(bss3_80158838) # $v0, 0x8016
/* 0E1AE4 800E7434 84428838 */  lh    $v0, %lo(bss3_80158838)($v0)
/* 0E1AE8 800E7438 14400116 */  bnez  $v0, .L3_800E7894 # branch to pause sub-menu handling
/* 0E1AEC 800E743C 02402021 */   addu  $a0, $s2, $zero

#-------------------------#
# main pause menu handling
/* 0E1AF0 800E7440 3C058016 */  lui   $a1, %hi(bss3_80158878) # $a1, 0x8016
/* 0E1AF4 800E7444 8CA58878 */  lw    $a1, %lo(bss3_80158878)($a1)
/* 0E1AF8 800E7448 3C028015 */  lui   $v0, %hi(D_80151608) # $v0, 0x8015
/* 0E1AFC 800E744C 94421608 */  lhu   $v0, %lo(D_80151608)($v0)
/* 0E1B00 800E7450 3C038015 */  lui   $v1, %hi(D_80151654) # $v1, 0x8015
/* 0E1B04 800E7454 94631654 */  lhu   $v1, %lo(D_80151654)($v1)
/* 0E1B08 800E7458 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1B0C 800E745C 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)

/* 0E1B10 800E7460 44821000 */  mtc1  $v0, $f2
/* 0E1B14 800E7464 00000000 */  nop   
/* 0E1B18 800E7468 468010A0 */  cvt.s.w $f2, $f2
/* 0E1B1C 800E746C 44071000 */  mfc1  $a3, $f2
/* 0E1B20 800E7470 44830000 */  mtc1  $v1, $f0
/* 0E1B24 800E7474 00000000 */  nop   
/* 0E1B28 800E7478 46800020 */  cvt.s.w $f0, $f0
/* 0E1B2C 800E747C 0C03A151 */  jal   func3_800E8544
/* 0E1B30 800E7480 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E1B34 800E7484 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1B38 800E7488 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1B3C 800E748C 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E1B40 800E7490 1040000C */  beqz  $v0, .L3_800E74C4
/* 0E1B44 800E7494 24100514 */   li    $s0, 0x514 # file ID: [pause menu] white text palette

# show "skip" as second option
/* 0E1B48 800E7498 0C04A198 */  jal   func3_80128660
/* 0E1B4C 800E749C 24110522 */   li    $s1, 0x522 # file ID: [pause menu] skip

/* 0E1B50 800E74A0 304200FF */  andi  $v0, $v0, 0xff
/* 0E1B54 800E74A4 10400003 */  beqz  $v0, .L3_800E74B4 # skip grayed out part
/* 0E1B58 800E74A8 00000000 */   nop   

/* 0E1B5C 800E74AC 08039D32 */  j     .L3_800E74C8
/* 0E1B60 800E74B0 24100515 */   li    $s0, 0x515 # file ID: [pause menu] gray text palette

.L3_800E74B4:
/* 0E1B64 800E74B4 3C018016 */  lui   $at, %hi(bss3_8015883D) # $at, 0x8016
/* 0E1B68 800E74B8 A020883D */  sb    $zero, %lo(bss3_8015883D)($at)
/* 0E1B6C 800E74BC 08039D33 */  j     .L3_800E74CC
/* 0E1B70 800E74C0 02201821 */   addu  $v1, $s1, $zero

# show "rematch" instead
.L3_800E74C4:
/* 0E1B74 800E74C4 24110523 */  li    $s1, 0x523 # file ID: [pause menu] rematch

.L3_800E74C8:
/* 0E1B78 800E74C8 02201821 */  addu  $v1, $s1, $zero

.L3_800E74CC:
/* 0E1B7C 800E74CC 00031040 */  sll   $v0, $v1, 1
/* 0E1B80 800E74D0 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1B84 800E74D4 00822021 */  addu  $a0, $a0, $v0
/* 0E1B88 800E74D8 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1B8C 800E74DC 3C078015 */  lui   $a3, %hi(D3_80150BC8)
/* 0E1B90 800E74E0 00E23821 */  addu  $a3, $a3, $v0
/* 0E1B94 800E74E4 94E70BC8 */  lhu   $a3, %lo(D3_80150BC8)($a3)
/* 0E1B98 800E74E8 3C138015 */  lui   $s3, %hi(ptrTbl_801573F8) # $s3, 0x8015
/* 0E1B9C 800E74EC 267373F8 */  addiu $s3, %lo(ptrTbl_801573F8) # addiu $s3, $s3, 0x73f8
/* 0E1BA0 800E74F0 00031880 */  sll   $v1, $v1, 2
/* 0E1BA4 800E74F4 00731821 */  addu  $v1, $v1, $s3
/* 0E1BA8 800E74F8 00101080 */  sll   $v0, $s0, 2
/* 0E1BAC 800E74FC 00531021 */  addu  $v0, $v0, $s3
/* 0E1BB0 800E7500 44840000 */  mtc1  $a0, $f0
/* 0E1BB4 800E7504 00000000 */  nop   
/* 0E1BB8 800E7508 46800020 */  cvt.s.w $f0, $f0
/* 0E1BBC 800E750C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1BC0 800E7510 8C650000 */  lw    $a1, ($v1)
/* 0E1BC4 800E7514 8C460000 */  lw    $a2, ($v0)
/* 0E1BC8 800E7518 44871000 */  mtc1  $a3, $f2
/* 0E1BCC 800E751C 00000000 */  nop   
/* 0E1BD0 800E7520 468010A0 */  cvt.s.w $f2, $f2
/* 0E1BD4 800E7524 44071000 */  mfc1  $a3, $f2
/* 0E1BD8 800E7528 00000000 */  nop   
/* 0E1BDC 800E752C 0C03A151 */  jal   func3_800E8544
/* 0E1BE0 800E7530 02402021 */   addu  $a0, $s2, $zero

/* 0E1BE4 800E7534 3C038015 */  lui   $v1, %hi(D_80151656) # $v1, 0x8015
/* 0E1BE8 800E7538 94631656 */  lhu   $v1, %lo(D_80151656)($v1)
/* 0E1BEC 800E753C 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1BF0 800E7540 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1BF4 800E7544 3C058016 */  lui   $a1, %hi(bss3_8015887C) # $a1, 0x8016
/* 0E1BF8 800E7548 8CA5887C */  lw    $a1, %lo(bss3_8015887C)($a1)
/* 0E1BFC 800E754C 44830000 */  mtc1  $v1, $f0
/* 0E1C00 800E7550 00000000 */  nop   
/* 0E1C04 800E7554 46800020 */  cvt.s.w $f0, $f0
/* 0E1C08 800E7558 30422000 */  andi  $v0, $v0, 0x2000
/* 0E1C0C 800E755C 0002102B */  sltu  $v0, $zero, $v0
/* 0E1C10 800E7560 00021023 */  negu  $v0, $v0
/* 0E1C14 800E7564 30420515 */  andi  $v0, $v0, 0x515 # file ID: [pause menu] gray text palette
/* 0E1C18 800E7568 34420514 */  ori   $v0, $v0, 0x514 # file ID: [pause menu] white text palette
/* 0E1C1C 800E756C 3C038015 */  lui   $v1, %hi(D_8015160A) # $v1, 0x8015
/* 0E1C20 800E7570 9463160A */  lhu   $v1, %lo(D_8015160A)($v1)
/* 0E1C24 800E7574 00021080 */  sll   $v0, $v0, 2
/* 0E1C28 800E7578 00531021 */  addu  $v0, $v0, $s3
/* 0E1C2C 800E757C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1C30 800E7580 8C460000 */  lw    $a2, ($v0)
/* 0E1C34 800E7584 44831000 */  mtc1  $v1, $f2
/* 0E1C38 800E7588 00000000 */  nop   
/* 0E1C3C 800E758C 468010A0 */  cvt.s.w $f2, $f2
/* 0E1C40 800E7590 44071000 */  mfc1  $a3, $f2
/* 0E1C44 800E7594 00000000 */  nop   
/* 0E1C48 800E7598 0C03A151 */  jal   func3_800E8544
/* 0E1C4C 800E759C 02402021 */   addu  $a0, $s2, $zero

# spirit meter display
/* 0E1C50 800E75A0 3C02800A */  lui   $v0, %hi(bssMain_800A4052) # lui $v0, 0x800a
/* 0E1C54 800E75A4 90424052 */  lbu   $v0, %lo(bssMain_800A4052)($v0)
/* 0E1C58 800E75A8 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1C5C 800E75AC 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1C60 800E75B0 2C420001 */  sltiu $v0, $v0, 1
/* 0E1C64 800E75B4 00021023 */  negu  $v0, $v0
/* 0E1C68 800E75B8 30420527 */  andi  $v0, $v0, 0x527 # file ID: [pause menu] spirit meter on
/* 0E1C6C 800E75BC 34420526 */  ori   $v0, $v0, 0x526 # file ID: [pause menu] spirit meter off
/* 0E1C70 800E75C0 00021840 */  sll   $v1, $v0, 1
/* 0E1C74 800E75C4 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1C78 800E75C8 00832021 */  addu  $a0, $a0, $v1
/* 0E1C7C 800E75CC 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1C80 800E75D0 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1C84 800E75D4 00230821 */  addu  $at, $at, $v1
/* 0E1C88 800E75D8 94230BC8 */  lhu   $v1, %lo(D3_80150BC8)($at)
/* 0E1C8C 800E75DC 00021080 */  sll   $v0, $v0, 2
/* 0E1C90 800E75E0 00531021 */  addu  $v0, $v0, $s3
/* 0E1C94 800E75E4 44840000 */  mtc1  $a0, $f0
/* 0E1C98 800E75E8 00000000 */  nop   
/* 0E1C9C 800E75EC 46800020 */  cvt.s.w $f0, $f0
/* 0E1CA0 800E75F0 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1CA4 800E75F4 8C450000 */  lw    $a1, ($v0)
/* 0E1CA8 800E75F8 44831000 */  mtc1  $v1, $f2
/* 0E1CAC 800E75FC 00000000 */  nop   
/* 0E1CB0 800E7600 468010A0 */  cvt.s.w $f2, $f2
/* 0E1CB4 800E7604 44071000 */  mfc1  $a3, $f2
/* 0E1CB8 800E7608 00000000 */  nop   
/* 0E1CBC 800E760C 0C03A151 */  jal   func3_800E8544
/* 0E1CC0 800E7610 02402021 */   addu  $a0, $s2, $zero

/* 0E1CC4 800E7614 3C020002 */  lui   $v0, (0x00020100 >> 16) # lui $v0, 2
/* 0E1CC8 800E7618 34420100 */  ori   $v0, (0x00020100 & 0xFFFF) # ori $v0, $v0, 0x100
/* 0E1CCC 800E761C 3C03800A */  lui   $v1, %hi(bssMain_800980A0) # $v1, 0x800a
/* 0E1CD0 800E7620 8C6380A0 */  lw    $v1, %lo(bssMain_800980A0)($v1)
/* 0E1CD4 800E7624 3C108015 */  lui   $s0, %hi(D3_80150BC8) # $s0, 0x8015
/* 0E1CD8 800E7628 26100BC8 */  addiu $s0, %lo(D3_80150BC8) # addiu $s0, $s0, 0xbc8
/* 0E1CDC 800E762C 3C118015 */  lui   $s1, %hi(D3_80150C14) # $s1, 0x8015
/* 0E1CE0 800E7630 26310C14 */  addiu $s1, %lo(D3_80150C14) # addiu $s1, $s1, 0xc14
/* 0E1CE4 800E7634 00621824 */  and   $v1, $v1, $v0
/* 0E1CE8 800E7638 24020100 */  li    $v0, 256
/* 0E1CEC 800E763C 5462001C */  bnel  $v1, $v0, .L3_800E76B0
/* 0E1CF0 800E7640 02402021 */   addu  $a0, $s2, $zero

# referee display
/* 0E1CF4 800E7644 3C038017 */  lui   $v1, %hi(bss3_8016C016) # lui $v1, 0x8017
/* 0E1CF8 800E7648 8463C016 */  lh    $v1, %lo(bss3_8016C016)($v1)
/* 0E1CFC 800E764C 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1D00 800E7650 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1D04 800E7654 0003182B */  sltu  $v1, $zero, $v1
/* 0E1D08 800E7658 00031823 */  negu  $v1, $v1
/* 0E1D0C 800E765C 30630525 */  andi  $v1, $v1, 0x525 # file ID: [pause menu] referee on
/* 0E1D10 800E7660 34630524 */  ori   $v1, $v1, 0x524 # file ID: [pause menu] referee off
/* 0E1D14 800E7664 00031040 */  sll   $v0, $v1, 1
/* 0E1D18 800E7668 00502021 */  addu  $a0, $v0, $s0
/* 0E1D1C 800E766C 00511021 */  addu  $v0, $v0, $s1
/* 0E1D20 800E7670 94420000 */  lhu   $v0, ($v0)
/* 0E1D24 800E7674 94870000 */  lhu   $a3, ($a0)
/* 0E1D28 800E7678 00031880 */  sll   $v1, $v1, 2
/* 0E1D2C 800E767C 00731821 */  addu  $v1, $v1, $s3
/* 0E1D30 800E7680 44820000 */  mtc1  $v0, $f0
/* 0E1D34 800E7684 00000000 */  nop   
/* 0E1D38 800E7688 46800020 */  cvt.s.w $f0, $f0
/* 0E1D3C 800E768C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1D40 800E7690 8C650000 */  lw    $a1, ($v1)
/* 0E1D44 800E7694 44871000 */  mtc1  $a3, $f2
/* 0E1D48 800E7698 00000000 */  nop   
/* 0E1D4C 800E769C 468010A0 */  cvt.s.w $f2, $f2
/* 0E1D50 800E76A0 44071000 */  mfc1  $a3, $f2
/* 0E1D54 800E76A4 00000000 */  nop   
/* 0E1D58 800E76A8 08039DBC */  j     .L3_800E76F0
/* 0E1D5C 800E76AC 02402021 */   addu  $a0, $s2, $zero

.L3_800E76B0:
/* 0E1D60 800E76B0 3C058016 */  lui   $a1, %hi(bss3_80158888) # $a1, 0x8016
/* 0E1D64 800E76B4 8CA58888 */  lw    $a1, %lo(bss3_80158888)($a1)
/* 0E1D68 800E76B8 3C028015 */  lui   $v0, %hi(D_80151610) # $v0, 0x8015
/* 0E1D6C 800E76BC 94421610 */  lhu   $v0, %lo(D_80151610)($v0)
/* 0E1D70 800E76C0 3C038015 */  lui   $v1, %hi(D_8015165C) # $v1, 0x8015
/* 0E1D74 800E76C4 9463165C */  lhu   $v1, %lo(D_8015165C)($v1)
/* 0E1D78 800E76C8 3C068016 */  lui   $a2, %hi(bss3_8015884C) # $a2, 0x8016
/* 0E1D7C 800E76CC 8CC6884C */  lw    $a2, %lo(bss3_8015884C)($a2)
/* 0E1D80 800E76D0 44821000 */  mtc1  $v0, $f2
/* 0E1D84 800E76D4 00000000 */  nop   
/* 0E1D88 800E76D8 468010A0 */  cvt.s.w $f2, $f2
/* 0E1D8C 800E76DC 44071000 */  mfc1  $a3, $f2
/* 0E1D90 800E76E0 44830000 */  mtc1  $v1, $f0
/* 0E1D94 800E76E4 00000000 */  nop   
/* 0E1D98 800E76E8 46800020 */  cvt.s.w $f0, $f0
/* 0E1D9C 800E76EC E7A00010 */  swc1  $f0, 0x10($sp)

.L3_800E76F0:
/* 0E1DA0 800E76F0 0C03A151 */  jal   func3_800E8544
/* 0E1DA4 800E76F4 00000000 */   nop   

/* 0E1DA8 800E76F8 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1DAC 800E76FC 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1DB0 800E7700 30420200 */  andi  $v0, $v0, 0x200
/* 0E1DB4 800E7704 5440001F */  bnezl $v0, .L3_800E7784
/* 0E1DB8 800E7708 02402021 */   addu  $a0, $s2, $zero

# replay option
/* 0E1DBC 800E770C 3C02800A */  lui   $v0, %hi(bssMain_800A4054) # lui $v0, 0x800a
/* 0E1DC0 800E7710 90424054 */  lbu   $v0, %lo(bssMain_800A4054)($v0)
/* 0E1DC4 800E7714 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1DC8 800E7718 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1DCC 800E771C 2C420001 */  sltiu $v0, $v0, 1
/* 0E1DD0 800E7720 00021023 */  negu  $v0, $v0
/* 0E1DD4 800E7724 30420529 */  andi  $v0, $v0, 0x529 # file ID: [pause menu] replay on
/* 0E1DD8 800E7728 34420528 */  ori   $v0, $v0, 0x528 # file ID: [pause menu] replay off
/* 0E1DDC 800E772C 00021840 */  sll   $v1, $v0, 1
/* 0E1DE0 800E7730 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1DE4 800E7734 00832021 */  addu  $a0, $a0, $v1
/* 0E1DE8 800E7738 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1DEC 800E773C 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1DF0 800E7740 00230821 */  addu  $at, $at, $v1
/* 0E1DF4 800E7744 94230BC8 */  lhu   $v1, %lo(D3_80150BC8)($at)
/* 0E1DF8 800E7748 00021080 */  sll   $v0, $v0, 2
/* 0E1DFC 800E774C 44840000 */  mtc1  $a0, $f0
/* 0E1E00 800E7750 00000000 */  nop   
/* 0E1E04 800E7754 46800020 */  cvt.s.w $f0, $f0
/* 0E1E08 800E7758 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1E0C 800E775C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E1E10 800E7760 00A22821 */  addu  $a1, $a1, $v0
/* 0E1E14 800E7764 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E1E18 800E7768 44831000 */  mtc1  $v1, $f2
/* 0E1E1C 800E776C 00000000 */  nop   
/* 0E1E20 800E7770 468010A0 */  cvt.s.w $f2, $f2
/* 0E1E24 800E7774 44071000 */  mfc1  $a3, $f2
/* 0E1E28 800E7778 00000000 */  nop   
/* 0E1E2C 800E777C 08039DF1 */  j     .L3_800E77C4
/* 0E1E30 800E7780 02402021 */   addu  $a0, $s2, $zero

.L3_800E7784:
/* 0E1E34 800E7784 3C058016 */  lui   $a1, %hi(bss3_80158898) # $a1, 0x8016
/* 0E1E38 800E7788 8CA58898 */  lw    $a1, %lo(bss3_80158898)($a1)
/* 0E1E3C 800E778C 3C028015 */  lui   $v0, %hi(D_80151618) # $v0, 0x8015
/* 0E1E40 800E7790 94421618 */  lhu   $v0, %lo(D_80151618)($v0)
/* 0E1E44 800E7794 3C038015 */  lui   $v1, %hi(D_80151664) # $v1, 0x8015
/* 0E1E48 800E7798 94631664 */  lhu   $v1, %lo(D_80151664)($v1)
/* 0E1E4C 800E779C 3C068016 */  lui   $a2, %hi(bss3_8015884C) # $a2, 0x8016
/* 0E1E50 800E77A0 8CC6884C */  lw    $a2, %lo(bss3_8015884C)($a2)
/* 0E1E54 800E77A4 44821000 */  mtc1  $v0, $f2
/* 0E1E58 800E77A8 00000000 */  nop   
/* 0E1E5C 800E77AC 468010A0 */  cvt.s.w $f2, $f2
/* 0E1E60 800E77B0 44071000 */  mfc1  $a3, $f2
/* 0E1E64 800E77B4 44830000 */  mtc1  $v1, $f0
/* 0E1E68 800E77B8 00000000 */  nop   
/* 0E1E6C 800E77BC 46800020 */  cvt.s.w $f0, $f0
/* 0E1E70 800E77C0 E7A00010 */  swc1  $f0, 0x10($sp)

.L3_800E77C4:
/* 0E1E74 800E77C4 0C03A151 */  jal   func3_800E8544
/* 0E1E78 800E77C8 00000000 */   nop   

/* 0E1E7C 800E77CC 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1E80 800E77D0 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1E84 800E77D4 00021040 */  sll   $v0, $v0, 1
/* 0E1E88 800E77D8 3C038015 */  lui   $v1, %hi(D_80151688)
/* 0E1E8C 800E77DC 00621821 */  addu  $v1, $v1, $v0
/* 0E1E90 800E77E0 84631688 */  lh    $v1, %lo(D_80151688)($v1)
/* 0E1E94 800E77E4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1E98 800E77E8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1E9C 800E77EC 00031040 */  sll   $v0, $v1, 1
/* 0E1EA0 800E77F0 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1EA4 800E77F4 00822021 */  addu  $a0, $a0, $v0
/* 0E1EA8 800E77F8 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1EAC 800E77FC 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1EB0 800E7800 00220821 */  addu  $at, $at, $v0
/* 0E1EB4 800E7804 94220BC8 */  lhu   $v0, %lo(D3_80150BC8)($at)
/* 0E1EB8 800E7808 00031880 */  sll   $v1, $v1, 2
/* 0E1EBC 800E780C 44840000 */  mtc1  $a0, $f0
/* 0E1EC0 800E7810 00000000 */  nop   
/* 0E1EC4 800E7814 46800020 */  cvt.s.w $f0, $f0
/* 0E1EC8 800E7818 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1ECC 800E781C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E1ED0 800E7820 00A32821 */  addu  $a1, $a1, $v1
/* 0E1ED4 800E7824 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E1ED8 800E7828 44821000 */  mtc1  $v0, $f2
/* 0E1EDC 800E782C 00000000 */  nop   
/* 0E1EE0 800E7830 468010A0 */  cvt.s.w $f2, $f2
/* 0E1EE4 800E7834 44071000 */  mfc1  $a3, $f2
/* 0E1EE8 800E7838 00000000 */  nop   
/* 0E1EEC 800E783C 0C03A151 */  jal   func3_800E8544
/* 0E1EF0 800E7840 02402021 */   addu  $a0, $s2, $zero

/* 0E1EF4 800E7844 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1EF8 800E7848 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1EFC 800E784C 00021040 */  sll   $v0, $v0, 1
/* 0E1F00 800E7850 3C038015 */  lui   $v1, %hi(D_80151694)
/* 0E1F04 800E7854 00621821 */  addu  $v1, $v1, $v0
/* 0E1F08 800E7858 84631694 */  lh    $v1, %lo(D_80151694)($v1)
/* 0E1F0C 800E785C 02402021 */  addu  $a0, $s2, $zero
/* 0E1F10 800E7860 3C058016 */  lui   $a1, %hi(bss3_80158874) # $a1, 0x8016
/* 0E1F14 800E7864 8CA58874 */  lw    $a1, %lo(bss3_80158874)($a1)
/* 0E1F18 800E7868 00031840 */  sll   $v1, $v1, 1
/* 0E1F1C 800E786C 3C028015 */  lui   $v0, %hi(D3_80150BC8)
/* 0E1F20 800E7870 00431021 */  addu  $v0, $v0, $v1
/* 0E1F24 800E7874 94420BC8 */  lhu   $v0, %lo(D3_80150BC8)($v0)
/* 0E1F28 800E7878 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1F2C 800E787C 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1F30 800E7880 3C018015 */  lui   $at, %hi(D3_80150C14)
/* 0E1F34 800E7884 00230821 */  addu  $at, $at, $v1
/* 0E1F38 800E7888 94230C14 */  lhu   $v1, %lo(D3_80150C14)($at)
/* 0E1F3C 800E788C 08039E93 */  j     .L3_800E7A4C
/* 0E1F40 800E7890 2442FFF0 */   addiu $v0, $v0, -0x10

#-------------------------#
# pause sub-menu handling
.L3_800E7894:
/* 0E1F44 800E7894 3C058016 */  lui   $a1, %hi(bss3_801588BC) # $a1, 0x8016
/* 0E1F48 800E7898 8CA588BC */  lw    $a1, %lo(bss3_801588BC)($a1)
/* 0E1F4C 800E789C 3C028015 */  lui   $v0, %hi(D_8015162A) # $v0, 0x8015
/* 0E1F50 800E78A0 9442162A */  lhu   $v0, %lo(D_8015162A)($v0)
/* 0E1F54 800E78A4 3C038015 */  lui   $v1, %hi(D_80151676) # $v1, 0x8015
/* 0E1F58 800E78A8 94631676 */  lhu   $v1, %lo(D_80151676)($v1)
/* 0E1F5C 800E78AC 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1F60 800E78B0 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1F64 800E78B4 44821000 */  mtc1  $v0, $f2
/* 0E1F68 800E78B8 00000000 */  nop   
/* 0E1F6C 800E78BC 468010A0 */  cvt.s.w $f2, $f2
/* 0E1F70 800E78C0 44071000 */  mfc1  $a3, $f2
/* 0E1F74 800E78C4 44830000 */  mtc1  $v1, $f0
/* 0E1F78 800E78C8 00000000 */  nop   
/* 0E1F7C 800E78CC 46800020 */  cvt.s.w $f0, $f0
/* 0E1F80 800E78D0 0C03A151 */  jal   func3_800E8544
/* 0E1F84 800E78D4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E1F88 800E78D8 02402021 */  addu  $a0, $s2, $zero
/* 0E1F8C 800E78DC 3C058016 */  lui   $a1, %hi(bss3_801588C0) # $a1, 0x8016
/* 0E1F90 800E78E0 8CA588C0 */  lw    $a1, %lo(bss3_801588C0)($a1)
/* 0E1F94 800E78E4 3C028015 */  lui   $v0, %hi(D_8015162C) # $v0, 0x8015
/* 0E1F98 800E78E8 9442162C */  lhu   $v0, %lo(D_8015162C)($v0)
/* 0E1F9C 800E78EC 3C038015 */  lui   $v1, %hi(D_80151678) # $v1, 0x8015
/* 0E1FA0 800E78F0 94631678 */  lhu   $v1, %lo(D_80151678)($v1)
/* 0E1FA4 800E78F4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1FA8 800E78F8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1FAC 800E78FC 44821000 */  mtc1  $v0, $f2
/* 0E1FB0 800E7900 00000000 */  nop   
/* 0E1FB4 800E7904 468010A0 */  cvt.s.w $f2, $f2
/* 0E1FB8 800E7908 44071000 */  mfc1  $a3, $f2
/* 0E1FBC 800E790C 44830000 */  mtc1  $v1, $f0
/* 0E1FC0 800E7910 00000000 */  nop   
/* 0E1FC4 800E7914 46800020 */  cvt.s.w $f0, $f0
/* 0E1FC8 800E7918 0C03A151 */  jal   func3_800E8544
/* 0E1FCC 800E791C E7A00010 */   swc1  $f0, 0x10($sp)

# check option for quit match question
/* 0E1FD0 800E7920 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1FD4 800E7924 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1FD8 800E7928 54500008 */  bnel  $v0, $s0, .L3_800E794C
/* 0E1FDC 800E792C 24100530 */   li    $s0, 0x530 # file ID: [pause menu] quit match?

/* 0E1FE0 800E7930 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1FE4 800E7934 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1FE8 800E7938 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E1FEC 800E793C 2C420001 */  sltiu $v0, $v0, 1
/* 0E1FF0 800E7940 00021023 */  negu  $v0, $v0
/* 0E1FF4 800E7944 3042052F */  andi  $v0, $v0, 0x52F # file ID: [pause menu] restart match?
/* 0E1FF8 800E7948 3450052E */  ori   $s0, $v0, 0x52E # file ID: [pause menu] skip match?

.L3_800E794C:
/* 0E1FFC 800E794C 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2000 800E7950 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E2004 800E7954 02001821 */  addu  $v1, $s0, $zero
/* 0E2008 800E7958 00031040 */  sll   $v0, $v1, 1
/* 0E200C 800E795C 3C058015 */  lui   $a1, %hi(D3_80150C14)
/* 0E2010 800E7960 00A22821 */  addu  $a1, $a1, $v0
/* 0E2014 800E7964 94A50C14 */  lhu   $a1, %lo(D3_80150C14)($a1)
/* 0E2018 800E7968 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E201C 800E796C 00220821 */  addu  $at, $at, $v0
/* 0E2020 800E7970 94220BC8 */  lhu   $v0, %lo(D3_80150BC8)($at)
/* 0E2024 800E7974 02402021 */  addu  $a0, $s2, $zero
/* 0E2028 800E7978 00031880 */  sll   $v1, $v1, 2
/* 0E202C 800E797C 44850000 */  mtc1  $a1, $f0
/* 0E2030 800E7980 00000000 */  nop   
/* 0E2034 800E7984 46800020 */  cvt.s.w $f0, $f0
/* 0E2038 800E7988 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E203C 800E798C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E2040 800E7990 00A32821 */  addu  $a1, $a1, $v1
/* 0E2044 800E7994 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E2048 800E7998 44821000 */  mtc1  $v0, $f2
/* 0E204C 800E799C 00000000 */  nop   
/* 0E2050 800E79A0 468010A0 */  cvt.s.w $f2, $f2
/* 0E2054 800E79A4 44071000 */  mfc1  $a3, $f2
/* 0E2058 800E79A8 00000000 */  nop   
/* 0E205C 800E79AC 0C03A151 */  jal   func3_800E8544
/* 0E2060 800E79B0 24100532 */   li    $s0, 0x532 # file ID: [pause menu] no

/* 0E2064 800E79B4 3C118015 */  lui   $s1, %hi(D3_80150BC8) # $s1, 0x8015
/* 0E2068 800E79B8 26310BC8 */  addiu $s1, %lo(D3_80150BC8) # addiu $s1, $s1, 0xbc8
/* 0E206C 800E79BC 3C038016 */  lui   $v1, %hi(bss3_80158838) # $v1, 0x8016
/* 0E2070 800E79C0 84638838 */  lh    $v1, %lo(bss3_80158838)($v1)
/* 0E2074 800E79C4 3C138015 */  lui   $s3, %hi(D3_80150C14) # $s3, 0x8015
/* 0E2078 800E79C8 26730C14 */  addiu $s3, %lo(D3_80150C14) # addiu $s3, $s3, 0xc14
/* 0E207C 800E79CC 24020001 */  li    $v0, 1
/* 0E2080 800E79D0 50620001 */  beql  $v1, $v0, .L3_800E79D8
/* 0E2084 800E79D4 24100531 */   li    $s0, 0x531 # file ID: [pause menu] yes

.L3_800E79D8:
/* 0E2088 800E79D8 02402021 */  addu  $a0, $s2, $zero
/* 0E208C 800E79DC 3C058016 */  lui   $a1, %hi(bss3_80158874) # $a1, 0x8016
/* 0E2090 800E79E0 8CA58874 */  lw    $a1, %lo(bss3_80158874)($a1)
/* 0E2094 800E79E4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2098 800E79E8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E209C 800E79EC 00101040 */  sll   $v0, $s0, 1
/* 0E20A0 800E79F0 00511821 */  addu  $v1, $v0, $s1
/* 0E20A4 800E79F4 94630000 */  lhu   $v1, ($v1)
/* 0E20A8 800E79F8 00531021 */  addu  $v0, $v0, $s3
/* 0E20AC 800E79FC 94420000 */  lhu   $v0, ($v0)
/* 0E20B0 800E7A00 2463FFF0 */  addiu $v1, $v1, -0x10
/* 0E20B4 800E7A04 44831000 */  mtc1  $v1, $f2
/* 0E20B8 800E7A08 00000000 */  nop   
/* 0E20BC 800E7A0C 468010A0 */  cvt.s.w $f2, $f2
/* 0E20C0 800E7A10 44071000 */  mfc1  $a3, $f2
/* 0E20C4 800E7A14 44820000 */  mtc1  $v0, $f0
/* 0E20C8 800E7A18 00000000 */  nop   
/* 0E20CC 800E7A1C 46800020 */  cvt.s.w $f0, $f0
/* 0E20D0 800E7A20 0C03A151 */  jal   func3_800E8544
/* 0E20D4 800E7A24 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E20D8 800E7A28 02402021 */  addu  $a0, $s2, $zero
/* 0E20DC 800E7A2C 3C058016 */  lui   $a1, %hi(bss3_801588A8) # $a1, 0x8016
/* 0E20E0 800E7A30 8CA588A8 */  lw    $a1, %lo(bss3_801588A8)($a1)
/* 0E20E4 800E7A34 3C028015 */  lui   $v0, %hi(D_80151620) # $v0, 0x8015
/* 0E20E8 800E7A38 94421620 */  lhu   $v0, %lo(D_80151620)($v0)
/* 0E20EC 800E7A3C 3C038015 */  lui   $v1, %hi(D_8015166C) # $v1, 0x8015
/* 0E20F0 800E7A40 9463166C */  lhu   $v1, %lo(D_8015166C)($v1)
/* 0E20F4 800E7A44 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E20F8 800E7A48 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)

#-------------------------#
# shared ending sequence
.L3_800E7A4C:
/* 0E20FC 800E7A4C 44821000 */  mtc1  $v0, $f2
/* 0E2100 800E7A50 00000000 */  nop   
/* 0E2104 800E7A54 468010A0 */  cvt.s.w $f2, $f2
/* 0E2108 800E7A58 44071000 */  mfc1  $a3, $f2
/* 0E210C 800E7A5C 44830000 */  mtc1  $v1, $f0
/* 0E2110 800E7A60 00000000 */  nop   
/* 0E2114 800E7A64 46800020 */  cvt.s.w $f0, $f0
/* 0E2118 800E7A68 0C03A151 */  jal   func3_800E8544
/* 0E211C 800E7A6C E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2120 800E7A70 02402021 */  addu  $a0, $s2, $zero
/* 0E2124 800E7A74 3C058016 */  lui   $a1, %hi(bss3_801588D0) # $a1, 0x8016
/* 0E2128 800E7A78 8CA588D0 */  lw    $a1, %lo(bss3_801588D0)($a1)
/* 0E212C 800E7A7C 3C028015 */  lui   $v0, %hi(D_80151634) # $v0, 0x8015
/* 0E2130 800E7A80 94421634 */  lhu   $v0, %lo(D_80151634)($v0)
/* 0E2134 800E7A84 3C038015 */  lui   $v1, %hi(D_80151680) # $v1, 0x8015
/* 0E2138 800E7A88 94631680 */  lhu   $v1, %lo(D_80151680)($v1)
/* 0E213C 800E7A8C 3C068016 */  lui   $a2, %hi(bss3_801588CC) # $a2, 0x8016
/* 0E2140 800E7A90 8CC688CC */  lw    $a2, %lo(bss3_801588CC)($a2)
/* 0E2144 800E7A94 44821000 */  mtc1  $v0, $f2
/* 0E2148 800E7A98 00000000 */  nop   
/* 0E214C 800E7A9C 468010A0 */  cvt.s.w $f2, $f2
/* 0E2150 800E7AA0 44071000 */  mfc1  $a3, $f2
/* 0E2154 800E7AA4 44830000 */  mtc1  $v1, $f0
/* 0E2158 800E7AA8 00000000 */  nop   
/* 0E215C 800E7AAC 46800020 */  cvt.s.w $f0, $f0
/* 0E2160 800E7AB0 0C03A151 */  jal   func3_800E8544
/* 0E2164 800E7AB4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2168 800E7AB8 02402021 */  addu  $a0, $s2, $zero
/* 0E216C 800E7ABC 3C058016 */  lui   $a1, %hi(bss3_801588D8) # $a1, 0x8016
/* 0E2170 800E7AC0 8CA588D8 */  lw    $a1, %lo(bss3_801588D8)($a1)
/* 0E2174 800E7AC4 3C028015 */  lui   $v0, %hi(D_80151638) # $v0, 0x8015
/* 0E2178 800E7AC8 94421638 */  lhu   $v0, %lo(D_80151638)($v0)
/* 0E217C 800E7ACC 3C038015 */  lui   $v1, %hi(D_80151684) # $v1, 0x8015
/* 0E2180 800E7AD0 94631684 */  lhu   $v1, %lo(D_80151684)($v1)
/* 0E2184 800E7AD4 3C068016 */  lui   $a2, %hi(bss3_801588D4) # $a2, 0x8016
/* 0E2188 800E7AD8 8CC688D4 */  lw    $a2, %lo(bss3_801588D4)($a2)
/* 0E218C 800E7ADC 44821000 */  mtc1  $v0, $f2
/* 0E2190 800E7AE0 00000000 */  nop   
/* 0E2194 800E7AE4 468010A0 */  cvt.s.w $f2, $f2
/* 0E2198 800E7AE8 44071000 */  mfc1  $a3, $f2
/* 0E219C 800E7AEC 44830000 */  mtc1  $v1, $f0
/* 0E21A0 800E7AF0 00000000 */  nop   
/* 0E21A4 800E7AF4 46800020 */  cvt.s.w $f0, $f0
/* 0E21A8 800E7AF8 0C03A151 */  jal   func3_800E8544
/* 0E21AC 800E7AFC E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E21B0 800E7B00 02402021 */  addu  $a0, $s2, $zero
/* 0E21B4 800E7B04 3C058016 */  lui   $a1, %hi(bss3_801588C8) # $a1, 0x8016
/* 0E21B8 800E7B08 8CA588C8 */  lw    $a1, %lo(bss3_801588C8)($a1)
/* 0E21BC 800E7B0C 3C028015 */  lui   $v0, %hi(D_80151630) # $v0, 0x8015
/* 0E21C0 800E7B10 94421630 */  lhu   $v0, %lo(D_80151630)($v0)
/* 0E21C4 800E7B14 3C038015 */  lui   $v1, %hi(D_8015167C) # $v1, 0x8015
/* 0E21C8 800E7B18 9463167C */  lhu   $v1, %lo(D_8015167C)($v1)
/* 0E21CC 800E7B1C 3C068016 */  lui   $a2, %hi(bss3_801588C4) # $a2, 0x8016
/* 0E21D0 800E7B20 8CC688C4 */  lw    $a2, %lo(bss3_801588C4)($a2)
/* 0E21D4 800E7B24 44821000 */  mtc1  $v0, $f2
/* 0E21D8 800E7B28 00000000 */  nop   
/* 0E21DC 800E7B2C 468010A0 */  cvt.s.w $f2, $f2
/* 0E21E0 800E7B30 44071000 */  mfc1  $a3, $f2
/* 0E21E4 800E7B34 44830000 */  mtc1  $v1, $f0
/* 0E21E8 800E7B38 00000000 */  nop   
/* 0E21EC 800E7B3C 46800020 */  cvt.s.w $f0, $f0
/* 0E21F0 800E7B40 0C03A151 */  jal   func3_800E8544
/* 0E21F4 800E7B44 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E21F8 800E7B48 02402021 */  addu  $a0, $s2, $zero
/* 0E21FC 800E7B4C 3C058016 */  lui   $a1, %hi(bss3_801588A0) # $a1, 0x8016
/* 0E2200 800E7B50 8CA588A0 */  lw    $a1, %lo(bss3_801588A0)($a1)
/* 0E2204 800E7B54 3C028015 */  lui   $v0, %hi(D_8015161C) # $v0, 0x8015
/* 0E2208 800E7B58 9442161C */  lhu   $v0, %lo(D_8015161C)($v0)
/* 0E220C 800E7B5C 3C038015 */  lui   $v1, %hi(D_80151668) # $v1, 0x8015
/* 0E2210 800E7B60 94631668 */  lhu   $v1, %lo(D_80151668)($v1)
/* 0E2214 800E7B64 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2218 800E7B68 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E221C 800E7B6C 44821000 */  mtc1  $v0, $f2
/* 0E2220 800E7B70 00000000 */  nop   
/* 0E2224 800E7B74 468010A0 */  cvt.s.w $f2, $f2
/* 0E2228 800E7B78 44071000 */  mfc1  $a3, $f2
/* 0E222C 800E7B7C 44830000 */  mtc1  $v1, $f0
/* 0E2230 800E7B80 00000000 */  nop   
/* 0E2234 800E7B84 46800020 */  cvt.s.w $f0, $f0
/* 0E2238 800E7B88 0C03A151 */  jal   func3_800E8544
/* 0E223C 800E7B8C E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2240 800E7B90 02402021 */  addu  $a0, $s2, $zero
/* 0E2244 800E7B94 3C058016 */  lui   $a1, %hi(bss3_801588A4) # $a1, 0x8016
/* 0E2248 800E7B98 8CA588A4 */  lw    $a1, %lo(bss3_801588A4)($a1)
/* 0E224C 800E7B9C 3C028015 */  lui   $v0, %hi(D_8015161E) # $v0, 0x8015
/* 0E2250 800E7BA0 9442161E */  lhu   $v0, %lo(D_8015161E)($v0)
/* 0E2254 800E7BA4 3C038015 */  lui   $v1, %hi(D_8015166A) # $v1, 0x8015
/* 0E2258 800E7BA8 9463166A */  lhu   $v1, %lo(D_8015166A)($v1)
/* 0E225C 800E7BAC 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2260 800E7BB0 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E2264 800E7BB4 44821000 */  mtc1  $v0, $f2
/* 0E2268 800E7BB8 00000000 */  nop   
/* 0E226C 800E7BBC 468010A0 */  cvt.s.w $f2, $f2
/* 0E2270 800E7BC0 44071000 */  mfc1  $a3, $f2
/* 0E2274 800E7BC4 44830000 */  mtc1  $v1, $f0
/* 0E2278 800E7BC8 00000000 */  nop   
/* 0E227C 800E7BCC 46800020 */  cvt.s.w $f0, $f0
/* 0E2280 800E7BD0 0C03A151 */  jal   func3_800E8544
/* 0E2284 800E7BD4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2288 800E7BD8 3C038015 */  lui   $v1, %hi(D_80151648) # $v1, 0x8015
/* 0E228C 800E7BDC 94631648 */  lhu   $v1, %lo(D_80151648)($v1)
/* 0E2290 800E7BE0 3C028016 */  lui   $v0, %hi(bss3_80158846) # $v0, 0x8016
/* 0E2294 800E7BE4 94428846 */  lhu   $v0, %lo(bss3_80158846)($v0)
/* 0E2298 800E7BE8 3C058016 */  lui   $a1, %hi(bss3_80158860) # $a1, 0x8016
/* 0E229C 800E7BEC 8CA58860 */  lw    $a1, %lo(bss3_80158860)($a1)
/* 0E22A0 800E7BF0 44830000 */  mtc1  $v1, $f0
/* 0E22A4 800E7BF4 00000000 */  nop   
/* 0E22A8 800E7BF8 46800020 */  cvt.s.w $f0, $f0
/* 0E22AC 800E7BFC 24420516 */  addiu $v0, $v0, 0x516 # file ID: [pause menu] blue text palette
/* 0E22B0 800E7C00 3C038015 */  lui   $v1, %hi(D_801515FC) # $v1, 0x8015
/* 0E22B4 800E7C04 946315FC */  lhu   $v1, %lo(D_801515FC)($v1)
/* 0E22B8 800E7C08 00021400 */  sll   $v0, $v0, 0x10
/* 0E22BC 800E7C0C 00021383 */  sra   $v0, $v0, 0xe
/* 0E22C0 800E7C10 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E22C4 800E7C14 3C068015 */  lui   $a2, %hi(ptrTbl_801573F8)
/* 0E22C8 800E7C18 00C23021 */  addu  $a2, $a2, $v0
/* 0E22CC 800E7C1C 8CC673F8 */  lw    $a2, %lo(ptrTbl_801573F8)($a2)
/* 0E22D0 800E7C20 44831000 */  mtc1  $v1, $f2
/* 0E22D4 800E7C24 00000000 */  nop   
/* 0E22D8 800E7C28 468010A0 */  cvt.s.w $f2, $f2
/* 0E22DC 800E7C2C 44071000 */  mfc1  $a3, $f2
/* 0E22E0 800E7C30 00000000 */  nop   
/* 0E22E4 800E7C34 0C03A151 */  jal   func3_800E8544
/* 0E22E8 800E7C38 02402021 */   addu  $a0, $s2, $zero

/* 0E22EC 800E7C3C 3C038016 */  lui   $v1, %hi(bss3_80158846) # $v1, 0x8016
/* 0E22F0 800E7C40 94638846 */  lhu   $v1, %lo(bss3_80158846)($v1)
/* 0E22F4 800E7C44 2462051B */  addiu $v0, $v1, 0x51B # file ID: [pause menu] controller 1
/* 0E22F8 800E7C48 00021400 */  sll   $v0, $v0, 0x10
/* 0E22FC 800E7C4C 00021403 */  sra   $v0, $v0, 0x10
/* 0E2300 800E7C50 00022040 */  sll   $a0, $v0, 1
/* 0E2304 800E7C54 3C058015 */  lui   $a1, %hi(D3_80150C14)
/* 0E2308 800E7C58 00A42821 */  addu  $a1, $a1, $a0
/* 0E230C 800E7C5C 94A50C14 */  lhu   $a1, %lo(D3_80150C14)($a1)
/* 0E2310 800E7C60 3C078015 */  lui   $a3, %hi(D3_80150BC8)
/* 0E2314 800E7C64 00E43821 */  addu  $a3, $a3, $a0
/* 0E2318 800E7C68 94E70BC8 */  lhu   $a3, %lo(D3_80150BC8)($a3)
/* 0E231C 800E7C6C 3C048015 */  lui   $a0, %hi(ptrTbl_801573F8) # $a0, 0x8015
/* 0E2320 800E7C70 248473F8 */  addiu $a0, %lo(ptrTbl_801573F8) # addiu $a0, $a0, 0x73f8
/* 0E2324 800E7C74 00021080 */  sll   $v0, $v0, 2
/* 0E2328 800E7C78 00441021 */  addu  $v0, $v0, $a0
/* 0E232C 800E7C7C 24630516 */  addiu $v1, $v1, 0x516 # file ID: [pause menu] blue text palette
/* 0E2330 800E7C80 00031C00 */  sll   $v1, $v1, 0x10
/* 0E2334 800E7C84 00031B83 */  sra   $v1, $v1, 0xe
/* 0E2338 800E7C88 00641821 */  addu  $v1, $v1, $a0
/* 0E233C 800E7C8C 44850000 */  mtc1  $a1, $f0
/* 0E2340 800E7C90 00000000 */  nop   
/* 0E2344 800E7C94 46800020 */  cvt.s.w $f0, $f0
/* 0E2348 800E7C98 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E234C 800E7C9C 8C450000 */  lw    $a1, ($v0)
/* 0E2350 800E7CA0 8C660000 */  lw    $a2, ($v1)
/* 0E2354 800E7CA4 44871000 */  mtc1  $a3, $f2
/* 0E2358 800E7CA8 00000000 */  nop   
/* 0E235C 800E7CAC 468010A0 */  cvt.s.w $f2, $f2
/* 0E2360 800E7CB0 44071000 */  mfc1  $a3, $f2
/* 0E2364 800E7CB4 00000000 */  nop   
/* 0E2368 800E7CB8 0C03A151 */  jal   func3_800E8544
/* 0E236C 800E7CBC 02402021 */   addu  $a0, $s2, $zero

/* 0E2370 800E7CC0 8E4E0000 */  lw    $t6, ($s2)
/* 0E2374 800E7CC4 3C02E300 */  lui   $v0, (0xE3000C00 >> 16) # lui $v0, 0xe300
/* 0E2378 800E7CC8 34420C00 */  ori   $v0, (0xE3000C00 & 0xFFFF) # ori $v0, $v0, 0xc00
/* 0E237C 800E7CCC 3C05E300 */  lui   $a1, (0xE3001201 >> 16) # lui $a1, 0xe300
/* 0E2380 800E7CD0 34A51201 */  ori   $a1, (0xE3001201 & 0xFFFF) # ori $a1, $a1, 0x1201
/* 0E2384 800E7CD4 01C01821 */  addu  $v1, $t6, $zero
/* 0E2388 800E7CD8 25CE0008 */  addiu $t6, $t6, 8
/* 0E238C 800E7CDC 01C02021 */  addu  $a0, $t6, $zero
/* 0E2390 800E7CE0 25CE0008 */  addiu $t6, $t6, 8
/* 0E2394 800E7CE4 AC620000 */  sw    $v0, ($v1)
/* 0E2398 800E7CE8 3C020008 */  lui   $v0, 8
/* 0E239C 800E7CEC AC620004 */  sw    $v0, 4($v1)
/* 0E23A0 800E7CF0 24022000 */  li    $v0, 8192
/* 0E23A4 800E7CF4 AC850000 */  sw    $a1, ($a0)
/* 0E23A8 800E7CF8 AC820004 */  sw    $v0, 4($a0)
/* 0E23AC 800E7CFC AE4E0000 */  sw    $t6, ($s2)
/* 0E23B0 800E7D00 24020001 */  li    $v0, 1

.L3_800E7D04:
/* 0E23B4 800E7D04 8FBF0070 */  lw    $ra, 0x70($sp)
/* 0E23B8 800E7D08 8FB3006C */  lw    $s3, 0x6c($sp)
/* 0E23BC 800E7D0C 8FB20068 */  lw    $s2, 0x68($sp)
/* 0E23C0 800E7D10 8FB10064 */  lw    $s1, 0x64($sp)
/* 0E23C4 800E7D14 8FB00060 */  lw    $s0, 0x60($sp)
/* 0E23C8 800E7D18 03E00008 */  jr    $ra
/* 0E23CC 800E7D1C 27BD0078 */   addiu $sp, $sp, 0x78
