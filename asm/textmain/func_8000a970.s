glabel func_8000A970
/* 00B570 8000A970 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00B574 8000A974 3C048007 */  lui   $a0, %hi(bssMain_8006FD10) # $a0, 0x8007
/* 00B578 8000A978 2484FD10 */  addiu $a0, %lo(bssMain_8006FD10) # addiu $a0, $a0, -0x2f0
/* 00B57C 8000A97C 2405003E */  li    $a1, 62
/* 00B580 8000A980 AFBF0034 */  sw    $ra, 0x34($sp)
/* 00B584 8000A984 0C00C950 */  jal   bzero
/* 00B588 8000A988 AFB00030 */   sw    $s0, 0x30($sp)

/* 00B58C 8000A98C 3C048007 */  lui   $a0, %hi(bssMain_8006FD50) # $a0, 0x8007
/* 00B590 8000A990 2484FD50 */  addiu $a0, %lo(bssMain_8006FD50) # addiu $a0, $a0, -0x2b0
/* 00B594 8000A994 0C00C950 */  jal   bzero
/* 00B598 8000A998 240500C0 */   li    $a1, 192

/* 00B59C 8000A99C 3C028004 */  lui   $v0, %hi(dynPtr_DefaultMovesets) # $v0, 0x8004
/* 00B5A0 8000A9A0 8C42FD90 */  lw    $v0, %lo(dynPtr_DefaultMovesets)($v0)
/* 00B5A4 8000A9A4 14400012 */  bnez  $v0, .L8000A9F0
/* 00B5A8 8000A9A8 00008021 */   addu  $s0, $zero, $zero

/* 00B5AC 8000A9AC 0C000226 */  jal   aki_malloc
/* 00B5B0 8000A9B0 24045640 */   li    $a0, 22080

/* 00B5B4 8000A9B4 00402021 */  addu  $a0, $v0, $zero
/* 00B5B8 8000A9B8 3C018004 */  lui   $at, %hi(dynPtr_DefaultMovesets) # $at, 0x8004
/* 00B5BC 8000A9BC AC24FD90 */  sw    $a0, %lo(dynPtr_DefaultMovesets)($at)
/* 00B5C0 8000A9C0 0C00C950 */  jal   bzero
/* 00B5C4 8000A9C4 240500C0 */   li    $a1, 192

/* 00B5C8 8000A9C8 0C000226 */  jal   aki_malloc
/* 00B5CC 8000A9CC 24046F68 */   li    $a0, 28520

/* 00B5D0 8000A9D0 00402021 */  addu  $a0, $v0, $zero
/* 00B5D4 8000A9D4 3C018004 */  lui   $at, %hi(dynPtr_DefaultAppearance) # $at, 0x8004
/* 00B5D8 8000A9D8 AC24FD8C */  sw    $a0, %lo(dynPtr_DefaultAppearance)($at)
/* 00B5DC 8000A9DC 0C00C950 */  jal   bzero
/* 00B5E0 8000A9E0 2405003E */   li    $a1, 62

/* 00B5E4 8000A9E4 24100001 */  li    $s0, 1
/* 00B5E8 8000A9E8 3C018004 */  lui   $at, %hi(dword_8003FD88) # $at, 0x8004
/* 00B5EC 8000A9EC AC30FD88 */  sw    $s0, %lo(dword_8003FD88)($at)

.L8000A9F0:
/* 00B5F0 8000A9F0 3C028004 */  lui   $v0, %hi(dynPtr_DefaultNames) # $v0, 0x8004
/* 00B5F4 8000A9F4 8C42FDA0 */  lw    $v0, %lo(dynPtr_DefaultNames)($v0)
/* 00B5F8 8000A9F8 1440000D */  bnez  $v0, .L8000AA30
/* 00B5FC 8000A9FC 27A40010 */   addiu $a0, $sp, 0x10

/* 00B600 8000AA00 0C000F71 */  jal   GetFileLoc
/* 00B604 8000AA04 2405006C */   li    $a1, 0x6C # file ID 0x006C: default strings

/* 00B608 8000AA08 8FA40018 */  lw    $a0, 0x18($sp)
/* 00B60C 8000AA0C 0C000226 */  jal   aki_malloc
/* 00B610 8000AA10 00000000 */   nop   

/* 00B614 8000AA14 3C018004 */  lui   $at, %hi(dynPtr_DefaultNames) # $at, 0x8004
/* 00B618 8000AA18 AC22FDA0 */  sw    $v0, %lo(dynPtr_DefaultNames)($at)
/* 00B61C 8000AA1C 10400004 */  beqz  $v0, .L8000AA30
/* 00B620 8000AA20 27A40020 */   addiu $a0, $sp, 0x20

/* 00B624 8000AA24 2405006C */  li    $a1, 0x6C # file ID 0x006C: default strings
/* 00B628 8000AA28 0C000FA2 */  jal   LoadFile
/* 00B62C 8000AA2C 00403021 */   addu  $a2, $v0, $zero

.L8000AA30:
/* 00B630 8000AA30 0C002959 */  jal   func_8000A564
/* 00B634 8000AA34 00000000 */   nop   

/* 00B638 8000AA38 3C048004 */  lui   $a0, %hi(dynPtr_DefaultNames) # $a0, 0x8004
/* 00B63C 8000AA3C 8C84FDA0 */  lw    $a0, %lo(dynPtr_DefaultNames)($a0)
/* 00B640 8000AA40 10800006 */  beqz  $a0, .L8000AA5C
/* 00B644 8000AA44 02001021 */   addu  $v0, $s0, $zero

/* 00B648 8000AA48 0C000280 */  jal   aki_free
/* 00B64C 8000AA4C 00000000 */   nop   

/* 00B650 8000AA50 3C018004 */  lui   $at, %hi(dynPtr_DefaultNames) # $at, 0x8004
/* 00B654 8000AA54 AC20FDA0 */  sw    $zero, %lo(dynPtr_DefaultNames)($at)
/* 00B658 8000AA58 02001021 */  addu  $v0, $s0, $zero

.L8000AA5C:
/* 00B65C 8000AA5C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 00B660 8000AA60 8FB00030 */  lw    $s0, 0x30($sp)
/* 00B664 8000AA64 03E00008 */  jr    $ra
/* 00B668 8000AA68 27BD0038 */   addiu $sp, $sp, 0x38
