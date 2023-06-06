# Params:
# $a0 -

glabel func_80000614
/* 001214 80000614 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001218 80000618 AFB00010 */  sw    $s0, 0x10($sp)
/* 00121C 8000061C AFBF0014 */  sw    $ra, 0x14($sp)
/* 001220 80000620 0C000436 */  jal   func_800010D8
/* 001224 80000624 00808021 */   addu  $s0, $a0, $zero

/* 001228 80000628 00402021 */  addu  $a0, $v0, $zero # OSMesgQueue *mq
/* 00122C 8000062C 02002821 */  addu  $a1, $s0, $zero # OSMesg msg
/* 001230 80000630 0C00CA2C */  jal   osSendMesg
/* 001234 80000634 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001238 80000638 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00123C 8000063C 8FB00010 */  lw    $s0, 0x10($sp)
/* 001240 80000640 03E00008 */  jr    $ra
/* 001244 80000644 27BD0018 */   addiu $sp, $sp, 0x18
