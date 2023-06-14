glabel func_800E6D20
/* 04C170 800E6D20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04C174 800E6D24 AFBF0018 */  sw    $ra, 0x18($sp)
/* 04C178 800E6D28 AFB10014 */  sw    $s1, 0x14($sp)
/* 04C17C 800E6D2C 0C00463D */  jal   func_800118F4
/* 04C180 800E6D30 AFB00010 */   sw    $s0, 0x10($sp)

/* 04C184 800E6D34 3C01800A */  lui   $at, %hi(bssMain_8009B184) # $at, 0x800a
/* 04C188 800E6D38 A420B184 */  sh    $zero, %lo(bssMain_8009B184)($at)
/* 04C18C 800E6D3C 0C03F0EC */  jal   func_800FC3B0
/* 04C190 800E6D40 00008821 */   addu  $s1, $zero, $zero

/* 04C194 800E6D44 0C00848B */  jal   func_8002122C
/* 04C198 800E6D48 00118400 */   sll   $s0, $s1, 0x10

.L800E6D4C:
/* 04C19C 800E6D4C 00108403 */  sra   $s0, $s0, 0x10
/* 04C1A0 800E6D50 02002021 */  addu  $a0, $s0, $zero
/* 04C1A4 800E6D54 00002821 */  addu  $a1, $zero, $zero
/* 04C1A8 800E6D58 0C0051CC */  jal   func_80014730
/* 04C1AC 800E6D5C 00003021 */   addu  $a2, $zero, $zero

/* 04C1B0 800E6D60 02002021 */  addu  $a0, $s0, $zero
/* 04C1B4 800E6D64 0C0053C9 */  jal   func_80014F24
/* 04C1B8 800E6D68 24050080 */   li    $a1, 128

/* 04C1BC 800E6D6C 26310001 */  addiu $s1, $s1, 1
/* 04C1C0 800E6D70 2A220004 */  slti  $v0, $s1, 4
/* 04C1C4 800E6D74 5440FFF5 */  bnezl $v0, .L800E6D4C
/* 04C1C8 800E6D78 00118400 */   sll   $s0, $s1, 0x10

/* 04C1CC 800E6D7C 0C007FF3 */  jal   func_8001FFCC
/* 04C1D0 800E6D80 00000000 */   nop   

/* 04C1D4 800E6D84 24040002 */  li    $a0, 2
/* 04C1D8 800E6D88 0C0072B4 */  jal   func_8001CAD0
/* 04C1DC 800E6D8C 00002821 */   addu  $a1, $zero, $zero

/* 04C1E0 800E6D90 0C005745 */  jal   func_80015D14
/* 04C1E4 800E6D94 24040001 */   li    $a0, 1

/* 04C1E8 800E6D98 0C007979 */  jal   func_8001E5E4
/* 04C1EC 800E6D9C 00002021 */   addu  $a0, $zero, $zero

/* 04C1F0 800E6DA0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 04C1F4 800E6DA4 8FB10014 */  lw    $s1, 0x14($sp)
/* 04C1F8 800E6DA8 8FB00010 */  lw    $s0, 0x10($sp)
/* 04C1FC 800E6DAC 03E00008 */  jr    $ra
/* 04C200 800E6DB0 27BD0020 */   addiu $sp, $sp, 0x20
