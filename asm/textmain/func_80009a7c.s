# related to wrestler full name and battle royals?

# Params:
# $a0 - Wrestler ID4

glabel func_80009A7C
/* 00A67C 80009A7C 3C028004 */  lui   $v0, %hi(dynPtr_DefaultAppearance) # $v0, 0x8004
/* 00A680 80009A80 8C42FD8C */  lw    $v0, %lo(dynPtr_DefaultAppearance)($v0)
/* 00A684 80009A84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A688 80009A88 1440001C */  bnez  $v0, .L80009AFC
/* 00A68C 80009A8C AFBF0010 */   sw    $ra, 0x10($sp)

/* 00A690 80009A90 00003021 */  addu  $a2, $zero, $zero
/* 00A694 80009A94 3C07800B */  lui   $a3, %hi(bssMain_800B5CC0) # $a3, 0x800b
/* 00A698 80009A98 24E75CC0 */  addiu $a3, %lo(bssMain_800B5CC0) # addiu $a3, $a3, 0x5cc0
/* 00A69C 80009A9C 00002821 */  addu  $a1, $zero, $zero

.L80009AA0:
/* 00A6A0 80009AA0 00E01821 */  addu  $v1, $a3, $zero

.L80009AA4:
/* 00A6A4 80009AA4 94620000 */  lhu   $v0, ($v1)
/* 00A6A8 80009AA8 5044000A */  beql  $v0, $a0, .L80009AD4
/* 00A6AC 80009AAC 00A01821 */   addu  $v1, $a1, $zero

/* 00A6B0 80009AB0 24A50001 */  addiu $a1, $a1, 1
/* 00A6B4 80009AB4 28A20028 */  slti  $v0, $a1, 40
/* 00A6B8 80009AB8 1440FFFA */  bnez  $v0, .L80009AA4
/* 00A6BC 80009ABC 24630002 */   addiu $v1, $v1, 2

/* 00A6C0 80009AC0 24C60001 */  addiu $a2, $a2, 1
/* 00A6C4 80009AC4 28C20002 */  slti  $v0, $a2, 2
/* 00A6C8 80009AC8 1440FFF5 */  bnez  $v0, .L80009AA0
/* 00A6CC 80009ACC 00002821 */   addu  $a1, $zero, $zero

/* 00A6D0 80009AD0 00001821 */  addu  $v1, $zero, $zero

.L80009AD4:
/* 00A6D4 80009AD4 00031080 */  sll   $v0, $v1, 2
/* 00A6D8 80009AD8 00431021 */  addu  $v0, $v0, $v1
/* 00A6DC 80009ADC 00021080 */  sll   $v0, $v0, 2
/* 00A6E0 80009AE0 00431023 */  subu  $v0, $v0, $v1
/* 00A6E4 80009AE4 00021100 */  sll   $v0, $v0, 4
/* 00A6E8 80009AE8 00431021 */  addu  $v0, $v0, $v1
/* 00A6EC 80009AEC 3C03800A */  lui   $v1, %hi(bssMain_800981C4) # $v1, 0x800a
/* 00A6F0 80009AF0 246381C4 */  addiu $v1, %lo(bssMain_800981C4) # addiu $v1, $v1, -0x7e3c
/* 00A6F4 80009AF4 080026C1 */  j     .L80009B04
/* 00A6F8 80009AF8 00431021 */   addu  $v0, $v0, $v1

.L80009AFC:
/* 00A6FC 80009AFC 0C002B2D */  jal   func_8000ACB4
/* 00A700 80009B00 00000000 */   nop   

.L80009B04:
/* 00A704 80009B04 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00A708 80009B08 03E00008 */  jr    $ra
/* 00A70C 80009B0C 27BD0018 */   addiu $sp, $sp, 0x18
