glabel func3_800EA0BC
/* 0E476C 800EA0BC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0E4770 800EA0C0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0E4774 800EA0C4 AFB40038 */  sw    $s4, 0x38($sp)
/* 0E4778 800EA0C8 AFB30034 */  sw    $s3, 0x34($sp)
/* 0E477C 800EA0CC AFB20030 */  sw    $s2, 0x30($sp)
/* 0E4780 800EA0D0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0E4784 800EA0D4 AFB00028 */  sw    $s0, 0x28($sp)
/* 0E4788 800EA0D8 8C910000 */  lw    $s1, ($a0)
/* 0E478C 800EA0DC 8C920008 */  lw    $s2, 8($a0)
/* 0E4790 800EA0E0 8E220014 */  lw    $v0, 0x14($s1)
/* 0E4794 800EA0E4 44855000 */  mtc1  $a1, $f10
/* 0E4798 800EA0E8 8C420000 */  lw    $v0, ($v0)
/* 0E479C 800EA0EC 8C850004 */  lw    $a1, 4($a0)
/* 0E47A0 800EA0F0 8C93000C */  lw    $s3, 0xc($a0)
/* 0E47A4 800EA0F4 30420080 */  andi  $v0, $v0, 0x80
/* 0E47A8 800EA0F8 10400006 */  beqz  $v0, .L3_800EA114
/* 0E47AC 800EA0FC 24140001 */   li    $s4, 1

/* 0E47B0 800EA100 8E420014 */  lw    $v0, 0x14($s2)
/* 0E47B4 800EA104 8C420000 */  lw    $v0, ($v0)
/* 0E47B8 800EA108 30420080 */  andi  $v0, $v0, 0x80
/* 0E47BC 800EA10C 14400090 */  bnez  $v0, .L3_800EA350
/* 0E47C0 800EA110 02801021 */   addu  $v0, $s4, $zero

.L3_800EA114:
/* 0E47C4 800EA114 0000A021 */  addu  $s4, $zero, $zero
/* 0E47C8 800EA118 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0E47CC 800EA11C 44810000 */  mtc1  $at, $f0
/* 0E47D0 800EA120 3C01BE4C */  li    $at, 0xBE4C0000 # -0.199219
/* 0E47D4 800EA124 3421CCCD */  ori   $at, (0xBE4CCCCD & 0xFFFF) # ori $at, $at, 0xcccd
/* 0E47D8 800EA128 44811000 */  mtc1  $at, $f2
/* 0E47DC 800EA12C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E47E0 800EA130 44812000 */  mtc1  $at, $f4
/* 0E47E4 800EA134 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 0E47E8 800EA138 44813000 */  mtc1  $at, $f6
/* 0E47EC 800EA13C 4600520D */  trunc.w.s $f8, $f10
/* 0E47F0 800EA140 44034000 */  mfc1  $v1, $f8
/* 0E47F4 800EA144 240200F0 */  li    $v0, 240
/* 0E47F8 800EA148 A7A20010 */  sh    $v0, 0x10($sp)
/* 0E47FC 800EA14C 240200FF */  li    $v0, 255
/* 0E4800 800EA150 A3A20024 */  sb    $v0, 0x24($sp)
/* 0E4804 800EA154 A3A20025 */  sb    $v0, 0x25($sp)
/* 0E4808 800EA158 A3A20026 */  sb    $v0, 0x26($sp)
/* 0E480C 800EA15C A3A20027 */  sb    $v0, 0x27($sp)
/* 0E4810 800EA160 00061400 */  sll   $v0, $a2, 0x10
/* 0E4814 800EA164 00028403 */  sra   $s0, $v0, 0x10
/* 0E4818 800EA168 2A020006 */  slti  $v0, $s0, 6
/* 0E481C 800EA16C A7A30012 */  sh    $v1, 0x12($sp)
/* 0E4820 800EA170 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0E4824 800EA174 E7A20018 */  swc1  $f2, 0x18($sp)
/* 0E4828 800EA178 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 0E482C 800EA17C 1040001F */  beqz  $v0, .L3_800EA1FC
/* 0E4830 800EA180 E7A60020 */   swc1  $f6, 0x20($sp)

/* 0E4834 800EA184 02202021 */  addu  $a0, $s1, $zero
/* 0E4838 800EA188 3C018015 */  lui   $at, %hi(D_80154828)
/* 0E483C 800EA18C D4224828 */  ldc1  $f2, %lo(D_80154828)($at)
/* 0E4840 800EA190 27A60010 */  addiu $a2, $sp, 0x10
/* 0E4844 800EA194 44900000 */  mtc1  $s0, $f0
/* 0E4848 800EA198 00000000 */  nop   
/* 0E484C 800EA19C 46800021 */  cvt.d.w $f0, $f0
/* 0E4850 800EA1A0 46201081 */  sub.d $f2, $f2, $f0
/* 0E4854 800EA1A4 00101140 */  sll   $v0, $s0, 5
/* 0E4858 800EA1A8 2442005F */  addiu $v0, $v0, 0x5f
/* 0E485C 800EA1AC A3A20027 */  sb    $v0, 0x27($sp)
/* 0E4860 800EA1B0 462010A0 */  cvt.s.d $f2, $f2
/* 0E4864 800EA1B4 0C03A551 */  jal   func3_800E9544
/* 0E4868 800EA1B8 E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E486C 800EA1BC 02402021 */  addu  $a0, $s2, $zero
/* 0E4870 800EA1C0 02602821 */  addu  $a1, $s3, $zero
/* 0E4874 800EA1C4 27A60010 */  addiu $a2, $sp, 0x10
/* 0E4878 800EA1C8 A3A00025 */  sb    $zero, 0x25($sp)
/* 0E487C 800EA1CC 0C03A551 */  jal   func3_800E9544
/* 0E4880 800EA1D0 A3A00026 */   sb    $zero, 0x26($sp)

