glabel func_800E76D0
/* 04CB20 800E76D0 3082000F */  andi  $v0, $a0, 0xf
/* 04CB24 800E76D4 00021080 */  sll   $v0, $v0, 2
/* 04CB28 800E76D8 8CA30000 */  lw    $v1, ($a1)
/* 04CB2C 800E76DC 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CB30 800E76E0 00220821 */  addu  $at, $at, $v0
/* 04CB34 800E76E4 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CB38 800E76E8 2484FFFD */  addiu $a0, $a0, -3
/* 04CB3C 800E76EC 00621823 */  subu  $v1, $v1, $v0
/* 04CB40 800E76F0 3082000F */  andi  $v0, $a0, 0xf
/* 04CB44 800E76F4 00021080 */  sll   $v0, $v0, 2
/* 04CB48 800E76F8 ACA30000 */  sw    $v1, ($a1)
/* 04CB4C 800E76FC 8CA30004 */  lw    $v1, 4($a1)
/* 04CB50 800E7700 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CB54 800E7704 00220821 */  addu  $at, $at, $v0
/* 04CB58 800E7708 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CB5C 800E770C 2484FFFF */  addiu $a0, $a0, -1
/* 04CB60 800E7710 00621821 */  addu  $v1, $v1, $v0
/* 04CB64 800E7714 3082000F */  andi  $v0, $a0, 0xf
/* 04CB68 800E7718 00021080 */  sll   $v0, $v0, 2
/* 04CB6C 800E771C ACA30004 */  sw    $v1, 4($a1)
/* 04CB70 800E7720 8CC30000 */  lw    $v1, ($a2)
/* 04CB74 800E7724 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CB78 800E7728 00220821 */  addu  $at, $at, $v0
/* 04CB7C 800E772C 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CB80 800E7730 2484FFFD */  addiu $a0, $a0, -3
/* 04CB84 800E7734 00621823 */  subu  $v1, $v1, $v0
/* 04CB88 800E7738 8CC20004 */  lw    $v0, 4($a2)
/* 04CB8C 800E773C 3084000F */  andi  $a0, $a0, 0xf
/* 04CB90 800E7740 00042080 */  sll   $a0, $a0, 2
/* 04CB94 800E7744 ACC30000 */  sw    $v1, ($a2)
/* 04CB98 800E7748 3C038010 */  lui   $v1, %hi(tbl0_80105B48)
/* 04CB9C 800E774C 00641821 */  addu  $v1, $v1, $a0
/* 04CBA0 800E7750 8C635B48 */  lw    $v1, %lo(tbl0_80105B48)($v1)
/* 04CBA4 800E7754 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04CBA8 800E7758 00431021 */  addu  $v0, $v0, $v1
/* 04CBAC 800E775C ACC20004 */  sw    $v0, 4($a2)
/* 04CBB0 800E7760 03E00008 */  jr    $ra
/* 04CBB4 800E7764 27BD0018 */   addiu $sp, $sp, 0x18
