# Params:
# $a0 - Wrestler ID4
# $a1 - ?
# $a2 - Write address?

glabel func_8000B06C
/* 00BC6C 8000B06C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00BC70 8000B070 AFB20018 */  sw    $s2, 0x18($sp)
/* 00BC74 8000B074 00C09021 */  addu  $s2, $a2, $zero
/* 00BC78 8000B078 30830F00 */  andi  $v1, $a0, 0xF00
/* 00BC7C 8000B07C 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00BC80 8000B080 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00BC84 8000B084 AFB10014 */  sw    $s1, 0x14($sp)
/* 00BC88 8000B088 14620003 */  bne   $v1, $v0, .L8000B098
/* 00BC8C 8000B08C AFB00010 */   sw    $s0, 0x10($sp)

# get ID2 for mempak wrestler
/* 00BC90 8000B090 08002C32 */  j     .L8000B0C8
/* 00BC94 8000B094 2482F372 */   addiu $v0, $a0, -0xc8e

.L8000B098:
/* 00BC98 8000B098 00001821 */  addu  $v1, $zero, $zero
/* 00BC9C 8000B09C 3C068004 */  lui   $a2, %hi(ptrTbl_WrestlerData) # $a2, 0x8004
/* 00BCA0 8000B0A0 24C6FAB0 */  addiu $a2, %lo(ptrTbl_WrestlerData) # addiu $a2, $a2, -0x550

.L8000B0A4:
/* 00BCA4 8000B0A4 8CC20000 */  lw    $v0, ($a2)
/* 00BCA8 8000B0A8 94420000 */  lhu   $v0, ($v0)
/* 00BCAC 8000B0AC 10440006 */  beq   $v0, $a0, .L8000B0C8
/* 00BCB0 8000B0B0 00601021 */   addu  $v0, $v1, $zero

/* 00BCB4 8000B0B4 24630001 */  addiu $v1, $v1, 1
/* 00BCB8 8000B0B8 28620073 */  slti  $v0, $v1, 0x73
/* 00BCBC 8000B0BC 1440FFF9 */  bnez  $v0, .L8000B0A4
/* 00BCC0 8000B0C0 24C60004 */   addiu $a2, $a2, 4

/* 00BCC4 8000B0C4 00001021 */  addu  $v0, $zero, $zero

.L8000B0C8:
/* 00BCC8 8000B0C8 00021080 */  sll   $v0, $v0, 2
/* 00BCCC 8000B0CC 3C108004 */  lui   $s0, %hi(ptrTbl_WrestlerData)
/* 00BCD0 8000B0D0 02028021 */  addu  $s0, $s0, $v0
/* 00BCD4 8000B0D4 8E10FAB0 */  lw    $s0, %lo(ptrTbl_WrestlerData)($s0)
/* 00BCD8 8000B0D8 9602000E */  lhu   $v0, 0xe($s0)
/* 00BCDC 8000B0DC 02402021 */  addu  $a0, $s2, $zero
/* 00BCE0 8000B0E0 3C038004 */  lui   $v1, %hi(dynPtr_DefaultCostumeData) # $v1, 0x8004
/* 00BCE4 8000B0E4 8C63FD9C */  lw    $v1, %lo(dynPtr_DefaultCostumeData)($v1)
/* 00BCE8 8000B0E8 00451021 */  addu  $v0, $v0, $a1
/* 00BCEC 8000B0EC 00022840 */  sll   $a1, $v0, 1
/* 00BCF0 8000B0F0 00A22821 */  addu  $a1, $a1, $v0
/* 00BCF4 8000B0F4 00052900 */  sll   $a1, $a1, 4
/* 00BCF8 8000B0F8 00A22821 */  addu  $a1, $a1, $v0
/* 00BCFC 8000B0FC 0C002BA8 */  jal   LoadWrestlerCostume
/* 00BD00 8000B100 00652821 */   addu  $a1, $v1, $a1

/* 00BD04 8000B104 02402021 */  addu  $a0, $s2, $zero
/* 00BD08 8000B108 96100010 */  lhu   $s0, 0x10($s0)
/* 00BD0C 8000B10C 3C118004 */  lui   $s1, %hi(dynPtr_DefaultNames) # $s1, 0x8004
/* 00BD10 8000B110 8E31FDA0 */  lw    $s1, %lo(dynPtr_DefaultNames)($s1)
/* 00BD14 8000B114 0C00C950 */  jal   bzero
/* 00BD18 8000B118 24050019 */   li    $a1, 25

/* 00BD1C 8000B11C 3C058004 */  lui   $a1, %hi(dynPtr_DefaultNames) # $a1, 0x8004
/* 00BD20 8000B120 8CA5FDA0 */  lw    $a1, %lo(dynPtr_DefaultNames)($a1)
/* 00BD24 8000B124 00108040 */  sll   $s0, $s0, 1
/* 00BD28 8000B128 02118021 */  addu  $s0, $s0, $s1
/* 00BD2C 8000B12C 96020000 */  lhu   $v0, ($s0)
/* 00BD30 8000B130 02402021 */  addu  $a0, $s2, $zero
/* 00BD34 8000B134 0C001B1E */  jal   func_80006C78
/* 00BD38 8000B138 00A22821 */   addu  $a1, $a1, $v0

/* 00BD3C 8000B13C 26510019 */  addiu $s1, $s2, 0x19
/* 00BD40 8000B140 02202021 */  addu  $a0, $s1, $zero
/* 00BD44 8000B144 0C00C950 */  jal   bzero
/* 00BD48 8000B148 2405000F */   li    $a1, 15

/* 00BD4C 8000B14C 96020002 */  lhu   $v0, 2($s0)
/* 00BD50 8000B150 3C058004 */  lui   $a1, %hi(dynPtr_DefaultNames) # $a1, 0x8004
/* 00BD54 8000B154 8CA5FDA0 */  lw    $a1, %lo(dynPtr_DefaultNames)($a1)
/* 00BD58 8000B158 02202021 */  addu  $a0, $s1, $zero
/* 00BD5C 8000B15C 0C001B1E */  jal   func_80006C78
/* 00BD60 8000B160 00A22821 */   addu  $a1, $a1, $v0

/* 00BD64 8000B164 A2400027 */  sb    $zero, 0x27($s2)
/* 00BD68 8000B168 A2400018 */  sb    $zero, 0x18($s2)
/* 00BD6C 8000B16C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00BD70 8000B170 8FB20018 */  lw    $s2, 0x18($sp)
/* 00BD74 8000B174 8FB10014 */  lw    $s1, 0x14($sp)
/* 00BD78 8000B178 8FB00010 */  lw    $s0, 0x10($sp)
/* 00BD7C 8000B17C 03E00008 */  jr    $ra
/* 00BD80 8000B180 27BD0020 */   addiu $sp, $sp, 0x20
