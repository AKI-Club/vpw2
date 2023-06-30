# related to big messages?

glabel func3_800E9A18
/* 0E40C8 800E9A18 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0E40CC 800E9A1C F7B40048 */  sdc1  $f20, 0x48($sp)
/* 0E40D0 800E9A20 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0E40D4 800E9A24 4481A000 */  mtc1  $at, $f20
/* 0E40D8 800E9A28 AFB60040 */  sw    $s6, 0x40($sp)
/* 0E40DC 800E9A2C 0000B021 */  addu  $s6, $zero, $zero
/* 0E40E0 800E9A30 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0E40E4 800E9A34 00008821 */  addu  $s1, $zero, $zero
/* 0E40E8 800E9A38 AFB20030 */  sw    $s2, 0x30($sp)
/* 0E40EC 800E9A3C 3C128016 */  lui   $s2, %hi(bss3_8015D6F6) # $s2, 0x8016
/* 0E40F0 800E9A40 2652D6F6 */  addiu $s2, %lo(bss3_8015D6F6) # addiu $s2, $s2, -0x290a
/* 0E40F4 800E9A44 AFB00028 */  sw    $s0, 0x28($sp)
/* 0E40F8 800E9A48 00008021 */  addu  $s0, $zero, $zero
/* 0E40FC 800E9A4C AFB30034 */  sw    $s3, 0x34($sp)
/* 0E4100 800E9A50 3C138016 */  lui   $s3, %hi(bss3_8015D2C4) # $s3, 0x8016
/* 0E4104 800E9A54 2673D2C4 */  addiu $s3, %lo(bss3_8015D2C4) # addiu $s3, $s3, -0x2d3c
/* 0E4108 800E9A58 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0E410C 800E9A5C 0000A821 */  addu  $s5, $zero, $zero
/* 0E4110 800E9A60 AFB40038 */  sw    $s4, 0x38($sp)
/* 0E4114 800E9A64 0000A021 */  addu  $s4, $zero, $zero
/* 0E4118 800E9A68 AFBF0044 */  sw    $ra, 0x44($sp)

.L3_800E9A6C:
/* 0E411C 800E9A6C 92430000 */  lbu   $v1, ($s2)
/* 0E4120 800E9A70 506000B3 */  beql  $v1, $zero, .L3_800E9D40
/* 0E4124 800E9A74 26520024 */   addiu $s2, $s2, 0x24

