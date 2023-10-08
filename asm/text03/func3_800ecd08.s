glabel func3_800ECD08
/* 0E73B8 800ECD08 3C038016 */  lui   $v1, %hi(bss3_8015D788) # $v1, 0x8016
/* 0E73BC 800ECD0C 9463D788 */  lhu   $v1, %lo(bss3_8015D788)($v1)
/* 0E73C0 800ECD10 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0E73C4 800ECD14 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0E73C8 800ECD18 AFBE0060 */  sw    $fp, 0x60($sp)
/* 0E73CC 800ECD1C AFB7005C */  sw    $s7, 0x5c($sp)
/* 0E73D0 800ECD20 AFB60058 */  sw    $s6, 0x58($sp)
/* 0E73D4 800ECD24 AFB50054 */  sw    $s5, 0x54($sp)
/* 0E73D8 800ECD28 AFB40050 */  sw    $s4, 0x50($sp)
/* 0E73DC 800ECD2C AFB3004C */  sw    $s3, 0x4c($sp)
/* 0E73E0 800ECD30 AFB20048 */  sw    $s2, 0x48($sp)
/* 0E73E4 800ECD34 AFB10044 */  sw    $s1, 0x44($sp)
/* 0E73E8 800ECD38 AFB00040 */  sw    $s0, 0x40($sp)
/* 0E73EC 800ECD3C F7B60070 */  sdc1  $f22, 0x70($sp)
/* 0E73F0 800ECD40 F7B40068 */  sdc1  $f20, 0x68($sp)
/* 0E73F4 800ECD44 2C620003 */  sltiu $v0, $v1, 3
/* 0E73F8 800ECD48 10400007 */  beqz  $v0, .L3_800ECD68
/* 0E73FC 800ECD4C 24020001 */   li    $v0, 1

/* 0E7400 800ECD50 3C018016 */  lui   $at, %hi(bss3_8015B7D8) # $at, 0x8016
/* 0E7404 800ECD54 A022B7D8 */  sb    $v0, %lo(bss3_8015B7D8)($at)
/* 0E7408 800ECD58 24020003 */  li    $v0, 3
/* 0E740C 800ECD5C 3C018016 */  lui   $at, %hi(bss3_8015B7E4) # $at, 0x8016
/* 0E7410 800ECD60 0803B366 */  j     .L3_800ECD98
/* 0E7414 800ECD64 A022B7E4 */   sb    $v0, %lo(bss3_8015B7E4)($at)

.L3_800ECD68:
/* 0E7418 800ECD68 1060000B */  beqz  $v1, .L3_800ECD98
/* 0E741C 800ECD6C 00008021 */   addu  $s0, $zero, $zero

/* 0E7420 800ECD70 00001821 */  addu  $v1, $zero, $zero

.L3_800ECD74:
/* 0E7424 800ECD74 3C018016 */  lui   $at, %hi(bss3_8015B7D8)
/* 0E7428 800ECD78 00230821 */  addu  $at, $at, $v1
/* 0E742C 800ECD7C A030B7D8 */  sb    $s0, %lo(bss3_8015B7D8)($at)
/* 0E7430 800ECD80 3C028016 */  lui   $v0, %hi(bss3_8015D788) # $v0, 0x8016
/* 0E7434 800ECD84 9442D788 */  lhu   $v0, %lo(bss3_8015D788)($v0)
/* 0E7438 800ECD88 26100001 */  addiu $s0, $s0, 1
/* 0E743C 800ECD8C 0202102B */  sltu  $v0, $s0, $v0
/* 0E7440 800ECD90 1440FFF8 */  bnez  $v0, .L3_800ECD74
/* 0E7444 800ECD94 2463000C */   addiu $v1, $v1, 0xc

