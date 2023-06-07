# Params:
# $a0 -
# $a1 -
# $a2 -

glabel func_80001DA4
/* 0029A4 80001DA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0029A8 80001DA8 30C600FF */  andi  $a2, $a2, 0xff
/* 0029AC 80001DAC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0029B0 80001DB0 C4A20000 */  lwc1  $f2, ($a1)
/* 0029B4 80001DB4 C4A40004 */  lwc1  $f4, 4($a1)
/* 0029B8 80001DB8 C4A60008 */  lwc1  $f6, 8($a1)
/* 0029BC 80001DBC 44860000 */  mtc1  $a2, $f0
/* 0029C0 80001DC0 00000000 */  nop   
/* 0029C4 80001DC4 46800020 */  cvt.s.w $f0, $f0
/* 0029C8 80001DC8 30E700FF */  andi  $a3, $a3, 0xff
/* 0029CC 80001DCC 3C018005 */  lui   $at, %hi(bssMain_80056F20) # $at, 0x8005
/* 0029D0 80001DD0 E4206F20 */  swc1  $f0, %lo(bssMain_80056F20)($at)
/* 0029D4 80001DD4 44870000 */  mtc1  $a3, $f0
/* 0029D8 80001DD8 00000000 */  nop   
/* 0029DC 80001DDC 46800020 */  cvt.s.w $f0, $f0
/* 0029E0 80001DE0 3C018005 */  lui   $at, %hi(bssMain_80056F24) # $at, 0x8005
/* 0029E4 80001DE4 E4206F24 */  swc1  $f0, %lo(bssMain_80056F24)($at)
/* 0029E8 80001DE8 3C018005 */  lui   $at, %hi(bssMain_80056F28) # $at, 0x8005
/* 0029EC 80001DEC E4226F28 */  swc1  $f2, %lo(bssMain_80056F28)($at)
/* 0029F0 80001DF0 3C018005 */  lui   $at, %hi(bssMain_80056F2C) # $at, 0x8005
/* 0029F4 80001DF4 E4246F2C */  swc1  $f4, %lo(bssMain_80056F2C)($at)
/* 0029F8 80001DF8 3C018005 */  lui   $at, %hi(bssMain_80056F30) # $at, 0x8005
/* 0029FC 80001DFC 0C000784 */  jal   func_80001E10
/* 002A00 80001E00 E4266F30 */   swc1  $f6, %lo(bssMain_80056F30)($at)

/* 002A04 80001E04 8FBF0010 */  lw    $ra, 0x10($sp)
/* 002A08 80001E08 03E00008 */  jr    $ra
/* 002A0C 80001E0C 27BD0018 */   addiu $sp, $sp, 0x18
