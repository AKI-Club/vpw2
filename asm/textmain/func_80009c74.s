# Params:
# $a0 = wrestler ID4

glabel func_80009C74
/* 00A874 80009C74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A878 80009C78 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00A87C 80009C7C 0C002B7B */  jal   func_8000ADEC
/* 00A880 80009C80 00000000 */   nop   

/* 00A884 80009C84 94420000 */  lhu   $v0, ($v0)
/* 00A888 80009C88 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00A88C 80009C8C 24420096 */  addiu $v0, $v0, 0x96
/* 00A890 80009C90 03E00008 */  jr    $ra
/* 00A894 80009C94 27BD0018 */   addiu $sp, $sp, 0x18
