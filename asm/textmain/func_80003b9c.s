glabel func_80003B9C
/* 00479C 80003B9C 3C048004 */  lui   $a0, %hi(D_8003C8C0) # $a0, 0x8004
/* 0047A0 80003BA0 8C84C8C0 */  lw    $a0, %lo(D_8003C8C0)($a0)
/* 0047A4 80003BA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0047A8 80003BA8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0047AC 80003BAC 0C008FD7 */  jal   func_80023F5C
/* 0047B0 80003BB0 00000000 */   nop   

/* 0047B4 80003BB4 14400004 */  bnez  $v0, .L80003BC8
/* 0047B8 80003BB8 24020001 */   li    $v0, 1

/* 0047BC 80003BBC 00001021 */  addu  $v0, $zero, $zero
/* 0047C0 80003BC0 3C018004 */  lui   $at, %hi(D_8003C8C0) # $at, 0x8004
/* 0047C4 80003BC4 AC20C8C0 */  sw    $zero, %lo(D_8003C8C0)($at)

.L80003BC8:
/* 0047C8 80003BC8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0047CC 80003BCC 03E00008 */  jr    $ra
/* 0047D0 80003BD0 27BD0018 */   addiu $sp, $sp, 0x18
