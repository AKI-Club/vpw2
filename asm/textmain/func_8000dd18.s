# Params:
# $a0 -

glabel func_8000DD18
/* 00E918 8000DD18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00E91C 8000DD1C AFB00010 */  sw    $s0, 0x10($sp)
/* 00E920 8000DD20 00808021 */  addu  $s0, $a0, $zero
/* 00E924 8000DD24 00002021 */  addu  $a0, $zero, $zero
/* 00E928 8000DD28 240500C0 */  li    $a1, 192
/* 00E92C 8000DD2C 24020001 */  li    $v0, 1
/* 00E930 8000DD30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00E934 8000DD34 A6020000 */  sh    $v0, ($s0)
/* 00E938 8000DD38 0C004273 */  jal   func_800109CC
/* 00E93C 8000DD3C A6000002 */   sh    $zero, 2($s0)

/* 00E940 8000DD40 00002021 */  addu  $a0, $zero, $zero
/* 00E944 8000DD44 02002821 */  addu  $a1, $s0, $zero
/* 00E948 8000DD48 AE020004 */  sw    $v0, 4($s0)

.L8000DD4C:
/* 00E94C 8000DD4C 8E020004 */  lw    $v0, 4($s0)
/* 00E950 8000DD50 00041A80 */  sll   $v1, $a0, 0xa
/* 00E954 8000DD54 24840001 */  addiu $a0, $a0, 1
/* 00E958 8000DD58 00431021 */  addu  $v0, $v0, $v1
/* 00E95C 8000DD5C ACA20008 */  sw    $v0, 8($a1)
/* 00E960 8000DD60 2C820003 */  sltiu $v0, $a0, 3
/* 00E964 8000DD64 1440FFF9 */  bnez  $v0, .L8000DD4C
/* 00E968 8000DD68 24A50004 */   addiu $a1, $a1, 4

/* 00E96C 8000DD6C 00002021 */  addu  $a0, $zero, $zero
/* 00E970 8000DD70 0C00428D */  jal   func_80010A34
/* 00E974 8000DD74 2405000C */   li    $a1, 12

/* 00E978 8000DD78 AE020014 */  sw    $v0, 0x14($s0)
/* 00E97C 8000DD7C 00002021 */  addu  $a0, $zero, $zero
/* 00E980 8000DD80 02002821 */  addu  $a1, $s0, $zero

.L8000DD84:
/* 00E984 8000DD84 8E020014 */  lw    $v0, 0x14($s0)
/* 00E988 8000DD88 00041940 */  sll   $v1, $a0, 5
/* 00E98C 8000DD8C 24840001 */  addiu $a0, $a0, 1
/* 00E990 8000DD90 00431021 */  addu  $v0, $v0, $v1
/* 00E994 8000DD94 ACA20018 */  sw    $v0, 0x18($a1)
/* 00E998 8000DD98 2C820003 */  sltiu $v0, $a0, 3
/* 00E99C 8000DD9C 1440FFF9 */  bnez  $v0, .L8000DD84
/* 00E9A0 8000DDA0 24A50004 */   addiu $a1, $a1, 4

/* 00E9A4 8000DDA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00E9A8 8000DDA8 8FB00010 */  lw    $s0, 0x10($sp)
/* 00E9AC 8000DDAC 03E00008 */  jr    $ra
/* 00E9B0 8000DDB0 27BD0018 */   addiu $sp, $sp, 0x18
