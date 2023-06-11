# Related to wrestlers in stables

# Params:
# $a0 - 
# $a1 - 
# $a2 - Wrestler ID4

glabel func_8000A69C
/* 00B29C 8000A69C 30C30F00 */  andi  $v1, $a2, 0xF00
/* 00B2A0 8000A6A0 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00B2A4 8000A6A4 14620003 */  bne   $v1, $v0, .L8000A6B4
/* 00B2A8 8000A6A8 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00B2AC 8000A6AC 080029B8 */  j     .L8000A6E0
/* 00B2B0 8000A6B0 24C7F372 */   addiu $a3, $a2, -0xC8E

# (default and edit wrestlers)
.L8000A6B4:
/* 00B2B4 8000A6B4 3C078004 */  lui   $a3, %hi(ptrTbl_WrestlerData) # $a3, 0x8004
/* 00B2B8 8000A6B8 24E7FAB0 */  addiu $a3, %lo(ptrTbl_WrestlerData) # addiu $a3, $a3, -0x550

.L8000A6BC:
/* 00B2BC 8000A6BC 8CE20000 */  lw    $v0, ($a3)
/* 00B2C0 8000A6C0 94420000 */  lhu   $v0, ($v0) # get wrestler ID4 for comparison
/* 00B2C4 8000A6C4 50460006 */  beql  $v0, $a2, .L8000A6E0 # exit loop if found
/* 00B2C8 8000A6C8 00603821 */   addu  $a3, $v1, $zero # wrestler ID2 in $a3

/* 00B2CC 8000A6CC 24630001 */  addiu $v1, $v1, 1
/* 00B2D0 8000A6D0 28620073 */  slti  $v0, $v1, 0x73
/* 00B2D4 8000A6D4 1440FFF9 */  bnez  $v0, .L8000A6BC
/* 00B2D8 8000A6D8 24E70004 */   addiu $a3, $a3, 4

/* 00B2DC 8000A6DC 00003821 */  addu  $a3, $zero, $zero

.L8000A6E0:
/* 00B2E0 8000A6E0 00051880 */  sll   $v1, $a1, 2
/* 00B2E4 8000A6E4 000410C0 */  sll   $v0, $a0, 3
/* 00B2E8 8000A6E8 00441023 */  subu  $v0, $v0, $a0
/* 00B2EC 8000A6EC 000210C0 */  sll   $v0, $v0, 3
/* 00B2F0 8000A6F0 00621821 */  addu  $v1, $v1, $v0
# store wrestler ID4
/* 00B2F4 8000A6F4 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00B2F8 8000A6F8 00230821 */  addu  $at, $at, $v1
/* 00B2FC 8000A6FC A4264510 */  sh    $a2, %lo(bssMain_800A4510)($at)
# store wrestler ID2
/* 00B300 8000A700 3C01800A */  lui   $at, %hi(bssMain_800A4510+2)
/* 00B304 8000A704 00230821 */  addu  $at, $at, $v1
/* 00B308 8000A708 03E00008 */  jr    $ra
/* 00B30C 8000A70C A4274512 */   sh    $a3, %lo(bssMain_800A4510+2)($at)
