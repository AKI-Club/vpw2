# "related to getting a wrestler moveset"
# $a0 = wrestler ID4, $a1 = ?

glabel func_8000A014
/* 00AC14 8000A014 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00AC18 8000A018 AFB00010 */  sw    $s0, 0x10($sp)
/* 00AC1C 8000A01C AFBF0014 */  sw    $ra, 0x14($sp)
/* 00AC20 8000A020 0C0028AC */  jal   ID4toID2
/* 00AC24 8000A024 00A08021 */   addu  $s0, $a1, $zero

/* 00AC28 8000A028 0C002B60 */  jal   func_8000AD80
/* 00AC2C 8000A02C 00402021 */   addu  $a0, $v0, $zero

/* 00AC30 8000A030 244400AD */  addiu $a0, $v0, 0xAD
/* 00AC34 8000A034 0C03F909 */  jal   func_800FE424
/* 00AC38 8000A038 02002821 */   addu  $a1, $s0, $zero

/* 00AC3C 8000A03C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00AC40 8000A040 8FB00010 */  lw    $s0, 0x10($sp)
/* 00AC44 8000A044 03E00008 */  jr    $ra
/* 00AC48 8000A048 27BD0018 */   addiu $sp, $sp, 0x18
