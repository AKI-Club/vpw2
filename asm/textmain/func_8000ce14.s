# Params:
# $a0 - ?
# $a1 - File ID 1
# $a2 - File ID 2
# $a3 - ?

glabel func_8000CE14
/* 00DA14 8000CE14 27BDFF78 */  addiu $sp, $sp, -0x88
/* 00DA18 8000CE18 AFB20068 */  sw    $s2, 0x68($sp)
/* 00DA1C 8000CE1C 93B2009B */  lbu   $s2, 0x9b($sp)
/* 00DA20 8000CE20 AFB40070 */  sw    $s4, 0x70($sp)
/* 00DA24 8000CE24 0080A021 */  addu  $s4, $a0, $zero
/* 00DA28 8000CE28 AFB00060 */  sw    $s0, 0x60($sp)
/* 00DA2C 8000CE2C 00A08021 */  addu  $s0, $a1, $zero
/* 00DA30 8000CE30 AFBF0080 */  sw    $ra, 0x80($sp)
/* 00DA34 8000CE34 AFB7007C */  sw    $s7, 0x7c($sp)
/* 00DA38 8000CE38 AFB60078 */  sw    $s6, 0x78($sp)
/* 00DA3C 8000CE3C AFB50074 */  sw    $s5, 0x74($sp)
/* 00DA40 8000CE40 AFB3006C */  sw    $s3, 0x6c($sp)
/* 00DA44 8000CE44 AFB10064 */  sw    $s1, 0x64($sp)
/* 00DA48 8000CE48 8E820020 */  lw    $v0, 0x20($s4)
/* 00DA4C 8000CE4C 00C0A821 */  addu  $s5, $a2, $zero
/* 00DA50 8000CE50 93B7009F */  lbu   $s7, 0x9f($sp)
/* 00DA54 8000CE54 93B600A3 */  lbu   $s6, 0xa3($sp)
/* 00DA58 8000CE58 90420002 */  lbu   $v0, 2($v0)
/* 00DA5C 8000CE5C 00052C00 */  sll   $a1, $a1, 0x10
/* 00DA60 8000CE60 0005282B */  sltu  $a1, $zero, $a1
/* 00DA64 8000CE64 38420001 */  xori  $v0, $v0, 1
/* 00DA68 8000CE68 0002102B */  sltu  $v0, $zero, $v0
/* 00DA6C 8000CE6C 00451024 */  and   $v0, $v0, $a1
/* 00DA70 8000CE70 104000AE */  beqz  $v0, .L8000D12C # exit
/* 00DA74 8000CE74 00E08821 */   addu  $s1, $a3, $zero

/* 00DA78 8000CE78 00061400 */  sll   $v0, $a2, 0x10
/* 00DA7C 8000CE7C 104000AB */  beqz  $v0, .L8000D12C # exit
/* 00DA80 8000CE80 27A40010 */   addiu $a0, $sp, 0x10

# locate file 1
/* 00DA84 8000CE84 3210FFFF */  andi  $s0, $s0, 0xffff
/* 00DA88 8000CE88 0C000F71 */  jal   GetFileLoc
/* 00DA8C 8000CE8C 02002821 */   addu  $a1, $s0, $zero

/* 00DA90 8000CE90 8FA40018 */  lw    $a0, 0x18($sp)
/* 00DA94 8000CE94 0C000226 */  jal   aki_malloc
/* 00DA98 8000CE98 00000000 */   nop   

# load file 1
/* 00DA9C 8000CE9C 27A40020 */  addiu $a0, $sp, 0x20
/* 00DAA0 8000CEA0 02002821 */  addu  $a1, $s0, $zero
/* 00DAA4 8000CEA4 00409821 */  addu  $s3, $v0, $zero
/* 00DAA8 8000CEA8 0C000FA2 */  jal   LoadFile
/* 00DAAC 8000CEAC 02603021 */   addu  $a2, $s3, $zero

