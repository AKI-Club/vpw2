glabel func_80011190
/* 011D90 80011190 27BDFF78 */  addiu $sp, $sp, -0x88
/* 011D94 80011194 AFBF007C */  sw    $ra, 0x7c($sp)
/* 011D98 80011198 AFBE0078 */  sw    $fp, 0x78($sp)
/* 011D9C 8001119C AFB70074 */  sw    $s7, 0x74($sp)
/* 011DA0 800111A0 AFB60070 */  sw    $s6, 0x70($sp)
/* 011DA4 800111A4 AFB5006C */  sw    $s5, 0x6c($sp)
/* 011DA8 800111A8 AFB40068 */  sw    $s4, 0x68($sp)
/* 011DAC 800111AC AFB30064 */  sw    $s3, 0x64($sp)
/* 011DB0 800111B0 AFB20060 */  sw    $s2, 0x60($sp)
/* 011DB4 800111B4 AFB1005C */  sw    $s1, 0x5c($sp)
/* 011DB8 800111B8 AFB00058 */  sw    $s0, 0x58($sp)
/* 011DBC 800111BC F7B40080 */  sdc1  $f20, 0x80($sp)
/* 011DC0 800111C0 AFA50014 */  sw    $a1, 0x14($sp)
/* 011DC4 800111C4 AFA6001C */  sw    $a2, 0x1c($sp)
/* 011DC8 800111C8 AFA70024 */  sw    $a3, 0x24($sp)
/* 011DCC 800111CC 809E001B */  lb    $fp, 0x1b($a0)
/* 011DD0 800111D0 00006021 */  addu  $t4, $zero, $zero
/* 011DD4 800111D4 00006821 */  addu  $t5, $zero, $zero
/* 011DD8 800111D8 AFAC0028 */  sw    $t4, 0x28($sp)
/* 011DDC 800111DC AFAD002C */  sw    $t5, 0x2c($sp)
/* 011DE0 800111E0 8C84000C */  lw    $a0, 0xc($a0)
/* 011DE4 800111E4 00007021 */  addu  $t6, $zero, $zero
/* 011DE8 800111E8 00007821 */  addu  $t7, $zero, $zero
/* 011DEC 800111EC 0000C021 */  addu  $t8, $zero, $zero
/* 011DF0 800111F0 0000C821 */  addu  $t9, $zero, $zero
/* 011DF4 800111F4 13C000DB */  beqz  $fp, .L80011564
/* 011DF8 800111F8 AFA40054 */   sw    $a0, 0x54($sp)

/* 011DFC 800111FC 94820000 */  lhu   $v0, ($a0)
/* 011E00 80011200 00021400 */  sll   $v0, $v0, 0x10
/* 011E04 80011204 0002AC03 */  sra   $s5, $v0, 0x10
/* 011E08 80011208 0002A7C3 */  sra   $s4, $v0, 0x1f
/* 011E0C 8001120C 94820002 */  lhu   $v0, 2($a0)
/* 011E10 80011210 00021400 */  sll   $v0, $v0, 0x10
/* 011E14 80011214 00028C03 */  sra   $s1, $v0, 0x10
/* 011E18 80011218 000287C3 */  sra   $s0, $v0, 0x1f
/* 011E1C 8001121C 94820004 */  lhu   $v0, 4($a0)
/* 011E20 80011220 00021400 */  sll   $v0, $v0, 0x10
/* 011E24 80011224 00026C03 */  sra   $t5, $v0, 0x10
/* 011E28 80011228 AFAD003C */  sw    $t5, 0x3c($sp)
/* 011E2C 8001122C 000217C3 */  sra   $v0, $v0, 0x1f
/* 011E30 80011230 AFA20038 */  sw    $v0, 0x38($sp)
/* 011E34 80011234 8FAC0038 */  lw    $t4, 0x38($sp)
/* 011E38 80011238 8FAD003C */  lw    $t5, 0x3c($sp)
/* 011E3C 8001123C AFAC0038 */  sw    $t4, 0x38($sp)
/* 011E40 80011240 AFAD003C */  sw    $t5, 0x3c($sp)
/* 011E44 80011244 8FAC0038 */  lw    $t4, 0x38($sp)
/* 011E48 80011248 8FAD003C */  lw    $t5, 0x3c($sp)
/* 011E4C 8001124C 0280B021 */  addu  $s6, $s4, $zero
/* 011E50 80011250 02A0B821 */  addu  $s7, $s5, $zero
/* 011E54 80011254 02009021 */  addu  $s2, $s0, $zero
/* 011E58 80011258 AFAC0030 */  sw    $t4, 0x30($sp)
/* 011E5C 8001125C AFAD0034 */  sw    $t5, 0x34($sp)
/* 011E60 80011260 13C0007E */  beqz  $fp, .L8001145C
/* 011E64 80011264 02209821 */   addu  $s3, $s1, $zero

