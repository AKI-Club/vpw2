glabel func_8000ECD4
/* 00F8D4 8000ECD4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00F8D8 8000ECD8 0080C821 */  addu  $t9, $a0, $zero
/* 00F8DC 8000ECDC AFBE0038 */  sw    $fp, 0x38($sp)
/* 00F8E0 8000ECE0 AFB70034 */  sw    $s7, 0x34($sp)
/* 00F8E4 8000ECE4 AFB60030 */  sw    $s6, 0x30($sp)
/* 00F8E8 8000ECE8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 00F8EC 8000ECEC AFB40028 */  sw    $s4, 0x28($sp)
/* 00F8F0 8000ECF0 AFB30024 */  sw    $s3, 0x24($sp)
/* 00F8F4 8000ECF4 AFB20020 */  sw    $s2, 0x20($sp)
/* 00F8F8 8000ECF8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00F8FC 8000ECFC AFB00018 */  sw    $s0, 0x18($sp)
/* 00F900 8000ED00 8F220020 */  lw    $v0, 0x20($t9)
/* 00F904 8000ED04 8F380018 */  lw    $t8, 0x18($t9)
/* 00F908 8000ED08 904E0004 */  lbu   $t6, 4($v0)
/* 00F90C 8000ED0C AFAE0004 */  sw    $t6, 4($sp)
/* 00F910 8000ED10 904E0005 */  lbu   $t6, 5($v0)
/* 00F914 8000ED14 AFAE000C */  sw    $t6, 0xc($sp)
/* 00F918 8000ED18 905E0006 */  lbu   $fp, 6($v0)
/* 00F91C 8000ED1C 90570007 */  lbu   $s7, 7($v0)
/* 00F920 8000ED20 8F240014 */  lw    $a0, 0x14($t9)
/* 00F924 8000ED24 24020001 */  li    $v0, 1
/* 00F928 8000ED28 03C21804 */  sllv  $v1, $v0, $fp
/* 00F92C 8000ED2C 02E21004 */  sllv  $v0, $v0, $s7
/* 00F930 8000ED30 A7230008 */  sh    $v1, 8($t9)
/* 00F934 8000ED34 10800012 */  beqz  $a0, .L8000ED80
/* 00F938 8000ED38 A722000A */   sh    $v0, 0xa($t9)

/* 00F93C 8000ED3C 83220002 */  lb    $v0, 2($t9)
/* 00F940 8000ED40 28420009 */  slti  $v0, $v0, 9
/* 00F944 8000ED44 1040000E */  beqz  $v0, .L8000ED80
/* 00F948 8000ED48 03002021 */   addu  $a0, $t8, $zero

/* 00F94C 8000ED4C 83220003 */  lb    $v0, 3($t9)
/* 00F950 8000ED50 3C030300 */  lui   $v1, %hi(0x03000004) # $v1, 0x300
/* 00F954 8000ED54 00021040 */  sll   $v0, $v0, 1
/* 00F958 8000ED58 3042FFFF */  andi  $v0, $v0, 0xffff
/* 00F95C 8000ED5C 00431025 */  or    $v0, $v0, $v1
/* 00F960 8000ED60 AC820000 */  sw    $v0, ($a0)
/* 00F964 8000ED64 83220003 */  lb    $v0, 3($t9)
/* 00F968 8000ED68 83230002 */  lb    $v1, 2($t9)
/* 00F96C 8000ED6C 27180008 */  addiu $t8, $t8, 8
/* 00F970 8000ED70 00431021 */  addu  $v0, $v0, $v1
/* 00F974 8000ED74 00021040 */  sll   $v0, $v0, 1
/* 00F978 8000ED78 3042FFFF */  andi  $v0, $v0, 0xffff
/* 00F97C 8000ED7C AC820004 */  sw    $v0, 4($a0)

