glabel func_8000DF88
/* 00EB88 8000DF88 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00EB8C 8000DF8C F7B80050 */  sdc1  $f24, 0x50($sp)
/* 00EB90 8000DF90 4486C000 */  mtc1  $a2, $f24
/* 00EB94 8000DF94 3C064204 */  lui   $a2, 0x4204
/* 00EB98 8000DF98 F7BA0058 */  sdc1  $f26, 0x58($sp)
/* 00EB9C 8000DF9C 4487D000 */  mtc1  $a3, $f26
/* 00EBA0 8000DFA0 3C073FAA */  lui   $a3, (0x3FAAAAAB >> 16) # lui $a3, 0x3faa
/* 00EBA4 8000DFA4 34E7AAAB */  ori   $a3, (0x3FAAAAAB & 0xFFFF) # ori $a3, $a3, 0xaaab
/* 00EBA8 8000DFA8 F7BC0060 */  sdc1  $f28, 0x60($sp)
/* 00EBAC 8000DFAC C7BC0080 */  lwc1  $f28, 0x80($sp)
/* 00EBB0 8000DFB0 F7BE0068 */  sdc1  $f30, 0x68($sp)
/* 00EBB4 8000DFB4 C7BE0084 */  lwc1  $f30, 0x84($sp)
/* 00EBB8 8000DFB8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 00EBBC 8000DFBC 44810000 */  mtc1  $at, $f0
/* 00EBC0 8000DFC0 3C014600 */  li    $at, 0x46000000 # 8192.000000
/* 00EBC4 8000DFC4 44811000 */  mtc1  $at, $f2
/* 00EBC8 8000DFC8 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 00EBCC 8000DFCC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00EBD0 8000DFD0 4481A000 */  mtc1  $at, $f20
/* 00EBD4 8000DFD4 C7A40088 */  lwc1  $f4, 0x88($sp)
/* 00EBD8 8000DFD8 AFB20038 */  sw    $s2, 0x38($sp)
/* 00EBDC 8000DFDC 00809021 */  addu  $s2, $a0, $zero
/* 00EBE0 8000DFE0 AFB10034 */  sw    $s1, 0x34($sp)
/* 00EBE4 8000DFE4 3C118007 */  lui   $s1, %hi(bssMain_8006FE10) # $s1, 0x8007
/* 00EBE8 8000DFE8 2631FE10 */  addiu $s1, %lo(bssMain_8006FE10) # addiu $s1, $s1, -0x1f0
/* 00EBEC 8000DFEC 02202021 */  addu  $a0, $s1, $zero
/* 00EBF0 8000DFF0 F7B60048 */  sdc1  $f22, 0x48($sp)
/* 00EBF4 8000DFF4 4485B000 */  mtc1  $a1, $f22
/* 00EBF8 8000DFF8 27A50028 */  addiu $a1, $sp, 0x28
/* 00EBFC 8000DFFC AFBF003C */  sw    $ra, 0x3c($sp)
/* 00EC00 8000E000 AFB00030 */  sw    $s0, 0x30($sp)
/* 00EC04 8000E004 3C018007 */  lui   $at, %hi(bssMain_8006FE90) # $at, 0x8007
/* 00EC08 8000E008 E436FE90 */  swc1  $f22, %lo(bssMain_8006FE90)($at)
/* 00EC0C 8000E00C 3C018007 */  lui   $at, %hi(bssMain_8006FE94) # $at, 0x8007
/* 00EC10 8000E010 E438FE94 */  swc1  $f24, %lo(bssMain_8006FE94)($at)
/* 00EC14 8000E014 3C018007 */  lui   $at, %hi(bssMain_8006FE98) # $at, 0x8007
/* 00EC18 8000E018 E43AFE98 */  swc1  $f26, %lo(bssMain_8006FE98)($at)
/* 00EC1C 8000E01C 3C018007 */  lui   $at, %hi(bssMain_8006FE9C) # $at, 0x8007
/* 00EC20 8000E020 E43CFE9C */  swc1  $f28, %lo(bssMain_8006FE9C)($at)
/* 00EC24 8000E024 3C018007 */  lui   $at, %hi(bssMain_8006FEA0) # $at, 0x8007
/* 00EC28 8000E028 E43EFEA0 */  swc1  $f30, %lo(bssMain_8006FEA0)($at)
/* 00EC2C 8000E02C 3C018007 */  lui   $at, %hi(bssMain_8006FEA4) # $at, 0x8007
/* 00EC30 8000E030 E424FEA4 */  swc1  $f4, %lo(bssMain_8006FEA4)($at)
/* 00EC34 8000E034 E7A00010 */  swc1  $f0, 0x10($sp)
/* 00EC38 8000E038 E7A20014 */  swc1  $f2, 0x14($sp)
/* 00EC3C 8000E03C 0C00C644 */  jal   guPerspectiveF
/* 00EC40 8000E040 E7B40018 */   swc1  $f20, 0x18($sp)

