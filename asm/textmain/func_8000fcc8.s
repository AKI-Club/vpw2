glabel func_8000FCC8
/* 0108C8 8000FCC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0108CC 8000FCCC AFB00010 */  sw    $s0, 0x10($sp)
/* 0108D0 8000FCD0 00808021 */  addu  $s0, $a0, $zero
/* 0108D4 8000FCD4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0108D8 8000FCD8 30B100FF */  andi  $s1, $a1, 0xff
/* 0108DC 8000FCDC AFB20018 */  sw    $s2, 0x18($sp)
/* 0108E0 8000FCE0 30D200FF */  andi  $s2, $a2, 0xff
/* 0108E4 8000FCE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0108E8 8000FCE8 AFB40020 */  sw    $s4, 0x20($sp)
/* 0108EC 8000FCEC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0108F0 8000FCF0 8E020010 */  lw    $v0, 0x10($s0)
/* 0108F4 8000FCF4 93B4003B */  lbu   $s4, 0x3b($sp)
/* 0108F8 8000FCF8 14400011 */  bnez  $v0, .L8000FD40
/* 0108FC 8000FCFC 30F300FF */   andi  $s3, $a3, 0xff

/* 010900 8000FD00 0C000226 */  jal   aki_malloc
/* 010904 8000FD04 24040300 */   li    $a0, 768

/* 010908 8000FD08 02002021 */  addu  $a0, $s0, $zero
/* 01090C 8000FD0C 00002821 */  addu  $a1, $zero, $zero
/* 010910 8000FD10 0C000635 */  jal   func_800018D4
/* 010914 8000FD14 AE020010 */   sw    $v0, 0x10($s0)

/* 010918 8000FD18 0C00061B */  jal   func_8000186C
/* 01091C 8000FD1C 02002021 */   addu  $a0, $s0, $zero

/* 010920 8000FD20 8E020014 */  lw    $v0, 0x14($s0)
/* 010924 8000FD24 3C01C76A */  li    $at, 0xC76A0000 # -59904.000000
/* 010928 8000FD28 34216000 */  ori   $at, (0xC76A6000 & 0xFFFF) # ori $at, $at, 0x6000
/* 01092C 8000FD2C 44810000 */  mtc1  $at, $f0
/* 010930 8000FD30 00000000 */  nop   
/* 010934 8000FD34 E4400024 */  swc1  $f0, 0x24($v0)
/* 010938 8000FD38 24020001 */  li    $v0, 1
/* 01093C 8000FD3C A2020019 */  sb    $v0, 0x19($s0)