.L3_800ECD98:
/* 0E7448 800ECD98 3C028016 */  lui   $v0, %hi(bss3_8015D788) # $v0, 0x8016
/* 0E744C 800ECD9C 9442D788 */  lhu   $v0, %lo(bss3_8015D788)($v0)
/* 0E7450 800ECDA0 1040008F */  beqz  $v0, .L3_800ECFE0
/* 0E7454 800ECDA4 00008021 */   addu  $s0, $zero, $zero

/* 0E7458 800ECDA8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E745C 800ECDAC 4481A000 */  mtc1  $at, $f20
/* 0E7460 800ECDB0 241100FF */  li    $s1, 255
/* 0E7464 800ECDB4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E7468 800ECDB8 4481B000 */  mtc1  $at, $f22
/* 0E746C 800ECDBC 3C1E8016 */  lui   $fp, %hi(bss3_8015C698) # $fp, 0x8016
/* 0E7470 800ECDC0 27DEC698 */  addiu $fp, %lo(bss3_8015C698) # addiu $fp, $fp, -0x3968
/* 0E7474 800ECDC4 3C178016 */  lui   $s7, %hi(bss3_8015C328) # $s7, 0x8016
/* 0E7478 800ECDC8 26F7C328 */  addiu $s7, %lo(bss3_8015C328) # addiu $s7, $s7, -0x3cd8
/* 0E747C 800ECDCC 3C128016 */  lui   $s2, %hi(bss3_8015B7D8) # $s2, 0x8016
/* 0E7480 800ECDD0 2652B7D8 */  addiu $s2, %lo(bss3_8015B7D8) # addiu $s2, $s2, -0x4828
/* 0E7484 800ECDD4 2654000A */  addiu $s4, $s2, 0xa
/* 0E7488 800ECDD8 0000B021 */  addu  $s6, $zero, $zero
/* 0E748C 800ECDDC 26550008 */  addiu $s5, $s2, 8
/* 0E7490 800ECDE0 00009821 */  addu  $s3, $zero, $zero
/* 0E7494 800ECDE4 AFA0003C */  sw    $zero, 0x3c($sp)

