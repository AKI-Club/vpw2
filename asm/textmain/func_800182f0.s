glabel func_800182F0
/* 018EF0 800182F0 3C028004 */  lui   $v0, %hi(D_80040888) # $v0, 0x8004
/* 018EF4 800182F4 8C420888 */  lw    $v0, %lo(D_80040888)($v0)
/* 018EF8 800182F8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 018EFC 800182FC AFBF004C */  sw    $ra, 0x4c($sp)
/* 018F00 80018300 AFBE0048 */  sw    $fp, 0x48($sp)
/* 018F04 80018304 AFB70044 */  sw    $s7, 0x44($sp)
/* 018F08 80018308 AFB60040 */  sw    $s6, 0x40($sp)
/* 018F0C 8001830C AFB5003C */  sw    $s5, 0x3c($sp)
/* 018F10 80018310 AFB40038 */  sw    $s4, 0x38($sp)
/* 018F14 80018314 AFB30034 */  sw    $s3, 0x34($sp)
/* 018F18 80018318 AFB20030 */  sw    $s2, 0x30($sp)
/* 018F1C 8001831C AFB1002C */  sw    $s1, 0x2c($sp)
/* 018F20 80018320 1040007F */  beqz  $v0, .L80018520
/* 018F24 80018324 AFB00028 */   sw    $s0, 0x28($sp)

/* 018F28 80018328 0000F021 */  addu  $fp, $zero, $zero
/* 018F2C 8001832C 001E1400 */  sll   $v0, $fp, 0x10

.L80018330:
/* 018F30 80018330 00022403 */  sra   $a0, $v0, 0x10
/* 018F34 80018334 00042880 */  sll   $a1, $a0, 2
/* 018F38 80018338 00A43821 */  addu  $a3, $a1, $a0
/* 018F3C 8001833C 000710C0 */  sll   $v0, $a3, 3
/* 018F40 80018340 00441023 */  subu  $v0, $v0, $a0
/* 018F44 80018344 00021100 */  sll   $v0, $v0, 4
/* 018F48 80018348 3C03800A */  lui   $v1, %hi(bssMain_800A3818)
/* 018F4C 8001834C 00621821 */  addu  $v1, $v1, $v0
/* 018F50 80018350 8C633818 */  lw    $v1, %lo(bssMain_800A3818)($v1)
/* 018F54 80018354 30620004 */  andi  $v0, $v1, 4
/* 018F58 80018358 1440006B */  bnez  $v0, .L80018508
/* 018F5C 8001835C 27C20001 */   addiu $v0, $fp, 1

/* 018F60 80018360 30620400 */  andi  $v0, $v1, 0x400
/* 018F64 80018364 14400068 */  bnez  $v0, .L80018508
/* 018F68 80018368 27C20001 */   addiu $v0, $fp, 1

/* 018F6C 8001836C 00008821 */  addu  $s1, $zero, $zero
/* 018F70 80018370 3C0B8008 */  lui   $t3, %hi(bssMain_8007FA78)
/* 018F74 80018374 01645821 */  addu  $t3, $t3, $a0
/* 018F78 80018378 816BFA78 */  lb    $t3, %lo(bssMain_8007FA78)($t3)
/* 018F7C 8001837C 00808021 */  addu  $s0, $a0, $zero
/* 018F80 80018380 00101040 */  sll   $v0, $s0, 1
/* 018F84 80018384 3C0C8008 */  lui   $t4, %hi(bssMain_80079EB4) # $t4, 0x8008
/* 018F88 80018388 258C9EB4 */  addiu $t4, %lo(bssMain_80079EB4) # addiu $t4, $t4, -0x614c
/* 018F8C 8001838C 004C5021 */  addu  $t2, $v0, $t4
/* 018F90 80018390 00074900 */  sll   $t1, $a3, 4
/* 018F94 80018394 00501021 */  addu  $v0, $v0, $s0
/* 018F98 80018398 00021080 */  sll   $v0, $v0, 2
/* 018F9C 8001839C 00501023 */  subu  $v0, $v0, $s0
/* 018FA0 800183A0 00021080 */  sll   $v0, $v0, 2
/* 018FA4 800183A4 00501023 */  subu  $v0, $v0, $s0
/* 018FA8 800183A8 00021140 */  sll   $v0, $v0, 5
/* 018FAC 800183AC 00501023 */  subu  $v0, $v0, $s0
/* 018FB0 800183B0 0002B880 */  sll   $s7, $v0, 2
/* 018FB4 800183B4 0000B021 */  addu  $s6, $zero, $zero
/* 018FB8 800183B8 0000A821 */  addu  $s5, $zero, $zero
/* 018FBC 800183BC 3C138004 */  lui   $s3, %hi(D_800406E8) # $s3, 0x8004
/* 018FC0 800183C0 267306E8 */  addiu $s3, %lo(D_800406E8) # addiu $s3, $s3, 0x6e8
/* 018FC4 800183C4 3C0C8008 */  lui   $t4, %hi(bssMain_8007FA80) # $t4, 0x8008
/* 018FC8 800183C8 258CFA80 */  addiu $t4, %lo(bssMain_8007FA80) # addiu $t4, $t4, -0x580
/* 018FCC 800183CC 00AC9021 */  addu  $s2, $a1, $t4
/* 018FD0 800183D0 3C148004 */  lui   $s4, %hi(ptrTbl_800406D8) # $s4, 0x8004
/* 018FD4 800183D4 269406D8 */  addiu $s4, %lo(ptrTbl_800406D8) # addiu $s4, $s4, 0x6d8

