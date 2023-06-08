glabel SetupSoundTable_123
/* 004320 80003720 27BDFF98 */  addiu $sp, $sp, -0x68
/* 004324 80003724 AFB00058 */  sw    $s0, 0x58($sp)
/* 004328 80003728 3C100134 */  lui   $s0, %hi(_soundtable1WaveBankRomStart) # $s0, 0x134
/* 00432C 8000372C 2610CE10 */  addiu $s0, %lo(_soundtable1WaveBankRomStart) # addiu $s0, $s0, -0x31f0
/* 004330 80003730 AFB1005C */  sw    $s1, 0x5c($sp)
/* 004334 80003734 3C110134 */  lui   $s1, %hi(_soundtable1PointerRomStart) # $s1, 0x134
/* 004338 80003738 2631AC80 */  addiu $s1, %lo(_soundtable1PointerRomStart) # addiu $s1, $s1, -0x5380
/* 00433C 8000373C 02118023 */  subu  $s0, $s0, $s1
/* 004340 80003740 AFBF0060 */  sw    $ra, 0x60($sp)
/* 004344 80003744 0C000226 */  jal   aki_malloc
/* 004348 80003748 02002021 */   addu  $a0, $s0, $zero

/* 00434C 8000374C 02202021 */  addu  $a0, $s1, $zero
/* 004350 80003750 00402821 */  addu  $a1, $v0, $zero
/* 004354 80003754 3C018005 */  lui   $at, %hi(bssMain_80056FC0) # $at, 0x8005
/* 004358 80003758 AC256FC0 */  sw    $a1, %lo(bssMain_80056FC0)($at)
/* 00435C 8000375C 0C000198 */  jal   LoadDataDMA
/* 004360 80003760 02003021 */   addu  $a2, $s0, $zero

/* 004364 80003764 3C100145 */  lui   $s0, %hi(_soundtable2WaveBankRomStart) # $s0, 0x145
/* 004368 80003768 26104C20 */  addiu $s0, %lo(_soundtable2WaveBankRomStart) # addiu $s0, $s0, 0x4c20
/* 00436C 8000376C 3C110145 */  lui   $s1, %hi(_soundtable2PointerRomStart) # $s1, 0x145
/* 004370 80003770 2631FD30 */  addiu $s1, %lo(_soundtable2PointerRomStart) # addiu $s1, $s1, -0x2d0
/* 004374 80003774 02118023 */  subu  $s0, $s0, $s1
/* 004378 80003778 0C000226 */  jal   aki_malloc
/* 00437C 8000377C 02002021 */   addu  $a0, $s0, $zero

/* 004380 80003780 02202021 */  addu  $a0, $s1, $zero
/* 004384 80003784 00402821 */  addu  $a1, $v0, $zero
/* 004388 80003788 3C018005 */  lui   $at, %hi(bssMain_80056FC8) # $at, 0x8005
/* 00438C 8000378C AC256FC8 */  sw    $a1, %lo(bssMain_80056FC8)($at)
/* 004390 80003790 0C000198 */  jal   LoadDataDMA
/* 004394 80003794 02003021 */   addu  $a2, $s0, $zero

/* 004398 80003798 3C100145 */  lui   $s0, %hi(_soundtable2PointerRomStart) # $s0, 0x145
/* 00439C 8000379C 2610FD30 */  addiu $s0, %lo(_soundtable2PointerRomStart) # addiu $s0, $s0, -0x2d0
/* 0043A0 800037A0 3C110145 */  lui   $s1, %hi(_soundtable1TableRomStart) # $s1, 0x145
/* 0043A4 800037A4 2631E0A0 */  addiu $s1, %lo(_soundtable1TableRomStart) # addiu $s1, $s1, -0x1f60
/* 0043A8 800037A8 02118023 */  subu  $s0, $s0, $s1
/* 0043AC 800037AC 0C000226 */  jal   aki_malloc
/* 0043B0 800037B0 02002021 */   addu  $a0, $s0, $zero

/* 0043B4 800037B4 02202021 */  addu  $a0, $s1, $zero
/* 0043B8 800037B8 00402821 */  addu  $a1, $v0, $zero
/* 0043BC 800037BC 3C018005 */  lui   $at, %hi(bssMain_80056FC4) # $at, 0x8005
/* 0043C0 800037C0 AC256FC4 */  sw    $a1, %lo(bssMain_80056FC4)($at)
/* 0043C4 800037C4 0C000198 */  jal   LoadDataDMA
/* 0043C8 800037C8 02003021 */   addu  $a2, $s0, $zero