.L8000FD40:
/* 010940 8000FD40 8E0D0010 */  lw    $t5, 0x10($s0)
/* 010944 8000FD44 3C0CE200 */  lui   $t4, (0xE200001C >> 16) # lui $t4, 0xe200
/* 010948 8000FD48 358C001C */  ori   $t4, (0xE200001C & 0xFFFF) # ori $t4, $t4, 0x1c
/* 01094C 8000FD4C 3C0B0050 */  lui   $t3, (0x00504240 >> 16) # lui $t3, 0x50
/* 010950 8000FD50 356B4240 */  ori   $t3, (0x00504240 & 0xFFFF) # ori $t3, $t3, 0x4240
/* 010954 8000FD54 3C0AFCFF */  lui   $t2, (0xFCFFFFFF >> 16) # lui $t2, 0xfcff
/* 010958 8000FD58 354AFFFF */  ori   $t2, (0xFCFFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* 01095C 8000FD5C 3C09FFFD */  lui   $t1, (0xFFFDF6FB >> 16) # lui $t1, 0xfffd
/* 010960 8000FD60 3529F6FB */  ori   $t1, (0xFFFDF6FB & 0xFFFF) # ori $t1, $t1, 0xf6fb
/* 010964 8000FD64 3C08E300 */  lui   $t0, (0xE3000A01 >> 16) # lui $t0, 0xe300
/* 010968 8000FD68 35080A01 */  ori   $t0, (0xE3000A01 & 0xFFFF) # ori $t0, $t0, 0xa01
/* 01096C 8000FD6C 00007821 */  addu  $t7, $zero, $zero
/* 010970 8000FD70 3C10F677 */  lui   $s0, (0xF677C000 >> 16) # lui $s0, 0xf677
/* 010974 8000FD74 3610C000 */  ori   $s0, (0xF677C000 & 0xFFFF) # ori $s0, $s0, 0xc000
/* 010978 8000FD78 3C02E700 */  lui   $v0, 0xe700
/* 01097C 8000FD7C 01A01821 */  addu  $v1, $t5, $zero
/* 010980 8000FD80 25AD0008 */  addiu $t5, $t5, 8
/* 010984 8000FD84 01A02021 */  addu  $a0, $t5, $zero
/* 010988 8000FD88 25AD0008 */  addiu $t5, $t5, 8
/* 01098C 8000FD8C 01A02821 */  addu  $a1, $t5, $zero
/* 010990 8000FD90 25AD0008 */  addiu $t5, $t5, 8
/* 010994 8000FD94 01A03021 */  addu  $a2, $t5, $zero
/* 010998 8000FD98 25AD0008 */  addiu $t5, $t5, 8
/* 01099C 8000FD9C 01A03821 */  addu  $a3, $t5, $zero
/* 0109A0 8000FDA0 25AD0008 */  addiu $t5, $t5, 8
/* 0109A4 8000FDA4 25AEFFFC */  addiu $t6, $t5, -4
/* 0109A8 8000FDA8 AC620000 */  sw    $v0, ($v1)
/* 0109AC 8000FDAC 3C02FA00 */  lui   $v0, 0xfa00
/* 0109B0 8000FDB0 AC600004 */  sw    $zero, 4($v1)
/* 0109B4 8000FDB4 AC820000 */  sw    $v0, ($a0)
/* 0109B8 8000FDB8 00111600 */  sll   $v0, $s1, 0x18
/* 0109BC 8000FDBC 00121C00 */  sll   $v1, $s2, 0x10
/* 0109C0 8000FDC0 00431025 */  or    $v0, $v0, $v1
/* 0109C4 8000FDC4 00131A00 */  sll   $v1, $s3, 8
/* 0109C8 8000FDC8 00431025 */  or    $v0, $v0, $v1
/* 0109CC 8000FDCC 00541025 */  or    $v0, $v0, $s4
/* 0109D0 8000FDD0 AC820004 */  sw    $v0, 4($a0)
/* 0109D4 8000FDD4 ACAC0000 */  sw    $t4, ($a1)
/* 0109D8 8000FDD8 ACAB0004 */  sw    $t3, 4($a1)
/* 0109DC 8000FDDC ACCA0000 */  sw    $t2, ($a2)
/* 0109E0 8000FDE0 ACC90004 */  sw    $t1, 4($a2)
/* 0109E4 8000FDE4 ACE80000 */  sw    $t0, ($a3)
/* 0109E8 8000FDE8 ACE00004 */  sw    $zero, 4($a3)

.L8000FDEC:
/* 0109EC 8000FDEC 25CE0008 */  addiu $t6, $t6, 8
/* 0109F0 8000FDF0 25AD0008 */  addiu $t5, $t5, 8
/* 0109F4 8000FDF4 25E20001 */  addiu $v0, $t7, 1
/* 0109F8 8000FDF8 000F1900 */  sll   $v1, $t7, 4
/* 0109FC 8000FDFC 00407821 */  addu  $t7, $v0, $zero
/* 010A00 8000FE00 000F1100 */  sll   $v0, $t7, 4
/* 010A04 8000FE04 30420FF0 */  andi  $v0, $v0, 0xff0
/* 010A08 8000FE08 00501025 */  or    $v0, $v0, $s0
/* 010A0C 8000FE0C 30630FF0 */  andi  $v1, $v1, 0xff0
/* 010A10 8000FE10 ADC2FFFC */  sw    $v0, -4($t6)
/* 010A14 8000FE14 2DE2003C */  sltiu $v0, $t7, 0x3c
/* 010A18 8000FE18 1440FFF4 */  bnez  $v0, .L8000FDEC
/* 010A1C 8000FE1C ADC30000 */   sw    $v1, ($t6)

/* 010A20 8000FE20 01A01021 */  addu  $v0, $t5, $zero
/* 010A24 8000FE24 3C03E700 */  lui   $v1, 0xe700
/* 010A28 8000FE28 AC430000 */  sw    $v1, ($v0)
/* 010A2C 8000FE2C AC400004 */  sw    $zero, 4($v0)
/* 010A30 8000FE30 24420008 */  addiu $v0, $v0, 8
/* 010A34 8000FE34 3C03DF00 */  lui   $v1, 0xdf00
/* 010A38 8000FE38 AC430000 */  sw    $v1, ($v0)
/* 010A3C 8000FE3C AC400004 */  sw    $zero, 4($v0)
/* 010A40 8000FE40 8FBF0024 */  lw    $ra, 0x24($sp)
/* 010A44 8000FE44 8FB40020 */  lw    $s4, 0x20($sp)
/* 010A48 8000FE48 8FB3001C */  lw    $s3, 0x1c($sp)
/* 010A4C 8000FE4C 8FB20018 */  lw    $s2, 0x18($sp)
/* 010A50 8000FE50 8FB10014 */  lw    $s1, 0x14($sp)
/* 010A54 8000FE54 8FB00010 */  lw    $s0, 0x10($sp)
/* 010A58 8000FE58 03E00008 */  jr    $ra
/* 010A5C 8000FE5C 27BD0028 */   addiu $sp, $sp, 0x28
