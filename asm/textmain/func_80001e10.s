glabel func_80001E10
/* 002A10 80001E10 27BDFF70 */  addiu $sp, $sp, -0x90
/* 002A14 80001E14 AFB30064 */  sw    $s3, 0x64($sp)
/* 002A18 80001E18 00809821 */  addu  $s3, $a0, $zero
/* 002A1C 80001E1C AFBF007C */  sw    $ra, 0x7c($sp)
/* 002A20 80001E20 AFBE0078 */  sw    $fp, 0x78($sp)
/* 002A24 80001E24 AFB70074 */  sw    $s7, 0x74($sp)
/* 002A28 80001E28 AFB60070 */  sw    $s6, 0x70($sp)
/* 002A2C 80001E2C AFB5006C */  sw    $s5, 0x6c($sp)
/* 002A30 80001E30 AFB40068 */  sw    $s4, 0x68($sp)
/* 002A34 80001E34 AFB20060 */  sw    $s2, 0x60($sp)
/* 002A38 80001E38 AFB1005C */  sw    $s1, 0x5c($sp)
/* 002A3C 80001E3C AFB00058 */  sw    $s0, 0x58($sp)
/* 002A40 80001E40 F7B60088 */  sdc1  $f22, 0x88($sp)
/* 002A44 80001E44 F7B40080 */  sdc1  $f20, 0x80($sp)
/* 002A48 80001E48 126000A1 */  beqz  $s3, .L800020D0
/* 002A4C 80001E4C 27A80020 */   addiu $t0, $sp, 0x20

/* 002A50 80001E50 27BE0024 */  addiu $fp, $sp, 0x24
/* 002A54 80001E54 27B70028 */  addiu $s7, $sp, 0x28
/* 002A58 80001E58 27B60038 */  addiu $s6, $sp, 0x38
/* 002A5C 80001E5C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 002A60 80001E60 4481B000 */  mtc1  $at, $f22
/* 002A64 80001E64 27B5003C */  addiu $s5, $sp, 0x3c
/* 002A68 80001E68 4480A000 */  mtc1  $zero, $f20
/* 002A6C 80001E6C 27B40040 */  addiu $s4, $sp, 0x40
/* 002A70 80001E70 AFA8004C */  sw    $t0, 0x4c($sp)

.L80001E74:
/* 002A74 80001E74 8E710014 */  lw    $s1, 0x14($s3)
/* 002A78 80001E78 1220008D */  beqz  $s1, .L800020B0
/* 002A7C 80001E7C 00000000 */   nop   

/* 002A80 80001E80 9262001A */  lbu   $v0, 0x1a($s3)
/* 002A84 80001E84 1040008A */  beqz  $v0, .L800020B0
/* 002A88 80001E88 00000000 */   nop   

/* 002A8C 80001E8C 8FA8004C */  lw    $t0, 0x4c($sp)
/* 002A90 80001E90 AFBE0014 */  sw    $fp, 0x14($sp)
/* 002A94 80001E94 AFB70018 */  sw    $s7, 0x18($sp)
/* 002A98 80001E98 AFA80010 */  sw    $t0, 0x10($sp)
/* 002A9C 80001E9C 8E25000C */  lw    $a1, 0xc($s1)
/* 002AA0 80001EA0 8E260010 */  lw    $a2, 0x10($s1)
/* 002AA4 80001EA4 8E270014 */  lw    $a3, 0x14($s1)
/* 002AA8 80001EA8 0C00D178 */  jal   guMtxXFMF
/* 002AAC 80001EAC 2664005C */   addiu $a0, $s3, 0x5c

