# Params:
# $a0 -
# $a1 -

glabel func_800005C4
/* 0011C4 800005C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0011C8 800005C8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0011CC 800005CC 00801021 */  addu  $v0, $a0, $zero
/* 0011D0 800005D0 00A03021 */  addu  $a2, $a1, $zero
/* 0011D4 800005D4 3C048005 */  lui   $a0, %hi(bssMain_8004BE00) # $a0, 0x8005
/* 0011D8 800005D8 2484BE00 */  addiu $a0, %lo(bssMain_8004BE00) # addiu $a0, $a0, -0x4200
/* 0011DC 800005DC 0C0003A6 */  jal   func_80000E98
/* 0011E0 800005E0 00402821 */   addu  $a1, $v0, $zero

/* 0011E4 800005E4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0011E8 800005E8 03E00008 */  jr    $ra
/* 0011EC 800005EC 27BD0018 */   addiu $sp, $sp, 0x18