.L8000ED80:
/* 00F980 8000ED80 03001021 */  addu  $v0, $t8, $zero
/* 00F984 8000ED84 27180008 */  addiu $t8, $t8, 8
/* 00F988 8000ED88 3C14E200 */  lui   $s4, (0xE200001C >> 16) # lui $s4, 0xe200
/* 00F98C 8000ED8C 3694001C */  ori   $s4, (0xE200001C & 0xFFFF) # ori $s4, $s4, 0x1c
/* 00F990 8000ED90 3C130050 */  lui   $s3, (0x00504240 >> 16) # lui $s3, 0x50
/* 00F994 8000ED94 36734240 */  ori   $s3, (0x00504240 & 0xFFFF) # ori $s3, $s3, 0x4240
/* 00F998 8000ED98 03003021 */  addu  $a2, $t8, $zero
/* 00F99C 8000ED9C 27180008 */  addiu $t8, $t8, 8
/* 00F9A0 8000EDA0 03003821 */  addu  $a3, $t8, $zero
/* 00F9A4 8000EDA4 27180008 */  addiu $t8, $t8, 8
/* 00F9A8 8000EDA8 3C11FCFF */  lui   $s1, (0xFCFFB3FF >> 16) # lui $s1, 0xfcff
/* 00F9AC 8000EDAC 3631B3FF */  ori   $s1, (0xFCFFB3FF & 0xFFFF) # ori $s1, $s1, 0xb3ff
/* 00F9B0 8000EDB0 3C10FF64 */  lui   $s0, (0xFF64FE7F >> 16) # lui $s0, 0xff64
/* 00F9B4 8000EDB4 3610FE7F */  ori   $s0, (0xFF64FE7F & 0xFFFF) # ori $s0, $s0, 0xfe7f
/* 00F9B8 8000EDB8 03002021 */  addu  $a0, $t8, $zero
/* 00F9BC 8000EDBC 27180008 */  addiu $t8, $t8, 8
/* 00F9C0 8000EDC0 3C0FE300 */  lui   $t7, (0xE3000A01 >> 16) # lui $t7, 0xe300
/* 00F9C4 8000EDC4 35EF0A01 */  ori   $t7, (0xE3000A01 & 0xFFFF) # ori $t7, $t7, 0xa01
/* 00F9C8 8000EDC8 03001821 */  addu  $v1, $t8, $zero
/* 00F9CC 8000EDCC 27180008 */  addiu $t8, $t8, 8
/* 00F9D0 8000EDD0 3C0EE300 */  lui   $t6, (0xE3001001 >> 16) # lui $t6, 0xe300
/* 00F9D4 8000EDD4 35CE1001 */  ori   $t6, (0xE3001001 & 0xFFFF) # ori $t6, $t6, 0x1001
/* 00F9D8 8000EDD8 03002821 */  addu  $a1, $t8, $zero
/* 00F9DC 8000EDDC 27180008 */  addiu $t8, $t8, 8
/* 00F9E0 8000EDE0 03004021 */  addu  $t0, $t8, $zero
/* 00F9E4 8000EDE4 27180008 */  addiu $t8, $t8, 8
/* 00F9E8 8000EDE8 03005821 */  addu  $t3, $t8, $zero
/* 00F9EC 8000EDEC 27180008 */  addiu $t8, $t8, 8
/* 00F9F0 8000EDF0 3C12F500 */  lui   $s2, (0xF5000100 >> 16) # lui $s2, 0xf500
/* 00F9F4 8000EDF4 36520100 */  ori   $s2, (0xF5000100 & 0xFFFF) # ori $s2, $s2, 0x100
/* 00F9F8 8000EDF8 03004821 */  addu  $t1, $t8, $zero
/* 00F9FC 8000EDFC 27180008 */  addiu $t8, $t8, 8
/* 00FA00 8000EE00 03006021 */  addu  $t4, $t8, $zero
/* 00FA04 8000EE04 27180008 */  addiu $t8, $t8, 8
/* 00FA08 8000EE08 3C150703 */  lui   $s5, (0x0703C000 >> 16) # lui $s5, 0x703
/* 00FA0C 8000EE0C 36B5C000 */  ori   $s5, (0x0703C000 & 0xFFFF) # ori $s5, $s5, 0xc000
/* 00FA10 8000EE10 03005021 */  addu  $t2, $t8, $zero
/* 00FA14 8000EE14 27180008 */  addiu $t8, $t8, 8
/* 00FA18 8000EE18 03006821 */  addu  $t5, $t8, $zero
/* 00FA1C 8000EE1C 27180008 */  addiu $t8, $t8, 8
/* 00FA20 8000EE20 3C168000 */  lui   $s6, (0x80000008 >> 16) # lui $s6, 0x8000
/* 00FA24 8000EE24 36D60008 */  ori   $s6, (0x80000008 & 0xFFFF) # ori $s6, $s6, 8
/* 00FA28 8000EE28 AC540000 */  sw    $s4, ($v0)
/* 00FA2C 8000EE2C AC530004 */  sw    $s3, 4($v0)
/* 00FA30 8000EE30 3C02FA00 */  lui   $v0, 0xfa00
/* 00FA34 8000EE34 ACC20000 */  sw    $v0, ($a2)
/* 00FA38 8000EE38 240200D0 */  li    $v0, 208
/* 00FA3C 8000EE3C ACC20004 */  sw    $v0, 4($a2)
/* 00FA40 8000EE40 34028000 */  li    $v0, 32768
/* 00FA44 8000EE44 ACF10000 */  sw    $s1, ($a3)
/* 00FA48 8000EE48 ACF00004 */  sw    $s0, 4($a3)
/* 00FA4C 8000EE4C AC8F0000 */  sw    $t7, ($a0)
/* 00FA50 8000EE50 AC800004 */  sw    $zero, 4($a0)
/* 00FA54 8000EE54 AC620004 */  sw    $v0, %lo(0x03000004)($v1)
/* 00FA58 8000EE58 3C02FD10 */  lui   $v0, 0xfd10
/* 00FA5C 8000EE5C AC6E0000 */  sw    $t6, ($v1)
/* 00FA60 8000EE60 ACA20000 */  sw    $v0, ($a1)
/* 00FA64 8000EE64 8F230024 */  lw    $v1, 0x24($t9)
/* 00FA68 8000EE68 03003821 */  addu  $a3, $t8, $zero
/* 00FA6C 8000EE6C 27180008 */  addiu $t8, $t8, 8
/* 00FA70 8000EE70 3C028000 */  lui   $v0, 0x8000
/* 00FA74 8000EE74 3C06E600 */  lui   $a2, 0xe600
/* 00FA78 8000EE78 03002021 */  addu  $a0, $t8, $zero
/* 00FA7C 8000EE7C 00621823 */  subu  $v1, $v1, $v0
/* 00FA80 8000EE80 3C02E800 */  lui   $v0, 0xe800
/* 00FA84 8000EE84 ACA30004 */  sw    $v1, 4($a1)
/* 00FA88 8000EE88 3C050700 */  lui   $a1, 0x700
/* 00FA8C 8000EE8C AD020000 */  sw    $v0, ($t0)
/* 00FA90 8000EE90 3C02F000 */  lui   $v0, 0xf000
/* 00FA94 8000EE94 AD000004 */  sw    $zero, 4($t0)
/* 00FA98 8000EE98 AD720000 */  sw    $s2, ($t3)
/* 00FA9C 8000EE9C AD650004 */  sw    $a1, 4($t3)
/* 00FAA0 8000EEA0 AD260000 */  sw    $a2, ($t1)
/* 00FAA4 8000EEA4 AD200004 */  sw    $zero, 4($t1)
/* 00FAA8 8000EEA8 AD820000 */  sw    $v0, ($t4)
/* 00FAAC 8000EEAC 3C02E700 */  lui   $v0, 0xe700
/* 00FAB0 8000EEB0 AD950004 */  sw    $s5, 4($t4)
/* 00FAB4 8000EEB4 AD420000 */  sw    $v0, ($t2)
/* 00FAB8 8000EEB8 3C02FD50 */  lui   $v0, 0xfd50
/* 00FABC 8000EEBC AD400004 */  sw    $zero, 4($t2)
/* 00FAC0 8000EEC0 ADA20000 */  sw    $v0, ($t5)
/* 00FAC4 8000EEC4 8F220020 */  lw    $v0, 0x20($t9)
/* 00FAC8 8000EEC8 27180008 */  addiu $t8, $t8, 8
/* 00FACC 8000EECC 03004021 */  addu  $t0, $t8, $zero
/* 00FAD0 8000EED0 00561021 */  addu  $v0, $v0, $s6
/* 00FAD4 8000EED4 ADA20004 */  sw    $v0, 4($t5)
/* 00FAD8 8000EED8 3C02F550 */  lui   $v0, 0xf550
/* 00FADC 8000EEDC ACE20000 */  sw    $v0, ($a3)
/* 00FAE0 8000EEE0 8FAE000C */  lw    $t6, 0xc($sp)
/* 00FAE4 8000EEE4 32E2000F */  andi  $v0, $s7, 0xf
/* 00FAE8 8000EEE8 00021380 */  sll   $v0, $v0, 0xe
/* 00FAEC 8000EEEC 00451025 */  or    $v0, $v0, $a1
/* 00FAF0 8000EEF0 31C30003 */  andi  $v1, $t6, 3
/* 00FAF4 8000EEF4 8FAE0004 */  lw    $t6, 4($sp)
/* 00FAF8 8000EEF8 00031C80 */  sll   $v1, $v1, 0x12
/* 00FAFC 8000EEFC 00621825 */  or    $v1, $v1, $v0
/* 00FB00 8000EF00 31C20003 */  andi  $v0, $t6, 3
/* 00FB04 8000EF04 00021200 */  sll   $v0, $v0, 8
/* 00FB08 8000EF08 00621825 */  or    $v1, $v1, $v0
/* 00FB0C 8000EF0C 33C2000F */  andi  $v0, $fp, 0xf
/* 00FB10 8000EF10 00021100 */  sll   $v0, $v0, 4
/* 00FB14 8000EF14 00621825 */  or    $v1, $v1, $v0
/* 00FB18 8000EF18 3C02F300 */  lui   $v0, 0xf300
/* 00FB1C 8000EF1C ACE30004 */  sw    $v1, 4($a3)
/* 00FB20 8000EF20 AC860000 */  sw    $a2, ($a0)
/* 00FB24 8000EF24 AC800004 */  sw    $zero, 4($a0)
/* 00FB28 8000EF28 AD020000 */  sw    $v0, ($t0)
/* 00FB2C 8000EF2C 87240008 */  lh    $a0, 8($t9)
/* 00FB30 8000EF30 27180008 */  addiu $t8, $t8, 8
/* 00FB34 8000EF34 04810002 */  bgez  $a0, .L8000EF40
/* 00FB38 8000EF38 00801021 */   addu  $v0, $a0, $zero
/* 00FB3C 8000EF3C 2482000F */  addiu $v0, $a0, 0xf