/* 011E68 80011268 8FAA0054 */  lw    $t2, 0x54($sp)
.L8001126C:
/* 011E6C 8001126C 95460000 */  lhu   $a2, ($t2)
/* 011E70 80011270 00063400 */  sll   $a2, $a2, 0x10
/* 011E74 80011274 00066C03 */  sra   $t5, $a2, 0x10
/* 011E78 80011278 AFAD004C */  sw    $t5, 0x4c($sp)
/* 011E7C 8001127C 8FA9004C */  lw    $t1, 0x4c($sp)
/* 011E80 80011280 00065FC3 */  sra   $t3, $a2, 0x1f
/* 011E84 80011284 95460002 */  lhu   $a2, 2($t2)
/* 011E88 80011288 8FAC0028 */  lw    $t4, 0x28($sp)
/* 011E8C 8001128C 8FAD002C */  lw    $t5, 0x2c($sp)
/* 011E90 80011290 01604021 */  addu  $t0, $t3, $zero
/* 011E94 80011294 00063400 */  sll   $a2, $a2, 0x10
/* 011E98 80011298 00061C03 */  sra   $v1, $a2, 0x10
/* 011E9C 8001129C 000617C3 */  sra   $v0, $a2, 0x1f
/* 011EA0 800112A0 95460004 */  lhu   $a2, 4($t2)
/* 011EA4 800112A4 01E97821 */  addu  $t7, $t7, $t1
/* 011EA8 800112A8 01E9382B */  sltu  $a3, $t7, $t1
/* 011EAC 800112AC 01C87021 */  addu  $t6, $t6, $t0
/* 011EB0 800112B0 01C77021 */  addu  $t6, $t6, $a3
/* 011EB4 800112B4 0323C821 */  addu  $t9, $t9, $v1
/* 011EB8 800112B8 0323382B */  sltu  $a3, $t9, $v1
/* 011EBC 800112BC 0302C021 */  addu  $t8, $t8, $v0
/* 011EC0 800112C0 0307C021 */  addu  $t8, $t8, $a3
/* 011EC4 800112C4 00063400 */  sll   $a2, $a2, 0x10
/* 011EC8 800112C8 00062C03 */  sra   $a1, $a2, 0x10
/* 011ECC 800112CC 000627C3 */  sra   $a0, $a2, 0x1f
/* 011ED0 800112D0 01A56821 */  addu  $t5, $t5, $a1
/* 011ED4 800112D4 01A5102B */  sltu  $v0, $t5, $a1
/* 011ED8 800112D8 01846021 */  addu  $t4, $t4, $a0
/* 011EDC 800112DC 01826021 */  addu  $t4, $t4, $v0
/* 011EE0 800112E0 02C8102A */  slt   $v0, $s6, $t0
/* 011EE4 800112E4 AFAC0028 */  sw    $t4, 0x28($sp)
/* 011EE8 800112E8 14400005 */  bnez  $v0, .L80011300
/* 011EEC 800112EC AFAD002C */   sw    $t5, 0x2c($sp)

/* 011EF0 800112F0 15160005 */  bne   $t0, $s6, .L80011308
/* 011EF4 800112F4 02E9102B */   sltu  $v0, $s7, $t1

/* 011EF8 800112F8 10400003 */  beqz  $v0, .L80011308
/* 011EFC 800112FC 00000000 */   nop   

.L80011300:
/* 011F00 80011300 8FB7004C */  lw    $s7, 0x4c($sp)
/* 011F04 80011304 0160B021 */  addu  $s6, $t3, $zero

.L80011308:
/* 011F08 80011308 95420000 */  lhu   $v0, ($t2)
/* 011F0C 8001130C 00021400 */  sll   $v0, $v0, 0x10
/* 011F10 80011310 00023403 */  sra   $a2, $v0, 0x10
/* 011F14 80011314 00021FC3 */  sra   $v1, $v0, 0x1f
/* 011F18 80011318 00602021 */  addu  $a0, $v1, $zero
/* 011F1C 8001131C 0094102A */  slt   $v0, $a0, $s4
/* 011F20 80011320 14400005 */  bnez  $v0, .L80011338
/* 011F24 80011324 00C02821 */   addu  $a1, $a2, $zero

