# related to pause menu

glabel func3_800E7D20
/* 0E23D0 800E7D20 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 0E23D4 800E7D24 AFB100D4 */  sw    $s1, 0xd4($sp)
/* 0E23D8 800E7D28 3C118016 */  lui   $s1, %hi(bss3_80158750) # $s1, 0x8016
/* 0E23DC 800E7D2C 26318750 */  addiu $s1, %lo(bss3_80158750) # addiu $s1, $s1, -0x78b0
/* 0E23E0 800E7D30 F7B400E0 */  sdc1  $f20, 0xe0($sp)
/* 0E23E4 800E7D34 4480A000 */  mtc1  $zero, $f20
/* 0E23E8 800E7D38 02202021 */  addu  $a0, $s1, $zero
/* 0E23EC 800E7D3C 4406A000 */  mfc1  $a2, $f20
/* 0E23F0 800E7D40 4407A000 */  mfc1  $a3, $f20
/* 0E23F4 800E7D44 24050005 */  li    $a1, 5
/* 0E23F8 800E7D48 AFBF00DC */  sw    $ra, 0xdc($sp)
/* 0E23FC 800E7D4C AFB200D8 */  sw    $s2, 0xd8($sp)
/* 0E2400 800E7D50 AFB000D0 */  sw    $s0, 0xd0($sp)
/* 0E2404 800E7D54 F7B800F0 */  sdc1  $f24, 0xf0($sp)
/* 0E2408 800E7D58 F7B600E8 */  sdc1  $f22, 0xe8($sp)
/* 0E240C 800E7D5C 0C000600 */  jal   func_80001800
/* 0E2410 800E7D60 E7B40010 */   swc1  $f20, 0x10($sp)

/* 0E2414 800E7D64 02202021 */  addu  $a0, $s1, $zero
/* 0E2418 800E7D68 0C000635 */  jal   func_800018D4
/* 0E241C 800E7D6C 00002821 */   addu  $a1, $zero, $zero

/* 0E2420 800E7D70 0C00061B */  jal   func_8000186C
/* 0E2424 800E7D74 02202021 */   addu  $a0, $s1, $zero

/* 0E2428 800E7D78 3C0643F0 */  lui   $a2, 0x43f0
/* 0E242C 800E7D7C 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E2430 800E7D80 4481B000 */  mtc1  $at, $f22
/* 0E2434 800E7D84 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E2438 800E7D88 4481C000 */  mtc1  $at, $f24
/* 0E243C 800E7D8C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E2440 800E7D90 44810000 */  mtc1  $at, $f0
/* 0E2444 800E7D94 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E2448 800E7D98 44811000 */  mtc1  $at, $f2
/* 0E244C 800E7D9C 27B20038 */  addiu $s2, $sp, 0x38
/* 0E2450 800E7DA0 4405A000 */  mfc1  $a1, $f20
/* 0E2454 800E7DA4 4407A000 */  mfc1  $a3, $f20
/* 0E2458 800E7DA8 02402021 */  addu  $a0, $s2, $zero
/* 0E245C 800E7DAC E7B60010 */  swc1  $f22, 0x10($sp)
/* 0E2460 800E7DB0 E7B80014 */  swc1  $f24, 0x14($sp)
/* 0E2464 800E7DB4 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E2468 800E7DB8 0C00C5A4 */  jal   guOrthoF
/* 0E246C 800E7DBC E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E2470 800E7DC0 27B00078 */  addiu $s0, $sp, 0x78
/* 0E2474 800E7DC4 4405A000 */  mfc1  $a1, $f20
/* 0E2478 800E7DC8 4406B000 */  mfc1  $a2, $f22
/* 0E247C 800E7DCC 4407C000 */  mfc1  $a3, $f24
/* 0E2480 800E7DD0 02002021 */  addu  $a0, $s0, $zero
/* 0E2484 800E7DD4 AFA50010 */  sw    $a1, 0x10($sp)
/* 0E2488 800E7DD8 AFA60014 */  sw    $a2, 0x14($sp)
/* 0E248C 800E7DDC AFA50018 */  sw    $a1, 0x18($sp)
/* 0E2490 800E7DE0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0E2494 800E7DE4 AFA70020 */  sw    $a3, 0x20($sp)
/* 0E2498 800E7DE8 0C00C3E0 */  jal   guLookAtF
/* 0E249C 800E7DEC AFA50024 */   sw    $a1, 0x24($sp)

