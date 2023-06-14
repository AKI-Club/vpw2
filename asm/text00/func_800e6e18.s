glabel func_800E6E18
/* 04C268 800E6E18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04C26C 800E6E1C AFBF0010 */  sw    $ra, 0x10($sp)
/* 04C270 800E6E20 0C00CCD0 */  jal   osGetTime
/* 04C274 800E6E24 00000000 */   nop   

/* 04C278 800E6E28 00022180 */  sll   $a0, $v0, 6
/* 04C27C 800E6E2C 00033682 */  srl   $a2, $v1, 0x1a
/* 04C280 800E6E30 00862025 */  or    $a0, $a0, $a2
/* 04C284 800E6E34 00032980 */  sll   $a1, $v1, 6
/* 04C288 800E6E38 24060000 */  li    $a2, 0
/* 04C28C 800E6E3C 0C00E4F4 */  jal   func_800393D0
/* 04C290 800E6E40 24070BB8 */   li    $a3, 3000

/* 04C294 800E6E44 3C018010 */  lui   $at, %hi(D_801041D0) # $at, 0x8010
/* 04C298 800E6E48 AC2241D0 */  sw    $v0, %lo(D_801041D0)($at)
/* 04C29C 800E6E4C 3C018010 */  lui   $at, %hi(D_801041D4) # $at, 0x8010
/* 04C2A0 800E6E50 AC2341D4 */  sw    $v1, %lo(D_801041D4)($at)
/* 04C2A4 800E6E54 8FBF0010 */  lw    $ra, 0x10($sp)
/* 04C2A8 800E6E58 03E00008 */  jr    $ra
/* 04C2AC 800E6E5C 27BD0018 */   addiu $sp, $sp, 0x18