/* 002AB0 80001EB0 3C018005 */  lui   $at, %hi(bssMain_80056F28) # $at, 0x8005
/* 002AB4 80001EB4 C4266F28 */  lwc1  $f6, %lo(bssMain_80056F28)($at)
/* 002AB8 80001EB8 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 002ABC 80001EBC 3C018005 */  lui   $at, %hi(bssMain_80056F2C) # $at, 0x8005
/* 002AC0 80001EC0 C4246F2C */  lwc1  $f4, %lo(bssMain_80056F2C)($at)
/* 002AC4 80001EC4 46003181 */  sub.s $f6, $f6, $f0
/* 002AC8 80001EC8 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 002ACC 80001ECC 3C018005 */  lui   $at, %hi(bssMain_80056F30) # $at, 0x8005
/* 002AD0 80001ED0 C4226F30 */  lwc1  $f2, %lo(bssMain_80056F30)($at)
/* 002AD4 80001ED4 46002101 */  sub.s $f4, $f4, $f0
/* 002AD8 80001ED8 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 002ADC 80001EDC 8FA4004C */  lw    $a0, 0x4c($sp)
/* 002AE0 80001EE0 03C02821 */  addu  $a1, $fp, $zero
/* 002AE4 80001EE4 46001081 */  sub.s $f2, $f2, $f0
/* 002AE8 80001EE8 02E03021 */  addu  $a2, $s7, $zero
/* 002AEC 80001EEC E7A60020 */  swc1  $f6, 0x20($sp)
/* 002AF0 80001EF0 E7A40024 */  swc1  $f4, 0x24($sp)
/* 002AF4 80001EF4 0C00D148 */  jal   guNormalize
/* 002AF8 80001EF8 E7A20028 */   swc1  $f2, 0x28($sp)

.L80001EFC:
/* 002AFC 80001EFC 8E240004 */  lw    $a0, 4($s1)
/* 002B00 80001F00 4405A000 */  mfc1  $a1, $f20
/* 002B04 80001F04 4406A000 */  mfc1  $a2, $f20
/* 002B08 80001F08 4407A000 */  mfc1  $a3, $f20
/* 002B0C 80001F0C 27A2002C */  addiu $v0, $sp, 0x2c
/* 002B10 80001F10 AFA20010 */  sw    $v0, 0x10($sp)
/* 002B14 80001F14 27A20030 */  addiu $v0, $sp, 0x30
/* 002B18 80001F18 AFA20014 */  sw    $v0, 0x14($sp)
/* 002B1C 80001F1C 27A20034 */  addiu $v0, $sp, 0x34
/* 002B20 80001F20 AFA20018 */  sw    $v0, 0x18($sp)
/* 002B24 80001F24 0C00D178 */  jal   guMtxXFMF
/* 002B28 80001F28 2484005C */   addiu $a0, $a0, 0x5c

/* 002B2C 80001F2C 8622002C */  lh    $v0, 0x2c($s1)
/* 002B30 80001F30 8E230030 */  lw    $v1, 0x30($s1)
/* 002B34 80001F34 1040005B */  beqz  $v0, .L800020A4
/* 002B38 80001F38 00009021 */   addu  $s2, $zero, $zero

/* 002B3C 80001F3C 2470000F */  addiu $s0, $v1, 0xf

.L80001F40:
/* 002B40 80001F40 8E240004 */  lw    $a0, 4($s1)
/* 002B44 80001F44 8202FFFD */  lb    $v0, -3($s0)
/* 002B48 80001F48 8203FFFE */  lb    $v1, -2($s0)
/* 002B4C 80001F4C 8207FFFF */  lb    $a3, -1($s0)
/* 002B50 80001F50 AFB60010 */  sw    $s6, 0x10($sp)
/* 002B54 80001F54 AFB50014 */  sw    $s5, 0x14($sp)
/* 002B58 80001F58 AFB40018 */  sw    $s4, 0x18($sp)
/* 002B5C 80001F5C 44824000 */  mtc1  $v0, $f8
/* 002B60 80001F60 00000000 */  nop   
/* 002B64 80001F64 46804220 */  cvt.s.w $f8, $f8
/* 002B68 80001F68 44054000 */  mfc1  $a1, $f8
/* 002B6C 80001F6C 44834000 */  mtc1  $v1, $f8
/* 002B70 80001F70 00000000 */  nop   
/* 002B74 80001F74 46804220 */  cvt.s.w $f8, $f8
/* 002B78 80001F78 44064000 */  mfc1  $a2, $f8
/* 002B7C 80001F7C 44874000 */  mtc1  $a3, $f8
/* 002B80 80001F80 00000000 */  nop   
/* 002B84 80001F84 46804220 */  cvt.s.w $f8, $f8
/* 002B88 80001F88 44074000 */  mfc1  $a3, $f8
/* 002B8C 80001F8C 00000000 */  nop   
/* 002B90 80001F90 0C00D178 */  jal   guMtxXFMF
/* 002B94 80001F94 2484005C */   addiu $a0, $a0, 0x5c

