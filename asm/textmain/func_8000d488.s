# possibly related to model loading

# Params:
# $a0 - write location?
# $a1 - ?
# $a2 - File ID?

glabel func_8000D488
/* 00E088 8000D488 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00E08C 8000D48C AFB00020 */  sw    $s0, 0x20($sp)
/* 00E090 8000D490 00808021 */  addu  $s0, $a0, $zero
/* 00E094 8000D494 AFB10024 */  sw    $s1, 0x24($sp)
/* 00E098 8000D498 00A08821 */  addu  $s1, $a1, $zero
/* 00E09C 8000D49C 27A40010 */  addiu $a0, $sp, 0x10
/* 00E0A0 8000D4A0 30C5FFFF */  andi  $a1, $a2, 0xffff
/* 00E0A4 8000D4A4 AFB20028 */  sw    $s2, 0x28($sp)
/* 00E0A8 8000D4A8 3C128007 */  lui   $s2, %hi(bssMain_8006FEB0) # $s2, 0x8007
/* 00E0AC 8000D4AC 2652FEB0 */  addiu $s2, %lo(bssMain_8006FEB0) # addiu $s2, $s2, -0x150
/* 00E0B0 8000D4B0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00E0B4 8000D4B4 0C000FA2 */  jal   LoadFile
/* 00E0B8 8000D4B8 02403021 */   addu  $a2, $s2, $zero

# get number of vertices
/* 00E0BC 8000D4BC 3C028007 */  lui   $v0, %hi(bssMain_8006FEB1) # $v0, 0x8007
/* 00E0C0 8000D4C0 9042FEB1 */  lbu   $v0, %lo(bssMain_8006FEB1)($v0)
/* 00E0C4 8000D4C4 3042007F */  andi  $v0, $v0, 0x7F # mask away top bit
/* 00E0C8 8000D4C8 3C018007 */  lui   $at, %hi(bssMain_8006FEB1) # $at, 0x8007
/* 00E0CC 8000D4CC A022FEB1 */  sb    $v0, %lo(bssMain_8006FEB1)($at)

/* 00E0D0 8000D4D0 24020001 */  li    $v0, 1
/* 00E0D4 8000D4D4 A2020000 */  sb    $v0, ($s0)

/* 00E0D8 8000D4D8 3C028007 */  lui   $v0, %hi(bssMain_8006FEB1) # $v0, 0x8007
/* 00E0DC 8000D4DC 9042FEB1 */  lbu   $v0, %lo(bssMain_8006FEB1)($v0)
/* 00E0E0 8000D4E0 A2020002 */  sb    $v0, 2($s0)

# get number of faces
/* 00E0E4 8000D4E4 3C028007 */  lui   $v0, %hi(bssMain_8006FEB2) # $v0, 0x8007
/* 00E0E8 8000D4E8 9042FEB2 */  lbu   $v0, %lo(bssMain_8006FEB2)($v0)
/* 00E0EC 8000D4EC 82050002 */  lb    $a1, 2($s0)
/* 00E0F0 8000D4F0 AE11000C */  sw    $s1, 0xC($s0)
/* 00E0F4 8000D4F4 18A00005 */  blez  $a1, .L8000D50C
/* 00E0F8 8000D4F8 A2020001 */   sb    $v0, 1($s0)

/* 00E0FC 8000D4FC 02202021 */  addu  $a0, $s1, $zero
/* 00E100 8000D500 0C004273 */  jal   func_800109CC
/* 00E104 8000D504 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00E108 8000D508 AE020004 */  sw    $v0, 4($s0)

.L8000D50C:
/* 00E10C 8000D50C 92020001 */  lbu   $v0, 1($s0)
/* 00E110 8000D510 00021600 */  sll   $v0, $v0, 0x18
/* 00E114 8000D514 00021E03 */  sra   $v1, $v0, 0x18
/* 00E118 8000D518 18600009 */  blez  $v1, .L8000D540
/* 00E11C 8000D51C 00000000 */   nop   

/* 00E120 8000D520 00022FC2 */  srl   $a1, $v0, 0x1f
/* 00E124 8000D524 00652821 */  addu  $a1, $v1, $a1
/* 00E128 8000D528 00052842 */  srl   $a1, $a1, 1
/* 00E12C 8000D52C 8E04000C */  lw    $a0, 0xc($s0)
/* 00E130 8000D530 24A50005 */  addiu $a1, $a1, 5
/* 00E134 8000D534 0C00428D */  jal   func_80010A34
/* 00E138 8000D538 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00E13C 8000D53C AE020008 */  sw    $v0, 8($s0)

.L8000D540:
/* 00E140 8000D540 82020002 */  lb    $v0, 2($s0)
/* 00E144 8000D544 18400004 */  blez  $v0, .L8000D558
/* 00E148 8000D548 00000000 */   nop   

/* 00E14C 8000D54C 8E040004 */  lw    $a0, 4($s0)
/* 00E150 8000D550 0C002F53 */  jal   func_8000BD4C
/* 00E154 8000D554 02402821 */   addu  $a1, $s2, $zero

.L8000D558:
/* 00E158 8000D558 82020001 */  lb    $v0, 1($s0)
/* 00E15C 8000D55C 18400003 */  blez  $v0, .L8000D56C
/* 00E160 8000D560 02002021 */   addu  $a0, $s0, $zero

/* 00E164 8000D564 0C002EF4 */  jal   func_8000BBD0
/* 00E168 8000D568 02402821 */   addu  $a1, $s2, $zero

.L8000D56C:
/* 00E16C 8000D56C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00E170 8000D570 8FB20028 */  lw    $s2, 0x28($sp)
/* 00E174 8000D574 8FB10024 */  lw    $s1, 0x24($sp)
/* 00E178 8000D578 8FB00020 */  lw    $s0, 0x20($sp)
/* 00E17C 8000D57C 03E00008 */  jr    $ra
/* 00E180 8000D580 27BD0030 */   addiu $sp, $sp, 0x30