/* 0E4128 800E9A78 3C028016 */  lui   $v0, %hi(bss3_8015D6F8)
/* 0E412C 800E9A7C 00501021 */  addu  $v0, $v0, $s0
/* 0E4130 800E9A80 8442D6F8 */  lh    $v0, %lo(bss3_8015D6F8)($v0)
/* 0E4134 800E9A84 3C018016 */  lui   $at, %hi(bss3_8015D700)
/* 0E4138 800E9A88 00300821 */  addu  $at, $at, $s0
/* 0E413C 800E9A8C C424D700 */  lwc1  $f4, %lo(bss3_8015D700)($at)
/* 0E4140 800E9A90 44820000 */  mtc1  $v0, $f0
/* 0E4144 800E9A94 00000000 */  nop   
/* 0E4148 800E9A98 46800020 */  cvt.s.w $f0, $f0
/* 0E414C 800E9A9C 46040001 */  sub.s $f0, $f0, $f4
/* 0E4150 800E9AA0 44831000 */  mtc1  $v1, $f2
/* 0E4154 800E9AA4 00000000 */  nop   
/* 0E4158 800E9AA8 468010A0 */  cvt.s.w $f2, $f2
/* 0E415C 800E9AAC 46020003 */  div.s $f0, $f0, $f2
/* 0E4160 800E9AB0 46002100 */  add.s $f4, $f4, $f0
/* 0E4164 800E9AB4 3C028016 */  lui   $v0, %hi(bss3_8015D6FA)
/* 0E4168 800E9AB8 00501021 */  addu  $v0, $v0, $s0
/* 0E416C 800E9ABC 8442D6FA */  lh    $v0, %lo(bss3_8015D6FA)($v0)
/* 0E4170 800E9AC0 3C018016 */  lui   $at, %hi(bss3_8015D700)
/* 0E4174 800E9AC4 00300821 */  addu  $at, $at, $s0
/* 0E4178 800E9AC8 E424D700 */  swc1  $f4, %lo(bss3_8015D700)($at)
/* 0E417C 800E9ACC 3C018016 */  lui   $at, %hi(bss3_8015D704)
/* 0E4180 800E9AD0 00300821 */  addu  $at, $at, $s0
/* 0E4184 800E9AD4 C424D704 */  lwc1  $f4, %lo(bss3_8015D704)($at)
/* 0E4188 800E9AD8 44821000 */  mtc1  $v0, $f2
/* 0E418C 800E9ADC 00000000 */  nop   
/* 0E4190 800E9AE0 468010A0 */  cvt.s.w $f2, $f2
/* 0E4194 800E9AE4 92420000 */  lbu   $v0, ($s2)
/* 0E4198 800E9AE8 46041081 */  sub.s $f2, $f2, $f4
/* 0E419C 800E9AEC 44820000 */  mtc1  $v0, $f0
/* 0E41A0 800E9AF0 00000000 */  nop   
/* 0E41A4 800E9AF4 46800020 */  cvt.s.w $f0, $f0
/* 0E41A8 800E9AF8 46001083 */  div.s $f2, $f2, $f0
/* 0E41AC 800E9AFC 46022100 */  add.s $f4, $f4, $f2
/* 0E41B0 800E9B00 3C028016 */  lui   $v0, %hi(bss3_8015D6F7)
/* 0E41B4 800E9B04 00501021 */  addu  $v0, $v0, $s0
/* 0E41B8 800E9B08 9042D6F7 */  lbu   $v0, %lo(bss3_8015D6F7)($v0)
/* 0E41BC 800E9B0C 3C018016 */  lui   $at, %hi(bss3_8015D704)
/* 0E41C0 800E9B10 00300821 */  addu  $at, $at, $s0
/* 0E41C4 800E9B14 E424D704 */  swc1  $f4, %lo(bss3_8015D704)($at)
/* 0E41C8 800E9B18 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E41CC 800E9B1C 00300821 */  addu  $at, $at, $s0
/* 0E41D0 800E9B20 C424D6FC */  lwc1  $f4, %lo(bss3_8015D6FC)($at)
/* 0E41D4 800E9B24 44821000 */  mtc1  $v0, $f2
/* 0E41D8 800E9B28 00000000 */  nop   
/* 0E41DC 800E9B2C 468010A0 */  cvt.s.w $f2, $f2
/* 0E41E0 800E9B30 92420000 */  lbu   $v0, ($s2)
/* 0E41E4 800E9B34 46041081 */  sub.s $f2, $f2, $f4
/* 0E41E8 800E9B38 44820000 */  mtc1  $v0, $f0
/* 0E41EC 800E9B3C 00000000 */  nop   
/* 0E41F0 800E9B40 46800020 */  cvt.s.w $f0, $f0
/* 0E41F4 800E9B44 46001083 */  div.s $f2, $f2, $f0
/* 0E41F8 800E9B48 46022100 */  add.s $f4, $f4, $f2
/* 0E41FC 800E9B4C 3C018016 */  lui   $at, %hi(bss3_8015D708)
/* 0E4200 800E9B50 00300821 */  addu  $at, $at, $s0
/* 0E4204 800E9B54 C422D708 */  lwc1  $f2, %lo(bss3_8015D708)($at)
/* 0E4208 800E9B58 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E420C 800E9B5C 00300821 */  addu  $at, $at, $s0
/* 0E4210 800E9B60 E424D6FC */  swc1  $f4, %lo(bss3_8015D6FC)($at)
/* 0E4214 800E9B64 3C018015 */  lui   $at, %hi(D_80154818)
/* 0E4218 800E9B68 D4244818 */  ldc1  $f4, %lo(D_80154818)($at)
/* 0E421C 800E9B6C 460010A1 */  cvt.d.s $f2, $f2
/* 0E4220 800E9B70 92420000 */  lbu   $v0, ($s2)
/* 0E4224 800E9B74 46222101 */  sub.d $f4, $f4, $f2
/* 0E4228 800E9B78 44820000 */  mtc1  $v0, $f0
/* 0E422C 800E9B7C 00000000 */  nop   
/* 0E4230 800E9B80 46800021 */  cvt.d.w $f0, $f0
/* 0E4234 800E9B84 46202103 */  div.d $f4, $f4, $f0
/* 0E4238 800E9B88 46241080 */  add.d $f2, $f2, $f4
/* 0E423C 800E9B8C 3C018016 */  lui   $at, %hi(bss3_8015D70C)
/* 0E4240 800E9B90 00300821 */  addu  $at, $at, $s0
/* 0E4244 800E9B94 C424D70C */  lwc1  $f4, %lo(bss3_8015D70C)($at)
/* 0E4248 800E9B98 462010A0 */  cvt.s.d $f2, $f2
/* 0E424C 800E9B9C 3C018016 */  lui   $at, %hi(bss3_8015D708)
/* 0E4250 800E9BA0 00300821 */  addu  $at, $at, $s0
/* 0E4254 800E9BA4 E422D708 */  swc1  $f2, %lo(bss3_8015D708)($at)
/* 0E4258 800E9BA8 3C018015 */  lui   $at, %hi(D_80154820)
/* 0E425C 800E9BAC D4224820 */  ldc1  $f2, %lo(D_80154820)($at)
/* 0E4260 800E9BB0 46002121 */  cvt.d.s $f4, $f4
/* 0E4264 800E9BB4 92420000 */  lbu   $v0, ($s2)
/* 0E4268 800E9BB8 46241081 */  sub.d $f2, $f2, $f4
/* 0E426C 800E9BBC 44820000 */  mtc1  $v0, $f0
/* 0E4270 800E9BC0 00000000 */  nop   
/* 0E4274 800E9BC4 46800021 */  cvt.d.w $f0, $f0
/* 0E4278 800E9BC8 46201083 */  div.d $f2, $f2, $f0
/* 0E427C 800E9BCC 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E4280 800E9BD0 00300821 */  addu  $at, $at, $s0
/* 0E4284 800E9BD4 C426D6FC */  lwc1  $f6, %lo(bss3_8015D6FC)($at)
/* 0E4288 800E9BD8 46222100 */  add.d $f4, $f4, $f2
/* 0E428C 800E9BDC 44800000 */  mtc1  $zero, $f0
/* 0E4290 800E9BE0 00000000 */  nop   
/* 0E4294 800E9BE4 46003032 */  c.eq.s $f6, $f0
/* 0E4298 800E9BE8 46202120 */  cvt.s.d $f4, $f4
/* 0E429C 800E9BEC 3C018016 */  lui   $at, %hi(bss3_8015D70C)
/* 0E42A0 800E9BF0 00300821 */  addu  $at, $at, $s0
/* 0E42A4 800E9BF4 E424D70C */  swc1  $f4, %lo(bss3_8015D70C)($at)
/* 0E42A8 800E9BF8 45010046 */  bc1t  .L3_800E9D14
/* 0E42AC 800E9BFC 00000000 */   nop

