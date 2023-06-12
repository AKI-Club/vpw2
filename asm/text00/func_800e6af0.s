glabel func_800E6AF0
/* 04BF40 800E6AF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04BF44 800E6AF4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 04BF48 800E6AF8 0C039AC3 */  jal   func_800E6B0C
/* 04BF4C 800E6AFC 00000000 */   nop   

/* 04BF50 800E6B00 8FBF0010 */  lw    $ra, 0x10($sp)
/* 04BF54 800E6B04 03E00008 */  jr    $ra
/* 04BF58 800E6B08 27BD0018 */   addiu $sp, $sp, 0x18
