glabel func_8000AAAC
/* 00B6AC 8000AAAC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 00B6B0 8000AAB0 24040F80 */  li    $a0, 3968
/* 00B6B4 8000AAB4 AFBF0044 */  sw    $ra, 0x44($sp)
/* 00B6B8 8000AAB8 AFB40040 */  sw    $s4, 0x40($sp)
/* 00B6BC 8000AABC AFB3003C */  sw    $s3, 0x3c($sp)
/* 00B6C0 8000AAC0 AFB20038 */  sw    $s2, 0x38($sp)
/* 00B6C4 8000AAC4 AFB10034 */  sw    $s1, 0x34($sp)
/* 00B6C8 8000AAC8 0C000226 */  jal   aki_malloc
/* 00B6CC 8000AACC AFB00030 */   sw    $s0, 0x30($sp)

/* 00B6D0 8000AAD0 00409821 */  addu  $s3, $v0, $zero
/* 00B6D4 8000AAD4 3C018004 */  lui   $at, %hi(dynPtr_MempakAppearance) # $at, 0x8004
/* 00B6D8 8000AAD8 AC33FD94 */  sw    $s3, %lo(dynPtr_MempakAppearance)($at)
/* 00B6DC 8000AADC 0C000226 */  jal   aki_malloc
/* 00B6E0 8000AAE0 24040C00 */   li    $a0, 3072

/* 00B6E4 8000AAE4 3C048004 */  lui   $a0, %hi(dynPtr_MempakAppearance) # $a0, 0x8004
/* 00B6E8 8000AAE8 8C84FD94 */  lw    $a0, %lo(dynPtr_MempakAppearance)($a0)
/* 00B6EC 8000AAEC 0040A021 */  addu  $s4, $v0, $zero
/* 00B6F0 8000AAF0 3C018004 */  lui   $at, %hi(dynPtr_MempakMovesets) # $at, 0x8004
/* 00B6F4 8000AAF4 AC34FD98 */  sw    $s4, %lo(dynPtr_MempakMovesets)($at)
/* 00B6F8 8000AAF8 0C00C950 */  jal   bzero
/* 00B6FC 8000AAFC 24050F80 */   li    $a1, 3968

/* 00B700 8000AB00 3C048004 */  lui   $a0, %hi(dynPtr_MempakMovesets) # $a0, 0x8004
/* 00B704 8000AB04 8C84FD98 */  lw    $a0, %lo(dynPtr_MempakMovesets)($a0)
/* 00B708 8000AB08 0C00C950 */  jal   bzero
/* 00B70C 8000AB0C 24050C00 */   li    $a1, 3072

/* 00B710 8000AB10 3C028004 */  lui   $v0, %hi(dynPtr_DefaultCostumeData) # $v0, 0x8004
/* 00B714 8000AB14 8C42FD9C */  lw    $v0, %lo(dynPtr_DefaultCostumeData)($v0)
/* 00B718 8000AB18 1440000D */  bnez  $v0, .L8000AB50
/* 00B71C 8000AB1C 27A40010 */   addiu $a0, $sp, 0x10

/* 00B720 8000AB20 0C000F71 */  jal   GetFileLoc
/* 00B724 8000AB24 2405006B */   li    $a1, 0x6B # file ID 0x006B: default wrestler costume data

/* 00B728 8000AB28 8FA40018 */  lw    $a0, 0x18($sp)
/* 00B72C 8000AB2C 0C000226 */  jal   aki_malloc
/* 00B730 8000AB30 00000000 */   nop   

/* 00B734 8000AB34 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00B738 8000AB38 AC22FD9C */  sw    $v0, %lo(dynPtr_DefaultCostumeData)($at)
/* 00B73C 8000AB3C 10400004 */  beqz  $v0, .L8000AB50
/* 00B740 8000AB40 27A40020 */   addiu $a0, $sp, 0x20

/* 00B744 8000AB44 2405006B */  li    $a1, 0x6B # file ID 0x006B: default wrestler costume data
/* 00B748 8000AB48 0C000FA2 */  jal   LoadFile
/* 00B74C 8000AB4C 00403021 */   addu  $a2, $v0, $zero

