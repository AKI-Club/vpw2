glabel SetupSoundTable_78
/* 0179C4 80016DC4 3C028004 */  lui   $v0, %hi(D_80040884) # $v0, 0x8004
/* 0179C8 80016DC8 84420884 */  lh    $v0, %lo(D_80040884)($v0)
/* 0179CC 80016DCC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0179D0 80016DD0 AFBF0030 */  sw    $ra, 0x30($sp)
/* 0179D4 80016DD4 AFB7002C */  sw    $s7, 0x2c($sp)
/* 0179D8 80016DD8 AFB60028 */  sw    $s6, 0x28($sp)
/* 0179DC 80016DDC AFB50024 */  sw    $s5, 0x24($sp)
/* 0179E0 80016DE0 AFB40020 */  sw    $s4, 0x20($sp)
/* 0179E4 80016DE4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0179E8 80016DE8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0179EC 80016DEC AFB10014 */  sw    $s1, 0x14($sp)
/* 0179F0 80016DF0 14400069 */  bnez  $v0, .L80016F98
/* 0179F4 80016DF4 AFB00010 */   sw    $s0, 0x10($sp)

/* 0179F8 80016DF8 3C0201E9 */  lui   $v0, %hi(_soundtable7WaveBankRomStart) # $v0, 0x1e9
/* 0179FC 80016DFC 244230D0 */  addiu $v0, %lo(_soundtable7WaveBankRomStart) # addiu $v0, $v0, 0x30d0
/* 017A00 80016E00 3C1701E9 */  lui   $s7, %hi(_soundtable7PointerRomStart) # $s7, 0x1e9
/* 017A04 80016E04 26F70700 */  addiu $s7, %lo(_soundtable7PointerRomStart) # addiu $s7, $s7, 0x700
/* 017A08 80016E08 00579823 */  subu  $s3, $v0, $s7
/* 017A0C 80016E0C 24020001 */  li    $v0, 1
/* 017A10 80016E10 3C018004 */  lui   $at, %hi(D_80040884) # $at, 0x8004
/* 017A14 80016E14 A4220884 */  sh    $v0, %lo(D_80040884)($at)
/* 017A18 80016E18 0C000226 */  jal   aki_malloc
/* 017A1C 80016E1C 02602021 */   addu  $a0, $s3, $zero

/* 017A20 80016E20 3C0301E9 */  lui   $v1, %hi(_soundtable7PointerRomStart) # $v1, 0x1e9
/* 017A24 80016E24 24630700 */  addiu $v1, %lo(_soundtable7PointerRomStart) # addiu $v1, $v1, 0x700
/* 017A28 80016E28 3C1601E9 */  lui   $s6, %hi(_soundtable6TableRomStart) # $s6, 0x1e9
/* 017A2C 80016E2C 26D60030 */  addiu $s6, %lo(_soundtable6TableRomStart) # addiu $s6, $s6, 0x30
/* 017A30 80016E30 00769023 */  subu  $s2, $v1, $s6
/* 017A34 80016E34 3C018008 */  lui   $at, %hi(bssMain_8007FA48) # $at, 0x8008
/* 017A38 80016E38 AC22FA48 */  sw    $v0, %lo(bssMain_8007FA48)($at)
/* 017A3C 80016E3C 0C000226 */  jal   aki_malloc
/* 017A40 80016E40 02402021 */   addu  $a0, $s2, $zero

/* 017A44 80016E44 3C0301EE */  lui   $v1, %hi(_soundtable8WaveBankRomStart) # $v1, 0x1ee
/* 017A48 80016E48 2463F4B0 */  addiu $v1, %lo(_soundtable8WaveBankRomStart) # addiu $v1, $v1, -0xb50
/* 017A4C 80016E4C 3C1501EE */  lui   $s5, %hi(_soundtable8PointerRomStart) # $s5, 0x1ee
/* 017A50 80016E50 26B5CAE0 */  addiu $s5, %lo(_soundtable8PointerRomStart) # addiu $s5, $s5, -0x3520
/* 017A54 80016E54 00758823 */  subu  $s1, $v1, $s5
/* 017A58 80016E58 3C018008 */  lui   $at, %hi(bssMain_8007FA44) # $at, 0x8008
/* 017A5C 80016E5C AC22FA44 */  sw    $v0, %lo(bssMain_8007FA44)($at)
/* 017A60 80016E60 0C000226 */  jal   aki_malloc
/* 017A64 80016E64 02202021 */   addu  $a0, $s1, $zero

