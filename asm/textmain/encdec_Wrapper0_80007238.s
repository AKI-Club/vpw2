glabel encdec_Wrapper0
/* 007E38 80007238 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 007E3C 8000723C AFBF0010 */  sw    $ra, 0x10($sp)
/* 007E40 80007240 0C001C1C */  jal   encode_decode
/* 007E44 80007244 00003821 */   addu  $a3, $zero, $zero

/* 007E48 80007248 8FBF0010 */  lw    $ra, 0x10($sp)
/* 007E4C 8000724C 03E00008 */  jr    $ra
/* 007E50 80007250 27BD0018 */   addiu $sp, $sp, 0x18
