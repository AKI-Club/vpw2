# Params:
# $a0 - ?
# $a1 - file ID 1
# $a2 - file ID 2

glabel func_8000C4F0
/* 00D0F0 8000C4F0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 00D0F4 8000C4F4 AFB00040 */  sw    $s0, 0x40($sp)
/* 00D0F8 8000C4F8 00808021 */  addu  $s0, $a0, $zero # store $a0 in $s0
/* 00D0FC 8000C4FC AFB20048 */  sw    $s2, 0x48($sp)
/* 00D100 8000C500 00A09021 */  addu  $s2, $a1, $zero # store file ID 1 in $s2
/* 00D104 8000C504 AFB10044 */  sw    $s1, 0x44($sp)
/* 00D108 8000C508 00C08821 */  addu  $s1, $a2, $zero # store file ID 2 in $s1

# check if we need to process file 1
/* 00D10C 8000C50C 00052C00 */  sll   $a1, $a1, 0x10
/* 00D110 8000C510 10A0001D */  beqz  $a1, .L8000C588
/* 00D114 8000C514 AFBF004C */   sw    $ra, 0x4c($sp)

# locate file 1
/* 00D118 8000C518 27A40010 */  addiu $a0, $sp, 0x10
/* 00D11C 8000C51C 0C000F71 */  jal   GetFileLoc
/* 00D120 8000C520 3245FFFF */   andi  $a1, $s2, 0xffff

/* 00D124 8000C524 8E040020 */  lw    $a0, 0x20($s0)
/* 00D128 8000C528 10800009 */  beqz  $a0, .L8000C550
/* 00D12C 8000C52C 00000000 */   nop   

# check if we need to free/malloc
/* 00D130 8000C530 8FA30018 */  lw    $v1, 0x18($sp)
/* 00D134 8000C534 8E02000C */  lw    $v0, 0xc($s0)
/* 00D138 8000C538 0043102B */  sltu  $v0, $v0, $v1
/* 00D13C 8000C53C 1040000E */  beqz  $v0, .L8000C578 # skip free/malloc
/* 00D140 8000C540 00000000 */   nop   

/* 00D144 8000C544 0C000280 */  jal   aki_free
/* 00D148 8000C548 00000000 */   nop   

/* 00D14C 8000C54C AE000020 */  sw    $zero, 0x20($s0)

.L8000C550:
/* 00D150 8000C550 8FA20018 */  lw    $v0, 0x18($sp)
/* 00D154 8000C554 28420808 */  slti  $v0, $v0, 0x808
/* 00D158 8000C558 10400002 */  beqz  $v0, .L8000C564
/* 00D15C 8000C55C 24020808 */   li    $v0, 2056

/* 00D160 8000C560 AFA20018 */  sw    $v0, 0x18($sp)

.L8000C564:
/* 00D164 8000C564 0C000226 */  jal   aki_malloc
/* 00D168 8000C568 8FA40018 */   lw    $a0, 0x18($sp)

/* 00D16C 8000C56C AE020020 */  sw    $v0, 0x20($s0)
/* 00D170 8000C570 8FA20018 */  lw    $v0, 0x18($sp)
/* 00D174 8000C574 AE02000C */  sw    $v0, 0xc($s0)

# load file 1
.L8000C578:
/* 00D178 8000C578 8E060020 */  lw    $a2, 0x20($s0)
/* 00D17C 8000C57C 27A40030 */  addiu $a0, $sp, 0x30
/* 00D180 8000C580 0C000FA2 */  jal   LoadFile
/* 00D184 8000C584 3245FFFF */   andi  $a1, $s2, 0xffff

# check if we need to process file 2
.L8000C588:
/* 00D188 8000C588 00111400 */  sll   $v0, $s1, 0x10
/* 00D18C 8000C58C 10400025 */  beqz  $v0, .L8000C624
/* 00D190 8000C590 27A40020 */   addiu $a0, $sp, 0x20

# locate file 2
/* 00D194 8000C594 0C000F71 */  jal   GetFileLoc
/* 00D198 8000C598 3225FFFF */   andi  $a1, $s1, 0xffff

