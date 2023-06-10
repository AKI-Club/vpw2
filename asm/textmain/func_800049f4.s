glabel func_800049F4
/* 0055F4 800049F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0055F8 800049F8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0055FC 800049FC 3C108005 */  lui   $s0, %hi(bssMain_80057008) # $s0, 0x8005
/* 005600 80004A00 26107008 */  addiu $s0, %lo(bssMain_80057008) # addiu $s0, $s0, 0x7008
/* 005604 80004A04 02002021 */  addu  $a0, $s0, $zero
/* 005608 80004A08 00002821 */  addu  $a1, $zero, $zero
/* 00560C 80004A0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 005610 80004A10 0C00C9E0 */  jal   osRecvMesg
/* 005614 80004A14 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 005618 80004A18 24020001 */  li    $v0, 1
/* 00561C 80004A1C 3C018005 */  lui   $at, %hi(bssMain_800571DA) # $at, 0x8005
/* 005620 80004A20 A02271DA */  sb    $v0, %lo(bssMain_800571DA)($at)

/* 005624 80004A24 02001021 */  addu  $v0, $s0, $zero
/* 005628 80004A28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00562C 80004A2C 8FB00010 */  lw    $s0, 0x10($sp)
/* 005630 80004A30 03E00008 */  jr    $ra
/* 005634 80004A34 27BD0018 */   addiu $sp, $sp, 0x18
