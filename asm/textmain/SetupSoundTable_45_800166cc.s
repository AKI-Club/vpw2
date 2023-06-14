glabel SetupSoundTable_45
/* 0172CC 800166CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0172D0 800166D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0172D4 800166D4 00808821 */  addu  $s1, $a0, $zero
/* 0172D8 800166D8 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0172DC 800166DC AFB30024 */  sw    $s3, 0x24($sp)
/* 0172E0 800166E0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0172E4 800166E4 0C005A3C */  jal   func_800168F0
/* 0172E8 800166E8 AFB00018 */   sw    $s0, 0x18($sp)

/* 0172EC 800166EC 3C028004 */  lui   $v0, %hi(D_80040880) # $v0, 0x8004
/* 0172F0 800166F0 84420880 */  lh    $v0, %lo(D_80040880)($v0)
/* 0172F4 800166F4 14400077 */  bnez  $v0, .L800168D4
/* 0172F8 800166F8 02208021 */   addu  $s0, $s1, $zero

/* 0172FC 800166FC 3C018004 */  lui   $at, %hi(D_80040880) # $at, 0x8004
/* 017300 80016700 A4300880 */  sh    $s0, %lo(D_80040880)($at)
/* 017304 80016704 32220001 */  andi  $v0, $s1, 1
/* 017308 80016708 10400023 */  beqz  $v0, .L80016798
/* 01730C 8001670C 00000000 */   nop   

/* 017310 80016710 3C0201CA */  lui   $v0, %hi(_soundtable4WaveBankRomStart) # $v0, 0x1ca
/* 017314 80016714 2442C700 */  addiu $v0, %lo(_soundtable4WaveBankRomStart) # addiu $v0, $v0, -0x3900
/* 017318 80016718 3C1201CA */  lui   $s2, %hi(_soundtable4PointerRomStart) # $s2, 0x1ca
/* 01731C 8001671C 26528A10 */  addiu $s2, %lo(_soundtable4PointerRomStart) # addiu $s2, $s2, -0x75f0
/* 017320 80016720 00528823 */  subu  $s1, $v0, $s2
/* 017324 80016724 0C000226 */  jal   aki_malloc
/* 017328 80016728 02202021 */   addu  $a0, $s1, $zero

/* 01732C 8001672C 3C0301CA */  lui   $v1, %hi(_soundtable4PointerRomStart) # $v1, 0x1ca
/* 017330 80016730 24638A10 */  addiu $v1, %lo(_soundtable4PointerRomStart) # addiu $v1, $v1, -0x75f0
/* 017334 80016734 3C1301C9 */  lui   $s3, %hi(_soundtable3TableRomStart) # $s3, 0x1c9
/* 017338 80016738 26737400 */  addiu $s3, %lo(_soundtable3TableRomStart) # addiu $s3, $s3, 0x7400
/* 01733C 8001673C 00738023 */  subu  $s0, $v1, $s3
/* 017340 80016740 3C018008 */  lui   $at, %hi(bssMain_8007FA30) # $at, 0x8008
/* 017344 80016744 AC22FA30 */  sw    $v0, %lo(bssMain_8007FA30)($at)
/* 017348 80016748 0C000226 */  jal   aki_malloc
/* 01734C 8001674C 02002021 */   addu  $a0, $s0, $zero

/* 017350 80016750 3C058008 */  lui   $a1, %hi(bssMain_8007FA30) # $a1, 0x8008
/* 017354 80016754 8CA5FA30 */  lw    $a1, %lo(bssMain_8007FA30)($a1)
/* 017358 80016758 3C018008 */  lui   $at, %hi(bssMain_8007FA2C) # $at, 0x8008
/* 01735C 8001675C 10A0000C */  beqz  $a1, .L80016790
/* 017360 80016760 AC22FA2C */   sw    $v0, %lo(bssMain_8007FA2C)($at)

/* 017364 80016764 1040000A */  beqz  $v0, .L80016790
/* 017368 80016768 02402021 */   addu  $a0, $s2, $zero

/* 01736C 8001676C 0C000198 */  jal   LoadDataDMA
/* 017370 80016770 02203021 */   addu  $a2, $s1, $zero

/* 017374 80016774 3C058008 */  lui   $a1, %hi(bssMain_8007FA2C) # $a1, 0x8008
/* 017378 80016778 8CA5FA2C */  lw    $a1, %lo(bssMain_8007FA2C)($a1)
/* 01737C 8001677C 02602021 */  addu  $a0, $s3, $zero
/* 017380 80016780 0C000198 */  jal   LoadDataDMA
/* 017384 80016784 02003021 */   addu  $a2, $s0, $zero

