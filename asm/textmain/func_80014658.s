# Params:
# $a0 -
# $a1 -

glabel func_80014658
/* 015258 80014658 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01525C 8001465C 00052C00 */  sll   $a1, $a1, 0x10
/* 015260 80014660 00052BC3 */  sra   $a1, $a1, 0xf
/* 015264 80014664 00042400 */  sll   $a0, $a0, 0x10
/* 015268 80014668 00042403 */  sra   $a0, $a0, 0x10
/* 01526C 8001466C 00041080 */  sll   $v0, $a0, 2
/* 015270 80014670 00441021 */  addu  $v0, $v0, $a0
/* 015274 80014674 00021980 */  sll   $v1, $v0, 6
/* 015278 80014678 00431021 */  addu  $v0, $v0, $v1
/* 01527C 8001467C AFB00010 */  sw    $s0, 0x10($sp)
/* 015280 80014680 00028080 */  sll   $s0, $v0, 2
/* 015284 80014684 AFB20018 */  sw    $s2, 0x18($sp)
/* 015288 80014688 3C12800A */  lui   $s2, %hi(bssMain_800A0B50) # $s2, 0x800a
/* 01528C 8001468C 26520B50 */  addiu $s2, %lo(bssMain_800A0B50) # addiu $s2, $s2, 0xb50
/* 015290 80014690 AFBF001C */  sw    $ra, 0x1c($sp)
/* 015294 80014694 AFB10014 */  sw    $s1, 0x14($sp)
/* 015298 80014698 3C11800A */  lui   $s1, %hi(bssMain_8009D5E0)
/* 01529C 8001469C 02258821 */  addu  $s1, $s1, $a1
/* 0152A0 800146A0 9631D5E0 */  lhu   $s1, %lo(bssMain_8009D5E0)($s1)
/* 0152A4 800146A4 02122021 */  addu  $a0, $s0, $s2
/* 0152A8 800146A8 3C058004 */  lui   $a1, %hi(D_8003FFB0) # $a1, 0x8004
/* 0152AC 800146AC 24A5FFB0 */  addiu $a1, %lo(D_8003FFB0) # addiu $a1, $a1, -0x50
/* 0152B0 800146B0 0C0050A1 */  jal   func_80014284
/* 0152B4 800146B4 02203021 */   addu  $a2, $s1, $zero

/* 0152B8 800146B8 2644FCC0 */  addiu $a0, $s2, -0x340
/* 0152BC 800146BC 02042021 */  addu  $a0, $s0, $a0
/* 0152C0 800146C0 3C058004 */  lui   $a1, %hi(D_800400B0) # $a1, 0x8004
/* 0152C4 800146C4 24A500B0 */  addiu $a1, %lo(D_800400B0) # addiu $a1, $a1, 0xb0
/* 0152C8 800146C8 0C0050A1 */  jal   func_80014284
/* 0152CC 800146CC 02203021 */   addu  $a2, $s1, $zero

/* 0152D0 800146D0 3C02800A */  lui   $v0, %hi(bssMain_800A07FC)
/* 0152D4 800146D4 00501021 */  addu  $v0, $v0, $s0
/* 0152D8 800146D8 8C4207FC */  lw    $v0, %lo(bssMain_800A07FC)($v0)
/* 0152DC 800146DC 90430000 */  lbu   $v1, ($v0)
/* 0152E0 800146E0 2402003F */  li    $v0, 63
/* 0152E4 800146E4 14620005 */  bne   $v1, $v0, .L800146FC
/* 0152E8 800146E8 2644FC8C */   addiu $a0, $s2, -0x374

/* 0152EC 800146EC 3C058004 */  lui   $a1, %hi(D_800402B0) # $a1, 0x8004
/* 0152F0 800146F0 24A502B0 */  addiu $a1, %lo(D_800402B0) # addiu $a1, $a1, 0x2b0
/* 0152F4 800146F4 080051C2 */  j     .L80014708
/* 0152F8 800146F8 02042021 */   addu  $a0, $s0, $a0

.L800146FC:
/* 0152FC 800146FC 02042021 */  addu  $a0, $s0, $a0
/* 015300 80014700 3C058004 */  lui   $a1, %hi(D_800401B0) # $a1, 0x8004
/* 015304 80014704 24A501B0 */  addiu $a1, %lo(D_800401B0) # addiu $a1, $a1, 0x1b0

.L80014708:
/* 015308 80014708 0C0050A1 */  jal   func_80014284
/* 01530C 8001470C 02203021 */   addu  $a2, $s1, $zero

/* 015310 80014710 8FBF001C */  lw    $ra, 0x1c($sp)
/* 015314 80014714 8FB20018 */  lw    $s2, 0x18($sp)
/* 015318 80014718 8FB10014 */  lw    $s1, 0x14($sp)
/* 01531C 8001471C 8FB00010 */  lw    $s0, 0x10($sp)
/* 015320 80014720 03E00008 */  jr    $ra
/* 015324 80014724 27BD0020 */   addiu $sp, $sp, 0x20

/* 015328 80014728 03E00008 */  jr    $ra
/* 01532C 8001472C 00000000 */   nop   