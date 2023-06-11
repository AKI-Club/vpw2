# Related to wrestler appearance

# Params:
# $a0 - Wrestler ID4
# $a1 - Costume number

glabel func_8000ACB4
/* 00B8B4 8000ACB4 30830F00 */  andi  $v1, $a0, 0xF00
/* 00B8B8 8000ACB8 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00B8BC 8000ACBC 14620003 */  bne   $v1, $v0, .L8000ACCC
/* 00B8C0 8000ACC0 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00B8C4 8000ACC4 08002B3E */  j     .L8000ACF8
/* 00B8C8 8000ACC8 2482F372 */   addiu $v0, $a0, -0xc8e

.L8000ACCC:
/* 00B8CC 8000ACCC 3C068004 */  lui   $a2, %hi(ptrTbl_WrestlerData) # $a2, 0x8004
/* 00B8D0 8000ACD0 24C6FAB0 */  addiu $a2, %lo(ptrTbl_WrestlerData) # addiu $a2, $a2, -0x550

.L8000ACD4:
/* 00B8D4 8000ACD4 8CC20000 */  lw    $v0, ($a2)
/* 00B8D8 8000ACD8 94420000 */  lhu   $v0, ($v0)
/* 00B8DC 8000ACDC 10440006 */  beq   $v0, $a0, .L8000ACF8
/* 00B8E0 8000ACE0 00601021 */   addu  $v0, $v1, $zero

/* 00B8E4 8000ACE4 24630001 */  addiu $v1, $v1, 1
/* 00B8E8 8000ACE8 28620073 */  slti  $v0, $v1, 0x73
/* 00B8EC 8000ACEC 1440FFF9 */  bnez  $v0, .L8000ACD4
/* 00B8F0 8000ACF0 24C60004 */   addiu $a2, $a2, 4

/* 00B8F4 8000ACF4 00001021 */  addu  $v0, $zero, $zero

.L8000ACF8:
/* 00B8F8 8000ACF8 00401821 */  addu  $v1, $v0, $zero
/* 00B8FC 8000ACFC 2464FF8D */  addiu $a0, $v1, -0x73
/* 00B900 8000AD00 2C820010 */  sltiu $v0, $a0, 0x10
/* 00B904 8000AD04 1040000C */  beqz  $v0, .L8000AD38
/* 00B908 8000AD08 00000000 */   nop   

/* 00B90C 8000AD0C 3C068004 */  lui   $a2, %hi(dynPtr_MempakAppearance) # $a2, 0x8004
/* 00B910 8000AD10 8CC6FD94 */  lw    $a2, %lo(dynPtr_MempakAppearance)($a2)
/* 00B914 8000AD14 10C00008 */  beqz  $a2, .L8000AD38
/* 00B918 8000AD18 00041080 */   sll   $v0, $a0, 2

/* 00B91C 8000AD1C 30A30003 */  andi  $v1, $a1, 3
/* 00B920 8000AD20 00431021 */  addu  $v0, $v0, $v1
/* 00B924 8000AD24 00021940 */  sll   $v1, $v0, 5
/* 00B928 8000AD28 00621823 */  subu  $v1, $v1, $v0
/* 00B92C 8000AD2C 00031840 */  sll   $v1, $v1, 1
/* 00B930 8000AD30 08002B5E */  j     .L8000AD78
/* 00B934 8000AD34 00C31021 */   addu  $v0, $a2, $v1

.L8000AD38:
/* 00B938 8000AD38 3C048004 */  lui   $a0, %hi(dynPtr_DefaultAppearance) # $a0, 0x8004
/* 00B93C 8000AD3C 8C84FD8C */  lw    $a0, %lo(dynPtr_DefaultAppearance)($a0)
/* 00B940 8000AD40 10800004 */  beqz  $a0, .L8000AD54
/* 00B944 8000AD44 2462FFFF */   addiu $v0, $v1, -1

/* 00B948 8000AD48 2C420072 */  sltiu $v0, $v0, 0x72
/* 00B94C 8000AD4C 14400004 */  bnez  $v0, .L8000AD60
/* 00B950 8000AD50 00031080 */   sll   $v0, $v1, 2

.L8000AD54:
/* 00B954 8000AD54 3C028007 */  lui   $v0, %hi(bssMain_8006FD10) # $v0, 0x8007
/* 00B958 8000AD58 08002B5E */  j     .L8000AD78
/* 00B95C 8000AD5C 2442FD10 */   addiu $v0, %lo(bssMain_8006FD10) # addiu $v0, $v0, -0x2f0

.L8000AD60:
/* 00B960 8000AD60 30A30003 */  andi  $v1, $a1, 3
/* 00B964 8000AD64 00431021 */  addu  $v0, $v0, $v1
/* 00B968 8000AD68 00021940 */  sll   $v1, $v0, 5
/* 00B96C 8000AD6C 00621823 */  subu  $v1, $v1, $v0
/* 00B970 8000AD70 00031840 */  sll   $v1, $v1, 1
/* 00B974 8000AD74 00831021 */  addu  $v0, $a0, $v1

.L8000AD78:
/* 00B978 8000AD78 03E00008 */  jr    $ra
/* 00B97C 8000AD7C 00000000 */   nop   