# locate file 2
/* 00DAB0 8000CEB0 27A40010 */  addiu $a0, $sp, 0x10
/* 00DAB4 8000CEB4 32B0FFFF */  andi  $s0, $s5, 0xffff
/* 00DAB8 8000CEB8 0C000F71 */  jal   GetFileLoc
/* 00DABC 8000CEBC 02002821 */   addu  $a1, $s0, $zero

/* 00DAC0 8000CEC0 8FA40018 */  lw    $a0, 0x18($sp)
/* 00DAC4 8000CEC4 0C000226 */  jal   aki_malloc
/* 00DAC8 8000CEC8 00000000 */   nop   

# load file 2
/* 00DACC 8000CECC 27A40030 */  addiu $a0, $sp, 0x30
/* 00DAD0 8000CED0 02002821 */  addu  $a1, $s0, $zero
/* 00DAD4 8000CED4 00408021 */  addu  $s0, $v0, $zero
/* 00DAD8 8000CED8 0C000FA2 */  jal   LoadFile
/* 00DADC 8000CEDC 02003021 */   addu  $a2, $s0, $zero


/* 00DAE0 8000CEE0 92640006 */  lbu   $a0, 6($s3)
/* 00DAE4 8000CEE4 24050001 */  li    $a1, 1
/* 00DAE8 8000CEE8 92620007 */  lbu   $v0, 7($s3)
/* 00DAEC 8000CEEC 86830008 */  lh    $v1, 8($s4)
/* 00DAF0 8000CEF0 00855804 */  sllv  $t3, $a1, $a0
/* 00DAF4 8000CEF4 15630089 */  bne   $t3, $v1, .L8000D11C
/* 00DAF8 8000CEF8 00456804 */   sllv  $t5, $a1, $v0

/* 00DAFC 8000CEFC 92620002 */  lbu   $v0, 2($s3)
/* 00DB00 8000CF00 10450086 */  beq   $v0, $a1, .L8000D11C
/* 00DB04 8000CF04 26680008 */   addiu $t0, $s3, 8

/* 00DB08 8000CF08 8E820020 */  lw    $v0, 0x20($s4)
/* 00DB0C 8000CF0C 00002821 */  addu  $a1, $zero, $zero
/* 00DB10 8000CF10 8E890024 */  lw    $t1, 0x24($s4)
/* 00DB14 8000CF14 11A00052 */  beqz  $t5, .L8000D060
/* 00DB18 8000CF18 24460008 */   addiu $a2, $v0, 8

/* 00DB1C 8000CF1C 000B7042 */  srl   $t6, $t3, 1
/* 00DB20 8000CF20 32CC00FF */  andi  $t4, $s6, 0xff

.L8000CF24:
/* 00DB24 8000CF24 11C0004A */  beqz  $t6, .L8000D050
/* 00DB28 8000CF28 00003821 */   addu  $a3, $zero, $zero

/* 00DB2C 8000CF2C 000B5042 */  srl   $t2, $t3, 1

.L8000CF30:
/* 00DB30 8000CF30 15800023 */  bnez  $t4, .L8000CFC0
/* 00DB34 8000CF34 00000000 */   nop   

/* 00DB38 8000CF38 90C40000 */  lbu   $a0, ($a2)
/* 00DB3C 8000CF3C 00041102 */  srl   $v0, $a0, 4
/* 00DB40 8000CF40 00021040 */  sll   $v0, $v0, 1
/* 00DB44 8000CF44 00491021 */  addu  $v0, $v0, $t1
/* 00DB48 8000CF48 94420000 */  lhu   $v0, ($v0)
/* 00DB4C 8000CF4C 1440000E */  bnez  $v0, .L8000CF88
/* 00DB50 8000CF50 3082000F */   andi  $v0, $a0, 0xf

