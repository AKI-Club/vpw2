# $a0 = wrestler ID4

glabel func_80009FF4
/* 00ABF4 80009FF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00ABF8 80009FF8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00ABFC 80009FFC 0C002B7B */  jal   func_8000ADEC
/* 00AC00 8000A000 00000000 */   nop   

/* 00AC04 8000A004 9042000B */  lbu   $v0, 0xb($v0)
/* 00AC08 8000A008 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00AC0C 8000A00C 03E00008 */  jr    $ra
/* 00AC10 8000A010 27BD0018 */   addiu $sp, $sp, 0x18
