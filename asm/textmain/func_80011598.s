# get currently playing animation for player

# Params:
# $a0 - player number?

glabel func_80011598
/* 012198 80011598 00042400 */  sll   $a0, $a0, 0x10
/* 01219C 8001159C 00042403 */  sra   $a0, $a0, 0x10
/* 0121A0 800115A0 00041040 */  sll   $v0, $a0, 1
/* 0121A4 800115A4 00441021 */  addu  $v0, $v0, $a0
/* 0121A8 800115A8 00021180 */  sll   $v0, $v0, 6
/* 0121AC 800115AC 3C018007 */  lui   $at, %hi(bssMain_800704C4)
/* 0121B0 800115B0 00220821 */  addu  $at, $at, $v0
/* 0121B4 800115B4 03E00008 */  jr    $ra
/* 0121B8 800115B8 842204C4 */   lh    $v0, %lo(bssMain_800704C4)($at)
