# writes a byte ($a0) to 800571D9

glabel func_800049E8
/* 0055E8 800049E8 3C018005 */  lui   $at, %hi(bssMain_800571D9)
/* 0055EC 800049EC 03E00008 */  jr    $ra
/* 0055F0 800049F0 A02471D9 */   sb    $a0, %lo(bssMain_800571D9)($at)
