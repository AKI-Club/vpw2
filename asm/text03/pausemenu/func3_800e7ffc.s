# free some memory malloc'd by pause menu

glabel func3_800E7FFC
/* 0E26AC 800E7FFC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E26B0 800E8000 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E26B4 800E8004 00008821 */  addu  $s1, $zero, $zero
/* 0E26B8 800E8008 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E26BC 800E800C 3C108016 */  lui   $s0, %hi(bss3_8015882C) # $s0, 0x8016
/* 0E26C0 800E8010 2610882C */  addiu $s0, %lo(bss3_8015882C) # addiu $s0, $s0, -0x77d4
/* 0E26C4 800E8014 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E26C8 800E8018 3C018016 */  lui   $at, %hi(bss3_80158760) # $at, 0x8016
/* 0E26CC 800E801C AC208760 */  sw    $zero, %lo(bss3_80158760)($at)

.L3_800E8020:
/* 0E26D0 800E8020 8E040000 */  lw    $a0, ($s0)
/* 0E26D4 800E8024 0C000280 */  jal   aki_free
/* 0E26D8 800E8028 26310001 */   addiu $s1, $s1, 1

/* 0E26DC 800E802C AE000000 */  sw    $zero, ($s0)
/* 0E26E0 800E8030 2E220003 */  sltiu $v0, $s1, 3
/* 0E26E4 800E8034 1440FFFA */  bnez  $v0, .L3_800E8020
/* 0E26E8 800E8038 26100004 */   addiu $s0, $s0, 4

/* 0E26EC 800E803C 00008821 */  addu  $s1, $zero, $zero
/* 0E26F0 800E8040 3C108016 */  lui   $s0, %hi(bss3_80158848) # $s0, 0x8016
/* 0E26F4 800E8044 26108848 */  addiu $s0, %lo(bss3_80158848) # addiu $s0, $s0, -0x77b8

.L3_800E8048:
/* 0E26F8 800E8048 8E040000 */  lw    $a0, ($s0)
/* 0E26FC 800E804C 0C000280 */  jal   aki_free
/* 0E2700 800E8050 26310001 */   addiu $s1, $s1, 1

/* 0E2704 800E8054 AE000000 */  sw    $zero, ($s0)
/* 0E2708 800E8058 2E220029 */  sltiu $v0, $s1, 0x29
/* 0E270C 800E805C 1440FFFA */  bnez  $v0, .L3_800E8048
/* 0E2710 800E8060 26100004 */   addiu $s0, $s0, 4

/* 0E2714 800E8064 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E2718 800E8068 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E271C 800E806C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E2720 800E8070 03E00008 */  jr    $ra
/* 0E2724 800E8074 27BD0020 */   addiu $sp, $sp, 0x20