.L8000AB50:
/* 00B750 8000AB50 0C002A3B */  jal   LoadDefaultStrings
/* 00B754 8000AB54 00008821 */   addu  $s1, $zero, $zero

.L8000AB58:
/* 00B758 8000AB58 06210002 */  bgez  $s1, .L8000AB64
/* 00B75C 8000AB5C 02201021 */   addu  $v0, $s1, $zero

/* 00B760 8000AB60 2622000F */  addiu $v0, $s1, 0xf

.L8000AB64:
/* 00B764 8000AB64 00021103 */  sra   $v0, $v0, 4
/* 00B768 8000AB68 00021100 */  sll   $v0, $v0, 4
/* 00B76C 8000AB6C 02221023 */  subu  $v0, $s1, $v0
/* 00B770 8000AB70 24520C01 */  addiu $s2, $v0, 0xc01
/* 00B774 8000AB74 00008021 */  addu  $s0, $zero, $zero

.L8000AB78:
/* 00B778 8000AB78 02402021 */  addu  $a0, $s2, $zero
/* 00B77C 8000AB7C 02002821 */  addu  $a1, $s0, $zero
/* 00B780 8000AB80 0C002C1B */  jal   func_8000B06C
/* 00B784 8000AB84 02603021 */   addu  $a2, $s3, $zero

/* 00B788 8000AB88 26100001 */  addiu $s0, $s0, 1
/* 00B78C 8000AB8C 2A020004 */  slti  $v0, $s0, 4
/* 00B790 8000AB90 1440FFF9 */  bnez  $v0, .L8000AB78
/* 00B794 8000AB94 2673003E */   addiu $s3, $s3, 0x3e

/* 00B798 8000AB98 02402021 */  addu  $a0, $s2, $zero
/* 00B79C 8000AB9C 0C002C69 */  jal   func_8000B1A4
/* 00B7A0 8000ABA0 02802821 */   addu  $a1, $s4, $zero

/* 00B7A4 8000ABA4 26310001 */  addiu $s1, $s1, 1
/* 00B7A8 8000ABA8 2A220010 */  slti  $v0, $s1, 0x10
/* 00B7AC 8000ABAC 1440FFEA */  bnez  $v0, .L8000AB58
/* 00B7B0 8000ABB0 269400C0 */   addiu $s4, $s4, 0xc0

/* 00B7B4 8000ABB4 3C048004 */  lui   $a0, %hi(dynPtr_DefaultCostumeData) # $a0, 0x8004
/* 00B7B8 8000ABB8 8C84FD9C */  lw    $a0, %lo(dynPtr_DefaultCostumeData)($a0)
/* 00B7BC 8000ABBC 10800005 */  beqz  $a0, .L8000ABD4
/* 00B7C0 8000ABC0 00000000 */   nop   

/* 00B7C4 8000ABC4 0C000280 */  jal   aki_free
/* 00B7C8 8000ABC8 00000000 */   nop   

/* 00B7CC 8000ABCC 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00B7D0 8000ABD0 AC20FD9C */  sw    $zero, %lo(dynPtr_DefaultCostumeData)($at)

.L8000ABD4:
/* 00B7D4 8000ABD4 0C002A50 */  jal   UnloadDefaultStrings
/* 00B7D8 8000ABD8 00000000 */   nop   

/* 00B7DC 8000ABDC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 00B7E0 8000ABE0 8FB40040 */  lw    $s4, 0x40($sp)
/* 00B7E4 8000ABE4 8FB3003C */  lw    $s3, 0x3c($sp)
/* 00B7E8 8000ABE8 8FB20038 */  lw    $s2, 0x38($sp)
/* 00B7EC 8000ABEC 8FB10034 */  lw    $s1, 0x34($sp)
/* 00B7F0 8000ABF0 8FB00030 */  lw    $s0, 0x30($sp)
/* 00B7F4 8000ABF4 03E00008 */  jr    $ra
/* 00B7F8 8000ABF8 27BD0048 */   addiu $sp, $sp, 0x48
