glabel func_8000AA6C
/* 00B66C 8000AA6C 3C048004 */  lui   $a0, %hi(dynPtr_DefaultMovesets) # $a0, 0x8004
/* 00B670 8000AA70 8C84FD90 */  lw    $a0, %lo(dynPtr_DefaultMovesets)($a0)
/* 00B674 8000AA74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B678 8000AA78 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00B67C 8000AA7C 0C000280 */  jal   aki_free
/* 00B680 8000AA80 00000000 */   nop   

/* 00B684 8000AA84 3C048004 */  lui   $a0, %hi(dynPtr_DefaultAppearance) # $a0, 0x8004
/* 00B688 8000AA88 8C84FD8C */  lw    $a0, %lo(dynPtr_DefaultAppearance)($a0)
/* 00B68C 8000AA8C 3C018004 */  lui   $at, %hi(dynPtr_DefaultMovesets) # $at, 0x8004
/* 00B690 8000AA90 0C000280 */  jal   aki_free
/* 00B694 8000AA94 AC20FD90 */   sw    $zero, %lo(dynPtr_DefaultMovesets)($at)

/* 00B698 8000AA98 3C018004 */  lui   $at, %hi(dynPtr_DefaultAppearance) # $at, 0x8004
/* 00B69C 8000AA9C AC20FD8C */  sw    $zero, %lo(dynPtr_DefaultAppearance)($at)
/* 00B6A0 8000AAA0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B6A4 8000AAA4 03E00008 */  jr    $ra
/* 00B6A8 8000AAA8 27BD0018 */   addiu $sp, $sp, 0x18