/* 0E42B0 800E9C00 3C018016 */  lui   $at, %hi(bss3_8015D700)
/* 0E42B4 800E9C04 00300821 */  addu  $at, $at, $s0
/* 0E42B8 800E9C08 C420D700 */  lwc1  $f0, %lo(bss3_8015D700)($at)
/* 0E42BC 800E9C0C 4600008D */  trunc.w.s $f2, $f0
/* 0E42C0 800E9C10 44021000 */  mfc1  $v0, $f2
/* 0E42C4 800E9C14 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0E42C8 800E9C18 44810000 */  mtc1  $at, $f0
/* 0E42CC 800E9C1C A7A20010 */  sh    $v0, 0x10($sp)
/* 0E42D0 800E9C20 3C018016 */  lui   $at, %hi(bss3_8015D704)
/* 0E42D4 800E9C24 00300821 */  addu  $at, $at, $s0
/* 0E42D8 800E9C28 C422D704 */  lwc1  $f2, %lo(bss3_8015D704)($at)
/* 0E42DC 800E9C2C E7A00014 */  swc1  $f0, 0x14($sp)
/* 0E42E0 800E9C30 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E42E4 800E9C34 4600100D */  trunc.w.s $f0, $f2
/* 0E42E8 800E9C38 44020000 */  mfc1  $v0, $f0
/* 0E42EC 800E9C3C 00000000 */  nop   
/* 0E42F0 800E9C40 A7A20012 */  sh    $v0, 0x12($sp)
/* 0E42F4 800E9C44 3C018016 */  lui   $at, %hi(bss3_8015D708)
/* 0E42F8 800E9C48 00300821 */  addu  $at, $at, $s0
/* 0E42FC 800E9C4C C420D708 */  lwc1  $f0, %lo(bss3_8015D708)($at)
/* 0E4300 800E9C50 E7A0001C */  swc1  $f0, 0x1c($sp)
/* 0E4304 800E9C54 3C018016 */  lui   $at, %hi(bss3_8015D70C)
/* 0E4308 800E9C58 00300821 */  addu  $at, $at, $s0
/* 0E430C 800E9C5C C420D70C */  lwc1  $f0, %lo(bss3_8015D70C)($at)
/* 0E4310 800E9C60 E7A00020 */  swc1  $f0, 0x20($sp)
/* 0E4314 800E9C64 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E4318 800E9C68 00300821 */  addu  $at, $at, $s0
/* 0E431C 800E9C6C C422D6FC */  lwc1  $f2, %lo(bss3_8015D6FC)($at)
/* 0E4320 800E9C70 4602A03E */  c.le.s $f20, $f2
/* 0E4324 800E9C74 00000000 */  nop   
/* 0E4328 800E9C78 00000000 */  nop   
/* 0E432C 800E9C7C 45030006 */  bc1tl  .L3_800E9C98
/* 0E4330 800E9C80 46141001 */   sub.s  $f0, $f2, $f20

/* 0E4334 800E9C84 4600100D */  trunc.w.s $f0, $f2
/* 0E4338 800E9C88 44030000 */  mfc1  $v1, $f0
/* 0E433C 800E9C8C 00000000 */  nop   
/* 0E4340 800E9C90 0803A72B */  j     .L3_800E9CAC
/* 0E4344 800E9C94 A3A30027 */   sb    $v1, 0x27($sp)

