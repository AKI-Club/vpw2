# Params:
# $a0 - player number?

# Returns:
# $v0 - ID4 value for player

glabel func_800140CC
/* 014CCC 800140CC 00042400 */  sll   $a0, $a0, 0x10
/* 014CD0 800140D0 000423C3 */  sra   $a0, $a0, 0xf
/* 014CD4 800140D4 3C028008 */  lui   $v0, %hi(bssMain_8007F430)
/* 014CD8 800140D8 00441021 */  addu  $v0, $v0, $a0
/* 014CDC 800140DC 03E00008 */  jr    $ra
/* 014CE0 800140E0 8442F430 */   lh    $v0, %lo(bssMain_8007F430)($v0)
