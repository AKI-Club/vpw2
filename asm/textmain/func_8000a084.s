glabel func_8000A084
/* 00AC84 8000A084 30821000 */  andi  $v0, $a0, 0x1000
/* 00AC88 8000A088 1040001E */  beqz  $v0, .L8000A104
/* 00AC8C 8000A08C 27BDFFF0 */   addiu $sp, $sp, -0x10

/* 00AC90 8000A090 30840FFF */  andi  $a0, $a0, 0xfff
/* 00AC94 8000A094 24060010 */  li    $a2, 16
/* 00AC98 8000A098 24050380 */  li    $a1, 896

.L8000A09C:
# number of wrestlers in stable
/* 00AC9C 8000A09C 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00ACA0 8000A0A0 00451021 */  addu  $v0, $v0, $a1
/* 00ACA4 8000A0A4 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00ACA8 8000A0A8 1840000F */  blez  $v0, .L8000A0E8
/* 00ACAC 8000A0AC 00001821 */   addu  $v1, $zero, $zero

/* 00ACB0 8000A0B0 00031080 */  sll   $v0, $v1, 2

.L8000A0B4:
/* 00ACB4 8000A0B4 00451021 */  addu  $v0, $v0, $a1
/* 00ACB8 8000A0B8 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00ACBC 8000A0BC 00220821 */  addu  $at, $at, $v0
/* 00ACC0 8000A0C0 94224510 */  lhu   $v0, %lo(bssMain_800A4510)($at)
/* 00ACC4 8000A0C4 1044000D */  beq   $v0, $a0, .L8000A0FC
/* 00ACC8 8000A0C8 00061200 */   sll   $v0, $a2, 8

# number of wrestlers in stable
/* 00ACCC 8000A0CC 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00ACD0 8000A0D0 00451021 */  addu  $v0, $v0, $a1
/* 00ACD4 8000A0D4 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00ACD8 8000A0D8 24630001 */  addiu $v1, $v1, 1
/* 00ACDC 8000A0DC 0062102A */  slt   $v0, $v1, $v0

/* 00ACE0 8000A0E0 1440FFF4 */  bnez  $v0, .L8000A0B4
/* 00ACE4 8000A0E4 00031080 */   sll   $v0, $v1, 2

.L8000A0E8:
/* 00ACE8 8000A0E8 24C6FFFF */  addiu $a2, $a2, -1
/* 00ACEC 8000A0EC 04C1FFEB */  bgez  $a2, .L8000A09C
/* 00ACF0 8000A0F0 24A5FFC8 */   addiu $a1, $a1, -0x38

/* 00ACF4 8000A0F4 0800285B */  j     .L8000A16C
/* 00ACF8 8000A0F8 2402FFFF */   li    $v0, -1

.L8000A0FC:
/* 00ACFC 8000A0FC 0800285B */  j     .L8000A16C
/* 00AD00 8000A100 00431021 */   addu  $v0, $v0, $v1

.L8000A104:
/* 00AD04 8000A104 00003021 */  addu  $a2, $zero, $zero
/* 00AD08 8000A108 00002821 */  addu  $a1, $zero, $zero

.L8000A10C:
# number of wrestlers in stable
/* 00AD0C 8000A10C 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AD10 8000A110 00451021 */  addu  $v0, $v0, $a1
/* 00AD14 8000A114 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AD18 8000A118 1840000F */  blez  $v0, .L8000A158
/* 00AD1C 8000A11C 00001821 */   addu  $v1, $zero, $zero

/* 00AD20 8000A120 00031080 */  sll   $v0, $v1, 2

.L8000A124:
/* 00AD24 8000A124 00451021 */  addu  $v0, $v0, $a1
/* 00AD28 8000A128 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00AD2C 8000A12C 00220821 */  addu  $at, $at, $v0
/* 00AD30 8000A130 94224510 */  lhu   $v0, %lo(bssMain_800A4510)($at)
/* 00AD34 8000A134 1044FFF1 */  beq   $v0, $a0, .L8000A0FC
/* 00AD38 8000A138 00061200 */   sll   $v0, $a2, 8

# number of wrestlers in stable
/* 00AD3C 8000A13C 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AD40 8000A140 00451021 */  addu  $v0, $v0, $a1
/* 00AD44 8000A144 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AD48 8000A148 24630001 */  addiu $v1, $v1, 1
/* 00AD4C 8000A14C 0062102A */  slt   $v0, $v1, $v0
/* 00AD50 8000A150 1440FFF4 */  bnez  $v0, .L8000A124
/* 00AD54 8000A154 00031080 */   sll   $v0, $v1, 2

.L8000A158:
/* 00AD58 8000A158 24C60001 */  addiu $a2, $a2, 1
/* 00AD5C 8000A15C 28C20011 */  slti  $v0, $a2, 0x11
/* 00AD60 8000A160 1440FFEA */  bnez  $v0, .L8000A10C
/* 00AD64 8000A164 24A50038 */   addiu $a1, $a1, 0x38

/* 00AD68 8000A168 2402FFFF */  li    $v0, -1

.L8000A16C:
/* 00AD6C 8000A16C 304200FF */  andi  $v0, $v0, 0xff
/* 00AD70 8000A170 03E00008 */  jr    $ra
/* 00AD74 8000A174 27BD0010 */   addiu $sp, $sp, 0x10