.L3_800E9C98:
/* 0E4348 800E9C98 4600008D */  trunc.w.s $f2, $f0
/* 0E434C 800E9C9C 44031000 */  mfc1  $v1, $f2
/* 0E4350 800E9CA0 3C028000 */  lui   $v0, 0x8000
/* 0E4354 800E9CA4 00621825 */  or    $v1, $v1, $v0
/* 0E4358 800E9CA8 A3A30027 */  sb    $v1, 0x27($sp)

.L3_800E9CAC:
/* 0E435C 800E9CAC 3C028016 */  lui   $v0, %hi(bss3_8015D710)
/* 0E4360 800E9CB0 00501021 */  addu  $v0, $v0, $s0
/* 0E4364 800E9CB4 9042D710 */  lbu   $v0, %lo(bss3_8015D710)($v0)
/* 0E4368 800E9CB8 3C048016 */  lui   $a0, %hi(bss3_8015D2B0) # $a0, 0x8016
/* 0E436C 800E9CBC 2484D2B0 */  addiu $a0, %lo(bss3_8015D2B0) # addiu $a0, $a0, -0x2d50
/* 0E4370 800E9CC0 A3A20024 */  sb    $v0, 0x24($sp)
/* 0E4374 800E9CC4 3C028016 */  lui   $v0, %hi(bss3_8015D711)
/* 0E4378 800E9CC8 00501021 */  addu  $v0, $v0, $s0
/* 0E437C 800E9CCC 9042D711 */  lbu   $v0, %lo(bss3_8015D711)($v0)
/* 0E4380 800E9CD0 02A42021 */  addu  $a0, $s5, $a0
/* 0E4384 800E9CD4 3C058016 */  lui   $a1, %hi(bss3_8015D620) # $a1, 0x8016
/* 0E4388 800E9CD8 24A5D620 */  addiu $a1, %lo(bss3_8015D620) # addiu $a1, $a1, -0x29e0
/* 0E438C 800E9CDC A3A20025 */  sb    $v0, 0x25($sp)
/* 0E4390 800E9CE0 3C028016 */  lui   $v0, %hi(bss3_8015D712)
/* 0E4394 800E9CE4 00501021 */  addu  $v0, $v0, $s0
/* 0E4398 800E9CE8 9042D712 */  lbu   $v0, %lo(bss3_8015D712)($v0)
/* 0E439C 800E9CEC 02852821 */  addu  $a1, $s4, $a1
/* 0E43A0 800E9CF0 27A60010 */  addiu $a2, $sp, 0x10
/* 0E43A4 800E9CF4 0C03A551 */  jal   func3_800E9544
/* 0E43A8 800E9CF8 A3A20026 */   sb    $v0, 0x26($sp)

/* 0E43AC 800E9CFC 8E640000 */  lw    $a0, ($s3)
/* 0E43B0 800E9D00 8C820000 */  lw    $v0, ($a0)
/* 0E43B4 800E9D04 2403FF7F */  li    $v1, -129
/* 0E43B8 800E9D08 00431024 */  and   $v0, $v0, $v1
/* 0E43BC 800E9D0C 0803A749 */  j     .L3_800E9D24
/* 0E43C0 800E9D10 AC820000 */   sw    $v0, ($a0)

.L3_800E9D14:
/* 0E43C4 800E9D14 8E630000 */  lw    $v1, ($s3)
/* 0E43C8 800E9D18 8C620000 */  lw    $v0, ($v1)
/* 0E43CC 800E9D1C 34420080 */  ori   $v0, $v0, 0x80
/* 0E43D0 800E9D20 AC620000 */  sw    $v0, ($v1)

.L3_800E9D24:
/* 0E43D4 800E9D24 92420000 */  lbu   $v0, ($s2)
/* 0E43D8 800E9D28 26D60001 */  addiu $s6, $s6, 1
/* 0E43DC 800E9D2C 2442FFFF */  addiu $v0, $v0, -1
/* 0E43E0 800E9D30 3C018016 */  lui   $at, %hi(bss3_8015D6F6)
/* 0E43E4 800E9D34 00300821 */  addu  $at, $at, $s0
/* 0E43E8 800E9D38 A022D6F6 */  sb    $v0, %lo(bss3_8015D6F6)($at)
/* 0E43EC 800E9D3C 26520024 */  addiu $s2, $s2, 0x24

.L3_800E9D40:
/* 0E43F0 800E9D40 26100024 */  addiu $s0, $s0, 0x24
/* 0E43F4 800E9D44 267300DC */  addiu $s3, $s3, 0xdc
/* 0E43F8 800E9D48 26B500DC */  addiu $s5, $s5, 0xdc
/* 0E43FC 800E9D4C 26310001 */  addiu $s1, $s1, 1
/* 0E4400 800E9D50 2E220004 */  sltiu $v0, $s1, 4
/* 0E4404 800E9D54 1440FF45 */  bnez  $v0, .L3_800E9A6C
/* 0E4408 800E9D58 26940034 */   addiu $s4, $s4, 0x34

/* 0E440C 800E9D5C 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E4410 800E9D60 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E4414 800E9D64 104000CA */  beqz  $v0, .L3_800EA090
/* 0E4418 800E9D68 00000000 */   nop  
 
