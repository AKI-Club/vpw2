glabel func_8000E560
/* 00F160 8000E560 3C018007 */  lui   $at, %hi(bssMain_8006FE90) # $at, 0x8007
/* 00F164 8000E564 C420FE90 */  lwc1  $f0, %lo(bssMain_8006FE90)($at)
/* 00F168 8000E568 E4800000 */  swc1  $f0, ($a0)
/* 00F16C 8000E56C 3C018007 */  lui   $at, %hi(bssMain_8006FE94) # $at, 0x8007
/* 00F170 8000E570 C420FE94 */  lwc1  $f0, %lo(bssMain_8006FE94)($at)
/* 00F174 8000E574 E4A00000 */  swc1  $f0, ($a1)
/* 00F178 8000E578 3C018007 */  lui   $at, %hi(bssMain_8006FE98) # $at, 0x8007
/* 00F17C 8000E57C C420FE98 */  lwc1  $f0, %lo(bssMain_8006FE98)($at)
/* 00F180 8000E580 03E00008 */  jr    $ra
/* 00F184 8000E584 E4C00000 */   swc1  $f0, ($a2)