/* 002B98 80001F98 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 002B9C 80001F9C C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 002BA0 80001FA0 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 002BA4 80001FA4 46003181 */  sub.s $f6, $f6, $f0
/* 002BA8 80001FA8 C7A00030 */  lwc1  $f0, 0x30($sp)
/* 002BAC 80001FAC C7A20040 */  lwc1  $f2, 0x40($sp)
/* 002BB0 80001FB0 46002101 */  sub.s $f4, $f4, $f0
/* 002BB4 80001FB4 C7A00034 */  lwc1  $f0, 0x34($sp)
/* 002BB8 80001FB8 02C02021 */  addu  $a0, $s6, $zero
/* 002BBC 80001FBC 02A02821 */  addu  $a1, $s5, $zero
/* 002BC0 80001FC0 46001081 */  sub.s $f2, $f2, $f0
/* 002BC4 80001FC4 02803021 */  addu  $a2, $s4, $zero
/* 002BC8 80001FC8 E7A60038 */  swc1  $f6, 0x38($sp)
/* 002BCC 80001FCC E7A4003C */  swc1  $f4, 0x3c($sp)
/* 002BD0 80001FD0 0C00D148 */  jal   guNormalize
/* 002BD4 80001FD4 E7A20040 */   swc1  $f2, 0x40($sp)

/* 002BD8 80001FD8 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 002BDC 80001FDC C7A00038 */  lwc1  $f0, 0x38($sp)
/* 002BE0 80001FE0 46003182 */  mul.s $f6, $f6, $f0
/* 002BE4 80001FE4 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 002BE8 80001FE8 C7A0003C */  lwc1  $f0, 0x3c($sp)
/* 002BEC 80001FEC 46002102 */  mul.s $f4, $f4, $f0
/* 002BF0 80001FF0 C7A20028 */  lwc1  $f2, 0x28($sp)
/* 002BF4 80001FF4 C7A00040 */  lwc1  $f0, 0x40($sp)
/* 002BF8 80001FF8 46001082 */  mul.s $f2, $f2, $f0
/* 002BFC 80001FFC 46043180 */  add.s $f6, $f6, $f4
/* 002C00 80002000 46023180 */  add.s $f6, $f6, $f2
/* 002C04 80002004 4606A03C */  c.lt.s $f20, $f6
/* 002C08 80002008 3C018005 */  lui   $at, %hi(bssMain_80056F24) # $at, 0x8005
/* 002C0C 8000200C C4246F24 */  lwc1  $f4, %lo(bssMain_80056F24)($at)
/* 002C10 80002010 4500000F */  bc1f  .L80002050
/* 002C14 80002014 00000000 */   nop

/* 002C18 80002018 3C018005 */  lui   $at, %hi(bssMain_80056F20) # $at, 0x8005
/* 002C1C 8000201C C4206F20 */  lwc1  $f0, %lo(bssMain_80056F20)($at)
/* 002C20 80002020 46060002 */  mul.s $f0, $f0, $f6
/* 002C24 80002024 46002100 */  add.s $f4, $f4, $f0
/* 002C28 80002028 3C018005 */  lui   $at, %hi(D_8004A630)
/* 002C2C 8000202C D422A630 */  ldc1  $f2, %lo(D_8004A630)($at)
/* 002C30 80002030 46002021 */  cvt.d.s $f0, $f4
/* 002C34 80002034 4620103C */  c.lt.d $f2, $f0
/* 002C38 80002038 00000000 */  nop   
/* 002C3C 8000203C 45000004 */  bc1f  .L80002050
/* 002C40 80002040 00000000 */   nop

