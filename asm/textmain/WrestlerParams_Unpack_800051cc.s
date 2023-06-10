# wrestler params unpacking?
# $a0 = write dest.
# $a1 = unpack source

glabel WrestlerParams_Unpack
/* 005DCC 800051CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 005DD0 800051D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 005DD4 800051D4 00808821 */  addu  $s1, $a0, $zero
/* 005DD8 800051D8 AFB00010 */  sw    $s0, 0x10($sp)
/* 005DDC 800051DC 00A08021 */  addu  $s0, $a1, $zero

# UnpackBits(0,0,0);
/* 005DE0 800051E0 00002021 */  addu  $a0, $zero, $zero
/* 005DE4 800051E4 00002821 */  addu  $a1, $zero, $zero
/* 005DE8 800051E8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 005DEC 800051EC 0C0013D9 */  jal   UnpackBits
/* 005DF0 800051F0 00003021 */   addu  $a2, $zero, $zero

# actual unpacking begins
/* 005DF4 800051F4 02002021 */  addu  $a0, $s0, $zero
/* 005DF8 800051F8 24050003 */  li    $a1, 3
/* 005DFC 800051FC 0C0013D9 */  jal   UnpackBits
/* 005E00 80005200 24060001 */   li    $a2, 1

/* 005E04 80005204 02002021 */  addu  $a0, $s0, $zero
/* 005E08 80005208 24050004 */  li    $a1, 4
/* 005E0C 8000520C 24060001 */  li    $a2, 1
/* 005E10 80005210 0C0013D9 */  jal   UnpackBits
/* 005E14 80005214 A2230000 */   sb    $v1, ($s1) # store Walk Speed

/* 005E18 80005218 02002021 */  addu  $a0, $s0, $zero
/* 005E1C 8000521C 24050003 */  li    $a1, 3
/* 005E20 80005220 24060001 */  li    $a2, 1
/* 005E24 80005224 0C0013D9 */  jal   UnpackBits
/* 005E28 80005228 A2230001 */   sb    $v1, 1($s1) # store Reversal Style

/* 005E2C 8000522C 02002021 */  addu  $a0, $s0, $zero
/* 005E30 80005230 24050004 */  li    $a1, 4
/* 005E34 80005234 24060001 */  li    $a2, 1
/* 005E38 80005238 0C0013D9 */  jal   UnpackBits
/* 005E3C 8000523C A2230002 */   sb    $v1, 2($s1) # store Bleeding Frequency

/* 005E40 80005240 02002021 */  addu  $a0, $s0, $zero
/* 005E44 80005244 24050004 */  li    $a1, 4
/* 005E48 80005248 24060001 */  li    $a2, 1
/* 005E4C 8000524C 0C0013D9 */  jal   UnpackBits
/* 005E50 80005250 A2230003 */   sb    $v1, 3($s1) # store Recovery Rate (normal)

/* 005E54 80005254 02002021 */  addu  $a0, $s0, $zero
/* 005E58 80005258 24050003 */  li    $a1, 3
/* 005E5C 8000525C 24060001 */  li    $a2, 1
/* 005E60 80005260 0C0013D9 */  jal   UnpackBits
/* 005E64 80005264 A2230004 */   sb    $v1, 4($s1) # store Recovery Rate (Bleeding)

/* 005E68 80005268 02002021 */  addu  $a0, $s0, $zero
/* 005E6C 8000526C 24050003 */  li    $a1, 3
/* 005E70 80005270 24060001 */  li    $a2, 1
/* 005E74 80005274 0C0013D9 */  jal   UnpackBits
/* 005E78 80005278 A2230005 */   sb    $v1, 5($s1)

/* 005E7C 8000527C 02002021 */  addu  $a0, $s0, $zero
/* 005E80 80005280 24050003 */  li    $a1, 3
/* 005E84 80005284 24060001 */  li    $a2, 1
/* 005E88 80005288 0C0013D9 */  jal   UnpackBits
/* 005E8C 8000528C A2230006 */   sb    $v1, 6($s1) # store Weapon Use

/* 005E90 80005290 02002021 */  addu  $a0, $s0, $zero
/* 005E94 80005294 24050005 */  li    $a1, 5
/* 005E98 80005298 24060001 */  li    $a2, 1
/* 005E9C 8000529C 0C0013D9 */  jal   UnpackBits
/* 005EA0 800052A0 A2230007 */   sb    $v1, 7($s1) # store Downed Recovery Rate

/* 005EA4 800052A4 02002021 */  addu  $a0, $s0, $zero
/* 005EA8 800052A8 24050004 */  li    $a1, 4
/* 005EAC 800052AC 24060001 */  li    $a2, 1
/* 005EB0 800052B0 0C0013D9 */  jal   UnpackBits
/* 005EB4 800052B4 A2230008 */   sb    $v1, 8($s1)

