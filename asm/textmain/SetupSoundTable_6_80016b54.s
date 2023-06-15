glabel SetupSoundTable_6
/* 017754 80016B54 3C028004 */  lui   $v0, %hi(D_80040882) # $v0, 0x8004
/* 017758 80016B58 84420882 */  lh    $v0, %lo(D_80040882)($v0)
/* 01775C 80016B5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 017760 80016B60 AFBF0018 */  sw    $ra, 0x18($sp)
/* 017764 80016B64 AFB10014 */  sw    $s1, 0x14($sp)
/* 017768 80016B68 1440002B */  bnez  $v0, .L80016C18
/* 01776C 80016B6C AFB00010 */   sw    $s0, 0x10($sp)

/* 017770 80016B70 3C1001E5 */  lui   $s0, %hi(_soundtable6WaveBankRomStart) # $s0, 0x1e5
/* 017774 80016B74 26109FB0 */  addiu $s0, %lo(_soundtable6WaveBankRomStart) # addiu $s0, $s0, -0x6050
/* 017778 80016B78 3C1101E5 */  lui   $s1, %hi(_soundtable6PointerRomStart) # $s1, 0x1e5
/* 01777C 80016B7C 263187B0 */  addiu $s1, %lo(_soundtable6PointerRomStart) # addiu $s1, $s1, -0x7850
/* 017780 80016B80 02118023 */  subu  $s0, $s0, $s1
/* 017784 80016B84 0C000226 */  jal   aki_malloc
/* 017788 80016B88 02002021 */   addu  $a0, $s0, $zero

/* 01778C 80016B8C 02202021 */  addu  $a0, $s1, $zero
/* 017790 80016B90 00402821 */  addu  $a1, $v0, $zero
/* 017794 80016B94 3C018008 */  lui   $at, %hi(bssMain_8007FA40) # $at, 0x8008
/* 017798 80016B98 AC25FA40 */  sw    $a1, %lo(bssMain_8007FA40)($at)
/* 01779C 80016B9C 0C000198 */  jal   LoadDataDMA
/* 0177A0 80016BA0 02003021 */   addu  $a2, $s0, $zero

/* 0177A4 80016BA4 3C1001E5 */  lui   $s0, %hi(_soundtable6PointerRomStart) # $s0, 0x1e5
/* 0177A8 80016BA8 261087B0 */  addiu $s0, %lo(_soundtable6PointerRomStart) # addiu $s0, $s0, -0x7850
/* 0177AC 80016BAC 3C1101E4 */  lui   $s1, %hi(_soundtable5TableRomStart) # $s1, 0x1e4
/* 0177B0 80016BB0 26317EF0 */  addiu $s1, %lo(_soundtable5TableRomStart) # addiu $s1, $s1, 0x7ef0
/* 0177B4 80016BB4 02118023 */  subu  $s0, $s0, $s1
/* 0177B8 80016BB8 0C000226 */  jal   aki_malloc
/* 0177BC 80016BBC 02002021 */   addu  $a0, $s0, $zero

/* 0177C0 80016BC0 02202021 */  addu  $a0, $s1, $zero
/* 0177C4 80016BC4 00402821 */  addu  $a1, $v0, $zero
/* 0177C8 80016BC8 3C018008 */  lui   $at, %hi(bssMain_8007FA3C) # $at, 0x8008
/* 0177CC 80016BCC AC25FA3C */  sw    $a1, %lo(bssMain_8007FA3C)($at)
/* 0177D0 80016BD0 0C000198 */  jal   LoadDataDMA
/* 0177D4 80016BD4 02003021 */   addu  $a2, $s0, $zero

/* 0177D8 80016BD8 3C048008 */  lui   $a0, %hi(bssMain_8007FA3C) # $a0, 0x8008
/* 0177DC 80016BDC 0C0090F4 */  jal   func_800243D0
/* 0177E0 80016BE0 8C84FA3C */   lw    $a0, %lo(bssMain_8007FA3C)($a0)

/* 0177E4 80016BE4 3C048008 */  lui   $a0, %hi(bssMain_8007FA40) # $a0, 0x8008
/* 0177E8 80016BE8 8C84FA40 */  lw    $a0, %lo(bssMain_8007FA40)($a0)
/* 0177EC 80016BEC 3C0501E5 */  lui   $a1, %hi(_soundtable6WaveBankRomStart) # $a1, 0x1e5
/* 0177F0 80016BF0 0C009082 */  jal   func_80024208
/* 0177F4 80016BF4 24A59FB0 */   addiu $a1, %lo(_soundtable6WaveBankRomStart) # addiu $a1, $a1, -0x6050

/* 0177F8 80016BF8 3C048008 */  lui   $a0, %hi(bssMain_8007FA3C) # $a0, 0x8008
/* 0177FC 80016BFC 8C84FA3C */  lw    $a0, %lo(bssMain_8007FA3C)($a0)
/* 017800 80016C00 3C058008 */  lui   $a1, %hi(bssMain_8007FA40) # $a1, 0x8008
/* 017804 80016C04 0C009120 */  jal   func_80024480
/* 017808 80016C08 8CA5FA40 */   lw    $a1, %lo(bssMain_8007FA40)($a1)

/* 01780C 80016C0C 24020001 */  li    $v0, 1
/* 017810 80016C10 3C018004 */  lui   $at, %hi(D_80040882) # $at, 0x8004
/* 017814 80016C14 A4220882 */  sh    $v0, %lo(D_80040882)($at)

.L80016C18:
/* 017818 80016C18 8FBF0018 */  lw    $ra, 0x18($sp)
/* 01781C 80016C1C 8FB10014 */  lw    $s1, 0x14($sp)
/* 017820 80016C20 8FB00010 */  lw    $s0, 0x10($sp)
/* 017824 80016C24 03E00008 */  jr    $ra
/* 017828 80016C28 27BD0020 */   addiu $sp, $sp, 0x20