/* 0E4884 800EA1D4 8E230014 */  lw    $v1, 0x14($s1)
/* 0E4888 800EA1D8 8C620000 */  lw    $v0, ($v1)
/* 0E488C 800EA1DC 34420080 */  ori   $v0, $v0, 0x80
/* 0E4890 800EA1E0 AC620000 */  sw    $v0, ($v1)
/* 0E4894 800EA1E4 8E440014 */  lw    $a0, 0x14($s2)
/* 0E4898 800EA1E8 8C820000 */  lw    $v0, ($a0)
/* 0E489C 800EA1EC 2403FF7F */  li    $v1, -129
/* 0E48A0 800EA1F0 00431024 */  and   $v0, $v0, $v1
/* 0E48A4 800EA1F4 0803A8D3 */  j     .L3_800EA34C
/* 0E48A8 800EA1F8 AC820000 */   sw    $v0, ($a0)

.L3_800EA1FC:
/* 0E48AC 800EA1FC 2A020009 */  slti  $v0, $s0, 9
/* 0E48B0 800EA200 1040000B */  beqz  $v0, .L3_800EA230
/* 0E48B4 800EA204 02202021 */   addu  $a0, $s1, $zero

/* 0E48B8 800EA208 0C03A551 */  jal   func3_800E9544
/* 0E48BC 800EA20C 27A60010 */   addiu $a2, $sp, 0x10

/* 0E48C0 800EA210 02402021 */  addu  $a0, $s2, $zero
/* 0E48C4 800EA214 02602821 */  addu  $a1, $s3, $zero
/* 0E48C8 800EA218 27A60010 */  addiu $a2, $sp, 0x10
/* 0E48CC 800EA21C A3A00025 */  sb    $zero, 0x25($sp)
/* 0E48D0 800EA220 0C03A551 */  jal   func3_800E9544
/* 0E48D4 800EA224 A3A00026 */   sb    $zero, 0x26($sp)

/* 0E48D8 800EA228 0803A8CA */  j     .L3_800EA328
/* 0E48DC 800EA22C 00000000 */   nop   

.L3_800EA230:
/* 0E48E0 800EA230 2A020012 */  slti  $v0, $s0, 0x12
/* 0E48E4 800EA234 10400011 */  beqz  $v0, .L3_800EA27C
/* 0E48E8 800EA238 2A020018 */   slti  $v0, $s0, 0x18

/* 0E48EC 800EA23C 0C03A551 */  jal   func3_800E9544
/* 0E48F0 800EA240 27A60010 */   addiu $a2, $sp, 0x10

/* 0E48F4 800EA244 02402021 */  addu  $a0, $s2, $zero
/* 0E48F8 800EA248 02602821 */  addu  $a1, $s3, $zero
/* 0E48FC 800EA24C 27A60010 */  addiu $a2, $sp, 0x10
/* 0E4900 800EA250 2603FFF7 */  addiu $v1, $s0, -9
/* 0E4904 800EA254 00031100 */  sll   $v0, $v1, 4
/* 0E4908 800EA258 00431023 */  subu  $v0, $v0, $v1
/* 0E490C 800EA25C 00021040 */  sll   $v0, $v0, 1
/* 0E4910 800EA260 00021027 */  nor   $v0, $zero, $v0
/* 0E4914 800EA264 A3A00025 */  sb    $zero, 0x25($sp)
/* 0E4918 800EA268 A3A00026 */  sb    $zero, 0x26($sp)
/* 0E491C 800EA26C 0C03A551 */  jal   func3_800E9544
/* 0E4920 800EA270 A3A20027 */   sb    $v0, 0x27($sp)

/* 0E4924 800EA274 0803A8CA */  j     .L3_800EA328
/* 0E4928 800EA278 00000000 */   nop   

.L3_800EA27C:
/* 0E492C 800EA27C 10400003 */  beqz  $v0, .L3_800EA28C
/* 0E4930 800EA280 02202021 */   addu  $a0, $s1, $zero

/* 0E4934 800EA284 0803A8AE */  j     .L3_800EA2B8
/* 0E4938 800EA288 27A60010 */   addiu $a2, $sp, 0x10

