glabel func_800086D0
/* 0092D0 800086D0 27BDFBE8 */  addiu $sp, $sp, -0x418
/* 0092D4 800086D4 AFBF0410 */  sw    $ra, 0x410($sp)
/* 0092D8 800086D8 00C03821 */  addu  $a3, $a2, $zero
/* 0092DC 800086DC 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 0092E0 800086E0 0C0021BD */  jal   func_800086F4
/* 0092E4 800086E4 27A60010 */   addiu $a2, $sp, 0x10

/* 0092E8 800086E8 8FBF0410 */  lw    $ra, 0x410($sp)
/* 0092EC 800086EC 03E00008 */  jr    $ra
/* 0092F0 800086F0 27BD0418 */   addiu $sp, $sp, 0x418