.L3_800ECDE8:
/* 0E7498 800ECDE8 3C018016 */  lui   $at, %hi(bss3_8015B7D9)
/* 0E749C 800ECDEC 00330821 */  addu  $at, $at, $s3
/* 0E74A0 800ECDF0 A020B7D9 */  sb    $zero, %lo(bss3_8015B7D9)($at)
/* 0E74A4 800ECDF4 3C018016 */  lui   $at, %hi(bss3_8015B7DA)
/* 0E74A8 800ECDF8 00330821 */  addu  $at, $at, $s3
/* 0E74AC 800ECDFC A020B7DA */  sb    $zero, %lo(bss3_8015B7DA)($at)
/* 0E74B0 800ECE00 3C018016 */  lui   $at, %hi(bss3_8015B7DB)
/* 0E74B4 800ECE04 00330821 */  addu  $at, $at, $s3
/* 0E74B8 800ECE08 A020B7DB */  sb    $zero, %lo(bss3_8015B7DB)($at)
/* 0E74BC 800ECE0C 92420000 */  lbu   $v0, ($s2)
/* 0E74C0 800ECE10 30420003 */  andi  $v0, $v0, 3
/* 0E74C4 800ECE14 00021040 */  sll   $v0, $v0, 1
/* 0E74C8 800ECE18 3C018015 */  lui   $at, %hi(tbl_SpiritMeter_FrameX)
/* 0E74CC 800ECE1C 00220821 */  addu  $at, $at, $v0
/* 0E74D0 800ECE20 94221EB0 */  lhu   $v0, %lo(tbl_SpiritMeter_FrameX)($at)
/* 0E74D4 800ECE24 A6A20000 */  sh    $v0, ($s5)
/* 0E74D8 800ECE28 92420000 */  lbu   $v0, ($s2)
/* 0E74DC 800ECE2C 30420003 */  andi  $v0, $v0, 3
/* 0E74E0 800ECE30 00021040 */  sll   $v0, $v0, 1
/* 0E74E4 800ECE34 3C018015 */  lui   $at, %hi(tbl_SpiritMeter_FrameY)
/* 0E74E8 800ECE38 00220821 */  addu  $at, $at, $v0
/* 0E74EC 800ECE3C 94221EB8 */  lhu   $v0, %lo(tbl_SpiritMeter_FrameY)($at)
/* 0E74F0 800ECE40 3C048016 */  lui   $a0, %hi(bss3_8015B808) # $a0, 0x8016
/* 0E74F4 800ECE44 2484B808 */  addiu $a0, %lo(bss3_8015B808) # addiu $a0, $a0, -0x47f8
/* 0E74F8 800ECE48 A6820000 */  sh    $v0, ($s4)
/* 0E74FC 800ECE4C 96A20000 */  lhu   $v0, ($s5)
/* 0E7500 800ECE50 8FA7003C */  lw    $a3, 0x3c($sp)
/* 0E7504 800ECE54 02C42021 */  addu  $a0, $s6, $a0
/* 0E7508 800ECE58 3C058016 */  lui   $a1, %hi(bss3_8015BC48) # $a1, 0x8016
/* 0E750C 800ECE5C 24A5BC48 */  addiu $a1, %lo(bss3_8015BC48) # addiu $a1, $a1, -0x43b8
/* 0E7510 800ECE60 A7A20010 */  sh    $v0, 0x10($sp)
/* 0E7514 800ECE64 96820000 */  lhu   $v0, ($s4)
/* 0E7518 800ECE68 27A60010 */  addiu $a2, $sp, 0x10
/* 0E751C 800ECE6C 00E52821 */  addu  $a1, $a3, $a1
/* 0E7520 800ECE70 AFA00014 */  sw    $zero, 0x14($sp)
/* 0E7524 800ECE74 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E7528 800ECE78 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 0E752C 800ECE7C E7B40020 */  swc1  $f20, 0x20($sp)
/* 0E7530 800ECE80 A3B10024 */  sb    $s1, 0x24($sp)
/* 0E7534 800ECE84 A3B10025 */  sb    $s1, 0x25($sp)
/* 0E7538 800ECE88 A3B10026 */  sb    $s1, 0x26($sp)
/* 0E753C 800ECE8C A3B10027 */  sb    $s1, 0x27($sp)
/* 0E7540 800ECE90 0C03A551 */  jal   func3_800E9544
/* 0E7544 800ECE94 A7A20012 */   sh    $v0, 0x12($sp)

/* 0E7548 800ECE98 24020014 */  li    $v0, 20
/* 0E754C 800ECE9C 3C018016 */  lui   $at, %hi(bss3_8015BD18)
/* 0E7550 800ECEA0 00300821 */  addu  $at, $at, $s0
/* 0E7554 800ECEA4 A022BD18 */  sb    $v0, %lo(bss3_8015BD18)($at)
/* 0E7558 800ECEA8 3C02800A */  lui   $v0, %hi(bssMain_800A44D8) # $v0, 0x800a
/* 0E755C 800ECEAC 8C4244D8 */  lw    $v0, %lo(bssMain_800A44D8)($v0)
/* 0E7560 800ECEB0 3C030001 */  lui   $v1, 1 # Martial Arts match ruleset
/* 0E7564 800ECEB4 00431024 */  and   $v0, $v0, $v1
/* 0E7568 800ECEB8 14400017 */  bnez  $v0, .L3_800ECF18
/* 0E756C 800ECEBC 02E02021 */   addu  $a0, $s7, $zero

