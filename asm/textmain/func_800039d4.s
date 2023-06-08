glabel func_800039D4
/* 0045D4 800039D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0045D8 800039D8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0045DC 800039DC 00042400 */  sll   $a0, $a0, 0x10
/* 0045E0 800039E0 0C0098FD */  jal   func_800263F4
/* 0045E4 800039E4 2C840001 */   sltiu $a0, $a0, 1

/* 0045E8 800039E8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0045EC 800039EC 03E00008 */  jr    $ra
/* 0045F0 800039F0 27BD0018 */   addiu $sp, $sp, 0x18
