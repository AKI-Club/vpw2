glabel func3_800EC85C
/* 0E6F0C 800EC85C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0E6F10 800EC860 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E6F14 800EC864 00008021 */  addu  $s0, $zero, $zero
/* 0E6F18 800EC868 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E6F1C 800EC86C 3C118016 */  lui   $s1, %hi(bss3_80159CA0) # $s1, 0x8016
/* 0E6F20 800EC870 26319CA0 */  addiu $s1, %lo(bss3_80159CA0) # addiu $s1, $s1, -0x6360
/* 0E6F24 800EC874 AFBF0030 */  sw    $ra, 0x30($sp)
/* 0E6F28 800EC878 AFB7002C */  sw    $s7, 0x2c($sp)
/* 0E6F2C 800EC87C AFB60028 */  sw    $s6, 0x28($sp)
/* 0E6F30 800EC880 AFB50024 */  sw    $s5, 0x24($sp)
/* 0E6F34 800EC884 AFB40020 */  sw    $s4, 0x20($sp)
/* 0E6F38 800EC888 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0E6F3C 800EC88C AFB20018 */  sw    $s2, 0x18($sp)

.L3_800EC890:
/* 0E6F40 800EC890 0C003F98 */  jal   func_8000FE60
/* 0E6F44 800EC894 02202021 */   addu  $a0, $s1, $zero

/* 0E6F48 800EC898 26100001 */  addiu $s0, $s0, 1
/* 0E6F4C 800EC89C 2E020005 */  sltiu $v0, $s0, 5
/* 0E6F50 800EC8A0 1440FFFB */  bnez  $v0, .L3_800EC890
/* 0E6F54 800EC8A4 263100DC */   addiu $s1, $s1, 0xdc

/* 0E6F58 800EC8A8 00008021 */  addu  $s0, $zero, $zero
/* 0E6F5C 800EC8AC 3C118016 */  lui   $s1, %hi(bss3_8015A0F0) # $s1, 0x8016
/* 0E6F60 800EC8B0 2631A0F0 */  addiu $s1, %lo(bss3_8015A0F0) # addiu $s1, $s1, -0x5f10

.L3_800EC8B4:
/* 0E6F64 800EC8B4 0C003FE7 */  jal   func_8000FF9C
/* 0E6F68 800EC8B8 02202021 */   addu  $a0, $s1, $zero

/* 0E6F6C 800EC8BC 26100001 */  addiu $s0, $s0, 1
/* 0E6F70 800EC8C0 2E02000B */  sltiu $v0, $s0, 0xb
/* 0E6F74 800EC8C4 1440FFFB */  bnez  $v0, .L3_800EC8B4
/* 0E6F78 800EC8C8 26310008 */   addiu $s1, $s1, 8

/* 0E6F7C 800EC8CC 3C048016 */  lui   $a0, %hi(bss3_80159B20) # $a0, 0x8016
/* 0E6F80 800EC8D0 24849B20 */  addiu $a0, %lo(bss3_80159B20) # addiu $a0, $a0, -0x64e0
/* 0E6F84 800EC8D4 AC800000 */  sw    $zero, ($a0)
/* 0E6F88 800EC8D8 0C003F98 */  jal   func_8000FE60
/* 0E6F8C 800EC8DC 2484FFF0 */   addiu $a0, $a0, -0x10

/* 0E6F90 800EC8E0 00008021 */  addu  $s0, $zero, $zero
/* 0E6F94 800EC8E4 3C118016 */  lui   $s1, %hi(bss3_80159BEC) # $s1, 0x8016
/* 0E6F98 800EC8E8 26319BEC */  addiu $s1, %lo(bss3_80159BEC) # addiu $s1, $s1, -0x6414

.L3_800EC8EC:
/* 0E6F9C 800EC8EC 8E240000 */  lw    $a0, ($s1)
/* 0E6FA0 800EC8F0 0C000280 */  jal   aki_free
/* 0E6FA4 800EC8F4 26100001 */   addiu $s0, $s0, 1

