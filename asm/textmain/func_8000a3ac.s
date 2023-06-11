# Related to wrestler unlocks

# Params:
# $a0 - Wrestler ID4

glabel func_8000A3AC
/* 00AFAC 8000A3AC 30830F00 */  andi  $v1, $a0, 0xF00
/* 00AFB0 8000A3B0 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00AFB4 8000A3B4 14620007 */  bne   $v1, $v0, .L8000A3D4
/* 00AFB8 8000A3B8 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00AFBC 8000A3BC 08002900 */  j     .L8000A400
/* 00AFC0 8000A3C0 2483F372 */   addiu $v1, $a0, -0xC8E

.L8000A3C4:
/* 00AFC4 8000A3C4 00861021 */  addu  $v0, $a0, $a2
/* 00AFC8 8000A3C8 90420001 */  lbu   $v0, 1($v0)
/* 00AFCC 8000A3CC 0800290E */  j     .L8000A438
/* 00AFD0 8000A3D0 24420001 */   addiu $v0, $v0, 1

.L8000A3D4:
/* 00AFD4 8000A3D4 3C058004 */  lui   $a1, %hi(ptrTbl_WrestlerData) # $a1, 0x8004
/* 00AFD8 8000A3D8 24A5FAB0 */  addiu $a1, %lo(ptrTbl_WrestlerData) # addiu $a1, $a1, -0x550

.L8000A3DC:
/* 00AFDC 8000A3DC 8CA20000 */  lw    $v0, ($a1)
/* 00AFE0 8000A3E0 94420000 */  lhu   $v0, ($v0)
/* 00AFE4 8000A3E4 10440006 */  beq   $v0, $a0, .L8000A400
/* 00AFE8 8000A3E8 00000000 */   nop   

/* 00AFEC 8000A3EC 24630001 */  addiu $v1, $v1, 1
/* 00AFF0 8000A3F0 28620073 */  slti  $v0, $v1, 0x73
/* 00AFF4 8000A3F4 1440FFF9 */  bnez  $v0, .L8000A3DC
/* 00AFF8 8000A3F8 24A50004 */   addiu $a1, $a1, 4

/* 00AFFC 8000A3FC 00001821 */  addu  $v1, $zero, $zero

.L8000A400:
/* 00B000 8000A400 3C048004 */  lui   $a0, %hi(tbl_WrestlerUnlockData) # $a0, 0x8004
/* 00B004 8000A404 2484FD44 */  addiu $a0, %lo(tbl_WrestlerUnlockData) # addiu $a0, $a0, -0x2bc
/* 00B008 8000A408 90820000 */  lbu   $v0, ($a0)
/* 00B00C 8000A40C 1040000A */  beqz  $v0, .L8000A438
/* 00B010 8000A410 00001021 */   addu  $v0, $zero, $zero

/* 00B014 8000A414 00802821 */  addu  $a1, $a0, $zero
/* 00B018 8000A418 00003021 */  addu  $a2, $zero, $zero
/* 00B01C 8000A41C 90A20000 */  lbu   $v0, ($a1)

.L8000A420:
/* 00B020 8000A420 1062FFE8 */  beq   $v1, $v0, .L8000A3C4
/* 00B024 8000A424 24A50002 */   addiu $a1, $a1, 2

/* 00B028 8000A428 90A20000 */  lbu   $v0, ($a1)
/* 00B02C 8000A42C 1440FFFC */  bnez  $v0, .L8000A420
/* 00B030 8000A430 24C60002 */   addiu $a2, $a2, 2

/* 00B034 8000A434 00001021 */  addu  $v0, $zero, $zero

.L8000A438:
/* 00B038 8000A438 03E00008 */  jr    $ra
/* 00B03C 8000A43C 00000000 */   nop   
