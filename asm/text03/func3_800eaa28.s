# related to setting up game UI

glabel func3_800EAA28
/* 0E50D8 800EAA28 27BDFEB0 */  addiu $sp, $sp, -0x150
/* 0E50DC 800EAA2C F7B40120 */  sdc1  $f20, 0x120($sp)
/* 0E50E0 800EAA30 3C018015 */  lui   $at, %hi(D_80154838)
/* 0E50E4 800EAA34 D4344838 */  ldc1  $f20, %lo(D_80154838)($at)
/* 0E50E8 800EAA38 F7B60128 */  sdc1  $f22, 0x128($sp)
/* 0E50EC 800EAA3C 3C01C53B */  li    $at, 0xC53B0000 # -2992.000000
/* 0E50F0 800EAA40 34218000 */  ori   $at, (0xC53B8000 & 0xFFFF) # ori $at, $at, 0x8000
/* 0E50F4 800EAA44 4481B000 */  mtc1  $at, $f22

# get monochrome mode value
/* 0E50F8 800EAA48 3C0B8004 */  lui   $t3, %hi(var_8003FDB0) # $t3, 0x8004
/* 0E50FC 800EAA4C 956BFDB0 */  lhu   $t3, %lo(var_8003FDB0)($t3)
/* 0E5100 800EAA50 3C02800A */  lui   $v0, %hi(bssMain_800A3140) # $v0, 0x800a
/* 0E5104 800EAA54 8C423140 */  lw    $v0, %lo(bssMain_800A3140)($v0)
/* 0E5108 800EAA58 AFB40108 */  sw    $s4, 0x108($sp)
/* 0E510C 800EAA5C 0000A021 */  addu  $s4, $zero, $zero
/* 0E5110 800EAA60 AFBF011C */  sw    $ra, 0x11c($sp)
/* 0E5114 800EAA64 AFBE0118 */  sw    $fp, 0x118($sp)
/* 0E5118 800EAA68 AFB70114 */  sw    $s7, 0x114($sp)
/* 0E511C 800EAA6C AFB60110 */  sw    $s6, 0x110($sp)
/* 0E5120 800EAA70 AFB5010C */  sw    $s5, 0x10c($sp)
/* 0E5124 800EAA74 AFB30104 */  sw    $s3, 0x104($sp)
/* 0E5128 800EAA78 AFB20100 */  sw    $s2, 0x100($sp)
/* 0E512C 800EAA7C AFB100FC */  sw    $s1, 0xfc($sp)
/* 0E5130 800EAA80 AFB000F8 */  sw    $s0, 0xf8($sp)
/* 0E5134 800EAA84 F7BE0148 */  sdc1  $f30, 0x148($sp)
/* 0E5138 800EAA88 F7BC0140 */  sdc1  $f28, 0x140($sp)
/* 0E513C 800EAA8C F7BA0138 */  sdc1  $f26, 0x138($sp)
/* 0E5140 800EAA90 F7B80130 */  sdc1  $f24, 0x130($sp)

# force color mode?
/* 0E5144 800EAA94 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 0E5148 800EAA98 A420FDB0 */  sh    $zero, %lo(var_8003FDB0)($at)

/* 0E514C 800EAA9C A7AB00CE */  sh    $t3, 0xce($sp)
/* 0E5150 800EAAA0 3C038015 */  lui   $v1, %hi(tbl_80152028)
/* 0E5154 800EAAA4 00621821 */  addu  $v1, $v1, $v0
/* 0E5158 800EAAA8 90632028 */  lbu   $v1, %lo(tbl_80152028)($v1)
/* 0E515C 800EAAAC 3C108016 */  lui   $s0, %hi(bss3_80159CA0) # $s0, 0x8016
/* 0E5160 800EAAB0 26109CA0 */  addiu $s0, %lo(bss3_80159CA0) # addiu $s0, $s0, -0x6360
/* 0E5164 800EAAB4 24020001 */  li    $v0, 1
/* 0E5168 800EAAB8 3C018017 */  lui   $at, %hi(bss3_8016C010) # $at, 0x8017
/* 0E516C 800EAABC A420C010 */  sh    $zero, %lo(bss3_8016C010)($at)
/* 0E5170 800EAAC0 3C018017 */  lui   $at, %hi(bss3_8016C014) # $at, 0x8017
/* 0E5174 800EAAC4 A422C014 */  sh    $v0, %lo(bss3_8016C014)($at)
/* 0E5178 800EAAC8 3C018017 */  lui   $at, %hi(bss3_8016C018) # $at, 0x8017
/* 0E517C 800EAACC A420C018 */  sh    $zero, %lo(bss3_8016C018)($at)
/* 0E5180 800EAAD0 3C018016 */  lui   $at, %hi(bss3_8015A444) # $at, 0x8016
/* 0E5184 800EAAD4 A420A444 */  sh    $zero, %lo(bss3_8015A444)($at)
/* 0E5188 800EAAD8 3C018016 */  lui   $at, %hi(bss3_8015AFE2) # $at, 0x8016
/* 0E518C 800EAADC A420AFE2 */  sh    $zero, %lo(bss3_8015AFE2)($at)
/* 0E5190 800EAAE0 3C018016 */  lui   $at, %hi(bss3_8015D788) # $at, 0x8016
/* 0E5194 800EAAE4 A423D788 */  sh    $v1, %lo(bss3_8015D788)($at)

.L3_800EAAE8:
/* 0E5198 800EAAE8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E519C 800EAAEC 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E51A0 800EAAF0 02002021 */  addu  $a0, $s0, $zero
/* 0E51A4 800EAAF4 24050005 */  li    $a1, 5
/* 0E51A8 800EAAF8 0C000600 */  jal   func_80001800
/* 0E51AC 800EAAFC 00C03821 */   addu  $a3, $a2, $zero

/* 0E51B0 800EAB00 02002021 */  addu  $a0, $s0, $zero
/* 0E51B4 800EAB04 00002821 */  addu  $a1, $zero, $zero
/* 0E51B8 800EAB08 4620A120 */  cvt.s.d $f4, $f20
/* 0E51BC 800EAB0C 44062000 */  mfc1  $a2, $f4
/* 0E51C0 800EAB10 00000000 */  nop   
/* 0E51C4 800EAB14 0C003E34 */  jal   func_8000F8D0
/* 0E51C8 800EAB18 00003821 */   addu  $a3, $zero, $zero

/* 0E51CC 800EAB1C 0C00095A */  jal   func_80002568
/* 0E51D0 800EAB20 02002021 */   addu  $a0, $s0, $zero

/* 0E51D4 800EAB24 8E030014 */  lw    $v1, 0x14($s0)
/* 0E51D8 800EAB28 8C620000 */  lw    $v0, ($v1)
/* 0E51DC 800EAB2C 34420080 */  ori   $v0, $v0, 0x80
/* 0E51E0 800EAB30 AC620000 */  sw    $v0, ($v1)
/* 0E51E4 800EAB34 8E020014 */  lw    $v0, 0x14($s0)
/* 0E51E8 800EAB38 26940001 */  addiu $s4, $s4, 1
/* 0E51EC 800EAB3C E4560024 */  swc1  $f22, 0x24($v0)
/* 0E51F0 800EAB40 2E820005 */  sltiu $v0, $s4, 5
/* 0E51F4 800EAB44 1440FFE8 */  bnez  $v0, .L3_800EAAE8
/* 0E51F8 800EAB48 261000DC */   addiu $s0, $s0, 0xdc

# handle timer
/* 0E51FC 800EAB4C 0000A021 */  addu  $s4, $zero, $zero
/* 0E5200 800EAB50 3C110360 */  lui   $s1, 0x360 # file ID of first timer number
/* 0E5204 800EAB54 3C108016 */  lui   $s0, %hi(bss3_8015A0F0) # $s0, 0x8016
/* 0E5208 800EAB58 2610A0F0 */  addiu $s0, %lo(bss3_8015A0F0) # addiu $s0, $s0, -0x5f10

.L3_800EAB5C:
/* 0E520C 800EAB5C 02002021 */  addu  $a0, $s0, $zero
/* 0E5210 800EAB60 00112C03 */  sra   $a1, $s1, 0x10
/* 0E5214 800EAB64 0C003DF0 */  jal   func_8000F7C0
/* 0E5218 800EAB68 2406035F */   li    $a2, 0x35F # file ID 0x35F (timer palette)

/* 0E521C 800EAB6C 3C020001 */  lui   $v0, 1
/* 0E5220 800EAB70 02228821 */  addu  $s1, $s1, $v0
/* 0E5224 800EAB74 26940001 */  addiu $s4, $s4, 1
/* 0E5228 800EAB78 2E82000B */  sltiu $v0, $s4, 0xB # 0 to 9 and the colon
/* 0E522C 800EAB7C 1440FFF7 */  bnez  $v0, .L3_800EAB5C
/* 0E5230 800EAB80 26100008 */   addiu $s0, $s0, 8


/* 0E5234 800EAB84 3C028016 */  lui   $v0, %hi(bss3_8015D788) # $v0, 0x8016
/* 0E5238 800EAB88 9442D788 */  lhu   $v0, %lo(bss3_8015D788)($v0)
/* 0E523C 800EAB8C 2C420003 */  sltiu $v0, $v0, 3
/* 0E5240 800EAB90 10400009 */  beqz  $v0, .L3_800EABB8
/* 0E5244 800EAB94 00000000 */   nop   

# referee display
/* 0E5248 800EAB98 3C02800A */  lui   $v0, %hi(bssMain_800A4053) # $v0, 0x800a
/* 0E524C 800EAB9C 90424053 */  lbu   $v0, %lo(bssMain_800A4053)($v0)
/* 0E5250 800EABA0 10400005 */  beqz  $v0, .L3_800EABB8
/* 0E5254 800EABA4 24020001 */   li    $v0, 1


/* 0E5258 800EABA8 3C018017 */  lui   $at, %hi(bss3_8016C016) # $at, 0x8017
/* 0E525C 800EABAC A422C016 */  sh    $v0, %lo(bss3_8016C016)($at)
/* 0E5260 800EABB0 0803AAF1 */  j     .L3_800EABC4
/* 0E5264 800EABB4 AFA00010 */   sw    $zero, 0x10($sp)


.L3_800EABB8:
/* 0E5268 800EABB8 3C018017 */  lui   $at, %hi(bss3_8016C016) # $at, 0x8017
/* 0E526C 800EABBC A420C016 */  sh    $zero, %lo(bss3_8016C016)($at)
/* 0E5270 800EABC0 AFA00010 */  sw    $zero, 0x10($sp)

.L3_800EABC4:
/* 0E5274 800EABC4 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5278 800EABC8 3C048016 */  lui   $a0, %hi(bss3_80159B10) # $a0, 0x8016
/* 0E527C 800EABCC 24849B10 */  addiu $a0, %lo(bss3_80159B10) # addiu $a0, $a0, -0x64f0
/* 0E5280 800EABD0 24050005 */  li    $a1, 5
/* 0E5284 800EABD4 2402006F */  li    $v0, 111
/* 0E5288 800EABD8 3C018016 */  lui   $at, %hi(bss3_80159C8C) # $at, 0x8016
/* 0E528C 800EABDC A0209C8C */  sb    $zero, %lo(bss3_80159C8C)($at)
/* 0E5290 800EABE0 3C018016 */  lui   $at, %hi(bss3_80159C8D) # $at, 0x8016
/* 0E5294 800EABE4 A0209C8D */  sb    $zero, %lo(bss3_80159C8D)($at)
/* 0E5298 800EABE8 3C018016 */  lui   $at, %hi(bss3_80159C8E) # $at, 0x8016
/* 0E529C 800EABEC A4209C8E */  sh    $zero, %lo(bss3_80159C8E)($at)
/* 0E52A0 800EABF0 3C018016 */  lui   $at, %hi(bss3_80159C90) # $at, 0x8016
/* 0E52A4 800EABF4 A4229C90 */  sh    $v0, %lo(bss3_80159C90)($at)
/* 0E52A8 800EABF8 3C018016 */  lui   $at, %hi(bss3_80159C92) # $at, 0x8016
/* 0E52AC 800EABFC A0209C92 */  sb    $zero, %lo(bss3_80159C92)($at)
/* 0E52B0 800EAC00 3C018016 */  lui   $at, %hi(bss3_80159C93) # $at, 0x8016
/* 0E52B4 800EAC04 A0209C93 */  sb    $zero, %lo(bss3_80159C93)($at)
/* 0E52B8 800EAC08 0C000600 */  jal   func_80001800
/* 0E52BC 800EAC0C 00C03821 */   addu  $a3, $a2, $zero

/* 0E52C0 800EAC10 3C048016 */  lui   $a0, %hi(bss3_80159B10) # $a0, 0x8016
/* 0E52C4 800EAC14 24849B10 */  addiu $a0, %lo(bss3_80159B10) # addiu $a0, $a0, -0x64f0
/* 0E52C8 800EAC18 3C064340 */  lui   $a2, 0x4340
/* 0E52CC 800EAC1C 00002821 */  addu  $a1, $zero, $zero
/* 0E52D0 800EAC20 0C003E34 */  jal   func_8000F8D0
/* 0E52D4 800EAC24 00003821 */   addu  $a3, $zero, $zero

/* 0E52D8 800EAC28 3C048016 */  lui   $a0, %hi(bss3_80159B10) # $a0, 0x8016
/* 0E52DC 800EAC2C 24849B10 */  addiu $a0, %lo(bss3_80159B10) # addiu $a0, $a0, -0x64f0
/* 0E52E0 800EAC30 0C00095A */  jal   func_80002568
/* 0E52E4 800EAC34 0000A021 */   addu  $s4, $zero, $zero

/* 0E52E8 800EAC38 3C038016 */  lui   $v1, %hi(bss3_80159B24) # $v1, 0x8016
/* 0E52EC 800EAC3C 8C639B24 */  lw    $v1, %lo(bss3_80159B24)($v1)
/* 0E52F0 800EAC40 8C620000 */  lw    $v0, ($v1)
/* 0E52F4 800EAC44 3C01C53B */  li    $at, 0xC53B0000 # -2992.000000
/* 0E52F8 800EAC48 34218000 */  ori   $at, (0xC53B8000 & 0xFFFF) # ori $at, $at, 0x8000
/* 0E52FC 800EAC4C 44810000 */  mtc1  $at, $f0
/* 0E5300 800EAC50 34420080 */  ori   $v0, $v0, 0x80
/* 0E5304 800EAC54 AC620000 */  sw    $v0, ($v1)
/* 0E5308 800EAC58 3C028016 */  lui   $v0, %hi(bss3_80159B24) # $v0, 0x8016
/* 0E530C 800EAC5C 8C429B24 */  lw    $v0, %lo(bss3_80159B24)($v0)
/* 0E5310 800EAC60 3C108016 */  lui   $s0, %hi(bss3_80159B20) # $s0, 0x8016
/* 0E5314 800EAC64 26109B20 */  addiu $s0, %lo(bss3_80159B20) # addiu $s0, $s0, -0x64e0
/* 0E5318 800EAC68 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E531C 800EAC6C 8E040000 */  lw    $a0, ($s0)
/* 0E5320 800EAC70 3C118016 */  lui   $s1, %hi(bss3_80159BEC) # $s1, 0x8016
/* 0E5324 800EAC74 26319BEC */  addiu $s1, %lo(bss3_80159BEC) # addiu $s1, $s1, -0x6414
/* 0E5328 800EAC78 24020080 */  li    $v0, 128
/* 0E532C 800EAC7C 3C018016 */  lui   $at, %hi(bss3_80159C8A) # $at, 0x8016
/* 0E5330 800EAC80 0C000280 */  jal   aki_free
/* 0E5334 800EAC84 A4229C8A */   sh    $v0, %lo(bss3_80159C8A)($at)

/* 0E5338 800EAC88 AE000000 */  sw    $zero, ($s0)

.L3_800EAC8C:
/* 0E533C 800EAC8C 0C000226 */  jal   aki_malloc
/* 0E5340 800EAC90 24040A00 */   li    $a0, 2560

/* 0E5344 800EAC94 AE220000 */  sw    $v0, ($s1)
/* 0E5348 800EAC98 26940001 */  addiu $s4, $s4, 1
/* 0E534C 800EAC9C 2E820003 */  sltiu $v0, $s4, 3
/* 0E5350 800EACA0 1440FFFA */  bnez  $v0, .L3_800EAC8C
/* 0E5354 800EACA4 26310004 */   addiu $s1, $s1, 4

# referee stuff
/* 0E5358 800EACA8 3C018016 */  lui   $at, %hi(bss3_80159C88) # $at, 0x8016
/* 0E535C 800EACAC A4209C88 */  sh    $zero, %lo(bss3_80159C88)($at)
/* 0E5360 800EACB0 0000A021 */  addu  $s4, $zero, $zero
/* 0E5364 800EACB4 24130001 */  li    $s3, 1
/* 0E5368 800EACB8 241204A8 */  li    $s2, 0x4A8 # file ID (first referee frame palette)
/* 0E536C 800EACBC 3C118016 */  lui   $s1, %hi(bss3_80159BF8) # $s1, 0x8016
/* 0E5370 800EACC0 26319BF8 */  addiu $s1, %lo(bss3_80159BF8) # addiu $s1, $s1, -0x6408
/* 0E5374 800EACC4 00008021 */  addu  $s0, $zero, $zero

.L3_800EACC8:
# referee
/* 0E5378 800EACC8 3C02800A */  lui   $v0, %hi(bssMain_800A4053) # $v0, 0x800a
/* 0E537C 800EACCC 90424053 */  lbu   $v0, %lo(bssMain_800A4053)($v0)
/* 0E5380 800EACD0 3C068015 */  lui   $a2, %hi(tbl_8015202C)
/* 0E5384 800EACD4 00C23021 */  addu  $a2, $a2, $v0
/* 0E5388 800EACD8 90C6202C */  lbu   $a2, %lo(tbl_8015202C)($a2)
/* 0E538C 800EACDC 02202021 */  addu  $a0, $s1, $zero
/* 0E5390 800EACE0 00142840 */  sll   $a1, $s4, 1
/* 0E5394 800EACE4 00C52821 */  addu  $a1, $a2, $a1
/* 0E5398 800EACE8 24A504A9 */  addiu $a1, $a1, 0x4A9 # (first referee frame texture)
/* 0E539C 800EACEC 00052C00 */  sll   $a1, $a1, 0x10
/* 0E53A0 800EACF0 00052C03 */  sra   $a1, $a1, 0x10
/* 0E53A4 800EACF4 00D23021 */  addu  $a2, $a2, $s2
/* 0E53A8 800EACF8 00063400 */  sll   $a2, $a2, 0x10
/* 0E53AC 800EACFC 0C003DF0 */  jal   func_8000F7C0
/* 0E53B0 800EAD00 00063403 */   sra   $a2, $a2, 0x10

# check for monochrome mode
/* 0E53B4 800EAD04 3C028004 */  lui   $v0, %hi(var_8003FDB0) # $v0, 0x8004
/* 0E53B8 800EAD08 9442FDB0 */  lhu   $v0, %lo(var_8003FDB0)($v0)
/* 0E53BC 800EAD0C 54530007 */  bnel  $v0, $s3, .L3_800EAD2C
/* 0E53C0 800EAD10 26520002 */   addiu $s2, $s2, 2

/* 0E53C4 800EAD14 3C048016 */  lui   $a0, %hi(bss3_80159BFC)
/* 0E53C8 800EAD18 00902021 */  addu  $a0, $a0, $s0
/* 0E53CC 800EAD1C 8C849BFC */  lw    $a0, %lo(bss3_80159BFC)($a0)
/* 0E53D0 800EAD20 0C0030A5 */  jal   func_8000C294
/* 0E53D4 800EAD24 24050010 */   li    $a1, 16

/* 0E53D8 800EAD28 26520002 */  addiu $s2, $s2, 2

.L3_800EAD2C:
/* 0E53DC 800EAD2C 26310008 */  addiu $s1, $s1, 8
/* 0E53E0 800EAD30 26940001 */  addiu $s4, $s4, 1
/* 0E53E4 800EAD34 2E820012 */  sltiu $v0, $s4, 0x12
/* 0E53E8 800EAD38 1440FFE3 */  bnez  $v0, .L3_800EACC8
/* 0E53EC 800EAD3C 26100008 */   addiu $s0, $s0, 8

