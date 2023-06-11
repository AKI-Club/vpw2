# Params:
# $a0 - Stable number?

glabel func_8000A710
/* 00B310 8000A710 000410C0 */  sll   $v0, $a0, 3
/* 00B314 8000A714 00441023 */  subu  $v0, $v0, $a0
/* 00B318 8000A718 000248C0 */  sll   $t1, $v0, 3
/* 00B31C 8000A71C 3C0A800A */  lui   $t2, %hi(bssMain_800A4510) # $t2, 0x800a
/* 00B320 8000A720 254A4510 */  addiu $t2, %lo(bssMain_800A4510) # addiu $t2, $t2, 0x4510
/* 00B324 8000A724 00004021 */  addu  $t0, $zero, $zero

# outer loop
.L8000A728:
/* 00B328 8000A728 00003021 */  addu  $a2, $zero, $zero
/* 00B32C 8000A72C 24070004 */  li    $a3, 4
/* 00B330 8000A730 01202821 */  addu  $a1, $t1, $zero

# inner loop
.L8000A734:
/* 00B334 8000A734 3C02800A */  lui   $v0, %hi(bssMain_800A4510)
/* 00B338 8000A738 00451021 */  addu  $v0, $v0, $a1
/* 00B33C 8000A73C 94424510 */  lhu   $v0, %lo(bssMain_800A4510)($v0)
/* 00B340 8000A740 54400016 */  bnezl $v0, .L8000A79C
/* 00B344 8000A744 24E70004 */   addiu $a3, $a3, 4

/* 00B348 8000A748 00E91821 */  addu  $v1, $a3, $t1
/* 00B34C 8000A74C 3C02800A */  lui   $v0, %hi(bssMain_800A4510)
/* 00B350 8000A750 00431021 */  addu  $v0, $v0, $v1
/* 00B354 8000A754 94424510 */  lhu   $v0, %lo(bssMain_800A4510)($v0)
/* 00B358 8000A758 10400010 */  beqz  $v0, .L8000A79C
/* 00B35C 8000A75C 24E70004 */   addiu $a3, $a3, 4

/* 00B360 8000A760 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00B364 8000A764 00250821 */  addu  $at, $at, $a1
/* 00B368 8000A768 A4224510 */  sh    $v0, %lo(bssMain_800A4510)($at)

/* 00B36C 8000A76C 3C02800A */  lui   $v0, %hi(bssMain_800A4510+2)
/* 00B370 8000A770 00431021 */  addu  $v0, $v0, $v1
/* 00B374 8000A774 94424512 */  lhu   $v0, %lo(bssMain_800A4510+2)($v0)
/* 00B378 8000A778 24080001 */  li    $t0, 1
/* 00B37C 8000A77C 3C01800A */  lui   $at, %hi(bssMain_800A4510+2)
/* 00B380 8000A780 00250821 */  addu  $at, $at, $a1
/* 00B384 8000A784 A4224512 */  sh    $v0, %lo(bssMain_800A4510+2)($at)

/* 00B388 8000A788 006A1021 */  addu  $v0, $v1, $t2
/* 00B38C 8000A78C A4400002 */  sh    $zero, 2($v0)
/* 00B390 8000A790 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00B394 8000A794 00230821 */  addu  $at, $at, $v1
/* 00B398 8000A798 A4204510 */  sh    $zero, %lo(bssMain_800A4510)($at)

.L8000A79C:
/* 00B39C 8000A79C 24C60001 */  addiu $a2, $a2, 1
/* 00B3A0 8000A7A0 28C20007 */  slti  $v0, $a2, 7
/* 00B3A4 8000A7A4 1440FFE3 */  bnez  $v0, .L8000A734
/* 00B3A8 8000A7A8 24A50004 */   addiu $a1, $a1, 4

/* 00B3AC 8000A7AC 1500FFDE */  bnez  $t0, .L8000A728
/* 00B3B0 8000A7B0 00004021 */   addu  $t0, $zero, $zero


/* 00B3B4 8000A7B4 00003021 */  addu  $a2, $zero, $zero
/* 00B3B8 8000A7B8 000410C0 */  sll   $v0, $a0, 3
/* 00B3BC 8000A7BC 00441023 */  subu  $v0, $v0, $a0
/* 00B3C0 8000A7C0 000210C0 */  sll   $v0, $v0, 3
# number of wrestlers in stable
/* 00B3C4 8000A7C4 3C01800A */  lui   $at, %hi(bssMain_800A4530)
/* 00B3C8 8000A7C8 00220821 */  addu  $at, $at, $v0
/* 00B3CC 8000A7CC A4204530 */  sh    $zero, %lo(bssMain_800A4530)($at)
/* 00B3D0 8000A7D0 00402021 */  addu  $a0, $v0, $zero
/* 00B3D4 8000A7D4 3C02800A */  lui   $v0, %hi(bssMain_800A4510) # $v0, 0x800a
/* 00B3D8 8000A7D8 24424510 */  addiu $v0, %lo(bssMain_800A4510) # addiu $v0, $v0, 0x4510
/* 00B3DC 8000A7DC 00822821 */  addu  $a1, $a0, $v0
/* 00B3E0 8000A7E0 00801821 */  addu  $v1, $a0, $zero

.L8000A7E4:
/* 00B3E4 8000A7E4 3C02800A */  lui   $v0, %hi(bssMain_800A4510)
/* 00B3E8 8000A7E8 00431021 */  addu  $v0, $v0, $v1
/* 00B3EC 8000A7EC 94424510 */  lhu   $v0, %lo(bssMain_800A4510)($v0)
/* 00B3F0 8000A7F0 10400006 */  beqz  $v0, .L8000A80C
/* 00B3F4 8000A7F4 24C60001 */   addiu $a2, $a2, 1

# number of wrestlers in stable
/* 00B3F8 8000A7F8 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00B3FC 8000A7FC 00441021 */  addu  $v0, $v0, $a0
/* 00B400 8000A800 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00B404 8000A804 24420001 */  addiu $v0, $v0, 1
/* 00B408 8000A808 A4A20020 */  sh    $v0, 0x20($a1)

.L8000A80C:
/* 00B40C 8000A80C 28C20008 */  slti  $v0, $a2, 8
/* 00B410 8000A810 1440FFF4 */  bnez  $v0, .L8000A7E4
/* 00B414 8000A814 24630004 */   addiu $v1, $v1, 4

/* 00B418 8000A818 03E00008 */  jr    $ra
/* 00B41C 8000A81C 00000000 */   nop   
