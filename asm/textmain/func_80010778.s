glabel func_80010778
/* 011378 80010778 97A20012 */  lhu   $v0, 0x12($sp)
/* 01137C 8001077C 93A30017 */  lbu   $v1, 0x17($sp)
/* 011380 80010780 93A8001B */  lbu   $t0, 0x1b($sp)
/* 011384 80010784 93A9001F */  lbu   $t1, 0x1f($sp)
/* 011388 80010788 93AA0023 */  lbu   $t2, 0x23($sp)
/* 01138C 8001078C A4850000 */  sh    $a1, ($a0)
/* 011390 80010790 A4860002 */  sh    $a2, 2($a0)
/* 011394 80010794 A4800004 */  sh    $zero, 4($a0)
/* 011398 80010798 A4800006 */  sh    $zero, 6($a0)
/* 01139C 8001079C A4870008 */  sh    $a3, 8($a0)
/* 0113A0 800107A0 A482000A */  sh    $v0, 0xa($a0)
/* 0113A4 800107A4 A083000C */  sb    $v1, 0xc($a0)
/* 0113A8 800107A8 A088000D */  sb    $t0, 0xd($a0)
/* 0113AC 800107AC A089000E */  sb    $t1, 0xe($a0)
/* 0113B0 800107B0 03E00008 */  jr    $ra
/* 0113B4 800107B4 A08A000F */   sb    $t2, 0xf($a0)