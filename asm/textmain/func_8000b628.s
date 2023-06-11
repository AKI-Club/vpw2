# Params:
# $a0 - Wrestler ID4

glabel func_8000B628
/* 00C228 8000B628 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C22C 8000B62C 30830F00 */  andi  $v1, $a0, 0xF00
/* 00C230 8000B630 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00C234 8000B634 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00C238 8000B638 AFB20018 */  sw    $s2, 0x18($sp)
/* 00C23C 8000B63C AFB10014 */  sw    $s1, 0x14($sp)
/* 00C240 8000B640 14620003 */  bne   $v1, $v0, .L8000B650
/* 00C244 8000B644 AFB00010 */   sw    $s0, 0x10($sp)

# get ID2 for mempak wrestler
/* 00C248 8000B648 08002DA0 */  j     .L8000B680
/* 00C24C 8000B64C 2482F372 */   addiu $v0, $a0, -0xc8e

.L8000B650:
/* 00C250 8000B650 00001821 */  addu  $v1, $zero, $zero
/* 00C254 8000B654 3C058004 */  lui   $a1, %hi(ptrTbl_WrestlerData) # $a1, 0x8004
/* 00C258 8000B658 24A5FAB0 */  addiu $a1, %lo(ptrTbl_WrestlerData) # addiu $a1, $a1, -0x550

.L8000B65C:
/* 00C25C 8000B65C 8CA20000 */  lw    $v0, ($a1)
/* 00C260 8000B660 94420000 */  lhu   $v0, ($v0)
/* 00C264 8000B664 10440006 */  beq   $v0, $a0, .L8000B680
/* 00C268 8000B668 00601021 */   addu  $v0, $v1, $zero

/* 00C26C 8000B66C 24630001 */  addiu $v1, $v1, 1
/* 00C270 8000B670 28620073 */  slti  $v0, $v1, 0x73
/* 00C274 8000B674 1440FFF9 */  bnez  $v0, .L8000B65C
/* 00C278 8000B678 24A50004 */   addiu $a1, $a1, 4

/* 00C27C 8000B67C 00001021 */  addu  $v0, $zero, $zero

.L8000B680:
/* 00C280 8000B680 00402021 */  addu  $a0, $v0, $zero
/* 00C284 8000B684 2485FF8D */  addiu $a1, $a0, -0x73
/* 00C288 8000B688 2CA20010 */  sltiu $v0, $a1, 0x10
/* 00C28C 8000B68C 1040000A */  beqz  $v0, .L8000B6B8
/* 00C290 8000B690 00000000 */   nop   

/* 00C294 8000B694 3C068004 */  lui   $a2, %hi(dynPtr_MempakAppearance) # $a2, 0x8004
/* 00C298 8000B698 8CC6FD94 */  lw    $a2, %lo(dynPtr_MempakAppearance)($a2)
/* 00C29C 8000B69C 10C00006 */  beqz  $a2, .L8000B6B8
/* 00C2A0 8000B6A0 00051880 */   sll   $v1, $a1, 2

/* 00C2A4 8000B6A4 000511C0 */  sll   $v0, $a1, 7
/* 00C2A8 8000B6A8 00431023 */  subu  $v0, $v0, $v1
/* 00C2AC 8000B6AC 00021040 */  sll   $v0, $v0, 1
/* 00C2B0 8000B6B0 08002DBD */  j     .L8000B6F4
/* 00C2B4 8000B6B4 00C22021 */   addu  $a0, $a2, $v0

.L8000B6B8:
/* 00C2B8 8000B6B8 3C058004 */  lui   $a1, %hi(dynPtr_DefaultAppearance) # $a1, 0x8004
/* 00C2BC 8000B6BC 8CA5FD8C */  lw    $a1, %lo(dynPtr_DefaultAppearance)($a1)
/* 00C2C0 8000B6C0 10A00004 */  beqz  $a1, .L8000B6D4
/* 00C2C4 8000B6C4 2482FFFF */   addiu $v0, $a0, -1

/* 00C2C8 8000B6C8 2C420072 */  sltiu $v0, $v0, 0x72
/* 00C2CC 8000B6CC 14400005 */  bnez  $v0, .L8000B6E4
/* 00C2D0 8000B6D0 00041880 */   sll   $v1, $a0, 2

.L8000B6D4:
/* 00C2D4 8000B6D4 3C048007 */  lui   $a0, %hi(bssMain_8006FD10) # $a0, 0x8007
/* 00C2D8 8000B6D8 2484FD10 */  addiu $a0, %lo(bssMain_8006FD10) # addiu $a0, $a0, -0x2f0
/* 00C2DC 8000B6DC 08002DBE */  j     .L8000B6F8
/* 00C2E0 8000B6E0 24110001 */   li    $s1, 1

.L8000B6E4:
/* 00C2E4 8000B6E4 000411C0 */  sll   $v0, $a0, 7
/* 00C2E8 8000B6E8 00431023 */  subu  $v0, $v0, $v1
/* 00C2EC 8000B6EC 00021040 */  sll   $v0, $v0, 1
/* 00C2F0 8000B6F0 00A22021 */  addu  $a0, $a1, $v0

.L8000B6F4:
/* 00C2F4 8000B6F4 24110001 */  li    $s1, 1

.L8000B6F8:
/* 00C2F8 8000B6F8 00809021 */  addu  $s2, $a0, $zero
/* 00C2FC 8000B6FC 2650003E */  addiu $s0, $s2, 0x3e

.L8000B700:
/* 00C300 8000B700 02402021 */  addu  $a0, $s2, $zero
/* 00C304 8000B704 02002821 */  addu  $a1, $s0, $zero
/* 00C308 8000B708 0C00C888 */  jal   bcopy
/* 00C30C 8000B70C 24060019 */   li    $a2, 25

/* 00C310 8000B710 26440019 */  addiu $a0, $s2, 0x19
/* 00C314 8000B714 26050019 */  addiu $a1, $s0, 0x19
/* 00C318 8000B718 0C00C888 */  jal   bcopy
/* 00C31C 8000B71C 2406000F */   li    $a2, 15

/* 00C320 8000B720 26310001 */  addiu $s1, $s1, 1
/* 00C324 8000B724 2A220004 */  slti  $v0, $s1, 4
/* 00C328 8000B728 1440FFF5 */  bnez  $v0, .L8000B700
/* 00C32C 8000B72C 2610003E */   addiu $s0, $s0, 0x3e

/* 00C330 8000B730 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00C334 8000B734 8FB20018 */  lw    $s2, 0x18($sp)
/* 00C338 8000B738 8FB10014 */  lw    $s1, 0x14($sp)
/* 00C33C 8000B73C 8FB00010 */  lw    $s0, 0x10($sp)
/* 00C340 8000B740 03E00008 */  jr    $ra
/* 00C344 8000B744 27BD0020 */   addiu $sp, $sp, 0x20
