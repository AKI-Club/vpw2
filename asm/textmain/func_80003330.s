glabel func_80003330
/* 003F30 80003330 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003F34 80003334 3C048005 */  lui   $a0, %hi(bssMain_80055780) # $a0, 0x8005
/* 003F38 80003338 24845780 */  addiu $a0, %lo(bssMain_80055780) # addiu $a0, $a0, 0x5780
/* 003F3C 8000333C 00002821 */  addu  $a1, $zero, $zero
/* 003F40 80003340 AFBF0010 */  sw    $ra, 0x10($sp)
/* 003F44 80003344 3C018005 */  lui   $at, %hi(bssMain_800557BC) # $at, 0x8005
/* 003F48 80003348 AC2057BC */  sw    $zero, %lo(bssMain_800557BC)($at)
/* 003F4C 8000334C 0C00CA2C */  jal   osSendMesg
/* 003F50 80003350 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003F54 80003354 3C048005 */  lui   $a0, %hi(bssMain_800557A0) # $a0, 0x8005
/* 003F58 80003358 248457A0 */  addiu $a0, %lo(bssMain_800557A0) # addiu $a0, $a0, 0x57a0
/* 003F5C 8000335C 00002821 */  addu  $a1, $zero, $zero
/* 003F60 80003360 0C00C9E0 */  jal   osRecvMesg
/* 003F64 80003364 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003F68 80003368 8FBF0010 */  lw    $ra, 0x10($sp)
/* 003F6C 8000336C 03E00008 */  jr    $ra
/* 003F70 80003370 27BD0018 */   addiu $sp, $sp, 0x18