/* 011F28 80011328 16840005 */  bne   $s4, $a0, .L80011340
/* 011F2C 8001132C 00B5102B */   sltu  $v0, $a1, $s5

/* 011F30 80011330 10400003 */  beqz  $v0, .L80011340
/* 011F34 80011334 00000000 */   nop   

.L80011338:
/* 011F38 80011338 00C0A821 */  addu  $s5, $a2, $zero
/* 011F3C 8001133C 0060A021 */  addu  $s4, $v1, $zero

.L80011340:
/* 011F40 80011340 95420002 */  lhu   $v0, 2($t2)
/* 011F44 80011344 00021400 */  sll   $v0, $v0, 0x10
/* 011F48 80011348 00023403 */  sra   $a2, $v0, 0x10
/* 011F4C 8001134C 00021FC3 */  sra   $v1, $v0, 0x1f
/* 011F50 80011350 00602021 */  addu  $a0, $v1, $zero
/* 011F54 80011354 0244102A */  slt   $v0, $s2, $a0
/* 011F58 80011358 14400005 */  bnez  $v0, .L80011370
/* 011F5C 8001135C 00C02821 */   addu  $a1, $a2, $zero

/* 011F60 80011360 14920005 */  bne   $a0, $s2, .L80011378
/* 011F64 80011364 0265102B */   sltu  $v0, $s3, $a1

/* 011F68 80011368 10400003 */  beqz  $v0, .L80011378
/* 011F6C 8001136C 00000000 */   nop   

.L80011370:
/* 011F70 80011370 00C09821 */  addu  $s3, $a2, $zero
/* 011F74 80011374 00609021 */  addu  $s2, $v1, $zero

.L80011378:
/* 011F78 80011378 95420002 */  lhu   $v0, 2($t2)
/* 011F7C 8001137C 00021400 */  sll   $v0, $v0, 0x10
/* 011F80 80011380 00023403 */  sra   $a2, $v0, 0x10
/* 011F84 80011384 00021FC3 */  sra   $v1, $v0, 0x1f
/* 011F88 80011388 00602021 */  addu  $a0, $v1, $zero
/* 011F8C 8001138C 0090102A */  slt   $v0, $a0, $s0
/* 011F90 80011390 14400005 */  bnez  $v0, .L800113A8
/* 011F94 80011394 00C02821 */   addu  $a1, $a2, $zero

/* 011F98 80011398 16040005 */  bne   $s0, $a0, .L800113B0
/* 011F9C 8001139C 00B1102B */   sltu  $v0, $a1, $s1

/* 011FA0 800113A0 10400003 */  beqz  $v0, .L800113B0
/* 011FA4 800113A4 00000000 */   nop   

.L800113A8:
/* 011FA8 800113A8 00C08821 */  addu  $s1, $a2, $zero
/* 011FAC 800113AC 00608021 */  addu  $s0, $v1, $zero

.L800113B0:
/* 011FB0 800113B0 95420004 */  lhu   $v0, 4($t2)
/* 011FB4 800113B4 00021400 */  sll   $v0, $v0, 0x10
/* 011FB8 800113B8 00023403 */  sra   $a2, $v0, 0x10
/* 011FBC 800113BC 00021FC3 */  sra   $v1, $v0, 0x1f
/* 011FC0 800113C0 00602021 */  addu  $a0, $v1, $zero
/* 011FC4 800113C4 0244102A */  slt   $v0, $s2, $a0
/* 011FC8 800113C8 14400005 */  bnez  $v0, .L800113E0
/* 011FCC 800113CC 00C02821 */   addu  $a1, $a2, $zero

/* 011FD0 800113D0 14920009 */  bne   $a0, $s2, .L800113F8
/* 011FD4 800113D4 0265102B */   sltu  $v0, $s3, $a1

/* 011FD8 800113D8 10400007 */  beqz  $v0, .L800113F8
/* 011FDC 800113DC 00000000 */   nop   

.L800113E0:
/* 011FE0 800113E0 AFA60034 */  sw    $a2, 0x34($sp)
/* 011FE4 800113E4 AFA30030 */  sw    $v1, 0x30($sp)
/* 011FE8 800113E8 8FAC0030 */  lw    $t4, 0x30($sp)
/* 011FEC 800113EC 8FAD0034 */  lw    $t5, 0x34($sp)
/* 011FF0 800113F0 AFAC0030 */  sw    $t4, 0x30($sp)
/* 011FF4 800113F4 AFAD0034 */  sw    $t5, 0x34($sp)