.L8000EF40:
/* 00FB40 8000EF40 00021103 */  sra   $v0, $v0, 4
/* 00FB44 8000EF44 18400002 */  blez  $v0, .L8000EF50
/* 00FB48 8000EF48 24050800 */   li    $a1, 2048

/* 00FB4C 8000EF4C 244507FF */  addiu $a1, $v0, 0x7ff

.L8000EF50:
/* 00FB50 8000EF50 87240008 */  lh    $a0, 8($t9)
/* 00FB54 8000EF54 8722000A */  lh    $v0, 0xa($t9)
/* 00FB58 8000EF58 00820018 */  mult  $a0, $v0
/* 00FB5C 8000EF5C 00001012 */  mflo  $v0
/* 00FB60 8000EF60 24420003 */  addiu $v0, $v0, 3
/* 00FB64 8000EF64 00021083 */  sra   $v0, $v0, 2
/* 00FB68 8000EF68 2443FFFF */  addiu $v1, $v0, -1
/* 00FB6C 8000EF6C 28620800 */  slti  $v0, $v1, 0x800
/* 00FB70 8000EF70 50400001 */  beql  $v0, $zero, .L8000EF78
/* 00FB74 8000EF74 240307FF */   li    $v1, 2047

.L8000EF78:
/* 00FB78 8000EF78 00803021 */  addu  $a2, $a0, $zero
/* 00FB7C 8000EF7C 30620FFF */  andi  $v0, $v1, 0xfff
/* 00FB80 8000EF80 00021300 */  sll   $v0, $v0, 0xc
/* 00FB84 8000EF84 3C030700 */  lui   $v1, %hi(0x07000007) # $v1, 0x700
/* 00FB88 8000EF88 04810002 */  bgez  $a0, .L8000EF94
/* 00FB8C 8000EF8C 00433825 */   or    $a3, $v0, $v1

