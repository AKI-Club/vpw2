# related to battle royals?

# Params:
# $a0 = wrestler ID4

glabel func_80009E90
/* 00AA90 80009E90 3C028004 */  lui   $v0, %hi(dynPtr_DefaultMovesets) # $v0, 0x8004
/* 00AA94 80009E94 8C42FD90 */  lw    $v0, %lo(dynPtr_DefaultMovesets)($v0)
/* 00AA98 80009E98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00AA9C 80009E9C 14400020 */  bnez  $v0, .L80009F20
/* 00AAA0 80009EA0 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00AAA4 80009EA4 00003021 */  addu  $a2, $zero, $zero
/* 00AAA8 80009EA8 3C07800B */  lui   $a3, %hi(bssMain_800B5CC0) # $a3, 0x800b
/* 00AAAC 80009EAC 24E75CC0 */  addiu $a3, %lo(bssMain_800B5CC0) # addiu $a3, $a3, 0x5cc0
/* 00AAB0 80009EB0 00002821 */  addu  $a1, $zero, $zero

.L80009EB4:
/* 00AAB4 80009EB4 00E01821 */  addu  $v1, $a3, $zero

.L80009EB8:
/* 00AAB8 80009EB8 94620000 */  lhu   $v0, ($v1)
/* 00AABC 80009EBC 5044000A */  beql  $v0, $a0, .L80009EE8
/* 00AAC0 80009EC0 00A01821 */   addu  $v1, $a1, $zero

/* 00AAC4 80009EC4 24A50001 */  addiu $a1, $a1, 1
/* 00AAC8 80009EC8 28A20028 */  slti  $v0, $a1, 40
/* 00AACC 80009ECC 1440FFFA */  bnez  $v0, .L80009EB8
/* 00AAD0 80009ED0 24630002 */   addiu $v1, $v1, 2

/* 00AAD4 80009ED4 24C60001 */  addiu $a2, $a2, 1
/* 00AAD8 80009ED8 28C20002 */  slti  $v0, $a2, 2
/* 00AADC 80009EDC 1440FFF5 */  bnez  $v0, .L80009EB4
/* 00AAE0 80009EE0 00002821 */   addu  $a1, $zero, $zero

/* 00AAE4 80009EE4 00001821 */  addu  $v1, $zero, $zero

.L80009EE8:
/* 00AAE8 80009EE8 00031080 */  sll   $v0, $v1, 2
/* 00AAEC 80009EEC 00431021 */  addu  $v0, $v0, $v1
/* 00AAF0 80009EF0 00021080 */  sll   $v0, $v0, 2
/* 00AAF4 80009EF4 00431023 */  subu  $v0, $v0, $v1
/* 00AAF8 80009EF8 00021100 */  sll   $v0, $v0, 4
/* 00AAFC 80009EFC 00431021 */  addu  $v0, $v0, $v1
/* 00AB00 80009F00 3C03800A */  lui   $v1, %hi(bssMain_800980D2)
/* 00AB04 80009F04 00621821 */  addu  $v1, $v1, $v0
/* 00AB08 80009F08 906380D2 */  lbu   $v1, %lo(bssMain_800980D2)($v1)
/* 00AB0C 80009F0C 3C01800A */  lui   $at, %hi(bssMain_800980D1)
/* 00AB10 80009F10 00220821 */  addu  $at, $at, $v0
/* 00AB14 80009F14 902280D1 */  lbu   $v0, %lo(bssMain_800980D1)($at)
/* 00AB18 80009F18 080027CD */  j     .L80009F34
/* 00AB1C 80009F1C 00031A00 */   sll   $v1, $v1, 8

.L80009F20:
/* 00AB20 80009F20 0C002B7B */  jal   func_8000ADEC
/* 00AB24 80009F24 00000000 */   nop   

/* 00AB28 80009F28 90430005 */  lbu   $v1, 5($v0)
/* 00AB2C 80009F2C 90420004 */  lbu   $v0, 4($v0)
/* 00AB30 80009F30 00031A00 */  sll   $v1, $v1, 8

.L80009F34:
/* 00AB34 80009F34 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00AB38 80009F38 00431021 */  addu  $v0, $v0, $v1
/* 00AB3C 80009F3C 03E00008 */  jr    $ra
/* 00AB40 80009F40 27BD0018 */   addiu $sp, $sp, 0x18