/* 0E7570 800ECEC0 92420000 */  lbu   $v0, ($s2)
/* 0E7574 800ECEC4 30420003 */  andi  $v0, $v0, 3
/* 0E7578 800ECEC8 00021040 */  sll   $v0, $v0, 1
/* 0E757C 800ECECC 3C018015 */  lui   $at, %hi(D_80151E64)
/* 0E7580 800ECED0 00220821 */  addu  $at, $at, $v0
/* 0E7584 800ECED4 94221E64 */  lhu   $v0, %lo(D_80151E64)($at)
/* 0E7588 800ECED8 A7A20010 */  sh    $v0, 0x10($sp)
/* 0E758C 800ECEDC 96820000 */  lhu   $v0, ($s4)
/* 0E7590 800ECEE0 03C02821 */  addu  $a1, $fp, $zero
/* 0E7594 800ECEE4 27A60010 */  addiu $a2, $sp, 0x10
/* 0E7598 800ECEE8 AFA00014 */  sw    $zero, 0x14($sp)
/* 0E759C 800ECEEC AFA00018 */  sw    $zero, 0x18($sp)
/* 0E75A0 800ECEF0 E7B6001C */  swc1  $f22, 0x1c($sp)
/* 0E75A4 800ECEF4 E7B40020 */  swc1  $f20, 0x20($sp)
/* 0E75A8 800ECEF8 A3B10024 */  sb    $s1, 0x24($sp)
/* 0E75AC 800ECEFC A3B10025 */  sb    $s1, 0x25($sp)
/* 0E75B0 800ECF00 A3B10026 */  sb    $s1, 0x26($sp)
/* 0E75B4 800ECF04 A3B10027 */  sb    $s1, 0x27($sp)
/* 0E75B8 800ECF08 0C03A551 */  jal   func3_800E9544
/* 0E75BC 800ECF0C A7A20012 */   sh    $v0, 0x12($sp)

/* 0E75C0 800ECF10 0803B3EA */  j     .L3_800ECFA8
/* 0E75C4 800ECF14 27DE0034 */   addiu $fp, $fp, 0x34

.L3_800ECF18:
/* 0E75C8 800ECF18 92420000 */  lbu   $v0, ($s2)
/* 0E75CC 800ECF1C 03C02821 */  addu  $a1, $fp, $zero
/* 0E75D0 800ECF20 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0E75D4 800ECF24 44810000 */  mtc1  $at, $f0
/* 0E75D8 800ECF28 30420003 */  andi  $v0, $v0, 3
/* 0E75DC 800ECF2C 00021040 */  sll   $v0, $v0, 1
/* 0E75E0 800ECF30 3C038015 */  lui   $v1, %hi(D_80151E6C)
/* 0E75E4 800ECF34 00621821 */  addu  $v1, $v1, $v0
/* 0E75E8 800ECF38 94631E6C */  lhu   $v1, %lo(D_80151E6C)($v1)
/* 0E75EC 800ECF3C 27A60010 */  addiu $a2, $sp, 0x10
/* 0E75F0 800ECF40 24020020 */  li    $v0, 32
/* 0E75F4 800ECF44 A7A20012 */  sh    $v0, 0x12($sp)
/* 0E75F8 800ECF48 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0E75FC 800ECF4C E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E7600 800ECF50 E7B6001C */  swc1  $f22, 0x1c($sp)
/* 0E7604 800ECF54 E7B40020 */  swc1  $f20, 0x20($sp)
/* 0E7608 800ECF58 A3B10024 */  sb    $s1, 0x24($sp)
/* 0E760C 800ECF5C A3B10025 */  sb    $s1, 0x25($sp)
/* 0E7610 800ECF60 A3B10026 */  sb    $s1, 0x26($sp)
/* 0E7614 800ECF64 A3B10027 */  sb    $s1, 0x27($sp)
/* 0E7618 800ECF68 0C03A551 */  jal   func3_800E9544
/* 0E761C 800ECF6C A7A30010 */   sh    $v1, 0x10($sp)

