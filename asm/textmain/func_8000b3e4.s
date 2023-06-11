glabel func_8000B3E4
/* 00BFE4 8000B3E4 3C028004 */  lui   $v0, %hi(dynPtr_DefaultCostumeData) # $v0, 0x8004
/* 00BFE8 8000B3E8 8C42FD9C */  lw    $v0, %lo(dynPtr_DefaultCostumeData)($v0)
/* 00BFEC 8000B3EC 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 00BFF0 8000B3F0 AFBF005C */  sw    $ra, 0x5c($sp)
/* 00BFF4 8000B3F4 AFBE0058 */  sw    $fp, 0x58($sp)
/* 00BFF8 8000B3F8 AFB70054 */  sw    $s7, 0x54($sp)
/* 00BFFC 8000B3FC AFB60050 */  sw    $s6, 0x50($sp)
/* 00C000 8000B400 AFB5004C */  sw    $s5, 0x4c($sp)
/* 00C004 8000B404 AFB40048 */  sw    $s4, 0x48($sp)
/* 00C008 8000B408 AFB30044 */  sw    $s3, 0x44($sp)
/* 00C00C 8000B40C AFB20040 */  sw    $s2, 0x40($sp)
/* 00C010 8000B410 AFB1003C */  sw    $s1, 0x3c($sp)
/* 00C014 8000B414 1440000E */  bnez  $v0, .L8000B450
/* 00C018 8000B418 AFB00038 */   sw    $s0, 0x38($sp)

/* 00C01C 8000B41C 27A40010 */  addiu $a0, $sp, 0x10
/* 00C020 8000B420 0C000F71 */  jal   GetFileLoc
/* 00C024 8000B424 2405006B */   li    $a1, 0x6B # file ID 0x006B: default wrestler costumes

/* 00C028 8000B428 8FA40018 */  lw    $a0, 0x18($sp)
/* 00C02C 8000B42C 0C000226 */  jal   aki_malloc
/* 00C030 8000B430 00000000 */   nop   

/* 00C034 8000B434 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00C038 8000B438 AC22FD9C */  sw    $v0, %lo(dynPtr_DefaultCostumeData)($at)
/* 00C03C 8000B43C 10400004 */  beqz  $v0, .L8000B450
/* 00C040 8000B440 27A40020 */   addiu $a0, $sp, 0x20

/* 00C044 8000B444 2405006B */  li    $a1, 0x6B # file ID 0x006B: default wrestler costumes
/* 00C048 8000B448 0C000FA2 */  jal   LoadFile
/* 00C04C 8000B44C 00403021 */   addu  $a2, $v0, $zero

.L8000B450:
/* 00C050 8000B450 0C002A3B */  jal   LoadDefaultStrings
/* 00C054 8000B454 0000B021 */   addu  $s6, $zero, $zero

/* 00C058 8000B458 3C128004 */  lui   $s2, %hi(dynPtr_DefaultAppearance) # $s2, 0x8004
/* 00C05C 8000B45C 8E52FD8C */  lw    $s2, %lo(dynPtr_DefaultAppearance)($s2)
/* 00C060 8000B460 3C078004 */  lui   $a3, %hi(dynPtr_DefaultMovesets) # $a3, 0x8004
/* 00C064 8000B464 8CE7FD90 */  lw    $a3, %lo(dynPtr_DefaultMovesets)($a3)
/* 00C068 8000B468 3C178004 */  lui   $s7, %hi(ptrTbl_WrestlerData) # $s7, 0x8004
/* 00C06C 8000B46C 26F7FAB0 */  addiu $s7, %lo(ptrTbl_WrestlerData) # addiu $s7, $s7, -0x550
/* 00C070 8000B470 AFA70034 */  sw    $a3, 0x34($sp)

.L8000B474:
/* 00C074 8000B474 26C2FF8D */  addiu $v0, $s6, -0x73
/* 00C078 8000B478 2C420010 */  sltiu $v0, $v0, 0x10
/* 00C07C 8000B47C 14400007 */  bnez  $v0, .L8000B49C
/* 00C080 8000B480 26D30C8E */   addiu $s3, $s6, 0xc8e

/* 00C084 8000B484 26C2FFFF */  addiu $v0, $s6, -1
/* 00C088 8000B488 2C420072 */  sltiu $v0, $v0, 0x72
/* 00C08C 8000B48C 10400003 */  beqz  $v0, .L8000B49C
/* 00C090 8000B490 00009821 */   addu  $s3, $zero, $zero

/* 00C094 8000B494 8EE20000 */  lw    $v0, ($s7)
/* 00C098 8000B498 94530000 */  lhu   $s3, ($v0)