/* 005EB8 800052B8 02002021 */  addu  $a0, $s0, $zero
/* 005EBC 800052BC 24050004 */  li    $a1, 4
/* 005EC0 800052C0 24060001 */  li    $a2, 1
/* 005EC4 800052C4 0C0013D9 */  jal   UnpackBits
/* 005EC8 800052C8 A2230009 */   sb    $v1, 9($s1) # store Preferred Weapon

/* 005ECC 800052CC 02002021 */  addu  $a0, $s0, $zero
/* 005ED0 800052D0 24050004 */  li    $a1, 4
/* 005ED4 800052D4 24060001 */  li    $a2, 1
/* 005ED8 800052D8 0C0013D9 */  jal   UnpackBits
/* 005EDC 800052DC A223000A */   sb    $v1, 0xa($s1) # store Offensive Param - Head

/* 005EE0 800052E0 02002021 */  addu  $a0, $s0, $zero
/* 005EE4 800052E4 24050004 */  li    $a1, 4
/* 005EE8 800052E8 24060001 */  li    $a2, 1
/* 005EEC 800052EC 0C0013D9 */  jal   UnpackBits
/* 005EF0 800052F0 A223000B */   sb    $v1, 0xb($s1) # store Offensive Param - Body

/* 005EF4 800052F4 02002021 */  addu  $a0, $s0, $zero
/* 005EF8 800052F8 24050004 */  li    $a1, 4
/* 005EFC 800052FC 24060001 */  li    $a2, 1
/* 005F00 80005300 0C0013D9 */  jal   UnpackBits
/* 005F04 80005304 A223000C */   sb    $v1, 0xc($s1) # store Offensive Param - Arms

/* 005F08 80005308 02002021 */  addu  $a0, $s0, $zero
/* 005F0C 8000530C 24050004 */  li    $a1, 4
/* 005F10 80005310 24060001 */  li    $a2, 1
/* 005F14 80005314 0C0013D9 */  jal   UnpackBits
/* 005F18 80005318 A223000D */   sb    $v1, 0xd($s1) # store Offensive Param - Legs

/* 005F1C 8000531C 02002021 */  addu  $a0, $s0, $zero
/* 005F20 80005320 24050004 */  li    $a1, 4
/* 005F24 80005324 24060001 */  li    $a2, 1
/* 005F28 80005328 0C0013D9 */  jal   UnpackBits
/* 005F2C 8000532C A223000E */   sb    $v1, 0xe($s1) # store Offensive Param - Flying

/* 005F30 80005330 02002021 */  addu  $a0, $s0, $zero
/* 005F34 80005334 24050004 */  li    $a1, 4
/* 005F38 80005338 24060001 */  li    $a2, 1
/* 005F3C 8000533C 0C0013D9 */  jal   UnpackBits
/* 005F40 80005340 A223000F */   sb    $v1, 0xf($s1) # store Defensive Param - Head

/* 005F44 80005344 02002021 */  addu  $a0, $s0, $zero
/* 005F48 80005348 24050004 */  li    $a1, 4
/* 005F4C 8000534C 24060001 */  li    $a2, 1
/* 005F50 80005350 0C0013D9 */  jal   UnpackBits
/* 005F54 80005354 A2230010 */   sb    $v1, 0x10($s1) # store Defensive Param - Body

/* 005F58 80005358 02002021 */  addu  $a0, $s0, $zero
/* 005F5C 8000535C 24050004 */  li    $a1, 4
/* 005F60 80005360 24060001 */  li    $a2, 1
/* 005F64 80005364 0C0013D9 */  jal   UnpackBits
/* 005F68 80005368 A2230011 */   sb    $v1, 0x11($s1) # store Defensive Param - Arms

/* 005F6C 8000536C 02002021 */  addu  $a0, $s0, $zero
/* 005F70 80005370 24050004 */  li    $a1, 4
/* 005F74 80005374 24060001 */  li    $a2, 1
/* 005F78 80005378 0C0013D9 */  jal   UnpackBits
/* 005F7C 8000537C A2230012 */   sb    $v1, 0x12($s1) # store Defensive Param - Legs

/* 005F80 80005380 02002021 */  addu  $a0, $s0, $zero
/* 005F84 80005384 24050003 */  li    $a1, 3
/* 005F88 80005388 24060001 */  li    $a2, 1
/* 005F8C 8000538C 0C0013D9 */  jal   UnpackBits
/* 005F90 80005390 A2230013 */   sb    $v1, 0x13($s1) # store Defensive Param - Flying

