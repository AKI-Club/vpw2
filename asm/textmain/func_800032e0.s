# Writes 0 to 800557BC

glabel func_800032E0
/* 003EE0 800032E0 3C018005 */  lui   $at, %hi(bssMain_800557BC)
/* 003EE4 800032E4 03E00008 */  jr    $ra
/* 003EE8 800032E8 AC2057BC */   sw    $zero, %lo(bssMain_800557BC)($at)
