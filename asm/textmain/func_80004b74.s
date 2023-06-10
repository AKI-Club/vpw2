# related to rumble pak?

glabel func_80004B74
/* 005774 80004B74 00042400 */  sll   $a0, $a0, 0x10
/* 005778 80004B78 00042403 */  sra   $a0, $a0, 0x10
/* 00577C 80004B7C 3C038005 */  lui   $v1, %hi(bssMain_800571DC)
/* 005780 80004B80 00641821 */  addu  $v1, $v1, $a0
/* 005784 80004B84 806371DC */  lb    $v1, %lo(bssMain_800571DC)($v1)
/* 005788 80004B88 24020001 */  li    $v0, 1
/* 00578C 80004B8C 14620007 */  bne   $v1, $v0, .L80004BAC # exit
/* 005790 80004B90 2402FFFF */   li    $v0, -1

/* 005794 80004B94 3C018005 */  lui   $at, %hi(bssMain_800571DC)
/* 005798 80004B98 00240821 */  addu  $at, $at, $a0
/* 00579C 80004B9C A02071DC */  sb    $zero, %lo(bssMain_800571DC)($at)

/* 0057A0 80004BA0 3C018005 */  lui   $at, %hi(bssMain_800571E4)
/* 0057A4 80004BA4 00240821 */  addu  $at, $at, $a0
/* 0057A8 80004BA8 A02271E4 */  sb    $v0, %lo(bssMain_800571E4)($at)

.L80004BAC:
/* 0057AC 80004BAC 03E00008 */  jr    $ra
/* 0057B0 80004BB0 00000000 */   nop   
