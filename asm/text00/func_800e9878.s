glabel func_800E9878
/* 04ECC8 800E9878 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04ECCC 800E987C AFBF0010 */  sw    $ra, 0x10($sp)
/* 04ECD0 800E9880 0C000226 */  jal   aki_malloc
/* 04ECD4 800E9884 24040480 */   li    $a0, 1152

/* 04ECD8 800E9888 3C018012 */  lui   $at, %hi(bss0_80118AD8) # $at, 0x8012
/* 04ECDC 800E988C AC228AD8 */  sw    $v0, %lo(bss0_80118AD8)($at)
/* 04ECE0 800E9890 0C000226 */  jal   aki_malloc
/* 04ECE4 800E9894 24040500 */   li    $a0, 1280

/* 04ECE8 800E9898 3C038012 */  lui   $v1, %hi(bss0_80118AD8) # $v1, 0x8012
/* 04ECEC 800E989C 8C638AD8 */  lw    $v1, %lo(bss0_80118AD8)($v1)
/* 04ECF0 800E98A0 2404005F */  li    $a0, 95
/* 04ECF4 800E98A4 3C018012 */  lui   $at, %hi(bss0_801190F8) # $at, 0x8012
/* 04ECF8 800E98A8 AC2290F8 */  sw    $v0, %lo(bss0_801190F8)($at)
/* 04ECFC 800E98AC 24630474 */  addiu $v1, $v1, 0x474

.L800E98B0:
/* 04ED00 800E98B0 AC600000 */  sw    $zero, ($v1)
/* 04ED04 800E98B4 2484FFFF */  addiu $a0, $a0, -1
/* 04ED08 800E98B8 0481FFFD */  bgez  $a0, .L800E98B0
/* 04ED0C 800E98BC 2463FFF4 */   addiu $v1, $v1, -0xc

/* 04ED10 800E98C0 00002021 */  addu  $a0, $zero, $zero
/* 04ED14 800E98C4 24050001 */  li    $a1, 1
/* 04ED18 800E98C8 3C038012 */  lui   $v1, %hi(bss0_801190F8) # $v1, 0x8012
/* 04ED1C 800E98CC 8C6390F8 */  lw    $v1, %lo(bss0_801190F8)($v1)

.L800E98D0:
/* 04ED20 800E98D0 24620008 */  addiu $v0, $v1, 8
/* 04ED24 800E98D4 AC620000 */  sw    $v0, ($v1)
/* 04ED28 800E98D8 AC650004 */  sw    $a1, 4($v1)
/* 04ED2C 800E98DC AC600008 */  sw    $zero, 8($v1)
/* 04ED30 800E98E0 AC600010 */  sw    $zero, 0x10($v1)
/* 04ED34 800E98E4 24840001 */  addiu $a0, $a0, 1
/* 04ED38 800E98E8 28820040 */  slti  $v0, $a0, 0x40
/* 04ED3C 800E98EC 1440FFF8 */  bnez  $v0, .L800E98D0
/* 04ED40 800E98F0 24630014 */   addiu $v1, $v1, 0x14

/* 04ED44 800E98F4 3C018012 */  lui   $at, %hi(bss0_80118EC0) # $at, 0x8012
/* 04ED48 800E98F8 AC208EC0 */  sw    $zero, %lo(bss0_80118EC0)($at)
/* 04ED4C 800E98FC 3C018012 */  lui   $at, %hi(bss0_80118EBC) # $at, 0x8012
/* 04ED50 800E9900 AC208EBC */  sw    $zero, %lo(bss0_80118EBC)($at)
/* 04ED54 800E9904 3C018012 */  lui   $at, %hi(bss0_80119174) # $at, 0x8012
/* 04ED58 800E9908 AC209174 */  sw    $zero, %lo(bss0_80119174)($at)
/* 04ED5C 800E990C 3C018012 */  lui   $at, %hi(bss0_80119268) # $at, 0x8012
/* 04ED60 800E9910 AC209268 */  sw    $zero, %lo(bss0_80119268)($at)
/* 04ED64 800E9914 8FBF0010 */  lw    $ra, 0x10($sp)
/* 04ED68 800E9918 03E00008 */  jr    $ra
/* 04ED6C 800E991C 27BD0018 */   addiu $sp, $sp, 0x18
