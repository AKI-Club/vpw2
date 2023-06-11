# Converts a wrestler's ID2 value (byte) to an ID4 value (short).

# Params:
# $a0 - Wrestler ID2

glabel ID2toID4
/* 00AE70 8000A270 2482FF8D */  addiu $v0, $a0, -0x73
/* 00AE74 8000A274 2C420010 */  sltiu $v0, $v0, 0x10
/* 00AE78 8000A278 1440000B */  bnez  $v0, .L8000A2A8
/* 00AE7C 8000A27C 24820C8E */   addiu $v0, $a0, 0xC8E # 0xC8E + 0x73 = 0xD01 (mempak wrestlers)

# check for invalid wrestlers, if non-mempak wrestler
/* 00AE80 8000A280 2482FFFF */  addiu $v0, $a0, -1
/* 00AE84 8000A284 2C420072 */  sltiu $v0, $v0, 0x72
/* 00AE88 8000A288 10400006 */  beqz  $v0, .L8000A2A4
/* 00AE8C 8000A28C 00041080 */   sll   $v0, $a0, 2

/* 00AE90 8000A290 3C018004 */  lui   $at, %hi(ptrTbl_WrestlerData)
/* 00AE94 8000A294 00220821 */  addu  $at, $at, $v0
/* 00AE98 8000A298 8C22FAB0 */  lw    $v0, %lo(ptrTbl_WrestlerData)($at)
/* 00AE9C 8000A29C 080028AA */  j     .L8000A2A8
/* 00AEA0 8000A2A0 94420000 */   lhu   $v0, ($v0)

.L8000A2A4:
# return 0;
/* 00AEA4 8000A2A4 00001021 */  addu  $v0, $zero, $zero

.L8000A2A8:
/* 00AEA8 8000A2A8 03E00008 */  jr    $ra
/* 00AEAC 8000A2AC 00000000 */   nop   