/* 0E24A0 800E7DF0 02002021 */  addu  $a0, $s0, $zero
/* 0E24A4 800E7DF4 02402821 */  addu  $a1, $s2, $zero
/* 0E24A8 800E7DF8 0C000842 */  jal   func_80002108
/* 0E24AC 800E7DFC 2626009C */   addiu $a2, $s1, 0x9c

/* 0E24B0 800E7E00 3C038016 */  lui   $v1, %hi(bss3_80158764) # $v1, 0x8016
/* 0E24B4 800E7E04 8C638764 */  lw    $v1, %lo(bss3_80158764)($v1)
/* 0E24B8 800E7E08 24020001 */  li    $v0, 1
/* 0E24BC 800E7E0C 3C018016 */  lui   $at, %hi(bss3_80158769) # $at, 0x8016
/* 0E24C0 800E7E10 A0228769 */  sb    $v0, %lo(bss3_80158769)($at)
/* 0E24C4 800E7E14 8C620000 */  lw    $v0, ($v1)
/* 0E24C8 800E7E18 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E24CC 800E7E1C 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E24D0 800E7E20 44810000 */  mtc1  $at, $f0
/* 0E24D4 800E7E24 34420080 */  ori   $v0, $v0, 0x80
/* 0E24D8 800E7E28 AC620000 */  sw    $v0, ($v1)

/* 0E24DC 800E7E2C 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E24E0 800E7E30 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E24E4 800E7E34 00008821 */  addu  $s1, $zero, $zero
/* 0E24E8 800E7E38 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E24EC 800E7E3C 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E24F0 800E7E40 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E24F4 800E7E44 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E24F8 800E7E48 44810000 */  mtc1  $at, $f0
/* 0E24FC 800E7E4C 3C12DF00 */  lui   $s2, 0xdf00
/* 0E2500 800E7E50 3C108016 */  lui   $s0, %hi(bss3_8015882C) # $s0, 0x8016
/* 0E2504 800E7E54 2610882C */  addiu $s0, %lo(bss3_8015882C) # addiu $s0, $s0, -0x77d4
/* 0E2508 800E7E58 E4400020 */  swc1  $f0, 0x20($v0)

.L3_800E7E5C:
/* 0E250C 800E7E5C 0C000226 */  jal   aki_malloc
/* 0E2510 800E7E60 24041000 */   li    $a0, 4096

/* 0E2514 800E7E64 AE020000 */  sw    $v0, ($s0) # store malloc result
/* 0E2518 800E7E68 26310001 */  addiu $s1, $s1, 1
/* 0E251C 800E7E6C AC520000 */  sw    $s2, ($v0)
/* 0E2520 800E7E70 AC400004 */  sw    $zero, 4($v0)
/* 0E2524 800E7E74 2E220003 */  sltiu $v0, $s1, 3
/* 0E2528 800E7E78 1440FFF8 */  bnez  $v0, .L3_800E7E5C
/* 0E252C 800E7E7C 26100004 */   addiu $s0, $s0, 4

# set up start address for pause menu item textures
/* 0E2530 800E7E80 00008821 */  addu  $s1, $zero, $zero
/* 0E2534 800E7E84 3C128016 */  lui   $s2, %hi(bss3_80158848) # $s2, 0x8016
/* 0E2538 800E7E88 26528848 */  addiu $s2, %lo(bss3_80158848) # addiu $s2, $s2, -0x77b8

# load pause menu item files
.L3_800E7E8C:
/* 0E253C 800E7E8C 27A40028 */  addiu $a0, $sp, 0x28
/* 0E2540 800E7E90 26300514 */  addiu $s0, $s1, 0x514 # start of pause menu items in filetable
/* 0E2544 800E7E94 3210FFFF */  andi  $s0, $s0, 0xffff
/* 0E2548 800E7E98 0C000F71 */  jal   GetFileLoc
/* 0E254C 800E7E9C 02002821 */   addu  $a1, $s0, $zero

