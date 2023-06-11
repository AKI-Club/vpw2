glabel func_8000ABFC
/* 00B7FC 8000ABFC 3C048004 */  lui   $a0, %hi(dynPtr_MempakAppearance) # $a0, 0x8004
/* 00B800 8000AC00 8C84FD94 */  lw    $a0, %lo(dynPtr_MempakAppearance)($a0)
/* 00B804 8000AC04 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B808 8000AC08 10800005 */  beqz  $a0, .L8000AC20
/* 00B80C 8000AC0C AFBF0010 */   sw    $ra, 0x10($sp)

/* 00B810 8000AC10 0C000280 */  jal   aki_free
/* 00B814 8000AC14 00000000 */   nop   

/* 00B818 8000AC18 3C018004 */  lui   $at, %hi(dynPtr_MempakAppearance) # $at, 0x8004
/* 00B81C 8000AC1C AC20FD94 */  sw    $zero, %lo(dynPtr_MempakAppearance)($at)

.L8000AC20:
/* 00B820 8000AC20 3C048004 */  lui   $a0, %hi(dynPtr_MempakMovesets) # $a0, 0x8004
/* 00B824 8000AC24 8C84FD98 */  lw    $a0, %lo(dynPtr_MempakMovesets)($a0)
/* 00B828 8000AC28 10800005 */  beqz  $a0, .L8000AC40
/* 00B82C 8000AC2C 00000000 */   nop   

/* 00B830 8000AC30 0C000280 */  jal   aki_free
/* 00B834 8000AC34 00000000 */   nop   

/* 00B838 8000AC38 3C018004 */  lui   $at, %hi(dynPtr_MempakMovesets) # $at, 0x8004
/* 00B83C 8000AC3C AC20FD98 */  sw    $zero, %lo(dynPtr_MempakMovesets)($at)

.L8000AC40:
/* 00B840 8000AC40 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B844 8000AC44 03E00008 */  jr    $ra
/* 00B848 8000AC48 27BD0018 */   addiu $sp, $sp, 0x18
