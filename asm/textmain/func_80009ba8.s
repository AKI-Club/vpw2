# related to wrestler short name?

# Params:
# $a0 - Wrestler ID4?

glabel func_80009BA8
/* 00A7A8 80009BA8 3C028004 */  lui   $v0, %hi(dynPtr_DefaultAppearance) # $v0, 0x8004
/* 00A7AC 80009BAC 8C42FD8C */  lw    $v0, %lo(dynPtr_DefaultAppearance)($v0)
/* 00A7B0 80009BB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A7B4 80009BB4 14400029 */  bnez  $v0, .L80009C5C
/* 00A7B8 80009BB8 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00A7BC 80009BBC 00004021 */  addu  $t0, $zero, $zero
/* 00A7C0 80009BC0 3C0A800B */  lui   $t2, %hi(bssMain_800B5CC0) # $t2, 0x800b
/* 00A7C4 80009BC4 254A5CC0 */  addiu $t2, %lo(bssMain_800B5CC0) # addiu $t2, $t2, 0x5cc0
/* 00A7C8 80009BC8 00003821 */  addu  $a3, $zero, $zero

.L80009BCC:
/* 00A7CC 80009BCC 0008482B */  sltu  $t1, $zero, $t0
/* 00A7D0 80009BD0 00001821 */  addu  $v1, $zero, $zero
/* 00A7D4 80009BD4 01403021 */  addu  $a2, $t2, $zero

.L80009BD8:
/* 00A7D8 80009BD8 94C20000 */  lhu   $v0, ($a2) # load wrestler ID4
/* 00A7DC 80009BDC 5444000C */  bnel  $v0, $a0, .L80009C10
/* 00A7E0 80009BE0 24630001 */   addiu $v1, $v1, 1

/* 00A7E4 80009BE4 04A00014 */  bltz  $a1, .L80009C38
/* 00A7E8 80009BE8 00031080 */   sll   $v0, $v1, 2

# start of selected wrestler costume numbers
/* 00A7EC 80009BEC 3C02800A */  lui   $v0, %hi(bssMain_800A3FA0)
/* 00A7F0 80009BF0 00431021 */  addu  $v0, $v0, $v1
/* 00A7F4 80009BF4 90423FA0 */  lbu   $v0, %lo(bssMain_800A3FA0)($v0)
/* 00A7F8 80009BF8 00451026 */  xor   $v0, $v0, $a1
/* 00A7FC 80009BFC 2C420001 */  sltiu $v0, $v0, 1
/* 00A800 80009C00 00491025 */  or    $v0, $v0, $t1
/* 00A804 80009C04 1440000C */  bnez  $v0, .L80009C38
/* 00A808 80009C08 00031080 */   sll   $v0, $v1, 2

/* 00A80C 80009C0C 24630001 */  addiu $v1, $v1, 1

.L80009C10:
/* 00A810 80009C10 24E70001 */  addiu $a3, $a3, 1
/* 00A814 80009C14 28E20028 */  slti  $v0, $a3, 40
/* 00A818 80009C18 1440FFEF */  bnez  $v0, .L80009BD8
/* 00A81C 80009C1C 24C60002 */   addiu $a2, $a2, 2

/* 00A820 80009C20 25080001 */  addiu $t0, $t0, 1
/* 00A824 80009C24 29020002 */  slti  $v0, $t0, 2
/* 00A828 80009C28 1440FFE8 */  bnez  $v0, .L80009BCC
/* 00A82C 80009C2C 00003821 */   addu  $a3, $zero, $zero

/* 00A830 80009C30 00001821 */  addu  $v1, $zero, $zero
/* 00A834 80009C34 00031080 */  sll   $v0, $v1, 2

.L80009C38:
/* 00A838 80009C38 00431021 */  addu  $v0, $v0, $v1
/* 00A83C 80009C3C 00021080 */  sll   $v0, $v0, 2
/* 00A840 80009C40 00431023 */  subu  $v0, $v0, $v1
/* 00A844 80009C44 00021100 */  sll   $v0, $v0, 4
/* 00A848 80009C48 00431021 */  addu  $v0, $v0, $v1
# beginning of appearance block
/* 00A84C 80009C4C 3C03800A */  lui   $v1, %hi(bssMain_800981EC) # $v1, 0x800a
/* 00A850 80009C50 246381EC */  addiu $v1, %lo(bssMain_800981EC) # addiu $v1, $v1, -0x7e14
/* 00A854 80009C54 0800271A */  j     .L80009C68
/* 00A858 80009C58 00431021 */   addu  $v0, $v0, $v1

.L80009C5C:
/* 00A85C 80009C5C 0C002B2D */  jal   func_8000ACB4
/* 00A860 80009C60 00000000 */   nop   

/* 00A864 80009C64 24420029 */  addiu $v0, $v0, 0x29

.L80009C68:
/* 00A868 80009C68 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00A86C 80009C6C 03E00008 */  jr    $ra
/* 00A870 80009C70 27BD0018 */   addiu $sp, $sp, 0x18
