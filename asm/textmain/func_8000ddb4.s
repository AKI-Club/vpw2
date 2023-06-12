glabel func_8000DDB4
/* 00E9B4 8000DDB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00E9B8 8000DDB8 AFB00010 */  sw    $s0, 0x10($sp)
/* 00E9BC 8000DDBC 00808021 */  addu  $s0, $a0, $zero
/* 00E9C0 8000DDC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00E9C4 8000DDC4 96020000 */  lhu   $v0, ($s0)
/* 00E9C8 8000DDC8 10400017 */  beqz  $v0, .L8000DE28
/* 00E9CC 8000DDCC 00000000 */   nop   

/* 00E9D0 8000DDD0 8E040004 */  lw    $a0, 4($s0)
/* 00E9D4 8000DDD4 0C000280 */  jal   aki_free
/* 00E9D8 8000DDD8 A6000000 */   sh    $zero, ($s0)

/* 00E9DC 8000DDDC 00001821 */  addu  $v1, $zero, $zero
/* 00E9E0 8000DDE0 02002021 */  addu  $a0, $s0, $zero
/* 00E9E4 8000DDE4 AE000004 */  sw    $zero, 4($s0)

.L8000DDE8:
/* 00E9E8 8000DDE8 AC800008 */  sw    $zero, 8($a0)
/* 00E9EC 8000DDEC 24630001 */  addiu $v1, $v1, 1
/* 00E9F0 8000DDF0 2C620003 */  sltiu $v0, $v1, 3
/* 00E9F4 8000DDF4 1440FFFC */  bnez  $v0, .L8000DDE8
/* 00E9F8 8000DDF8 24840004 */   addiu $a0, $a0, 4

/* 00E9FC 8000DDFC 8E040014 */  lw    $a0, 0x14($s0)
/* 00EA00 8000DE00 0C000280 */  jal   aki_free
/* 00EA04 8000DE04 00000000 */   nop   

/* 00EA08 8000DE08 00001821 */  addu  $v1, $zero, $zero
/* 00EA0C 8000DE0C 02002021 */  addu  $a0, $s0, $zero
/* 00EA10 8000DE10 AC800014 */  sw    $zero, 0x14($a0)

.L8000DE14:
/* 00EA14 8000DE14 AC800018 */  sw    $zero, 0x18($a0)
/* 00EA18 8000DE18 24630001 */  addiu $v1, $v1, 1
/* 00EA1C 8000DE1C 2C620003 */  sltiu $v0, $v1, 3
/* 00EA20 8000DE20 1440FFFC */  bnez  $v0, .L8000DE14
/* 00EA24 8000DE24 24840004 */   addiu $a0, $a0, 4

.L8000DE28:
/* 00EA28 8000DE28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00EA2C 8000DE2C 8FB00010 */  lw    $s0, 0x10($sp)
/* 00EA30 8000DE30 03E00008 */  jr    $ra
/* 00EA34 8000DE34 27BD0018 */   addiu $sp, $sp, 0x18
