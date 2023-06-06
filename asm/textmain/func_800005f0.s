# dead code?

# Params:
# $a0 -

glabel func_800005F0
/* 0011F0 800005F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0011F4 800005F4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0011F8 800005F8 00802821 */  addu  $a1, $a0, $zero
/* 0011FC 800005FC 3C048005 */  lui   $a0, %hi(bssMain_8004BE00) # $a0, 0x8005
/* 001200 80000600 0C0003C4 */  jal   func_80000F10
/* 001204 80000604 2484BE00 */   addiu $a0, %lo(bssMain_8004BE00) # addiu $a0, $a0, -0x4200

/* 001208 80000608 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00120C 8000060C 03E00008 */  jr    $ra
/* 001210 80000610 27BD0018 */   addiu $sp, $sp, 0x18
