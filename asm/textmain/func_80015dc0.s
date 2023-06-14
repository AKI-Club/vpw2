# Params:
# $a0 - ?

glabel func_80015DC0
/* 0169C0 80015DC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0169C4 80015DC4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0169C8 80015DC8 00008021 */  addu  $s0, $zero, $zero
/* 0169CC 80015DCC 00801821 */  addu  $v1, $a0, $zero
/* 0169D0 80015DD0 2482FBFF */  addiu $v0, $a0, -0x401
/* 0169D4 80015DD4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0169D8 80015DD8 2C42001C */  sltiu $v0, $v0, 0x1c
/* 0169DC 80015DDC 10400008 */  beqz  $v0, .L80015E00
/* 0169E0 80015DE0 AFBF001C */   sw    $ra, 0x1c($sp)

/* 0169E4 80015DE4 00041400 */  sll   $v0, $a0, 0x10
/* 0169E8 80015DE8 000213C3 */  sra   $v0, $v0, 0xf
/* 0169EC 80015DEC 3C018004 */  lui   $at, %hi(dynPtr_MempakMovesets)
/* 0169F0 80015DF0 00220821 */  addu  $at, $at, $v0
/* 0169F4 80015DF4 9422FD98 */  lhu   $v0, %lo(dynPtr_MempakMovesets)($at)
/* 0169F8 80015DF8 08005782 */  j     .L80015E08
/* 0169FC 80015DFC 00021400 */   sll   $v0, $v0, 0x10

.L80015E00:
/* 016A00 80015E00 00601021 */  addu  $v0, $v1, $zero
/* 016A04 80015E04 00021400 */  sll   $v0, $v0, 0x10

.L80015E08:
/* 016A08 80015E08 00022403 */  sra   $a0, $v0, 0x10
/* 016A0C 80015E0C 0480000C */  bltz  $a0, .L80015E40
/* 016A10 80015E10 288200E3 */   slti  $v0, $a0, 0xe3

/* 016A14 80015E14 1040000A */  beqz  $v0, .L80015E40
/* 016A18 80015E18 2402FFFF */   li    $v0, -1

/* 016A1C 80015E1C AFA20010 */  sw    $v0, 0x10($sp)
/* 016A20 80015E20 24050080 */  li    $a1, 128
/* 016A24 80015E24 24060080 */  li    $a2, 128
/* 016A28 80015E28 0C000E59 */  jal   func_80003964
/* 016A2C 80015E2C 00003821 */   addu  $a3, $zero, $zero

/* 016A30 80015E30 00408021 */  addu  $s0, $v0, $zero
/* 016A34 80015E34 02002021 */  addu  $a0, $s0, $zero
/* 016A38 80015E38 0C009060 */  jal   func_80024180
/* 016A3C 80015E3C 00002821 */   addu  $a1, $zero, $zero

.L80015E40:
/* 016A40 80015E40 02001021 */  addu  $v0, $s0, $zero
/* 016A44 80015E44 8FBF001C */  lw    $ra, 0x1c($sp)
/* 016A48 80015E48 8FB00018 */  lw    $s0, 0x18($sp)
/* 016A4C 80015E4C 03E00008 */  jr    $ra
/* 016A50 80015E50 27BD0020 */   addiu $sp, $sp, 0x20