/* 0E6FA8 800EC8F8 AE200000 */  sw    $zero, ($s1)
/* 0E6FAC 800EC8FC 2E020003 */  sltiu $v0, $s0, 3
/* 0E6FB0 800EC900 1440FFFA */  bnez  $v0, .L3_800EC8EC
/* 0E6FB4 800EC904 26310004 */   addiu $s1, $s1, 4

/* 0E6FB8 800EC908 00008021 */  addu  $s0, $zero, $zero
/* 0E6FBC 800EC90C 3C118016 */  lui   $s1, %hi(bss3_80159BF8) # $s1, 0x8016
/* 0E6FC0 800EC910 26319BF8 */  addiu $s1, %lo(bss3_80159BF8) # addiu $s1, $s1, -0x6408

.L3_800EC914:
/* 0E6FC4 800EC914 0C003FE7 */  jal   func_8000FF9C
/* 0E6FC8 800EC918 02202021 */   addu  $a0, $s1, $zero

/* 0E6FCC 800EC91C 26100001 */  addiu $s0, $s0, 1
/* 0E6FD0 800EC920 2E020012 */  sltiu $v0, $s0, 0x12
/* 0E6FD4 800EC924 1440FFFB */  bnez  $v0, .L3_800EC914
/* 0E6FD8 800EC928 26310008 */   addiu $s1, $s1, 8

/* 0E6FDC 800EC92C 00008021 */  addu  $s0, $zero, $zero
/* 0E6FE0 800EC930 3C128016 */  lui   $s2, %hi(bss3_8015A3A8) # $s2, 0x8016
/* 0E6FE4 800EC934 2652A3A8 */  addiu $s2, %lo(bss3_8015A3A8) # addiu $s2, $s2, -0x5c58
/* 0E6FE8 800EC938 3C118016 */  lui   $s1, %hi(bss3_8015A308) # $s1, 0x8016
/* 0E6FEC 800EC93C 2631A308 */  addiu $s1, %lo(bss3_8015A308) # addiu $s1, $s1, -0x5cf8

.L3_800EC940:
/* 0E6FF0 800EC940 0C003FAC */  jal   func_8000FEB0
/* 0E6FF4 800EC944 02202021 */   addu  $a0, $s1, $zero

/* 0E6FF8 800EC948 0C003FAC */  jal   func_8000FEB0
/* 0E6FFC 800EC94C 02402021 */   addu  $a0, $s2, $zero

/* 0E7000 800EC950 26520034 */  addiu $s2, $s2, 0x34
/* 0E7004 800EC954 26100001 */  addiu $s0, $s0, 1
/* 0E7008 800EC958 2E020003 */  sltiu $v0, $s0, 3
/* 0E700C 800EC95C 1440FFF8 */  bnez  $v0, .L3_800EC940
/* 0E7010 800EC960 26310034 */   addiu $s1, $s1, 0x34

/* 0E7014 800EC964 0000A821 */  addu  $s5, $zero, $zero
/* 0E7018 800EC968 3C178016 */  lui   $s7, %hi(bss3_8015A7C0) # $s7, 0x8016
/* 0E701C 800EC96C 26F7A7C0 */  addiu $s7, %lo(bss3_8015A7C0) # addiu $s7, $s7, -0x5840
/* 0E7020 800EC970 3C168016 */  lui   $s6, %hi(bss3_8015ABD0) # $s6, 0x8016
/* 0E7024 800EC974 26D6ABD0 */  addiu $s6, %lo(bss3_8015ABD0) # addiu $s6, $s6, -0x5430
/* 0E7028 800EC978 0000A021 */  addu  $s4, $zero, $zero