.L8000B49C:
/* 00C09C 8000B49C 0000A821 */  addu  $s5, $zero, $zero
/* 00C0A0 8000B4A0 327E0F00 */  andi  $fp, $s3, 0xF00
/* 00C0A4 8000B4A4 26540018 */  addiu $s4, $s2, 0x18

.L8000B4A8:
/* 00C0A8 8000B4A8 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00C0AC 8000B4AC 17C20003 */  bne   $fp, $v0, .L8000B4BC
/* 00C0B0 8000B4B0 02602821 */   addu  $a1, $s3, $zero

# get ID2 for mempak wrestler
/* 00C0B4 8000B4B4 08002D3B */  j     .L8000B4EC
/* 00C0B8 8000B4B8 2662F372 */   addiu $v0, $s3, -0xc8e

.L8000B4BC:
/* 00C0BC 8000B4BC 00001821 */  addu  $v1, $zero, $zero
/* 00C0C0 8000B4C0 3C048004 */  lui   $a0, %hi(ptrTbl_WrestlerData) # $a0, 0x8004
/* 00C0C4 8000B4C4 2484FAB0 */  addiu $a0, %lo(ptrTbl_WrestlerData) # addiu $a0, $a0, -0x550

.L8000B4C8:
/* 00C0C8 8000B4C8 8C820000 */  lw    $v0, ($a0)
/* 00C0CC 8000B4CC 94420000 */  lhu   $v0, ($v0)
/* 00C0D0 8000B4D0 10450006 */  beq   $v0, $a1, .L8000B4EC
/* 00C0D4 8000B4D4 00601021 */   addu  $v0, $v1, $zero

/* 00C0D8 8000B4D8 24630001 */  addiu $v1, $v1, 1
/* 00C0DC 8000B4DC 28620073 */  slti  $v0, $v1, 0x73
/* 00C0E0 8000B4E0 1440FFF9 */  bnez  $v0, .L8000B4C8
/* 00C0E4 8000B4E4 24840004 */   addiu $a0, $a0, 4

/* 00C0E8 8000B4E8 00001021 */  addu  $v0, $zero, $zero

.L8000B4EC:
/* 00C0EC 8000B4EC 00021080 */  sll   $v0, $v0, 2
/* 00C0F0 8000B4F0 3C078004 */  lui   $a3, %hi(ptrTbl_WrestlerData) # $a3, 0x8004
/* 00C0F4 8000B4F4 24E7FAB0 */  addiu $a3, %lo(ptrTbl_WrestlerData) # addiu $a3, $a3, -0x550
/* 00C0F8 8000B4F8 00471021 */  addu  $v0, $v0, $a3
/* 00C0FC 8000B4FC 8C500000 */  lw    $s0, ($v0)
/* 00C100 8000B500 9602000E */  lhu   $v0, 0xe($s0)
/* 00C104 8000B504 02402021 */  addu  $a0, $s2, $zero
/* 00C108 8000B508 3C038004 */  lui   $v1, %hi(dynPtr_DefaultCostumeData) # $v1, 0x8004
/* 00C10C 8000B50C 8C63FD9C */  lw    $v1, %lo(dynPtr_DefaultCostumeData)($v1)
/* 00C110 8000B510 00551021 */  addu  $v0, $v0, $s5
/* 00C114 8000B514 00022840 */  sll   $a1, $v0, 1
/* 00C118 8000B518 00A22821 */  addu  $a1, $a1, $v0
/* 00C11C 8000B51C 00052900 */  sll   $a1, $a1, 4
/* 00C120 8000B520 00A22821 */  addu  $a1, $a1, $v0
/* 00C124 8000B524 0C002BA8 */  jal   LoadWrestlerCostume
/* 00C128 8000B528 00652821 */   addu  $a1, $v1, $a1

/* 00C12C 8000B52C 02402021 */  addu  $a0, $s2, $zero
/* 00C130 8000B530 96100010 */  lhu   $s0, 0x10($s0)
/* 00C134 8000B534 3C118004 */  lui   $s1, %hi(dynPtr_DefaultNames) # $s1, 0x8004
/* 00C138 8000B538 8E31FDA0 */  lw    $s1, %lo(dynPtr_DefaultNames)($s1)
/* 00C13C 8000B53C 0C00C950 */  jal   bzero
/* 00C140 8000B540 24050019 */   li    $a1, 25

/* 00C144 8000B544 3C058004 */  lui   $a1, %hi(dynPtr_DefaultNames) # $a1, 0x8004
/* 00C148 8000B548 8CA5FDA0 */  lw    $a1, %lo(dynPtr_DefaultNames)($a1)
/* 00C14C 8000B54C 00108040 */  sll   $s0, $s0, 1
/* 00C150 8000B550 02118021 */  addu  $s0, $s0, $s1
/* 00C154 8000B554 96020000 */  lhu   $v0, ($s0)
/* 00C158 8000B558 02402021 */  addu  $a0, $s2, $zero
/* 00C15C 8000B55C 26B50001 */  addiu $s5, $s5, 1
/* 00C160 8000B560 0C001B1E */  jal   func_80006C78
/* 00C164 8000B564 00A22821 */   addu  $a1, $a1, $v0

