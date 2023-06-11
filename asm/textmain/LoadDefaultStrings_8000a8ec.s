# Load default strings from file ID 0x006C

glabel LoadDefaultStrings
/* 00B4EC 8000A8EC 3C028004 */  lui   $v0, %hi(dynPtr_DefaultNames) # $v0, 0x8004
/* 00B4F0 8000A8F0 8C42FDA0 */  lw    $v0, %lo(dynPtr_DefaultNames)($v0)
/* 00B4F4 8000A8F4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00B4F8 8000A8F8 1440000E */  bnez  $v0, .L8000A934
/* 00B4FC 8000A8FC AFBF0030 */   sw    $ra, 0x30($sp)

/* 00B500 8000A900 27A40010 */  addiu $a0, $sp, 0x10
/* 00B504 8000A904 0C000F71 */  jal   GetFileLoc
/* 00B508 8000A908 2405006C */   li    $a1, 0x006C # file ID: default strings

/* 00B50C 8000A90C 8FA40018 */  lw    $a0, 0x18($sp)
/* 00B510 8000A910 0C000226 */  jal   aki_malloc
/* 00B514 8000A914 00000000 */   nop   

/* 00B518 8000A918 3C018004 */  lui   $at, %hi(dynPtr_DefaultNames) # $at, 0x8004
/* 00B51C 8000A91C AC22FDA0 */  sw    $v0, %lo(dynPtr_DefaultNames)($at)
/* 00B520 8000A920 10400004 */  beqz  $v0, .L8000A934
/* 00B524 8000A924 27A40020 */   addiu $a0, $sp, 0x20

/* 00B528 8000A928 2405006C */  li    $a1, 0x006C # file ID: default strings
/* 00B52C 8000A92C 0C000FA2 */  jal   LoadFile
/* 00B530 8000A930 00403021 */   addu  $a2, $v0, $zero

.L8000A934:
/* 00B534 8000A934 8FBF0030 */  lw    $ra, 0x30($sp)
/* 00B538 8000A938 03E00008 */  jr    $ra
/* 00B53C 8000A93C 27BD0038 */   addiu $sp, $sp, 0x38
