glabel func_8000D584
/* 00E184 8000D584 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00E188 8000D588 AFB00010 */  sw    $s0, 0x10($sp)
/* 00E18C 8000D58C 00808021 */  addu  $s0, $a0, $zero
/* 00E190 8000D590 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00E194 8000D594 92020000 */  lbu   $v0, ($s0)
/* 00E198 8000D598 10400014 */  beqz  $v0, .L8000D5EC
/* 00E19C 8000D59C 00000000 */   nop   

/* 00E1A0 8000D5A0 8E040004 */  lw    $a0, 4($s0)
/* 00E1A4 8000D5A4 10800007 */  beqz  $a0, .L8000D5C4
/* 00E1A8 8000D5A8 A2000000 */   sb    $zero, ($s0)

/* 00E1AC 8000D5AC 8E02000C */  lw    $v0, 0xc($s0)
/* 00E1B0 8000D5B0 54400004 */  bnezl $v0, .L8000D5C4
/* 00E1B4 8000D5B4 AE000004 */   sw    $zero, 4($s0)

/* 00E1B8 8000D5B8 0C000280 */  jal   aki_free
/* 00E1BC 8000D5BC 00000000 */   nop   

/* 00E1C0 8000D5C0 AE000004 */  sw    $zero, 4($s0)

.L8000D5C4:
/* 00E1C4 8000D5C4 8E040008 */  lw    $a0, 8($s0)
/* 00E1C8 8000D5C8 50800008 */  beql  $a0, $zero, .L8000D5EC
/* 00E1CC 8000D5CC AE00000C */   sw    $zero, 0xc($s0)

/* 00E1D0 8000D5D0 8E02000C */  lw    $v0, 0xc($s0)
/* 00E1D4 8000D5D4 54400004 */  bnezl $v0, .L8000D5E8
/* 00E1D8 8000D5D8 AE000008 */   sw    $zero, 8($s0)

/* 00E1DC 8000D5DC 0C000280 */  jal   aki_free
/* 00E1E0 8000D5E0 00000000 */   nop   

/* 00E1E4 8000D5E4 AE000008 */  sw    $zero, 8($s0)

.L8000D5E8:
/* 00E1E8 8000D5E8 AE00000C */  sw    $zero, 0xc($s0)

.L8000D5EC:
/* 00E1EC 8000D5EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00E1F0 8000D5F0 8FB00010 */  lw    $s0, 0x10($sp)
/* 00E1F4 8000D5F4 03E00008 */  jr    $ra
/* 00E1F8 8000D5F8 27BD0018 */   addiu $sp, $sp, 0x18