/* 00FB90 8000EF90 2486000F */  addiu $a2, $a0, 0xf

.L8000EF94:
/* 00FB94 8000EF94 00061103 */  sra   $v0, $a2, 4
/* 00FB98 8000EF98 5840000D */  blezl $v0, .L8000EFD0
/* 00FB9C 8000EF9C 30A20FFF */   andi  $v0, $a1, 0xfff

/* 00FBA0 8000EFA0 00A2001A */  div   $zero, $a1, $v0
/* 00FBA4 8000EFA4 14400002 */  bnez  $v0, .L8000EFB0
/* 00FBA8 8000EFA8 00000000 */   nop   

/* 00FBAC 8000EFAC 0007000D */  break 7

.L8000EFB0:
/* 00FBB0 8000EFB0 2401FFFF */  li    $at, -1
/* 00FBB4 8000EFB4 14410004 */  bne   $v0, $at, .L8000EFC8
/* 00FBB8 8000EFB8 3C018000 */   lui   $at, 0x8000

/* 00FBBC 8000EFBC 14A10002 */  bne   $a1, $at, .L8000EFC8
/* 00FBC0 8000EFC0 00000000 */   nop   

/* 00FBC4 8000EFC4 0006000D */  break 6

.L8000EFC8:
/* 00FBC8 8000EFC8 00001012 */  mflo  $v0
/* 00FBCC 8000EFCC 30420FFF */  andi  $v0, $v0, 0xfff