.L3_800EA28C:
/* 0E493C 800EA28C 2A02001B */  slti  $v0, $s0, 0x1b
/* 0E4940 800EA290 10400014 */  beqz  $v0, .L3_800EA2E4
/* 0E4944 800EA294 27A60010 */   addiu $a2, $sp, 0x10

/* 0E4948 800EA298 2602FFE8 */  addiu $v0, $s0, -0x18
/* 0E494C 800EA29C 00021840 */  sll   $v1, $v0, 1
/* 0E4950 800EA2A0 00621821 */  addu  $v1, $v1, $v0
/* 0E4954 800EA2A4 00031100 */  sll   $v0, $v1, 4
/* 0E4958 800EA2A8 00431023 */  subu  $v0, $v0, $v1
/* 0E495C 800EA2AC 00021040 */  sll   $v0, $v0, 1
/* 0E4960 800EA2B0 00021027 */  nor   $v0, $zero, $v0
/* 0E4964 800EA2B4 A3A20027 */  sb    $v0, 0x27($sp)

.L3_800EA2B8:
/* 0E4968 800EA2B8 0C03A551 */  jal   func3_800E9544
/* 0E496C 800EA2BC 00000000 */   nop   

/* 0E4970 800EA2C0 02402021 */  addu  $a0, $s2, $zero
/* 0E4974 800EA2C4 02602821 */  addu  $a1, $s3, $zero
/* 0E4978 800EA2C8 27A60010 */  addiu $a2, $sp, 0x10
/* 0E497C 800EA2CC A3A00025 */  sb    $zero, 0x25($sp)
/* 0E4980 800EA2D0 A3A00026 */  sb    $zero, 0x26($sp)
/* 0E4984 800EA2D4 0C03A551 */  jal   func3_800E9544
/* 0E4988 800EA2D8 A3A00027 */   sb    $zero, 0x27($sp)

/* 0E498C 800EA2DC 0803A8C3 */  j     .L3_800EA30C
/* 0E4990 800EA2E0 00000000 */   nop   

.L3_800EA2E4:
/* 0E4994 800EA2E4 02202021 */  addu  $a0, $s1, $zero
/* 0E4998 800EA2E8 0C03A551 */  jal   func3_800E9544
/* 0E499C 800EA2EC A3A00027 */   sb    $zero, 0x27($sp)

/* 0E49A0 800EA2F0 02402021 */  addu  $a0, $s2, $zero
/* 0E49A4 800EA2F4 02602821 */  addu  $a1, $s3, $zero
/* 0E49A8 800EA2F8 27A60010 */  addiu $a2, $sp, 0x10
/* 0E49AC 800EA2FC A3A00025 */  sb    $zero, 0x25($sp)
/* 0E49B0 800EA300 0C03A551 */  jal   func3_800E9544
/* 0E49B4 800EA304 A3A00026 */   sb    $zero, 0x26($sp)

/* 0E49B8 800EA308 24140001 */  li    $s4, 1

.L3_800EA30C:
/* 0E49BC 800EA30C 12800006 */  beqz  $s4, .L3_800EA328
/* 0E49C0 800EA310 00000000 */   nop   

/* 0E49C4 800EA314 8E230014 */  lw    $v1, 0x14($s1)
/* 0E49C8 800EA318 8C620000 */  lw    $v0, ($v1)
/* 0E49CC 800EA31C 34420080 */  ori   $v0, $v0, 0x80
/* 0E49D0 800EA320 0803A8CF */  j     .L3_800EA33C
/* 0E49D4 800EA324 AC620000 */   sw    $v0, ($v1)

.L3_800EA328:
/* 0E49D8 800EA328 8E240014 */  lw    $a0, 0x14($s1)
/* 0E49DC 800EA32C 8C820000 */  lw    $v0, ($a0)
/* 0E49E0 800EA330 2403FF7F */  li    $v1, -129
/* 0E49E4 800EA334 00431024 */  and   $v0, $v0, $v1
/* 0E49E8 800EA338 AC820000 */  sw    $v0, ($a0)

.L3_800EA33C:
/* 0E49EC 800EA33C 8E430014 */  lw    $v1, 0x14($s2)
/* 0E49F0 800EA340 8C620000 */  lw    $v0, ($v1)
/* 0E49F4 800EA344 34420080 */  ori   $v0, $v0, 0x80
/* 0E49F8 800EA348 AC620000 */  sw    $v0, ($v1)

.L3_800EA34C:
/* 0E49FC 800EA34C 02801021 */  addu  $v0, $s4, $zero

.L3_800EA350:
/* 0E4A00 800EA350 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0E4A04 800EA354 8FB40038 */  lw    $s4, 0x38($sp)
/* 0E4A08 800EA358 8FB30034 */  lw    $s3, 0x34($sp)
/* 0E4A0C 800EA35C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0E4A10 800EA360 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0E4A14 800EA364 8FB00028 */  lw    $s0, 0x28($sp)
/* 0E4A18 800EA368 03E00008 */  jr    $ra
/* 0E4A1C 800EA36C 27BD0040 */   addiu $sp, $sp, 0x40
