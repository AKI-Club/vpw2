glabel func_8000E428
/* 00F028 8000E428 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00F02C 8000E42C C7A40080 */  lwc1  $f4, 0x80($sp)
/* 00F030 8000E430 C7A60084 */  lwc1  $f6, 0x84($sp)
/* 00F034 8000E434 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 00F038 8000E438 C7B40088 */  lwc1  $f20, 0x88($sp)
/* 00F03C 8000E43C F7B60048 */  sdc1  $f22, 0x48($sp)
/* 00F040 8000E440 C7B6008C */  lwc1  $f22, 0x8c($sp)
/* 00F044 8000E444 F7B80050 */  sdc1  $f24, 0x50($sp)
/* 00F048 8000E448 C7B80090 */  lwc1  $f24, 0x90($sp)
/* 00F04C 8000E44C F7BA0058 */  sdc1  $f26, 0x58($sp)
/* 00F050 8000E450 C7BA0094 */  lwc1  $f26, 0x94($sp)
/* 00F054 8000E454 F7BC0060 */  sdc1  $f28, 0x60($sp)
/* 00F058 8000E458 C7BC0098 */  lwc1  $f28, 0x98($sp)
/* 00F05C 8000E45C F7BE0068 */  sdc1  $f30, 0x68($sp)
/* 00F060 8000E460 C7BE009C */  lwc1  $f30, 0x9c($sp)
/* 00F064 8000E464 AFB20038 */  sw    $s2, 0x38($sp)
/* 00F068 8000E468 00809021 */  addu  $s2, $a0, $zero
/* 00F06C 8000E46C AFB10034 */  sw    $s1, 0x34($sp)
/* 00F070 8000E470 3C118007 */  lui   $s1, %hi(bssMain_8006FE10) # $s1, 0x8007
/* 00F074 8000E474 2631FE10 */  addiu $s1, %lo(bssMain_8006FE10) # addiu $s1, $s1, -0x1f0
/* 00F078 8000E478 44850000 */  mtc1  $a1, $f0
/* 00F07C 8000E47C 44861000 */  mtc1  $a2, $f2
/* 00F080 8000E480 02202021 */  addu  $a0, $s1, $zero
/* 00F084 8000E484 AFA70010 */  sw    $a3, 0x10($sp)
/* 00F088 8000E488 44060000 */  mfc1  $a2, $f0
/* 00F08C 8000E48C 44071000 */  mfc1  $a3, $f2
/* 00F090 8000E490 27A50028 */  addiu $a1, $sp, 0x28
/* 00F094 8000E494 AFBF003C */  sw    $ra, 0x3c($sp)
/* 00F098 8000E498 AFB00030 */  sw    $s0, 0x30($sp)
/* 00F09C 8000E49C 3C018007 */  lui   $at, %hi(bssMain_8006FE90) # $at, 0x8007
/* 00F0A0 8000E4A0 E434FE90 */  swc1  $f20, %lo(bssMain_8006FE90)($at)
/* 00F0A4 8000E4A4 3C018007 */  lui   $at, %hi(bssMain_8006FE94) # $at, 0x8007
/* 00F0A8 8000E4A8 E436FE94 */  swc1  $f22, %lo(bssMain_8006FE94)($at)
/* 00F0AC 8000E4AC 3C018007 */  lui   $at, %hi(bssMain_8006FE98) # $at, 0x8007
/* 00F0B0 8000E4B0 E438FE98 */  swc1  $f24, %lo(bssMain_8006FE98)($at)
/* 00F0B4 8000E4B4 3C018007 */  lui   $at, %hi(bssMain_8006FE9C) # $at, 0x8007
/* 00F0B8 8000E4B8 E43AFE9C */  swc1  $f26, %lo(bssMain_8006FE9C)($at)
/* 00F0BC 8000E4BC 3C018007 */  lui   $at, %hi(bssMain_8006FEA0) # $at, 0x8007
/* 00F0C0 8000E4C0 E43CFEA0 */  swc1  $f28, %lo(bssMain_8006FEA0)($at)
/* 00F0C4 8000E4C4 3C018007 */  lui   $at, %hi(bssMain_8006FEA4) # $at, 0x8007
/* 00F0C8 8000E4C8 E43EFEA4 */  swc1  $f30, %lo(bssMain_8006FEA4)($at)
/* 00F0CC 8000E4CC E7A40014 */  swc1  $f4, 0x14($sp)
/* 00F0D0 8000E4D0 0C00C644 */  jal   guPerspectiveF
/* 00F0D4 8000E4D4 E7A60018 */   swc1  $f6, 0x18($sp)

/* 00F0D8 8000E4D8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00F0DC 8000E4DC 44810000 */  mtc1  $at, $f0
/* 00F0E0 8000E4E0 3C108007 */  lui   $s0, %hi(bssMain_8006FE50) # $s0, 0x8007
/* 00F0E4 8000E4E4 2610FE50 */  addiu $s0, %lo(bssMain_8006FE50) # addiu $s0, $s0, -0x1b0
/* 00F0E8 8000E4E8 4405A000 */  mfc1  $a1, $f20
/* 00F0EC 8000E4EC 4406B000 */  mfc1  $a2, $f22
/* 00F0F0 8000E4F0 4407C000 */  mfc1  $a3, $f24
/* 00F0F4 8000E4F4 02002021 */  addu  $a0, $s0, $zero
/* 00F0F8 8000E4F8 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 00F0FC 8000E4FC E7BC0014 */  swc1  $f28, 0x14($sp)
/* 00F100 8000E500 E7BE0018 */  swc1  $f30, 0x18($sp)
/* 00F104 8000E504 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00F108 8000E508 AFA00024 */  sw    $zero, 0x24($sp)
/* 00F10C 8000E50C 0C00C3E0 */  jal   guLookAtF
/* 00F110 8000E510 E7A00020 */   swc1  $f0, 0x20($sp)

/* 00F114 8000E514 02402021 */  addu  $a0, $s2, $zero
/* 00F118 8000E518 02202821 */  addu  $a1, $s1, $zero
/* 00F11C 8000E51C 0C0005DA */  jal   func_80001768
/* 00F120 8000E520 02003021 */   addu  $a2, $s0, $zero

/* 00F124 8000E524 97A50028 */  lhu   $a1, 0x28($sp)
/* 00F128 8000E528 0C0005E3 */  jal   func_8000178C
/* 00F12C 8000E52C 02402021 */   addu  $a0, $s2, $zero

/* 00F130 8000E530 8FBF003C */  lw    $ra, 0x3c($sp)
/* 00F134 8000E534 8FB20038 */  lw    $s2, 0x38($sp)
/* 00F138 8000E538 8FB10034 */  lw    $s1, 0x34($sp)
/* 00F13C 8000E53C 8FB00030 */  lw    $s0, 0x30($sp)
/* 00F140 8000E540 D7BE0068 */  ldc1  $f30, 0x68($sp)
/* 00F144 8000E544 D7BC0060 */  ldc1  $f28, 0x60($sp)
/* 00F148 8000E548 D7BA0058 */  ldc1  $f26, 0x58($sp)
/* 00F14C 8000E54C D7B80050 */  ldc1  $f24, 0x50($sp)
/* 00F150 8000E550 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 00F154 8000E554 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 00F158 8000E558 03E00008 */  jr    $ra
/* 00F15C 8000E55C 27BD0070 */   addiu $sp, $sp, 0x70
