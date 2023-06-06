# Params:
# $a0 -
# $a1 -
# $a2 -

glabel func_80000E98
/* 001A98 80000E98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001A9C 80000E9C AFB10014 */  sw    $s1, 0x14($sp)
/* 001AA0 80000EA0 00808821 */  addu  $s1, $a0, $zero
/* 001AA4 80000EA4 AFB00010 */  sw    $s0, 0x10($sp)
/* 001AA8 80000EA8 00A08021 */  addu  $s0, $a1, $zero
/* 001AAC 80000EAC AFB20018 */  sw    $s2, 0x18($sp)
/* 001AB0 80000EB0 00C09021 */  addu  $s2, $a2, $zero
/* 001AB4 80000EB4 AFBF001C */  sw    $ra, 0x1c($sp)

/* 001AB8 80000EB8 0C00AC2C */  jal   osSetIntMask
/* 001ABC 80000EBC 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001AC0 80000EC0 AE120004 */  sw    $s2, 4($s0)
/* 001AC4 80000EC4 8E230260 */  lw    $v1, 0x260($s1)
/* 001AC8 80000EC8 3C048005 */  lui   $a0, %hi(bssMain_80052554) # $a0, 0x8005
/* 001ACC 80000ECC 94842554 */  lhu   $a0, %lo(bssMain_80052554)($a0)
/* 001AD0 80000ED0 AE030000 */  sw    $v1, ($s0)
/* 001AD4 80000ED4 AE300260 */  sw    $s0, 0x260($s1)
/* 001AD8 80000ED8 10800005 */  beqz  $a0, .L80000EF0
/* 001ADC 80000EDC 00408021 */   addu  $s0, $v0, $zero

/* 001AE0 80000EE0 02402021 */  addu  $a0, $s2, $zero # OSMesgQueue *mq
/* 001AE4 80000EE4 26250020 */  addiu $a1, $s1, 0x20 # OSMesg msg
/* 001AE8 80000EE8 0C00CA2C */  jal   osSendMesg
/* 001AEC 80000EEC 00003021 */   addu  $a2, $zero, $zero

.L80000EF0:
/* 001AF0 80000EF0 0C00AC2C */  jal   osSetIntMask
/* 001AF4 80000EF4 02002021 */   addu  $a0, $s0, $zero

/* 001AF8 80000EF8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 001AFC 80000EFC 8FB20018 */  lw    $s2, 0x18($sp)
/* 001B00 80000F00 8FB10014 */  lw    $s1, 0x14($sp)
/* 001B04 80000F04 8FB00010 */  lw    $s0, 0x10($sp)
/* 001B08 80000F08 03E00008 */  jr    $ra
/* 001B0C 80000F0C 27BD0020 */   addiu $sp, $sp, 0x20

/*----------------------------------------------------------------------------*/
# Params:
# $a0 -

func_80000F10:
/* 001B10 80000F10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001B14 80000F14 AFB00010 */  sw    $s0, 0x10($sp)
/* 001B18 80000F18 00808021 */  addu  $s0, $a0, $zero
/* 001B1C 80000F1C AFB10014 */  sw    $s1, 0x14($sp)
/* 001B20 80000F20 00A08821 */  addu  $s1, $a1, $zero
/* 001B24 80000F24 AFBF0018 */  sw    $ra, 0x18($sp)
/* 001B28 80000F28 0C00AC2C */  jal   osSetIntMask
/* 001B2C 80000F2C 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001B30 80000F30 8E030260 */  lw    $v1, 0x260($s0)
/* 001B34 80000F34 00002821 */  addu  $a1, $zero, $zero
/* 001B38 80000F38 1060000E */  beqz  $v1, .L80000F74
/* 001B3C 80000F3C 00402021 */   addu  $a0, $v0, $zero

.L80000F40:
/* 001B40 80000F40 54710009 */  bnel  $v1, $s1, .L80000F68
/* 001B44 80000F44 00602821 */   addu  $a1, $v1, $zero

/* 001B48 80000F48 10A00004 */  beqz  $a1, .L80000F5C
/* 001B4C 80000F4C 00000000 */   nop   

/* 001B50 80000F50 8C620000 */  lw    $v0, ($v1)
/* 001B54 80000F54 080003DD */  j     .L80000F74
/* 001B58 80000F58 ACA20000 */   sw    $v0, ($a1)

.L80000F5C:
/* 001B5C 80000F5C 8C620000 */  lw    $v0, ($v1)
/* 001B60 80000F60 080003DD */  j     .L80000F74
/* 001B64 80000F64 AE020260 */   sw    $v0, 0x260($s0)

.L80000F68:
/* 001B68 80000F68 8C630000 */  lw    $v1, ($v1)
/* 001B6C 80000F6C 1460FFF4 */  bnez  $v1, .L80000F40
/* 001B70 80000F70 00000000 */   nop   

.L80000F74:
/* 001B74 80000F74 0C00AC2C */  jal   osSetIntMask
/* 001B78 80000F78 00000000 */   nop   

/* 001B7C 80000F7C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 001B80 80000F80 8FB10014 */  lw    $s1, 0x14($sp)
/* 001B84 80000F84 8FB00010 */  lw    $s0, 0x10($sp)
/* 001B88 80000F88 03E00008 */  jr    $ra
/* 001B8C 80000F8C 27BD0020 */   addiu $sp, $sp, 0x20