/* 017388 80016788 080059E6 */  j     .L80016798
/* 01738C 8001678C 00000000 */   nop   

.L80016790:
/* 017390 80016790 0C005A3C */  jal   func_800168F0
/* 017394 80016794 00000000 */   nop   

.L80016798:
/* 017398 80016798 3C028004 */  lui   $v0, %hi(D_80040880) # $v0, 0x8004
/* 01739C 8001679C 94420880 */  lhu   $v0, %lo(D_80040880)($v0)
/* 0173A0 800167A0 30420002 */  andi  $v0, $v0, 2
/* 0173A4 800167A4 10400023 */  beqz  $v0, .L80016834
/* 0173A8 800167A8 00000000 */   nop   

/* 0173AC 800167AC 3C0201D1 */  lui   $v0, %hi(_soundtable5WaveBankRomStart) # $v0, 0x1d1
/* 0173B0 800167B0 2442FB10 */  addiu $v0, %lo(_soundtable5WaveBankRomStart) # addiu $v0, $v0, -0x4f0
/* 0173B4 800167B4 3C1201D1 */  lui   $s2, %hi(_soundtable5PointerRomStart) # $s2, 0x1d1
/* 0173B8 800167B8 2652C170 */  addiu $s2, %lo(_soundtable5PointerRomStart) # addiu $s2, $s2, -0x3e90
/* 0173BC 800167BC 00528823 */  subu  $s1, $v0, $s2
/* 0173C0 800167C0 0C000226 */  jal   aki_malloc
/* 0173C4 800167C4 02202021 */   addu  $a0, $s1, $zero

/* 0173C8 800167C8 3C0301D1 */  lui   $v1, %hi(_soundtable5PointerRomStart) # $v1, 0x1d1
/* 0173CC 800167CC 2463C170 */  addiu $v1, %lo(_soundtable5PointerRomStart) # addiu $v1, $v1, -0x3e90
/* 0173D0 800167D0 3C1301D1 */  lui   $s3, %hi(_soundtable4TableRomStart) # $s3, 0x1d1
/* 0173D4 800167D4 2673AC40 */  addiu $s3, %lo(_soundtable4TableRomStart) # addiu $s3, $s3, -0x53c0
/* 0173D8 800167D8 00738023 */  subu  $s0, $v1, $s3
/* 0173DC 800167DC 3C018008 */  lui   $at, %hi(bssMain_8007FA38) # $at, 0x8008
/* 0173E0 800167E0 AC22FA38 */  sw    $v0, %lo(bssMain_8007FA38)($at)
/* 0173E4 800167E4 0C000226 */  jal   aki_malloc
/* 0173E8 800167E8 02002021 */   addu  $a0, $s0, $zero

/* 0173EC 800167EC 3C058008 */  lui   $a1, %hi(bssMain_8007FA38) # $a1, 0x8008
/* 0173F0 800167F0 8CA5FA38 */  lw    $a1, %lo(bssMain_8007FA38)($a1)
/* 0173F4 800167F4 3C018008 */  lui   $at, %hi(bssMain_8007FA34) # $at, 0x8008
/* 0173F8 800167F8 10A0000C */  beqz  $a1, .L8001682C
/* 0173FC 800167FC AC22FA34 */   sw    $v0, %lo(bssMain_8007FA34)($at)

/* 017400 80016800 1040000A */  beqz  $v0, .L8001682C
/* 017404 80016804 02402021 */   addu  $a0, $s2, $zero

/* 017408 80016808 0C000198 */  jal   LoadDataDMA
/* 01740C 8001680C 02203021 */   addu  $a2, $s1, $zero

/* 017410 80016810 3C058008 */  lui   $a1, %hi(bssMain_8007FA34) # $a1, 0x8008
/* 017414 80016814 8CA5FA34 */  lw    $a1, %lo(bssMain_8007FA34)($a1)
/* 017418 80016818 02602021 */  addu  $a0, $s3, $zero
/* 01741C 8001681C 0C000198 */  jal   LoadDataDMA
/* 017420 80016820 02003021 */   addu  $a2, $s0, $zero

/* 017424 80016824 08005A0D */  j     .L80016834
/* 017428 80016828 00000000 */   nop   

.L8001682C:
/* 01742C 8001682C 0C005A3C */  jal   func_800168F0
/* 017430 80016830 00000000 */   nop   

