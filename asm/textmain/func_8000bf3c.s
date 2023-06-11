# related to loading models

# Params:
# $a0 - Write location?
# $a1 - File ID

glabel func_8000BF3C
/* 00CB3C 8000BF3C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00CB40 8000BF40 AFB10024 */  sw    $s1, 0x24($sp)
/* 00CB44 8000BF44 00808821 */  addu  $s1, $a0, $zero
/* 00CB48 8000BF48 27A40010 */  addiu $a0, $sp, 0x10
/* 00CB4C 8000BF4C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 00CB50 8000BF50 AFB20028 */  sw    $s2, 0x28($sp)
/* 00CB54 8000BF54 3C128007 */  lui   $s2, %hi(bssMain_8006FEB0) # $s2, 0x8007
/* 00CB58 8000BF58 2652FEB0 */  addiu $s2, %lo(bssMain_8006FEB0) # addiu $s2, $s2, -0x150
/* 00CB5C 8000BF5C 02403021 */  addu  $a2, $s2, $zero
/* 00CB60 8000BF60 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00CB64 8000BF64 0C000FA2 */  jal   LoadFile
/* 00CB68 8000BF68 AFB00020 */   sw    $s0, 0x20($sp)

# get number of vertices top bit
/* 00CB6C 8000BF6C 3C028007 */  lui   $v0, %hi(bssMain_8006FEB1) # $v0, 0x8007
/* 00CB70 8000BF70 9042FEB1 */  lbu   $v0, %lo(bssMain_8006FEB1)($v0)
/* 00CB74 8000BF74 30420080 */  andi  $v0, $v0, 0x80
/* 00CB78 8000BF78 A2220006 */  sb    $v0, 6($s1)

# get number of vertices (and mask it)
/* 00CB7C 8000BF7C 3C028007 */  lui   $v0, %hi(bssMain_8006FEB1) # $v0, 0x8007
/* 00CB80 8000BF80 9042FEB1 */  lbu   $v0, %lo(bssMain_8006FEB1)($v0)
/* 00CB84 8000BF84 3042007F */  andi  $v0, $v0, 0x7F
/* 00CB88 8000BF88 3C018007 */  lui   $at, %hi(bssMain_8006FEB1) # $at, 0x8007
/* 00CB8C 8000BF8C A022FEB1 */  sb    $v0, %lo(bssMain_8006FEB1)($at)

/* 00CB90 8000BF90 24020001 */  li    $v0, 1
/* 00CB94 8000BF94 A2220000 */  sb    $v0, ($s1)

# get number of vertices (unmasked)
/* 00CB98 8000BF98 3C028007 */  lui   $v0, %hi(bssMain_8006FEB1) # $v0, 0x8007
/* 00CB9C 8000BF9C 9042FEB1 */  lbu   $v0, %lo(bssMain_8006FEB1)($v0)
/* 00CBA0 8000BFA0 A2220002 */  sb    $v0, 2($s1)

# get number of faces
/* 00CBA4 8000BFA4 3C028007 */  lui   $v0, %hi(bssMain_8006FEB2) # $v0, 0x8007
/* 00CBA8 8000BFA8 9042FEB2 */  lbu   $v0, %lo(bssMain_8006FEB2)($v0)
/* 00CBAC 8000BFAC A2220001 */  sb    $v0, 1($s1)

# get upper 4 bits of unknown value
/* 00CBB0 8000BFB0 3C028007 */  lui   $v0, %hi(bssMain_8006FEB3) # $v0, 0x8007
/* 00CBB4 8000BFB4 9042FEB3 */  lbu   $v0, %lo(bssMain_8006FEB3)($v0)
/* 00CBB8 8000BFB8 00021102 */  srl   $v0, $v0, 4
/* 00CBBC 8000BFBC A2220004 */  sb    $v0, 4($s1)

# get lower 4 bits of unknown value
/* 00CBC0 8000BFC0 3C028007 */  lui   $v0, %hi(bssMain_8006FEB3) # $v0, 0x8007
/* 00CBC4 8000BFC4 9042FEB3 */  lbu   $v0, %lo(bssMain_8006FEB3)($v0)
/* 00CBC8 8000BFC8 8E230030 */  lw    $v1, 0x30($s1)
/* 00CBCC 8000BFCC 3042000F */  andi  $v0, $v0, 0xF
/* 00CBD0 8000BFD0 14600017 */  bnez  $v1, .L8000C030
/* 00CBD4 8000BFD4 A2220005 */   sb    $v0, 5($s1)

# check number of vertices
/* 00CBD8 8000BFD8 82300002 */  lb    $s0, 2($s1)
/* 00CBDC 8000BFDC 1A00001B */  blez  $s0, .L8000C04C
/* 00CBE0 8000BFE0 00000000 */   nop   

# check number of faces
/* 00CBE4 8000BFE4 82220001 */  lb    $v0, 1($s1)
/* 00CBE8 8000BFE8 18400011 */  blez  $v0, .L8000C030
/* 00CBEC 8000BFEC 00108100 */   sll   $s0, $s0, 4