/* 0E441C 800E9D6C 3C108004 */  lui   $s0, %hi(var_8003FDB0) # $s0, 0x8004
/* 0E4420 800E9D70 9610FDB0 */  lhu   $s0, %lo(var_8003FDB0)($s0)
/* 0E4424 800E9D74 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 0E4428 800E9D78 0803A80D */  j     .L3_800EA034
/* 0E442C 800E9D7C A420FDB0 */   sh    $zero, %lo(var_8003FDB0)($at)

.L3_800E9D80:
/* 0E4430 800E9D80 3C078016 */  lui   $a3, %hi(bss3_8015D780) # $a3, 0x8016
/* 0E4434 800E9D84 8CE7D780 */  lw    $a3, %lo(bss3_8015D780)($a3)
/* 0E4438 800E9D88 8CE40000 */  lw    $a0, ($a3)
/* 0E443C 800E9D8C 344200FF */  ori   $v0, $v0, 0xff
/* 0E4440 800E9D90 00821024 */  and   $v0, $a0, $v0
/* 0E4444 800E9D94 10400061 */  beqz  $v0, .L3_800E9F1C
/* 0E4448 800E9D98 00048F82 */   srl   $s1, $a0, 0x1e

/* 0E444C 800E9D9C 001110C0 */  sll   $v0, $s1, 3
/* 0E4450 800E9DA0 00511021 */  addu  $v0, $v0, $s1
/* 0E4454 800E9DA4 00022880 */  sll   $a1, $v0, 2
/* 0E4458 800E9DA8 00041602 */  srl   $v0, $a0, 0x18
/* 0E445C 800E9DAC 30420007 */  andi  $v0, $v0, 7
/* 0E4460 800E9DB0 3C018016 */  lui   $at, %hi(bss3_8015D6F6)
/* 0E4464 800E9DB4 00250821 */  addu  $at, $at, $a1
/* 0E4468 800E9DB8 A022D6F6 */  sb    $v0, %lo(bss3_8015D6F6)($at)
/* 0E446C 800E9DBC 10400006 */  beqz  $v0, .L3_800E9DD8
/* 0E4470 800E9DC0 2442FFFF */   addiu $v0, $v0, -1

/* 0E4474 800E9DC4 00021080 */  sll   $v0, $v0, 2
/* 0E4478 800E9DC8 24420001 */  addiu $v0, $v0, 1
/* 0E447C 800E9DCC 3C018016 */  lui   $at, %hi(bss3_8015D6F6)
/* 0E4480 800E9DD0 00250821 */  addu  $at, $at, $a1
/* 0E4484 800E9DD4 A022D6F6 */  sb    $v0, %lo(bss3_8015D6F6)($at)

.L3_800E9DD8:
/* 0E4488 800E9DD8 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E448C 800E9DDC 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E4490 800E9DE0 8C420000 */  lw    $v0, ($v0)
/* 0E4494 800E9DE4 3C018016 */  lui   $at, %hi(bss3_8015D6F7)
/* 0E4498 800E9DE8 00250821 */  addu  $at, $at, $a1
/* 0E449C 800E9DEC A022D6F7 */  sb    $v0, %lo(bss3_8015D6F7)($at)
/* 0E44A0 800E9DF0 3C038016 */  lui   $v1, %hi(bss3_8015D780) # $v1, 0x8016
/* 0E44A4 800E9DF4 8C63D780 */  lw    $v1, %lo(bss3_8015D780)($v1)
/* 0E44A8 800E9DF8 90620001 */  lbu   $v0, 1($v1)
/* 0E44AC 800E9DFC 00021040 */  sll   $v0, $v0, 1
/* 0E44B0 800E9E00 3C018016 */  lui   $at, %hi(bss3_8015D6F8)
/* 0E44B4 800E9E04 00250821 */  addu  $at, $at, $a1
/* 0E44B8 800E9E08 A422D6F8 */  sh    $v0, %lo(bss3_8015D6F8)($at)
/* 0E44BC 800E9E0C 90620002 */  lbu   $v0, 2($v1)
/* 0E44C0 800E9E10 3C018016 */  lui   $at, %hi(bss3_8015D6FA)
/* 0E44C4 800E9E14 00250821 */  addu  $at, $at, $a1
/* 0E44C8 800E9E18 A422D6FA */  sh    $v0, %lo(bss3_8015D6FA)($at)
/* 0E44CC 800E9E1C 8C620000 */  lw    $v0, ($v1)
/* 0E44D0 800E9E20 3C031000 */  lui   $v1, 0x1000
/* 0E44D4 800E9E24 00431024 */  and   $v0, $v0, $v1
/* 0E44D8 800E9E28 10400006 */  beqz  $v0, .L3_800E9E44
/* 0E44DC 800E9E2C 00000000 */   nop   

