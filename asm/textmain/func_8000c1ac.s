# Params:
# $a0 -
# $a1 -
# $a2 -
# $a3 - file ID?

glabel func_8000C1AC
/* 00CDAC 8000C1AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00CDB0 8000C1B0 AFB10014 */  sw    $s1, 0x14($sp)
/* 00CDB4 8000C1B4 00808821 */  addu  $s1, $a0, $zero # store $a0 in $s1
/* 00CDB8 8000C1B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 00CDBC 8000C1BC 00A08021 */  addu  $s0, $a1, $zero # store $a1 in $s0
/* 00CDC0 8000C1C0 02002021 */  addu  $a0, $s0, $zero # write location
/* 00CDC4 8000C1C4 00072C00 */  sll   $a1, $a3, 0x10
/* 00CDC8 8000C1C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00CDCC 8000C1CC AFB40020 */  sw    $s4, 0x20($sp)
/* 00CDD0 8000C1D0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 00CDD4 8000C1D4 AFB20018 */  sw    $s2, 0x18($sp)
/* 00CDD8 8000C1D8 AE060030 */  sw    $a2, 0x30($s0)
/* 00CDDC 8000C1DC 8FB20038 */  lw    $s2, 0x38($sp)
/* 00CDE0 8000C1E0 8FB3003C */  lw    $s3, 0x3c($sp)
/* 00CDE4 8000C1E4 8FB40040 */  lw    $s4, 0x40($sp)
/* 00CDE8 8000C1E8 0C002FCF */  jal   func_8000BF3C # model loading related
/* 00CDEC 8000C1EC 00052C03 */   sra   $a1, $a1, 0x10

/* 00CDF0 8000C1F0 92020006 */  lbu   $v0, 6($s0)
/* 00CDF4 8000C1F4 A222001A */  sb    $v0, 0x1a($s1)
/* 00CDF8 8000C1F8 8E020014 */  lw    $v0, 0x14($s0)
/* 00CDFC 8000C1FC AE22000C */  sw    $v0, 0xc($s1)
/* 00CE00 8000C200 82050002 */  lb    $a1, 2($s0)
/* 00CE04 8000C204 0C000635 */  jal   func_800018D4
/* 00CE08 8000C208 02202021 */   addu  $a0, $s1, $zero

/* 00CE0C 8000C20C 8E230014 */  lw    $v1, 0x14($s1)
/* 00CE10 8000C210 24020001 */  li    $v0, 1
/* 00CE14 8000C214 AC620000 */  sw    $v0, ($v1)
/* 00CE18 8000C218 8E020014 */  lw    $v0, 0x14($s0)
/* 00CE1C 8000C21C AC620030 */  sw    $v0, 0x30($v1)
/* 00CE20 8000C220 92020002 */  lbu   $v0, 2($s0)
/* 00CE24 8000C224 00021600 */  sll   $v0, $v0, 0x18
/* 00CE28 8000C228 00021603 */  sra   $v0, $v0, 0x18
/* 00CE2C 8000C22C A462002C */  sh    $v0, 0x2c($v1)
/* 00CE30 8000C230 92020003 */  lbu   $v0, 3($s0)
/* 00CE34 8000C234 00021600 */  sll   $v0, $v0, 0x18
/* 00CE38 8000C238 00021603 */  sra   $v0, $v0, 0x18
/* 00CE3C 8000C23C A462002E */  sh    $v0, 0x2e($v1)
/* 00CE40 8000C240 8E020018 */  lw    $v0, 0x18($s0)
/* 00CE44 8000C244 10400003 */  beqz  $v0, .L8000C254
/* 00CE48 8000C248 00000000 */   nop   

/* 00CE4C 8000C24C 08003098 */  j     .L8000C260
/* 00CE50 8000C250 AC620034 */   sw    $v0, 0x34($v1)

.L8000C254:
/* 00CE54 8000C254 8E04001C */  lw    $a0, 0x1c($s0)
/* 00CE58 8000C258 54800001 */  bnezl $a0, .L8000C260
/* 00CE5C 8000C25C AC640034 */   sw    $a0, 0x34($v1)

.L8000C260:
/* 00CE60 8000C260 0C00061B */  jal   func_8000186C
/* 00CE64 8000C264 02202021 */   addu  $a0, $s1, $zero

/* 00CE68 8000C268 AE320000 */  sw    $s2, ($s1)
/* 00CE6C 8000C26C AE330004 */  sw    $s3, 4($s1)
/* 00CE70 8000C270 AE340008 */  sw    $s4, 8($s1)
/* 00CE74 8000C274 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00CE78 8000C278 8FB40020 */  lw    $s4, 0x20($sp)
/* 00CE7C 8000C27C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 00CE80 8000C280 8FB20018 */  lw    $s2, 0x18($sp)
/* 00CE84 8000C284 8FB10014 */  lw    $s1, 0x14($sp)
/* 00CE88 8000C288 8FB00010 */  lw    $s0, 0x10($sp)
/* 00CE8C 8000C28C 03E00008 */  jr    $ra
/* 00CE90 8000C290 27BD0028 */   addiu $sp, $sp, 0x28