/* 0E2550 800E7EA0 8FA40030 */  lw    $a0, 0x30($sp)
/* 0E2554 800E7EA4 0C000226 */  jal   aki_malloc
/* 0E2558 800E7EA8 26310001 */   addiu $s1, $s1, 1 # next file ID

/* 0E255C 800E7EAC 27A400B8 */  addiu $a0, $sp, 0xb8
/* 0E2560 800E7EB0 02002821 */  addu  $a1, $s0, $zero
/* 0E2564 800E7EB4 00403021 */  addu  $a2, $v0, $zero # use malloc result
/* 0E2568 800E7EB8 0C000FA2 */  jal   LoadFile
/* 0E256C 800E7EBC AE460000 */   sw    $a2, ($s2) # store pointer

/* 0E2570 800E7EC0 2E220029 */  sltiu $v0, $s1, 41 # number of pause menu textures +1
/* 0E2574 800E7EC4 1440FFF1 */  bnez  $v0, .L3_800E7E8C
/* 0E2578 800E7EC8 26520004 */   addiu $s2, $s2, 4 # next pointer


/* 0E257C 800E7ECC 00008821 */  addu  $s1, $zero, $zero

.L3_800E7ED0:
/* 0E2580 800E7ED0 3C018016 */  lui   $at, %hi(bss3_8015883C)
/* 0E2584 800E7ED4 00310821 */  addu  $at, $at, $s1
/* 0E2588 800E7ED8 A020883C */  sb    $zero, %lo(bss3_8015883C)($at)
/* 0E258C 800E7EDC 26310001 */  addiu $s1, $s1, 1
/* 0E2590 800E7EE0 2E220006 */  sltiu $v0, $s1, 6 # number of items on pause menu
/* 0E2594 800E7EE4 1440FFFA */  bnez  $v0, .L3_800E7ED0
/* 0E2598 800E7EE8 00000000 */   nop   


/* 0E259C 800E7EEC 3C02800A */  lui   $v0, %hi(bssMain_800A3140) # $v0, 0x800a
/* 0E25A0 800E7EF0 8C423140 */  lw    $v0, %lo(bssMain_800A3140)($v0)
/* 0E25A4 800E7EF4 00021040 */  sll   $v0, $v0, 1

/* 0E25A8 800E7EF8 3C018015 */  lui   $at, %hi(D_801516A8)
/* 0E25AC 800E7EFC 00220821 */  addu  $at, $at, $v0
/* 0E25B0 800E7F00 942216A8 */  lhu   $v0, %lo(D_801516A8)($at)

/* 0E25B4 800E7F04 3C018016 */  lui   $at, %hi(bss3_80158842) # $at, 0x8016
/* 0E25B8 800E7F08 A4208842 */  sh    $zero, %lo(bss3_80158842)($at)

/* 0E25BC 800E7F0C 3C018016 */  lui   $at, %hi(bss3_80158844) # $at, 0x8016
/* 0E25C0 800E7F10 A4228844 */  sh    $v0, %lo(bss3_80158844)($at)

/* 0E25C4 800E7F14 00021400 */  sll   $v0, $v0, 0x10
/* 0E25C8 800E7F18 00021403 */  sra   $v0, $v0, 0x10
/* 0E25CC 800E7F1C 1040000F */  beqz  $v0, .L3_800E7F5C
/* 0E25D0 800E7F20 00008821 */   addu  $s1, $zero, $zero

/* 0E25D4 800E7F24 00402021 */  addu  $a0, $v0, $zero
/* 0E25D8 800E7F28 3C03800A */  lui   $v1, %hi(bssMain_800A24B0) # $v1, 0x800a
/* 0E25DC 800E7F2C 246324B0 */  addiu $v1, %lo(bssMain_800A24B0) # addiu $v1, $v1, 0x24b0

.L3_800E7F30:
/* 0E25E0 800E7F30 8C620000 */  lw    $v0, ($v1)
/* 0E25E4 800E7F34 10400006 */  beqz  $v0, .L3_800E7F50
/* 0E25E8 800E7F38 26310001 */   addiu $s1, $s1, 1