.L3_800EC97C:
/* 0E702C 800EC97C 00008021 */  addu  $s0, $zero, $zero
/* 0E7030 800EC980 02809821 */  addu  $s3, $s4, $zero
/* 0E7034 800EC984 02C09021 */  addu  $s2, $s6, $zero
/* 0E7038 800EC988 02E08821 */  addu  $s1, $s7, $zero

.L3_800EC98C:
/* 0E703C 800EC98C 0C003FAC */  jal   func_8000FEB0
/* 0E7040 800EC990 02712021 */   addu  $a0, $s3, $s1

/* 0E7044 800EC994 0C003FAC */  jal   func_8000FEB0
/* 0E7048 800EC998 02722021 */   addu  $a0, $s3, $s2

/* 0E704C 800EC99C 26520034 */  addiu $s2, $s2, 0x34
/* 0E7050 800EC9A0 26100001 */  addiu $s0, $s0, 1
/* 0E7054 800EC9A4 2E02000A */  sltiu $v0, $s0, 0xa
/* 0E7058 800EC9A8 1440FFF8 */  bnez  $v0, .L3_800EC98C
/* 0E705C 800EC9AC 26310034 */   addiu $s1, $s1, 0x34

/* 0E7060 800EC9B0 26B50001 */  addiu $s5, $s5, 1
/* 0E7064 800EC9B4 2EA20002 */  sltiu $v0, $s5, 2
/* 0E7068 800EC9B8 1440FFF0 */  bnez  $v0, .L3_800EC97C
/* 0E706C 800EC9BC 26940208 */   addiu $s4, $s4, 0x208

/* 0E7070 800EC9C0 00008021 */  addu  $s0, $zero, $zero
/* 0E7074 800EC9C4 3C128016 */  lui   $s2, %hi(bss3_8015B4C0) # $s2, 0x8016
/* 0E7078 800EC9C8 2652B4C0 */  addiu $s2, %lo(bss3_8015B4C0) # addiu $s2, $s2, -0x4b40
/* 0E707C 800EC9CC 3C118016 */  lui   $s1, %hi(bss3_8015B1B0) # $s1, 0x8016
/* 0E7080 800EC9D0 2631B1B0 */  addiu $s1, %lo(bss3_8015B1B0) # addiu $s1, $s1, -0x4e50

.L3_800EC9D4:
/* 0E7084 800EC9D4 0C003FAC */  jal   func_8000FEB0
/* 0E7088 800EC9D8 02202021 */   addu  $a0, $s1, $zero

/* 0E708C 800EC9DC 0C003FAC */  jal   func_8000FEB0
/* 0E7090 800EC9E0 02402021 */   addu  $a0, $s2, $zero

/* 0E7094 800EC9E4 26520034 */  addiu $s2, $s2, 0x34
/* 0E7098 800EC9E8 26100001 */  addiu $s0, $s0, 1
/* 0E709C 800EC9EC 2E02000F */  sltiu $v0, $s0, 0xf
/* 0E70A0 800EC9F0 1440FFF8 */  bnez  $v0, .L3_800EC9D4
/* 0E70A4 800EC9F4 26310034 */   addiu $s1, $s1, 0x34

/* 0E70A8 800EC9F8 00008021 */  addu  $s0, $zero, $zero
/* 0E70AC 800EC9FC 3C118016 */  lui   $s1, %hi(bss3_8015D138) # $s1, 0x8016
/* 0E70B0 800ECA00 2631D138 */  addiu $s1, %lo(bss3_8015D138) # addiu $s1, $s1, -0x2ec8

.L3_800ECA04:
/* 0E70B4 800ECA04 0C003FE7 */  jal   func_8000FF9C
/* 0E70B8 800ECA08 02202021 */   addu  $a0, $s1, $zero

/* 0E70BC 800ECA0C 26100001 */  addiu $s0, $s0, 1
/* 0E70C0 800ECA10 2E020014 */  sltiu $v0, $s0, 0x14
/* 0E70C4 800ECA14 1440FFFB */  bnez  $v0, .L3_800ECA04
/* 0E70C8 800ECA18 26310008 */   addiu $s1, $s1, 8

