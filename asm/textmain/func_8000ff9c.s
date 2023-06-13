# Params:
# $a0 - ? address

glabel func_8000FF9C
/* 010B9C 8000FF9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 010BA0 8000FFA0 AFB00010 */  sw    $s0, 0x10($sp)
/* 010BA4 8000FFA4 00808021 */  addu  $s0, $a0, $zero
/* 010BA8 8000FFA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 010BAC 8000FFAC 8E040000 */  lw    $a0, ($s0)
/* 010BB0 8000FFB0 10800004 */  beqz  $a0, .L8000FFC4
/* 010BB4 8000FFB4 00000000 */   nop   

/* 010BB8 8000FFB8 0C000280 */  jal   aki_free
/* 010BBC 8000FFBC 00000000 */   nop   

/* 010BC0 8000FFC0 AE000000 */  sw    $zero, ($s0)

.L8000FFC4:
/* 010BC4 8000FFC4 8E040004 */  lw    $a0, 4($s0)
/* 010BC8 8000FFC8 10800004 */  beqz  $a0, .L8000FFDC
/* 010BCC 8000FFCC 00000000 */   nop   

/* 010BD0 8000FFD0 0C000280 */  jal   aki_free
/* 010BD4 8000FFD4 00000000 */   nop   

/* 010BD8 8000FFD8 AE000004 */  sw    $zero, 4($s0)

.L8000FFDC:
/* 010BDC 8000FFDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 010BE0 8000FFE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 010BE4 8000FFE4 03E00008 */  jr    $ra
/* 010BE8 8000FFE8 27BD0018 */   addiu $sp, $sp, 0x18
