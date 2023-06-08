# Params:
# $a0 - ?

glabel func_80003BD4
/* 0047D4 80003BD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0047D8 80003BD8 00042600 */  sll   $a0, $a0, 0x18
/* 0047DC 80003BDC 00041603 */  sra   $v0, $a0, 0x18
/* 0047E0 80003BE0 0440000C */  bltz  $v0, .L80003C14
/* 0047E4 80003BE4 AFBF0010 */   sw    $ra, 0x10($sp)

/* 0047E8 80003BE8 00021200 */  sll   $v0, $v0, 8
/* 0047EC 80003BEC 3C018005 */  lui   $at, %hi(bssMain_80056FD4) # $at, 0x8005
/* 0047F0 80003BF0 A4226FD4 */  sh    $v0, %lo(bssMain_80056FD4)($at)
/* 0047F4 80003BF4 10400003 */  beqz  $v0, .L80003C04
/* 0047F8 80003BF8 344200FF */   ori   $v0, $v0, 0xff

/* 0047FC 80003BFC 3C018005 */  lui   $at, %hi(bssMain_80056FD4) # $at, 0x8005
/* 004800 80003C00 A4226FD4 */  sh    $v0, %lo(bssMain_80056FD4)($at)

.L80003C04:
/* 004804 80003C04 3C058005 */  lui   $a1, %hi(bssMain_80056FD4) # $a1, 0x8005
/* 004808 80003C08 84A56FD4 */  lh    $a1, %lo(bssMain_80056FD4)($a1)
/* 00480C 80003C0C 0C008E46 */  jal   func_80023918
/* 004810 80003C10 24040002 */   li    $a0, 2

.L80003C14:
/* 004814 80003C14 8FBF0010 */  lw    $ra, 0x10($sp)
/* 004818 80003C18 03E00008 */  jr    $ra
/* 00481C 80003C1C 27BD0018 */   addiu $sp, $sp, 0x18
