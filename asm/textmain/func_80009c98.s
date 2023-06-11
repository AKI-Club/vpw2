# Params:
# $a0 = wrestler ID4

glabel func_80009C98
/* 00A898 80009C98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A89C 80009C9C AFB00010 */  sw    $s0, 0x10($sp)
/* 00A8A0 80009CA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A8A4 80009CA4 0C002B7B */  jal   func_8000ADEC
/* 00A8A8 80009CA8 00A08021 */   addu  $s0, $a1, $zero

/* 00A8AC 80009CAC 00501021 */  addu  $v0, $v0, $s0
/* 00A8B0 80009CB0 90420006 */  lbu   $v0, 6($v0)
/* 00A8B4 80009CB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00A8B8 80009CB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 00A8BC 80009CBC 03E00008 */  jr    $ra
/* 00A8C0 80009CC0 27BD0018 */   addiu $sp, $sp, 0x18
