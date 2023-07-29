# Params:
# $a0 - ?
# $a1 - ?
# $a2 - ?

glabel func_8000C648
/* 00D248 8000C648 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 00D24C 8000C64C AFB10034 */  sw    $s1, 0x34($sp)
/* 00D250 8000C650 3C118004 */  lui   $s1, %hi(var_8003FDB4) # $s1, 0x8004
/* 00D254 8000C654 8E31FDB4 */  lw    $s1, %lo(var_8003FDB4)($s1)
/* 00D258 8000C658 AFB40040 */  sw    $s4, 0x40($sp)
/* 00D25C 8000C65C 0080A021 */  addu  $s4, $a0, $zero
/* 00D260 8000C660 AFB00030 */  sw    $s0, 0x30($sp)
/* 00D264 8000C664 00008021 */  addu  $s0, $zero, $zero
/* 00D268 8000C668 AFB20038 */  sw    $s2, 0x38($sp)
/* 00D26C 8000C66C 00A09021 */  addu  $s2, $a1, $zero # store file ID 1 in $s2
/* 00D270 8000C670 AFB3003C */  sw    $s3, 0x3c($sp)
/* 00D274 8000C674 00C09821 */  addu  $s3, $a2, $zero # store file ID 2 in $s3
/* 00D278 8000C678 1220000B */  beqz  $s1, .L8000C6A8
/* 00D27C 8000C67C AFBF0044 */   sw    $ra, 0x44($sp)

/* 00D280 8000C680 3243FFFF */  andi  $v1, $s2, 0xffff

.L8000C684:
/* 00D284 8000C684 96220008 */  lhu   $v0, 8($s1)
/* 00D288 8000C688 10430005 */  beq   $v0, $v1, .L8000C6A0
/* 00D28C 8000C68C 00000000 */   nop   

/* 00D290 8000C690 02208021 */  addu  $s0, $s1, $zero
/* 00D294 8000C694 8E310000 */  lw    $s1, ($s1)
/* 00D298 8000C698 1620FFFA */  bnez  $s1, .L8000C684
/* 00D29C 8000C69C 00000000 */   nop   

.L8000C6A0:
/* 00D2A0 8000C6A0 16200019 */  bnez  $s1, .L8000C708
/* 00D2A4 8000C6A4 00000000 */   nop   

.L8000C6A8:
/* 00D2A8 8000C6A8 0C000226 */  jal   aki_malloc
/* 00D2AC 8000C6AC 2404000C */   li    $a0, 12

/* 00D2B0 8000C6B0 16000005 */  bnez  $s0, .L8000C6C8
/* 00D2B4 8000C6B4 00408821 */   addu  $s1, $v0, $zero

/* 00D2B8 8000C6B8 3C018004 */  lui   $at, %hi(var_8003FDB4) # $at, 0x8004
/* 00D2BC 8000C6BC AC31FDB4 */  sw    $s1, %lo(var_8003FDB4)($at)
/* 00D2C0 8000C6C0 080031B4 */  j     .L8000C6D0
/* 00D2C4 8000C6C4 27A40010 */   addiu $a0, $sp, 0x10

.L8000C6C8:
/* 00D2C8 8000C6C8 AE110000 */  sw    $s1, ($s0)
/* 00D2CC 8000C6CC 27A40010 */  addiu $a0, $sp, 0x10

# locate file 1
.L8000C6D0:
/* 00D2D0 8000C6D0 3250FFFF */  andi  $s0, $s2, 0xffff
/* 00D2D4 8000C6D4 02002821 */  addu  $a1, $s0, $zero
/* 00D2D8 8000C6D8 0C000F71 */  jal   GetFileLoc
/* 00D2DC 8000C6DC AE200000 */   sw    $zero, ($s1)

/* 00D2E0 8000C6E0 8FA40018 */  lw    $a0, 0x18($sp)
/* 00D2E4 8000C6E4 0C000226 */  jal   aki_malloc
/* 00D2E8 8000C6E8 00000000 */   nop   

# load file 1
/* 00D2EC 8000C6EC 27A40020 */  addiu $a0, $sp, 0x20
/* 00D2F0 8000C6F0 02002821 */  addu  $a1, $s0, $zero
/* 00D2F4 8000C6F4 00403021 */  addu  $a2, $v0, $zero
/* 00D2F8 8000C6F8 0C000FA2 */  jal   LoadFile
/* 00D2FC 8000C6FC AE260004 */   sw    $a2, 4($s1)

/* 00D300 8000C700 A6320008 */  sh    $s2, 8($s1)
/* 00D304 8000C704 A620000A */  sh    $zero, 0xa($s1)

.L8000C708:
/* 00D308 8000C708 3C128004 */  lui   $s2, %hi(var_8003FDB4) # $s2, 0x8004
/* 00D30C 8000C70C 8E52FDB4 */  lw    $s2, %lo(var_8003FDB4)($s2)
/* 00D310 8000C710 9622000A */  lhu   $v0, 0xa($s1)
/* 00D314 8000C714 8E230004 */  lw    $v1, 4($s1)
/* 00D318 8000C718 00008021 */  addu  $s0, $zero, $zero
/* 00D31C 8000C71C 24420001 */  addiu $v0, $v0, 1
/* 00D320 8000C720 A622000A */  sh    $v0, 0xa($s1)
/* 00D324 8000C724 1240000B */  beqz  $s2, .L8000C754
/* 00D328 8000C728 AE830020 */   sw    $v1, 0x20($s4)


/* 00D32C 8000C72C 3263FFFF */  andi  $v1, $s3, 0xffff