/* 0E53F0 800EAD40 0000A021 */  addu  $s4, $zero, $zero
/* 0E53F4 800EAD44 3412FFFF */  li    $s2, 65535
/* 0E53F8 800EAD48 00008821 */  addu  $s1, $zero, $zero

.L3_800EAD4C:
/* 0E53FC 800EAD4C 3C108016 */  lui   $s0, %hi(bss3_8015A308) # $s0, 0x8016
/* 0E5400 800EAD50 2610A308 */  addiu $s0, %lo(bss3_8015A308) # addiu $s0, $s0, -0x5cf8
/* 0E5404 800EAD54 02308021 */  addu  $s0, $s1, $s0
/* 0E5408 800EAD58 02002021 */  addu  $a0, $s0, $zero
/* 0E540C 800EAD5C 0C03A43C */  jal   func3_800E90F0
/* 0E5410 800EAD60 24050002 */   li    $a1, 2

/* 0E5414 800EAD64 02002021 */  addu  $a0, $s0, $zero
/* 0E5418 800EAD68 26850370 */  addiu $a1, $s4, 0x370 # file ID: start of pinfall frames 2
/* 0E541C 800EAD6C 00052C00 */  sll   $a1, $a1, 0x10
/* 0E5420 800EAD70 00052C03 */  sra   $a1, $a1, 0x10
/* 0E5424 800EAD74 0C00313C */  jal   func_8000C4F0
/* 0E5428 800EAD78 2406036F */   li    $a2, 0x36F # file ID: pinfall frame 2 palette

/* 0E542C 800EAD7C 00004021 */  addu  $t0, $zero, $zero
/* 0E5430 800EAD80 00002821 */  addu  $a1, $zero, $zero
/* 0E5434 800EAD84 8E070024 */  lw    $a3, 0x24($s0)
/* 0E5438 800EAD88 00003021 */  addu  $a2, $zero, $zero

.L3_800EAD8C:
/* 0E543C 800EAD8C 94E20000 */  lhu   $v0, ($a3)
/* 0E5440 800EAD90 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5444 800EAD94 10520011 */  beq   $v0, $s2, .L3_800EADDC
/* 0E5448 800EAD98 24E70002 */   addiu $a3, $a3, 2

/* 0E544C 800EAD9C 00002021 */  addu  $a0, $zero, $zero
/* 0E5450 800EADA0 00404821 */  addu  $t1, $v0, $zero

.L3_800EADA4:
/* 0E5454 800EADA4 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E5458 800EADA8 00441021 */  addu  $v0, $v0, $a0
/* 0E545C 800EADAC 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E5460 800EADB0 00491007 */  srav  $v0, $t1, $v0
/* 0E5464 800EADB4 3043001F */  andi  $v1, $v0, 0x1f
/* 0E5468 800EADB8 0103102A */  slt   $v0, $t0, $v1
/* 0E546C 800EADBC 50400004 */  beql  $v0, $zero, .L3_800EADD0
/* 0E5470 800EADC0 24840001 */   addiu $a0, $a0, 1

/* 0E5474 800EADC4 00604021 */  addu  $t0, $v1, $zero
/* 0E5478 800EADC8 00802821 */  addu  $a1, $a0, $zero
/* 0E547C 800EADCC 24840001 */  addiu $a0, $a0, 1

.L3_800EADD0:
/* 0E5480 800EADD0 2C820003 */  sltiu $v0, $a0, 3
/* 0E5484 800EADD4 1440FFF3 */  bnez  $v0, .L3_800EADA4
/* 0E5488 800EADD8 00000000 */   nop   

.L3_800EADDC:
/* 0E548C 800EADDC 24C60001 */  addiu $a2, $a2, 1
/* 0E5490 800EADE0 2CC20010 */  sltiu $v0, $a2, 0x10
/* 0E5494 800EADE4 1440FFE9 */  bnez  $v0, .L3_800EAD8C
/* 0E5498 800EADE8 00000000 */   nop   

/* 0E549C 800EADEC 8E040024 */  lw    $a0, 0x24($s0)
/* 0E54A0 800EADF0 0C004213 */  jal   func_8001084C
/* 0E54A4 800EADF4 30A500FF */   andi  $a1, $a1, 0xff

/* 0E54A8 800EADF8 8E020018 */  lw    $v0, 0x18($s0)
/* 0E54AC 800EADFC 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* 0E54B0 800EAE00 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* 0E54B4 800EAE04 3C080050 */  lui   $t0, (0x00504240 >> 16) # lui $t0, 0x50
/* 0E54B8 800EAE08 35084240 */  ori   $t0, (0x00504240 & 0xFFFF) # ori $t0, $t0, 0x4240
/* 0E54BC 800EAE0C 3C09FC12 */  lui   $t1, (0xFC121824 >> 16) # lui $t1, 0xfc12
/* 0E54C0 800EAE10 35291824 */  ori   $t1, (0xFC121824 & 0xFFFF) # ori $t1, $t1, 0x1824
/* 0E54C4 800EAE14 3C06FF33 */  lui   $a2, %hi(0xFF330001) # $a2, 0xff33
/* 0E54C8 800EAE18 34C6FFFF */  ori   $a2, (0xFF33FFFF & 0xFFFF) # ori $a2, $a2, 0xffff
/* 0E54CC 800EAE1C 3C07E300 */  lui   $a3, (0xE3000A01 >> 16) # lui $a3, 0xe300
/* 0E54D0 800EAE20 34E70A01 */  ori   $a3, (0xE3000A01 & 0xFFFF) # ori $a3, $a3, 0xa01
/* 0E54D4 800EAE24 3C108016 */  lui   $s0, %hi(bss3_8015A3A8) # $s0, 0x8016
/* 0E54D8 800EAE28 2610A3A8 */  addiu $s0, %lo(bss3_8015A3A8) # addiu $s0, $s0, -0x5c58
/* 0E54DC 800EAE2C 02308021 */  addu  $s0, $s1, $s0
/* 0E54E0 800EAE30 02002021 */  addu  $a0, $s0, $zero
/* 0E54E4 800EAE34 24050002 */  li    $a1, 2
/* 0E54E8 800EAE38 00401821 */  addu  $v1, $v0, $zero
/* 0E54EC 800EAE3C 24420008 */  addiu $v0, $v0, 8
/* 0E54F0 800EAE40 AC6A0000 */  sw    $t2, ($v1)
/* 0E54F4 800EAE44 AC680004 */  sw    $t0, 4($v1)
/* 0E54F8 800EAE48 AC490000 */  sw    $t1, ($v0)
/* 0E54FC 800EAE4C AC460004 */  sw    $a2, 4($v0)
/* 0E5500 800EAE50 24420008 */  addiu $v0, $v0, 8
/* 0E5504 800EAE54 AC470000 */  sw    $a3, ($v0)
/* 0E5508 800EAE58 0C03A43C */  jal   func3_800E90F0
/* 0E550C 800EAE5C AC400004 */   sw    $zero, 4($v0)

/* 0E5510 800EAE60 02002021 */  addu  $a0, $s0, $zero
/* 0E5514 800EAE64 2685036C */  addiu $a1, $s4, 0x36C # file ID: start of pinfall frames 1
/* 0E5518 800EAE68 00052C00 */  sll   $a1, $a1, 0x10
/* 0E551C 800EAE6C 00052C03 */  sra   $a1, $a1, 0x10
/* 0E5520 800EAE70 0C00313C */  jal   func_8000C4F0
/* 0E5524 800EAE74 2406036B */   li    $a2, 0x36B # file ID: pinfall frame 1 palette

/* 0E5528 800EAE78 00004021 */  addu  $t0, $zero, $zero
/* 0E552C 800EAE7C 00002821 */  addu  $a1, $zero, $zero
/* 0E5530 800EAE80 8E070024 */  lw    $a3, 0x24($s0)
/* 0E5534 800EAE84 00003021 */  addu  $a2, $zero, $zero

.L3_800EAE88:
/* 0E5538 800EAE88 94E20000 */  lhu   $v0, ($a3)
/* 0E553C 800EAE8C 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5540 800EAE90 10520011 */  beq   $v0, $s2, .L3_800EAED8
/* 0E5544 800EAE94 24E70002 */   addiu $a3, $a3, 2

/* 0E5548 800EAE98 00002021 */  addu  $a0, $zero, $zero
/* 0E554C 800EAE9C 00404821 */  addu  $t1, $v0, $zero

.L3_800EAEA0:
/* 0E5550 800EAEA0 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E5554 800EAEA4 00441021 */  addu  $v0, $v0, $a0
/* 0E5558 800EAEA8 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E555C 800EAEAC 00491007 */  srav  $v0, $t1, $v0
/* 0E5560 800EAEB0 3043001F */  andi  $v1, $v0, 0x1f
/* 0E5564 800EAEB4 0103102A */  slt   $v0, $t0, $v1
/* 0E5568 800EAEB8 50400004 */  beql  $v0, $zero, .L3_800EAECC
/* 0E556C 800EAEBC 24840001 */   addiu $a0, $a0, 1

/* 0E5570 800EAEC0 00604021 */  addu  $t0, $v1, $zero
/* 0E5574 800EAEC4 00802821 */  addu  $a1, $a0, $zero
/* 0E5578 800EAEC8 24840001 */  addiu $a0, $a0, 1

.L3_800EAECC:
/* 0E557C 800EAECC 2C820003 */  sltiu $v0, $a0, 3
/* 0E5580 800EAED0 1440FFF3 */  bnez  $v0, .L3_800EAEA0
/* 0E5584 800EAED4 00000000 */   nop   

.L3_800EAED8:
/* 0E5588 800EAED8 24C60001 */  addiu $a2, %lo(0xFF330001) # addiu $a2, $a2, 1
/* 0E558C 800EAEDC 2CC20010 */  sltiu $v0, $a2, 0x10
/* 0E5590 800EAEE0 1440FFE9 */  bnez  $v0, .L3_800EAE88
/* 0E5594 800EAEE4 00000000 */   nop   

/* 0E5598 800EAEE8 8E040024 */  lw    $a0, 0x24($s0)
/* 0E559C 800EAEEC 30A500FF */  andi  $a1, $a1, 0xff
/* 0E55A0 800EAEF0 26310034 */  addiu $s1, $s1, 0x34
/* 0E55A4 800EAEF4 0C004213 */  jal   func_8001084C
/* 0E55A8 800EAEF8 26940001 */   addiu $s4, $s4, 1

