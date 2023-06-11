# Params:
# $a0 - Wrestler ID2

glabel func_8000AC4C
/* 00B84C 8000AC4C 2483FF8D */  addiu $v1, $a0, -0x73
/* 00B850 8000AC50 2C620010 */  sltiu $v0, $v1, 0x10
/* 00B854 8000AC54 10400005 */  beqz  $v0, .L8000AC6C
/* 00B858 8000AC58 00000000 */   nop   

/* 00B85C 8000AC5C 3C068004 */  lui   $a2, %hi(dynPtr_MempakAppearance) # $a2, 0x8004
/* 00B860 8000AC60 8CC6FD94 */  lw    $a2, %lo(dynPtr_MempakAppearance)($a2)
/* 00B864 8000AC64 14C0000B */  bnez  $a2, .L8000AC94
/* 00B868 8000AC68 00031880 */   sll   $v1, $v1, 2

.L8000AC6C:
/* 00B86C 8000AC6C 3C068004 */  lui   $a2, %hi(dynPtr_DefaultAppearance) # $a2, 0x8004
/* 00B870 8000AC70 8CC6FD8C */  lw    $a2, %lo(dynPtr_DefaultAppearance)($a2)
/* 00B874 8000AC74 10C00004 */  beqz  $a2, .L8000AC88
/* 00B878 8000AC78 2482FFFF */   addiu $v0, $a0, -1

/* 00B87C 8000AC7C 2C420072 */  sltiu $v0, $v0, 0x72
/* 00B880 8000AC80 14400004 */  bnez  $v0, .L8000AC94
/* 00B884 8000AC84 00041880 */   sll   $v1, $a0, 2

.L8000AC88:
/* 00B888 8000AC88 3C028007 */  lui   $v0, %hi(bssMain_8006FD10) # $v0, 0x8007
/* 00B88C 8000AC8C 08002B2B */  j     .L8000ACAC
/* 00B890 8000AC90 2442FD10 */   addiu $v0, %lo(bssMain_8006FD10) # addiu $v0, $v0, -0x2f0

.L8000AC94:
/* 00B894 8000AC94 30A20003 */  andi  $v0, $a1, 3
/* 00B898 8000AC98 00621821 */  addu  $v1, $v1, $v0
/* 00B89C 8000AC9C 00031140 */  sll   $v0, $v1, 5
/* 00B8A0 8000ACA0 00431023 */  subu  $v0, $v0, $v1
/* 00B8A4 8000ACA4 00021040 */  sll   $v0, $v0, 1
/* 00B8A8 8000ACA8 00C21021 */  addu  $v0, $a2, $v0

.L8000ACAC:
/* 00B8AC 8000ACAC 03E00008 */  jr    $ra
/* 00B8B0 8000ACB0 00000000 */   nop   
