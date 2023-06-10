# related to button graphics

glabel func_800078C0
/* 0084C0 800078C0 00041840 */  sll   $v1, $a0, 1
/* 0084C4 800078C4 00641821 */  addu  $v1, $v1, $a0
/* 0084C8 800078C8 00031980 */  sll   $v1, $v1, 6
/* 0084CC 800078CC 3C028005 */  lui   $v0, %hi(bssMain_80057200) # $v0, 0x8005
/* 0084D0 800078D0 24427200 */  addiu $v0, %lo(bssMain_80057200) # addiu $v0, $v0, 0x7200
/* 0084D4 800078D4 03E00008 */  jr    $ra
/* 0084D8 800078D8 00621021 */   addu  $v0, $v1, $v0