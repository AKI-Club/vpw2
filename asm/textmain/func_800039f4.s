glabel func_800039F4
/* 0045F4 800039F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0045F8 800039F8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0045FC 800039FC 0C008FD7 */  jal   func_80023F5C
/* 004600 80003A00 00000000 */   nop   

/* 004604 80003A04 8FBF0010 */  lw    $ra, 0x10($sp)
/* 004608 80003A08 0002102A */  slt   $v0, $zero, $v0
/* 00460C 80003A0C 03E00008 */  jr    $ra
/* 004610 80003A10 27BD0018 */   addiu $sp, $sp, 0x18
