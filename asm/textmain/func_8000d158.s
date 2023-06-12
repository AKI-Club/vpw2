glabel func_8000D158
/* 00DD58 8000D158 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00DD5C 8000D15C AFBF0010 */  sw    $ra, 0x10($sp)
/* 00DD60 8000D160 0C003FFB */  jal   func_8000FFEC
/* 00DD64 8000D164 8C840020 */   lw    $a0, 0x20($a0)

/* 00DD68 8000D168 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00DD6C 8000D16C 03E00008 */  jr    $ra
/* 00DD70 8000D170 27BD0018 */   addiu $sp, $sp, 0x18