/* 00CBF0 8000BFF0 00021400 */  sll   $v0, $v0, 0x10
/* 00CBF4 8000BFF4 00022403 */  sra   $a0, $v0, 0x10
/* 00CBF8 8000BFF8 000217C2 */  srl   $v0, $v0, 0x1f
/* 00CBFC 8000BFFC 00822021 */  addu  $a0, $a0, $v0
/* 00CC00 8000C000 00042043 */  sra   $a0, $a0, 1
/* 00CC04 8000C004 2484001D */  addiu $a0, $a0, 0x1D
/* 00CC08 8000C008 000420C0 */  sll   $a0, $a0, 3
/* 00CC0C 8000C00C 0C000226 */  jal   aki_malloc
/* 00CC10 8000C010 02042021 */   addu  $a0, $s0, $a0

# write pointers to malloc'd location
/* 00CC14 8000C014 AE220010 */  sw    $v0, 0x10($s1)
/* 00CC18 8000C018 AE220014 */  sw    $v0, 0x14($s1)
/* 00CC1C 8000C01C 00501021 */  addu  $v0, $v0, $s0
/* 00CC20 8000C020 AE220018 */  sw    $v0, 0x18($s1)
/* 00CC24 8000C024 244200C0 */  addiu $v0, $v0, 0xC0
/* 00CC28 8000C028 08003023 */  j     .L8000C08C
/* 00CC2C 8000C02C AE22001C */   sw    $v0, 0x1c($s1)

.L8000C030:
# check num verts again
/* 00CC30 8000C030 82250002 */  lb    $a1, 2($s1)
/* 00CC34 8000C034 18A00005 */  blez  $a1, .L8000C04C
/* 00CC38 8000C038 00000000 */   nop   

/* 00CC3C 8000C03C 8E240030 */  lw    $a0, 0x30($s1)
/* 00CC40 8000C040 0C004273 */  jal   func_800109CC
/* 00CC44 8000C044 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00CC48 8000C048 AE220014 */  sw    $v0, 0x14($s1)


.L8000C04C:
# check num faces again
/* 00CC4C 8000C04C 92220001 */  lbu   $v0, 1($s1)
/* 00CC50 8000C050 00021600 */  sll   $v0, $v0, 0x18
/* 00CC54 8000C054 00021E03 */  sra   $v1, $v0, 0x18
/* 00CC58 8000C058 1860000C */  blez  $v1, .L8000C08C
/* 00CC5C 8000C05C 00022FC2 */   srl   $a1, $v0, 0x1f

/* 00CC60 8000C060 00652821 */  addu  $a1, $v1, $a1
/* 00CC64 8000C064 00052842 */  srl   $a1, $a1, 1
/* 00CC68 8000C068 8E240030 */  lw    $a0, 0x30($s1)
/* 00CC6C 8000C06C 24A50005 */  addiu $a1, $a1, 5
/* 00CC70 8000C070 0C00428D */  jal   func_80010A34
/* 00CC74 8000C074 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00CC78 8000C078 8E240030 */  lw    $a0, 0x30($s1)
/* 00CC7C 8000C07C 24050018 */  li    $a1, 24
/* 00CC80 8000C080 0C00428D */  jal   func_80010A34
/* 00CC84 8000C084 AE22001C */   sw    $v0, 0x1c($s1)

/* 00CC88 8000C088 AE220018 */  sw    $v0, 0x18($s1)


.L8000C08C:
/* 00CC8C 8000C08C 82220002 */  lb    $v0, 2($s1)
/* 00CC90 8000C090 18400004 */  blez  $v0, .L8000C0A4
/* 00CC94 8000C094 00000000 */   nop   

/* 00CC98 8000C098 8E240014 */  lw    $a0, 0x14($s1)
/* 00CC9C 8000C09C 0C002F53 */  jal   func_8000BD4C
/* 00CCA0 8000C0A0 02402821 */   addu  $a1, $s2, $zero

.L8000C0A4:
/* 00CCA4 8000C0A4 82220001 */  lb    $v0, 1($s1)
/* 00CCA8 8000C0A8 18400005 */  blez  $v0, .L8000C0C0
/* 00CCAC 8000C0AC 02202021 */   addu  $a0, $s1, $zero

/* 00CCB0 8000C0B0 0C002E95 */  jal   func_8000BA54
/* 00CCB4 8000C0B4 02402821 */   addu  $a1, $s2, $zero

/* 00CCB8 8000C0B8 0C003C3D */  jal   func_8000F0F4
/* 00CCBC 8000C0BC 02202021 */   addu  $a0, $s1, $zero

.L8000C0C0:
/* 00CCC0 8000C0C0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00CCC4 8000C0C4 8FB20028 */  lw    $s2, 0x28($sp)
/* 00CCC8 8000C0C8 8FB10024 */  lw    $s1, 0x24($sp)
/* 00CCCC 8000C0CC 8FB00020 */  lw    $s0, 0x20($sp)
/* 00CCD0 8000C0D0 03E00008 */  jr    $ra
/* 00CCD4 8000C0D4 27BD0030 */   addiu $sp, $sp, 0x30
