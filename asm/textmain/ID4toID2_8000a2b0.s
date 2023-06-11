# Converts a wrestler's ID4 value (short) to an ID2 value (byte).

# Params:
# $a0 - Wrestler ID4

glabel ID4toID2
/* 00AEB0 8000A2B0 30830F00 */  andi  $v1, $a0, 0xF00 # WrestlerID4 top mask
/* 00AEB4 8000A2B4 24020D00 */  li    $v0, 0xD00 # mask for mempak wrestlers
/* 00AEB8 8000A2B8 54620003 */  bnel  $v1, $v0, .L8000A2C8
/* 00AEBC 8000A2BC 00001821 */   addu  $v1, $zero, $zero # zero out counter/ID2 return value

# get ID2 for mempak wrestler
/* 00AEC0 8000A2C0 080028BD */  j     .L8000A2F4
/* 00AEC4 8000A2C4 2482F372 */   addiu $v0, $a0, -0xC8E # 0x0D01 - 0x0C8E = 0x73 (mempak wrestlers)

.L8000A2C8:
/* 00AEC8 8000A2C8 3C058004 */  lui   $a1, %hi(ptrTbl_WrestlerData) # $a1, 0x8004
/* 00AECC 8000A2CC 24A5FAB0 */  addiu $a1, %lo(ptrTbl_WrestlerData) # addiu $a1, $a1, -0x550

.L8000A2D0:
/* 00AED0 8000A2D0 8CA20000 */  lw    $v0, ($a1) # load wrestler data pointer
/* 00AED4 8000A2D4 94420000 */  lhu   $v0, ($v0)
/* 00AED8 8000A2D8 10440006 */  beq   $v0, $a0, .L8000A2F4 # found
/* 00AEDC 8000A2DC 00601021 */   addu  $v0, $v1, $zero

/* 00AEE0 8000A2E0 24630001 */  addiu $v1, $v1, 1
/* 00AEE4 8000A2E4 28620073 */  slti  $v0, $v1, 0x73
/* 00AEE8 8000A2E8 1440FFF9 */  bnez  $v0, .L8000A2D0
/* 00AEEC 8000A2EC 24A50004 */   addiu $a1, $a1, 4 # next wrestler data pointer

/* 00AEF0 8000A2F0 00001021 */  addu  $v0, $zero, $zero # return 0

.L8000A2F4:
/* 00AEF4 8000A2F4 03E00008 */  jr    $ra
/* 00AEF8 8000A2F8 00000000 */   nop   