.L80016834:
/* 017434 80016834 3C028004 */  lui   $v0, %hi(D_80040880) # $v0, 0x8004
/* 017438 80016838 84420880 */  lh    $v0, %lo(D_80040880)($v0)
/* 01743C 8001683C 10400025 */  beqz  $v0, .L800168D4
/* 017440 80016840 00401821 */   addu  $v1, $v0, $zero

/* 017444 80016844 30620001 */  andi  $v0, $v1, 1
/* 017448 80016848 1040000E */  beqz  $v0, .L80016884
/* 01744C 8001684C 00000000 */   nop   

/* 017450 80016850 3C048008 */  lui   $a0, %hi(bssMain_8007FA2C) # $a0, 0x8008
/* 017454 80016854 0C0090F4 */  jal   func_800243D0
/* 017458 80016858 8C84FA2C */   lw    $a0, %lo(bssMain_8007FA2C)($a0)

/* 01745C 8001685C 3C048008 */  lui   $a0, %hi(bssMain_8007FA30) # $a0, 0x8008
/* 017460 80016860 8C84FA30 */  lw    $a0, %lo(bssMain_8007FA30)($a0)
/* 017464 80016864 3C0501CA */  lui   $a1, %hi(_soundtable4WaveBankRomStart) # $a1, 0x1ca
/* 017468 80016868 0C009082 */  jal   func_80024208
/* 01746C 8001686C 24A5C700 */   addiu $a1, %lo(_soundtable4WaveBankRomStart) # addiu $a1, $a1, -0x3900

/* 017470 80016870 3C048008 */  lui   $a0, %hi(bssMain_8007FA2C) # $a0, 0x8008
/* 017474 80016874 8C84FA2C */  lw    $a0, %lo(bssMain_8007FA2C)($a0)
/* 017478 80016878 3C058008 */  lui   $a1, %hi(bssMain_8007FA30) # $a1, 0x8008
/* 01747C 8001687C 0C009120 */  jal   func_80024480
/* 017480 80016880 8CA5FA30 */   lw    $a1, %lo(bssMain_8007FA30)($a1)

.L80016884:
/* 017484 80016884 3C028004 */  lui   $v0, %hi(D_80040880) # $v0, 0x8004
/* 017488 80016888 94420880 */  lhu   $v0, %lo(D_80040880)($v0)
/* 01748C 8001688C 30420002 */  andi  $v0, $v0, 2
/* 017490 80016890 1040000E */  beqz  $v0, .L800168CC
/* 017494 80016894 00000000 */   nop   

/* 017498 80016898 3C048008 */  lui   $a0, %hi(bssMain_8007FA34) # $a0, 0x8008
/* 01749C 8001689C 0C0090F4 */  jal   func_800243D0
/* 0174A0 800168A0 8C84FA34 */   lw    $a0, %lo(bssMain_8007FA34)($a0)

/* 0174A4 800168A4 3C048008 */  lui   $a0, %hi(bssMain_8007FA38) # $a0, 0x8008
/* 0174A8 800168A8 8C84FA38 */  lw    $a0, %lo(bssMain_8007FA38)($a0)
/* 0174AC 800168AC 3C0501D1 */  lui   $a1, %hi(_soundtable5WaveBankRomStart) # $a1, 0x1d1
/* 0174B0 800168B0 0C009082 */  jal   func_80024208
/* 0174B4 800168B4 24A5FB10 */   addiu $a1, %lo(_soundtable5WaveBankRomStart) # addiu $a1, $a1, -0x4f0

/* 0174B8 800168B8 3C048008 */  lui   $a0, %hi(bssMain_8007FA34) # $a0, 0x8008
/* 0174BC 800168BC 8C84FA34 */  lw    $a0, %lo(bssMain_8007FA34)($a0)
/* 0174C0 800168C0 3C058008 */  lui   $a1, %hi(bssMain_8007FA38) # $a1, 0x8008
/* 0174C4 800168C4 0C009120 */  jal   func_80024480
/* 0174C8 800168C8 8CA5FA38 */   lw    $a1, %lo(bssMain_8007FA38)($a1)

.L800168CC:
/* 0174CC 800168CC 3C028004 */  lui   $v0, %hi(D_80040880) # $v0, 0x8004
/* 0174D0 800168D0 84420880 */  lh    $v0, %lo(D_80040880)($v0)

.L800168D4:
/* 0174D4 800168D4 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0174D8 800168D8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0174DC 800168DC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0174E0 800168E0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0174E4 800168E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0174E8 800168E8 03E00008 */  jr    $ra
/* 0174EC 800168EC 27BD0030 */   addiu $sp, $sp, 0x30
