glabel func_80017244
/* 017E44 80017244 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 017E48 80017248 AFB10014 */  sw    $s1, 0x14($sp)
/* 017E4C 8001724C 00008821 */  addu  $s1, $zero, $zero
/* 017E50 80017250 AFB00010 */  sw    $s0, 0x10($sp)
/* 017E54 80017254 00008021 */  addu  $s0, $zero, $zero
/* 017E58 80017258 AFBF0018 */  sw    $ra, 0x18($sp)

.L8001725C:
/* 017E5C 8001725C 00112400 */  sll   $a0, $s1, 0x10
/* 017E60 80017260 3C018008 */  lui   $at, %hi(bssMain_8007FA58)
/* 017E64 80017264 00300821 */  addu  $at, $at, $s0
/* 017E68 80017268 A020FA58 */  sb    $zero, %lo(bssMain_8007FA58)($at)
/* 017E6C 8001726C 3C018008 */  lui   $at, %hi(bssMain_8007FA59)
/* 017E70 80017270 00300821 */  addu  $at, $at, $s0
/* 017E74 80017274 A020FA59 */  sb    $zero, %lo(bssMain_8007FA59)($at)
/* 017E78 80017278 3C018008 */  lui   $at, %hi(bssMain_8007FA5A)
/* 017E7C 8001727C 00300821 */  addu  $at, $at, $s0
/* 017E80 80017280 A020FA5A */  sb    $zero, %lo(bssMain_8007FA5A)($at)
/* 017E84 80017284 3C018008 */  lui   $at, %hi(bssMain_8007FA5B)
/* 017E88 80017288 00300821 */  addu  $at, $at, $s0
/* 017E8C 8001728C A020FA5B */  sb    $zero, %lo(bssMain_8007FA5B)($at)
/* 017E90 80017290 0C0012DD */  jal   func_80004B74
/* 017E94 80017294 00042403 */   sra   $a0, $a0, 0x10

/* 017E98 80017298 26310001 */  addiu $s1, $s1, 1
/* 017E9C 8001729C 2E220004 */  sltiu $v0, $s1, 4
/* 017EA0 800172A0 1440FFEE */  bnez  $v0, .L8001725C
/* 017EA4 800172A4 26100004 */   addiu $s0, $s0, 4

/* 017EA8 800172A8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 017EAC 800172AC 8FB10014 */  lw    $s1, 0x14($sp)
/* 017EB0 800172B0 8FB00010 */  lw    $s0, 0x10($sp)
/* 017EB4 800172B4 03E00008 */  jr    $ra
/* 017EB8 800172B8 27BD0020 */   addiu $sp, $sp, 0x20
