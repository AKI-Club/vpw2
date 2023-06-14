glabel func_80015E8C
/* 016A8C 80015E8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 016A90 80015E90 AFBF0010 */  sw    $ra, 0x10($sp)
/* 016A94 80015E94 24040001 */  li    $a0, 1
/* 016A98 80015E98 0C008F57 */  jal   func_80023D5C
/* 016A9C 80015E9C 24050004 */   li    $a1, 4

/* 016AA0 80015EA0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 016AA4 80015EA4 03E00008 */  jr    $ra
/* 016AA8 80015EA8 27BD0018 */   addiu $sp, $sp, 0x18
