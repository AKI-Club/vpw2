glabel func_8000A8B4
/* 00B4B4 8000A8B4 3C048004 */  lui   $a0, %hi(dynPtr_DefaultCostumeData) # $a0, 0x8004
/* 00B4B8 8000A8B8 8C84FD9C */  lw    $a0, %lo(dynPtr_DefaultCostumeData)($a0)
/* 00B4BC 8000A8BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B4C0 8000A8C0 10800005 */  beqz  $a0, .L8000A8D8
/* 00B4C4 8000A8C4 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00B4C8 8000A8C8 0C000280 */  jal   aki_free
/* 00B4CC 8000A8CC 00000000 */   nop   

/* 00B4D0 8000A8D0 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00B4D4 8000A8D4 AC20FD9C */  sw    $zero, %lo(dynPtr_DefaultCostumeData)($at)

.L8000A8D8:
/* 00B4D8 8000A8D8 0C002A50 */  jal   UnloadDefaultStrings
/* 00B4DC 8000A8DC 00000000 */   nop   

/* 00B4E0 8000A8E0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B4E4 8000A8E4 03E00008 */  jr    $ra
/* 00B4E8 8000A8E8 27BD0018 */   addiu $sp, $sp, 0x18