/* 0E7620 800ECF70 2402FFFF */  li    $v0, -1
/* 0E7624 800ECF74 3C018016 */  lui   $at, %hi(bss3_8015C86C)
/* 0E7628 800ECF78 00300821 */  addu  $at, $at, $s0
/* 0E762C 800ECF7C A020C86C */  sb    $zero, %lo(bss3_8015C86C)($at)
/* 0E7630 800ECF80 3C018016 */  lui   $at, %hi(bss3_8015C868)
/* 0E7634 800ECF84 00300821 */  addu  $at, $at, $s0
/* 0E7638 800ECF88 A022C868 */  sb    $v0, %lo(bss3_8015C868)($at)
/* 0E763C 800ECF8C 3C038016 */  lui   $v1, %hi(bss3_8015C33C)
/* 0E7640 800ECF90 00761821 */  addu  $v1, $v1, $s6
/* 0E7644 800ECF94 8C63C33C */  lw    $v1, %lo(bss3_8015C33C)($v1)
/* 0E7648 800ECF98 8C620000 */  lw    $v0, ($v1)
/* 0E764C 800ECF9C 34420080 */  ori   $v0, $v0, 0x80
/* 0E7650 800ECFA0 AC620000 */  sw    $v0, ($v1)
/* 0E7654 800ECFA4 27DE0034 */  addiu $fp, $fp, 0x34

.L3_800ECFA8:
/* 0E7658 800ECFA8 26F700DC */  addiu $s7, $s7, 0xdc
/* 0E765C 800ECFAC 2652000C */  addiu $s2, $s2, 0xc
/* 0E7660 800ECFB0 2694000C */  addiu $s4, $s4, 0xc
/* 0E7664 800ECFB4 8FA7003C */  lw    $a3, 0x3c($sp)
/* 0E7668 800ECFB8 26D600DC */  addiu $s6, $s6, 0xdc
/* 0E766C 800ECFBC 26B5000C */  addiu $s5, $s5, 0xc
/* 0E7670 800ECFC0 3C028016 */  lui   $v0, %hi(bss3_8015D788) # $v0, 0x8016
/* 0E7674 800ECFC4 9442D788 */  lhu   $v0, %lo(bss3_8015D788)($v0)
/* 0E7678 800ECFC8 2673000C */  addiu $s3, $s3, 0xc
/* 0E767C 800ECFCC 26100001 */  addiu $s0, $s0, 1
/* 0E7680 800ECFD0 24E70034 */  addiu $a3, $a3, 0x34
/* 0E7684 800ECFD4 0202102B */  sltu  $v0, $s0, $v0
/* 0E7688 800ECFD8 1440FF83 */  bnez  $v0, .L3_800ECDE8
/* 0E768C 800ECFDC AFA7003C */   sw    $a3, 0x3c($sp)

.L3_800ECFE0:
/* 0E7690 800ECFE0 3C018016 */  lui   $at, %hi(bss3_8015D786) # $at, 0x8016
/* 0E7694 800ECFE4 A420D786 */  sh    $zero, %lo(bss3_8015D786)($at)
/* 0E7698 800ECFE8 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0E769C 800ECFEC 8FBE0060 */  lw    $fp, 0x60($sp)
/* 0E76A0 800ECFF0 8FB7005C */  lw    $s7, 0x5c($sp)
/* 0E76A4 800ECFF4 8FB60058 */  lw    $s6, 0x58($sp)
/* 0E76A8 800ECFF8 8FB50054 */  lw    $s5, 0x54($sp)
/* 0E76AC 800ECFFC 8FB40050 */  lw    $s4, 0x50($sp)
/* 0E76B0 800ED000 8FB3004C */  lw    $s3, 0x4c($sp)
/* 0E76B4 800ED004 8FB20048 */  lw    $s2, 0x48($sp)
/* 0E76B8 800ED008 8FB10044 */  lw    $s1, 0x44($sp)
/* 0E76BC 800ED00C 8FB00040 */  lw    $s0, 0x40($sp)
/* 0E76C0 800ED010 D7B60070 */  ldc1  $f22, 0x70($sp)
/* 0E76C4 800ED014 D7B40068 */  ldc1  $f20, 0x68($sp)
/* 0E76C8 800ED018 03E00008 */  jr    $ra
/* 0E76CC 800ED01C 27BD0078 */   addiu $sp, $sp, 0x78