/* 002C44 80002044 3C01437F */  li    $at, 0x437F0000 # 255.000000
/* 002C48 80002048 44812000 */  mtc1  $at, $f4
/* 002C4C 8000204C 00000000 */  nop   

.L80002050:
/* 002C50 80002050 4604B03E */  c.le.s $f22, $f4
/* 002C54 80002054 00000000 */  nop   
/* 002C58 80002058 00000000 */  nop   
/* 002C5C 8000205C 45030006 */  bc1tl .L80002078
/* 002C60 80002060 46162001 */   cop1 0x162001

/* 002C64 80002064 4600200D */  trunc.w.s $f0, $f4
/* 002C68 80002068 44030000 */  mfc1  $v1, $f0
/* 002C6C 8000206C 00000000 */  nop   
/* 002C70 80002070 08000824 */  j     .L80002090
/* 002C74 80002074 A2030000 */   sb    $v1, ($s0)

.L80002078:
/* 002C78 80002078 3C088000 */  lui   $t0, 0x8000
/* 002C7C 8000207C 4600008D */  trunc.w.s $f2, $f0
/* 002C80 80002080 44031000 */  mfc1  $v1, $f2
/* 002C84 80002084 00000000 */  nop   
/* 002C88 80002088 00681825 */  or    $v1, $v1, $t0
/* 002C8C 8000208C A2030000 */  sb    $v1, ($s0)

.L80002090:
/* 002C90 80002090 8622002C */  lh    $v0, 0x2c($s1)
/* 002C94 80002094 26520001 */  addiu $s2, $s2, 1
/* 002C98 80002098 0242102B */  sltu  $v0, $s2, $v0
/* 002C9C 8000209C 1440FFA8 */  bnez  $v0, .L80001F40
/* 002CA0 800020A0 26100010 */   addiu $s0, $s0, 0x10

.L800020A4:
/* 002CA4 800020A4 8E310008 */  lw    $s1, 8($s1)
/* 002CA8 800020A8 1620FF94 */  bnez  $s1, .L80001EFC
/* 002CAC 800020AC 00000000 */   nop   

.L800020B0:
/* 002CB0 800020B0 8E640004 */  lw    $a0, 4($s3)
/* 002CB4 800020B4 10800003 */  beqz  $a0, .L800020C4
/* 002CB8 800020B8 00000000 */   nop   

/* 002CBC 800020BC 0C000784 */  jal   func_80001E10
/* 002CC0 800020C0 00000000 */   nop   

.L800020C4:
/* 002CC4 800020C4 8E730008 */  lw    $s3, 8($s3)
/* 002CC8 800020C8 1660FF6A */  bnez  $s3, .L80001E74
/* 002CCC 800020CC 00000000 */   nop   

.L800020D0:
/* 002CD0 800020D0 8FBF007C */  lw    $ra, 0x7c($sp)
/* 002CD4 800020D4 8FBE0078 */  lw    $fp, 0x78($sp)
/* 002CD8 800020D8 8FB70074 */  lw    $s7, 0x74($sp)
/* 002CDC 800020DC 8FB60070 */  lw    $s6, 0x70($sp)
/* 002CE0 800020E0 8FB5006C */  lw    $s5, 0x6c($sp)
/* 002CE4 800020E4 8FB40068 */  lw    $s4, 0x68($sp)
/* 002CE8 800020E8 8FB30064 */  lw    $s3, 0x64($sp)
/* 002CEC 800020EC 8FB20060 */  lw    $s2, 0x60($sp)
/* 002CF0 800020F0 8FB1005C */  lw    $s1, 0x5c($sp)
/* 002CF4 800020F4 8FB00058 */  lw    $s0, 0x58($sp)
/* 002CF8 800020F8 D7B60088 */  ldc1  $f22, 0x88($sp)
/* 002CFC 800020FC D7B40080 */  ldc1  $f20, 0x80($sp)
/* 002D00 80002100 03E00008 */  jr    $ra
/* 002D04 80002104 27BD0090 */   addiu $sp, $sp, 0x90