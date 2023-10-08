# Params:
# $a0 -

glabel func3_800ECC58
/* 0E7308 800ECC58 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0E730C 800ECC5C AFB00028 */  sw    $s0, 0x28($sp)
/* 0E7310 800ECC60 00808021 */  addu  $s0, $a0, $zero
/* 0E7314 800ECC64 27A40010 */  addiu $a0, $sp, 0x10
/* 0E7318 800ECC68 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0E731C 800ECC6C 0C000F71 */  jal   GetFileLoc
/* 0E7320 800ECC70 240503CA */   li    $a1, 0x3CA # file ID 0x3CA (spirit meter frame, com left)

/* 0E7324 800ECC74 8FA30018 */  lw    $v1, 0x18($sp)
/* 0E7328 800ECC78 321000FF */  andi  $s0, $s0, 0xff
/* 0E732C 800ECC7C 00101040 */  sll   $v0, $s0, 1
/* 0E7330 800ECC80 00501021 */  addu  $v0, $v0, $s0
/* 0E7334 800ECC84 00021080 */  sll   $v0, $v0, 2
/* 0E7338 800ECC88 001080C0 */  sll   $s0, $s0, 3
/* 0E733C 800ECC8C 2463FFF8 */  addiu $v1, $v1, -8
/* 0E7340 800ECC90 AFA30018 */  sw    $v1, 0x18($sp)
/* 0E7344 800ECC94 3C018016 */  lui   $at, %hi(bss3_8015B7D8)
/* 0E7348 800ECC98 00220821 */  addu  $at, $at, $v0
/* 0E734C 800ECC9C 9022B7D8 */  lbu   $v0, %lo(bss3_8015B7D8)($at)
/* 0E7350 800ECCA0 00002821 */  addu  $a1, $zero, $zero
/* 0E7354 800ECCA4 3C048016 */  lui   $a0, %hi(bss3_8015BB78)
/* 0E7358 800ECCA8 00902021 */  addu  $a0, $a0, $s0
/* 0E735C 800ECCAC 8C84BB78 */  lw    $a0, %lo(bss3_8015BB78)($a0)
/* 0E7360 800ECCB0 00021042 */  srl   $v0, $v0, 1
/* 0E7364 800ECCB4 000210C0 */  sll   $v0, $v0, 3
/* 0E7368 800ECCB8 3C018016 */  lui   $at, %hi(bss3_8015BB98)
/* 0E736C 800ECCBC 00220821 */  addu  $at, $at, $v0
/* 0E7370 800ECCC0 8C22BB98 */  lw    $v0, %lo(bss3_8015BB98)($at)
/* 0E7374 800ECCC4 00031882 */  srl   $v1, $v1, 2
/* 0E7378 800ECCC8 24840008 */  addiu $a0, $a0, 8
/* 0E737C 800ECCCC 1060000A */  beqz  $v1, .L3_800ECCF8
/* 0E7380 800ECCD0 24460008 */   addiu $a2, $v0, 8

.L3_800ECCD4:
/* 0E7384 800ECCD4 8CC20000 */  lw    $v0, ($a2)
/* 0E7388 800ECCD8 24C60004 */  addiu $a2, $a2, 4
/* 0E738C 800ECCDC AC820000 */  sw    $v0, ($a0)
/* 0E7390 800ECCE0 8FA20018 */  lw    $v0, 0x18($sp)
/* 0E7394 800ECCE4 24A50001 */  addiu $a1, $a1, 1
/* 0E7398 800ECCE8 00021082 */  srl   $v0, $v0, 2
/* 0E739C 800ECCEC 00A2102B */  sltu  $v0, $a1, $v0
/* 0E73A0 800ECCF0 1440FFF8 */  bnez  $v0, .L3_800ECCD4
/* 0E73A4 800ECCF4 24840004 */   addiu $a0, $a0, 4

.L3_800ECCF8:
/* 0E73A8 800ECCF8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0E73AC 800ECCFC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0E73B0 800ECD00 03E00008 */  jr    $ra
/* 0E73B4 800ECD04 27BD0030 */   addiu $sp, $sp, 0x30
