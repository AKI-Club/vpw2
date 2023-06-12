glabel func_8000E0C8
/* 00ECC8 8000E0C8 27BDFF38 */  addiu $sp, $sp, -0xc8
/* 00ECCC 8000E0CC C7A600DC */  lwc1  $f6, 0xdc($sp)
/* 00ECD0 8000E0D0 C7A800E4 */  lwc1  $f8, 0xe4($sp)
/* 00ECD4 8000E0D4 F7BC00B8 */  sdc1  $f28, 0xb8($sp)
/* 00ECD8 8000E0D8 4486E000 */  mtc1  $a2, $f28
/* 00ECDC 8000E0DC AFB40088 */  sw    $s4, 0x88($sp)
/* 00ECE0 8000E0E0 97B400EA */  lhu   $s4, 0xea($sp)
/* 00ECE4 8000E0E4 4606E301 */  sub.s $f12, $f28, $f6
/* 00ECE8 8000E0E8 C7A600D8 */  lwc1  $f6, 0xd8($sp)
/* 00ECEC 8000E0EC F7BE00C0 */  sdc1  $f30, 0xc0($sp)
/* 00ECF0 8000E0F0 4485F000 */  mtc1  $a1, $f30
/* 00ECF4 8000E0F4 AFB20080 */  sw    $s2, 0x80($sp)
/* 00ECF8 8000E0F8 00809021 */  addu  $s2, $a0, $zero
/* 00ECFC 8000E0FC AFB00078 */  sw    $s0, 0x78($sp)
/* 00ED00 8000E100 00E08021 */  addu  $s0, $a3, $zero
/* 00ED04 8000E104 AFBF0094 */  sw    $ra, 0x94($sp)
/* 00ED08 8000E108 AFB60090 */  sw    $s6, 0x90($sp)
/* 00ED0C 8000E10C AFB5008C */  sw    $s5, 0x8c($sp)
/* 00ED10 8000E110 AFB30084 */  sw    $s3, 0x84($sp)
/* 00ED14 8000E114 AFB1007C */  sw    $s1, 0x7c($sp)
/* 00ED18 8000E118 F7BA00B0 */  sdc1  $f26, 0xb0($sp)
/* 00ED1C 8000E11C F7B800A8 */  sdc1  $f24, 0xa8($sp)
/* 00ED20 8000E120 F7B600A0 */  sdc1  $f22, 0xa0($sp)
/* 00ED24 8000E124 F7B40098 */  sdc1  $f20, 0x98($sp)
/* 00ED28 8000E128 0C00108A */  jal   func_80004228
/* 00ED2C 8000E12C 46064381 */   sub.s $f14, $f8, $f6

/* 00ED30 8000E130 3293FFFF */  andi  $s3, $s4, 0xffff
/* 00ED34 8000E134 12600012 */  beqz  $s3, .L8000E180
/* 00ED38 8000E138 46000606 */   mov.s $f24, $f0

/* 00ED3C 8000E13C 4600C587 */  neg.s $f22, $f24
/* 00ED40 8000E140 3C018005 */  lui   $at, %hi(D_8004AA18)
/* 00ED44 8000E144 D434AA18 */  ldc1  $f20, %lo(D_8004AA18)($at)
/* 00ED48 8000E148 0C00C820 */  jal   fsin
/* 00ED4C 8000E14C 4600B306 */   mov.s $f12, $f22

/* 00ED50 8000E150 46000021 */  cvt.d.s $f0, $f0
/* 00ED54 8000E154 46340002 */  mul.d $f0, $f0, $f20
/* 00ED58 8000E158 46200020 */  cvt.s.d $f0, $f0
/* 00ED5C 8000E15C 44160000 */  mfc1  $s6, $f0
/* 00ED60 8000E160 00000000 */  nop   
/* 00ED64 8000E164 0C00C38C */  jal   fcos
/* 00ED68 8000E168 4600B306 */   mov.s $f12, $f22

/* 00ED6C 8000E16C 46000021 */  cvt.d.s $f0, $f0
/* 00ED70 8000E170 46340002 */  mul.d $f0, $f0, $f20
/* 00ED74 8000E174 46200020 */  cvt.s.d $f0, $f0
/* 00ED78 8000E178 44150000 */  mfc1  $s5, $f0
/* 00ED7C 8000E17C 00000000 */  nop   

.L8000E180:
/* 00ED80 8000E180 0C00C820 */  jal   fsin
/* 00ED84 8000E184 4600F306 */   mov.s $f12, $f30