/* 017A68 80016E68 3C0301EE */  lui   $v1, %hi(_soundtable8PointerRomStart) # $v1, 0x1ee
/* 017A6C 80016E6C 2463CAE0 */  addiu $v1, %lo(_soundtable8PointerRomStart) # addiu $v1, $v1, -0x3520
/* 017A70 80016E70 3C1401EE */  lui   $s4, %hi(_soundtable7TableRomStart) # $s4, 0x1ee
/* 017A74 80016E74 2694C410 */  addiu $s4, %lo(_soundtable7TableRomStart) # addiu $s4, $s4, -0x3bf0
/* 017A78 80016E78 00748023 */  subu  $s0, $v1, $s4
/* 017A7C 80016E7C 3C018008 */  lui   $at, %hi(bssMain_8007FA50) # $at, 0x8008
/* 017A80 80016E80 AC22FA50 */  sw    $v0, %lo(bssMain_8007FA50)($at)
/* 017A84 80016E84 0C000226 */  jal   aki_malloc
/* 017A88 80016E88 02002021 */   addu  $a0, $s0, $zero

/* 017A8C 80016E8C 3C058008 */  lui   $a1, %hi(bssMain_8007FA48) # $a1, 0x8008
/* 017A90 80016E90 8CA5FA48 */  lw    $a1, %lo(bssMain_8007FA48)($a1)
/* 017A94 80016E94 00401821 */  addu  $v1, $v0, $zero
/* 017A98 80016E98 3C018008 */  lui   $at, %hi(bssMain_8007FA4C) # $at, 0x8008
/* 017A9C 80016E9C 10A0001E */  beqz  $a1, .L80016F18
/* 017AA0 80016EA0 AC23FA4C */   sw    $v1, %lo(bssMain_8007FA4C)($at)

/* 017AA4 80016EA4 3C028008 */  lui   $v0, %hi(bssMain_8007FA44) # $v0, 0x8008
/* 017AA8 80016EA8 8C42FA44 */  lw    $v0, %lo(bssMain_8007FA44)($v0)
/* 017AAC 80016EAC 1040001A */  beqz  $v0, .L80016F18
/* 017AB0 80016EB0 00000000 */   nop   

/* 017AB4 80016EB4 3C028008 */  lui   $v0, %hi(bssMain_8007FA50) # $v0, 0x8008
/* 017AB8 80016EB8 8C42FA50 */  lw    $v0, %lo(bssMain_8007FA50)($v0)
/* 017ABC 80016EBC 10400016 */  beqz  $v0, .L80016F18
/* 017AC0 80016EC0 00000000 */   nop   

/* 017AC4 80016EC4 10600014 */  beqz  $v1, .L80016F18
/* 017AC8 80016EC8 02E02021 */   addu  $a0, $s7, $zero

/* 017ACC 80016ECC 0C000198 */  jal   LoadDataDMA
/* 017AD0 80016ED0 02603021 */   addu  $a2, $s3, $zero

/* 017AD4 80016ED4 3C058008 */  lui   $a1, %hi(bssMain_8007FA44) # $a1, 0x8008
/* 017AD8 80016ED8 8CA5FA44 */  lw    $a1, %lo(bssMain_8007FA44)($a1)
/* 017ADC 80016EDC 02C02021 */  addu  $a0, $s6, $zero
/* 017AE0 80016EE0 0C000198 */  jal   LoadDataDMA
/* 017AE4 80016EE4 02403021 */   addu  $a2, $s2, $zero

/* 017AE8 80016EE8 3C058008 */  lui   $a1, %hi(bssMain_8007FA50) # $a1, 0x8008
/* 017AEC 80016EEC 8CA5FA50 */  lw    $a1, %lo(bssMain_8007FA50)($a1)
/* 017AF0 80016EF0 02A02021 */  addu  $a0, $s5, $zero
/* 017AF4 80016EF4 0C000198 */  jal   LoadDataDMA
/* 017AF8 80016EF8 02203021 */   addu  $a2, $s1, $zero

/* 017AFC 80016EFC 3C058008 */  lui   $a1, %hi(bssMain_8007FA4C) # $a1, 0x8008
/* 017B00 80016F00 8CA5FA4C */  lw    $a1, %lo(bssMain_8007FA4C)($a1)
/* 017B04 80016F04 02802021 */  addu  $a0, $s4, $zero
/* 017B08 80016F08 0C000198 */  jal   LoadDataDMA
/* 017B0C 80016F0C 02003021 */   addu  $a2, $s0, $zero

/* 017B10 80016F10 08005BC8 */  j     .L80016F20
/* 017B14 80016F14 00000000 */   nop   

.L80016F18:
/* 017B18 80016F18 0C005BF3 */  jal   func_80016FCC
/* 017B1C 80016F1C 00000000 */   nop   

