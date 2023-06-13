# Params:
# $a0 - Address of model data

glabel func_8000F0F4
/* 00FCF4 8000F0F4 00804021 */  addu  $t0, $a0, $zero
/* 00FCF8 8000F0F8 8D020014 */  lw    $v0, 0x14($t0)
/* 00FCFC 8000F0FC 8D070018 */  lw    $a3, 0x18($t0)
/* 00FD00 8000F100 10400013 */  beqz  $v0, .L8000F150
/* 00FD04 8000F104 00E02821 */   addu  $a1, $a3, $zero

/* 00FD08 8000F108 81020002 */  lb    $v0, 2($t0) # number of verts+flag
/* 00FD0C 8000F10C 28420009 */  slti  $v0, $v0, 9
/* 00FD10 8000F110 1040000F */  beqz  $v0, .L8000F150
/* 00FD14 8000F114 00E02021 */   addu  $a0, $a3, $zero

/* 00FD18 8000F118 81020003 */  lb    $v0, 3($t0) # number of faces+flag?
/* 00FD1C 8000F11C 3C030300 */  lui   $v1, 0x300
/* 00FD20 8000F120 00021040 */  sll   $v0, $v0, 1
/* 00FD24 8000F124 3042FFFF */  andi  $v0, $v0, 0xffff
/* 00FD28 8000F128 00431025 */  or    $v0, $v0, $v1
/* 00FD2C 8000F12C AC820000 */  sw    $v0, ($a0)
/* 00FD30 8000F130 81020003 */  lb    $v0, 3($t0) # number of faces+flag?
/* 00FD34 8000F134 81030002 */  lb    $v1, 2($t0) # number of verts+flag
/* 00FD38 8000F138 24E70008 */  addiu $a3, $a3, 8
/* 00FD3C 8000F13C 00431021 */  addu  $v0, $v0, $v1
/* 00FD40 8000F140 00021040 */  sll   $v0, $v0, 1
/* 00FD44 8000F144 3042FFFF */  andi  $v0, $v0, 0xffff
/* 00FD48 8000F148 AC820004 */  sw    $v0, 4($a0)
/* 00FD4C 8000F14C 00E02821 */  addu  $a1, $a3, $zero

.L8000F150:
/* 00FD50 8000F150 24E70008 */  addiu $a3, $a3, 8
/* 00FD54 8000F154 3C03E200 */  lui   $v1, (0xE200001C >> 16) # lui $v1, 0xe200
/* 00FD58 8000F158 3463001C */  ori   $v1, (0xE200001C & 0xFFFF) # ori $v1, $v1, 0x1c
/* 00FD5C 8000F15C 3C048004 */  lui   $a0, %hi(var_8003FDB2) # $a0, 0x8004
/* 00FD60 8000F160 9484FDB2 */  lhu   $a0, %lo(var_8003FDB2)($a0)
/* 00FD64 8000F164 3C020F0A */  lui   $v0, (0x0F0A4000 >> 16) # lui $v0, 0xf0a
/* 00FD68 8000F168 34424000 */  ori   $v0, (0x0F0A4000 & 0xFFFF) # ori $v0, $v0, 0x4000
/* 00FD6C 8000F16C ACA30000 */  sw    $v1, ($a1)
/* 00FD70 8000F170 1480000F */  bnez  $a0, .L8000F1B0
/* 00FD74 8000F174 ACA20004 */   sw    $v0, 4($a1)