/* 0E70CC 800ECA1C 00008021 */  addu  $s0, $zero, $zero
/* 0E70D0 800ECA20 3C118016 */  lui   $s1, %hi(bss3_8015D1D8) # $s1, 0x8016
/* 0E70D4 800ECA24 2631D1D8 */  addiu $s1, %lo(bss3_8015D1D8) # addiu $s1, $s1, -0x2e28

.L3_800ECA28:
/* 0E70D8 800ECA28 0C003FAC */  jal   func_8000FEB0
/* 0E70DC 800ECA2C 02202021 */   addu  $a0, $s1, $zero

/* 0E70E0 800ECA30 26100001 */  addiu $s0, $s0, 1
/* 0E70E4 800ECA34 2E020004 */  sltiu $v0, $s0, 4
/* 0E70E8 800ECA38 1440FFFB */  bnez  $v0, .L3_800ECA28
/* 0E70EC 800ECA3C 26310034 */   addiu $s1, $s1, 0x34

/* 0E70F0 800ECA40 00008021 */  addu  $s0, $zero, $zero
/* 0E70F4 800ECA44 3C118016 */  lui   $s1, %hi(bss3_8015BB78) # $s1, 0x8016
/* 0E70F8 800ECA48 2631BB78 */  addiu $s1, %lo(bss3_8015BB78) # addiu $s1, $s1, -0x4488

.L3_800ECA4C:
/* 0E70FC 800ECA4C 0C003FE7 */  jal   func_8000FF9C
/* 0E7100 800ECA50 02202021 */   addu  $a0, $s1, $zero

/* 0E7104 800ECA54 26100001 */  addiu $s0, $s0, 1
/* 0E7108 800ECA58 2E020004 */  sltiu $v0, $s0, 4
/* 0E710C 800ECA5C 1440FFFB */  bnez  $v0, .L3_800ECA4C
/* 0E7110 800ECA60 26310008 */   addiu $s1, $s1, 8

/* 0E7114 800ECA64 00008021 */  addu  $s0, $zero, $zero
/* 0E7118 800ECA68 3C118016 */  lui   $s1, %hi(bss3_8015BB98) # $s1, 0x8016
/* 0E711C 800ECA6C 2631BB98 */  addiu $s1, %lo(bss3_8015BB98) # addiu $s1, $s1, -0x4468

.L3_800ECA70:
/* 0E7120 800ECA70 0C003FE7 */  jal   func_8000FF9C
/* 0E7124 800ECA74 02202021 */   addu  $a0, $s1, $zero

/* 0E7128 800ECA78 26100001 */  addiu $s0, $s0, 1
/* 0E712C 800ECA7C 2E020002 */  sltiu $v0, $s0, 2
/* 0E7130 800ECA80 1440FFFB */  bnez  $v0, .L3_800ECA70
/* 0E7134 800ECA84 26310008 */   addiu $s1, $s1, 8

/* 0E7138 800ECA88 00008021 */  addu  $s0, $zero, $zero
/* 0E713C 800ECA8C 3C118016 */  lui   $s1, %hi(bss3_8015BBA8) # $s1, 0x8016
/* 0E7140 800ECA90 2631BBA8 */  addiu $s1, %lo(bss3_8015BBA8) # addiu $s1, $s1, -0x4458

.L3_800ECA94:
/* 0E7144 800ECA94 0C003FE7 */  jal   func_8000FF9C
/* 0E7148 800ECA98 02202021 */   addu  $a0, $s1, $zero

/* 0E714C 800ECA9C 26100001 */  addiu $s0, $s0, 1
/* 0E7150 800ECAA0 2E020014 */  sltiu $v0, $s0, 0x14
/* 0E7154 800ECAA4 1440FFFB */  bnez  $v0, .L3_800ECA94
/* 0E7158 800ECAA8 26310008 */   addiu $s1, $s1, 8

