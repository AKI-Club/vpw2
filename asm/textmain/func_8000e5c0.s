glabel func_8000E5C0
/* 00F1C0 8000E5C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00F1C4 8000E5C4 A3A40010 */  sb    $a0, 0x10($sp)
/* 00F1C8 8000E5C8 00002021 */  addu  $a0, $zero, $zero
/* 00F1CC 8000E5CC A3A50011 */  sb    $a1, 0x11($sp)
/* 00F1D0 8000E5D0 27A50010 */  addiu $a1, $sp, 0x10
/* 00F1D4 8000E5D4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 00F1D8 8000E5D8 A3A60012 */  sb    $a2, 0x12($sp)
/* 00F1DC 8000E5DC 0C000700 */  jal   func_80001C00
/* 00F1E0 8000E5E0 A3A70013 */   sb    $a3, 0x13($sp)

/* 00F1E4 8000E5E4 24020001 */  li    $v0, 1
/* 00F1E8 8000E5E8 3C018004 */  lui   $at, %hi(var_8003FDB2) # $at, 0x8004
/* 00F1EC 8000E5EC A422FDB2 */  sh    $v0, %lo(var_8003FDB2)($at)
/* 00F1F0 8000E5F0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 00F1F4 8000E5F4 03E00008 */  jr    $ra
/* 00F1F8 8000E5F8 27BD0020 */   addiu $sp, $sp, 0x20
