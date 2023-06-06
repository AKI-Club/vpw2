/* returns 8004BE00; called when setting up sound tables 1,2,3 */

glabel func_80000654
/* 001254 80000654 3C028005 */  lui   $v0, %hi(bssMain_8004BE00)
/* 001258 80000658 03E00008 */  jr    $ra
/* 00125C 8000065C 2442BE00 */   addiu $v0, $v0, %lo(bssMain_8004BE00)