/* 0E715C 800ECAAC 3C048016 */  lui   $a0, %hi(bss3_8015C090) # $a0, 0x8016
/* 0E7160 800ECAB0 2484C090 */  addiu $a0, %lo(bss3_8015C090) # addiu $a0, $a0, -0x3f70
/* 0E7164 800ECAB4 0C003FE7 */  jal   func_8000FF9C
/* 0E7168 800ECAB8 00008021 */   addu  $s0, $zero, $zero

/* 0E716C 800ECABC 3C048016 */  lui   $a0, %hi(bss3_8015C098) # $a0, 0x8016
/* 0E7170 800ECAC0 0C003FE7 */  jal   func_8000FF9C
/* 0E7174 800ECAC4 2484C098 */   addiu $a0, %lo(bss3_8015C098) # addiu $a0, $a0, -0x3f68

/* 0E7178 800ECAC8 3C048016 */  lui   $a0, %hi(bss3_8015C0A0) # $a0, 0x8016
/* 0E717C 800ECACC 0C003FE7 */  jal   func_8000FF9C
/* 0E7180 800ECAD0 2484C0A0 */   addiu $a0, %lo(bss3_8015C0A0) # addiu $a0, $a0, -0x3f60

/* 0E7184 800ECAD4 3C118016 */  lui   $s1, %hi(bss3_8015C318) # $s1, 0x8016
/* 0E7188 800ECAD8 2631C318 */  addiu $s1, %lo(bss3_8015C318) # addiu $s1, $s1, -0x3ce8

.L3_800ECADC:
/* 0E718C 800ECADC 0C003FE7 */  jal   func_8000FF9C
/* 0E7190 800ECAE0 02202021 */   addu  $a0, $s1, $zero

/* 0E7194 800ECAE4 26100001 */  addiu $s0, $s0, 1
/* 0E7198 800ECAE8 2E020002 */  sltiu $v0, $s0, 2
/* 0E719C 800ECAEC 1440FFFB */  bnez  $v0, .L3_800ECADC
/* 0E71A0 800ECAF0 26310008 */   addiu $s1, $s1, 8

/* 0E71A4 800ECAF4 3C02800A */  lui   $v0, %hi(bssMain_800A44D8) # $v0, 0x800a
/* 0E71A8 800ECAF8 8C4244D8 */  lw    $v0, %lo(bssMain_800A44D8)($v0)
/* 0E71AC 800ECAFC 3C030001 */  lui   $v1, 1 # Martial Arts match ruleset
/* 0E71B0 800ECB00 00431024 */  and   $v0, $v0, $v1
/* 0E71B4 800ECB04 1040000E */  beqz  $v0, .L3_800ECB40
/* 0E71B8 800ECB08 00008021 */   addu  $s0, $zero, $zero

/* 0E71BC 800ECB0C 3C128016 */  lui   $s2, %hi(bss3_8015C7E8) # $s2, 0x8016
/* 0E71C0 800ECB10 2652C7E8 */  addiu $s2, %lo(bss3_8015C7E8) # addiu $s2, $s2, -0x3818
/* 0E71C4 800ECB14 3C118016 */  lui   $s1, %hi(bss3_8015C768) # $s1, 0x8016
/* 0E71C8 800ECB18 2631C768 */  addiu $s1, %lo(bss3_8015C768) # addiu $s1, $s1, -0x3898

.L3_800ECB1C:
/* 0E71CC 800ECB1C 0C003FE7 */  jal   func_8000FF9C
/* 0E71D0 800ECB20 02202021 */   addu  $a0, $s1, $zero

/* 0E71D4 800ECB24 0C003FE7 */  jal   func_8000FF9C
/* 0E71D8 800ECB28 02402021 */   addu  $a0, $s2, $zero

