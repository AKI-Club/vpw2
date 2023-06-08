glabel func_800032EC
/* 003EEC 800032EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003EF0 800032F0 3C018005 */  lui   $at, %hi(bssMain_800557BC) # $at, 0x8005
/* 003EF4 800032F4 AC2457BC */  sw    $a0, %lo(bssMain_800557BC)($at)
/* 003EF8 800032F8 3C048005 */  lui   $a0, %hi(bssMain_80055780) # $a0, 0x8005
/* 003EFC 800032FC 24845780 */  addiu $a0, %lo(bssMain_80055780) # addiu $a0, $a0, 0x5780
/* 003F00 80003300 00002821 */  addu  $a1, $zero, $zero
/* 003F04 80003304 AFBF0010 */  sw    $ra, 0x10($sp)
/* 003F08 80003308 0C00CA2C */  jal   osSendMesg
/* 003F0C 8000330C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003F10 80003310 3C048005 */  lui   $a0, %hi(bssMain_800557A0) # $a0, 0x8005
/* 003F14 80003314 248457A0 */  addiu $a0, %lo(bssMain_800557A0) # addiu $a0, $a0, 0x57a0
/* 003F18 80003318 00002821 */  addu  $a1, $zero, $zero
/* 003F1C 8000331C 0C00C9E0 */  jal   osRecvMesg
/* 003F20 80003320 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003F24 80003324 8FBF0010 */  lw    $ra, 0x10($sp)
/* 003F28 80003328 03E00008 */  jr    $ra
/* 003F2C 8000332C 27BD0018 */   addiu $sp, $sp, 0x18