.L800113F8:
/* 011FF8 800113F8 95420004 */  lhu   $v0, 4($t2)
/* 011FFC 800113FC 00021400 */  sll   $v0, $v0, 0x10
/* 012000 80011400 00023403 */  sra   $a2, $v0, 0x10
/* 012004 80011404 00021FC3 */  sra   $v1, $v0, 0x1f
/* 012008 80011408 00602021 */  addu  $a0, $v1, $zero
/* 01200C 8001140C 0090102A */  slt   $v0, $a0, $s0
/* 012010 80011410 14400005 */  bnez  $v0, .L80011428
/* 012014 80011414 00C02821 */   addu  $a1, $a2, $zero

/* 012018 80011418 16040009 */  bne   $s0, $a0, .L80011440
/* 01201C 8001141C 00B1102B */   sltu  $v0, $a1, $s1

/* 012020 80011420 10400007 */  beqz  $v0, .L80011440
/* 012024 80011424 00000000 */   nop   

.L80011428:
/* 012028 80011428 AFA6003C */  sw    $a2, 0x3c($sp)
/* 01202C 8001142C AFA30038 */  sw    $v1, 0x38($sp)
/* 012030 80011430 8FAC0038 */  lw    $t4, 0x38($sp)
/* 012034 80011434 8FAD003C */  lw    $t5, 0x3c($sp)
/* 012038 80011438 AFAC0038 */  sw    $t4, 0x38($sp)
/* 01203C 8001143C AFAD003C */  sw    $t5, 0x3c($sp)

.L80011440:
/* 012040 80011440 8FAD0054 */  lw    $t5, 0x54($sp)
/* 012044 80011444 254A0010 */  addiu $t2, $t2, 0x10
/* 012048 80011448 001E1100 */  sll   $v0, $fp, 4
/* 01204C 8001144C 004D1021 */  addu  $v0, $v0, $t5
/* 012050 80011450 0142102B */  sltu  $v0, $t2, $v0
/* 012054 80011454 1440FF85 */  bnez  $v0, .L8001126C
/* 012058 80011458 00000000 */   nop   

.L8001145C:
/* 01205C 8001145C 449E1000 */  mtc1  $fp, $f2
/* 012060 80011460 00000000 */  nop   
/* 012064 80011464 07C10004 */  bgez  $fp, .L80011478
/* 012068 80011468 468010A1 */   cvt.d.w $f2, $f2

/* 01206C 8001146C 3C018005 */  lui   $at, %hi(D_8004AA50)
/* 012070 80011470 D420AA50 */  ldc1  $f0, %lo(D_8004AA50)($at)
/* 012074 80011474 46201080 */  add.d $f2, $f2, $f0
.L80011478:
/* 012078 80011478 3C018005 */  lui   $at, %hi(D_8004AA58)
/* 01207C 8001147C D434AA58 */  ldc1  $f20, %lo(D_8004AA58)($at)
/* 012080 80011480 4622A503 */  div.d $f20, $f20, $f2
/* 012084 80011484 01C02021 */  addu  $a0, $t6, $zero
/* 012088 80011488 01E02821 */  addu  $a1, $t7, $zero
/* 01208C 8001148C AFB80040 */  sw    $t8, 0x40($sp)
/* 012090 80011490 AFB90044 */  sw    $t9, 0x44($sp)
/* 012094 80011494 0C00E548 */  jal   func_80039520
/* 012098 80011498 4620A520 */   cvt.s.d $f20, $f20

/* 01209C 8001149C 00000000 */  nop   
/* 0120A0 800114A0 46140002 */  mul.s $f0, $f0, $f20
/* 0120A4 800114A4 8FB80040 */  lw    $t8, 0x40($sp)
/* 0120A8 800114A8 8FB90044 */  lw    $t9, 0x44($sp)
/* 0120AC 800114AC 8FAC0014 */  lw    $t4, 0x14($sp)
/* 0120B0 800114B0 03002021 */  addu  $a0, $t8, $zero
/* 0120B4 800114B4 03202821 */  addu  $a1, $t9, $zero
/* 0120B8 800114B8 0C00E548 */  jal   func_80039520
/* 0120BC 800114BC E5800000 */   swc1  $f0, ($t4)