/* 0E71DC 800ECB2C 26520008 */  addiu $s2, $s2, 8
/* 0E71E0 800ECB30 26100001 */  addiu $s0, $s0, 1
/* 0E71E4 800ECB34 2E020010 */  sltiu $v0, $s0, 0x10
/* 0E71E8 800ECB38 1440FFF8 */  bnez  $v0, .L3_800ECB1C
/* 0E71EC 800ECB3C 26310008 */   addiu $s1, $s1, 8

.L3_800ECB40:
/* 0E71F0 800ECB40 00008021 */  addu  $s0, $zero, $zero
/* 0E71F4 800ECB44 3C168016 */  lui   $s6, %hi(bss3_8015C698) # $s6, 0x8016
/* 0E71F8 800ECB48 26D6C698 */  addiu $s6, %lo(bss3_8015C698) # addiu $s6, $s6, -0x3968
/* 0E71FC 800ECB4C 3C158016 */  lui   $s5, %hi(bss3_8015C248) # $s5, 0x8016
/* 0E7200 800ECB50 26B5C248 */  addiu $s5, %lo(bss3_8015C248) # addiu $s5, $s5, -0x3db8
/* 0E7204 800ECB54 3C148016 */  lui   $s4, %hi(bss3_8015C178) # $s4, 0x8016
/* 0E7208 800ECB58 2694C178 */  addiu $s4, %lo(bss3_8015C178) # addiu $s4, $s4, -0x3e88
/* 0E720C 800ECB5C 3C138016 */  lui   $s3, %hi(bss3_8015C0A8) # $s3, 0x8016
/* 0E7210 800ECB60 2673C0A8 */  addiu $s3, %lo(bss3_8015C0A8) # addiu $s3, $s3, -0x3f58
/* 0E7214 800ECB64 3C128016 */  lui   $s2, %hi(bss3_8015CCF8) # $s2, 0x8016
/* 0E7218 800ECB68 2652CCF8 */  addiu $s2, %lo(bss3_8015CCF8) # addiu $s2, $s2, -0x3308
/* 0E721C 800ECB6C 3C118016 */  lui   $s1, %hi(bss3_8015BC48) # $s1, 0x8016
/* 0E7220 800ECB70 2631BC48 */  addiu $s1, %lo(bss3_8015BC48) # addiu $s1, $s1, -0x43b8

.L3_800ECB74:
/* 0E7224 800ECB74 0C003FAC */  jal   func_8000FEB0
/* 0E7228 800ECB78 02202021 */   addu  $a0, $s1, $zero

/* 0E722C 800ECB7C 0C003FAC */  jal   func_8000FEB0
/* 0E7230 800ECB80 02402021 */   addu  $a0, $s2, $zero

/* 0E7234 800ECB84 0C003FAC */  jal   func_8000FEB0
/* 0E7238 800ECB88 02602021 */   addu  $a0, $s3, $zero

/* 0E723C 800ECB8C 0C003FAC */  jal   func_8000FEB0
/* 0E7240 800ECB90 02802021 */   addu  $a0, $s4, $zero

/* 0E7244 800ECB94 0C003FAC */  jal   func_8000FEB0
/* 0E7248 800ECB98 02A02021 */   addu  $a0, $s5, $zero

/* 0E724C 800ECB9C 0C003FAC */  jal   func_8000FEB0
/* 0E7250 800ECBA0 02C02021 */   addu  $a0, $s6, $zero

/* 0E7254 800ECBA4 3C048016 */  lui   $a0, %hi(bss3_8015C950) # $a0, 0x8016
/* 0E7258 800ECBA8 2484C950 */  addiu $a0, %lo(bss3_8015C950) # addiu $a0, $a0, -0x36b0
/* 0E725C 800ECBAC 0C003FAC */  jal   func_8000FEB0
/* 0E7260 800ECBB0 26D60034 */   addiu $s6, $s6, 0x34

