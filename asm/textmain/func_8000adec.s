# Params:
# $a0 - Wrestler ID4

glabel func_8000ADEC
/* 00B9EC 8000ADEC 30830F00 */  andi  $v1, $a0, 0xF00
/* 00B9F0 8000ADF0 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00B9F4 8000ADF4 14620003 */  bne   $v1, $v0, .L8000AE04
/* 00B9F8 8000ADF8 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00B9FC 8000ADFC 08002B8C */  j     .L8000AE30
/* 00BA00 8000AE00 2482F372 */   addiu $v0, $a0, -0xc8e

.L8000AE04:
/* 00BA04 8000AE04 3C058004 */  lui   $a1, %hi(ptrTbl_WrestlerData) # $a1, 0x8004
/* 00BA08 8000AE08 24A5FAB0 */  addiu $a1, %lo(ptrTbl_WrestlerData) # addiu $a1, $a1, -0x550

.L8000AE0C:
/* 00BA0C 8000AE0C 8CA20000 */  lw    $v0, ($a1)
/* 00BA10 8000AE10 94420000 */  lhu   $v0, ($v0)
/* 00BA14 8000AE14 10440006 */  beq   $v0, $a0, .L8000AE30
/* 00BA18 8000AE18 00601021 */   addu  $v0, $v1, $zero

/* 00BA1C 8000AE1C 24630001 */  addiu $v1, $v1, 1
/* 00BA20 8000AE20 28620073 */  slti  $v0, $v1, 0x73
/* 00BA24 8000AE24 1440FFF9 */  bnez  $v0, .L8000AE0C
/* 00BA28 8000AE28 24A50004 */   addiu $a1, $a1, 4

/* 00BA2C 8000AE2C 00001021 */  addu  $v0, $zero, $zero

.L8000AE30:
/* 00BA30 8000AE30 00401821 */  addu  $v1, $v0, $zero
/* 00BA34 8000AE34 2462FF8D */  addiu $v0, $v1, -0x73
/* 00BA38 8000AE38 2C420010 */  sltiu $v0, $v0, 0x10
/* 00BA3C 8000AE3C 10400009 */  beqz  $v0, .L8000AE64
/* 00BA40 8000AE40 00000000 */   nop   

/* 00BA44 8000AE44 3C048004 */  lui   $a0, %hi(dynPtr_MempakMovesets) # $a0, 0x8004
/* 00BA48 8000AE48 8C84FD98 */  lw    $a0, %lo(dynPtr_MempakMovesets)($a0)
/* 00BA4C 8000AE4C 10800005 */  beqz  $a0, .L8000AE64
/* 00BA50 8000AE50 00031040 */   sll   $v0, $v1, 1

/* 00BA54 8000AE54 00431021 */  addu  $v0, $v0, $v1
/* 00BA58 8000AE58 00021180 */  sll   $v0, $v0, 6
/* 00BA5C 8000AE5C 08002BA5 */  j     .L8000AE94
/* 00BA60 8000AE60 2442A9C0 */   addiu $v0, $v0, -0x5640

.L8000AE64:
/* 00BA64 8000AE64 3C048004 */  lui   $a0, %hi(dynPtr_DefaultMovesets) # $a0, 0x8004
/* 00BA68 8000AE68 8C84FD90 */  lw    $a0, %lo(dynPtr_DefaultMovesets)($a0)
/* 00BA6C 8000AE6C 10800004 */  beqz  $a0, .L8000AE80
/* 00BA70 8000AE70 2462FFFF */   addiu $v0, $v1, -1

/* 00BA74 8000AE74 2C420072 */  sltiu $v0, $v0, 0x72
/* 00BA78 8000AE78 14400004 */  bnez  $v0, .L8000AE8C
/* 00BA7C 8000AE7C 00031040 */   sll   $v0, $v1, 1

.L8000AE80:
/* 00BA80 8000AE80 3C028007 */  lui   $v0, %hi(bssMain_8006FD50) # $v0, 0x8007
/* 00BA84 8000AE84 08002BA6 */  j     .L8000AE98
/* 00BA88 8000AE88 2442FD50 */   addiu $v0, %lo(bssMain_8006FD50) # addiu $v0, $v0, -0x2b0

.L8000AE8C:
/* 00BA8C 8000AE8C 00431021 */  addu  $v0, $v0, $v1
/* 00BA90 8000AE90 00021180 */  sll   $v0, $v0, 6

.L8000AE94:
/* 00BA94 8000AE94 00821021 */  addu  $v0, $a0, $v0

.L8000AE98:
/* 00BA98 8000AE98 03E00008 */  jr    $ra
/* 00BA9C 8000AE9C 00000000 */   nop   
