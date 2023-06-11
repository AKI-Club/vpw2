glabel func_8000A04C
/* 00AC4C 8000A04C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00AC50 8000A050 AFB00010 */  sw    $s0, 0x10($sp)
/* 00AC54 8000A054 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00AC58 8000A058 0C0028AC */  jal   ID4toID2
/* 00AC5C 8000A05C 00A08021 */   addu  $s0, $a1, $zero

/* 00AC60 8000A060 0C002B60 */  jal   func_8000AD80
/* 00AC64 8000A064 00402021 */   addu  $a0, $v0, $zero

/* 00AC68 8000A068 2444000C */  addiu $a0, $v0, 0xc
/* 00AC6C 8000A06C 0C03F8B1 */  jal   func_800FE2C4
/* 00AC70 8000A070 02002821 */   addu  $a1, $s0, $zero

/* 00AC74 8000A074 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00AC78 8000A078 8FB00010 */  lw    $s0, 0x10($sp)
/* 00AC7C 8000A07C 03E00008 */  jr    $ra
/* 00AC80 8000A080 27BD0018 */   addiu $sp, $sp, 0x18