/* 0E44E0 800E9E30 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0E44E4 800E9E34 44810000 */  mtc1  $at, $f0
/* 0E44E8 800E9E38 3C018016 */  lui   $at, %hi(bss3_8015D708)
/* 0E44EC 800E9E3C 00250821 */  addu  $at, $at, $a1
/* 0E44F0 800E9E40 E420D708 */  swc1  $f0, %lo(bss3_8015D708)($at)

.L3_800E9E44:
/* 0E44F4 800E9E44 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E44F8 800E9E48 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E44FC 800E9E4C 8C420000 */  lw    $v0, ($v0)
/* 0E4500 800E9E50 3C032000 */  lui   $v1, 0x2000
/* 0E4504 800E9E54 00431024 */  and   $v0, $v0, $v1
/* 0E4508 800E9E58 10400006 */  beqz  $v0, .L3_800E9E74
/* 0E450C 800E9E5C 00000000 */   nop   

/* 0E4510 800E9E60 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0E4514 800E9E64 44810000 */  mtc1  $at, $f0
/* 0E4518 800E9E68 3C018016 */  lui   $at, %hi(bss3_8015D70C)
/* 0E451C 800E9E6C 00250821 */  addu  $at, $at, $a1
/* 0E4520 800E9E70 E420D70C */  swc1  $f0, %lo(bss3_8015D70C)($at)

.L3_800E9E74:
/* 0E4524 800E9E74 3C028016 */  lui   $v0, %hi(bss3_8015D6F6)
/* 0E4528 800E9E78 00451021 */  addu  $v0, $v0, $a1
/* 0E452C 800E9E7C 9042D6F6 */  lbu   $v0, %lo(bss3_8015D6F6)($v0)
/* 0E4530 800E9E80 1440001C */  bnez  $v0, .L3_800E9EF4
/* 0E4534 800E9E84 00000000 */   nop   

/* 0E4538 800E9E88 3C028016 */  lui   $v0, %hi(bss3_8015D6F7)
/* 0E453C 800E9E8C 00451021 */  addu  $v0, $v0, $a1
/* 0E4540 800E9E90 9042D6F7 */  lbu   $v0, %lo(bss3_8015D6F7)($v0)
/* 0E4544 800E9E94 3C038016 */  lui   $v1, %hi(bss3_8015D6F8)
/* 0E4548 800E9E98 00651821 */  addu  $v1, $v1, $a1
/* 0E454C 800E9E9C 8463D6F8 */  lh    $v1, %lo(bss3_8015D6F8)($v1)
/* 0E4550 800E9EA0 3C048016 */  lui   $a0, %hi(bss3_8015D6FA)
/* 0E4554 800E9EA4 00852021 */  addu  $a0, $a0, $a1
/* 0E4558 800E9EA8 8484D6FA */  lh    $a0, %lo(bss3_8015D6FA)($a0)
/* 0E455C 800E9EAC 44820000 */  mtc1  $v0, $f0
/* 0E4560 800E9EB0 00000000 */  nop   
/* 0E4564 800E9EB4 46800020 */  cvt.s.w $f0, $f0
/* 0E4568 800E9EB8 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E456C 800E9EBC 00250821 */  addu  $at, $at, $a1
/* 0E4570 800E9EC0 E420D6FC */  swc1  $f0, %lo(bss3_8015D6FC)($at)
/* 0E4574 800E9EC4 44830000 */  mtc1  $v1, $f0
/* 0E4578 800E9EC8 00000000 */  nop   
/* 0E457C 800E9ECC 46800020 */  cvt.s.w $f0, $f0
/* 0E4580 800E9ED0 3C018016 */  lui   $at, %hi(bss3_8015D700)
/* 0E4584 800E9ED4 00250821 */  addu  $at, $at, $a1
/* 0E4588 800E9ED8 E420D700 */  swc1  $f0, %lo(bss3_8015D700)($at)
/* 0E458C 800E9EDC 44840000 */  mtc1  $a0, $f0
/* 0E4590 800E9EE0 00000000 */  nop   
/* 0E4594 800E9EE4 46800020 */  cvt.s.w $f0, $f0
/* 0E4598 800E9EE8 3C018016 */  lui   $at, %hi(bss3_8015D704)
/* 0E459C 800E9EEC 00250821 */  addu  $at, $at, $a1
/* 0E45A0 800E9EF0 E420D704 */  swc1  $f0, %lo(bss3_8015D704)($at)

.L3_800E9EF4:
/* 0E45A4 800E9EF4 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E45A8 800E9EF8 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E45AC 800E9EFC 8C430000 */  lw    $v1, ($v0)
/* 0E45B0 800E9F00 24420004 */  addiu $v0, $v0, 4
/* 0E45B4 800E9F04 3C018016 */  lui   $at, %hi(bss3_8015D780) # $at, 0x8016
/* 0E45B8 800E9F08 AC22D780 */  sw    $v0, %lo(bss3_8015D780)($at)
/* 0E45BC 800E9F0C 3C018016 */  lui   $at, %hi(bss3_8015D6F0)
/* 0E45C0 800E9F10 00250821 */  addu  $at, $at, $a1
/* 0E45C4 800E9F14 0803A80B */  j     .L3_800EA02C
/* 0E45C8 800E9F18 AC23D6F0 */   sw    $v1, %lo(bss3_8015D6F0)($at)

