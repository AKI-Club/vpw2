# is this called by anything?

glabel func_80003A94
/* 004694 80003A94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 004698 80003A98 AFB00010 */  sw    $s0, 0x10($sp)
/* 00469C 80003A9C 00808021 */  addu  $s0, $a0, $zero
/* 0046A0 80003AA0 3C048004 */  lui   $a0, %hi(D_8003C8C0) # $a0, 0x8004
/* 0046A4 80003AA4 8C84C8C0 */  lw    $a0, %lo(D_8003C8C0)($a0)
/* 0046A8 80003AA8 10800003 */  beqz  $a0, .L80003AB8
/* 0046AC 80003AAC AFBF0014 */   sw    $ra, 0x14($sp)

/* 0046B0 80003AB0 0C008FAA */  jal   func_80023EA8
/* 0046B4 80003AB4 00002821 */   addu  $a1, $zero, $zero

.L80003AB8:
/* 0046B8 80003AB8 3C048005 */  lui   $a0, %hi(bssMain_80056FCC) # $a0, 0x8005
/* 0046BC 80003ABC 0C00911A */  jal   func_80024468
/* 0046C0 80003AC0 8C846FCC */   lw    $a0, %lo(bssMain_80056FCC)($a0)

/* 0046C4 80003AC4 00102400 */  sll   $a0, $s0, 0x10
/* 0046C8 80003AC8 0C008EF1 */  jal   func_80023BC4
/* 0046CC 80003ACC 00042403 */   sra   $a0, $a0, 0x10

/* 0046D0 80003AD0 3C018004 */  lui   $at, %hi(D_8003C8C0) # $at, 0x8004
/* 0046D4 80003AD4 AC22C8C0 */  sw    $v0, %lo(D_8003C8C0)($at)
/* 0046D8 80003AD8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0046DC 80003ADC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0046E0 80003AE0 03E00008 */  jr    $ra
/* 0046E4 80003AE4 27BD0018 */   addiu $sp, $sp, 0x18
