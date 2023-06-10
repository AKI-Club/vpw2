# pack wrestler moves and params

# Params:
# $a0 - WrestlerMoves_Pack $a0 arg
# $a1 - WrestlerMoves_Pack $a1 arg
# $a2 - WrestlerParams_Pack $a0 arg
# $a3 - WrestlerParams_Pack $a1 arg

glabel func_80004CD0
/* 0058D0 80004CD0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0058D4 80004CD4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0058D8 80004CD8 00C08021 */  addu  $s0, $a2, $zero
/* 0058DC 80004CDC AFB10014 */  sw    $s1, 0x14($sp)
/* 0058E0 80004CE0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0058E4 80004CE4 0C00155E */  jal   WrestlerMoves_Pack
/* 0058E8 80004CE8 00E08821 */   addu  $s1, $a3, $zero

/* 0058EC 80004CEC 02002021 */  addu  $a0, $s0, $zero
/* 0058F0 80004CF0 0C00164F */  jal   WrestlerParams_Pack
/* 0058F4 80004CF4 02202821 */   addu  $a1, $s1, $zero

/* 0058F8 80004CF8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0058FC 80004CFC 8FB10014 */  lw    $s1, 0x14($sp)
/* 005900 80004D00 8FB00010 */  lw    $s0, 0x10($sp)
/* 005904 80004D04 03E00008 */  jr    $ra
/* 005908 80004D08 27BD0020 */   addiu $sp, $sp, 0x20