/* 00ED88 8000E188 46000686 */  mov.s $f26, $f0
/* 00ED8C 8000E18C 0C00C38C */  jal   fcos
/* 00ED90 8000E190 4600C306 */   mov.s $f12, $f24

/* 00ED94 8000E194 00000000 */  nop   
/* 00ED98 8000E198 4600D582 */  mul.s $f22, $f26, $f0
/* 00ED9C 8000E19C 0C00C820 */  jal   fsin
/* 00EDA0 8000E1A0 4600C306 */   mov.s $f12, $f24

/* 00EDA4 8000E1A4 4600F306 */  mov.s $f12, $f30
/* 00EDA8 8000E1A8 0C00C38C */  jal   fcos
/* 00EDAC 8000E1AC 4600D502 */   mul.s $f20, $f26, $f0

/* 00EDB0 8000E1B0 46000686 */  mov.s $f26, $f0
/* 00EDB4 8000E1B4 C7A800D8 */  lwc1  $f8, 0xd8($sp)
/* 00EDB8 8000E1B8 3C064204 */  lui   $a2, 0x4204
/* 00EDBC 8000E1BC 3C073FAA */  lui   $a3, (0x3FAAAAAB >> 16) # lui $a3, 0x3faa
/* 00EDC0 8000E1C0 34E7AAAB */  ori   $a3, (0x3FAAAAAB & 0xFFFF) # ori $a3, $a3, 0xaaab
/* 00EDC4 8000E1C4 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 00EDC8 8000E1C8 44810000 */  mtc1  $at, $f0
/* 00EDCC 8000E1CC 3C014600 */  li    $at, 0x46000000 # 8192.000000
/* 00EDD0 8000E1D0 44811000 */  mtc1  $at, $f2
/* 00EDD4 8000E1D4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00EDD8 8000E1D8 44812000 */  mtc1  $at, $f4
/* 00EDDC 8000E1DC C7A600DC */  lwc1  $f6, 0xdc($sp)
/* 00EDE0 8000E1E0 3C018007 */  lui   $at, %hi(bssMain_8006FE98) # $at, 0x8007
/* 00EDE4 8000E1E4 E428FE98 */  swc1  $f8, %lo(bssMain_8006FE98)($at)
/* 00EDE8 8000E1E8 C7A800E0 */  lwc1  $f8, 0xe0($sp)
/* 00EDEC 8000E1EC 3C118007 */  lui   $s1, %hi(bssMain_8006FE10) # $s1, 0x8007
/* 00EDF0 8000E1F0 2631FE10 */  addiu $s1, %lo(bssMain_8006FE10) # addiu $s1, $s1, -0x1f0
/* 00EDF4 8000E1F4 3C018007 */  lui   $at, %hi(bssMain_8006FE9C) # $at, 0x8007
/* 00EDF8 8000E1F8 E426FE9C */  swc1  $f6, %lo(bssMain_8006FE9C)($at)
/* 00EDFC 8000E1FC C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* 00EE00 8000E200 02202021 */  addu  $a0, $s1, $zero
/* 00EE04 8000E204 3C018007 */  lui   $at, %hi(bssMain_8006FE90) # $at, 0x8007
/* 00EE08 8000E208 E43CFE90 */  swc1  $f28, %lo(bssMain_8006FE90)($at)
/* 00EE0C 8000E20C 3C018007 */  lui   $at, %hi(bssMain_8006FE94) # $at, 0x8007
/* 00EE10 8000E210 AC30FE94 */  sw    $s0, %lo(bssMain_8006FE94)($at)
/* 00EE14 8000E214 E7A00010 */  swc1  $f0, 0x10($sp)
/* 00EE18 8000E218 E7A20014 */  swc1  $f2, 0x14($sp)
/* 00EE1C 8000E21C E7A40018 */  swc1  $f4, 0x18($sp)
/* 00EE20 8000E220 3C018007 */  lui   $at, %hi(bssMain_8006FEA0) # $at, 0x8007
/* 00EE24 8000E224 E428FEA0 */  swc1  $f8, %lo(bssMain_8006FEA0)($at)
/* 00EE28 8000E228 3C018007 */  lui   $at, %hi(bssMain_8006FEA4) # $at, 0x8007
/* 00EE2C 8000E22C E426FEA4 */  swc1  $f6, %lo(bssMain_8006FEA4)($at)
/* 00EE30 8000E230 0C00C644 */  jal   guPerspectiveF
/* 00EE34 8000E234 27A50068 */   addiu $a1, $sp, 0x68

