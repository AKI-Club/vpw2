# Params:
# $a0 - Wrestler ID2

glabel func_8000AD80
/* 00B980 8000AD80 2482FF8D */  addiu $v0, $a0, -0x73
/* 00B984 8000AD84 2C420010 */  sltiu $v0, $v0, 0x10
/* 00B988 8000AD88 10400009 */  beqz  $v0, .L8000ADB0
/* 00B98C 8000AD8C 00000000 */   nop   

/* 00B990 8000AD90 3C038004 */  lui   $v1, %hi(dynPtr_MempakMovesets) # $v1, 0x8004
/* 00B994 8000AD94 8C63FD98 */  lw    $v1, %lo(dynPtr_MempakMovesets)($v1)
/* 00B998 8000AD98 10600005 */  beqz  $v1, .L8000ADB0
/* 00B99C 8000AD9C 00041040 */   sll   $v0, $a0, 1

/* 00B9A0 8000ADA0 00441021 */  addu  $v0, $v0, $a0
/* 00B9A4 8000ADA4 00021180 */  sll   $v0, $v0, 6
/* 00B9A8 8000ADA8 08002B78 */  j     .L8000ADE0
/* 00B9AC 8000ADAC 2442A9C0 */   addiu $v0, $v0, -0x5640

.L8000ADB0:
/* 00B9B0 8000ADB0 3C038004 */  lui   $v1, %hi(dynPtr_DefaultMovesets) # $v1, 0x8004
/* 00B9B4 8000ADB4 8C63FD90 */  lw    $v1, %lo(dynPtr_DefaultMovesets)($v1)
/* 00B9B8 8000ADB8 10600004 */  beqz  $v1, .L8000ADCC
/* 00B9BC 8000ADBC 2482FFFF */   addiu $v0, $a0, -1

/* 00B9C0 8000ADC0 2C420072 */  sltiu $v0, $v0, 0x72
/* 00B9C4 8000ADC4 14400004 */  bnez  $v0, .L8000ADD8
/* 00B9C8 8000ADC8 00041040 */   sll   $v0, $a0, 1

.L8000ADCC:
/* 00B9CC 8000ADCC 3C028007 */  lui   $v0, %hi(bssMain_8006FD50) # $v0, 0x8007
/* 00B9D0 8000ADD0 08002B79 */  j     .L8000ADE4
/* 00B9D4 8000ADD4 2442FD50 */   addiu $v0, %lo(bssMain_8006FD50) # addiu $v0, $v0, -0x2b0

.L8000ADD8:
/* 00B9D8 8000ADD8 00441021 */  addu  $v0, $v0, $a0
/* 00B9DC 8000ADDC 00021180 */  sll   $v0, $v0, 6

.L8000ADE0:
/* 00B9E0 8000ADE0 00621021 */  addu  $v0, $v1, $v0

.L8000ADE4:
/* 00B9E4 8000ADE4 03E00008 */  jr    $ra
/* 00B9E8 8000ADE8 00000000 */   nop   