.L3_800E9F1C:
/* 0E45CC 800E9F1C 3C033800 */  lui   $v1, 0x3800
/* 0E45D0 800E9F20 00831024 */  and   $v0, $a0, $v1
/* 0E45D4 800E9F24 14430010 */  bne   $v0, $v1, .L3_800E9F68
/* 0E45D8 800E9F28 001130C0 */   sll   $a2, $s1, 3

/* 0E45DC 800E9F2C 00042280 */  sll   $a0, $a0, 0xa
/* 0E45E0 800E9F30 0C005770 */  jal   func_80015DC0
/* 0E45E4 800E9F34 00042482 */   srl   $a0, $a0, 0x12

/* 0E45E8 800E9F38 3C038016 */  lui   $v1, %hi(bss3_8015D780) # $v1, 0x8016
/* 0E45EC 800E9F3C 8C63D780 */  lw    $v1, %lo(bss3_8015D780)($v1)
/* 0E45F0 800E9F40 8C630000 */  lw    $v1, ($v1)
/* 0E45F4 800E9F44 00402021 */  addu  $a0, $v0, $zero
/* 0E45F8 800E9F48 3C020040 */  lui   $v0, 0x40
/* 0E45FC 800E9F4C 00621824 */  and   $v1, $v1, $v0
/* 0E4600 800E9F50 1060002D */  beqz  $v1, .L3_800EA008
/* 0E4604 800E9F54 00000000 */   nop   

/* 0E4608 800E9F58 0C009060 */  jal   func_80024180
/* 0E460C 800E9F5C 2405001E */   li    $a1, 30

/* 0E4610 800E9F60 0803A802 */  j     .L3_800EA008
/* 0E4614 800E9F64 00000000 */   nop   

.L3_800E9F68:
/* 0E4618 800E9F68 00D11023 */  subu  $v0, $a2, $s1
/* 0E461C 800E9F6C 000210C0 */  sll   $v0, $v0, 3
/* 0E4620 800E9F70 00511023 */  subu  $v0, $v0, $s1
/* 0E4624 800E9F74 00021080 */  sll   $v0, $v0, 2
/* 0E4628 800E9F78 3C058016 */  lui   $a1, %hi(bss3_8015D2C4)
/* 0E462C 800E9F7C 00A22821 */  addu  $a1, $a1, $v0
/* 0E4630 800E9F80 8CA5D2C4 */  lw    $a1, %lo(bss3_8015D2C4)($a1)
/* 0E4634 800E9F84 8CA30000 */  lw    $v1, ($a1)
/* 0E4638 800E9F88 30620080 */  andi  $v0, $v1, 0x80
/* 0E463C 800E9F8C 10400024 */  beqz  $v0, .L3_800EA020
/* 0E4640 800E9F90 00D11021 */   addu  $v0, $a2, $s1

/* 0E4644 800E9F94 00023080 */  sll   $a2, $v0, 2
/* 0E4648 800E9F98 00041200 */  sll   $v0, $a0, 8
/* 0E464C 800E9F9C 00022402 */  srl   $a0, $v0, 0x10
/* 0E4650 800E9FA0 3C018016 */  lui   $at, %hi(bss3_8015D6F4)
/* 0E4654 800E9FA4 00260821 */  addu  $at, $at, $a2
/* 0E4658 800E9FA8 A424D6F4 */  sh    $a0, %lo(bss3_8015D6F4)($at)
/* 0E465C 800E9FAC 8CE20000 */  lw    $v0, ($a3)
/* 0E4660 800E9FB0 3C030800 */  lui   $v1, 0x800
/* 0E4664 800E9FB4 00431024 */  and   $v0, $v0, $v1
/* 0E4668 800E9FB8 50400008 */  beql  $v0, $zero, .L3_800E9FDC
/* 0E466C 800E9FBC 00112040 */   sll   $a0, $s1, 1

/* 0E4670 800E9FC0 3C028016 */  lui   $v0, %hi(bss3_8015D784) # $v0, 0x8016
/* 0E4674 800E9FC4 9442D784 */  lhu   $v0, %lo(bss3_8015D784)($v0)
/* 0E4678 800E9FC8 00821021 */  addu  $v0, $a0, $v0
/* 0E467C 800E9FCC 3C018016 */  lui   $at, %hi(bss3_8015D6F4)
/* 0E4680 800E9FD0 00260821 */  addu  $at, $at, $a2
/* 0E4684 800E9FD4 A422D6F4 */  sh    $v0, %lo(bss3_8015D6F4)($at)
/* 0E4688 800E9FD8 00112040 */  sll   $a0, $s1, 1