/* 00EE38 8000E238 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00EE3C 8000E23C C7A800DC */  lwc1  $f8, 0xdc($sp)
/* 00EE40 8000E240 C7A600E0 */  lwc1  $f6, 0xe0($sp)
/* 00EE44 8000E244 02003021 */  addu  $a2, $s0, $zero
/* 00EE48 8000E248 E7A80010 */  swc1  $f8, 0x10($sp)
/* 00EE4C 8000E24C C7A800E4 */  lwc1  $f8, 0xe4($sp)
/* 00EE50 8000E250 3C108007 */  lui   $s0, %hi(bssMain_8006FE50) # $s0, 0x8007
/* 00EE54 8000E254 2610FE50 */  addiu $s0, %lo(bssMain_8006FE50) # addiu $s0, $s0, -0x1b0
/* 00EE58 8000E258 4405E000 */  mfc1  $a1, $f28
/* 00EE5C 8000E25C 02002021 */  addu  $a0, $s0, $zero
/* 00EE60 8000E260 E7BA0020 */  swc1  $f26, 0x20($sp)
/* 00EE64 8000E264 E7A60014 */  swc1  $f6, 0x14($sp)
/* 00EE68 8000E268 E7B6001C */  swc1  $f22, 0x1c($sp)
/* 00EE6C 8000E26C E7B40024 */  swc1  $f20, 0x24($sp)
/* 00EE70 8000E270 0C00C3E0 */  jal   guLookAtF
/* 00EE74 8000E274 E7A80018 */   swc1  $f8, 0x18($sp)

/* 00EE78 8000E278 02402021 */  addu  $a0, $s2, $zero
/* 00EE7C 8000E27C 02202821 */  addu  $a1, $s1, $zero
/* 00EE80 8000E280 0C0005DA */  jal   func_80001768
/* 00EE84 8000E284 02003021 */   addu  $a2, $s0, $zero

/* 00EE88 8000E288 97A50068 */  lhu   $a1, 0x68($sp)
/* 00EE8C 8000E28C 0C0005E3 */  jal   func_8000178C
/* 00EE90 8000E290 02402021 */   addu  $a0, $s2, $zero

/* 00EE94 8000E294 12600030 */  beqz  $s3, .L8000E358
/* 00EE98 8000E298 02002021 */   addu  $a0, $s0, $zero

/* 00EE9C 8000E29C 02202821 */  addu  $a1, $s1, $zero
/* 00EEA0 8000E2A0 0C000842 */  jal   func_80002108
/* 00EEA4 8000E2A4 27A60028 */   addiu $a2, $sp, 0x28

/* 00EEA8 8000E2A8 27A40028 */  addiu $a0, $sp, 0x28
/* 00EEAC 8000E2AC 00003021 */  addu  $a2, $zero, $zero
/* 00EEB0 8000E2B0 02C02821 */  addu  $a1, $s6, $zero
/* 00EEB4 8000E2B4 02A03821 */  addu  $a3, $s5, $zero
/* 00EEB8 8000E2B8 27A2006C */  addiu $v0, $sp, 0x6c
/* 00EEBC 8000E2BC AFA20010 */  sw    $v0, 0x10($sp)
/* 00EEC0 8000E2C0 27A20070 */  addiu $v0, $sp, 0x70
/* 00EEC4 8000E2C4 AFA20014 */  sw    $v0, 0x14($sp)
/* 00EEC8 8000E2C8 27A20074 */  addiu $v0, $sp, 0x74
/* 00EECC 8000E2CC 0C00D178 */  jal   guMtxXFMF
/* 00EED0 8000E2D0 AFA20018 */   sw    $v0, 0x18($sp)

/* 00EED4 8000E2D4 C7A00074 */  lwc1  $f0, 0x74($sp)
/* 00EED8 8000E2D8 3C018005 */  lui   $at, %hi(D_8004AA20)
/* 00EEDC 8000E2DC D422AA20 */  ldc1  $f2, %lo(D_8004AA20)($at)
/* 00EEE0 8000E2E0 46000021 */  cvt.d.s $f0, $f0
/* 00EEE4 8000E2E4 4620103E */  c.le.d $f2, $f0
/* 00EEE8 8000E2E8 00000000 */  nop   
/* 00EEEC 8000E2EC 45000005 */  bc1f  .L8000E304
/* 00EEF0 8000E2F0 00000000 */   nop

