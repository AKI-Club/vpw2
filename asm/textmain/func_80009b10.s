# related to wrestler short name
# (possibly used in battle royals?)

# Params:
# $a0 - Wrestler ID4
# $a1 - Wrestler costume number?

glabel func_80009B10
/* 00A710 80009B10 3C028004 */  lui   $v0, %hi(dynPtr_DefaultAppearance) # $v0, 0x8004
/* 00A714 80009B14 8C42FD8C */  lw    $v0, %lo(dynPtr_DefaultAppearance)($v0)
/* 00A718 80009B18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A71C 80009B1C 1440001C */  bnez  $v0, .L80009B90
/* 00A720 80009B20 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00A724 80009B24 00003021 */  addu  $a2, $zero, $zero
/* 00A728 80009B28 3C07800B */  lui   $a3, %hi(bssMain_800B5CC0) # $a3, 0x800b
/* 00A72C 80009B2C 24E75CC0 */  addiu $a3, %lo(bssMain_800B5CC0) # addiu $a3, $a3, 0x5cc0
/* 00A730 80009B30 00002821 */  addu  $a1, $zero, $zero

.L80009B34:
/* 00A734 80009B34 00E01821 */  addu  $v1, $a3, $zero

.L80009B38:
/* 00A738 80009B38 94620000 */  lhu   $v0, ($v1)
/* 00A73C 80009B3C 5044000A */  beql  $v0, $a0, .L80009B68
/* 00A740 80009B40 00A01821 */   addu  $v1, $a1, $zero

/* 00A744 80009B44 24A50001 */  addiu $a1, $a1, 1
/* 00A748 80009B48 28A20028 */  slti  $v0, $a1, 40
/* 00A74C 80009B4C 1440FFFA */  bnez  $v0, .L80009B38
/* 00A750 80009B50 24630002 */   addiu $v1, $v1, 2

/* 00A754 80009B54 24C60001 */  addiu $a2, $a2, 1
/* 00A758 80009B58 28C20002 */  slti  $v0, $a2, 2
/* 00A75C 80009B5C 1440FFF5 */  bnez  $v0, .L80009B34
/* 00A760 80009B60 00002821 */   addu  $a1, $zero, $zero

/* 00A764 80009B64 00001821 */  addu  $v1, $zero, $zero

.L80009B68:
/* 00A768 80009B68 00031080 */  sll   $v0, $v1, 2
/* 00A76C 80009B6C 00431021 */  addu  $v0, $v0, $v1
/* 00A770 80009B70 00021080 */  sll   $v0, $v0, 2
/* 00A774 80009B74 00431023 */  subu  $v0, $v0, $v1
/* 00A778 80009B78 00021100 */  sll   $v0, $v0, 4
/* 00A77C 80009B7C 00431021 */  addu  $v0, $v0, $v1
/* 00A780 80009B80 3C03800A */  lui   $v1, %hi(bssMain_800981DD) # $v1, 0x800a
/* 00A784 80009B84 246381DD */  addiu $v1, %lo(bssMain_800981DD) # addiu $v1, $v1, -0x7e23
/* 00A788 80009B88 080026E7 */  j     .L80009B9C
/* 00A78C 80009B8C 00431021 */   addu  $v0, $v0, $v1

.L80009B90:
/* 00A790 80009B90 0C002B2D */  jal   func_8000ACB4
/* 00A794 80009B94 00000000 */   nop   

/* 00A798 80009B98 24420019 */  addiu $v0, $v0, 0x19

.L80009B9C:
/* 00A79C 80009B9C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00A7A0 80009BA0 03E00008 */  jr    $ra
/* 00A7A4 80009BA4 27BD0018 */   addiu $sp, $sp, 0x18
