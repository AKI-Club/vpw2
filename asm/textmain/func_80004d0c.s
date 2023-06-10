# unpack wrestler params and moves?

# Params:
# $a0 - WrestlerMoves_Unpack $a0 arg
# $a1 - WrestlerMoves_Unpack $a1 arg
# $a2 - func_80006608 $a0 arg
# $a3 - func_80006608 $a1 arg

glabel func_80004D0C
/* 00590C 80004D0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 005910 80004D10 AFB00010 */  sw    $s0, 0x10($sp)
/* 005914 80004D14 00808021 */  addu  $s0, $a0, $zero
/* 005918 80004D18 AFB20018 */  sw    $s2, 0x18($sp)
/* 00591C 80004D1C 00A09021 */  addu  $s2, $a1, $zero
/* 005920 80004D20 00C02021 */  addu  $a0, $a2, $zero
/* 005924 80004D24 AFB10014 */  sw    $s1, 0x14($sp)
/* 005928 80004D28 00E08821 */  addu  $s1, $a3, $zero
/* 00592C 80004D2C AFBF001C */  sw    $ra, 0x1c($sp)
/* 005930 80004D30 0C001982 */  jal   func_80006608
/* 005934 80004D34 02202821 */   addu  $a1, $s1, $zero

/* 005938 80004D38 02002021 */  addu  $a0, $s0, $zero
/* 00593C 80004D3C 02402821 */  addu  $a1, $s2, $zero
/* 005940 80004D40 0C0018CB */  jal   WrestlerMoves_Unpack
/* 005944 80004D44 02203021 */   addu  $a2, $s1, $zero

/* 005948 80004D48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00594C 80004D4C 8FB20018 */  lw    $s2, 0x18($sp)
/* 005950 80004D50 8FB10014 */  lw    $s1, 0x14($sp)
/* 005954 80004D54 8FB00010 */  lw    $s0, 0x10($sp)
/* 005958 80004D58 03E00008 */  jr    $ra
/* 00595C 80004D5C 27BD0020 */   addiu $sp, $sp, 0x20
