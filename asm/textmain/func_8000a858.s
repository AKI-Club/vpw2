glabel func_8000A858
/* 00B458 8000A858 3C028004 */  lui   $v0, %hi(dynPtr_DefaultCostumeData) # $v0, 0x8004
/* 00B45C 8000A85C 8C42FD9C */  lw    $v0, %lo(dynPtr_DefaultCostumeData)($v0)
/* 00B460 8000A860 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00B464 8000A864 1440000E */  bnez  $v0, .L8000A8A0
/* 00B468 8000A868 AFBF0030 */   sw    $ra, 0x30($sp)

/* 00B46C 8000A86C 27A40010 */  addiu $a0, $sp, 0x10
/* 00B470 8000A870 0C000F71 */  jal   GetFileLoc
/* 00B474 8000A874 2405006B */   li    $a1, 0x006B # file ID: default wrestler costume data

/* 00B478 8000A878 8FA40018 */  lw    $a0, 0x18($sp)
/* 00B47C 8000A87C 0C000226 */  jal   aki_malloc
/* 00B480 8000A880 00000000 */   nop   

/* 00B484 8000A884 3C018004 */  lui   $at, %hi(dynPtr_DefaultCostumeData) # $at, 0x8004
/* 00B488 8000A888 AC22FD9C */  sw    $v0, %lo(dynPtr_DefaultCostumeData)($at)
/* 00B48C 8000A88C 10400004 */  beqz  $v0, .L8000A8A0
/* 00B490 8000A890 27A40020 */   addiu $a0, $sp, 0x20

/* 00B494 8000A894 2405006B */  li    $a1, 0x006B # file ID: default wrestler costume data
/* 00B498 8000A898 0C000FA2 */  jal   LoadFile
/* 00B49C 8000A89C 00403021 */   addu  $a2, $v0, $zero

.L8000A8A0:
/* 00B4A0 8000A8A0 0C002A3B */  jal   LoadDefaultStrings
/* 00B4A4 8000A8A4 00000000 */   nop   

/* 00B4A8 8000A8A8 8FBF0030 */  lw    $ra, 0x30($sp)
/* 00B4AC 8000A8AC 03E00008 */  jr    $ra
/* 00B4B0 8000A8B0 27BD0038 */   addiu $sp, $sp, 0x38
