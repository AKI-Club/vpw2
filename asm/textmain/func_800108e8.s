glabel func_800108E8
/* 0114E8 800108E8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0114EC 800108EC AFB00010 */  sw    $s0, 0x10($sp)
/* 0114F0 800108F0 00808021 */  addu  $s0, $a0, $zero
/* 0114F4 800108F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0114F8 800108F8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0114FC 800108FC AFB10014 */  sw    $s1, 0x14($sp)
/* 011500 80010900 8E040000 */  lw    $a0, ($s0)
/* 011504 80010904 00A08821 */  addu  $s1, $a1, $zero
/* 011508 80010908 10800004 */  beqz  $a0, .L8001091C
/* 01150C 8001090C 00C09021 */   addu  $s2, $a2, $zero

/* 011510 80010910 0C000280 */  jal   aki_free
/* 011514 80010914 00000000 */   nop   

/* 011518 80010918 AE000000 */  sw    $zero, ($s0)
.L8001091C:
/* 01151C 8001091C 3224FFFF */  andi  $a0, $s1, 0xffff
/* 011520 80010920 00042100 */  sll   $a0, $a0, 4
/* 011524 80010924 A6000006 */  sh    $zero, 6($s0)
/* 011528 80010928 0C000226 */  jal   aki_malloc
/* 01152C 8001092C A6110004 */   sh    $s1, 4($s0)
/* 011530 80010930 8E040008 */  lw    $a0, 8($s0)
/* 011534 80010934 10800004 */  beqz  $a0, .L80010948
/* 011538 80010938 AE020000 */   sw    $v0, ($s0)

/* 01153C 8001093C 0C000280 */  jal   aki_free
/* 011540 80010940 00000000 */   nop   

/* 011544 80010944 AE000008 */  sw    $zero, 8($s0)
.L80010948:
/* 011548 80010948 3244FFFF */  andi  $a0, $s2, 0xffff
/* 01154C 8001094C 000420C0 */  sll   $a0, $a0, 3
/* 011550 80010950 A600000E */  sh    $zero, 0xe($s0)
/* 011554 80010954 0C000226 */  jal   aki_malloc
/* 011558 80010958 A612000C */   sh    $s2, 0xc($s0)

/* 01155C 8001095C AE020008 */  sw    $v0, 8($s0)
/* 011560 80010960 8FBF001C */  lw    $ra, 0x1c($sp)
/* 011564 80010964 8FB20018 */  lw    $s2, 0x18($sp)
/* 011568 80010968 8FB10014 */  lw    $s1, 0x14($sp)
/* 01156C 8001096C 8FB00010 */  lw    $s0, 0x10($sp)
/* 011570 80010970 03E00008 */  jr    $ra
/* 011574 80010974 27BD0020 */   addiu $sp, $sp, 0x20