.L8000C730:
/* 00D330 8000C730 96420008 */  lhu   $v0, 8($s2)
/* 00D334 8000C734 10430005 */  beq   $v0, $v1, .L8000C74C
/* 00D338 8000C738 00000000 */   nop   

/* 00D33C 8000C73C 02408021 */  addu  $s0, $s2, $zero
/* 00D340 8000C740 8E520000 */  lw    $s2, ($s2)
/* 00D344 8000C744 1640FFFA */  bnez  $s2, .L8000C730
/* 00D348 8000C748 00000000 */   nop   

.L8000C74C:
/* 00D34C 8000C74C 16400026 */  bnez  $s2, .L8000C7E8
/* 00D350 8000C750 02802021 */   addu  $a0, $s4, $zero

.L8000C754:
/* 00D354 8000C754 0C000226 */  jal   aki_malloc
/* 00D358 8000C758 2404000C */   li    $a0, 12

/* 00D35C 8000C75C 16000005 */  bnez  $s0, .L8000C774
/* 00D360 8000C760 00409021 */   addu  $s2, $v0, $zero

/* 00D364 8000C764 3C018004 */  lui   $at, %hi(var_8003FDB4) # $at, 0x8004
/* 00D368 8000C768 AC32FDB4 */  sw    $s2, %lo(var_8003FDB4)($at)
/* 00D36C 8000C76C 080031DF */  j     .L8000C77C
/* 00D370 8000C770 27A40010 */   addiu $a0, $sp, 0x10

.L8000C774:
/* 00D374 8000C774 AE120000 */  sw    $s2, ($s0)
/* 00D378 8000C778 27A40010 */  addiu $a0, $sp, 0x10

# locate file 2
.L8000C77C:
/* 00D37C 8000C77C 3270FFFF */  andi  $s0, $s3, 0xffff
/* 00D380 8000C780 02002821 */  addu  $a1, $s0, $zero
/* 00D384 8000C784 0C000F71 */  jal   GetFileLoc
/* 00D388 8000C788 AE400000 */   sw    $zero, ($s2)

/* 00D38C 8000C78C 8FA40018 */  lw    $a0, 0x18($sp)
/* 00D390 8000C790 0C000226 */  jal   aki_malloc
/* 00D394 8000C794 00000000 */   nop   

# load file 2
/* 00D398 8000C798 27A40020 */  addiu $a0, $sp, 0x20
/* 00D39C 8000C79C 02002821 */  addu  $a1, $s0, $zero
/* 00D3A0 8000C7A0 00403021 */  addu  $a2, $v0, $zero
/* 00D3A4 8000C7A4 0C000FA2 */  jal   LoadFile
/* 00D3A8 8000C7A8 AE460004 */   sw    $a2, 4($s2)

# check for monochrome mode
/* 00D3AC 8000C7AC 3C038004 */  lui   $v1, %hi(var_8003FDB0) # $v1, 0x8004
/* 00D3B0 8000C7B0 9463FDB0 */  lhu   $v1, %lo(var_8003FDB0)($v1)
/* 00D3B4 8000C7B4 24020001 */  li    $v0, 1
/* 00D3B8 8000C7B8 54620009 */  bnel  $v1, $v0, .L8000C7E0
/* 00D3BC 8000C7BC A6530008 */   sh    $s3, 8($s2)

/* 00D3C0 8000C7C0 8FA50018 */  lw    $a1, 0x18($sp)
/* 00D3C4 8000C7C4 8E440004 */  lw    $a0, 4($s2)
/* 00D3C8 8000C7C8 000517C2 */  srl   $v0, $a1, 0x1f
/* 00D3CC 8000C7CC 00A22821 */  addu  $a1, $a1, $v0
/* 00D3D0 8000C7D0 00052843 */  sra   $a1, $a1, 1
/* 00D3D4 8000C7D4 0C0030A5 */  jal   func_8000C294
/* 00D3D8 8000C7D8 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00D3DC 8000C7DC A6530008 */  sh    $s3, 8($s2)

.L8000C7E0:
/* 00D3E0 8000C7E0 A640000A */  sh    $zero, 0xa($s2)
/* 00D3E4 8000C7E4 02802021 */  addu  $a0, $s4, $zero

.L8000C7E8:
/* 00D3E8 8000C7E8 9642000A */  lhu   $v0, 0xa($s2)
/* 00D3EC 8000C7EC 8E430004 */  lw    $v1, 4($s2)
/* 00D3F0 8000C7F0 00002821 */  addu  $a1, $zero, $zero
/* 00D3F4 8000C7F4 24420001 */  addiu $v0, $v0, 1
/* 00D3F8 8000C7F8 A642000A */  sh    $v0, 0xa($s2)
/* 00D3FC 8000C7FC 0C00399D */  jal   func_8000E674
/* 00D400 8000C800 AC830024 */   sw    $v1, 0x24($a0)

/* 00D404 8000C804 8FBF0044 */  lw    $ra, 0x44($sp)
/* 00D408 8000C808 8FB40040 */  lw    $s4, 0x40($sp)
/* 00D40C 8000C80C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 00D410 8000C810 8FB20038 */  lw    $s2, 0x38($sp)
/* 00D414 8000C814 8FB10034 */  lw    $s1, 0x34($sp)
/* 00D418 8000C818 8FB00030 */  lw    $s0, 0x30($sp)
/* 00D41C 8000C81C 03E00008 */  jr    $ra
/* 00D420 8000C820 27BD0048 */   addiu $sp, $sp, 0x48