/* 0E55AC 800EAEFC 8E020018 */  lw    $v0, 0x18($s0)
/* 0E55B0 800EAF00 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* 0E55B4 800EAF04 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 0E55B8 800EAF08 3C060050 */  lui   $a2, (0x00504240 >> 16) # lui $a2, 0x50
/* 0E55BC 800EAF0C 34C64240 */  ori   $a2, (0x00504240 & 0xFFFF) # ori $a2, $a2, 0x4240
/* 0E55C0 800EAF10 3C07FC12 */  lui   $a3, (0xFC121824 >> 16) # lui $a3, 0xfc12
/* 0E55C4 800EAF14 34E71824 */  ori   $a3, (0xFC121824 & 0xFFFF) # ori $a3, $a3, 0x1824
/* 0E55C8 800EAF18 3C04FF33 */  lui   $a0, (0xFF33FFFF >> 16) # lui $a0, 0xff33
/* 0E55CC 800EAF1C 3484FFFF */  ori   $a0, (0xFF33FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0E55D0 800EAF20 3C05E300 */  lui   $a1, (0xE3000A01 >> 16) # lui $a1, 0xe300
/* 0E55D4 800EAF24 34A50A01 */  ori   $a1, (0xE3000A01 & 0xFFFF) # ori $a1, $a1, 0xa01
/* 0E55D8 800EAF28 00401821 */  addu  $v1, $v0, $zero
/* 0E55DC 800EAF2C 24420008 */  addiu $v0, $v0, 8
/* 0E55E0 800EAF30 AC680000 */  sw    $t0, ($v1)
/* 0E55E4 800EAF34 AC660004 */  sw    $a2, 4($v1)
/* 0E55E8 800EAF38 AC470000 */  sw    $a3, ($v0)
/* 0E55EC 800EAF3C AC440004 */  sw    $a0, 4($v0)
/* 0E55F0 800EAF40 24420008 */  addiu $v0, $v0, 8
/* 0E55F4 800EAF44 AC450000 */  sw    $a1, ($v0)
/* 0E55F8 800EAF48 AC400004 */  sw    $zero, 4($v0)
/* 0E55FC 800EAF4C 2E820003 */  sltiu $v0, $s4, 3
/* 0E5600 800EAF50 1440FF7E */  bnez  $v0, .L3_800EAD4C
/* 0E5604 800EAF54 24050005 */   li    $a1, 5

/* 0E5608 800EAF58 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E560C 800EAF5C 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5610 800EAF60 3C108016 */  lui   $s0, %hi(bss3_8015A228) # $s0, 0x8016
/* 0E5614 800EAF64 2610A228 */  addiu $s0, %lo(bss3_8015A228) # addiu $s0, $s0, -0x5dd8
/* 0E5618 800EAF68 02002021 */  addu  $a0, $s0, $zero
/* 0E561C 800EAF6C 0C000600 */  jal   func_80001800
/* 0E5620 800EAF70 00C03821 */   addu  $a3, $a2, $zero

/* 0E5624 800EAF74 02002021 */  addu  $a0, $s0, $zero
/* 0E5628 800EAF78 0C000635 */  jal   func_800018D4
/* 0E562C 800EAF7C 00002821 */   addu  $a1, $zero, $zero

/* 0E5630 800EAF80 0C00061B */  jal   func_8000186C
/* 0E5634 800EAF84 02002021 */   addu  $a0, $s0, $zero

/* 0E5638 800EAF88 27A40040 */  addiu $a0, $sp, 0x40
/* 0E563C 800EAF8C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5640 800EAF90 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E5644 800EAF94 4481A000 */  mtc1  $at, $f20
/* 0E5648 800EAF98 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E564C 800EAF9C 4481B000 */  mtc1  $at, $f22
/* 0E5650 800EAFA0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E5654 800EAFA4 4481C000 */  mtc1  $at, $f24
/* 0E5658 800EAFA8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E565C 800EAFAC 4481D000 */  mtc1  $at, $f26
/* 0E5660 800EAFB0 00002821 */  addu  $a1, $zero, $zero
/* 0E5664 800EAFB4 00A03821 */  addu  $a3, $a1, $zero
/* 0E5668 800EAFB8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E566C 800EAFBC E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E5670 800EAFC0 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E5674 800EAFC4 0C00C5A4 */  jal   guOrthoF
/* 0E5678 800EAFC8 E7BA001C */   swc1  $f26, 0x1c($sp)

func3_800EAFCC:
/* 0E567C 800EAFCC AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5680 800EAFD0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5684 800EAFD4 4406A000 */  mfc1  $a2, $f20
/* 0E5688 800EAFD8 4407B000 */  mfc1  $a3, $f22
/* 0E568C 800EAFDC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5690 800EAFE0 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5694 800EAFE4 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E5698 800EAFE8 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E569C 800EAFEC AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E56A0 800EAFF0 0C00C3E0 */  jal   guLookAtF
/* 0E56A4 800EAFF4 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E56A8 800EAFF8 27A40080 */  addiu $a0, $sp, 0x80
/* 0E56AC 800EAFFC 27A50040 */  addiu $a1, $sp, 0x40
/* 0E56B0 800EB000 0C000842 */  jal   func_80002108
/* 0E56B4 800EB004 2606009C */   addiu $a2, $s0, 0x9c

/* 0E56B8 800EB008 3C038016 */  lui   $v1, %hi(bss3_8015A23C) # $v1, 0x8016
/* 0E56BC 800EB00C 8C63A23C */  lw    $v1, %lo(bss3_8015A23C)($v1)
/* 0E56C0 800EB010 24110001 */  li    $s1, 1
/* 0E56C4 800EB014 3C018016 */  lui   $at, %hi(bss3_8015A241) # $at, 0x8016
/* 0E56C8 800EB018 A031A241 */  sb    $s1, %lo(bss3_8015A241)($at)
/* 0E56CC 800EB01C 8C620000 */  lw    $v0, ($v1)
/* 0E56D0 800EB020 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E56D4 800EB024 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E56D8 800EB028 4481E000 */  mtc1  $at, $f28
/* 0E56DC 800EB02C 34420080 */  ori   $v0, $v0, 0x80
/* 0E56E0 800EB030 AC620000 */  sw    $v0, ($v1)
/* 0E56E4 800EB034 3C028016 */  lui   $v0, %hi(bss3_8015A23C) # $v0, 0x8016
/* 0E56E8 800EB038 8C42A23C */  lw    $v0, %lo(bss3_8015A23C)($v0)
/* 0E56EC 800EB03C E45C0024 */  swc1  $f28, 0x24($v0)
/* 0E56F0 800EB040 3C028016 */  lui   $v0, %hi(bss3_8015A23C) # $v0, 0x8016
/* 0E56F4 800EB044 8C42A23C */  lw    $v0, %lo(bss3_8015A23C)($v0)
/* 0E56F8 800EB048 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E56FC 800EB04C 44812000 */  mtc1  $at, $f4
/* 0E5700 800EB050 3C108016 */  lui   $s0, %hi(bss3_8015A148) # $s0, 0x8016
/* 0E5704 800EB054 2610A148 */  addiu $s0, %lo(bss3_8015A148) # addiu $s0, $s0, -0x5eb8
/* 0E5708 800EB058 E4440020 */  swc1  $f4, 0x20($v0)
/* 0E570C 800EB05C AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5710 800EB060 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5714 800EB064 02002021 */  addu  $a0, $s0, $zero
/* 0E5718 800EB068 24050005 */  li    $a1, 5
/* 0E571C 800EB06C 0C000600 */  jal   func_80001800
/* 0E5720 800EB070 00C03821 */   addu  $a3, $a2, $zero

/* 0E5724 800EB074 02002021 */  addu  $a0, $s0, $zero
/* 0E5728 800EB078 0C000635 */  jal   func_800018D4
/* 0E572C 800EB07C 00002821 */   addu  $a1, $zero, $zero

/* 0E5730 800EB080 0C00061B */  jal   func_8000186C
/* 0E5734 800EB084 02002021 */   addu  $a0, $s0, $zero

/* 0E5738 800EB088 27A40040 */  addiu $a0, $sp, 0x40
/* 0E573C 800EB08C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5740 800EB090 00002821 */  addu  $a1, $zero, $zero
/* 0E5744 800EB094 00A03821 */  addu  $a3, $a1, $zero
/* 0E5748 800EB098 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E574C 800EB09C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E5750 800EB0A0 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E5754 800EB0A4 0C00C5A4 */  jal   guOrthoF
/* 0E5758 800EB0A8 E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E575C 800EB0AC AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5760 800EB0B0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5764 800EB0B4 4406A000 */  mfc1  $a2, $f20
/* 0E5768 800EB0B8 4407B000 */  mfc1  $a3, $f22
/* 0E576C 800EB0BC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5770 800EB0C0 AFA000C4 */  sw    $zero, 0xc4($sp)
/* 0E5774 800EB0C4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5778 800EB0C8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E577C 800EB0CC AFA00018 */  sw    $zero, 0x18($sp)
/* 0E5780 800EB0D0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E5784 800EB0D4 0C00C3E0 */  jal   guLookAtF
/* 0E5788 800EB0D8 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E578C 800EB0DC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5790 800EB0E0 27A50040 */  addiu $a1, $sp, 0x40
/* 0E5794 800EB0E4 0C000842 */  jal   func_80002108
/* 0E5798 800EB0E8 2606009C */   addiu $a2, $s0, 0x9c

/* 0E579C 800EB0EC 3C038016 */  lui   $v1, %hi(bss3_8015A15C) # $v1, 0x8016
/* 0E57A0 800EB0F0 8C63A15C */  lw    $v1, %lo(bss3_8015A15C)($v1)
/* 0E57A4 800EB0F4 3C018016 */  lui   $at, %hi(bss3_8015A161) # $at, 0x8016
/* 0E57A8 800EB0F8 A031A161 */  sb    $s1, %lo(bss3_8015A161)($at)
/* 0E57AC 800EB0FC 8C620000 */  lw    $v0, ($v1)
/* 0E57B0 800EB100 AFA000EC */  sw    $zero, 0xec($sp)
/* 0E57B4 800EB104 34420080 */  ori   $v0, $v0, 0x80
/* 0E57B8 800EB108 AC620000 */  sw    $v0, ($v1)
/* 0E57BC 800EB10C 3C028016 */  lui   $v0, %hi(bss3_8015A15C) # $v0, 0x8016
/* 0E57C0 800EB110 8C42A15C */  lw    $v0, %lo(bss3_8015A15C)($v0)
/* 0E57C4 800EB114 AFA000F4 */  sw    $zero, 0xf4($sp)
/* 0E57C8 800EB118 E45C0024 */  swc1  $f28, 0x24($v0)
/* 0E57CC 800EB11C 3C028016 */  lui   $v0, %hi(bss3_8015A15C) # $v0, 0x8016
/* 0E57D0 800EB120 8C42A15C */  lw    $v0, %lo(bss3_8015A15C)($v0)
/* 0E57D4 800EB124 4600A786 */  mov.s $f30, $f20
/* 0E57D8 800EB128 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E57DC 800EB12C 44812000 */  mtc1  $at, $f4
/* 0E57E0 800EB130 4600B686 */  mov.s $f26, $f22
/* 0E57E4 800EB134 4600C706 */  mov.s $f28, $f24
/* 0E57E8 800EB138 E4440020 */  swc1  $f4, 0x20($v0)

.L3_800EB13C:
/* 0E57EC 800EB13C 8FB300F4 */  lw    $s3, 0xf4($sp)
/* 0E57F0 800EB140 0000A021 */  addu  $s4, $zero, $zero
/* 0E57F4 800EB144 3C0B0373 */  lui   $t3, 0x373 # start of blue count palettes
/* 0E57F8 800EB148 AFAB00DC */  sw    $t3, 0xdc($sp)
/* 0E57FC 800EB14C 3C0B0374 */  lui   $t3, 0x374 # start of blue count textures
/* 0E5800 800EB150 3C1E8016 */  lui   $fp, %hi(bss3_8015ABD0) # $fp, 0x8016
/* 0E5804 800EB154 27DEABD0 */  addiu $fp, %lo(bss3_8015ABD0) # addiu $fp, $fp, -0x5430
/* 0E5808 800EB158 00009021 */  addu  $s2, $zero, $zero
/* 0E580C 800EB15C 3C170387 */  lui   $s7, 0x387 # file ID: start of white count palettes
/* 0E5810 800EB160 3C160388 */  lui   $s6, 0x388 # file ID: start of white count textures
/* 0E5814 800EB164 3C158016 */  lui   $s5, %hi(bss3_8015A7C0) # $s5, 0x8016
/* 0E5818 800EB168 26B5A7C0 */  addiu $s5, %lo(bss3_8015A7C0) # addiu $s5, $s5, -0x5840
/* 0E581C 800EB16C AFAB00E4 */  sw    $t3, 0xe4($sp)

.L3_800EB170:
/* 0E5820 800EB170 02752021 */  addu  $a0, $s3, $s5
/* 0E5824 800EB174 0C03A43C */  jal   func3_800E90F0
/* 0E5828 800EB178 24050002 */   li    $a1, 2

/* 0E582C 800EB17C 02728021 */  addu  $s0, $s3, $s2
/* 0E5830 800EB180 3C0B8016 */  lui   $t3, %hi(bss3_8015A7C0) # $t3, 0x8016
/* 0E5834 800EB184 256BA7C0 */  addiu $t3, %lo(bss3_8015A7C0) # addiu $t3, $t3, -0x5840
/* 0E5838 800EB188 020B8021 */  addu  $s0, $s0, $t3
/* 0E583C 800EB18C 02002021 */  addu  $a0, $s0, $zero
/* 0E5840 800EB190 00162C03 */  sra   $a1, $s6, 0x10
/* 0E5844 800EB194 0C00313C */  jal   func_8000C4F0
/* 0E5848 800EB198 00173403 */   sra   $a2, $s7, 0x10

/* 0E584C 800EB19C 00004821 */  addu  $t1, $zero, $zero
/* 0E5850 800EB1A0 00002821 */  addu  $a1, $zero, $zero
/* 0E5854 800EB1A4 8E080024 */  lw    $t0, 0x24($s0)
/* 0E5858 800EB1A8 00003821 */  addu  $a3, $zero, $zero

.L3_800EB1AC:
/* 0E585C 800EB1AC 95020000 */  lhu   $v0, ($t0)
/* 0E5860 800EB1B0 340BFFFF */  li    $t3, 65535
/* 0E5864 800EB1B4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5868 800EB1B8 104B0011 */  beq   $v0, $t3, .L3_800EB200
/* 0E586C 800EB1BC 25080002 */   addiu $t0, $t0, 2

/* 0E5870 800EB1C0 00002021 */  addu  $a0, $zero, $zero
/* 0E5874 800EB1C4 00403021 */  addu  $a2, $v0, $zero

.L3_800EB1C8:
/* 0E5878 800EB1C8 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E587C 800EB1CC 00441021 */  addu  $v0, $v0, $a0
/* 0E5880 800EB1D0 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E5884 800EB1D4 00461007 */  srav  $v0, $a2, $v0
/* 0E5888 800EB1D8 3043001F */  andi  $v1, $v0, 0x1f
/* 0E588C 800EB1DC 0123102A */  slt   $v0, $t1, $v1
/* 0E5890 800EB1E0 50400004 */  beql  $v0, $zero, .L3_800EB1F4
/* 0E5894 800EB1E4 24840001 */   addiu $a0, $a0, 1

/* 0E5898 800EB1E8 00604821 */  addu  $t1, $v1, $zero
/* 0E589C 800EB1EC 00802821 */  addu  $a1, $a0, $zero
/* 0E58A0 800EB1F0 24840001 */  addiu $a0, $a0, 1

.L3_800EB1F4:
/* 0E58A4 800EB1F4 2C820003 */  sltiu $v0, $a0, 3
/* 0E58A8 800EB1F8 1440FFF3 */  bnez  $v0, .L3_800EB1C8
/* 0E58AC 800EB1FC 00000000 */   nop   

.L3_800EB200:
/* 0E58B0 800EB200 24E70001 */  addiu $a3, $a3, 1
/* 0E58B4 800EB204 2CE20010 */  sltiu $v0, $a3, 0x10
/* 0E58B8 800EB208 1440FFE8 */  bnez  $v0, .L3_800EB1AC
/* 0E58BC 800EB20C 02728821 */   addu  $s1, $s3, $s2

/* 0E58C0 800EB210 8E040024 */  lw    $a0, 0x24($s0)
/* 0E58C4 800EB214 30A500FF */  andi  $a1, $a1, 0xff
/* 0E58C8 800EB218 3C0B8016 */  lui   $t3, %hi(bss3_8015ABD0) # $t3, 0x8016
/* 0E58CC 800EB21C 256BABD0 */  addiu $t3, %lo(bss3_8015ABD0) # addiu $t3, $t3, -0x5430
/* 0E58D0 800EB220 0C004213 */  jal   func_8001084C
/* 0E58D4 800EB224 022B8821 */   addu  $s1, $s1, $t3

/* 0E58D8 800EB228 8E020018 */  lw    $v0, 0x18($s0)
/* 0E58DC 800EB22C 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* 0E58E0 800EB230 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* 0E58E4 800EB234 3C080050 */  lui   $t0, (0x00504240 >> 16) # lui $t0, 0x50
/* 0E58E8 800EB238 35084240 */  ori   $t0, (0x00504240 & 0xFFFF) # ori $t0, $t0, 0x4240
/* 0E58EC 800EB23C 3C09FC12 */  lui   $t1, (0xFC121824 >> 16) # lui $t1, 0xfc12
/* 0E58F0 800EB240 35291824 */  ori   $t1, (0xFC121824 & 0xFFFF) # ori $t1, $t1, 0x1824
/* 0E58F4 800EB244 3C06FF33 */  lui   $a2, (0xFF33FFFF >> 16) # lui $a2, 0xff33
/* 0E58F8 800EB248 34C6FFFF */  ori   $a2, (0xFF33FFFF & 0xFFFF) # ori $a2, $a2, 0xffff
/* 0E58FC 800EB24C 3C07E300 */  lui   $a3, %hi(0xE3000001) # $a3, 0xe300
/* 0E5900 800EB250 34E70A01 */  ori   $a3, (0xE3000A01 & 0xFFFF) # ori $a3, $a3, 0xa01
/* 0E5904 800EB254 027E2021 */  addu  $a0, $s3, $fp
/* 0E5908 800EB258 24050002 */  li    $a1, 2
/* 0E590C 800EB25C 00401821 */  addu  $v1, $v0, $zero
/* 0E5910 800EB260 24420008 */  addiu $v0, $v0, 8
/* 0E5914 800EB264 AC6A0000 */  sw    $t2, ($v1)
/* 0E5918 800EB268 AC680004 */  sw    $t0, 4($v1)
/* 0E591C 800EB26C AC490000 */  sw    $t1, ($v0)
/* 0E5920 800EB270 AC460004 */  sw    $a2, 4($v0)
/* 0E5924 800EB274 24420008 */  addiu $v0, $v0, 8
/* 0E5928 800EB278 AC470000 */  sw    $a3, ($v0)
/* 0E592C 800EB27C 0C03A43C */  jal   func3_800E90F0
/* 0E5930 800EB280 AC400004 */   sw    $zero, 4($v0)

/* 0E5934 800EB284 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 0E5938 800EB288 000B2C03 */  sra   $a1, $t3, 0x10
/* 0E593C 800EB28C 8FAB00DC */  lw    $t3, 0xdc($sp)
/* 0E5940 800EB290 02202021 */  addu  $a0, $s1, $zero
/* 0E5944 800EB294 0C00313C */  jal   func_8000C4F0
/* 0E5948 800EB298 000B3403 */   sra   $a2, $t3, 0x10

/* 0E594C 800EB29C 00004821 */  addu  $t1, $zero, $zero
/* 0E5950 800EB2A0 00002821 */  addu  $a1, $zero, $zero
/* 0E5954 800EB2A4 8E280024 */  lw    $t0, 0x24($s1)
/* 0E5958 800EB2A8 00003821 */  addu  $a3, $zero, $zero

.L3_800EB2AC:
/* 0E595C 800EB2AC 95020000 */  lhu   $v0, ($t0)
/* 0E5960 800EB2B0 340BFFFF */  li    $t3, 65535
/* 0E5964 800EB2B4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5968 800EB2B8 104B0011 */  beq   $v0, $t3, .L3_800EB300
/* 0E596C 800EB2BC 25080002 */   addiu $t0, $t0, 2

/* 0E5970 800EB2C0 00002021 */  addu  $a0, $zero, $zero
/* 0E5974 800EB2C4 00403021 */  addu  $a2, $v0, $zero

.L3_800EB2C8:
/* 0E5978 800EB2C8 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E597C 800EB2CC 00441021 */  addu  $v0, $v0, $a0
/* 0E5980 800EB2D0 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E5984 800EB2D4 00461007 */  srav  $v0, $a2, $v0
/* 0E5988 800EB2D8 3043001F */  andi  $v1, $v0, 0x1f
/* 0E598C 800EB2DC 0123102A */  slt   $v0, $t1, $v1
/* 0E5990 800EB2E0 50400004 */  beql  $v0, $zero, .L3_800EB2F4
/* 0E5994 800EB2E4 24840001 */   addiu $a0, $a0, 1

/* 0E5998 800EB2E8 00604821 */  addu  $t1, $v1, $zero
/* 0E599C 800EB2EC 00802821 */  addu  $a1, $a0, $zero
/* 0E59A0 800EB2F0 24840001 */  addiu $a0, $a0, 1

.L3_800EB2F4:
/* 0E59A4 800EB2F4 2C820003 */  sltiu $v0, $a0, 3
/* 0E59A8 800EB2F8 1440FFF3 */  bnez  $v0, .L3_800EB2C8
/* 0E59AC 800EB2FC 00000000 */   nop   

.L3_800EB300:
/* 0E59B0 800EB300 24E70001 */  addiu $a3, %lo(0xE3000001) # addiu $a3, $a3, 1
/* 0E59B4 800EB304 2CE20010 */  sltiu $v0, $a3, 0x10
/* 0E59B8 800EB308 1440FFE8 */  bnez  $v0, .L3_800EB2AC
/* 0E59BC 800EB30C 00000000 */   nop   

/* 0E59C0 800EB310 8E240024 */  lw    $a0, 0x24($s1)
/* 0E59C4 800EB314 30A500FF */  andi  $a1, $a1, 0xff
/* 0E59C8 800EB318 27DE0034 */  addiu $fp, $fp, 0x34
/* 0E59CC 800EB31C 26520034 */  addiu $s2, $s2, 0x34
/* 0E59D0 800EB320 26B50034 */  addiu $s5, $s5, 0x34
/* 0E59D4 800EB324 0C004213 */  jal   func_8001084C
/* 0E59D8 800EB328 26940001 */   addiu $s4, $s4, 1

/* 0E59DC 800EB32C 8E230018 */  lw    $v1, 0x18($s1)
/* 0E59E0 800EB330 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* 0E59E4 800EB334 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 0E59E8 800EB338 3C060050 */  lui   $a2, (0x00504240 >> 16) # lui $a2, 0x50
/* 0E59EC 800EB33C 34C64240 */  ori   $a2, (0x00504240 & 0xFFFF) # ori $a2, $a2, 0x4240
/* 0E59F0 800EB340 3C07FC12 */  lui   $a3, (0xFC121824 >> 16) # lui $a3, 0xfc12
/* 0E59F4 800EB344 34E71824 */  ori   $a3, (0xFC121824 & 0xFFFF) # ori $a3, $a3, 0x1824
/* 0E59F8 800EB348 3C04FF33 */  lui   $a0, (0xFF33FFFF >> 16) # lui $a0, 0xff33
/* 0E59FC 800EB34C 3484FFFF */  ori   $a0, (0xFF33FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0E5A00 800EB350 3C05E300 */  lui   $a1, (0xE3000A01 >> 16) # lui $a1, 0xe300
/* 0E5A04 800EB354 8FAB00DC */  lw    $t3, 0xdc($sp)
/* 0E5A08 800EB358 34A50A01 */  ori   $a1, (0xE3000A01 & 0xFFFF) # ori $a1, $a1, 0xa01
/* 0E5A0C 800EB35C 3C020002 */  lui   $v0, %hi(0x00020004) # $v0, 2
/* 0E5A10 800EB360 01625821 */  addu  $t3, $t3, $v0
/* 0E5A14 800EB364 AFAB00DC */  sw    $t3, 0xdc($sp)
/* 0E5A18 800EB368 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 0E5A1C 800EB36C 02E2B821 */  addu  $s7, $s7, $v0
/* 0E5A20 800EB370 02C2B021 */  addu  $s6, $s6, $v0
/* 0E5A24 800EB374 01625821 */  addu  $t3, $t3, $v0
/* 0E5A28 800EB378 00601021 */  addu  $v0, $v1, $zero
/* 0E5A2C 800EB37C 24630008 */  addiu $v1, $v1, 8
/* 0E5A30 800EB380 AFAB00E4 */  sw    $t3, 0xe4($sp)
/* 0E5A34 800EB384 AC480000 */  sw    $t0, ($v0)
/* 0E5A38 800EB388 AC460004 */  sw    $a2, %lo(0x00020004)($v0)
/* 0E5A3C 800EB38C AC670000 */  sw    $a3, ($v1)
/* 0E5A40 800EB390 AC640004 */  sw    $a0, 4($v1)
/* 0E5A44 800EB394 24630008 */  addiu $v1, $v1, 8
/* 0E5A48 800EB398 2E82000A */  sltiu $v0, $s4, 0xa
/* 0E5A4C 800EB39C AC650000 */  sw    $a1, ($v1)
/* 0E5A50 800EB3A0 1440FF73 */  bnez  $v0, .L3_800EB170
/* 0E5A54 800EB3A4 AC600004 */   sw    $zero, 4($v1)

/* 0E5A58 800EB3A8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5A5C 800EB3AC 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5A60 800EB3B0 8FAB00EC */  lw    $t3, 0xec($sp)
/* 0E5A64 800EB3B4 3C108016 */  lui   $s0, %hi(bss3_8015A600) # $s0, 0x8016
/* 0E5A68 800EB3B8 2610A600 */  addiu $s0, %lo(bss3_8015A600) # addiu $s0, $s0, -0x5a00
/* 0E5A6C 800EB3BC 24050005 */  li    $a1, 5
/* 0E5A70 800EB3C0 01708021 */  addu  $s0, $t3, $s0
/* 0E5A74 800EB3C4 02002021 */  addu  $a0, $s0, $zero
/* 0E5A78 800EB3C8 0C000600 */  jal   func_80001800
/* 0E5A7C 800EB3CC 00C03821 */   addu  $a3, $a2, $zero

/* 0E5A80 800EB3D0 02002021 */  addu  $a0, $s0, $zero
/* 0E5A84 800EB3D4 0C000635 */  jal   func_800018D4
/* 0E5A88 800EB3D8 00002821 */   addu  $a1, $zero, $zero

/* 0E5A8C 800EB3DC 0C00061B */  jal   func_8000186C
/* 0E5A90 800EB3E0 02002021 */   addu  $a0, $s0, $zero

/* 0E5A94 800EB3E4 27A40040 */  addiu $a0, $sp, 0x40
/* 0E5A98 800EB3E8 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5A9C 800EB3EC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E5AA0 800EB3F0 4481C000 */  mtc1  $at, $f24
/* 0E5AA4 800EB3F4 00002821 */  addu  $a1, $zero, $zero
/* 0E5AA8 800EB3F8 00A03821 */  addu  $a3, $a1, $zero
/* 0E5AAC 800EB3FC E7BE0010 */  swc1  $f30, 0x10($sp)
/* 0E5AB0 800EB400 E7BA0014 */  swc1  $f26, 0x14($sp)
/* 0E5AB4 800EB404 E7BC0018 */  swc1  $f28, 0x18($sp)
/* 0E5AB8 800EB408 0C00C5A4 */  jal   guOrthoF
/* 0E5ABC 800EB40C E7B8001C */   swc1  $f24, 0x1c($sp)

/* 0E5AC0 800EB410 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5AC4 800EB414 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5AC8 800EB418 4406F000 */  mfc1  $a2, $f30
/* 0E5ACC 800EB41C 4407D000 */  mfc1  $a3, $f26
/* 0E5AD0 800EB420 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5AD4 800EB424 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5AD8 800EB428 E7BE0014 */  swc1  $f30, 0x14($sp)
/* 0E5ADC 800EB42C AFA00018 */  sw    $zero, 0x18($sp)
/* 0E5AE0 800EB430 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E5AE4 800EB434 0C00C3E0 */  jal   guLookAtF
/* 0E5AE8 800EB438 E7BA0020 */   swc1  $f26, 0x20($sp)

/* 0E5AEC 800EB43C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5AF0 800EB440 27A50040 */  addiu $a1, $sp, 0x40
/* 0E5AF4 800EB444 0C000842 */  jal   func_80002108
/* 0E5AF8 800EB448 2606009C */   addiu $a2, $s0, 0x9c

/* 0E5AFC 800EB44C 8E030014 */  lw    $v1, 0x14($s0)
/* 0E5B00 800EB450 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E5B04 800EB454 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E5B08 800EB458 4481A000 */  mtc1  $at, $f20
/* 0E5B0C 800EB45C 24110001 */  li    $s1, 1
/* 0E5B10 800EB460 A2110019 */  sb    $s1, 0x19($s0)
/* 0E5B14 800EB464 8C620000 */  lw    $v0, ($v1)
/* 0E5B18 800EB468 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E5B1C 800EB46C 4481B000 */  mtc1  $at, $f22
/* 0E5B20 800EB470 34420080 */  ori   $v0, $v0, 0x80
/* 0E5B24 800EB474 AC620000 */  sw    $v0, ($v1)
/* 0E5B28 800EB478 8E020014 */  lw    $v0, 0x14($s0)
/* 0E5B2C 800EB47C E4540024 */  swc1  $f20, 0x24($v0)
/* 0E5B30 800EB480 8E020014 */  lw    $v0, 0x14($s0)
/* 0E5B34 800EB484 E4560020 */  swc1  $f22, 0x20($v0)
/* 0E5B38 800EB488 8FAB00EC */  lw    $t3, 0xec($sp)
/* 0E5B3C 800EB48C 24050005 */  li    $a1, 5
/* 0E5B40 800EB490 3C108016 */  lui   $s0, %hi(bss3_8015A448) # $s0, 0x8016
/* 0E5B44 800EB494 2610A448 */  addiu $s0, %lo(bss3_8015A448) # addiu $s0, $s0, -0x5bb8
/* 0E5B48 800EB498 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5B4C 800EB49C 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5B50 800EB4A0 01708021 */  addu  $s0, $t3, $s0
/* 0E5B54 800EB4A4 02002021 */  addu  $a0, $s0, $zero
/* 0E5B58 800EB4A8 0C000600 */  jal   func_80001800
/* 0E5B5C 800EB4AC 00C03821 */   addu  $a3, $a2, $zero

/* 0E5B60 800EB4B0 02002021 */  addu  $a0, $s0, $zero
/* 0E5B64 800EB4B4 0C000635 */  jal   func_800018D4
/* 0E5B68 800EB4B8 00002821 */   addu  $a1, $zero, $zero

/* 0E5B6C 800EB4BC 0C00061B */  jal   func_8000186C
/* 0E5B70 800EB4C0 02002021 */   addu  $a0, $s0, $zero

/* 0E5B74 800EB4C4 27A40040 */  addiu $a0, $sp, 0x40
/* 0E5B78 800EB4C8 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5B7C 800EB4CC 00002821 */  addu  $a1, $zero, $zero
/* 0E5B80 800EB4D0 00A03821 */  addu  $a3, $a1, $zero
/* 0E5B84 800EB4D4 E7BE0010 */  swc1  $f30, 0x10($sp)
/* 0E5B88 800EB4D8 E7BA0014 */  swc1  $f26, 0x14($sp)
/* 0E5B8C 800EB4DC E7BC0018 */  swc1  $f28, 0x18($sp)
/* 0E5B90 800EB4E0 0C00C5A4 */  jal   guOrthoF
/* 0E5B94 800EB4E4 E7B8001C */   swc1  $f24, 0x1c($sp)

/* 0E5B98 800EB4E8 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5B9C 800EB4EC 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5BA0 800EB4F0 4406F000 */  mfc1  $a2, $f30
/* 0E5BA4 800EB4F4 4407D000 */  mfc1  $a3, $f26
/* 0E5BA8 800EB4F8 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5BAC 800EB4FC AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5BB0 800EB500 E7BE0014 */  swc1  $f30, 0x14($sp)
/* 0E5BB4 800EB504 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E5BB8 800EB508 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E5BBC 800EB50C 0C00C3E0 */  jal   guLookAtF
/* 0E5BC0 800EB510 E7BA0020 */   swc1  $f26, 0x20($sp)

/* 0E5BC4 800EB514 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5BC8 800EB518 27A50040 */  addiu $a1, $sp, 0x40
/* 0E5BCC 800EB51C 0C000842 */  jal   func_80002108
/* 0E5BD0 800EB520 2606009C */   addiu $a2, $s0, 0x9c

/* 0E5BD4 800EB524 8E030014 */  lw    $v1, 0x14($s0)
/* 0E5BD8 800EB528 A2110019 */  sb    $s1, 0x19($s0)
/* 0E5BDC 800EB52C 8C620000 */  lw    $v0, ($v1)
/* 0E5BE0 800EB530 34420080 */  ori   $v0, $v0, 0x80
/* 0E5BE4 800EB534 AC620000 */  sw    $v0, ($v1)
/* 0E5BE8 800EB538 8FAB00F4 */  lw    $t3, 0xf4($sp)
/* 0E5BEC 800EB53C 8E020014 */  lw    $v0, 0x14($s0)
/* 0E5BF0 800EB540 256B0208 */  addiu $t3, $t3, 0x208
/* 0E5BF4 800EB544 AFAB00F4 */  sw    $t3, 0xf4($sp)
/* 0E5BF8 800EB548 E4540024 */  swc1  $f20, 0x24($v0)
/* 0E5BFC 800EB54C 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 0E5C00 800EB550 8E020014 */  lw    $v0, 0x14($s0)
/* 0E5C04 800EB554 256B0001 */  addiu $t3, $t3, 1
/* 0E5C08 800EB558 AFAB00C4 */  sw    $t3, 0xc4($sp)
/* 0E5C0C 800EB55C 8FAB00EC */  lw    $t3, 0xec($sp)
/* 0E5C10 800EB560 256B00DC */  addiu $t3, $t3, 0xdc
/* 0E5C14 800EB564 AFAB00EC */  sw    $t3, 0xec($sp)
/* 0E5C18 800EB568 E4560020 */  swc1  $f22, 0x20($v0)
/* 0E5C1C 800EB56C 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 0E5C20 800EB570 2D620002 */  sltiu $v0, $t3, 2
/* 0E5C24 800EB574 1440FEF1 */  bnez  $v0, .L3_800EB13C
/* 0E5C28 800EB578 3414FFFF */   li    $s4, 65535

/* 0E5C2C 800EB57C 3C118016 */  lui   $s1, %hi(bss3_8015B4C0) # $s1, 0x8016
/* 0E5C30 800EB580 2631B4C0 */  addiu $s1, %lo(bss3_8015B4C0) # addiu $s1, $s1, -0x4b40
/* 0E5C34 800EB584 00009821 */  addu  $s3, $zero, $zero
/* 0E5C38 800EB588 00009021 */  addu  $s2, $zero, $zero
/* 0E5C3C 800EB58C 2402FFFF */  li    $v0, -1
/* 0E5C40 800EB590 3C018016 */  lui   $at, %hi(bss3_8015AFE2) # $at, 0x8016
/* 0E5C44 800EB594 A422AFE2 */  sh    $v0, %lo(bss3_8015AFE2)($at)
/* 0E5C48 800EB598 3C018016 */  lui   $at, %hi(bss3_8015AFE0) # $at, 0x8016
/* 0E5C4C 800EB59C A422AFE0 */  sh    $v0, %lo(bss3_8015AFE0)($at)
/* 0E5C50 800EB5A0 3C018016 */  lui   $at, %hi(bss3_8015AFEC) # $at, 0x8016
/* 0E5C54 800EB5A4 A422AFEC */  sh    $v0, %lo(bss3_8015AFEC)($at)
/* 0E5C58 800EB5A8 3C018016 */  lui   $at, %hi(bss3_8015AFEE) # $at, 0x8016
/* 0E5C5C 800EB5AC A420AFEE */  sh    $zero, %lo(bss3_8015AFEE)($at)

.L3_800EB5B0:
/* 0E5C60 800EB5B0 3C028016 */  lui   $v0, %hi(bss3_8015B1B0) # $v0, 0x8016
/* 0E5C64 800EB5B4 2442B1B0 */  addiu $v0, %lo(bss3_8015B1B0) # addiu $v0, $v0, -0x4e50
/* 0E5C68 800EB5B8 02628021 */  addu  $s0, $s3, $v0
/* 0E5C6C 800EB5BC 02002021 */  addu  $a0, $s0, $zero
/* 0E5C70 800EB5C0 0C03A43C */  jal   func3_800E90F0
/* 0E5C74 800EB5C4 24050002 */   li    $a1, 2

/* 0E5C78 800EB5C8 02202021 */  addu  $a0, $s1, $zero
/* 0E5C7C 800EB5CC 0C03A43C */  jal   func3_800E90F0
/* 0E5C80 800EB5D0 24050002 */   li    $a1, 2

/* 0E5C84 800EB5D4 3C068015 */  lui   $a2, %hi(tbl_SmallTimerMessages2)
/* 0E5C88 800EB5D8 00D23021 */  addu  $a2, $a2, $s2
/* 0E5C8C 800EB5DC 84C61C08 */  lh    $a2, %lo(tbl_SmallTimerMessages2)($a2)
/* 0E5C90 800EB5E0 18C00077 */  blez  $a2, .L3_800EB7C0
/* 0E5C94 800EB5E4 00C02821 */   addu  $a1, $a2, $zero

/* 0E5C98 800EB5E8 02002021 */  addu  $a0, $s0, $zero
/* 0E5C9C 800EB5EC 24A50001 */  addiu $a1, $a1, 1
/* 0E5CA0 800EB5F0 00052C00 */  sll   $a1, $a1, 0x10
/* 0E5CA4 800EB5F4 0C00313C */  jal   func_8000C4F0
/* 0E5CA8 800EB5F8 00052C03 */   sra   $a1, $a1, 0x10

/* 0E5CAC 800EB5FC 00004021 */  addu  $t0, $zero, $zero
/* 0E5CB0 800EB600 00002821 */  addu  $a1, $zero, $zero
/* 0E5CB4 800EB604 8E070024 */  lw    $a3, 0x24($s0)
/* 0E5CB8 800EB608 00003021 */  addu  $a2, $zero, $zero

.L3_800EB60C:
/* 0E5CBC 800EB60C 94E20000 */  lhu   $v0, ($a3)
/* 0E5CC0 800EB610 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5CC4 800EB614 10540011 */  beq   $v0, $s4, .L3_800EB65C
/* 0E5CC8 800EB618 24E70002 */   addiu $a3, $a3, 2

/* 0E5CCC 800EB61C 00002021 */  addu  $a0, $zero, $zero
/* 0E5CD0 800EB620 00404821 */  addu  $t1, $v0, $zero

.L3_800EB624:
/* 0E5CD4 800EB624 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E5CD8 800EB628 00441021 */  addu  $v0, $v0, $a0
/* 0E5CDC 800EB62C 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E5CE0 800EB630 00491007 */  srav  $v0, $t1, $v0
/* 0E5CE4 800EB634 3043001F */  andi  $v1, $v0, 0x1f
/* 0E5CE8 800EB638 0103102A */  slt   $v0, $t0, $v1
/* 0E5CEC 800EB63C 50400004 */  beql  $v0, $zero, .L3_800EB650
/* 0E5CF0 800EB640 24840001 */   addiu $a0, $a0, 1

/* 0E5CF4 800EB644 00604021 */  addu  $t0, $v1, $zero
/* 0E5CF8 800EB648 00802821 */  addu  $a1, $a0, $zero
/* 0E5CFC 800EB64C 24840001 */  addiu $a0, $a0, 1

.L3_800EB650:
/* 0E5D00 800EB650 2C820003 */  sltiu $v0, $a0, 3
/* 0E5D04 800EB654 1440FFF3 */  bnez  $v0, .L3_800EB624
/* 0E5D08 800EB658 00000000 */   nop   

.L3_800EB65C:
/* 0E5D0C 800EB65C 24C60001 */  addiu $a2, $a2, 1
/* 0E5D10 800EB660 2CC20010 */  sltiu $v0, $a2, 0x10
/* 0E5D14 800EB664 1440FFE9 */  bnez  $v0, .L3_800EB60C
/* 0E5D18 800EB668 00000000 */   nop   

/* 0E5D1C 800EB66C 8E040024 */  lw    $a0, 0x24($s0)
/* 0E5D20 800EB670 0C004213 */  jal   func_8001084C
/* 0E5D24 800EB674 30A500FF */   andi  $a1, $a1, 0xff

/* 0E5D28 800EB678 8E020018 */  lw    $v0, 0x18($s0)
/* 0E5D2C 800EB67C 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* 0E5D30 800EB680 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 0E5D34 800EB684 3C060050 */  lui   $a2, (0x00504240 >> 16) # lui $a2, 0x50
/* 0E5D38 800EB688 34C64240 */  ori   $a2, (0x00504240 & 0xFFFF) # ori $a2, $a2, 0x4240
/* 0E5D3C 800EB68C 3C07FC12 */  lui   $a3, (0xFC121824 >> 16) # lui $a3, 0xfc12
/* 0E5D40 800EB690 34E71824 */  ori   $a3, (0xFC121824 & 0xFFFF) # ori $a3, $a3, 0x1824
/* 0E5D44 800EB694 3C04FF33 */  lui   $a0, %hi(0xFF330001) # $a0, 0xff33
/* 0E5D48 800EB698 3484FFFF */  ori   $a0, (0xFF33FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0E5D4C 800EB69C 3C05E300 */  lui   $a1, (0xE3000A01 >> 16) # lui $a1, 0xe300
/* 0E5D50 800EB6A0 34A50A01 */  ori   $a1, (0xE3000A01 & 0xFFFF) # ori $a1, $a1, 0xa01
/* 0E5D54 800EB6A4 00401821 */  addu  $v1, $v0, $zero
/* 0E5D58 800EB6A8 24420008 */  addiu $v0, $v0, 8
/* 0E5D5C 800EB6AC AC680000 */  sw    $t0, ($v1)
/* 0E5D60 800EB6B0 AC660004 */  sw    $a2, 4($v1)
/* 0E5D64 800EB6B4 AC470000 */  sw    $a3, ($v0)
/* 0E5D68 800EB6B8 AC440004 */  sw    $a0, 4($v0)
/* 0E5D6C 800EB6BC 24420008 */  addiu $v0, $v0, 8
/* 0E5D70 800EB6C0 AC450000 */  sw    $a1, ($v0)
/* 0E5D74 800EB6C4 AC400004 */  sw    $zero, 4($v0)
/* 0E5D78 800EB6C8 3C068015 */  lui   $a2, %hi(tbl_SmallTimerMessages1)
/* 0E5D7C 800EB6CC 00D23021 */  addu  $a2, $a2, $s2
/* 0E5D80 800EB6D0 94C61C28 */  lhu   $a2, %lo(tbl_SmallTimerMessages1)($a2)
/* 0E5D84 800EB6D4 02208021 */  addu  $s0, $s1, $zero
/* 0E5D88 800EB6D8 02202021 */  addu  $a0, $s1, $zero
/* 0E5D8C 800EB6DC 24C50001 */  addiu $a1, $a2, 1
/* 0E5D90 800EB6E0 00052C00 */  sll   $a1, $a1, 0x10
/* 0E5D94 800EB6E4 00052C03 */  sra   $a1, $a1, 0x10
/* 0E5D98 800EB6E8 00063400 */  sll   $a2, $a2, 0x10
/* 0E5D9C 800EB6EC 0C00313C */  jal   func_8000C4F0
/* 0E5DA0 800EB6F0 00063403 */   sra   $a2, $a2, 0x10

/* 0E5DA4 800EB6F4 00004021 */  addu  $t0, $zero, $zero
/* 0E5DA8 800EB6F8 00002821 */  addu  $a1, $zero, $zero
/* 0E5DAC 800EB6FC 8E270024 */  lw    $a3, 0x24($s1)
/* 0E5DB0 800EB700 00003021 */  addu  $a2, $zero, $zero

.L3_800EB704:
/* 0E5DB4 800EB704 94E20000 */  lhu   $v0, ($a3)
/* 0E5DB8 800EB708 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E5DBC 800EB70C 10540011 */  beq   $v0, $s4, .L3_800EB754
/* 0E5DC0 800EB710 24E70002 */   addiu $a3, $a3, 2

/* 0E5DC4 800EB714 00002021 */  addu  $a0, $zero, $zero
/* 0E5DC8 800EB718 00404821 */  addu  $t1, $v0, $zero

.L3_800EB71C:
/* 0E5DCC 800EB71C 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E5DD0 800EB720 00441021 */  addu  $v0, $v0, $a0
/* 0E5DD4 800EB724 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E5DD8 800EB728 00491007 */  srav  $v0, $t1, $v0
/* 0E5DDC 800EB72C 3043001F */  andi  $v1, $v0, 0x1f
/* 0E5DE0 800EB730 0103102A */  slt   $v0, $t0, $v1
/* 0E5DE4 800EB734 50400004 */  beql  $v0, $zero, .L3_800EB748
/* 0E5DE8 800EB738 24840001 */   addiu $a0, %lo(0xFF330001) # addiu $a0, $a0, 1

/* 0E5DEC 800EB73C 00604021 */  addu  $t0, $v1, $zero
/* 0E5DF0 800EB740 00802821 */  addu  $a1, $a0, $zero
/* 0E5DF4 800EB744 24840001 */  addiu $a0, $a0, 1

.L3_800EB748:
/* 0E5DF8 800EB748 2C820003 */  sltiu $v0, $a0, 3
/* 0E5DFC 800EB74C 1440FFF3 */  bnez  $v0, .L3_800EB71C
/* 0E5E00 800EB750 00000000 */   nop   

.L3_800EB754:
/* 0E5E04 800EB754 24C60001 */  addiu $a2, $a2, 1
/* 0E5E08 800EB758 2CC20010 */  sltiu $v0, $a2, 0x10
/* 0E5E0C 800EB75C 1440FFE9 */  bnez  $v0, .L3_800EB704
/* 0E5E10 800EB760 00000000 */   nop   

/* 0E5E14 800EB764 8E040024 */  lw    $a0, 0x24($s0)
/* 0E5E18 800EB768 0C004213 */  jal   func_8001084C
/* 0E5E1C 800EB76C 30A500FF */   andi  $a1, $a1, 0xff

/* 0E5E20 800EB770 8E020018 */  lw    $v0, 0x18($s0)
/* 0E5E24 800EB774 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* 0E5E28 800EB778 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 0E5E2C 800EB77C 3C060050 */  lui   $a2, (0x00504240 >> 16) # lui $a2, 0x50
/* 0E5E30 800EB780 34C64240 */  ori   $a2, (0x00504240 & 0xFFFF) # ori $a2, $a2, 0x4240
/* 0E5E34 800EB784 3C07FC12 */  lui   $a3, (0xFC121824 >> 16) # lui $a3, 0xfc12
/* 0E5E38 800EB788 34E71824 */  ori   $a3, (0xFC121824 & 0xFFFF) # ori $a3, $a3, 0x1824
/* 0E5E3C 800EB78C 3C04FF33 */  lui   $a0, (0xFF33FFFF >> 16) # lui $a0, 0xff33
/* 0E5E40 800EB790 3484FFFF */  ori   $a0, (0xFF33FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0E5E44 800EB794 3C05E300 */  lui   $a1, (0xE3000A01 >> 16) # lui $a1, 0xe300
/* 0E5E48 800EB798 34A50A01 */  ori   $a1, (0xE3000A01 & 0xFFFF) # ori $a1, $a1, 0xa01
/* 0E5E4C 800EB79C 00401821 */  addu  $v1, $v0, $zero
/* 0E5E50 800EB7A0 24420008 */  addiu $v0, $v0, 8
/* 0E5E54 800EB7A4 AC680000 */  sw    $t0, ($v1)
/* 0E5E58 800EB7A8 AC660004 */  sw    $a2, 4($v1)
/* 0E5E5C 800EB7AC AC470000 */  sw    $a3, ($v0)
/* 0E5E60 800EB7B0 AC440004 */  sw    $a0, 4($v0)
/* 0E5E64 800EB7B4 24420008 */  addiu $v0, $v0, 8
/* 0E5E68 800EB7B8 AC450000 */  sw    $a1, ($v0)
/* 0E5E6C 800EB7BC AC400004 */  sw    $zero, 4($v0)

.L3_800EB7C0:
/* 0E5E70 800EB7C0 26310034 */  addiu $s1, $s1, 0x34
/* 0E5E74 800EB7C4 26520002 */  addiu $s2, $s2, 2
/* 0E5E78 800EB7C8 2E42001E */  sltiu $v0, $s2, 0x1e
/* 0E5E7C 800EB7CC 1440FF78 */  bnez  $v0, .L3_800EB5B0
/* 0E5E80 800EB7D0 26730034 */   addiu $s3, $s3, 0x34

/* 0E5E84 800EB7D4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5E88 800EB7D8 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5E8C 800EB7DC 3C108016 */  lui   $s0, %hi(bss3_8015B0D0) # $s0, 0x8016
/* 0E5E90 800EB7E0 2610B0D0 */  addiu $s0, %lo(bss3_8015B0D0) # addiu $s0, $s0, -0x4f30
/* 0E5E94 800EB7E4 02002021 */  addu  $a0, $s0, $zero
/* 0E5E98 800EB7E8 24050005 */  li    $a1, 5
/* 0E5E9C 800EB7EC 0C000600 */  jal   func_80001800
/* 0E5EA0 800EB7F0 00C03821 */   addu  $a3, $a2, $zero

/* 0E5EA4 800EB7F4 02002021 */  addu  $a0, $s0, $zero
/* 0E5EA8 800EB7F8 0C000635 */  jal   func_800018D4
/* 0E5EAC 800EB7FC 00002821 */   addu  $a1, $zero, $zero

/* 0E5EB0 800EB800 0C00061B */  jal   func_8000186C
/* 0E5EB4 800EB804 02002021 */   addu  $a0, $s0, $zero

/* 0E5EB8 800EB808 27A40040 */  addiu $a0, $sp, 0x40
/* 0E5EBC 800EB80C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5EC0 800EB810 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E5EC4 800EB814 4481A000 */  mtc1  $at, $f20
/* 0E5EC8 800EB818 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E5ECC 800EB81C 4481B000 */  mtc1  $at, $f22
/* 0E5ED0 800EB820 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E5ED4 800EB824 4481D000 */  mtc1  $at, $f26
/* 0E5ED8 800EB828 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E5EDC 800EB82C 4481E000 */  mtc1  $at, $f28
/* 0E5EE0 800EB830 00002821 */  addu  $a1, $zero, $zero
/* 0E5EE4 800EB834 00A03821 */  addu  $a3, $a1, $zero
/* 0E5EE8 800EB838 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E5EEC 800EB83C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E5EF0 800EB840 E7BA0018 */  swc1  $f26, 0x18($sp)
/* 0E5EF4 800EB844 0C00C5A4 */  jal   guOrthoF
/* 0E5EF8 800EB848 E7BC001C */   swc1  $f28, 0x1c($sp)

/* 0E5EFC 800EB84C AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5F00 800EB850 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5F04 800EB854 4406A000 */  mfc1  $a2, $f20
/* 0E5F08 800EB858 4407B000 */  mfc1  $a3, $f22
/* 0E5F0C 800EB85C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5F10 800EB860 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5F14 800EB864 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E5F18 800EB868 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E5F1C 800EB86C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E5F20 800EB870 0C00C3E0 */  jal   guLookAtF
/* 0E5F24 800EB874 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E5F28 800EB878 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5F2C 800EB87C 27A50040 */  addiu $a1, $sp, 0x40
/* 0E5F30 800EB880 0C000842 */  jal   func_80002108
/* 0E5F34 800EB884 2606009C */   addiu $a2, $s0, 0x9c

/* 0E5F38 800EB888 3C038016 */  lui   $v1, %hi(bss3_8015B0E4) # $v1, 0x8016
/* 0E5F3C 800EB88C 8C63B0E4 */  lw    $v1, %lo(bss3_8015B0E4)($v1)
/* 0E5F40 800EB890 24110001 */  li    $s1, 1
/* 0E5F44 800EB894 3C018016 */  lui   $at, %hi(bss3_8015B0E9) # $at, 0x8016
/* 0E5F48 800EB898 A031B0E9 */  sb    $s1, %lo(bss3_8015B0E9)($at)
/* 0E5F4C 800EB89C 8C620000 */  lw    $v0, ($v1)
/* 0E5F50 800EB8A0 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E5F54 800EB8A4 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E5F58 800EB8A8 4481C000 */  mtc1  $at, $f24
/* 0E5F5C 800EB8AC 34420080 */  ori   $v0, $v0, 0x80
/* 0E5F60 800EB8B0 AC620000 */  sw    $v0, ($v1)
/* 0E5F64 800EB8B4 3C028016 */  lui   $v0, %hi(bss3_8015B0E4) # $v0, 0x8016
/* 0E5F68 800EB8B8 8C42B0E4 */  lw    $v0, %lo(bss3_8015B0E4)($v0)
/* 0E5F6C 800EB8BC E4580024 */  swc1  $f24, 0x24($v0)
/* 0E5F70 800EB8C0 3C028016 */  lui   $v0, %hi(bss3_8015B0E4) # $v0, 0x8016
/* 0E5F74 800EB8C4 8C42B0E4 */  lw    $v0, %lo(bss3_8015B0E4)($v0)
/* 0E5F78 800EB8C8 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E5F7C 800EB8CC 44812000 */  mtc1  $at, $f4
/* 0E5F80 800EB8D0 3C108016 */  lui   $s0, %hi(bss3_8015AFF0) # $s0, 0x8016
/* 0E5F84 800EB8D4 2610AFF0 */  addiu $s0, %lo(bss3_8015AFF0) # addiu $s0, $s0, -0x5010
/* 0E5F88 800EB8D8 E4440020 */  swc1  $f4, 0x20($v0)
/* 0E5F8C 800EB8DC AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5F90 800EB8E0 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E5F94 800EB8E4 02002021 */  addu  $a0, $s0, $zero
/* 0E5F98 800EB8E8 24050005 */  li    $a1, 5
/* 0E5F9C 800EB8EC 0C000600 */  jal   func_80001800
/* 0E5FA0 800EB8F0 00C03821 */   addu  $a3, $a2, $zero

/* 0E5FA4 800EB8F4 02002021 */  addu  $a0, $s0, $zero
/* 0E5FA8 800EB8F8 0C000635 */  jal   func_800018D4
/* 0E5FAC 800EB8FC 00002821 */   addu  $a1, $zero, $zero

/* 0E5FB0 800EB900 0C00061B */  jal   func_8000186C
/* 0E5FB4 800EB904 02002021 */   addu  $a0, $s0, $zero

/* 0E5FB8 800EB908 27A40040 */  addiu $a0, $sp, 0x40
/* 0E5FBC 800EB90C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E5FC0 800EB910 00002821 */  addu  $a1, $zero, $zero
/* 0E5FC4 800EB914 00A03821 */  addu  $a3, $a1, $zero
/* 0E5FC8 800EB918 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E5FCC 800EB91C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E5FD0 800EB920 E7BA0018 */  swc1  $f26, 0x18($sp)
/* 0E5FD4 800EB924 0C00C5A4 */  jal   guOrthoF
/* 0E5FD8 800EB928 E7BC001C */   swc1  $f28, 0x1c($sp)

/* 0E5FDC 800EB92C AFA00024 */  sw    $zero, 0x24($sp)
/* 0E5FE0 800EB930 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E5FE4 800EB934 4406A000 */  mfc1  $a2, $f20
/* 0E5FE8 800EB938 4407B000 */  mfc1  $a3, $f22
/* 0E5FEC 800EB93C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E5FF0 800EB940 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E5FF4 800EB944 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E5FF8 800EB948 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E5FFC 800EB94C AFA60014 */  sw    $a2, 0x14($sp)
/* 0E6000 800EB950 0C00C3E0 */  jal   guLookAtF
/* 0E6004 800EB954 AFA70020 */   sw    $a3, 0x20($sp)

/* 0E6008 800EB958 27A40080 */  addiu $a0, $sp, 0x80
/* 0E600C 800EB95C 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6010 800EB960 0C000842 */  jal   func_80002108
/* 0E6014 800EB964 2606009C */   addiu $a2, $s0, 0x9c

/* 0E6018 800EB968 3C038016 */  lui   $v1, %hi(bss3_8015B004) # $v1, 0x8016
/* 0E601C 800EB96C 8C63B004 */  lw    $v1, %lo(bss3_8015B004)($v1)
/* 0E6020 800EB970 3C018016 */  lui   $at, %hi(bss3_8015B009) # $at, 0x8016
/* 0E6024 800EB974 A031B009 */  sb    $s1, %lo(bss3_8015B009)($at)
/* 0E6028 800EB978 8C620000 */  lw    $v0, ($v1)
/* 0E602C 800EB97C 34420080 */  ori   $v0, $v0, 0x80
/* 0E6030 800EB980 AC620000 */  sw    $v0, ($v1)
/* 0E6034 800EB984 3C028016 */  lui   $v0, %hi(bss3_8015B004) # $v0, 0x8016
/* 0E6038 800EB988 8C42B004 */  lw    $v0, %lo(bss3_8015B004)($v0)
/* 0E603C 800EB98C 0000A021 */  addu  $s4, $zero, $zero
/* 0E6040 800EB990 3C11039B */  lui   $s1, 0x39B # file ID of first combo meter image
/* 0E6044 800EB994 E4580024 */  swc1  $f24, 0x24($v0)
/* 0E6048 800EB998 3C038016 */  lui   $v1, %hi(bss3_8015B004) # $v1, 0x8016
/* 0E604C 800EB99C 8C63B004 */  lw    $v1, %lo(bss3_8015B004)($v1)
/* 0E6050 800EB9A0 3C108016 */  lui   $s0, %hi(bss3_8015D138) # $s0, 0x8016
/* 0E6054 800EB9A4 2610D138 */  addiu $s0, %lo(bss3_8015D138) # addiu $s0, $s0, -0x2ec8
/* 0E6058 800EB9A8 2402FFFF */  li    $v0, -1
/* 0E605C 800EB9AC 3C018016 */  lui   $at, %hi(bss3_8015B7CC) # $at, 0x8016
/* 0E6060 800EB9B0 A422B7CC */  sh    $v0, %lo(bss3_8015B7CC)($at)
/* 0E6064 800EB9B4 3C018016 */  lui   $at, %hi(bss3_8015B7D0) # $at, 0x8016
/* 0E6068 800EB9B8 A422B7D0 */  sh    $v0, %lo(bss3_8015B7D0)($at)
/* 0E606C 800EB9BC 3C018016 */  lui   $at, %hi(bss3_8015B7D2) # $at, 0x8016
/* 0E6070 800EB9C0 A422B7D2 */  sh    $v0, %lo(bss3_8015B7D2)($at)
/* 0E6074 800EB9C4 3C018016 */  lui   $at, %hi(bss3_8015B7D4) # $at, 0x8016
/* 0E6078 800EB9C8 A422B7D4 */  sh    $v0, %lo(bss3_8015B7D4)($at)
/* 0E607C 800EB9CC 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E6080 800EB9D0 44812000 */  mtc1  $at, $f4
/* 0E6084 800EB9D4 00000000 */  nop   
/* 0E6088 800EB9D8 E4640020 */  swc1  $f4, 0x20($v1)

.L3_800EB9DC:
/* 0E608C 800EB9DC 02002021 */  addu  $a0, $s0, $zero
/* 0E6090 800EB9E0 00112C03 */  sra   $a1, $s1, 0x10
/* 0E6094 800EB9E4 0C003DF0 */  jal   func_8000F7C0
/* 0E6098 800EB9E8 240603AF */   li    $a2, 0x03AF # file ID 0x3AF: combo meter palette

/* 0E609C 800EB9EC 3C020001 */  lui   $v0, 1
/* 0E60A0 800EB9F0 02228821 */  addu  $s1, $s1, $v0
/* 0E60A4 800EB9F4 26940001 */  addiu $s4, $s4, 1
/* 0E60A8 800EB9F8 2E820014 */  sltiu $v0, $s4, 0x14
/* 0E60AC 800EB9FC 1440FFF7 */  bnez  $v0, .L3_800EB9DC
/* 0E60B0 800EBA00 26100008 */   addiu $s0, $s0, 8

/* 0E60B4 800EBA04 0000A021 */  addu  $s4, $zero, $zero
/* 0E60B8 800EBA08 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E60BC 800EBA0C 4481B000 */  mtc1  $at, $f22
/* 0E60C0 800EBA10 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E60C4 800EBA14 4481A000 */  mtc1  $at, $f20
/* 0E60C8 800EBA18 00009021 */  addu  $s2, $zero, $zero
/* 0E60CC 800EBA1C 00008821 */  addu  $s1, $zero, $zero

.L3_800EBA20:
/* 0E60D0 800EBA20 3C048016 */  lui   $a0, %hi(bss3_8015D1D8) # $a0, 0x8016
/* 0E60D4 800EBA24 2484D1D8 */  addiu $a0, %lo(bss3_8015D1D8) # addiu $a0, $a0, -0x2e28
/* 0E60D8 800EBA28 02242021 */  addu  $a0, $s1, $a0
/* 0E60DC 800EBA2C 0C03A43C */  jal   func3_800E90F0
/* 0E60E0 800EBA30 24050001 */   li    $a1, 1

/* 0E60E4 800EBA34 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E60E8 800EBA38 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E60EC 800EBA3C 3C108016 */  lui   $s0, %hi(bss3_8015CDC8) # $s0, 0x8016
/* 0E60F0 800EBA40 2610CDC8 */  addiu $s0, %lo(bss3_8015CDC8) # addiu $s0, $s0, -0x3238
/* 0E60F4 800EBA44 02508021 */  addu  $s0, $s2, $s0
/* 0E60F8 800EBA48 02002021 */  addu  $a0, $s0, $zero
/* 0E60FC 800EBA4C 24050005 */  li    $a1, 5
/* 0E6100 800EBA50 0C000600 */  jal   func_80001800
/* 0E6104 800EBA54 00C03821 */   addu  $a3, $a2, $zero

/* 0E6108 800EBA58 02002021 */  addu  $a0, $s0, $zero
/* 0E610C 800EBA5C 0C000635 */  jal   func_800018D4
/* 0E6110 800EBA60 00002821 */   addu  $a1, $zero, $zero

/* 0E6114 800EBA64 0C00061B */  jal   func_8000186C
/* 0E6118 800EBA68 02002021 */   addu  $a0, $s0, $zero

/* 0E611C 800EBA6C 27A40040 */  addiu $a0, $sp, 0x40
/* 0E6120 800EBA70 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6124 800EBA74 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E6128 800EBA78 44810000 */  mtc1  $at, $f0
/* 0E612C 800EBA7C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E6130 800EBA80 44811000 */  mtc1  $at, $f2
/* 0E6134 800EBA84 00002821 */  addu  $a1, $zero, $zero
/* 0E6138 800EBA88 00A03821 */  addu  $a3, $a1, $zero
/* 0E613C 800EBA8C E7B60010 */  swc1  $f22, 0x10($sp)
/* 0E6140 800EBA90 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E6144 800EBA94 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E6148 800EBA98 0C00C5A4 */  jal   guOrthoF
/* 0E614C 800EBA9C E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E6150 800EBAA0 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E6154 800EBAA4 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E6158 800EBAA8 4406B000 */  mfc1  $a2, $f22
/* 0E615C 800EBAAC 4407A000 */  mfc1  $a3, $f20
/* 0E6160 800EBAB0 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6164 800EBAB4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6168 800EBAB8 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E616C 800EBABC AFA00018 */  sw    $zero, 0x18($sp)
/* 0E6170 800EBAC0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E6174 800EBAC4 0C00C3E0 */  jal   guLookAtF
/* 0E6178 800EBAC8 E7B40020 */   swc1  $f20, 0x20($sp)

/* 0E617C 800EBACC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6180 800EBAD0 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6184 800EBAD4 0C000842 */  jal   func_80002108
/* 0E6188 800EBAD8 2606009C */   addiu $a2, $s0, 0x9c

/* 0E618C 800EBADC 8E030014 */  lw    $v1, 0x14($s0)
/* 0E6190 800EBAE0 24020001 */  li    $v0, 1
/* 0E6194 800EBAE4 A2020019 */  sb    $v0, 0x19($s0)
/* 0E6198 800EBAE8 8C620000 */  lw    $v0, ($v1)
/* 0E619C 800EBAEC 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E61A0 800EBAF0 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E61A4 800EBAF4 44810000 */  mtc1  $at, $f0
/* 0E61A8 800EBAF8 34420080 */  ori   $v0, $v0, 0x80
/* 0E61AC 800EBAFC AC620000 */  sw    $v0, ($v1)
/* 0E61B0 800EBB00 8E020014 */  lw    $v0, 0x14($s0)
/* 0E61B4 800EBB04 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E61B8 800EBB08 8E020014 */  lw    $v0, 0x14($s0)
/* 0E61BC 800EBB0C 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E61C0 800EBB10 44810000 */  mtc1  $at, $f0
/* 0E61C4 800EBB14 265200DC */  addiu $s2, $s2, 0xdc
/* 0E61C8 800EBB18 E4400020 */  swc1  $f0, 0x20($v0)
/* 0E61CC 800EBB1C 2402FFFF */  li    $v0, -1
/* 0E61D0 800EBB20 3C018016 */  lui   $at, %hi(bss3_8015D2A8)
/* 0E61D4 800EBB24 00340821 */  addu  $at, $at, $s4
/* 0E61D8 800EBB28 A022D2A8 */  sb    $v0, %lo(bss3_8015D2A8)($at)
/* 0E61DC 800EBB2C 26940001 */  addiu $s4, $s4, 1
/* 0E61E0 800EBB30 2E820004 */  sltiu $v0, $s4, 4
/* 0E61E4 800EBB34 1440FFBA */  bnez  $v0, .L3_800EBA20
/* 0E61E8 800EBB38 26310034 */   addiu $s1, $s1, 0x34

/* 0E61EC 800EBB3C 00001821 */  addu  $v1, $zero, $zero

.L3_800EBB40:
/* 0E61F0 800EBB40 3C018016 */  lui   $at, %hi(bss3_8015BB78)
/* 0E61F4 800EBB44 00230821 */  addu  $at, $at, $v1
/* 0E61F8 800EBB48 AC20BB78 */  sw    $zero, %lo(bss3_8015BB78)($at)
/* 0E61FC 800EBB4C 3C018016 */  lui   $at, %hi(bss3_8015BB7C)
/* 0E6200 800EBB50 00230821 */  addu  $at, $at, $v1
/* 0E6204 800EBB54 AC20BB7C */  sw    $zero, %lo(bss3_8015BB7C)($at)
/* 0E6208 800EBB58 24630008 */  addiu $v1, $v1, 8
/* 0E620C 800EBB5C 2C620020 */  sltiu $v0, $v1, 0x20
/* 0E6210 800EBB60 1440FFF7 */  bnez  $v0, .L3_800EBB40
/* 0E6214 800EBB64 240503CA */   li    $a1, 0x3CA # file ID 0x3CA: spirit meter com left

/* 0E6218 800EBB68 3C108016 */  lui   $s0, %hi(bss3_8015BB98) # $s0, 0x8016
/* 0E621C 800EBB6C 2610BB98 */  addiu $s0, %lo(bss3_8015BB98) # addiu $s0, $s0, -0x4468
/* 0E6220 800EBB70 02002021 */  addu  $a0, $s0, $zero
/* 0E6224 800EBB74 0C003DF0 */  jal   func_8000F7C0
/* 0E6228 800EBB78 240603C0 */   li    $a2, 0x3C0 # file ID 0x3C0: spirit meter gray palette normal

/* 0E622C 800EBB7C 26040008 */  addiu $a0, $s0, 8
/* 0E6230 800EBB80 240503CB */  li    $a1, 0x3CB # file ID 0x3CB: spirit meter com right
/* 0E6234 800EBB84 0C003DF0 */  jal   func_8000F7C0
/* 0E6238 800EBB88 240603C0 */   li    $a2, 0x3C0 # file ID 0x3C0: spirit meter gray palette normal

/* 0E623C 800EBB8C 0000A021 */  addu  $s4, $zero, $zero
/* 0E6240 800EBB90 3C128015 */  lui   $s2, %hi(tbl_SpiritMeter_FramePalettes) # $s2, 0x8015
/* 0E6244 800EBB94 26521E78 */  addiu $s2, %lo(tbl_SpiritMeter_FramePalettes) # addiu $s2, $s2, 0x1e78
/* 0E6248 800EBB98 3C118016 */  lui   $s1, %hi(bss3_8015BBA8) # $s1, 0x8016
/* 0E624C 800EBB9C 2631BBA8 */  addiu $s1, %lo(bss3_8015BBA8) # addiu $s1, $s1, -0x4458
/* 0E6250 800EBBA0 00008021 */  addu  $s0, $zero, $zero
/* 0E6254 800EBBA4 02202021 */  addu  $a0, $s1, $zero

.L3_800EBBA8:
/* 0E6258 800EBBA8 00002821 */  addu  $a1, $zero, $zero
/* 0E625C 800EBBAC 3C018016 */  lui   $at, %hi(bss3_8015BBA8)
/* 0E6260 800EBBB0 00300821 */  addu  $at, $at, $s0
/* 0E6264 800EBBB4 AC20BBA8 */  sw    $zero, %lo(bss3_8015BBA8)($at)
/* 0E6268 800EBBB8 86460000 */  lh    $a2, ($s2)
/* 0E626C 800EBBBC 26520002 */  addiu $s2, $s2, 2
/* 0E6270 800EBBC0 26310008 */  addiu $s1, $s1, 8
/* 0E6274 800EBBC4 26100008 */  addiu $s0, $s0, 8
/* 0E6278 800EBBC8 0C003DF0 */  jal   func_8000F7C0
/* 0E627C 800EBBCC 26940001 */   addiu $s4, $s4, 1

/* 0E6280 800EBBD0 2E820014 */  sltiu $v0, $s4, 0x14
/* 0E6284 800EBBD4 1440FFF4 */  bnez  $v0, .L3_800EBBA8
/* 0E6288 800EBBD8 02202021 */   addu  $a0, $s1, $zero

/* 0E628C 800EBBDC 3C048016 */  lui   $a0, %hi(bss3_8015C090) # $a0, 0x8016
/* 0E6290 800EBBE0 2484C090 */  addiu $a0, %lo(bss3_8015C090) # addiu $a0, $a0, -0x3f70
/* 0E6294 800EBBE4 240503CD */  li    $a1, 0x3CD # file ID 0x3CD (special 2 texture)
/* 0E6298 800EBBE8 0C003DF0 */  jal   func_8000F7C0
/* 0E629C 800EBBEC 240603CC */   li    $a2, 0x3CC # file ID 0x3CC (special 2 palette)

/* 0E62A0 800EBBF0 3C048016 */  lui   $a0, %hi(bss3_8015C098) # $a0, 0x8016
/* 0E62A4 800EBBF4 2484C098 */  addiu $a0, %lo(bss3_8015C098) # addiu $a0, $a0, -0x3f68
/* 0E62A8 800EBBF8 240503CF */  li    $a1, 0x3CF # file ID 0x3CF (special texture)
/* 0E62AC 800EBBFC 0C003DF0 */  jal   func_8000F7C0
/* 0E62B0 800EBC00 240603CE */   li    $a2, 0x3CE # file ID 0x3CE (special palette)

/* 0E62B4 800EBC04 3C048016 */  lui   $a0, %hi(bss3_8015C0A0) # $a0, 0x8016
/* 0E62B8 800EBC08 2484C0A0 */  addiu $a0, %lo(bss3_8015C0A0) # addiu $a0, $a0, -0x3f60
/* 0E62BC 800EBC0C 240503D1 */  li    $a1, 0x3D1 # file ID 0x3D1 (danger texture)
/* 0E62C0 800EBC10 0C003DF0 */  jal   func_8000F7C0
/* 0E62C4 800EBC14 240603D0 */   li    $a2, 0x3D0 # file ID 0x3D0 (danger palette)

/* 0E62C8 800EBC18 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E62CC 800EBC1C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E62D0 800EBC20 30428000 */  andi  $v0, $v0, 0x8000 # attract mode/demo flag
/* 0E62D4 800EBC24 14400015 */  bnez  $v0, .L3_800EBC7C
/* 0E62D8 800EBC28 0000A021 */   addu  $s4, $zero, $zero

/* 0E62DC 800EBC2C 3C118015 */  lui   $s1, %hi(D_80151E5C) # $s1, 0x8015
/* 0E62E0 800EBC30 26311E5C */  addiu $s1, %lo(D_80151E5C) # addiu $s1, $s1, 0x1e5c
/* 0E62E4 800EBC34 3C108016 */  lui   $s0, %hi(bss3_8015C318) # $s0, 0x8016
/* 0E62E8 800EBC38 2610C318 */  addiu $s0, %lo(bss3_8015C318) # addiu $s0, $s0, -0x3ce8
/* 0E62EC 800EBC3C 02002021 */  addu  $a0, $s0, $zero

.L3_800EBC40:
/* 0E62F0 800EBC40 96260000 */  lhu   $a2, ($s1)
/* 0E62F4 800EBC44 26310002 */  addiu $s1, $s1, 2
/* 0E62F8 800EBC48 26100008 */  addiu $s0, $s0, 8
/* 0E62FC 800EBC4C 26940001 */  addiu $s4, $s4, 1
/* 0E6300 800EBC50 24C50001 */  addiu $a1, $a2, 1
/* 0E6304 800EBC54 00052C00 */  sll   $a1, $a1, 0x10
/* 0E6308 800EBC58 00052C03 */  sra   $a1, $a1, 0x10
/* 0E630C 800EBC5C 00063400 */  sll   $a2, $a2, 0x10
/* 0E6310 800EBC60 0C003DF0 */  jal   func_8000F7C0
/* 0E6314 800EBC64 00063403 */   sra   $a2, $a2, 0x10

/* 0E6318 800EBC68 2E820002 */  sltiu $v0, $s4, 2
/* 0E631C 800EBC6C 1440FFF4 */  bnez  $v0, .L3_800EBC40
/* 0E6320 800EBC70 02002021 */   addu  $a0, $s0, $zero

/* 0E6324 800EBC74 0803AF31 */  j     .L3_800EBCC4
/* 0E6328 800EBC78 00000000 */   nop   

.L3_800EBC7C:
/* 0E632C 800EBC7C 3C118015 */  lui   $s1, %hi(D_80151E60) # $s1, 0x8015
/* 0E6330 800EBC80 26311E60 */  addiu $s1, %lo(D_80151E60) # addiu $s1, $s1, 0x1e60
/* 0E6334 800EBC84 3C108016 */  lui   $s0, %hi(bss3_8015C318) # $s0, 0x8016
/* 0E6338 800EBC88 2610C318 */  addiu $s0, %lo(bss3_8015C318) # addiu $s0, $s0, -0x3ce8
/* 0E633C 800EBC8C 02002021 */  addu  $a0, $s0, $zero

.L3_800EBC90:
/* 0E6340 800EBC90 96260000 */  lhu   $a2, ($s1)
/* 0E6344 800EBC94 26310002 */  addiu $s1, $s1, 2
/* 0E6348 800EBC98 26100008 */  addiu $s0, $s0, 8
/* 0E634C 800EBC9C 26940001 */  addiu $s4, $s4, 1
/* 0E6350 800EBCA0 24C50001 */  addiu $a1, $a2, 1
/* 0E6354 800EBCA4 00052C00 */  sll   $a1, $a1, 0x10
/* 0E6358 800EBCA8 00052C03 */  sra   $a1, $a1, 0x10
/* 0E635C 800EBCAC 00063400 */  sll   $a2, $a2, 0x10
/* 0E6360 800EBCB0 0C003DF0 */  jal   func_8000F7C0
/* 0E6364 800EBCB4 00063403 */   sra   $a2, $a2, 0x10

/* 0E6368 800EBCB8 2E820002 */  sltiu $v0, $s4, 2
/* 0E636C 800EBCBC 1440FFF4 */  bnez  $v0, .L3_800EBC90
/* 0E6370 800EBCC0 02002021 */   addu  $a0, $s0, $zero

.L3_800EBCC4:
/* 0E6374 800EBCC4 3C02800A */  lui   $v0, %hi(bssMain_800A44D8) # $v0, 0x800a
/* 0E6378 800EBCC8 8C4244D8 */  lw    $v0, %lo(bssMain_800A44D8)($v0)
/* 0E637C 800EBCCC 3C030001 */  lui   $v1, 1 # Martial Arts match ruleset
/* 0E6380 800EBCD0 00431024 */  and   $v0, $v0, $v1
/* 0E6384 800EBCD4 10400016 */  beqz  $v0, .L3_800EBD30
/* 0E6388 800EBCD8 0000A021 */   addu  $s4, $zero, $zero


/* 0E638C 800EBCDC 3C138016 */  lui   $s3, %hi(bss3_8015C7E8) # $s3, 0x8016
/* 0E6390 800EBCE0 2673C7E8 */  addiu $s3, %lo(bss3_8015C7E8) # addiu $s3, $s3, -0x3818
/* 0E6394 800EBCE4 3C120418 */  lui   $s2, 0x418 # file ID 0x418: start of MMA points meter numbers
/* 0E6398 800EBCE8 3C118016 */  lui   $s1, %hi(bss3_8015C768) # $s1, 0x8016
/* 0E639C 800EBCEC 2631C768 */  addiu $s1, %lo(bss3_8015C768) # addiu $s1, $s1, -0x3898

.L3_800EBCF0:
/* 0E63A0 800EBCF0 02202021 */  addu  $a0, $s1, $zero
/* 0E63A4 800EBCF4 00128403 */  sra   $s0, $s2, 0x10
/* 0E63A8 800EBCF8 02002821 */  addu  $a1, $s0, $zero
/* 0E63AC 800EBCFC 0C003DF0 */  jal   func_8000F7C0
/* 0E63B0 800EBD00 24060417 */   li    $a2, 0x417 # file ID 0x417: MMA points meter blue palette

/* 0E63B4 800EBD04 02602021 */  addu  $a0, $s3, $zero
/* 0E63B8 800EBD08 02002821 */  addu  $a1, $s0, $zero
/* 0E63BC 800EBD0C 0C003DF0 */  jal   func_8000F7C0
/* 0E63C0 800EBD10 24060416 */   li    $a2, 0x416 # file ID 0x416: MMA points meter red palette

/* 0E63C4 800EBD14 26730008 */  addiu $s3, $s3, 8
/* 0E63C8 800EBD18 3C020001 */  lui   $v0, 1
/* 0E63CC 800EBD1C 02429021 */  addu  $s2, $s2, $v0
/* 0E63D0 800EBD20 26940001 */  addiu $s4, $s4, 1
/* 0E63D4 800EBD24 2E820010 */  sltiu $v0, $s4, 0x10
/* 0E63D8 800EBD28 1440FFF1 */  bnez  $v0, .L3_800EBCF0
/* 0E63DC 800EBD2C 26310008 */   addiu $s1, $s1, 8


.L3_800EBD30:
/* 0E63E0 800EBD30 3C118016 */  lui   $s1, %hi(bss3_8015C950) # $s1, 0x8016
/* 0E63E4 800EBD34 2631C950 */  addiu $s1, %lo(bss3_8015C950) # addiu $s1, $s1, -0x36b0
/* 0E63E8 800EBD38 02202021 */  addu  $a0, $s1, $zero
/* 0E63EC 800EBD3C 0C03A43C */  jal   func3_800E90F0
/* 0E63F0 800EBD40 24050001 */   li    $a1, 1

/* 0E63F4 800EBD44 3C108016 */  lui   $s0, %hi(bss3_8015C870) # $s0, 0x8016
/* 0E63F8 800EBD48 2610C870 */  addiu $s0, %lo(bss3_8015C870) # addiu $s0, $s0, -0x3790
/* 0E63FC 800EBD4C 02002021 */  addu  $a0, $s0, $zero
/* 0E6400 800EBD50 24050005 */  li    $a1, 5
/* 0E6404 800EBD54 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6408 800EBD58 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E640C 800EBD5C 0000A021 */  addu  $s4, $zero, $zero
/* 0E6410 800EBD60 241E0001 */  li    $fp, 1
/* 0E6414 800EBD64 3C17800A */  lui   $s7, %hi(bssMain_800A0730) # $s7, 0x800a
/* 0E6418 800EBD68 26F70730 */  addiu $s7, %lo(bssMain_800A0730) # addiu $s7, $s7, 0x730
/* 0E641C 800EBD6C 0C000600 */  jal   func_80001800
/* 0E6420 800EBD70 00C03821 */   addu  $a3, $a2, $zero

/* 0E6424 800EBD74 02002021 */  addu  $a0, $s0, $zero
/* 0E6428 800EBD78 0C000635 */  jal   func_800018D4
/* 0E642C 800EBD7C 00002821 */   addu  $a1, $zero, $zero

/* 0E6430 800EBD80 0C00061B */  jal   func_8000186C
/* 0E6434 800EBD84 02002021 */   addu  $a0, $s0, $zero

/* 0E6438 800EBD88 27A40040 */  addiu $a0, $sp, 0x40
/* 0E643C 800EBD8C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6440 800EBD90 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E6444 800EBD94 4481A000 */  mtc1  $at, $f20
/* 0E6448 800EBD98 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E644C 800EBD9C 4481B000 */  mtc1  $at, $f22
/* 0E6450 800EBDA0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E6454 800EBDA4 4481C000 */  mtc1  $at, $f24
/* 0E6458 800EBDA8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E645C 800EBDAC 4481D000 */  mtc1  $at, $f26
/* 0E6460 800EBDB0 00002821 */  addu  $a1, $zero, $zero
/* 0E6464 800EBDB4 00A03821 */  addu  $a3, $a1, $zero
/* 0E6468 800EBDB8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E646C 800EBDBC E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E6470 800EBDC0 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E6474 800EBDC4 0C00C5A4 */  jal   guOrthoF
/* 0E6478 800EBDC8 E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E647C 800EBDCC AFA00024 */  sw    $zero, 0x24($sp)
/* 0E6480 800EBDD0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E6484 800EBDD4 0000B021 */  addu  $s6, $zero, $zero
/* 0E6488 800EBDD8 4406A000 */  mfc1  $a2, $f20
/* 0E648C 800EBDDC 4407B000 */  mfc1  $a3, $f22
/* 0E6490 800EBDE0 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6494 800EBDE4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6498 800EBDE8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E649C 800EBDEC AFA00018 */  sw    $zero, 0x18($sp)
/* 0E64A0 800EBDF0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E64A4 800EBDF4 0C00C3E0 */  jal   guLookAtF
/* 0E64A8 800EBDF8 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E64AC 800EBDFC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E64B0 800EBE00 27A50040 */  addiu $a1, $sp, 0x40
/* 0E64B4 800EBE04 0C000842 */  jal   func_80002108
/* 0E64B8 800EBE08 2606009C */   addiu $a2, $s0, 0x9c

/* 0E64BC 800EBE0C 3C038016 */  lui   $v1, %hi(bss3_8015C884) # $v1, 0x8016
/* 0E64C0 800EBE10 8C63C884 */  lw    $v1, %lo(bss3_8015C884)($v1)
/* 0E64C4 800EBE14 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E64C8 800EBE18 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E64CC 800EBE1C 44810000 */  mtc1  $at, $f0
/* 0E64D0 800EBE20 3C138016 */  lui   $s3, %hi(bss3_8015BB78) # $s3, 0x8016
/* 0E64D4 800EBE24 2673BB78 */  addiu $s3, %lo(bss3_8015BB78) # addiu $s3, $s3, -0x4488
/* 0E64D8 800EBE28 24020001 */  li    $v0, 1
/* 0E64DC 800EBE2C 3C018016 */  lui   $at, %hi(bss3_8015C889) # $at, 0x8016
/* 0E64E0 800EBE30 A022C889 */  sb    $v0, %lo(bss3_8015C889)($at)
/* 0E64E4 800EBE34 8C620000 */  lw    $v0, ($v1)
/* 0E64E8 800EBE38 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E64EC 800EBE3C 44811000 */  mtc1  $at, $f2
/* 0E64F0 800EBE40 00009021 */  addu  $s2, $zero, $zero
/* 0E64F4 800EBE44 34420080 */  ori   $v0, $v0, 0x80
/* 0E64F8 800EBE48 AC620000 */  sw    $v0, ($v1)
/* 0E64FC 800EBE4C 3C028016 */  lui   $v0, %hi(bss3_8015C884) # $v0, 0x8016
/* 0E6500 800EBE50 8C42C884 */  lw    $v0, %lo(bss3_8015C884)($v0)
/* 0E6504 800EBE54 3C15800A */  lui   $s5, %hi(bssMain_800A24B0) # $s5, 0x800a
/* 0E6508 800EBE58 26B524B0 */  addiu $s5, %lo(bssMain_800A24B0) # addiu $s5, $s5, 0x24b0
/* 0E650C 800EBE5C 46000786 */  mov.s $f30, $f0
/* 0E6510 800EBE60 E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E6514 800EBE64 3C028016 */  lui   $v0, %hi(bss3_8015C884) # $v0, 0x8016
/* 0E6518 800EBE68 8C42C884 */  lw    $v0, %lo(bss3_8015C884)($v0)
/* 0E651C 800EBE6C 02202021 */  addu  $a0, $s1, $zero
/* 0E6520 800EBE70 46001706 */  mov.s $f28, $f2
/* 0E6524 800EBE74 E45C0020 */  swc1  $f28, 0x20($v0)
/* 0E6528 800EBE78 3C028016 */  lui   $v0, %hi(bss3_8015C320) # $v0, 0x8016
/* 0E652C 800EBE7C 8C42C320 */  lw    $v0, %lo(bss3_8015C320)($v0)
/* 0E6530 800EBE80 3C038016 */  lui   $v1, %hi(bss3_8015C324) # $v1, 0x8016
/* 0E6534 800EBE84 8C63C324 */  lw    $v1, %lo(bss3_8015C324)($v1)
/* 0E6538 800EBE88 00002821 */  addu  $a1, $zero, $zero
/* 0E653C 800EBE8C 3C018016 */  lui   $at, %hi(bss3_8015C970) # $at, 0x8016
/* 0E6540 800EBE90 AC22C970 */  sw    $v0, %lo(bss3_8015C970)($at)
/* 0E6544 800EBE94 3C018016 */  lui   $at, %hi(bss3_8015C974) # $at, 0x8016
/* 0E6548 800EBE98 AC23C974 */  sw    $v1, %lo(bss3_8015C974)($at)
/* 0E654C 800EBE9C 0C00313C */  jal   func_8000C4F0
/* 0E6550 800EBEA0 00003021 */   addu  $a2, $zero, $zero

/* 0E6554 800EBEA4 02002021 */  addu  $a0, $s0, $zero
/* 0E6558 800EBEA8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E655C 800EBEAC 44810000 */  mtc1  $at, $f0
/* 0E6560 800EBEB0 02202821 */  addu  $a1, $s1, $zero
/* 0E6564 800EBEB4 27A60028 */  addiu $a2, $sp, 0x28
/* 0E6568 800EBEB8 24020040 */  li    $v0, 64
/* 0E656C 800EBEBC A7A20028 */  sh    $v0, 0x28($sp)
/* 0E6570 800EBEC0 24020018 */  li    $v0, 24
/* 0E6574 800EBEC4 A7A2002A */  sh    $v0, 0x2a($sp)
/* 0E6578 800EBEC8 240200FF */  li    $v0, 255
/* 0E657C 800EBECC 3C018016 */  lui   $at, %hi(bss3_8015C970) # $at, 0x8016
/* 0E6580 800EBED0 AC20C970 */  sw    $zero, %lo(bss3_8015C970)($at)
/* 0E6584 800EBED4 3C018016 */  lui   $at, %hi(bss3_8015C974) # $at, 0x8016
/* 0E6588 800EBED8 AC20C974 */  sw    $zero, %lo(bss3_8015C974)($at)
/* 0E658C 800EBEDC AFA0002C */  sw    $zero, 0x2c($sp)
/* 0E6590 800EBEE0 AFA00030 */  sw    $zero, 0x30($sp)
/* 0E6594 800EBEE4 E7BA0038 */  swc1  $f26, 0x38($sp)
/* 0E6598 800EBEE8 A3A2003C */  sb    $v0, 0x3c($sp)
/* 0E659C 800EBEEC A3A2003D */  sb    $v0, 0x3d($sp)
/* 0E65A0 800EBEF0 A3A2003E */  sb    $v0, 0x3e($sp)
/* 0E65A4 800EBEF4 A3A2003F */  sb    $v0, 0x3f($sp)
/* 0E65A8 800EBEF8 0C03A551 */  jal   func3_800E9544
/* 0E65AC 800EBEFC E7A00034 */   swc1  $f0, 0x34($sp)

# related to spirit meters?
.L3_800EBF00:
/* 0E65B0 800EBF00 3C048016 */  lui   $a0, %hi(bss3_8015BC48) # $a0, 0x8016
/* 0E65B4 800EBF04 2484BC48 */  addiu $a0, %lo(bss3_8015BC48) # addiu $a0, $a0, -0x43b8
/* 0E65B8 800EBF08 02442021 */  addu  $a0, $s2, $a0
/* 0E65BC 800EBF0C 0C03A43C */  jal   func3_800E90F0
/* 0E65C0 800EBF10 24050001 */   li    $a1, 1

/* 0E65C4 800EBF14 8EE20000 */  lw    $v0, ($s7)
/* 0E65C8 800EBF18 18400059 */  blez  $v0, .L3_800EC080
/* 0E65CC 800EBF1C 02602021 */   addu  $a0, $s3, $zero

/* 0E65D0 800EBF20 3C03800A */  lui   $v1, %hi(bssMain_800980A0) # $v1, 0x800a
/* 0E65D4 800EBF24 8C6380A0 */  lw    $v1, %lo(bssMain_800980A0)($v1)
/* 0E65D8 800EBF28 30620100 */  andi  $v0, $v1, 0x100 # singles match bit
/* 0E65DC 800EBF2C 14400039 */  bnez  $v0, .L3_800EC014
/* 0E65E0 800EBF30 30620400 */   andi  $v0, $v1, 0x400 # battle royal match bit

/* 0E65E4 800EBF34 1040001F */  beqz  $v0, .L3_800EBFB4
/* 0E65E8 800EBF38 2E820002 */   sltiu $v0, $s4, 2

/* 0E65EC 800EBF3C 1040000F */  beqz  $v0, .L3_800EBF7C
/* 0E65F0 800EBF40 00000000 */   nop   

/* 0E65F4 800EBF44 8EA20000 */  lw    $v0, ($s5)
/* 0E65F8 800EBF48 3C058015 */  lui   $a1, %hi(tbl_80151EA0)
/* 0E65FC 800EBF4C 00A22821 */  addu  $a1, $a1, $v0
/* 0E6600 800EBF50 90A51EA0 */  lbu   $a1, %lo(tbl_80151EA0)($a1)
/* 0E6604 800EBF54 00021080 */  sll   $v0, $v0, 2
/* 0E6608 800EBF58 3C068015 */  lui   $a2, %hi(tbl_SpiritMeter_FramePalettes)
/* 0E660C 800EBF5C 00C23021 */  addu  $a2, $a2, $v0
/* 0E6610 800EBF60 84C61E78 */  lh    $a2, %lo(tbl_SpiritMeter_FramePalettes)($a2)
/* 0E6614 800EBF64 00052E00 */  sll   $a1, $a1, 0x18
/* 0E6618 800EBF68 00052E03 */  sra   $a1, $a1, 0x18
/* 0E661C 800EBF6C 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID of first player spirit meter graphic
/* 0E6620 800EBF70 00052C00 */  sll   $a1, $a1, 0x10
/* 0E6624 800EBF74 0803B022 */  j     .L3_800EC088
/* 0E6628 800EBF78 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EBF7C:
/* 0E662C 800EBF7C 8EA20000 */  lw    $v0, ($s5)
/* 0E6630 800EBF80 3C058015 */  lui   $a1, %hi(tbl_80151EA8)
/* 0E6634 800EBF84 00A22821 */  addu  $a1, $a1, $v0
/* 0E6638 800EBF88 90A51EA8 */  lbu   $a1, %lo(tbl_80151EA8)($a1)
/* 0E663C 800EBF8C 00021080 */  sll   $v0, $v0, 2
/* 0E6640 800EBF90 3C068015 */  lui   $a2, %hi(tbl_SpiritMeter_FramePalettes)
/* 0E6644 800EBF94 00C23021 */  addu  $a2, $a2, $v0
/* 0E6648 800EBF98 84C61E78 */  lh    $a2, %lo(tbl_SpiritMeter_FramePalettes)($a2)
/* 0E664C 800EBF9C 00052E00 */  sll   $a1, $a1, 0x18
/* 0E6650 800EBFA0 00052E03 */  sra   $a1, $a1, 0x18
/* 0E6654 800EBFA4 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID: first player spirit meter frame
/* 0E6658 800EBFA8 00052C00 */  sll   $a1, $a1, 0x10
/* 0E665C 800EBFAC 0803B022 */  j     .L3_800EC088
/* 0E6660 800EBFB0 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EBFB4:
/* 0E6664 800EBFB4 1040000C */  beqz  $v0, .L3_800EBFE8
/* 0E6668 800EBFB8 02602021 */   addu  $a0, $s3, $zero

/* 0E666C 800EBFBC 8EA20000 */  lw    $v0, ($s5)
/* 0E6670 800EBFC0 3C058015 */  lui   $a1, %hi(tbl_80151EA0)
/* 0E6674 800EBFC4 00A22821 */  addu  $a1, $a1, $v0
/* 0E6678 800EBFC8 90A51EA0 */  lbu   $a1, %lo(tbl_80151EA0)($a1)
/* 0E667C 800EBFCC 240603B1 */  li    $a2, 0x3B1 # file ID 0x3B1: spirit meter blue palette dark
/* 0E6680 800EBFD0 00052E00 */  sll   $a1, $a1, 0x18
/* 0E6684 800EBFD4 00052E03 */  sra   $a1, $a1, 0x18
/* 0E6688 800EBFD8 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID: first player spirit meter frame
/* 0E668C 800EBFDC 00052C00 */  sll   $a1, $a1, 0x10
/* 0E6690 800EBFE0 0803B022 */  j     .L3_800EC088
/* 0E6694 800EBFE4 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EBFE8:
/* 0E6698 800EBFE8 8EA20000 */  lw    $v0, ($s5)
/* 0E669C 800EBFEC 3C058015 */  lui   $a1, %hi(tbl_80151EA8)
/* 0E66A0 800EBFF0 00A22821 */  addu  $a1, $a1, $v0
/* 0E66A4 800EBFF4 90A51EA8 */  lbu   $a1, %lo(tbl_80151EA8)($a1)
/* 0E66A8 800EBFF8 240603B5 */  li    $a2, 0x3B5 # file ID 0x3B5: spirit meter red palette dark
/* 0E66AC 800EBFFC 00052E00 */  sll   $a1, $a1, 0x18
/* 0E66B0 800EC000 00052E03 */  sra   $a1, $a1, 0x18
/* 0E66B4 800EC004 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID: first player spirit meter frame
/* 0E66B8 800EC008 00052C00 */  sll   $a1, $a1, 0x10
/* 0E66BC 800EC00C 0803B022 */  j     .L3_800EC088
/* 0E66C0 800EC010 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EC014:
/* 0E66C4 800EC014 5680000F */  bnezl $s4, .L3_800EC054
/* 0E66C8 800EC018 02602021 */   addu  $a0, $s3, $zero

/* 0E66CC 800EC01C 3C02800A */  lui   $v0, %hi(bssMain_800A24B0) # $v0, 0x800a
/* 0E66D0 800EC020 8C4224B0 */  lw    $v0, %lo(bssMain_800A24B0)($v0)
/* 0E66D4 800EC024 3C058015 */  lui   $a1, %hi(tbl_80151EA0)
/* 0E66D8 800EC028 00A22821 */  addu  $a1, $a1, $v0
/* 0E66DC 800EC02C 90A51EA0 */  lbu   $a1, %lo(tbl_80151EA0)($a1)
/* 0E66E0 800EC030 3C048016 */  lui   $a0, %hi(bss3_8015BB78) # $a0, 0x8016
/* 0E66E4 800EC034 2484BB78 */  addiu $a0, %lo(bss3_8015BB78) # addiu $a0, $a0, -0x4488
/* 0E66E8 800EC038 240603B0 */  li    $a2, 0x3B0 # file ID 0x3B0: spirit meter blue palette normal
/* 0E66EC 800EC03C 00052E00 */  sll   $a1, $a1, 0x18
/* 0E66F0 800EC040 00052E03 */  sra   $a1, $a1, 0x18
/* 0E66F4 800EC044 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID: first player spirit meter frame
/* 0E66F8 800EC048 00052C00 */  sll   $a1, $a1, 0x10
/* 0E66FC 800EC04C 0803B022 */  j     .L3_800EC088
/* 0E6700 800EC050 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EC054:
/* 0E6704 800EC054 8EA20000 */  lw    $v0, ($s5)
/* 0E6708 800EC058 3C058015 */  lui   $a1, %hi(tbl_80151EA8)
/* 0E670C 800EC05C 00A22821 */  addu  $a1, $a1, $v0
/* 0E6710 800EC060 90A51EA8 */  lbu   $a1, %lo(tbl_80151EA8)($a1)
/* 0E6714 800EC064 240603B4 */  li    $a2, 0x3B4 # file ID 0x3B4: spirit meter red palette normal
/* 0E6718 800EC068 00052E00 */  sll   $a1, $a1, 0x18
/* 0E671C 800EC06C 00052E03 */  sra   $a1, $a1, 0x18
/* 0E6720 800EC070 24A503C4 */  addiu $a1, $a1, 0x3C4 # file ID 0x3C4: spirit meter frame p1 left
/* 0E6724 800EC074 00052C00 */  sll   $a1, $a1, 0x10
/* 0E6728 800EC078 0803B022 */  j     .L3_800EC088
/* 0E672C 800EC07C 00052C03 */   sra   $a1, $a1, 0x10

.L3_800EC080:
/* 0E6730 800EC080 240503CA */  li    $a1, 0x3CA # file ID 0x3CA: spirit meter com left
/* 0E6734 800EC084 240603C1 */  li    $a2, 0x3C1 # file ID 0x3C1: spirit meter dark gray palette

.L3_800EC088:
/* 0E6738 800EC088 0C003DF0 */  jal   func_8000F7C0
/* 0E673C 800EC08C 00000000 */   nop   

/* 0E6740 800EC090 3C108016 */  lui   $s0, %hi(bss3_8015BC48) # $s0, 0x8016
/* 0E6744 800EC094 2610BC48 */  addiu $s0, %lo(bss3_8015BC48) # addiu $s0, $s0, -0x43b8
/* 0E6748 800EC098 8E620000 */  lw    $v0, ($s3)
/* 0E674C 800EC09C 02508021 */  addu  $s0, $s2, $s0
/* 0E6750 800EC0A0 02002021 */  addu  $a0, $s0, $zero
/* 0E6754 800EC0A4 AE020020 */  sw    $v0, 0x20($s0)
/* 0E6758 800EC0A8 8E620004 */  lw    $v0, 4($s3)
/* 0E675C 800EC0AC 00002821 */  addu  $a1, $zero, $zero
/* 0E6760 800EC0B0 00003021 */  addu  $a2, $zero, $zero
/* 0E6764 800EC0B4 0C00313C */  jal   func_8000C4F0
/* 0E6768 800EC0B8 AE020024 */   sw    $v0, 0x24($s0)

/* 0E676C 800EC0BC AE000020 */  sw    $zero, 0x20($s0)
/* 0E6770 800EC0C0 AE000024 */  sw    $zero, 0x24($s0)
/* 0E6774 800EC0C4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6778 800EC0C8 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E677C 800EC0CC 3C108016 */  lui   $s0, %hi(bss3_8015B808) # $s0, 0x8016
/* 0E6780 800EC0D0 2610B808 */  addiu $s0, %lo(bss3_8015B808) # addiu $s0, $s0, -0x47f8
/* 0E6784 800EC0D4 02D08021 */  addu  $s0, $s6, $s0
/* 0E6788 800EC0D8 02002021 */  addu  $a0, $s0, $zero
/* 0E678C 800EC0DC 24050005 */  li    $a1, 5
/* 0E6790 800EC0E0 0C000600 */  jal   func_80001800
/* 0E6794 800EC0E4 00C03821 */   addu  $a3, $a2, $zero

/* 0E6798 800EC0E8 02002021 */  addu  $a0, $s0, $zero
/* 0E679C 800EC0EC 0C000635 */  jal   func_800018D4
/* 0E67A0 800EC0F0 00002821 */   addu  $a1, $zero, $zero

/* 0E67A4 800EC0F4 0C00061B */  jal   func_8000186C
/* 0E67A8 800EC0F8 02002021 */   addu  $a0, $s0, $zero

/* 0E67AC 800EC0FC 27A40040 */  addiu $a0, $sp, 0x40
/* 0E67B0 800EC100 3C0643F0 */  lui   $a2, 0x43f0
/* 0E67B4 800EC104 00002821 */  addu  $a1, $zero, $zero
/* 0E67B8 800EC108 00A03821 */  addu  $a3, $a1, $zero
/* 0E67BC 800EC10C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E67C0 800EC110 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E67C4 800EC114 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E67C8 800EC118 0C00C5A4 */  jal   guOrthoF
/* 0E67CC 800EC11C E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E67D0 800EC120 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E67D4 800EC124 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E67D8 800EC128 4406A000 */  mfc1  $a2, $f20
/* 0E67DC 800EC12C 4407B000 */  mfc1  $a3, $f22
/* 0E67E0 800EC130 27A40080 */  addiu $a0, $sp, 0x80
/* 0E67E4 800EC134 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E67E8 800EC138 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E67EC 800EC13C AFA00018 */  sw    $zero, 0x18($sp)
/* 0E67F0 800EC140 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E67F4 800EC144 0C00C3E0 */  jal   guLookAtF
/* 0E67F8 800EC148 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E67FC 800EC14C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6800 800EC150 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6804 800EC154 0C000842 */  jal   func_80002108
/* 0E6808 800EC158 2606009C */   addiu $a2, $s0, 0x9c

/* 0E680C 800EC15C 8E030014 */  lw    $v1, 0x14($s0)
/* 0E6810 800EC160 A21E0019 */  sb    $fp, 0x19($s0)
/* 0E6814 800EC164 8C620000 */  lw    $v0, ($v1)
/* 0E6818 800EC168 34420080 */  ori   $v0, $v0, 0x80
/* 0E681C 800EC16C AC620000 */  sw    $v0, ($v1)
/* 0E6820 800EC170 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6824 800EC174 3C048016 */  lui   $a0, %hi(bss3_8015CCF8) # $a0, 0x8016
/* 0E6828 800EC178 2484CCF8 */  addiu $a0, %lo(bss3_8015CCF8) # addiu $a0, $a0, -0x3308
/* 0E682C 800EC17C E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E6830 800EC180 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6834 800EC184 02442021 */  addu  $a0, $s2, $a0
/* 0E6838 800EC188 24050001 */  li    $a1, 1
/* 0E683C 800EC18C 0C03A43C */  jal   func3_800E90F0
/* 0E6840 800EC190 E45C0020 */   swc1  $f28, 0x20($v0)

/* 0E6844 800EC194 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6848 800EC198 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E684C 800EC19C 3C108016 */  lui   $s0, %hi(bss3_8015C988) # $s0, 0x8016
/* 0E6850 800EC1A0 2610C988 */  addiu $s0, %lo(bss3_8015C988) # addiu $s0, $s0, -0x3678
/* 0E6854 800EC1A4 02D08021 */  addu  $s0, $s6, $s0
/* 0E6858 800EC1A8 02002021 */  addu  $a0, $s0, $zero
/* 0E685C 800EC1AC 24050005 */  li    $a1, 5
/* 0E6860 800EC1B0 0C000600 */  jal   func_80001800
/* 0E6864 800EC1B4 00C03821 */   addu  $a3, $a2, $zero

/* 0E6868 800EC1B8 02002021 */  addu  $a0, $s0, $zero
/* 0E686C 800EC1BC 0C000635 */  jal   func_800018D4
/* 0E6870 800EC1C0 00002821 */   addu  $a1, $zero, $zero

/* 0E6874 800EC1C4 0C00061B */  jal   func_8000186C
/* 0E6878 800EC1C8 02002021 */   addu  $a0, $s0, $zero

/* 0E687C 800EC1CC 27A40040 */  addiu $a0, $sp, 0x40
/* 0E6880 800EC1D0 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6884 800EC1D4 00002821 */  addu  $a1, $zero, $zero
/* 0E6888 800EC1D8 00A03821 */  addu  $a3, $a1, $zero
/* 0E688C 800EC1DC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E6890 800EC1E0 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E6894 800EC1E4 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E6898 800EC1E8 0C00C5A4 */  jal   guOrthoF
/* 0E689C 800EC1EC E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E68A0 800EC1F0 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E68A4 800EC1F4 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E68A8 800EC1F8 4406A000 */  mfc1  $a2, $f20
/* 0E68AC 800EC1FC 4407B000 */  mfc1  $a3, $f22
/* 0E68B0 800EC200 27A40080 */  addiu $a0, $sp, 0x80
/* 0E68B4 800EC204 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E68B8 800EC208 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E68BC 800EC20C AFA00018 */  sw    $zero, 0x18($sp)
/* 0E68C0 800EC210 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E68C4 800EC214 0C00C3E0 */  jal   guLookAtF
/* 0E68C8 800EC218 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E68CC 800EC21C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E68D0 800EC220 27A50040 */  addiu $a1, $sp, 0x40
/* 0E68D4 800EC224 0C000842 */  jal   func_80002108
/* 0E68D8 800EC228 2606009C */   addiu $a2, $s0, 0x9c

/* 0E68DC 800EC22C 8E030014 */  lw    $v1, 0x14($s0)
/* 0E68E0 800EC230 A21E0019 */  sb    $fp, 0x19($s0)
/* 0E68E4 800EC234 8C620000 */  lw    $v0, ($v1)
/* 0E68E8 800EC238 34420080 */  ori   $v0, $v0, 0x80
/* 0E68EC 800EC23C AC620000 */  sw    $v0, ($v1)
/* 0E68F0 800EC240 8E020014 */  lw    $v0, 0x14($s0)
/* 0E68F4 800EC244 E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E68F8 800EC248 8E020014 */  lw    $v0, 0x14($s0)
/* 0E68FC 800EC24C 24050005 */  li    $a1, 5
/* 0E6900 800EC250 3C108016 */  lui   $s0, %hi(bss3_8015BD20) # $s0, 0x8016
/* 0E6904 800EC254 2610BD20 */  addiu $s0, %lo(bss3_8015BD20) # addiu $s0, $s0, -0x42e0
/* 0E6908 800EC258 E45C0020 */  swc1  $f28, 0x20($v0)
/* 0E690C 800EC25C AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6910 800EC260 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E6914 800EC264 02D08021 */  addu  $s0, $s6, $s0
/* 0E6918 800EC268 02002021 */  addu  $a0, $s0, $zero
/* 0E691C 800EC26C 0C000600 */  jal   func_80001800
/* 0E6920 800EC270 00C03821 */   addu  $a3, $a2, $zero

/* 0E6924 800EC274 02002021 */  addu  $a0, $s0, $zero
/* 0E6928 800EC278 0C000635 */  jal   func_800018D4
/* 0E692C 800EC27C 00002821 */   addu  $a1, $zero, $zero

/* 0E6930 800EC280 0C00061B */  jal   func_8000186C
/* 0E6934 800EC284 02002021 */   addu  $a0, $s0, $zero

/* 0E6938 800EC288 27A40040 */  addiu $a0, $sp, 0x40
/* 0E693C 800EC28C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6940 800EC290 00002821 */  addu  $a1, $zero, $zero
/* 0E6944 800EC294 00A03821 */  addu  $a3, $a1, $zero
/* 0E6948 800EC298 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E694C 800EC29C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E6950 800EC2A0 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E6954 800EC2A4 0C00C5A4 */  jal   guOrthoF
/* 0E6958 800EC2A8 E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E695C 800EC2AC AFA00024 */  sw    $zero, 0x24($sp)
/* 0E6960 800EC2B0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E6964 800EC2B4 4406A000 */  mfc1  $a2, $f20
/* 0E6968 800EC2B8 4407B000 */  mfc1  $a3, $f22
/* 0E696C 800EC2BC 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6970 800EC2C0 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6974 800EC2C4 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E6978 800EC2C8 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E697C 800EC2CC AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E6980 800EC2D0 0C00C3E0 */  jal   guLookAtF
/* 0E6984 800EC2D4 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E6988 800EC2D8 27A40080 */  addiu $a0, $sp, 0x80
/* 0E698C 800EC2DC 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6990 800EC2E0 0C000842 */  jal   func_80002108
/* 0E6994 800EC2E4 2606009C */   addiu $a2, $s0, 0x9c

/* 0E6998 800EC2E8 8E030014 */  lw    $v1, 0x14($s0)
/* 0E699C 800EC2EC A21E0019 */  sb    $fp, 0x19($s0)
/* 0E69A0 800EC2F0 8C620000 */  lw    $v0, ($v1)
/* 0E69A4 800EC2F4 34420080 */  ori   $v0, $v0, 0x80
/* 0E69A8 800EC2F8 AC620000 */  sw    $v0, ($v1)
/* 0E69AC 800EC2FC 8E020014 */  lw    $v0, 0x14($s0)
/* 0E69B0 800EC300 00002821 */  addu  $a1, $zero, $zero
/* 0E69B4 800EC304 E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E69B8 800EC308 8E020014 */  lw    $v0, 0x14($s0)
/* 0E69BC 800EC30C 3C108016 */  lui   $s0, %hi(bss3_8015C0A8) # $s0, 0x8016
/* 0E69C0 800EC310 2610C0A8 */  addiu $s0, %lo(bss3_8015C0A8) # addiu $s0, $s0, -0x3f58
/* 0E69C4 800EC314 02508021 */  addu  $s0, $s2, $s0
/* 0E69C8 800EC318 02002021 */  addu  $a0, $s0, $zero
/* 0E69CC 800EC31C 0C03A43C */  jal   func3_800E90F0
/* 0E69D0 800EC320 E45C0020 */   swc1  $f28, 0x20($v0)

# related to special 2 texture
/* 0E69D4 800EC324 3C028016 */  lui   $v0, %hi(bss3_8015C090) # $v0, 0x8016
/* 0E69D8 800EC328 8C42C090 */  lw    $v0, %lo(bss3_8015C090)($v0)
/* 0E69DC 800EC32C 02002021 */  addu  $a0, $s0, $zero
/* 0E69E0 800EC330 AE020020 */  sw    $v0, 0x20($s0)
/* 0E69E4 800EC334 3C028016 */  lui   $v0, %hi(bss3_8015C094) # $v0, 0x8016
/* 0E69E8 800EC338 8C42C094 */  lw    $v0, %lo(bss3_8015C094)($v0)
/* 0E69EC 800EC33C 00002821 */  addu  $a1, $zero, $zero
/* 0E69F0 800EC340 00003021 */  addu  $a2, $zero, $zero
/* 0E69F4 800EC344 0C00313C */  jal   func_8000C4F0
/* 0E69F8 800EC348 AE020024 */   sw    $v0, 0x24($s0)

/* 0E69FC 800EC34C 3C118016 */  lui   $s1, %hi(bss3_8015C178) # $s1, 0x8016
/* 0E6A00 800EC350 2631C178 */  addiu $s1, %lo(bss3_8015C178) # addiu $s1, $s1, -0x3e88
/* 0E6A04 800EC354 02518821 */  addu  $s1, $s2, $s1
/* 0E6A08 800EC358 02202021 */  addu  $a0, $s1, $zero
/* 0E6A0C 800EC35C 00002821 */  addu  $a1, $zero, $zero
/* 0E6A10 800EC360 AE000020 */  sw    $zero, 0x20($s0)
/* 0E6A14 800EC364 0C03A43C */  jal   func3_800E90F0
/* 0E6A18 800EC368 AE000024 */   sw    $zero, 0x24($s0)

# related to special 1 texture
/* 0E6A1C 800EC36C 3C028016 */  lui   $v0, %hi(bss3_8015C098) # $v0, 0x8016
/* 0E6A20 800EC370 8C42C098 */  lw    $v0, %lo(bss3_8015C098)($v0)
/* 0E6A24 800EC374 02202021 */  addu  $a0, $s1, $zero
/* 0E6A28 800EC378 AE220020 */  sw    $v0, 0x20($s1)
/* 0E6A2C 800EC37C 3C028016 */  lui   $v0, %hi(bss3_8015C09C) # $v0, 0x8016
/* 0E6A30 800EC380 8C42C09C */  lw    $v0, %lo(bss3_8015C09C)($v0)
/* 0E6A34 800EC384 00002821 */  addu  $a1, $zero, $zero
/* 0E6A38 800EC388 00003021 */  addu  $a2, $zero, $zero
/* 0E6A3C 800EC38C 0C00313C */  jal   func_8000C4F0
/* 0E6A40 800EC390 AE220024 */   sw    $v0, 0x24($s1)

/* 0E6A44 800EC394 3C108016 */  lui   $s0, %hi(bss3_8015C248) # $s0, 0x8016
/* 0E6A48 800EC398 2610C248 */  addiu $s0, %lo(bss3_8015C248) # addiu $s0, $s0, -0x3db8
/* 0E6A4C 800EC39C 02508021 */  addu  $s0, $s2, $s0
/* 0E6A50 800EC3A0 02002021 */  addu  $a0, $s0, $zero
/* 0E6A54 800EC3A4 00002821 */  addu  $a1, $zero, $zero
/* 0E6A58 800EC3A8 AE200020 */  sw    $zero, 0x20($s1)
/* 0E6A5C 800EC3AC 0C03A43C */  jal   func3_800E90F0
/* 0E6A60 800EC3B0 AE200024 */   sw    $zero, 0x24($s1)

# related to danger texture
/* 0E6A64 800EC3B4 3C028016 */  lui   $v0, %hi(bss3_8015C0A0) # $v0, 0x8016
/* 0E6A68 800EC3B8 8C42C0A0 */  lw    $v0, %lo(bss3_8015C0A0)($v0)
/* 0E6A6C 800EC3BC 02002021 */  addu  $a0, $s0, $zero
/* 0E6A70 800EC3C0 AE020020 */  sw    $v0, 0x20($s0)
/* 0E6A74 800EC3C4 3C028016 */  lui   $v0, %hi(bss3_8015C0A4) # $v0, 0x8016
/* 0E6A78 800EC3C8 8C42C0A4 */  lw    $v0, %lo(bss3_8015C0A4)($v0)
/* 0E6A7C 800EC3CC 00002821 */  addu  $a1, $zero, $zero
/* 0E6A80 800EC3D0 00003021 */  addu  $a2, $zero, $zero
/* 0E6A84 800EC3D4 0C00313C */  jal   func_8000C4F0
/* 0E6A88 800EC3D8 AE020024 */   sw    $v0, 0x24($s0)

/* 0E6A8C 800EC3DC 3C03800A */  lui   $v1, %hi(bssMain_800A44D8) # $v1, 0x800a
/* 0E6A90 800EC3E0 8C6344D8 */  lw    $v1, %lo(bssMain_800A44D8)($v1)
/* 0E6A94 800EC3E4 3C020001 */  lui   $v0, 1 # Martial Arts match ruleset
/* 0E6A98 800EC3E8 AE000020 */  sw    $zero, 0x20($s0)
/* 0E6A9C 800EC3EC 00621824 */  and   $v1, $v1, $v0
/* 0E6AA0 800EC3F0 14600040 */  bnez  $v1, .L3_800EC4F4
/* 0E6AA4 800EC3F4 AE000024 */   sw    $zero, 0x24($s0)

/* 0E6AA8 800EC3F8 3C028016 */  lui   $v0, %hi(bss3_8015C698) # $v0, 0x8016
/* 0E6AAC 800EC3FC 2442C698 */  addiu $v0, %lo(bss3_8015C698) # addiu $v0, $v0, -0x3968
/* 0E6AB0 800EC400 02428821 */  addu  $s1, $s2, $v0
/* 0E6AB4 800EC404 02202021 */  addu  $a0, $s1, $zero
/* 0E6AB8 800EC408 0C03A43C */  jal   func3_800E90F0
/* 0E6ABC 800EC40C 24050001 */   li    $a1, 1

/* 0E6AC0 800EC410 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6AC4 800EC414 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E6AC8 800EC418 3C108016 */  lui   $s0, %hi(bss3_8015C328) # $s0, 0x8016
/* 0E6ACC 800EC41C 2610C328 */  addiu $s0, %lo(bss3_8015C328) # addiu $s0, $s0, -0x3cd8
/* 0E6AD0 800EC420 02D08021 */  addu  $s0, $s6, $s0
/* 0E6AD4 800EC424 02002021 */  addu  $a0, $s0, $zero
/* 0E6AD8 800EC428 24050005 */  li    $a1, 5
/* 0E6ADC 800EC42C 0C000600 */  jal   func_80001800
/* 0E6AE0 800EC430 00C03821 */   addu  $a3, $a2, $zero

/* 0E6AE4 800EC434 02002021 */  addu  $a0, $s0, $zero
/* 0E6AE8 800EC438 0C000635 */  jal   func_800018D4
/* 0E6AEC 800EC43C 00002821 */   addu  $a1, $zero, $zero

/* 0E6AF0 800EC440 0C00061B */  jal   func_8000186C
/* 0E6AF4 800EC444 02002021 */   addu  $a0, $s0, $zero

/* 0E6AF8 800EC448 27A40040 */  addiu $a0, $sp, 0x40
/* 0E6AFC 800EC44C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6B00 800EC450 00002821 */  addu  $a1, $zero, $zero
/* 0E6B04 800EC454 00A03821 */  addu  $a3, $a1, $zero
/* 0E6B08 800EC458 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E6B0C 800EC45C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E6B10 800EC460 E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E6B14 800EC464 0C00C5A4 */  jal   guOrthoF
/* 0E6B18 800EC468 E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E6B1C 800EC46C AFA00024 */  sw    $zero, 0x24($sp)
/* 0E6B20 800EC470 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E6B24 800EC474 4406A000 */  mfc1  $a2, $f20
/* 0E6B28 800EC478 4407B000 */  mfc1  $a3, $f22
/* 0E6B2C 800EC47C 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6B30 800EC480 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6B34 800EC484 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E6B38 800EC488 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E6B3C 800EC48C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E6B40 800EC490 0C00C3E0 */  jal   guLookAtF
/* 0E6B44 800EC494 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E6B48 800EC498 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6B4C 800EC49C 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6B50 800EC4A0 0C000842 */  jal   func_80002108
/* 0E6B54 800EC4A4 2606009C */   addiu $a2, $s0, 0x9c

/* 0E6B58 800EC4A8 8E030014 */  lw    $v1, 0x14($s0)
/* 0E6B5C 800EC4AC A21E0019 */  sb    $fp, 0x19($s0)
/* 0E6B60 800EC4B0 8C620000 */  lw    $v0, ($v1)
/* 0E6B64 800EC4B4 34420080 */  ori   $v0, $v0, 0x80
/* 0E6B68 800EC4B8 AC620000 */  sw    $v0, ($v1)
/* 0E6B6C 800EC4BC 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6B70 800EC4C0 E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E6B74 800EC4C4 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6B78 800EC4C8 E45C0020 */  swc1  $f28, 0x20($v0)
/* 0E6B7C 800EC4CC 8EE20000 */  lw    $v0, ($s7)
/* 0E6B80 800EC4D0 1840004B */  blez  $v0, .L3_800EC600
/* 0E6B84 800EC4D4 02202021 */   addu  $a0, $s1, $zero

/* 0E6B88 800EC4D8 3C028016 */  lui   $v0, %hi(bss3_8015C318) # $v0, 0x8016
/* 0E6B8C 800EC4DC 8C42C318 */  lw    $v0, %lo(bss3_8015C318)($v0)
/* 0E6B90 800EC4E0 AE220020 */  sw    $v0, 0x20($s1)
/* 0E6B94 800EC4E4 3C028016 */  lui   $v0, %hi(bss3_8015C31C) # $v0, 0x8016
/* 0E6B98 800EC4E8 8C42C31C */  lw    $v0, %lo(bss3_8015C31C)($v0)
/* 0E6B9C 800EC4EC 0803B17B */  j     .L3_800EC5EC
/* 0E6BA0 800EC4F0 00002821 */   addu  $a1, $zero, $zero

.L3_800EC4F4:
/* 0E6BA4 800EC4F4 3C028016 */  lui   $v0, %hi(bss3_8015C698) # $v0, 0x8016
/* 0E6BA8 800EC4F8 2442C698 */  addiu $v0, %lo(bss3_8015C698) # addiu $v0, $v0, -0x3968
/* 0E6BAC 800EC4FC 02428821 */  addu  $s1, $s2, $v0
/* 0E6BB0 800EC500 02202021 */  addu  $a0, $s1, $zero
/* 0E6BB4 800EC504 0C03A43C */  jal   func3_800E90F0
/* 0E6BB8 800EC508 24050001 */   li    $a1, 1

/* 0E6BBC 800EC50C AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6BC0 800EC510 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E6BC4 800EC514 3C108016 */  lui   $s0, %hi(bss3_8015C328) # $s0, 0x8016
/* 0E6BC8 800EC518 2610C328 */  addiu $s0, %lo(bss3_8015C328) # addiu $s0, $s0, -0x3cd8
/* 0E6BCC 800EC51C 02D08021 */  addu  $s0, $s6, $s0
/* 0E6BD0 800EC520 02002021 */  addu  $a0, $s0, $zero
/* 0E6BD4 800EC524 24050005 */  li    $a1, 5
/* 0E6BD8 800EC528 0C000600 */  jal   func_80001800
/* 0E6BDC 800EC52C 00C03821 */   addu  $a3, $a2, $zero

/* 0E6BE0 800EC530 02002021 */  addu  $a0, $s0, $zero
/* 0E6BE4 800EC534 0C000635 */  jal   func_800018D4
/* 0E6BE8 800EC538 00002821 */   addu  $a1, $zero, $zero

/* 0E6BEC 800EC53C 0C00061B */  jal   func_8000186C
/* 0E6BF0 800EC540 02002021 */   addu  $a0, $s0, $zero

/* 0E6BF4 800EC544 27A40040 */  addiu $a0, $sp, 0x40
/* 0E6BF8 800EC548 3C0643F0 */  lui   $a2, 0x43f0
/* 0E6BFC 800EC54C 00002821 */  addu  $a1, $zero, $zero
/* 0E6C00 800EC550 00A03821 */  addu  $a3, $a1, $zero
/* 0E6C04 800EC554 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E6C08 800EC558 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E6C0C 800EC55C E7B80018 */  swc1  $f24, 0x18($sp)
/* 0E6C10 800EC560 0C00C5A4 */  jal   guOrthoF
/* 0E6C14 800EC564 E7BA001C */   swc1  $f26, 0x1c($sp)

/* 0E6C18 800EC568 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E6C1C 800EC56C 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E6C20 800EC570 4406A000 */  mfc1  $a2, $f20
/* 0E6C24 800EC574 4407B000 */  mfc1  $a3, $f22
/* 0E6C28 800EC578 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6C2C 800EC57C AFA00010 */  sw    $zero, 0x10($sp)
/* 0E6C30 800EC580 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E6C34 800EC584 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E6C38 800EC588 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E6C3C 800EC58C 0C00C3E0 */  jal   guLookAtF
/* 0E6C40 800EC590 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E6C44 800EC594 27A40080 */  addiu $a0, $sp, 0x80
/* 0E6C48 800EC598 27A50040 */  addiu $a1, $sp, 0x40
/* 0E6C4C 800EC59C 0C000842 */  jal   func_80002108
/* 0E6C50 800EC5A0 2606009C */   addiu $a2, $s0, 0x9c

/* 0E6C54 800EC5A4 8E030014 */  lw    $v1, 0x14($s0)
/* 0E6C58 800EC5A8 A21E0019 */  sb    $fp, 0x19($s0)
/* 0E6C5C 800EC5AC 8C620000 */  lw    $v0, ($v1)
/* 0E6C60 800EC5B0 34420080 */  ori   $v0, $v0, 0x80
/* 0E6C64 800EC5B4 AC620000 */  sw    $v0, ($v1)
/* 0E6C68 800EC5B8 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6C6C 800EC5BC E45E0024 */  swc1  $f30, 0x24($v0)
/* 0E6C70 800EC5C0 8E020014 */  lw    $v0, 0x14($s0)
/* 0E6C74 800EC5C4 E45C0020 */  swc1  $f28, 0x20($v0)
/* 0E6C78 800EC5C8 8EE20000 */  lw    $v0, ($s7)
/* 0E6C7C 800EC5CC 1840000C */  blez  $v0, .L3_800EC600
/* 0E6C80 800EC5D0 02202021 */   addu  $a0, $s1, $zero

/* 0E6C84 800EC5D4 3C028016 */  lui   $v0, %hi(bss3_8015C768) # $v0, 0x8016
/* 0E6C88 800EC5D8 8C42C768 */  lw    $v0, %lo(bss3_8015C768)($v0)
/* 0E6C8C 800EC5DC AE220020 */  sw    $v0, 0x20($s1)
/* 0E6C90 800EC5E0 3C028016 */  lui   $v0, %hi(bss3_8015C76C) # $v0, 0x8016
/* 0E6C94 800EC5E4 8C42C76C */  lw    $v0, %lo(bss3_8015C76C)($v0)
/* 0E6C98 800EC5E8 00002821 */  addu  $a1, $zero, $zero

.L3_800EC5EC:
/* 0E6C9C 800EC5EC 00003021 */  addu  $a2, $zero, $zero
/* 0E6CA0 800EC5F0 0C00313C */  jal   func_8000C4F0
/* 0E6CA4 800EC5F4 AE220024 */   sw    $v0, 0x24($s1)

/* 0E6CA8 800EC5F8 AE200020 */  sw    $zero, 0x20($s1)
/* 0E6CAC 800EC5FC AE200024 */  sw    $zero, 0x24($s1)

.L3_800EC600:
/* 0E6CB0 800EC600 26F70004 */  addiu $s7, $s7, 4
/* 0E6CB4 800EC604 26D600DC */  addiu $s6, $s6, 0xdc
/* 0E6CB8 800EC608 26730008 */  addiu $s3, $s3, 8
/* 0E6CBC 800EC60C 26520034 */  addiu $s2, $s2, 0x34
/* 0E6CC0 800EC610 26940001 */  addiu $s4, $s4, 1
/* 0E6CC4 800EC614 2E820004 */  sltiu $v0, $s4, 4
/* 0E6CC8 800EC618 1440FE39 */  bnez  $v0, .L3_800EBF00
/* 0E6CCC 800EC61C 26B50004 */   addiu $s5, $s5, 4

/* 0E6CD0 800EC620 0C03B342 */  jal   func3_800ECD08
/* 0E6CD4 800EC624 00000000 */   nop   

/* 0E6CD8 800EC628 0C03A5F3 */  jal   func3_800E97CC
/* 0E6CDC 800EC62C 00000000 */   nop   

# update for monochrome mode
/* 0E6CE0 800EC630 97AB00CE */  lhu   $t3, 0xce($sp)
/* 0E6CE4 800EC634 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 0E6CE8 800EC638 A42BFDB0 */  sh    $t3, %lo(var_8003FDB0)($at)

/* 0E6CEC 800EC63C 8FBF011C */  lw    $ra, 0x11c($sp)
/* 0E6CF0 800EC640 8FBE0118 */  lw    $fp, 0x118($sp)
/* 0E6CF4 800EC644 8FB70114 */  lw    $s7, 0x114($sp)
/* 0E6CF8 800EC648 8FB60110 */  lw    $s6, 0x110($sp)
/* 0E6CFC 800EC64C 8FB5010C */  lw    $s5, 0x10c($sp)
/* 0E6D00 800EC650 8FB40108 */  lw    $s4, 0x108($sp)
/* 0E6D04 800EC654 8FB30104 */  lw    $s3, 0x104($sp)
/* 0E6D08 800EC658 8FB20100 */  lw    $s2, 0x100($sp)
/* 0E6D0C 800EC65C 8FB100FC */  lw    $s1, 0xfc($sp)
/* 0E6D10 800EC660 8FB000F8 */  lw    $s0, 0xf8($sp)
/* 0E6D14 800EC664 D7BE0148 */  ldc1  $f30, 0x148($sp)
/* 0E6D18 800EC668 D7BC0140 */  ldc1  $f28, 0x140($sp)
/* 0E6D1C 800EC66C D7BA0138 */  ldc1  $f26, 0x138($sp)
/* 0E6D20 800EC670 D7B80130 */  ldc1  $f24, 0x130($sp)
/* 0E6D24 800EC674 D7B60128 */  ldc1  $f22, 0x128($sp)
/* 0E6D28 800EC678 D7B40120 */  ldc1  $f20, 0x120($sp)
/* 0E6D2C 800EC67C 03E00008 */  jr    $ra
/* 0E6D30 800EC680 27BD0150 */   addiu $sp, $sp, 0x150