/* 00C168 8000B568 26510019 */  addiu $s1, $s2, 0x19
/* 00C16C 8000B56C 02202021 */  addu  $a0, $s1, $zero
/* 00C170 8000B570 0C00C950 */  jal   bzero
/* 00C174 8000B574 2405000F */   li    $a1, 15

/* 00C178 8000B578 96020002 */  lhu   $v0, 2($s0)
/* 00C17C 8000B57C 3C058004 */  lui   $a1, %hi(dynPtr_DefaultNames) # $a1, 0x8004
/* 00C180 8000B580 8CA5FDA0 */  lw    $a1, %lo(dynPtr_DefaultNames)($a1)
/* 00C184 8000B584 2652003E */  addiu $s2, $s2, 0x3e
/* 00C188 8000B588 02202021 */  addu  $a0, $s1, $zero
/* 00C18C 8000B58C 0C001B1E */  jal   func_80006C78
/* 00C190 8000B590 00A22821 */   addu  $a1, $a1, $v0

/* 00C194 8000B594 A280000F */  sb    $zero, 0xf($s4)
/* 00C198 8000B598 A2800000 */  sb    $zero, ($s4)
/* 00C19C 8000B59C 2AA20004 */  slti  $v0, $s5, 4
/* 00C1A0 8000B5A0 1440FFC1 */  bnez  $v0, .L8000B4A8
/* 00C1A4 8000B5A4 2694003E */   addiu $s4, $s4, 0x3e

/* 00C1A8 8000B5A8 8FA50034 */  lw    $a1, 0x34($sp)
/* 00C1AC 8000B5AC 0C002C69 */  jal   func_8000B1A4
/* 00C1B0 8000B5B0 02602021 */   addu  $a0, $s3, $zero

/* 00C1B4 8000B5B4 26F70004 */  addiu $s7, $s7, 4
/* 00C1B8 8000B5B8 8FA70034 */  lw    $a3, 0x34($sp)
/* 00C1BC 8000B5BC 26D60001 */  addiu $s6, $s6, 1
/* 00C1C0 8000B5C0 2AC20073 */  slti  $v0, $s6, 0x73
/* 00C1C4 8000B5C4 24E700C0 */  addiu $a3, $a3, 0xc0
/* 00C1C8 8000B5C8 1440FFAA */  bnez  $v0, .L8000B474
/* 00C1CC 8000B5CC AFA70034 */   sw    $a3, 0x34($sp)

/* 00C1D0 8000B5D0 3C048004 */  lui   $a0, %hi(dynPtr_DefaultCostumeData) # $a0, 0x8004
/* 00C1D4 8000B5D4 8C84FD9C */  lw    $a0, %lo(dynPtr_DefaultCostumeData)($a0)
/* 00C1D8 8000B5D8 10800005 */  beqz  $a0, .L8000B5F0
/* 00C1DC 8000B5DC 00000000 */   nop   

/* 00C1E0 8000B5E0 0C000280 */  jal   aki_free
/* 00C1E4 8000B5E4 00000000 */   nop   

/* 00C1E8 8000B5E8 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00C1EC 8000B5EC AC20FD9C */  sw    $zero, %lo(dynPtr_DefaultCostumeData)($at)

.L8000B5F0:
/* 00C1F0 8000B5F0 0C002A50 */  jal   UnloadDefaultStrings
/* 00C1F4 8000B5F4 00000000 */   nop   

/* 00C1F8 8000B5F8 8FBF005C */  lw    $ra, 0x5c($sp)
/* 00C1FC 8000B5FC 8FBE0058 */  lw    $fp, 0x58($sp)
/* 00C200 8000B600 8FB70054 */  lw    $s7, 0x54($sp)
/* 00C204 8000B604 8FB60050 */  lw    $s6, 0x50($sp)
/* 00C208 8000B608 8FB5004C */  lw    $s5, 0x4c($sp)
/* 00C20C 8000B60C 8FB40048 */  lw    $s4, 0x48($sp)
/* 00C210 8000B610 8FB30044 */  lw    $s3, 0x44($sp)
/* 00C214 8000B614 8FB20040 */  lw    $s2, 0x40($sp)
/* 00C218 8000B618 8FB1003C */  lw    $s1, 0x3c($sp)
/* 00C21C 8000B61C 8FB00038 */  lw    $s0, 0x38($sp)
/* 00C220 8000B620 03E00008 */  jr    $ra
/* 00C224 8000B624 27BD0060 */   addiu $sp, $sp, 0x60