.L80016F20:
/* 017B20 80016F20 3C028004 */  lui   $v0, %hi(D_80040884) # $v0, 0x8004
/* 017B24 80016F24 84420884 */  lh    $v0, %lo(D_80040884)($v0)
/* 017B28 80016F28 1040001D */  beqz  $v0, .L80016FA0
/* 017B2C 80016F2C 00000000 */   nop   

/* 017B30 80016F30 3C048008 */  lui   $a0, %hi(bssMain_8007FA44) # $a0, 0x8008
/* 017B34 80016F34 0C0090F4 */  jal   func_800243D0
/* 017B38 80016F38 8C84FA44 */   lw    $a0, %lo(bssMain_8007FA44)($a0)

/* 017B3C 80016F3C 3C048008 */  lui   $a0, %hi(bssMain_8007FA48) # $a0, 0x8008
/* 017B40 80016F40 8C84FA48 */  lw    $a0, %lo(bssMain_8007FA48)($a0)
/* 017B44 80016F44 3C0501E9 */  lui   $a1, %hi(_soundtable7WaveBankRomStart) # $a1, 0x1e9
/* 017B48 80016F48 0C009082 */  jal   func_80024208
/* 017B4C 80016F4C 24A530D0 */   addiu $a1, %lo(_soundtable7WaveBankRomStart) # addiu $a1, $a1, 0x30d0

/* 017B50 80016F50 3C048008 */  lui   $a0, %hi(bssMain_8007FA44) # $a0, 0x8008
/* 017B54 80016F54 8C84FA44 */  lw    $a0, %lo(bssMain_8007FA44)($a0)
/* 017B58 80016F58 3C058008 */  lui   $a1, %hi(bssMain_8007FA48) # $a1, 0x8008
/* 017B5C 80016F5C 0C009120 */  jal   func_80024480
/* 017B60 80016F60 8CA5FA48 */   lw    $a1, %lo(bssMain_8007FA48)($a1)

/* 017B64 80016F64 3C048008 */  lui   $a0, %hi(bssMain_8007FA4C) # $a0, 0x8008
/* 017B68 80016F68 0C0090F4 */  jal   func_800243D0
/* 017B6C 80016F6C 8C84FA4C */   lw    $a0, %lo(bssMain_8007FA4C)($a0)

/* 017B70 80016F70 3C048008 */  lui   $a0, %hi(bssMain_8007FA50) # $a0, 0x8008
/* 017B74 80016F74 8C84FA50 */  lw    $a0, %lo(bssMain_8007FA50)($a0)
/* 017B78 80016F78 3C0501EE */  lui   $a1, %hi(_soundtable8WaveBankRomStart) # $a1, 0x1ee
/* 017B7C 80016F7C 0C009082 */  jal   func_80024208
/* 017B80 80016F80 24A5F4B0 */   addiu $a1, %lo(_soundtable8WaveBankRomStart) # addiu $a1, $a1, -0xb50

/* 017B84 80016F84 3C048008 */  lui   $a0, %hi(bssMain_8007FA4C) # $a0, 0x8008
/* 017B88 80016F88 8C84FA4C */  lw    $a0, %lo(bssMain_8007FA4C)($a0)
/* 017B8C 80016F8C 3C058008 */  lui   $a1, %hi(bssMain_8007FA50) # $a1, 0x8008
/* 017B90 80016F90 0C009120 */  jal   func_80024480
/* 017B94 80016F94 8CA5FA50 */   lw    $a1, %lo(bssMain_8007FA50)($a1)

.L80016F98:
/* 017B98 80016F98 3C028004 */  lui   $v0, %hi(D_80040884) # $v0, 0x8004
/* 017B9C 80016F9C 84420884 */  lh    $v0, %lo(D_80040884)($v0)

.L80016FA0:
/* 017BA0 80016FA0 8FBF0030 */  lw    $ra, 0x30($sp)
/* 017BA4 80016FA4 8FB7002C */  lw    $s7, 0x2c($sp)
/* 017BA8 80016FA8 8FB60028 */  lw    $s6, 0x28($sp)
/* 017BAC 80016FAC 8FB50024 */  lw    $s5, 0x24($sp)
/* 017BB0 80016FB0 8FB40020 */  lw    $s4, 0x20($sp)
/* 017BB4 80016FB4 8FB3001C */  lw    $s3, 0x1c($sp)
/* 017BB8 80016FB8 8FB20018 */  lw    $s2, 0x18($sp)
/* 017BBC 80016FBC 8FB10014 */  lw    $s1, 0x14($sp)
/* 017BC0 80016FC0 8FB00010 */  lw    $s0, 0x10($sp)
/* 017BC4 80016FC4 03E00008 */  jr    $ra
/* 017BC8 80016FC8 27BD0038 */   addiu $sp, $sp, 0x38
