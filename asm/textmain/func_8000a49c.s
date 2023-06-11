# Params:
# $a0 - Wrestler ID4

glabel func_8000A49C
/* 00B09C 8000A49C 30830F00 */  andi  $v1, $a0, 0xF00
/* 00B0A0 8000A4A0 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00B0A4 8000A4A4 14620005 */  bne   $v1, $v0, .L8000A4BC
/* 00B0A8 8000A4A8 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00B0AC 8000A4AC 0800293A */  j     .L8000A4E8
/* 00B0B0 8000A4B0 2483F372 */   addiu $v1, $a0, -0xc8e

.L8000A4B4:
/* 00B0B4 8000A4B4 08002947 */  j     .L8000A51C
/* 00B0B8 8000A4B8 24C20001 */   addiu $v0, $a2, 1

# get ID2 for default wrestler
.L8000A4BC:
/* 00B0BC 8000A4BC 3C058004 */  lui   $a1, %hi(ptrTbl_WrestlerData) # $a1, 0x8004
/* 00B0C0 8000A4C0 24A5FAB0 */  addiu $a1, %lo(ptrTbl_WrestlerData) # addiu $a1, $a1, -0x550

.L8000A4C4:
/* 00B0C4 8000A4C4 8CA20000 */  lw    $v0, ($a1)
/* 00B0C8 8000A4C8 94420000 */  lhu   $v0, ($v0)
/* 00B0CC 8000A4CC 10440006 */  beq   $v0, $a0, .L8000A4E8
/* 00B0D0 8000A4D0 00000000 */   nop   

/* 00B0D4 8000A4D4 24630001 */  addiu $v1, $v1, 1
/* 00B0D8 8000A4D8 28620073 */  slti  $v0, $v1, 0x73
/* 00B0DC 8000A4DC 1440FFF9 */  bnez  $v0, .L8000A4C4
/* 00B0E0 8000A4E0 24A50004 */   addiu $a1, $a1, 4

/* 00B0E4 8000A4E4 00001821 */  addu  $v1, $zero, $zero

.L8000A4E8:
# check if this wrestler is in the edit wrestler list
/* 00B0E8 8000A4E8 3C028004 */  lui   $v0, %hi(tbl_EditWrestlerID2) # $v0, 0x8004
/* 00B0EC 8000A4EC 9042FD74 */  lbu   $v0, %lo(tbl_EditWrestlerID2)($v0)
/* 00B0F0 8000A4F0 10400009 */  beqz  $v0, .L8000A518
/* 00B0F4 8000A4F4 00003021 */   addu  $a2, $zero, $zero

/* 00B0F8 8000A4F8 3C058004 */  lui   $a1, %hi(tbl_EditWrestlerID2) # $a1, 0x8004
/* 00B0FC 8000A4FC 24A5FD74 */  addiu $a1, %lo(tbl_EditWrestlerID2) # addiu $a1, $a1, -0x28c
/* 00B100 8000A500 90A20000 */  lbu   $v0, ($a1)

.L8000A504:
/* 00B104 8000A504 1062FFEB */  beq   $v1, $v0, .L8000A4B4
/* 00B108 8000A508 24A50001 */   addiu $a1, $a1, 1

/* 00B10C 8000A50C 90A20000 */  lbu   $v0, ($a1)
/* 00B110 8000A510 1440FFFC */  bnez  $v0, .L8000A504
/* 00B114 8000A514 24C60001 */   addiu $a2, $a2, 1

.L8000A518:
# return 0;
/* 00B118 8000A518 00001021 */  addu  $v0, $zero, $zero

.L8000A51C:
/* 00B11C 8000A51C 03E00008 */  jr    $ra
/* 00B120 8000A520 00000000 */   nop   