/* 00DB54 8000CF54 91020000 */  lbu   $v0, ($t0)
/* 00DB58 8000CF58 00021102 */  srl   $v0, $v0, 4
/* 00DB5C 8000CF5C 02221821 */  addu  $v1, $s1, $v0
/* 00DB60 8000CF60 306200FF */  andi  $v0, $v1, 0xff
/* 00DB64 8000CF64 2C420010 */  sltiu $v0, $v0, 0x10
/* 00DB68 8000CF68 50400001 */  beql  $v0, $zero, .L8000CF70
/* 00DB6C 8000CF6C 2403000F */   li    $v1, 15

.L8000CF70:
/* 00DB70 8000CF70 3082000F */  andi  $v0, $a0, 0xf
/* 00DB74 8000CF74 00031900 */  sll   $v1, $v1, 4
/* 00DB78 8000CF78 00431025 */  or    $v0, $v0, $v1
/* 00DB7C 8000CF7C A0C20000 */  sb    $v0, ($a2)
/* 00DB80 8000CF80 90C40000 */  lbu   $a0, ($a2)
/* 00DB84 8000CF84 3082000F */  andi  $v0, $a0, 0xf

.L8000CF88:
/* 00DB88 8000CF88 00021040 */  sll   $v0, $v0, 1
/* 00DB8C 8000CF8C 00491021 */  addu  $v0, $v0, $t1
/* 00DB90 8000CF90 94420000 */  lhu   $v0, ($v0)
/* 00DB94 8000CF94 5440002A */  bnezl $v0, .L8000D040
/* 00DB98 8000CF98 25080001 */   addiu $t0, $t0, 1

/* 00DB9C 8000CF9C 91020000 */  lbu   $v0, ($t0)
/* 00DBA0 8000CFA0 3042000F */  andi  $v0, $v0, 0xf
/* 00DBA4 8000CFA4 02221821 */  addu  $v1, $s1, $v0
/* 00DBA8 8000CFA8 306200FF */  andi  $v0, $v1, 0xff
/* 00DBAC 8000CFAC 2C420010 */  sltiu $v0, $v0, 0x10
/* 00DBB0 8000CFB0 50400001 */  beql  $v0, $zero, .L8000CFB8
/* 00DBB4 8000CFB4 2403000F */   li    $v1, 15

.L8000CFB8:
/* 00DBB8 8000CFB8 0800340D */  j     .L8000D034
/* 00DBBC 8000CFBC 308200F0 */   andi  $v0, $a0, 0xf0

.L8000CFC0:
/* 00DBC0 8000CFC0 91020000 */  lbu   $v0, ($t0)
/* 00DBC4 8000CFC4 00021902 */  srl   $v1, $v0, 4
/* 00DBC8 8000CFC8 00031040 */  sll   $v0, $v1, 1
/* 00DBCC 8000CFCC 00501021 */  addu  $v0, $v0, $s0
/* 00DBD0 8000CFD0 94420000 */  lhu   $v0, ($v0)
/* 00DBD4 8000CFD4 1040000A */  beqz  $v0, .L8000D000
/* 00DBD8 8000CFD8 02231821 */   addu  $v1, $s1, $v1

/* 00DBDC 8000CFDC 306200FF */  andi  $v0, $v1, 0xff
/* 00DBE0 8000CFE0 2C420010 */  sltiu $v0, $v0, 0x10
/* 00DBE4 8000CFE4 50400001 */  beql  $v0, $zero, .L8000CFEC
/* 00DBE8 8000CFE8 2403000F */   li    $v1, 15

.L8000CFEC:
/* 00DBEC 8000CFEC 90C20000 */  lbu   $v0, ($a2)
/* 00DBF0 8000CFF0 00031900 */  sll   $v1, $v1, 4
/* 00DBF4 8000CFF4 3042000F */  andi  $v0, $v0, 0xf
/* 00DBF8 8000CFF8 00431025 */  or    $v0, $v0, $v1
/* 00DBFC 8000CFFC A0C20000 */  sb    $v0, ($a2)