/* 00FD78 8000F178 00E02821 */  addu  $a1, $a3, $zero
/* 00FD7C 8000F17C 24E70008 */  addiu $a3, $a3, 8
/* 00FD80 8000F180 3C02FC45 */  lui   $v0, (0xFC45FE8B >> 16) # lui $v0, 0xfc45
/* 00FD84 8000F184 3442FE8B */  ori   $v0, (0xFC45FE8B & 0xFFFF) # ori $v0, $v0, 0xfe8b
/* 00FD88 8000F188 00E02021 */  addu  $a0, $a3, $zero
/* 00FD8C 8000F18C 24E70008 */  addiu $a3, $a3, 8
/* 00FD90 8000F190 3C03E300 */  lui   $v1, (0xE3000A01 >> 16) # $v1, 0xe300
/* 00FD94 8000F194 34630A01 */  ori   $v1, (0xE3000A01 & 0xFFFF) # ori $v1, $v1, 0xa01
/* 00FD98 8000F198 ACA20000 */  sw    $v0, ($a1)
/* 00FD9C 8000F19C 2402F9FC */  li    $v0, -1540
/* 00FDA0 8000F1A0 ACA20004 */  sw    $v0, 4($a1)
/* 00FDA4 8000F1A4 AC830000 */  sw    $v1, ($a0)
/* 00FDA8 8000F1A8 08003C7B */  j     .L8000F1EC
/* 00FDAC 8000F1AC AC800004 */   sw    $zero, 4($a0)

.L8000F1B0:
/* 00FDB0 8000F1B0 00E02821 */  addu  $a1, $a3, $zero
/* 00FDB4 8000F1B4 24E70008 */  addiu $a3, $a3, 8
/* 00FDB8 8000F1B8 3C06FC45 */  lui   $a2, (0xFC45FEA3 >> 16) # lui $a2, 0xfc45
/* 00FDBC 8000F1BC 34C6FEA3 */  ori   $a2, (0xFC45FEA3 & 0xFFFF) # ori $a2, $a2, 0xfea3
/* 00FDC0 8000F1C0 3C04F00F */  lui   $a0, (0xF00FF83F >> 16) # $a0, 0xf00f
/* 00FDC4 8000F1C4 3484F83F */  ori   $a0, (0xF00FF83F & 0xFFFF) # ori $a0, $a0, 0xf83f
/* 00FDC8 8000F1C8 00E01821 */  addu  $v1, $a3, $zero
/* 00FDCC 8000F1CC 24E70008 */  addiu $a3, $a3, 8
/* 00FDD0 8000F1D0 3C02E300 */  lui   $v0, (0xE3000A01 >> 16) # lui $v0, 0xe300
/* 00FDD4 8000F1D4 34420A01 */  ori   $v0, (0xE3000A01 & 0xFFFF) # ori $v0, $v0, 0xa01
/* 00FDD8 8000F1D8 ACA60000 */  sw    $a2, ($a1)
/* 00FDDC 8000F1DC ACA40004 */  sw    $a0, 4($a1)
/* 00FDE0 8000F1E0 AC620000 */  sw    $v0, ($v1)
/* 00FDE4 8000F1E4 3C020010 */  lui   $v0, 0x10
/* 00FDE8 8000F1E8 AC620004 */  sw    $v0, 4($v1)

.L8000F1EC:
/* 00FDEC 8000F1EC 8D02001C */  lw    $v0, 0x1c($t0)
/* 00FDF0 8000F1F0 10400008 */  beqz  $v0, .L8000F214
/* 00FDF4 8000F1F4 00E02021 */   addu  $a0, $a3, $zero

/* 00FDF8 8000F1F8 3C02DE01 */  lui   $v0, 0xde01
/* 00FDFC 8000F1FC AC820000 */  sw    $v0, ($a0)
/* 00FE00 8000F200 8D02001C */  lw    $v0, 0x1c($t0)
/* 00FE04 8000F204 3C038000 */  lui   $v1, 0x8000
/* 00FE08 8000F208 00431023 */  subu  $v0, $v0, $v1
/* 00FE0C 8000F20C 08003C89 */  j     .L8000F224
/* 00FE10 8000F210 AC820004 */   sw    $v0, 4($a0)

.L8000F214:
/* 00FE14 8000F214 00E01821 */  addu  $v1, $a3, $zero
/* 00FE18 8000F218 3C02DF00 */  lui   $v0, 0xdf00
/* 00FE1C 8000F21C AC620000 */  sw    $v0, ($v1)
/* 00FE20 8000F220 AC600004 */  sw    $zero, 4($v1)

.L8000F224:
/* 00FE24 8000F224 03E00008 */  jr    $ra
/* 00FE28 8000F228 00000000 */   nop   
