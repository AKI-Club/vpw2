/* return message queue address? */

glabel func_800010D8
/* 001CD8 800010D8 3C028005 */  lui   $v0, %hi(bssMain_800520C8)
/* 001CDC 800010DC 03E00008 */  jr    $ra
/* 001CE0 800010E0 244220C8 */   addiu $v0, $v0, %lo(bssMain_800520C8)
