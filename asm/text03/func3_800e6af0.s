glabel func3_800E6AF0
/* 0E11A0 800E6AF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E11A4 800E6AF4 AFBF0010 */  sw    $ra, 0x10($sp)

.L3_800E6AF8:
/* 0E11A8 800E6AF8 3C018016 */  lui   $at, %hi(bss3_80158740) # $at, 0x8016
/* 0E11AC 800E6AFC 0C039AC8 */  jal   func3_800E6B20
/* 0E11B0 800E6B00 AC208740 */   sw    $zero, %lo(bss3_80158740)($at)

/* 0E11B4 800E6B04 3C028016 */  lui   $v0, %hi(bss3_80158740) # $v0, 0x8016
/* 0E11B8 800E6B08 8C428740 */  lw    $v0, %lo(bss3_80158740)($v0)
/* 0E11BC 800E6B0C 1440FFFA */  bnez  $v0, .L3_800E6AF8
/* 0E11C0 800E6B10 00000000 */   nop   

/* 0E11C4 800E6B14 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E11C8 800E6B18 03E00008 */  jr    $ra
/* 0E11CC 800E6B1C 27BD0018 */   addiu $sp, $sp, 0x18
