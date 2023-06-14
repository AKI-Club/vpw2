glabel func_80014E98
/* 015A98 80014E98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 015A9C 80014E9C AFB3001C */  sw    $s3, 0x1c($sp)
/* 015AA0 80014EA0 00A09821 */  addu  $s3, $a1, $zero
/* 015AA4 80014EA4 AFB10014 */  sw    $s1, 0x14($sp)
/* 015AA8 80014EA8 00008821 */  addu  $s1, $zero, $zero
/* 015AAC 80014EAC 00042400 */  sll   $a0, $a0, 0x10
/* 015AB0 80014EB0 00042403 */  sra   $a0, $a0, 0x10
/* 015AB4 80014EB4 00041040 */  sll   $v0, $a0, 1
/* 015AB8 80014EB8 00441021 */  addu  $v0, $v0, $a0
/* 015ABC 80014EBC 00021080 */  sll   $v0, $v0, 2
/* 015AC0 80014EC0 00441023 */  subu  $v0, $v0, $a0
/* 015AC4 80014EC4 00021080 */  sll   $v0, $v0, 2
/* 015AC8 80014EC8 00441023 */  subu  $v0, $v0, $a0
/* 015ACC 80014ECC 00021140 */  sll   $v0, $v0, 5
/* 015AD0 80014ED0 00441023 */  subu  $v0, $v0, $a0
/* 015AD4 80014ED4 AFB20018 */  sw    $s2, 0x18($sp)
/* 015AD8 80014ED8 00029080 */  sll   $s2, $v0, 2
/* 015ADC 80014EDC AFB00010 */  sw    $s0, 0x10($sp)
/* 015AE0 80014EE0 3C108009 */  lui   $s0, %hi(bssMain_80092900) # $s0, 0x8009
/* 015AE4 80014EE4 26102900 */  addiu $s0, %lo(bssMain_80092900) # addiu $s0, $s0, 0x2900
/* 015AE8 80014EE8 AFBF0020 */  sw    $ra, 0x20($sp)

.L80014EEC:
/* 015AEC 80014EEC 02502021 */  addu  $a0, $s2, $s0
/* 015AF0 80014EF0 0C003996 */  jal   func_8000E658
/* 015AF4 80014EF4 326500FF */   andi  $a1, $s3, 0xff

/* 015AF8 80014EF8 26310001 */  addiu $s1, $s1, 1
/* 015AFC 80014EFC 2E220019 */  sltiu $v0, $s1, 0x19
/* 015B00 80014F00 1440FFFA */  bnez  $v0, .L80014EEC
/* 015B04 80014F04 261000DC */   addiu $s0, $s0, 0xdc

/* 015B08 80014F08 8FBF0020 */  lw    $ra, 0x20($sp)
/* 015B0C 80014F0C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 015B10 80014F10 8FB20018 */  lw    $s2, 0x18($sp)
/* 015B14 80014F14 8FB10014 */  lw    $s1, 0x14($sp)
/* 015B18 80014F18 8FB00010 */  lw    $s0, 0x10($sp)
/* 015B1C 80014F1C 03E00008 */  jr    $ra
/* 015B20 80014F20 27BD0028 */   addiu $sp, $sp, 0x28
