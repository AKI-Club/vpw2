glabel start
/* 001000 80000400 3C088005 */  lui   $t0, %hi(base_dl) # $t0, 0x8005
/* 001004 80000404 2508B2A0 */  addiu $t0, %lo(base_dl) # addiu $t0, $t0, -0x4d60
/* 001008 80000408 3C090007 */  lui   $t1, %hi(0x06B050) # $t1, 7
/* 00100C 8000040C 2529B050 */  addiu $t1, %lo(0x06B050) # addiu $t1, $t1, -0x4fb0

.L80000410:
/* 001010 80000410 AD000000 */  sw    $zero, ($t0)
/* 001014 80000414 AD000004 */  sw    $zero, 4($t0)
/* 001018 80000418 21080008 */  addi  $t0, $t0, 8
/* 00101C 8000041C 2129FFF8 */  addi  $t1, $t1, -8
/* 001020 80000420 1520FFFB */  bnez  $t1, .L80000410
/* 001024 80000424 00000000 */   nop   

/* 001028 80000428 3C0A8000 */  lui   $t2, %hi(func_80000460) # $t2, 0x8000
/* 00102C 8000042C 254A0460 */  addiu $t2, %lo(func_80000460) # addiu $t2, $t2, 0x460
/* 001030 80000430 3C1D800A */  lui   $sp, %hi(bssMain_8009C190) # $sp, 0x800a
/* 001034 80000434 01400008 */  jr    $t2
/* 001038 80000438 27BDC190 */   addiu $sp, %lo(bssMain_8009C190) # addiu $sp, $sp, -0x3e70

/*----------------------------------------------------------------------------*/
/* 00103C 8000043C 00000000 */  nop   
/* 001040 80000440 00000000 */  nop   
/* 001044 80000444 00000000 */  nop   
/* 001048 80000448 00000000 */  nop   
/* 00104C 8000044C 00000000 */  nop   
/* 001050 80000450 00000000 */  nop   
/* 001054 80000454 00000000 */  nop   
/* 001058 80000458 00000000 */  nop   
/* 00105C 8000045C 00000000 */  nop   
/*============================================================================*/
