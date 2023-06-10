# Params:
# $a0 - ?? (written to 800571E0)

glabel func_80004BB4
/* 0057B4 80004BB4 00001821 */  addu  $v1, $zero, $zero
/* 0057B8 80004BB8 2405FFFF */  li    $a1, -1

.L80004BBC:
/* 0057BC 80004BBC 3C018005 */  lui   $at, %hi(bssMain_800571DC)
/* 0057C0 80004BC0 00230821 */  addu  $at, $at, $v1
/* 0057C4 80004BC4 A02071DC */  sb    $zero, %lo(bssMain_800571DC)($at)

/* 0057C8 80004BC8 3C018005 */  lui   $at, %hi(bssMain_800571E0)
/* 0057CC 80004BCC 00230821 */  addu  $at, $at, $v1
/* 0057D0 80004BD0 A02471E0 */  sb    $a0, %lo(bssMain_800571E0)($at)

/* 0057D4 80004BD4 3C018005 */  lui   $at, %hi(bssMain_800571E4)
/* 0057D8 80004BD8 00230821 */  addu  $at, $at, $v1
/* 0057DC 80004BDC A02571E4 */  sb    $a1, %lo(bssMain_800571E4)($at)

/* 0057E0 80004BE0 24630001 */  addiu $v1, $v1, 1
/* 0057E4 80004BE4 2C620004 */  sltiu $v0, $v1, 4
/* 0057E8 80004BE8 1440FFF4 */  bnez  $v0, .L80004BBC
/* 0057EC 80004BEC 00000000 */   nop   

/* 0057F0 80004BF0 03E00008 */  jr    $ra
/* 0057F4 80004BF4 00000000 */   nop   