.L800183D8:
/* 018FD8 800183D8 8E820000 */  lw    $v0, ($s4)
/* 018FDC 800183DC 004B1021 */  addu  $v0, $v0, $t3
/* 018FE0 800183E0 80430000 */  lb    $v1, ($v0)
/* 018FE4 800183E4 82420000 */  lb    $v0, ($s2)
/* 018FE8 800183E8 1062003E */  beq   $v1, $v0, .L800184E4
/* 018FEC 800183EC 00603021 */   addu  $a2, $v1, $zero

/* 018FF0 800183F0 32220001 */  andi  $v0, $s1, 1
/* 018FF4 800183F4 1040000B */  beqz  $v0, .L80018424
/* 018FF8 800183F8 A2460000 */   sb    $a2, ($s2)

/* 018FFC 800183FC 82620000 */  lb    $v0, ($s3)
/* 019000 80018400 00021840 */  sll   $v1, $v0, 1
/* 019004 80018404 00621821 */  addu  $v1, $v1, $v0
/* 019008 80018408 00031880 */  sll   $v1, $v1, 2
/* 01900C 8001840C 00621823 */  subu  $v1, $v1, $v0
/* 019010 80018410 00031900 */  sll   $v1, $v1, 4
/* 019014 80018414 3C028008 */  lui   $v0, %hi(bssMain_8007FF90) # $v0, 0x8008
/* 019018 80018418 2442FF90 */  addiu $v0, %lo(bssMain_8007FF90) # addiu $v0, $v0, -0x70
/* 01901C 8001841C 08006118 */  j     .L80018460
/* 019020 80018420 00624021 */   addu  $t0, $v1, $v0

.L80018424:
/* 019024 80018424 82620000 */  lb    $v0, ($s3)
/* 019028 80018428 85430000 */  lh    $v1, ($t2)
/* 01902C 8001842C 00022040 */  sll   $a0, $v0, 1
/* 019030 80018430 3C018004 */  lui   $at, %hi(D_8004067C)
/* 019034 80018434 00230821 */  addu  $at, $at, $v1
/* 019038 80018438 8023067C */  lb    $v1, %lo(D_8004067C)($at)
/* 01903C 8001843C 00822021 */  addu  $a0, $a0, $v0
/* 019040 80018440 00042180 */  sll   $a0, $a0, 6
/* 019044 80018444 00031040 */  sll   $v0, $v1, 1
/* 019048 80018448 00431021 */  addu  $v0, $v0, $v1
/* 01904C 8001844C 00021100 */  sll   $v0, $v0, 4
/* 019050 80018450 3C038008 */  lui   $v1, %hi(bssMain_8007FE10) # $v1, 0x8008
/* 019054 80018454 2463FE10 */  addiu $v1, %lo(bssMain_8007FE10) # addiu $v1, $v1, -0x1f0
/* 019058 80018458 00431021 */  addu  $v0, $v0, $v1
/* 01905C 8001845C 00824021 */  addu  $t0, $a0, $v0

