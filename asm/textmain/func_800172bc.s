glabel func_800172BC
/* 017EBC 800172BC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 017EC0 800172C0 AFB60030 */  sw    $s6, 0x30($sp)
/* 017EC4 800172C4 0080B021 */  addu  $s6, $a0, $zero
/* 017EC8 800172C8 00042400 */  sll   $a0, $a0, 0x10
/* 017ECC 800172CC 00042403 */  sra   $a0, $a0, 0x10
/* 017ED0 800172D0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 017ED4 800172D4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 017ED8 800172D8 AFB40028 */  sw    $s4, 0x28($sp)
/* 017EDC 800172DC AFB30024 */  sw    $s3, 0x24($sp)
/* 017EE0 800172E0 AFB20020 */  sw    $s2, 0x20($sp)
/* 017EE4 800172E4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 017EE8 800172E8 10800009 */  beqz  $a0, .L80017310
/* 017EEC 800172EC AFB00018 */   sw    $s0, 0x18($sp)

/* 017EF0 800172F0 3C028008 */  lui   $v0, %hi(bssMain_80079EA4) # $v0, 0x8008
/* 017EF4 800172F4 84429EA4 */  lh    $v0, %lo(bssMain_80079EA4)($v0)
/* 017EF8 800172F8 10440044 */  beq   $v0, $a0, .L8001740C
/* 017EFC 800172FC 00000000 */   nop   

/* 017F00 80017300 0C0012ED */  jal   func_80004BB4
/* 017F04 80017304 24040001 */   li    $a0, 1

/* 017F08 80017308 08005D03 */  j     .L8001740C
/* 017F0C 8001730C 00000000 */   nop   

.L80017310:
/* 017F10 80017310 3C128008 */  lui   $s2, %hi(bssMain_8007FA58) # $s2, 0x8008
/* 017F14 80017314 2652FA58 */  addiu $s2, %lo(bssMain_8007FA58) # addiu $s2, $s2, -0x5a8
/* 017F18 80017318 0000A021 */  addu  $s4, $zero, $zero
/* 017F1C 8001731C 26510003 */  addiu $s1, $s2, 3
/* 017F20 80017320 02408021 */  addu  $s0, $s2, $zero
/* 017F24 80017324 00009821 */  addu  $s3, $zero, $zero
/* 017F28 80017328 26150013 */  addiu $s5, $s0, 0x13

.L8001732C:
/* 017F2C 8001732C 92040000 */  lbu   $a0, ($s0)
/* 017F30 80017330 3085007F */  andi  $a1, $a0, 0x7f
/* 017F34 80017334 50A0001E */  beql  $a1, $zero, .L800173B0
/* 017F38 80017338 26520004 */   addiu $s2, $s2, 4

/* 017F3C 8001733C 82220000 */  lb    $v0, ($s1)
/* 017F40 80017340 1C400018 */  bgtz  $v0, .L800173A4
/* 017F44 80017344 00401821 */   addu  $v1, $v0, $zero

/* 017F48 80017348 30820080 */  andi  $v0, $a0, 0x80
/* 017F4C 8001734C 1040000C */  beqz  $v0, .L80017380
/* 017F50 80017350 34820080 */   ori   $v0, $a0, 0x80

/* 017F54 80017354 A2050000 */  sb    $a1, ($s0)
/* 017F58 80017358 3C028008 */  lui   $v0, %hi(bssMain_8007FA5A)
/* 017F5C 8001735C 00531021 */  addu  $v0, $v0, $s3
/* 017F60 80017360 9042FA5A */  lbu   $v0, %lo(bssMain_8007FA5A)($v0)
/* 017F64 80017364 00142403 */  sra   $a0, $s4, 0x10
/* 017F68 80017368 0C0012DD */  jal   func_80004B74
/* 017F6C 8001736C A2220000 */   sb    $v0, ($s1)

/* 017F70 80017370 92020000 */  lbu   $v0, ($s0)
/* 017F74 80017374 2442FFFF */  addiu $v0, $v0, -1
/* 017F78 80017378 08005CEB */  j     .L800173AC
/* 017F7C 8001737C A2420000 */   sb    $v0, ($s2)