/* 0E25EC 800E7F3C 3C028016 */  lui   $v0, %hi(bss3_80158842) # $v0, 0x8016
/* 0E25F0 800E7F40 94428842 */  lhu   $v0, %lo(bss3_80158842)($v0)
/* 0E25F4 800E7F44 24420001 */  addiu $v0, $v0, 1
/* 0E25F8 800E7F48 3C018016 */  lui   $at, %hi(bss3_80158842) # $at, 0x8016
/* 0E25FC 800E7F4C A4228842 */  sh    $v0, %lo(bss3_80158842)($at)

.L3_800E7F50:
/* 0E2600 800E7F50 0224102B */  sltu  $v0, $s1, $a0
/* 0E2604 800E7F54 1440FFF6 */  bnez  $v0, .L3_800E7F30
/* 0E2608 800E7F58 24630004 */   addiu $v1, $v1, 4


.L3_800E7F5C:
/* 0E260C 800E7F5C 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2610 800E7F60 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2614 800E7F64 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E2618 800E7F68 10400003 */  beqz  $v0, .L3_800E7F78
/* 0E261C 800E7F6C 2402FFFF */   li    $v0, -1

/* 0E2620 800E7F70 3C018016 */  lui   $at, %hi(bss3_8015883D) # $at, 0x8016
/* 0E2624 800E7F74 A022883D */  sb    $v0, %lo(bss3_8015883D)($at)

.L3_800E7F78:
/* 0E2628 800E7F78 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E262C 800E7F7C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2630 800E7F80 30422000 */  andi  $v0, $v0, 0x2000
/* 0E2634 800E7F84 10400003 */  beqz  $v0, .L3_800E7F94
/* 0E2638 800E7F88 2402FFFF */   li    $v0, -1

/* 0E263C 800E7F8C 3C018016 */  lui   $at, %hi(bss3_8015883E) # $at, 0x8016
/* 0E2640 800E7F90 A022883E */  sb    $v0, %lo(bss3_8015883E)($at)

.L3_800E7F94:
/* 0E2644 800E7F94 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2648 800E7F98 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E264C 800E7F9C 3C030002 */  lui   $v1, (0x00020100 >> 16) # lui $v1, 2
/* 0E2650 800E7FA0 34630100 */  ori   $v1, (0x00020100 & 0xFFFF) # ori $v1, $v1, 0x100
/* 0E2654 800E7FA4 00431024 */  and   $v0, $v0, $v1
/* 0E2658 800E7FA8 24030100 */  li    $v1, 256
/* 0E265C 800E7FAC 10430003 */  beq   $v0, $v1, .L3_800E7FBC
/* 0E2660 800E7FB0 2402FFFF */   li    $v0, -1

/* 0E2664 800E7FB4 3C018016 */  lui   $at, %hi(bss3_80158840) # $at, 0x8016
/* 0E2668 800E7FB8 A0228840 */  sb    $v0, %lo(bss3_80158840)($at)

.L3_800E7FBC:
/* 0E266C 800E7FBC 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2670 800E7FC0 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2674 800E7FC4 30420200 */  andi  $v0, $v0, 0x200 # tag match bit
/* 0E2678 800E7FC8 10400003 */  beqz  $v0, .L3_800E7FD8
/* 0E267C 800E7FCC 2402FFFF */   li    $v0, -1

/* 0E2680 800E7FD0 3C018016 */  lui   $at, %hi(bss3_80158841) # $at, 0x8016
/* 0E2684 800E7FD4 A0228841 */  sb    $v0, %lo(bss3_80158841)($at)

.L3_800E7FD8:
/* 0E2688 800E7FD8 8FBF00DC */  lw    $ra, 0xdc($sp)
/* 0E268C 800E7FDC 8FB200D8 */  lw    $s2, 0xd8($sp)
/* 0E2690 800E7FE0 8FB100D4 */  lw    $s1, 0xd4($sp)
/* 0E2694 800E7FE4 8FB000D0 */  lw    $s0, 0xd0($sp)
/* 0E2698 800E7FE8 D7B800F0 */  ldc1  $f24, 0xf0($sp)
/* 0E269C 800E7FEC D7B600E8 */  ldc1  $f22, 0xe8($sp)
/* 0E26A0 800E7FF0 D7B400E0 */  ldc1  $f20, 0xe0($sp)
/* 0E26A4 800E7FF4 03E00008 */  jr    $ra
/* 0E26A8 800E7FF8 27BD00F8 */   addiu $sp, $sp, 0xf8