.L8000D000:
/* 00DC00 8000D000 91020000 */  lbu   $v0, ($t0)
/* 00DC04 8000D004 3043000F */  andi  $v1, $v0, 0xf
/* 00DC08 8000D008 00031040 */  sll   $v0, $v1, 1
/* 00DC0C 8000D00C 00501021 */  addu  $v0, $v0, $s0
/* 00DC10 8000D010 94420000 */  lhu   $v0, ($v0)
/* 00DC14 8000D014 10400009 */  beqz  $v0, .L8000D03C
/* 00DC18 8000D018 02231821 */   addu  $v1, $s1, $v1

/* 00DC1C 8000D01C 306200FF */  andi  $v0, $v1, 0xff
/* 00DC20 8000D020 2C420010 */  sltiu $v0, $v0, 0x10
/* 00DC24 8000D024 50400001 */  beql  $v0, $zero, .L8000D02C
/* 00DC28 8000D028 2403000F */   li    $v1, 15

.L8000D02C:
/* 00DC2C 8000D02C 90C20000 */  lbu   $v0, ($a2)
/* 00DC30 8000D030 304200F0 */  andi  $v0, $v0, 0xf0

.L8000D034:
/* 00DC34 8000D034 00431025 */  or    $v0, $v0, $v1
/* 00DC38 8000D038 A0C20000 */  sb    $v0, ($a2)

.L8000D03C:
/* 00DC3C 8000D03C 25080001 */  addiu $t0, $t0, 1

.L8000D040:
/* 00DC40 8000D040 24E70001 */  addiu $a3, $a3, 1
/* 00DC44 8000D044 00EA102B */  sltu  $v0, $a3, $t2
/* 00DC48 8000D048 1440FFB9 */  bnez  $v0, .L8000CF30
/* 00DC4C 8000D04C 24C60001 */   addiu $a2, $a2, 1

.L8000D050:
/* 00DC50 8000D050 24A50001 */  addiu $a1, $a1, 1
/* 00DC54 8000D054 00AD102B */  sltu  $v0, $a1, $t5
/* 00DC58 8000D058 1440FFB2 */  bnez  $v0, .L8000CF24
/* 00DC5C 8000D05C 00000000 */   nop   

.L8000D060:
/* 00DC60 8000D060 00171040 */  sll   $v0, $s7, 1
/* 00DC64 8000D064 02024021 */  addu  $t0, $s0, $v0
/* 00DC68 8000D068 322200FF */  andi  $v0, $s1, 0xff
/* 00DC6C 8000D06C 8E830024 */  lw    $v1, 0x24($s4)
/* 00DC70 8000D070 00022840 */  sll   $a1, $v0, 1
/* 00DC74 8000D074 8FA40018 */  lw    $a0, 0x18($sp)
/* 00DC78 8000D078 324200FF */  andi  $v0, $s2, 0xff
/* 00DC7C 8000D07C 0082102A */  slt   $v0, $a0, $v0
/* 00DC80 8000D080 10400004 */  beqz  $v0, .L8000D094
/* 00DC84 8000D084 00653021 */   addu  $a2, $v1, $a1

/* 00DC88 8000D088 000417C2 */  srl   $v0, $a0, 0x1f
/* 00DC8C 8000D08C 00821021 */  addu  $v0, $a0, $v0
/* 00DC90 8000D090 00029042 */  srl   $s2, $v0, 1

