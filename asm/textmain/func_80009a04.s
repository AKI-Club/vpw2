# Params:
# $a0 -

glabel func_80009A04
/* 00A604 80009A04 27BDFFF8 */  addiu $sp, $sp, -8
/* 00A608 80009A08 00003021 */  addu  $a2, $zero, $zero
/* 00A60C 80009A0C 00002821 */  addu  $a1, $zero, $zero

.L80009A10:
# number of wrestlers in stable
/* 00A610 80009A10 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00A614 80009A14 00451021 */  addu  $v0, $v0, $a1
/* 00A618 80009A18 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00A61C 80009A1C 18400010 */  blez  $v0, .L80009A60
/* 00A620 80009A20 00001821 */   addu  $v1, $zero, $zero

/* 00A624 80009A24 00031080 */  sll   $v0, $v1, 2

.L80009A28:
/* 00A628 80009A28 00451021 */  addu  $v0, $v0, $a1
/* 00A62C 80009A2C 3C01800A */  lui   $at, %hi(bssMain_800A4510+2)
/* 00A630 80009A30 00220821 */  addu  $at, $at, $v0
/* 00A634 80009A34 94224512 */  lhu   $v0, %lo(bssMain_800A4510+2)($at)
/* 00A638 80009A38 14440003 */  bne   $v0, $a0, .L80009A48
/* 00A63C 80009A3C 24630001 */   addiu $v1, $v1, 1

/* 00A640 80009A40 0800269D */  j     .L80009A74
/* 00A644 80009A44 00C01021 */   addu  $v0, $a2, $zero

.L80009A48:
# number of wrestlers in stable
/* 00A648 80009A48 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00A64C 80009A4C 00451021 */  addu  $v0, $v0, $a1
/* 00A650 80009A50 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00A654 80009A54 0062102A */  slt   $v0, $v1, $v0
/* 00A658 80009A58 1440FFF3 */  bnez  $v0, .L80009A28
/* 00A65C 80009A5C 00031080 */   sll   $v0, $v1, 2

.L80009A60:
/* 00A660 80009A60 24C60001 */  addiu $a2, $a2, 1
/* 00A664 80009A64 28C20011 */  slti  $v0, $a2, 0x11
/* 00A668 80009A68 1440FFE9 */  bnez  $v0, .L80009A10
/* 00A66C 80009A6C 24A50038 */   addiu $a1, $a1, 0x38

/* 00A670 80009A70 00001021 */  addu  $v0, $zero, $zero

.L80009A74:
/* 00A674 80009A74 03E00008 */  jr    $ra
/* 00A678 80009A78 27BD0008 */   addiu $sp, $sp, 8
