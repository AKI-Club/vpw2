glabel func_80003390
/* 003F90 80003390 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003F94 80003394 3C048005 */  lui   $a0, %hi(bssMain_80055780) # $a0, 0x8005
/* 003F98 80003398 24845780 */  addiu $a0, %lo(bssMain_80055780) # addiu $a0, $a0, 0x5780
/* 003F9C 8000339C 00002821 */  addu  $a1, $zero, $zero
/* 003FA0 800033A0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 003FA4 800033A4 3C018005 */  lui   $at, %hi(bssMain_800557BC) # $at, 0x8005
/* 003FA8 800033A8 AC2057BC */  sw    $zero, %lo(bssMain_800557BC)($at)
/* 003FAC 800033AC 0C00CA2C */  jal   osSendMesg
/* 003FB0 800033B0 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003FB4 800033B4 3C048005 */  lui   $a0, %hi(bssMain_800557A0) # $a0, 0x8005
/* 003FB8 800033B8 248457A0 */  addiu $a0, %lo(bssMain_800557A0) # addiu $a0, $a0, 0x57a0
/* 003FBC 800033BC 00002821 */  addu  $a1, $zero, $zero
/* 003FC0 800033C0 0C00C9E0 */  jal   osRecvMesg
/* 003FC4 800033C4 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 003FC8 800033C8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 003FCC 800033CC 03E00008 */  jr    $ra
/* 003FD0 800033D0 27BD0018 */   addiu $sp, $sp, 0x18