/* 0E7264 800ECBB4 26B50034 */  addiu $s5, $s5, 0x34
/* 0E7268 800ECBB8 26940034 */  addiu $s4, $s4, 0x34
/* 0E726C 800ECBBC 26730034 */  addiu $s3, $s3, 0x34
/* 0E7270 800ECBC0 26520034 */  addiu $s2, $s2, 0x34
/* 0E7274 800ECBC4 26100001 */  addiu $s0, $s0, 1
/* 0E7278 800ECBC8 2E020004 */  sltiu $v0, $s0, 4
/* 0E727C 800ECBCC 1440FFE9 */  bnez  $v0, .L3_800ECB74
/* 0E7280 800ECBD0 26310034 */   addiu $s1, $s1, 0x34

/* 0E7284 800ECBD4 00009021 */  addu  $s2, $zero, $zero
/* 0E7288 800ECBD8 3C118016 */  lui   $s1, %hi(bss3_8015D620) # $s1, 0x8016
/* 0E728C 800ECBDC 2631D620 */  addiu $s1, %lo(bss3_8015D620) # addiu $s1, $s1, -0x29e0
/* 0E7290 800ECBE0 00008021 */  addu  $s0, $zero, $zero
/* 0E7294 800ECBE4 3C018016 */  lui   $at, %hi(bss3_8015D780) # $at, 0x8016
/* 0E7298 800ECBE8 AC20D780 */  sw    $zero, %lo(bss3_8015D780)($at)
/* 0E729C 800ECBEC 3C018016 */  lui   $at, %hi(bss3_8015D784) # $at, 0x8016
/* 0E72A0 800ECBF0 A420D784 */  sh    $zero, %lo(bss3_8015D784)($at)

.L3_800ECBF4:
/* 0E72A4 800ECBF4 3C038016 */  lui   $v1, %hi(bss3_8015D2C4)
/* 0E72A8 800ECBF8 00701821 */  addu  $v1, $v1, $s0
/* 0E72AC 800ECBFC 8C63D2C4 */  lw    $v1, %lo(bss3_8015D2C4)($v1)
/* 0E72B0 800ECC00 02202021 */  addu  $a0, $s1, $zero
/* 0E72B4 800ECC04 26310034 */  addiu $s1, $s1, 0x34
/* 0E72B8 800ECC08 8C620000 */  lw    $v0, ($v1)
/* 0E72BC 800ECC0C 261000DC */  addiu $s0, $s0, 0xdc
/* 0E72C0 800ECC10 26520001 */  addiu $s2, $s2, 1
/* 0E72C4 800ECC14 34420080 */  ori   $v0, $v0, 0x80
/* 0E72C8 800ECC18 0C003FAC */  jal   func_8000FEB0
/* 0E72CC 800ECC1C AC620000 */   sw    $v0, ($v1)

/* 0E72D0 800ECC20 2E420004 */  sltiu $v0, $s2, 4
/* 0E72D4 800ECC24 1440FFF3 */  bnez  $v0, .L3_800ECBF4
/* 0E72D8 800ECC28 00000000 */   nop   

/* 0E72DC 800ECC2C 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0E72E0 800ECC30 8FB7002C */  lw    $s7, 0x2c($sp)
/* 0E72E4 800ECC34 8FB60028 */  lw    $s6, 0x28($sp)
/* 0E72E8 800ECC38 8FB50024 */  lw    $s5, 0x24($sp)
/* 0E72EC 800ECC3C 8FB40020 */  lw    $s4, 0x20($sp)
/* 0E72F0 800ECC40 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0E72F4 800ECC44 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E72F8 800ECC48 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E72FC 800ECC4C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E7300 800ECC50 03E00008 */  jr    $ra
/* 0E7304 800ECC54 27BD0038 */   addiu $sp, $sp, 0x38
