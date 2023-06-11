glabel func_8000B184
/* 00BD84 8000B184 27BDFE90 */  addiu $sp, $sp, -0x170
/* 00BD88 8000B188 AFBF0168 */  sw    $ra, 0x168($sp)
/* 00BD8C 8000B18C 2485000C */  addiu $a1, $a0, 0xc
/* 00BD90 8000B190 0C03F889 */  jal   func_800FE224
/* 00BD94 8000B194 27A40010 */   addiu $a0, $sp, 0x10

/* 00BD98 8000B198 8FBF0168 */  lw    $ra, 0x168($sp)
/* 00BD9C 8000B19C 03E00008 */  jr    $ra
/* 00BDA0 8000B1A0 27BD0170 */   addiu $sp, $sp, 0x170
