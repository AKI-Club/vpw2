glabel func_8000E588
/* 00F188 8000E588 3C018007 */  lui   $at, %hi(bssMain_8006FE9C) # $at, 0x8007
/* 00F18C 8000E58C C420FE9C */  lwc1  $f0, %lo(bssMain_8006FE9C)($at)
/* 00F190 8000E590 E4800000 */  swc1  $f0, ($a0)
/* 00F194 8000E594 3C018007 */  lui   $at, %hi(bssMain_8006FEA0) # $at, 0x8007
/* 00F198 8000E598 C420FEA0 */  lwc1  $f0, %lo(bssMain_8006FEA0)($at)
/* 00F19C 8000E59C E4A00000 */  swc1  $f0, ($a1)
/* 00F1A0 8000E5A0 3C018007 */  lui   $at, %hi(bssMain_8006FEA4) # $at, 0x8007
/* 00F1A4 8000E5A4 C420FEA4 */  lwc1  $f0, %lo(bssMain_8006FEA4)($at)
/* 00F1A8 8000E5A8 03E00008 */  jr    $ra
/* 00F1AC 8000E5AC E4C00000 */   swc1  $f0, ($a2)