.L8000EFD0:
/* 00FBD0 8000EFD0 00E21025 */  or    $v0, $a3, $v0
/* 00FBD4 8000EFD4 03001821 */  addu  $v1, $t8, $zero
/* 00FBD8 8000EFD8 27180008 */  addiu $t8, $t8, 8
/* 00FBDC 8000EFDC 03002821 */  addu  $a1, $t8, $zero
/* 00FBE0 8000EFE0 27180008 */  addiu $t8, $t8, 8
/* 00FBE4 8000EFE4 AD020004 */  sw    $v0, 4($t0)
/* 00FBE8 8000EFE8 3C02E700 */  lui   $v0, 0xe700
/* 00FBEC 8000EFEC AC620000 */  sw    $v0, ($v1)
/* 00FBF0 8000EFF0 AC600004 */  sw    $zero, %lo(0x07000004)($v1)
/* 00FBF4 8000EFF4 97230008 */  lhu   $v1, 8($t9)
/* 00FBF8 8000EFF8 8FAE000C */  lw    $t6, 0xc($sp)
/* 00FBFC 8000EFFC 32E2000F */  andi  $v0, $s7, 0xf
/* 00FC00 8000F000 00021380 */  sll   $v0, $v0, 0xe
/* 00FC04 8000F004 31C40003 */  andi  $a0, $t6, 3
/* 00FC08 8000F008 00042480 */  sll   $a0, $a0, 0x12
/* 00FC0C 8000F00C 00822025 */  or    $a0, $a0, $v0
/* 00FC10 8000F010 8FAE0004 */  lw    $t6, 4($sp)
/* 00FC14 8000F014 00031C00 */  sll   $v1, $v1, 0x10
/* 00FC18 8000F018 00031C43 */  sra   $v1, $v1, 0x11
/* 00FC1C 8000F01C 24630007 */  addiu $v1, %lo(0x07000007) # addiu $v1, $v1, 7
/* 00FC20 8000F020 000318C3 */  sra   $v1, $v1, 3
/* 00FC24 8000F024 306301FF */  andi  $v1, $v1, 0x1ff
/* 00FC28 8000F028 00031A40 */  sll   $v1, $v1, 9
/* 00FC2C 8000F02C 31C20003 */  andi  $v0, $t6, 3
/* 00FC30 8000F030 00021200 */  sll   $v0, $v0, 8
/* 00FC34 8000F034 00822025 */  or    $a0, $a0, $v0
/* 00FC38 8000F038 33C2000F */  andi  $v0, $fp, 0xf
/* 00FC3C 8000F03C 00021100 */  sll   $v0, $v0, 4
/* 00FC40 8000F040 00822025 */  or    $a0, $a0, $v0
/* 00FC44 8000F044 3C02F540 */  lui   $v0, 0xf540
/* 00FC48 8000F048 00621825 */  or    $v1, $v1, $v0
/* 00FC4C 8000F04C ACA40004 */  sw    $a0, 4($a1)
/* 00FC50 8000F050 03002021 */  addu  $a0, $t8, $zero
/* 00FC54 8000F054 3C02F200 */  lui   $v0, 0xf200
/* 00FC58 8000F058 ACA30000 */  sw    $v1, ($a1)
/* 00FC5C 8000F05C AC820000 */  sw    $v0, ($a0)
/* 00FC60 8000F060 87230008 */  lh    $v1, 8($t9)
/* 00FC64 8000F064 8722000A */  lh    $v0, 0xa($t9)
/* 00FC68 8000F068 2463FFFF */  addiu $v1, $v1, -1
/* 00FC6C 8000F06C 00031880 */  sll   $v1, $v1, 2
/* 00FC70 8000F070 30630FFF */  andi  $v1, $v1, 0xfff
/* 00FC74 8000F074 00031B00 */  sll   $v1, $v1, 0xc
/* 00FC78 8000F078 2442FFFF */  addiu $v0, $v0, -1
/* 00FC7C 8000F07C 00021080 */  sll   $v0, $v0, 2
/* 00FC80 8000F080 30420FFF */  andi  $v0, $v0, 0xfff
/* 00FC84 8000F084 00621825 */  or    $v1, $v1, $v0
/* 00FC88 8000F088 AC830004 */  sw    $v1, 4($a0)
/* 00FC8C 8000F08C 8F22001C */  lw    $v0, 0x1c($t9)
/* 00FC90 8000F090 10400009 */  beqz  $v0, .L8000F0B8
/* 00FC94 8000F094 27180008 */   addiu $t8, $t8, 8