.L8000D094:
/* 00DC94 8000D094 324200FF */  andi  $v0, $s2, 0xff
/* 00DC98 8000D098 00029040 */  sll   $s2, $v0, 1
/* 00DC9C 8000D09C 24030020 */  li    $v1, 32
/* 00DCA0 8000D0A0 00651823 */  subu  $v1, $v1, $a1
/* 00DCA4 8000D0A4 324200FF */  andi  $v0, $s2, 0xff
/* 00DCA8 8000D0A8 0043102A */  slt   $v0, $v0, $v1
/* 00DCAC 8000D0AC 10400002 */  beqz  $v0, .L8000D0B8
/* 00DCB0 8000D0B0 00602821 */   addu  $a1, $v1, $zero
/* 00DCB4 8000D0B4 324500FF */  andi  $a1, $s2, 0xff
.L8000D0B8:
/* 00DCB8 8000D0B8 00051400 */  sll   $v0, $a1, 0x10
/* 00DCBC 8000D0BC 00021403 */  sra   $v0, $v0, 0x10
/* 00DCC0 8000D0C0 10400009 */  beqz  $v0, .L8000D0E8
/* 00DCC4 8000D0C4 00003821 */   addu  $a3, $zero, $zero
/* 00DCC8 8000D0C8 00401821 */  addu  $v1, $v0, $zero
.L8000D0CC:
/* 00DCCC 8000D0CC 91020000 */  lbu   $v0, ($t0)
/* 00DCD0 8000D0D0 25080001 */  addiu $t0, $t0, 1
/* 00DCD4 8000D0D4 24E70001 */  addiu $a3, $a3, 1
/* 00DCD8 8000D0D8 A0C20000 */  sb    $v0, ($a2)
/* 00DCDC 8000D0DC 00E3102B */  sltu  $v0, $a3, $v1
/* 00DCE0 8000D0E0 1440FFFA */  bnez  $v0, .L8000D0CC
/* 00DCE4 8000D0E4 24C60001 */   addiu $a2, $a2, 1

.L8000D0E8:
/* 00DCE8 8000D0E8 322200FF */  andi  $v0, $s1, 0xff
/* 00DCEC 8000D0EC 8E830024 */  lw    $v1, 0x24($s4)
/* 00DCF0 8000D0F0 00021040 */  sll   $v0, $v0, 1

# check for monochrome mode
/* 00DCF4 8000D0F4 3C048004 */  lui   $a0, %hi(var_8003FDB0) # $a0, 0x8004
/* 00DCF8 8000D0F8 9484FDB0 */  lhu   $a0, %lo(var_8003FDB0)($a0)
/* 00DCFC 8000D0FC 00623021 */  addu  $a2, $v1, $v0
/* 00DD00 8000D100 24020001 */  li    $v0, 1
/* 00DD04 8000D104 14820005 */  bne   $a0, $v0, .L8000D11C
/* 00DD08 8000D108 00C02021 */   addu  $a0, $a2, $zero

/* 00DD0C 8000D10C 00052C00 */  sll   $a1, $a1, 0x10
/* 00DD10 8000D110 00052C43 */  sra   $a1, $a1, 0x11
/* 00DD14 8000D114 0C0030A5 */  jal   func_8000C294
/* 00DD18 8000D118 30A5FFFF */   andi  $a1, $a1, 0xffff

.L8000D11C:
/* 00DD1C 8000D11C 0C000280 */  jal   aki_free
/* 00DD20 8000D120 02002021 */   addu  $a0, $s0, $zero

/* 00DD24 8000D124 0C000280 */  jal   aki_free
/* 00DD28 8000D128 02602021 */   addu  $a0, $s3, $zero

.L8000D12C:
/* 00DD2C 8000D12C 8FBF0080 */  lw    $ra, 0x80($sp)
/* 00DD30 8000D130 8FB7007C */  lw    $s7, 0x7c($sp)
/* 00DD34 8000D134 8FB60078 */  lw    $s6, 0x78($sp)
/* 00DD38 8000D138 8FB50074 */  lw    $s5, 0x74($sp)
/* 00DD3C 8000D13C 8FB40070 */  lw    $s4, 0x70($sp)
/* 00DD40 8000D140 8FB3006C */  lw    $s3, 0x6c($sp)
/* 00DD44 8000D144 8FB20068 */  lw    $s2, 0x68($sp)
/* 00DD48 8000D148 8FB10064 */  lw    $s1, 0x64($sp)
/* 00DD4C 8000D14C 8FB00060 */  lw    $s0, 0x60($sp)
/* 00DD50 8000D150 03E00008 */  jr    $ra
/* 00DD54 8000D154 27BD0088 */   addiu $sp, $sp, 0x88