/* 00D19C 8000C59C 8E040024 */  lw    $a0, 0x24($s0)
/* 00D1A0 8000C5A0 10800008 */  beqz  $a0, .L8000C5C4
/* 00D1A4 8000C5A4 00000000 */   nop   

# check if we need to free/malloc
/* 00D1A8 8000C5A8 8FA20028 */  lw    $v0, 0x28($sp)
/* 00D1AC 8000C5AC 28420021 */  slti  $v0, $v0, 0x21
/* 00D1B0 8000C5B0 1440000C */  bnez  $v0, .L8000C5E4 # skip free/malloc
/* 00D1B4 8000C5B4 00000000 */   nop   

/* 00D1B8 8000C5B8 0C000280 */  jal   aki_free
/* 00D1BC 8000C5BC 00000000 */   nop   

/* 00D1C0 8000C5C0 AE000024 */  sw    $zero, 0x24($s0)

.L8000C5C4:
/* 00D1C4 8000C5C4 8FA20028 */  lw    $v0, 0x28($sp)
/* 00D1C8 8000C5C8 28420020 */  slti  $v0, $v0, 0x20
/* 00D1CC 8000C5CC 10400002 */  beqz  $v0, .L8000C5D8
/* 00D1D0 8000C5D0 24020020 */   li    $v0, 32

/* 00D1D4 8000C5D4 AFA20028 */  sw    $v0, 0x28($sp)

.L8000C5D8:
/* 00D1D8 8000C5D8 0C000226 */  jal   aki_malloc
/* 00D1DC 8000C5DC 8FA40028 */   lw    $a0, 0x28($sp)

/* 00D1E0 8000C5E0 AE020024 */  sw    $v0, 0x24($s0)

# load file 2
.L8000C5E4:
/* 00D1E4 8000C5E4 8E060024 */  lw    $a2, 0x24($s0)
/* 00D1E8 8000C5E8 27A40030 */  addiu $a0, $sp, 0x30
/* 00D1EC 8000C5EC 0C000FA2 */  jal   LoadFile
/* 00D1F0 8000C5F0 3225FFFF */   andi  $a1, $s1, 0xffff


/* 00D1F4 8000C5F4 3C038004 */  lui   $v1, %hi(var_8003FDB0) # $v1, 0x8004
/* 00D1F8 8000C5F8 9463FDB0 */  lhu   $v1, %lo(var_8003FDB0)($v1)
/* 00D1FC 8000C5FC 24020001 */  li    $v0, 1
/* 00D200 8000C600 14620009 */  bne   $v1, $v0, .L8000C628
/* 00D204 8000C604 02002021 */   addu  $a0, $s0, $zero

/* 00D208 8000C608 8FA50028 */  lw    $a1, 0x28($sp)
/* 00D20C 8000C60C 8E040024 */  lw    $a0, 0x24($s0)
/* 00D210 8000C610 000517C2 */  srl   $v0, $a1, 0x1f
/* 00D214 8000C614 00A22821 */  addu  $a1, $a1, $v0
/* 00D218 8000C618 00052843 */  sra   $a1, $a1, 1
/* 00D21C 8000C61C 0C0030A5 */  jal   func_8000C294
/* 00D220 8000C620 30A5FFFF */   andi  $a1, $a1, 0xffff

.L8000C624:
/* 00D224 8000C624 02002021 */  addu  $a0, $s0, $zero

.L8000C628:
/* 00D228 8000C628 0C00399D */  jal   func_8000E674
/* 00D22C 8000C62C 00002821 */   addu  $a1, $zero, $zero

/* 00D230 8000C630 8FBF004C */  lw    $ra, 0x4c($sp)
/* 00D234 8000C634 8FB20048 */  lw    $s2, 0x48($sp)
/* 00D238 8000C638 8FB10044 */  lw    $s1, 0x44($sp)
/* 00D23C 8000C63C 8FB00040 */  lw    $s0, 0x40($sp)
/* 00D240 8000C640 03E00008 */  jr    $ra
/* 00D244 8000C644 27BD0050 */   addiu $sp, $sp, 0x50
