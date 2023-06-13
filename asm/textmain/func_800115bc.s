# get current animation frame for player

# Params:
# $a0 - player number?

glabel func_800115BC
/* 0121BC 800115BC 00042400 */  sll   $a0, $a0, 0x10
/* 0121C0 800115C0 00042403 */  sra   $a0, $a0, 0x10
/* 0121C4 800115C4 00041040 */  sll   $v0, $a0, 1
/* 0121C8 800115C8 00441021 */  addu  $v0, $v0, $a0
/* 0121CC 800115CC 00021180 */  sll   $v0, $v0, 6
/* 0121D0 800115D0 3C018007 */  lui   $at, %hi(bssMain_800704C6)
/* 0121D4 800115D4 00220821 */  addu  $at, $at, $v0
/* 0121D8 800115D8 03E00008 */  jr    $ra
/* 0121DC 800115DC 842204C6 */   lh    $v0, %lo(bssMain_800704C6)($at)
