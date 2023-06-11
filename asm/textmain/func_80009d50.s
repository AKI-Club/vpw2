# another battle royal routine

# Params:
# $a0 = wrestler ID4?

glabel func_80009D50
/* 00A950 80009D50 3C028004 */  lui   $v0, %hi(dynPtr_DefaultMovesets) # $v0, 0x8004
/* 00A954 80009D54 8C42FD90 */  lw    $v0, %lo(dynPtr_DefaultMovesets)($v0)
/* 00A958 80009D58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A95C 80009D5C 1440001C */  bnez  $v0, .L80009DD0
/* 00A960 80009D60 AFBF0010 */   sw    $ra, 0x10($sp)

# battle royal wrestler ID4 values
/* 00A964 80009D64 00003021 */  addu  $a2, $zero, $zero
/* 00A968 80009D68 3C07800B */  lui   $a3, %hi(bssMain_800B5CC0) # $a3, 0x800b
/* 00A96C 80009D6C 24E75CC0 */  addiu $a3, %lo(bssMain_800B5CC0) # addiu $a3, $a3, 0x5cc0
/* 00A970 80009D70 00002821 */  addu  $a1, $zero, $zero

.L80009D74:
/* 00A974 80009D74 00E01821 */  addu  $v1, $a3, $zero

.L80009D78:
/* 00A978 80009D78 94620000 */  lhu   $v0, ($v1) # load wrestler ID4
/* 00A97C 80009D7C 5044000A */  beql  $v0, $a0, .L80009DA8
/* 00A980 80009D80 00A01821 */   addu  $v1, $a1, $zero

/* 00A984 80009D84 24A50001 */  addiu $a1, $a1, 1
/* 00A988 80009D88 28A20028 */  slti  $v0, $a1, 40
/* 00A98C 80009D8C 1440FFFA */  bnez  $v0, .L80009D78
/* 00A990 80009D90 24630002 */   addiu $v1, $v1, 2

/* 00A994 80009D94 24C60001 */  addiu $a2, $a2, 1
/* 00A998 80009D98 28C20002 */  slti  $v0, $a2, 2
/* 00A99C 80009D9C 1440FFF5 */  bnez  $v0, .L80009D74
/* 00A9A0 80009DA0 00002821 */   addu  $a1, $zero, $zero

/* 00A9A4 80009DA4 00001821 */  addu  $v1, $zero, $zero

.L80009DA8:
/* 00A9A8 80009DA8 00031080 */  sll   $v0, $v1, 2
/* 00A9AC 80009DAC 00431021 */  addu  $v0, $v0, $v1
/* 00A9B0 80009DB0 00021080 */  sll   $v0, $v0, 2
/* 00A9B4 80009DB4 00431023 */  subu  $v0, $v0, $v1
/* 00A9B8 80009DB8 00021100 */  sll   $v0, $v0, 4
/* 00A9BC 80009DBC 00431021 */  addu  $v0, $v0, $v1
/* 00A9C0 80009DC0 3C01800A */  lui   $at, %hi(bssMain_800980D3)
/* 00A9C4 80009DC4 00220821 */  addu  $at, $at, $v0
/* 00A9C8 80009DC8 08002798 */  j     .L80009E60
/* 00A9CC 80009DCC 902280D3 */   lbu   $v0, %lo(bssMain_800980D3)($at)

.L80009DD0:
/* 00A9D0 80009DD0 0C002B7B */  jal   func_8000ADEC
/* 00A9D4 80009DD4 00000000 */   nop   

/* 00A9D8 80009DD8 94450000 */  lhu   $a1, ($v0)
/* 00A9DC 80009DDC 24A30096 */  addiu $v1, $a1, 0x96
/* 00A9E0 80009DE0 286200FB */  slti  $v0, $v1, 0xfb
/* 00A9E4 80009DE4 1440000E */  bnez  $v0, .L80009E20
/* 00A9E8 80009DE8 286200D3 */   slti  $v0, $v1, 0xd3

/* 00A9EC 80009DEC 3C045555 */  lui   $a0, (0x55555556 >> 16) # lui $a0, 0x5555
/* 00A9F0 80009DF0 34845556 */  ori   $a0, (0x55555556 & 0xFFFF) # ori $a0, $a0, 0x5556
/* 00A9F4 80009DF4 24A3FF9B */  addiu $v1, $a1, -0x65
/* 00A9F8 80009DF8 00031080 */  sll   $v0, $v1, 2
/* 00A9FC 80009DFC 00431021 */  addu  $v0, $v0, $v1
/* 00AA00 80009E00 000210C0 */  sll   $v0, $v0, 3
/* 00AA04 80009E04 00440018 */  mult  $v0, $a0
/* 00AA08 80009E08 000217C3 */  sra   $v0, $v0, 0x1f
/* 00AA0C 80009E0C 00004010 */  mfhi  $t0
/* 00AA10 80009E10 01021023 */  subu  $v0, $t0, $v0
/* 00AA14 80009E14 00000000 */  nop   
/* 00AA18 80009E18 0800278E */  j     .L80009E38
/* 00AA1C 80009E1C 244300AA */   addiu $v1, $v0, 0xaa

.L80009E20:
/* 00AA20 80009E20 14400003 */  bnez  $v0, .L80009E30
/* 00AA24 80009E24 286200AA */   slti  $v0, $v1, 0xaa

/* 00AA28 80009E28 0800278E */  j     .L80009E38
/* 00AA2C 80009E2C 240300D2 */   li    $v1, 210

.L80009E30:
/* 00AA30 80009E30 54400001 */  bnezl $v0, .L80009E38
/* 00AA34 80009E34 240300AA */   li    $v1, 170

.L80009E38:
/* 00AA38 80009E38 3C046666 */  lui   $a0, (0x66666667 >> 16) # lui $a0, 0x6666
/* 00AA3C 80009E3C 34846667 */  ori   $a0, (0x66666667 & 0xFFFF) # ori $a0, $a0, 0x6667
/* 00AA40 80009E40 2463FF56 */  addiu $v1, $v1, -0xaa
/* 00AA44 80009E44 00031200 */  sll   $v0, $v1, 8
/* 00AA48 80009E48 00431023 */  subu  $v0, $v0, $v1
/* 00AA4C 80009E4C 00440018 */  mult  $v0, $a0
/* 00AA50 80009E50 000217C3 */  sra   $v0, $v0, 0x1f
/* 00AA54 80009E54 00004010 */  mfhi  $t0
/* 00AA58 80009E58 00081903 */  sra   $v1, $t0, 4
/* 00AA5C 80009E5C 00621023 */  subu  $v0, $v1, $v0

.L80009E60:
/* 00AA60 80009E60 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00AA64 80009E64 03E00008 */  jr    $ra
/* 00AA68 80009E68 27BD0018 */   addiu $sp, $sp, 0x18
