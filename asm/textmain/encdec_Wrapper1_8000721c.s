glabel encdec_Wrapper1
/* 007E1C 8000721C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 007E20 80007220 AFBF0010 */  sw    $ra, 0x10($sp)
/* 007E24 80007224 0C001C1C */  jal   encode_decode
/* 007E28 80007228 24070001 */   li    $a3, 1

/* 007E2C 8000722C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 007E30 80007230 03E00008 */  jr    $ra
/* 007E34 80007234 27BD0018 */   addiu $sp, $sp, 0x18