/* 005F94 80005394 02002021 */  addu  $a0, $s0, $zero
/* 005F98 80005398 24050005 */  li    $a1, 5
/* 005F9C 8000539C 24060001 */  li    $a2, 1
/* 005FA0 800053A0 0C0013D9 */  jal   UnpackBits
/* 005FA4 800053A4 A2230014 */   sb    $v1, 0x14($s1) # store Jump Distance

/* 005FA8 800053A8 02002021 */  addu  $a0, $s0, $zero
/* 005FAC 800053AC 24050003 */  li    $a1, 3
/* 005FB0 800053B0 24060001 */  li    $a2, 1
/* 005FB4 800053B4 0C0013D9 */  jal   UnpackBits
/* 005FB8 800053B8 A2230015 */   sb    $v1, 0x15($s1)

/* 005FBC 800053BC 02002021 */  addu  $a0, $s0, $zero
/* 005FC0 800053C0 24050003 */  li    $a1, 3
/* 005FC4 800053C4 24060001 */  li    $a2, 1
/* 005FC8 800053C8 0C0013D9 */  jal   UnpackBits
/* 005FCC 800053CC A2230016 */   sb    $v1, 0x16($s1) # store Submission Skills

/* 005FD0 800053D0 02002021 */  addu  $a0, $s0, $zero
/* 005FD4 800053D4 24050004 */  li    $a1, 4
/* 005FD8 800053D8 24060001 */  li    $a2, 1
/* 005FDC 800053DC 0C0013D9 */  jal   UnpackBits
/* 005FE0 800053E0 A2230017 */   sb    $v1, 0x17($s1)

/* 005FE4 800053E4 02002021 */  addu  $a0, $s0, $zero
/* 005FE8 800053E8 24050003 */  li    $a1, 3
/* 005FEC 800053EC 24060001 */  li    $a2, 1
/* 005FF0 800053F0 0C0013D9 */  jal   UnpackBits
/* 005FF4 800053F4 A2230018 */   sb    $v1, 0x18($s1)

/* 005FF8 800053F8 02002021 */  addu  $a0, $s0, $zero
/* 005FFC 800053FC 24050003 */  li    $a1, 3
/* 006000 80005400 24060001 */  li    $a2, 1
/* 006004 80005404 0C0013D9 */  jal   UnpackBits
/* 006008 80005408 A2230019 */   sb    $v1, 0x19($s1) # store Logic - Standing Opponent Early

/* 00600C 8000540C 02002021 */  addu  $a0, $s0, $zero
/* 006010 80005410 24050009 */  li    $a1, 9
/* 006014 80005414 24060001 */  li    $a2, 1
/* 006018 80005418 0C0013D9 */  jal   UnpackBits
/* 00601C 8000541C A223001A */   sb    $v1, 0x1a($s1) # store Logic - Standing Opponent Late

/* 006020 80005420 02002021 */  addu  $a0, $s0, $zero
/* 006024 80005424 24050004 */  li    $a1, 4
/* 006028 80005428 24060001 */  li    $a2, 1
/* 00602C 8000542C 0C0013D9 */  jal   UnpackBits
/* 006030 80005430 A623001C */   sh    $v1, 0x1c($s1)

/* 006034 80005434 02002021 */  addu  $a0, $s0, $zero
/* 006038 80005438 24050004 */  li    $a1, 4
/* 00603C 8000543C 24060001 */  li    $a2, 1
/* 006040 80005440 0C0013D9 */  jal   UnpackBits
/* 006044 80005444 A223001E */   sb    $v1, 0x1e($s1) # store Logic - Downed Opponent Early

/* 006048 80005448 02002021 */  addu  $a0, $s0, $zero
/* 00604C 8000544C 24050009 */  li    $a1, 9
/* 006050 80005450 24060001 */  li    $a2, 1
/* 006054 80005454 0C0013D9 */  jal   UnpackBits
/* 006058 80005458 A223001F */   sb    $v1, 0x1f($s1) # store Logic - Downed Opponent Late

/* 00605C 8000545C 02002021 */  addu  $a0, $s0, $zero
/* 006060 80005460 24050004 */  li    $a1, 4
/* 006064 80005464 24060001 */  li    $a2, 1
/* 006068 80005468 0C0013D9 */  jal   UnpackBits
/* 00606C 8000546C A6230020 */   sh    $v1, 0x20($s1) # store Logic - Finishing Move

/* 006070 80005470 02002021 */  addu  $a0, $s0, $zero
/* 006074 80005474 24050003 */  li    $a1, 3
/* 006078 80005478 24060001 */  li    $a2, 1
/* 00607C 8000547C 0C0013D9 */  jal   UnpackBits
/* 006080 80005480 A2230022 */   sb    $v1, 0x22($s1) # store Logic - Attack Strategy