/* 00EEF4 8000E2F4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 00EEF8 8000E2F8 44810000 */  mtc1  $at, $f0
/* 00EEFC 8000E2FC 00000000 */  nop   
/* 00EF00 8000E300 E7A00074 */  swc1  $f0, 0x74($sp)

.L8000E304:
/* 00EF04 8000E304 C7A20070 */  lwc1  $f2, 0x70($sp)
/* 00EF08 8000E308 3C018005 */  lui   $at, %hi(D_8004AA28)
/* 00EF0C 8000E30C D420AA28 */  ldc1  $f0, %lo(D_8004AA28)($at)
/* 00EF10 8000E310 460010A1 */  cvt.d.s $f2, $f2
/* 00EF14 8000E314 46201082 */  mul.d $f2, $f2, $f0
/* 00EF18 8000E318 C7A00074 */  lwc1  $f0, 0x74($sp)
/* 00EF1C 8000E31C 46000021 */  cvt.d.s $f0, $f0
/* 00EF20 8000E320 46201083 */  div.d $f2, $f2, $f0
/* 00EF24 8000E324 4620100D */  trunc.w.d $f0, $f2
/* 00EF28 8000E328 44060000 */  mfc1  $a2, $f0
/* 00EF2C 8000E32C 00000000 */  nop   
/* 00EF30 8000E330 04C10003 */  bgez  $a2, .L8000E340
/* 00EF34 8000E334 28C200F1 */   slti  $v0, $a2, 0xf1

/* 00EF38 8000E338 080038D2 */  j     .L8000E348
/* 00EF3C 8000E33C 00003021 */   addu  $a2, $zero, $zero

.L8000E340:
/* 00EF40 8000E340 50400001 */  beql  $v0, $zero, .L8000E348
/* 00EF44 8000E344 240600F0 */   li    $a2, 240

.L8000E348:
/* 00EF48 8000E348 02402021 */  addu  $a0, $s2, $zero
/* 00EF4C 8000E34C 328500FF */  andi  $a1, $s4, 0xff
/* 00EF50 8000E350 0C0005E7 */  jal   func_8000179C
/* 00EF54 8000E354 30C600FF */   andi  $a2, $a2, 0xff

.L8000E358:
/* 00EF58 8000E358 3C028004 */  lui   $v0, %hi(var_8003FDB8) # $v0, 0x8004
/* 00EF5C 8000E35C 9442FDB8 */  lhu   $v0, %lo(var_8003FDB8)($v0)
/* 00EF60 8000E360 24420001 */  addiu $v0, $v0, 1
/* 00EF64 8000E364 3C018004 */  lui   $at, %hi(var_8003FDB8) # $at, 0x8004
/* 00EF68 8000E368 A422FDB8 */  sh    $v0, %lo(var_8003FDB8)($at)
/* 00EF6C 8000E36C 8FBF0094 */  lw    $ra, 0x94($sp)
/* 00EF70 8000E370 8FB60090 */  lw    $s6, 0x90($sp)
/* 00EF74 8000E374 8FB5008C */  lw    $s5, 0x8c($sp)
/* 00EF78 8000E378 8FB40088 */  lw    $s4, 0x88($sp)
/* 00EF7C 8000E37C 8FB30084 */  lw    $s3, 0x84($sp)
/* 00EF80 8000E380 8FB20080 */  lw    $s2, 0x80($sp)
/* 00EF84 8000E384 8FB1007C */  lw    $s1, 0x7c($sp)
/* 00EF88 8000E388 8FB00078 */  lw    $s0, 0x78($sp)
/* 00EF8C 8000E38C D7BE00C0 */  ldc1  $f30, 0xc0($sp)
/* 00EF90 8000E390 D7BC00B8 */  ldc1  $f28, 0xb8($sp)
/* 00EF94 8000E394 D7BA00B0 */  ldc1  $f26, 0xb0($sp)
/* 00EF98 8000E398 D7B800A8 */  ldc1  $f24, 0xa8($sp)
/* 00EF9C 8000E39C D7B600A0 */  ldc1  $f22, 0xa0($sp)
/* 00EFA0 8000E3A0 D7B40098 */  ldc1  $f20, 0x98($sp)
/* 00EFA4 8000E3A4 03E00008 */  jr    $ra
/* 00EFA8 8000E3A8 27BD00C8 */   addiu $sp, $sp, 0xc8
