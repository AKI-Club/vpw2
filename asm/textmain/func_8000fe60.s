glabel func_8000FE60
/* 010A60 8000FE60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 010A64 8000FE64 AFB00010 */  sw    $s0, 0x10($sp)
/* 010A68 8000FE68 00808021 */  addu  $s0, $a0, $zero
/* 010A6C 8000FE6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 010A70 8000FE70 8E04000C */  lw    $a0, 0xc($s0)
/* 010A74 8000FE74 10800004 */  beqz  $a0, .L8000FE88
/* 010A78 8000FE78 00000000 */   nop   

/* 010A7C 8000FE7C 0C000280 */  jal   aki_free
/* 010A80 8000FE80 00000000 */   nop   

/* 010A84 8000FE84 AE00000C */  sw    $zero, 0xc($s0)

.L8000FE88:
/* 010A88 8000FE88 8E040010 */  lw    $a0, 0x10($s0)
/* 010A8C 8000FE8C 10800004 */  beqz  $a0, .L8000FEA0
/* 010A90 8000FE90 00000000 */   nop   

/* 010A94 8000FE94 0C000280 */  jal   aki_free
/* 010A98 8000FE98 00000000 */   nop   

/* 010A9C 8000FE9C AE000010 */  sw    $zero, 0x10($s0)

.L8000FEA0:
/* 010AA0 8000FEA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 010AA4 8000FEA4 8FB00010 */  lw    $s0, 0x10($sp)
/* 010AA8 8000FEA8 03E00008 */  jr    $ra
/* 010AAC 8000FEAC 27BD0018 */   addiu $sp, $sp, 0x18