.L80018460:
/* 019060 80018460 3C078008 */  lui   $a3, %hi(bssMain_8007FCD0) # $a3, 0x8008
/* 019064 80018464 24E7FCD0 */  addiu $a3, %lo(bssMain_8007FCD0) # addiu $a3, $a3, -0x330
/* 019068 80018468 02A73821 */  addu  $a3, $s5, $a3
/* 01906C 8001846C 001020C0 */  sll   $a0, $s0, 3
/* 019070 80018470 00902021 */  addu  $a0, $a0, $s0
/* 019074 80018474 00042100 */  sll   $a0, $a0, 4
/* 019078 80018478 3C028004 */  lui   $v0, %hi(D_800406EC)
/* 01907C 8001847C 00511021 */  addu  $v0, $v0, $s1
/* 019080 80018480 804206EC */  lb    $v0, %lo(D_800406EC)($v0)
/* 019084 80018484 3C038008 */  lui   $v1, %hi(bssMain_8007FA90) # $v1, 0x8008
/* 019088 80018488 2463FA90 */  addiu $v1, %lo(bssMain_8007FA90) # addiu $v1, $v1, -0x570
/* 01908C 8001848C 02C31821 */  addu  $v1, $s6, $v1
/* 019090 80018490 00063600 */  sll   $a2, $a2, 0x18
/* 019094 80018494 00063503 */  sra   $a2, $a2, 0x14
/* 019098 80018498 00832021 */  addu  $a0, $a0, $v1
/* 01909C 8001849C 01063021 */  addu  $a2, $t0, $a2
/* 0190A0 800184A0 01273821 */  addu  $a3, $t1, $a3
/* 0190A4 800184A4 AFA90018 */  sw    $t1, 0x18($sp)
/* 0190A8 800184A8 AFAA001C */  sw    $t2, 0x1c($sp)
/* 0190AC 800184AC AFAB0020 */  sw    $t3, 0x20($sp)
/* 0190B0 800184B0 000228C0 */  sll   $a1, $v0, 3
/* 0190B4 800184B4 00A22823 */  subu  $a1, $a1, $v0
/* 0190B8 800184B8 000528C0 */  sll   $a1, $a1, 3
/* 0190BC 800184BC 00A22823 */  subu  $a1, $a1, $v0
/* 0190C0 800184C0 00052880 */  sll   $a1, $a1, 2
/* 0190C4 800184C4 3C028009 */  lui   $v0, %hi(bssMain_80092900) # $v0, 0x8009
/* 0190C8 800184C8 24422900 */  addiu $v0, %lo(bssMain_80092900) # addiu $v0, $v0, 0x2900
/* 0190CC 800184CC 00A22821 */  addu  $a1, $a1, $v0
/* 0190D0 800184D0 0C00378E */  jal   func_8000DE38
/* 0190D4 800184D4 02E52821 */   addu  $a1, $s7, $a1

/* 0190D8 800184D8 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0190DC 800184DC 8FAA001C */  lw    $t2, 0x1c($sp)
/* 0190E0 800184E0 8FA90018 */  lw    $t1, 0x18($sp)

.L800184E4:
/* 0190E4 800184E4 26D60024 */  addiu $s6, $s6, 0x24
/* 0190E8 800184E8 26B50014 */  addiu $s5, $s5, 0x14
/* 0190EC 800184EC 26730001 */  addiu $s3, $s3, 1
/* 0190F0 800184F0 26520001 */  addiu $s2, $s2, 1
/* 0190F4 800184F4 26310001 */  addiu $s1, $s1, 1
/* 0190F8 800184F8 2E220004 */  sltiu $v0, $s1, 4
/* 0190FC 800184FC 1440FFB6 */  bnez  $v0, .L800183D8
/* 019100 80018500 26940004 */   addiu $s4, $s4, 4

/* 019104 80018504 27C20001 */  addiu $v0, $fp, 1

.L80018508:
/* 019108 80018508 0040F021 */  addu  $fp, $v0, $zero
/* 01910C 8001850C 00021400 */  sll   $v0, $v0, 0x10
/* 019110 80018510 00021403 */  sra   $v0, $v0, 0x10
/* 019114 80018514 28420004 */  slti  $v0, $v0, 4
/* 019118 80018518 1440FF85 */  bnez  $v0, .L80018330
/* 01911C 8001851C 001E1400 */   sll   $v0, $fp, 0x10

.L80018520:
/* 019120 80018520 8FBF004C */  lw    $ra, 0x4c($sp)
/* 019124 80018524 8FBE0048 */  lw    $fp, 0x48($sp)
/* 019128 80018528 8FB70044 */  lw    $s7, 0x44($sp)
/* 01912C 8001852C 8FB60040 */  lw    $s6, 0x40($sp)
/* 019130 80018530 8FB5003C */  lw    $s5, 0x3c($sp)
/* 019134 80018534 8FB40038 */  lw    $s4, 0x38($sp)
/* 019138 80018538 8FB30034 */  lw    $s3, 0x34($sp)
/* 01913C 8001853C 8FB20030 */  lw    $s2, 0x30($sp)
/* 019140 80018540 8FB1002C */  lw    $s1, 0x2c($sp)
/* 019144 80018544 8FB00028 */  lw    $s0, 0x28($sp)
/* 019148 80018548 03E00008 */  jr    $ra
/* 01914C 8001854C 27BD0050 */   addiu $sp, $sp, 0x50
