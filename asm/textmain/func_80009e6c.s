# Params:
# $a0 = wrestler ID4

glabel func_80009E6C
/* 00AA6C 80009E6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00AA70 80009E70 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00AA74 80009E74 0C002B7B */  jal   func_8000ADEC
/* 00AA78 80009E78 00000000 */   nop   

/* 00AA7C 80009E7C 94420002 */  lhu   $v0, 2($v0)
/* 00AA80 80009E80 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00AA84 80009E84 24420046 */  addiu $v0, $v0, 0x46
/* 00AA88 80009E88 03E00008 */  jr    $ra
/* 00AA8C 80009E8C 27BD0018 */   addiu $sp, $sp, 0x18