/* 006084 80005484 02002021 */  addu  $a0, $s0, $zero
/* 006088 80005488 24050003 */  li    $a1, 3
/* 00608C 8000548C 24060001 */  li    $a2, 1
/* 006090 80005490 0C0013D9 */  jal   UnpackBits
/* 006094 80005494 A2230023 */   sb    $v1, 0x23($s1) # store Logic - Strike Reaction

/* 006098 80005498 02002021 */  addu  $a0, $s0, $zero
/* 00609C 8000549C 24050004 */  li    $a1, 4
/* 0060A0 800054A0 24060001 */  li    $a2, 1
/* 0060A4 800054A4 0C0013D9 */  jal   UnpackBits
/* 0060A8 800054A8 A2230024 */   sb    $v1, 0x24($s1) # store Logic - Grapple Reaction

/* 0060AC 800054AC 02002021 */  addu  $a0, $s0, $zero
/* 0060B0 800054B0 24050004 */  li    $a1, 4
/* 0060B4 800054B4 24060001 */  li    $a2, 1
/* 0060B8 800054B8 0C0013D9 */  jal   UnpackBits
/* 0060BC 800054BC A2230025 */   sb    $v1, 0x25($s1) # store Logic - Offensive Balance

/* 0060C0 800054C0 02002021 */  addu  $a0, $s0, $zero
/* 0060C4 800054C4 24050003 */  li    $a1, 3
/* 0060C8 800054C8 24060001 */  li    $a2, 1
/* 0060CC 800054CC 0C0013D9 */  jal   UnpackBits
/* 0060D0 800054D0 A2230026 */   sb    $v1, 0x26($s1) # store Logic - Outside Strategy

/* 0060D4 800054D4 02002021 */  addu  $a0, $s0, $zero
/* 0060D8 800054D8 2405000C */  li    $a1, 12
/* 0060DC 800054DC 24060001 */  li    $a2, 1
/* 0060E0 800054E0 0C0013D9 */  jal   UnpackBits
/* 0060E4 800054E4 A2230027 */   sb    $v1, 0x27($s1) # store Logic - Taunting

/* 0060E8 800054E8 02002021 */  addu  $a0, $s0, $zero
/* 0060EC 800054EC 2405000C */  li    $a1, 12
/* 0060F0 800054F0 24060001 */  li    $a2, 1
/* 0060F4 800054F4 0C0013D9 */  jal   UnpackBits
/* 0060F8 800054F8 A6230028 */   sh    $v1, 0x28($s1) # store Rival 1 ID4

/* 0060FC 800054FC 02002021 */  addu  $a0, $s0, $zero
/* 006100 80005500 2405000C */  li    $a1, 12
/* 006104 80005504 24060001 */  li    $a2, 1
/* 006108 80005508 0C0013D9 */  jal   UnpackBits
/* 00610C 8000550C A623002A */   sh    $v1, 0x2a($s1) # store Rival 2 ID4

/* 006110 80005510 02002021 */  addu  $a0, $s0, $zero
/* 006114 80005514 2405000C */  li    $a1, 12
/* 006118 80005518 24060001 */  li    $a2, 1
/* 00611C 8000551C 0C0013D9 */  jal   UnpackBits
/* 006120 80005520 A623002C */   sh    $v1, 0x2c($s1) # store Rival 3 ID4

/* 006124 80005524 02002021 */  addu  $a0, $s0, $zero
/* 006128 80005528 24050020 */  li    $a1, 32
/* 00612C 8000552C 24060001 */  li    $a2, 1
/* 006130 80005530 0C0013D9 */  jal   UnpackBits
/* 006134 80005534 A623002E */   sh    $v1, 0x2e($s1) # store Second/Manager ID4

/* 006138 80005538 02002021 */  addu  $a0, $s0, $zero
/* 00613C 8000553C 24050001 */  li    $a1, 1
/* 006140 80005540 24060001 */  li    $a2, 1
/* 006144 80005544 0C0013D9 */  jal   UnpackBits
/* 006148 80005548 AE230030 */   sw    $v1, 0x30($s1)

/* 00614C 8000554C 02002021 */  addu  $a0, $s0, $zero
/* 006150 80005550 24050001 */  li    $a1, 1
/* 006154 80005554 24060001 */  li    $a2, 1
/* 006158 80005558 0C0013D9 */  jal   UnpackBits
/* 00615C 8000555C AE230034 */   sw    $v1, 0x34($s1)

/* 006160 80005560 A6230038 */  sh    $v1, 0x38($s1)
/* 006164 80005564 8FBF0018 */  lw    $ra, 0x18($sp)
/* 006168 80005568 8FB10014 */  lw    $s1, 0x14($sp)
/* 00616C 8000556C 8FB00010 */  lw    $s0, 0x10($sp)
/* 006170 80005570 03E00008 */  jr    $ra
/* 006174 80005574 27BD0020 */   addiu $sp, $sp, 0x20
