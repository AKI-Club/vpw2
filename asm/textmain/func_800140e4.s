# Params:
# $a0 - player number?

# Returns:
# $v0 - Body type value for player?

glabel func_800140E4
/* 014CE4 800140E4 00042400 */  sll   $a0, $a0, 0x10
/* 014CE8 800140E8 000423C3 */  sra   $a0, $a0, 0xf
/* 014CEC 800140EC 3C028008 */  lui   $v0, %hi(bssMain_80079EB4)
/* 014CF0 800140F0 00441021 */  addu  $v0, $v0, $a0
/* 014CF4 800140F4 03E00008 */  jr    $ra
/* 014CF8 800140F8 84429EB4 */   lh    $v0, %lo(bssMain_80079EB4)($v0)