/* 0120C0 800114C0 00000000 */  nop   
/* 0120C4 800114C4 46140002 */  mul.s $f0, $f0, $f20
/* 0120C8 800114C8 8FAD0014 */  lw    $t5, 0x14($sp)
/* 0120CC 800114CC 8FA40028 */  lw    $a0, 0x28($sp)
/* 0120D0 800114D0 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0120D4 800114D4 0C00E548 */  jal   func_80039520
/* 0120D8 800114D8 E5A00004 */   swc1  $f0, 4($t5)

/* 0120DC 800114DC 00000000 */  nop   
/* 0120E0 800114E0 46140002 */  mul.s $f0, $f0, $f20
/* 0120E4 800114E4 8FAC0014 */  lw    $t4, 0x14($sp)
/* 0120E8 800114E8 02C02021 */  addu  $a0, $s6, $zero
/* 0120EC 800114EC 02E02821 */  addu  $a1, $s7, $zero
/* 0120F0 800114F0 0C00E548 */  jal   func_80039520
/* 0120F4 800114F4 E5800008 */   swc1  $f0, 8($t4)

/* 0120F8 800114F8 8FAD001C */  lw    $t5, 0x1c($sp)
/* 0120FC 800114FC 02402021 */  addu  $a0, $s2, $zero
/* 012100 80011500 02602821 */  addu  $a1, $s3, $zero
/* 012104 80011504 0C00E548 */  jal   func_80039520
/* 012108 80011508 E5A00000 */   swc1  $f0, ($t5)

/* 01210C 8001150C 8FAC001C */  lw    $t4, 0x1c($sp)
/* 012110 80011510 8FA40030 */  lw    $a0, 0x30($sp)
/* 012114 80011514 8FA50034 */  lw    $a1, 0x34($sp)
/* 012118 80011518 0C00E548 */  jal   func_80039520
/* 01211C 8001151C E5800004 */   swc1  $f0, 4($t4)

/* 012120 80011520 8FAD001C */  lw    $t5, 0x1c($sp)
/* 012124 80011524 02802021 */  addu  $a0, $s4, $zero
/* 012128 80011528 02A02821 */  addu  $a1, $s5, $zero
/* 01212C 8001152C 0C00E548 */  jal   func_80039520
/* 012130 80011530 E5A00008 */   swc1  $f0, 8($t5)

/* 012134 80011534 8FAC0024 */  lw    $t4, 0x24($sp)
/* 012138 80011538 02002021 */  addu  $a0, $s0, $zero
/* 01213C 8001153C 02202821 */  addu  $a1, $s1, $zero
/* 012140 80011540 0C00E548 */  jal   func_80039520
/* 012144 80011544 E5800000 */   swc1  $f0, ($t4)

/* 012148 80011548 8FAD0024 */  lw    $t5, 0x24($sp)
/* 01214C 8001154C 8FA40038 */  lw    $a0, 0x38($sp)
/* 012150 80011550 8FA5003C */  lw    $a1, 0x3c($sp)
/* 012154 80011554 0C00E548 */  jal   func_80039520
/* 012158 80011558 E5A00004 */   swc1  $f0, 4($t5)

/* 01215C 8001155C 8FAC0024 */  lw    $t4, 0x24($sp)
/* 012160 80011560 E5800008 */  swc1  $f0, 8($t4)

.L80011564:
/* 012164 80011564 8FBF007C */  lw    $ra, 0x7c($sp)
/* 012168 80011568 8FBE0078 */  lw    $fp, 0x78($sp)
/* 01216C 8001156C 8FB70074 */  lw    $s7, 0x74($sp)
/* 012170 80011570 8FB60070 */  lw    $s6, 0x70($sp)
/* 012174 80011574 8FB5006C */  lw    $s5, 0x6c($sp)
/* 012178 80011578 8FB40068 */  lw    $s4, 0x68($sp)
/* 01217C 8001157C 8FB30064 */  lw    $s3, 0x64($sp)
/* 012180 80011580 8FB20060 */  lw    $s2, 0x60($sp)
/* 012184 80011584 8FB1005C */  lw    $s1, 0x5c($sp)
/* 012188 80011588 8FB00058 */  lw    $s0, 0x58($sp)
/* 01218C 8001158C D7B40080 */  ldc1  $f20, 0x80($sp)
/* 012190 80011590 03E00008 */  jr    $ra
/* 012194 80011594 27BD0088 */   addiu $sp, $sp, 0x88
