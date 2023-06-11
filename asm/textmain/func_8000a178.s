# Params:
# $a0 - Wrestler ID4

glabel func_8000A178
/* 00AD78 8000A178 30821000 */  andi  $v0, $a0, 0x1000
/* 00AD7C 8000A17C 1040001E */  beqz  $v0, .L8000A1F8
/* 00AD80 8000A180 27BDFFF0 */   addiu $sp, $sp, -0x10

/* 00AD84 8000A184 30840FFF */  andi  $a0, $a0, 0xfff
/* 00AD88 8000A188 24060010 */  li    $a2, 16
/* 00AD8C 8000A18C 24050380 */  li    $a1, 896

.L8000A190:
# number of wrestlers in stable
/* 00AD90 8000A190 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AD94 8000A194 00451021 */  addu  $v0, $v0, $a1
/* 00AD98 8000A198 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AD9C 8000A19C 1840000F */  blez  $v0, .L8000A1DC
/* 00ADA0 8000A1A0 00001821 */   addu  $v1, $zero, $zero

/* 00ADA4 8000A1A4 00031080 */  sll   $v0, $v1, 2

.L8000A1A8:
/* 00ADA8 8000A1A8 00451021 */  addu  $v0, $v0, $a1
/* 00ADAC 8000A1AC 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00ADB0 8000A1B0 00220821 */  addu  $at, $at, $v0
/* 00ADB4 8000A1B4 94224510 */  lhu   $v0, %lo(bssMain_800A4510)($at)
/* 00ADB8 8000A1B8 1044000D */  beq   $v0, $a0, .L8000A1F0
/* 00ADBC 8000A1BC 00061200 */   sll   $v0, $a2, 8

# number of wrestlers in stable
/* 00ADC0 8000A1C0 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00ADC4 8000A1C4 00451021 */  addu  $v0, $v0, $a1
/* 00ADC8 8000A1C8 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00ADCC 8000A1CC 24630001 */  addiu $v1, $v1, 1
/* 00ADD0 8000A1D0 0062102A */  slt   $v0, $v1, $v0
/* 00ADD4 8000A1D4 1440FFF4 */  bnez  $v0, .L8000A1A8
/* 00ADD8 8000A1D8 00031080 */   sll   $v0, $v1, 2

.L8000A1DC:
/* 00ADDC 8000A1DC 24C6FFFF */  addiu $a2, $a2, -1
/* 00ADE0 8000A1E0 04C1FFEB */  bgez  $a2, .L8000A190
/* 00ADE4 8000A1E4 24A5FFC8 */   addiu $a1, $a1, -0x38

/* 00ADE8 8000A1E8 08002898 */  j     .L8000A260
/* 00ADEC 8000A1EC 2402FFFF */   li    $v0, -1

.L8000A1F0:
/* 00ADF0 8000A1F0 08002898 */  j     .L8000A260
/* 00ADF4 8000A1F4 00431021 */   addu  $v0, $v0, $v1

/*----------------------------------------------*/
.L8000A1F8:
/* 00ADF8 8000A1F8 00003021 */  addu  $a2, $zero, $zero
/* 00ADFC 8000A1FC 00002821 */  addu  $a1, $zero, $zero

.L8000A200:
# number of wrestlers in stable
/* 00AE00 8000A200 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AE04 8000A204 00451021 */  addu  $v0, $v0, $a1
/* 00AE08 8000A208 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AE0C 8000A20C 1840000F */  blez  $v0, .L8000A24C
/* 00AE10 8000A210 00001821 */   addu  $v1, $zero, $zero

/* 00AE14 8000A214 00031080 */  sll   $v0, $v1, 2

.L8000A218:
/* 00AE18 8000A218 00451021 */  addu  $v0, $v0, $a1
/* 00AE1C 8000A21C 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00AE20 8000A220 00220821 */  addu  $at, $at, $v0
/* 00AE24 8000A224 94224510 */  lhu   $v0, %lo(bssMain_800A4510)($at)
/* 00AE28 8000A228 1044FFF1 */  beq   $v0, $a0, .L8000A1F0
/* 00AE2C 8000A22C 00061200 */   sll   $v0, $a2, 8

# number of wrestlers in stable
/* 00AE30 8000A230 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AE34 8000A234 00451021 */  addu  $v0, $v0, $a1
/* 00AE38 8000A238 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AE3C 8000A23C 24630001 */  addiu $v1, $v1, 1
/* 00AE40 8000A240 0062102A */  slt   $v0, $v1, $v0
/* 00AE44 8000A244 1440FFF4 */  bnez  $v0, .L8000A218
/* 00AE48 8000A248 00031080 */   sll   $v0, $v1, 2

.L8000A24C:
/* 00AE4C 8000A24C 24C60001 */  addiu $a2, $a2, 1
/* 00AE50 8000A250 28C20011 */  slti  $v0, $a2, 0x11
/* 00AE54 8000A254 1440FFEA */  bnez  $v0, .L8000A200
/* 00AE58 8000A258 24A50038 */   addiu $a1, $a1, 0x38

/* 00AE5C 8000A25C 2402FFFF */  li    $v0, -1

.L8000A260:
/* 00AE60 8000A260 00021202 */  srl   $v0, $v0, 8
/* 00AE64 8000A264 304200FF */  andi  $v0, $v0, 0xff
/* 00AE68 8000A268 03E00008 */  jr    $ra
/* 00AE6C 8000A26C 27BD0010 */   addiu $sp, $sp, 0x10