.L3_800E9FDC:
/* 0E468C 800E9FDC 00912021 */  addu  $a0, $a0, $s1
/* 0E4690 800E9FE0 00042080 */  sll   $a0, $a0, 2
/* 0E4694 800E9FE4 00912021 */  addu  $a0, $a0, $s1
/* 0E4698 800E9FE8 00042080 */  sll   $a0, $a0, 2
/* 0E469C 800E9FEC 3C028016 */  lui   $v0, %hi(bss3_8015D620) # $v0, 0x8016
/* 0E46A0 800E9FF0 2442D620 */  addiu $v0, %lo(bss3_8015D620) # addiu $v0, $v0, -0x29e0
/* 0E46A4 800E9FF4 00822021 */  addu  $a0, $a0, $v0
/* 0E46A8 800E9FF8 3C058016 */  lui   $a1, %hi(bss3_8015D6F0) # $a1, 0x8016
/* 0E46AC 800E9FFC 24A5D6F0 */  addiu $a1, %lo(bss3_8015D6F0) # addiu $a1, $a1, -0x2910
/* 0E46B0 800EA000 0C03A506 */  jal   func3_800E9418
/* 0E46B4 800EA004 00C52821 */   addu  $a1, $a2, $a1

.L3_800EA008:
/* 0E46B8 800EA008 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E46BC 800EA00C 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E46C0 800EA010 24420004 */  addiu $v0, $v0, 4
/* 0E46C4 800EA014 3C018016 */  lui   $at, %hi(bss3_8015D780) # $at, 0x8016
/* 0E46C8 800EA018 0803A80B */  j     .L3_800EA02C
/* 0E46CC 800EA01C AC22D780 */   sw    $v0, %lo(bss3_8015D780)($at)

.L3_800EA020:
/* 0E46D0 800EA020 34620080 */  ori   $v0, $v1, 0x80
/* 0E46D4 800EA024 0803A818 */  j     .L3_800EA060
/* 0E46D8 800EA028 ACA20000 */   sw    $v0, ($a1)

.L3_800EA02C:
/* 0E46DC 800EA02C 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E46E0 800EA030 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)

.L3_800EA034:
/* 0E46E4 800EA034 8C420000 */  lw    $v0, ($v0)
/* 0E46E8 800EA038 10400009 */  beqz  $v0, .L3_800EA060
/* 0E46EC 800EA03C 00021782 */   srl   $v0, $v0, 0x1e

/* 0E46F0 800EA040 000218C0 */  sll   $v1, $v0, 3
/* 0E46F4 800EA044 00621821 */  addu  $v1, $v1, $v0
/* 0E46F8 800EA048 00031880 */  sll   $v1, $v1, 2
/* 0E46FC 800EA04C 3C028016 */  lui   $v0, %hi(bss3_8015D6F6)
/* 0E4700 800EA050 00431021 */  addu  $v0, $v0, $v1
/* 0E4704 800EA054 9042D6F6 */  lbu   $v0, %lo(bss3_8015D6F6)($v0)
/* 0E4708 800EA058 1040FF49 */  beqz  $v0, .L3_800E9D80
/* 0E470C 800EA05C 3C020700 */   lui   $v0, 0x700

.L3_800EA060:
/* 0E4710 800EA060 3C028016 */  lui   $v0, %hi(bss3_8015D780) # $v0, 0x8016
/* 0E4714 800EA064 8C42D780 */  lw    $v0, %lo(bss3_8015D780)($v0)
/* 0E4718 800EA068 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 0E471C 800EA06C A430FDB0 */  sh    $s0, %lo(var_8003FDB0)($at)
/* 0E4720 800EA070 8C420000 */  lw    $v0, ($v0)
/* 0E4724 800EA074 2EC30001 */  sltiu $v1, $s6, 1
/* 0E4728 800EA078 2C420001 */  sltiu $v0, $v0, 1
/* 0E472C 800EA07C 00431024 */  and   $v0, $v0, $v1
/* 0E4730 800EA080 10400003 */  beqz  $v0, .L3_800EA090
/* 0E4734 800EA084 00000000 */   nop   

/* 0E4738 800EA088 3C018016 */  lui   $at, %hi(bss3_8015D780) # $at, 0x8016
/* 0E473C 800EA08C AC20D780 */  sw    $zero, %lo(bss3_8015D780)($at)

.L3_800EA090:
/* 0E4740 800EA090 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0E4744 800EA094 8FB60040 */  lw    $s6, 0x40($sp)
/* 0E4748 800EA098 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0E474C 800EA09C 8FB40038 */  lw    $s4, 0x38($sp)
/* 0E4750 800EA0A0 8FB30034 */  lw    $s3, 0x34($sp)
/* 0E4754 800EA0A4 8FB20030 */  lw    $s2, 0x30($sp)
/* 0E4758 800EA0A8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0E475C 800EA0AC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0E4760 800EA0B0 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 0E4764 800EA0B4 03E00008 */  jr    $ra
/* 0E4768 800EA0B8 27BD0050 */   addiu $sp, $sp, 0x50