/* 00EC44 8000E044 C7A40088 */  lwc1  $f4, 0x88($sp)
/* 00EC48 8000E048 3C108007 */  lui   $s0, %hi(bssMain_8006FE50) # $s0, 0x8007
/* 00EC4C 8000E04C 2610FE50 */  addiu $s0, %lo(bssMain_8006FE50) # addiu $s0, $s0, -0x1b0
/* 00EC50 8000E050 4405B000 */  mfc1  $a1, $f22
/* 00EC54 8000E054 4406C000 */  mfc1  $a2, $f24
/* 00EC58 8000E058 4407D000 */  mfc1  $a3, $f26
/* 00EC5C 8000E05C 02002021 */  addu  $a0, $s0, $zero
/* 00EC60 8000E060 E7BC0010 */  swc1  $f28, 0x10($sp)
/* 00EC64 8000E064 E7BE0014 */  swc1  $f30, 0x14($sp)
/* 00EC68 8000E068 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00EC6C 8000E06C E7B40020 */  swc1  $f20, 0x20($sp)
/* 00EC70 8000E070 AFA00024 */  sw    $zero, 0x24($sp)
/* 00EC74 8000E074 0C00C3E0 */  jal   guLookAtF
/* 00EC78 8000E078 E7A40018 */   swc1  $f4, 0x18($sp)

/* 00EC7C 8000E07C 02402021 */  addu  $a0, $s2, $zero
/* 00EC80 8000E080 02202821 */  addu  $a1, $s1, $zero
/* 00EC84 8000E084 0C0005DA */  jal   func_80001768
/* 00EC88 8000E088 02003021 */   addu  $a2, $s0, $zero

/* 00EC8C 8000E08C 97A50028 */  lhu   $a1, 0x28($sp)
/* 00EC90 8000E090 0C0005E3 */  jal   func_8000178C
/* 00EC94 8000E094 02402021 */   addu  $a0, $s2, $zero

/* 00EC98 8000E098 8FBF003C */  lw    $ra, 0x3c($sp)
/* 00EC9C 8000E09C 8FB20038 */  lw    $s2, 0x38($sp)
/* 00ECA0 8000E0A0 8FB10034 */  lw    $s1, 0x34($sp)
/* 00ECA4 8000E0A4 8FB00030 */  lw    $s0, 0x30($sp)
/* 00ECA8 8000E0A8 D7BE0068 */  ldc1  $f30, 0x68($sp)
/* 00ECAC 8000E0AC D7BC0060 */  ldc1  $f28, 0x60($sp)
/* 00ECB0 8000E0B0 D7BA0058 */  ldc1  $f26, 0x58($sp)
/* 00ECB4 8000E0B4 D7B80050 */  ldc1  $f24, 0x50($sp)
/* 00ECB8 8000E0B8 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 00ECBC 8000E0BC D7B40040 */  ldc1  $f20, 0x40($sp)
/* 00ECC0 8000E0C0 03E00008 */  jr    $ra
/* 00ECC4 8000E0C4 27BD0070 */   addiu $sp, $sp, 0x70
