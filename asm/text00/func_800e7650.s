# Params:
# $a0 -
# $a1 - write address 1
# $a2 - write address 2

glabel func_800E7650
/* 04CAA0 800E7650 3082000F */  andi  $v0, $a0, 0xf
/* 04CAA4 800E7654 00021080 */  sll   $v0, $v0, 2
/* 04CAA8 800E7658 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CAAC 800E765C 00220821 */  addu  $at, $at, $v0
/* 04CAB0 800E7660 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CAB4 800E7664 2484FFFD */  addiu $a0, $a0, -3
/* 04CAB8 800E7668 00021023 */  negu  $v0, $v0
/* 04CABC 800E766C ACA20000 */  sw    $v0, ($a1)
/* 04CAC0 800E7670 3082000F */  andi  $v0, $a0, 0xf
/* 04CAC4 800E7674 00021080 */  sll   $v0, $v0, 2
/* 04CAC8 800E7678 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CACC 800E767C 00220821 */  addu  $at, $at, $v0
/* 04CAD0 800E7680 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CAD4 800E7684 2484FFFF */  addiu $a0, $a0, -1
/* 04CAD8 800E7688 ACA20004 */  sw    $v0, 4($a1)
/* 04CADC 800E768C 3082000F */  andi  $v0, $a0, 0xf
/* 04CAE0 800E7690 00021080 */  sll   $v0, $v0, 2
/* 04CAE4 800E7694 3C018010 */  lui   $at, %hi(tbl0_80105B48)
/* 04CAE8 800E7698 00220821 */  addu  $at, $at, $v0
/* 04CAEC 800E769C 8C225B48 */  lw    $v0, %lo(tbl0_80105B48)($at)
/* 04CAF0 800E76A0 2484FFFD */  addiu $a0, $a0, -3
/* 04CAF4 800E76A4 3084000F */  andi  $a0, $a0, 0xf
/* 04CAF8 800E76A8 00042080 */  sll   $a0, $a0, 2
/* 04CAFC 800E76AC 00021023 */  negu  $v0, $v0
/* 04CB00 800E76B0 ACC20000 */  sw    $v0, ($a2)
/* 04CB04 800E76B4 3C028010 */  lui   $v0, %hi(tbl0_80105B48)
/* 04CB08 800E76B8 00441021 */  addu  $v0, $v0, $a0
/* 04CB0C 800E76BC 8C425B48 */  lw    $v0, %lo(tbl0_80105B48)($v0)
/* 04CB10 800E76C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04CB14 800E76C4 ACC20004 */  sw    $v0, 4($a2)
/* 04CB18 800E76C8 03E00008 */  jr    $ra
/* 04CB1C 800E76CC 27BD0018 */   addiu $sp, $sp, 0x18