/* 00FC98 8000F098 03002021 */  addu  $a0, $t8, $zero
/* 00FC9C 8000F09C 3C02DE01 */  lui   $v0, 0xde01
/* 00FCA0 8000F0A0 AC820000 */  sw    $v0, ($a0)
/* 00FCA4 8000F0A4 8F22001C */  lw    $v0, 0x1c($t9)
/* 00FCA8 8000F0A8 3C038000 */  lui   $v1, 0x8000
/* 00FCAC 8000F0AC 00431023 */  subu  $v0, $v0, $v1
/* 00FCB0 8000F0B0 08003C32 */  j     .L8000F0C8
/* 00FCB4 8000F0B4 AC820004 */   sw    $v0, 4($a0)

.L8000F0B8:
/* 00FCB8 8000F0B8 03001821 */  addu  $v1, $t8, $zero
/* 00FCBC 8000F0BC 3C02DF00 */  lui   $v0, 0xdf00
/* 00FCC0 8000F0C0 AC620000 */  sw    $v0, ($v1)
/* 00FCC4 8000F0C4 AC600004 */  sw    $zero, 4($v1)

.L8000F0C8:
/* 00FCC8 8000F0C8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 00FCCC 8000F0CC 8FB70034 */  lw    $s7, 0x34($sp)
/* 00FCD0 8000F0D0 8FB60030 */  lw    $s6, 0x30($sp)
/* 00FCD4 8000F0D4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 00FCD8 8000F0D8 8FB40028 */  lw    $s4, 0x28($sp)
/* 00FCDC 8000F0DC 8FB30024 */  lw    $s3, 0x24($sp)
/* 00FCE0 8000F0E0 8FB20020 */  lw    $s2, 0x20($sp)
/* 00FCE4 8000F0E4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00FCE8 8000F0E8 8FB00018 */  lw    $s0, 0x18($sp)
/* 00FCEC 8000F0EC 03E00008 */  jr    $ra
/* 00FCF0 8000F0F0 27BD0040 */   addiu $sp, $sp, 0x40