.L80017380:
/* 017F80 80017380 A2020000 */  sb    $v0, ($s0)
/* 017F84 80017384 3C028008 */  lui   $v0, %hi(bssMain_8007FA59)
/* 017F88 80017388 00531021 */  addu  $v0, $v0, $s3
/* 017F8C 8001738C 9042FA59 */  lbu   $v0, %lo(bssMain_8007FA59)($v0)
/* 017F90 80017390 00142403 */  sra   $a0, $s4, 0x10
/* 017F94 80017394 0C0012D1 */  jal   func_80004B44
/* 017F98 80017398 A2220000 */   sb    $v0, ($s1)

/* 017F9C 8001739C 08005CEC */  j     .L800173B0
/* 017FA0 800173A0 26520004 */   addiu $s2, $s2, 4

.L800173A4:
/* 017FA4 800173A4 2462FFFF */  addiu $v0, $v1, -1
/* 017FA8 800173A8 A2420003 */  sb    $v0, 3($s2)

.L800173AC:
/* 017FAC 800173AC 26520004 */  addiu $s2, $s2, 4

.L800173B0:
/* 017FB0 800173B0 3C020001 */  lui   $v0, 1
/* 017FB4 800173B4 0282A021 */  addu  $s4, $s4, $v0
/* 017FB8 800173B8 26310004 */  addiu $s1, $s1, 4
/* 017FBC 800173BC 26100004 */  addiu $s0, $s0, 4
/* 017FC0 800173C0 0235102B */  sltu  $v0, $s1, $s5
/* 017FC4 800173C4 1440FFD9 */  bnez  $v0, .L8001732C
/* 017FC8 800173C8 26730004 */   addiu $s3, $s3, 4

/* 017FCC 800173CC 3C028004 */  lui   $v0, %hi(D_80040878) # $v0, 0x8004
/* 017FD0 800173D0 8C420878 */  lw    $v0, %lo(D_80040878)($v0)
/* 017FD4 800173D4 1440000D */  bnez  $v0, .L8001740C
/* 017FD8 800173D8 00000000 */   nop   

/* 017FDC 800173DC 0C000E51 */  jal   func_80003944
/* 017FE0 800173E0 24040033 */   li    $a0, 51

/* 017FE4 800173E4 3C018004 */  lui   $at, %hi(D_80040878) # $at, 0x8004
/* 017FE8 800173E8 AC220878 */  sw    $v0, %lo(D_80040878)($at)
/* 017FEC 800173EC 00002021 */  addu  $a0, $zero, $zero
/* 017FF0 800173F0 3C038008 */  lui   $v1, %hi(bssMain_8007F6A0) # $v1, 0x8008
/* 017FF4 800173F4 2463F6A0 */  addiu $v1, %lo(bssMain_8007F6A0) # addiu $v1, $v1, -0x960

.L800173F8:
/* 017FF8 800173F8 AC600000 */  sw    $zero, ($v1)
/* 017FFC 800173FC 24840001 */  addiu $a0, $a0, 1
/* 018000 80017400 2C8200E3 */  sltiu $v0, $a0, 0xe3
/* 018004 80017404 1440FFFC */  bnez  $v0, .L800173F8
/* 018008 80017408 24630004 */   addiu $v1, $v1, 4

.L8001740C:
/* 01800C 8001740C 3C018008 */  lui   $at, %hi(bssMain_80079EA4) # $at, 0x8008
/* 018010 80017410 A4369EA4 */  sh    $s6, %lo(bssMain_80079EA4)($at)
/* 018014 80017414 8FBF0034 */  lw    $ra, 0x34($sp)
/* 018018 80017418 8FB60030 */  lw    $s6, 0x30($sp)
/* 01801C 8001741C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 018020 80017420 8FB40028 */  lw    $s4, 0x28($sp)
/* 018024 80017424 8FB30024 */  lw    $s3, 0x24($sp)
/* 018028 80017428 8FB20020 */  lw    $s2, 0x20($sp)
/* 01802C 8001742C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 018030 80017430 8FB00018 */  lw    $s0, 0x18($sp)
/* 018034 80017434 03E00008 */  jr    $ra
/* 018038 80017438 27BD0038 */   addiu $sp, $sp, 0x38