/* 0043CC 800037CC 3C100157 */  lui   $s0, %hi(_soundtable3WaveBankRomStart) # $s0, 0x157
/* 0043D0 800037D0 2610F2E0 */  addiu $s0, %lo(_soundtable3WaveBankRomStart) # addiu $s0, $s0, -0xd20
/* 0043D4 800037D4 3C110157 */  lui   $s1, %hi(_soundtable3PointerRomStart) # $s1, 0x157
/* 0043D8 800037D8 2631EA30 */  addiu $s1, %lo(_soundtable3PointerRomStart) # addiu $s1, $s1, -0x15d0
/* 0043DC 800037DC 02118023 */  subu  $s0, $s0, $s1
/* 0043E0 800037E0 0C000226 */  jal   aki_malloc
/* 0043E4 800037E4 02002021 */   addu  $a0, $s0, $zero

/* 0043E8 800037E8 02202021 */  addu  $a0, $s1, $zero
/* 0043EC 800037EC 00402821 */  addu  $a1, $v0, $zero
/* 0043F0 800037F0 3C018005 */  lui   $at, %hi(bssMain_80056FD0) # $at, 0x8005
/* 0043F4 800037F4 AC256FD0 */  sw    $a1, %lo(bssMain_80056FD0)($at)
/* 0043F8 800037F8 0C000198 */  jal   LoadDataDMA
/* 0043FC 800037FC 02003021 */   addu  $a2, $s0, $zero

/* 004400 80003800 3C100157 */  lui   $s0, %hi(_soundtable3PointerRomStart) # $s0, 0x157
/* 004404 80003804 2610EA30 */  addiu $s0, %lo(_soundtable3PointerRomStart) # addiu $s0, $s0, -0x15d0
/* 004408 80003808 3C110157 */  lui   $s1, %hi(_soundtable2TableRomStart) # $s1, 0x157
/* 00440C 8000380C 2631E7D0 */  addiu $s1, %lo(_soundtable2TableRomStart) # addiu $s1, $s1, -0x1830
/* 004410 80003810 02118023 */  subu  $s0, $s0, $s1
/* 004414 80003814 0C000226 */  jal   aki_malloc
/* 004418 80003818 02002021 */   addu  $a0, $s0, $zero

/* 00441C 8000381C 02202021 */  addu  $a0, $s1, $zero
/* 004420 80003820 00402821 */  addu  $a1, $v0, $zero
/* 004424 80003824 3C018005 */  lui   $at, %hi(bssMain_80056FCC) # $at, 0x8005
/* 004428 80003828 AC256FCC */  sw    $a1, %lo(bssMain_80056FCC)($at)
/* 00442C 8000382C 0C000198 */  jal   LoadDataDMA
/* 004430 80003830 02003021 */   addu  $a2, $s0, $zero

/* 004434 80003834 24020018 */  li    $v0, 24
/* 004438 80003838 AFA00010 */  sw    $zero, 0x10($sp)
/* 00443C 8000383C 0C000195 */  jal   func_80000654
/* 004440 80003840 AFA20014 */   sw    $v0, 0x14($sp)

/* 004444 80003844 3C030003 */  lui   $v1, (0x00030800 >> 16) # lui $v1, 3
/* 004448 80003848 3C058005 */  lui   $a1, %hi(bssMain_80056FC4) # $a1, 0x8005
/* 00444C 8000384C 8CA56FC4 */  lw    $a1, %lo(bssMain_80056FC4)($a1)
/* 004450 80003850 3C068005 */  lui   $a2, %hi(bssMain_80056FC0) # $a2, 0x8005
/* 004454 80003854 8CC66FC0 */  lw    $a2, %lo(bssMain_80056FC0)($a2)
/* 004458 80003858 34630800 */  ori   $v1, (0x00030800 & 0xFFFF) # ori $v1, $v1, 0x800
/* 00445C 8000385C 27A40010 */  addiu $a0, $sp, 0x10
/* 004460 80003860 AFA20018 */  sw    $v0, 0x18($sp)
/* 004464 80003864 24020050 */  li    $v0, 80
/* 004468 80003868 AFA2001C */  sw    $v0, 0x1c($sp)
/* 00446C 8000386C 3C02800B */  lui   $v0, %hi(bss_main_end) # $v0, 0x800b
/* 004470 80003870 244262F0 */  addiu $v0, %lo(bss_main_end) # addiu $v0, $v0, 0x62f0
/* 004474 80003874 AFA20020 */  sw    $v0, 0x20($sp)
/* 004478 80003878 3C020134 */  lui   $v0, %hi(_soundtable1WaveBankRomStart) # $v0, 0x134
/* 00447C 8000387C 2442CE10 */  addiu $v0, %lo(_soundtable1WaveBankRomStart) # addiu $v0, $v0, -0x31f0
/* 004480 80003880 AFA2002C */  sw    $v0, 0x2c($sp)
/* 004484 80003884 24027080 */  li    $v0, 28800
/* 004488 80003888 AFA30024 */  sw    $v1, 0x24($sp)
/* 00448C 8000388C 24030100 */  li    $v1, 256
/* 004490 80003890 AFA2003C */  sw    $v0, 0x3c($sp)
/* 004494 80003894 24020800 */  li    $v0, 2048
/* 004498 80003898 AFA20040 */  sw    $v0, 0x40($sp)
/* 00449C 8000389C 24020001 */  li    $v0, 1
/* 0044A0 800038A0 AFA20044 */  sw    $v0, 0x44($sp)
/* 0044A4 800038A4 24020180 */  li    $v0, 384
/* 0044A8 800038A8 AFA30038 */  sw    $v1, 0x38($sp)
/* 0044AC 800038AC AFA30048 */  sw    $v1, 0x48($sp)
/* 0044B0 800038B0 AFA2004C */  sw    $v0, 0x4c($sp)
/* 0044B4 800038B4 AFA50030 */  sw    $a1, 0x30($sp)
/* 0044B8 800038B8 0C008DA4 */  jal   func_80023690
/* 0044BC 800038BC AFA60028 */   sw    $a2, 0x28($sp)

/* 0044C0 800038C0 0C000EF5 */  jal   func_80003BD4
/* 0044C4 800038C4 2404007F */   li    $a0, 127

/* 0044C8 800038C8 24040001 */  li    $a0, 1
/* 0044CC 800038CC 0C008E46 */  jal   func_80023918
/* 0044D0 800038D0 240563FF */   li    $a1, 25599

/* 0044D4 800038D4 3C048005 */  lui   $a0, %hi(bssMain_80056FC8) # $a0, 0x8005
/* 0044D8 800038D8 8C846FC8 */  lw    $a0, %lo(bssMain_80056FC8)($a0)
/* 0044DC 800038DC 3C050145 */  lui   $a1, %hi(_soundtable2WaveBankRomStart) # $a1, 0x145
/* 0044E0 800038E0 0C009082 */  jal   func_80024208
/* 0044E4 800038E4 24A54C20 */   addiu $a1, %lo(_soundtable2WaveBankRomStart) # addiu $a1, $a1, 0x4c20

/* 0044E8 800038E8 3C048005 */  lui   $a0, %hi(bssMain_80056FC4) # $a0, 0x8005
/* 0044EC 800038EC 8C846FC4 */  lw    $a0, %lo(bssMain_80056FC4)($a0)
/* 0044F0 800038F0 3C058005 */  lui   $a1, %hi(bssMain_80056FC8) # $a1, 0x8005
/* 0044F4 800038F4 0C009120 */  jal   func_80024480
/* 0044F8 800038F8 8CA56FC8 */   lw    $a1, %lo(bssMain_80056FC8)($a1)

/* 0044FC 800038FC 3C048005 */  lui   $a0, %hi(bssMain_80056FCC) # $a0, 0x8005
/* 004500 80003900 0C0090F4 */  jal   func_800243D0
/* 004504 80003904 8C846FCC */   lw    $a0, %lo(bssMain_80056FCC)($a0)

/* 004508 80003908 3C048005 */  lui   $a0, %hi(bssMain_80056FD0) # $a0, 0x8005
/* 00450C 8000390C 8C846FD0 */  lw    $a0, %lo(bssMain_80056FD0)($a0)
/* 004510 80003910 3C050157 */  lui   $a1, %hi(_soundtable3WaveBankRomStart) # $a1, 0x157
/* 004514 80003914 0C009082 */  jal   func_80024208
/* 004518 80003918 24A5F2E0 */   addiu $a1, %lo(_soundtable3WaveBankRomStart) # addiu $a1, $a1, -0xd20

/* 00451C 8000391C 3C048005 */  lui   $a0, %hi(bssMain_80056FCC) # $a0, 0x8005
/* 004520 80003920 8C846FCC */  lw    $a0, %lo(bssMain_80056FCC)($a0)
/* 004524 80003924 3C058005 */  lui   $a1, %hi(bssMain_80056FD0) # $a1, 0x8005
/* 004528 80003928 0C009120 */  jal   func_80024480
/* 00452C 8000392C 8CA56FD0 */   lw    $a1, %lo(bssMain_80056FD0)($a1)

/* 004530 80003930 8FBF0060 */  lw    $ra, 0x60($sp)
/* 004534 80003934 8FB1005C */  lw    $s1, 0x5c($sp)
/* 004538 80003938 8FB00058 */  lw    $s0, 0x58($sp)
/* 00453C 8000393C 03E00008 */  jr    $ra
/* 004540 80003940 27BD0068 */   addiu $sp, $sp, 0x68
