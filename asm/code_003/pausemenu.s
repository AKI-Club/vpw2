# Virtual Pro-Wrestling 2 | code_003/pausemenu.s
# Pause menu routines
/*============================================================================*/
# Params:
# $a0 - ?
# $a1 - ?
# $a2 - ?

func3_800E7050:
/* 0E1700 800E7050 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E1704 800E7054 0000C821 */  addu  $t9, $zero, $zero
/* 0E1708 800E7058 AFB7001C */  sw    $s7, 0x1c($sp)
/* 0E170C 800E705C AFB60018 */  sw    $s6, 0x18($sp)
/* 0E1710 800E7060 AFB50014 */  sw    $s5, 0x14($sp)
/* 0E1714 800E7064 AFB40010 */  sw    $s4, 0x10($sp)
/* 0E1718 800E7068 AFB3000C */  sw    $s3, 0xc($sp)
/* 0E171C 800E706C AFB20008 */  sw    $s2, 8($sp)
/* 0E1720 800E7070 AFB10004 */  sw    $s1, 4($sp)
/* 0E1724 800E7074 AFB00000 */  sw    $s0, ($sp)

/* 0E1728 800E7078 8C860000 */  lw    $a2, ($a0)
/* 0E172C 800E707C 3C16E200 */  lui   $s6, (0xE200001C >> 16) # lui $s6, 0xe200
/* 0E1730 800E7080 36D6001C */  ori   $s6, (0xE200001C & 0xFFFF) # ori $s6, $s6, 0x1c
/* 0E1734 800E7084 3C0F0050 */  lui   $t7, (0x00504240 >> 16) # lui $t7, 0x50
/* 0E1738 800E7088 35EF4240 */  ori   $t7, (0x00504240 & 0xFFFF) # ori $t7, $t7, 0x4240
/* 0E173C 800E708C 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* 0E1740 800E7090 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0E1744 800E7094 3C0CFFFD */  lui   $t4, (0xFFFDF6FB >> 16) # lui $t4, 0xfffd
/* 0E1748 800E7098 358CF6FB */  ori   $t4, (0xFFFDF6FB & 0xFFFF) # ori $t4, $t4, 0xf6fb
/* 0E174C 800E709C 3C0BE300 */  lui   $t3, (0xE3000A01 >> 16) # lui $t3, 0xe300
/* 0E1750 800E70A0 356B0A01 */  ori   $t3, (0xE3000A01 & 0xFFFF) # ori $t3, $t3, 0xa01
/* 0E1754 800E70A4 3C0DF63C */  lui   $t5, (0xF63C01E0 >> 16) # lui $t5, 0xf63c
/* 0E1758 800E70A8 35AD01E0 */  ori   $t5, (0xF63C01E0 & 0xFFFF) # ori $t5, $t5, 0x1e0
/* 0E175C 800E70AC 3C100026 */  lui   $s0, (0x0026C000 >> 16) # lui $s0, 0x26
/* 0E1760 800E70B0 3610C000 */  ori   $s0, (0x0026C000 & 0xFFFF) # ori $s0, $s0, 0xc000
/* 0E1764 800E70B4 3C11F651 */  lui   $s1, (0xF65141E0 >> 16) # lui $s1, 0xf651
/* 0E1768 800E70B8 363141E0 */  ori   $s1, (0xF65141E0 & 0xFFFF) # ori $s1, $s1, 0x41e0
/* 0E176C 800E70BC 3C120026 */  lui   $s2, (0x0026C1E0 >> 16) # lui $s2, 0x26
/* 0E1770 800E70C0 3652C1E0 */  ori   $s2, (0x0026C1E0 & 0xFFFF) # ori $s2, $s2, 0xc1e0
/* 0E1774 800E70C4 3C14F651 */  lui   $s4, (0xF6514000 >> 16) # lui $s4, 0xf651
/* 0E1778 800E70C8 36944000 */  ori   $s4, (0xF6514000 & 0xFFFF) # ori $s4, $s4, 0x4000
/* 0E177C 800E70CC 3C13003C */  lui   $s3, (0x003C01E0 >> 16) # lui $s3, 0x3c
/* 0E1780 800E70D0 367301E0 */  ori   $s3, (0x003C01E0 & 0xFFFF) # ori $s3, $s3, 0x1e0
/* 0E1784 800E70D4 3C15F600 */  lui   $s5, (0xF6000320 >> 16) # lui $s5, 0xf600
/* 0E1788 800E70D8 36B50320 */  ori   $s5, (0xF6000320 & 0xFFFF) # ori $s5, $s5, 0x320
/* 0E178C 800E70DC 3C17F600 */  lui   $s7, (0xF60000E8 >> 16) # lui $s7, 0xf600
/* 0E1790 800E70E0 36F700E8 */  ori   $s7, (0xF60000E8 & 0xFFFF) # ori $s7, $s7, 0xe8
/* 0E1794 800E70E4 3C180F0A */  lui   $t8, (0x0F0A7008 >> 16) # lui $t8, 0xf0a

/* 0E1798 800E70E8 3C088015 */  lui   $t0, %hi(D_801516A7) # $t0, 0x8015
/* 0E179C 800E70EC 810816A7 */  lb    $t0, %lo(D_801516A7)($t0)
/* 0E17A0 800E70F0 3C02FA00 */  lui   $v0, 0xfa00
/* 0E17A4 800E70F4 37187008 */  ori   $t8, (0x0F0A7008 & 0xFFFF) # ori $t8, $t8, 0x7008
/* 0E17A8 800E70F8 00052C00 */  sll   $a1, $a1, 0x10
/* 0E17AC 800E70FC 00C01821 */  addu  $v1, $a2, $zero
/* 0E17B0 800E7100 24C60008 */  addiu $a2, $a2, 8
/* 0E17B4 800E7104 00C03821 */  addu  $a3, $a2, $zero
/* 0E17B8 800E7108 24C60008 */  addiu $a2, $a2, 8
/* 0E17BC 800E710C 00C04821 */  addu  $t1, $a2, $zero
/* 0E17C0 800E7110 24C60008 */  addiu $a2, $a2, 8
/* 0E17C4 800E7114 00C05021 */  addu  $t2, $a2, $zero
/* 0E17C8 800E7118 24C60008 */  addiu $a2, $a2, 8
/* 0E17CC 800E711C AC620000 */  sw    $v0, ($v1)

/* 0E17D0 800E7120 24020080 */  li    $v0, 128
/* 0E17D4 800E7124 AC620004 */  sw    $v0, 4($v1)
/* 0E17D8 800E7128 ACF60000 */  sw    $s6, ($a3)
/* 0E17DC 800E712C ACEF0004 */  sw    $t7, 4($a3)
/* 0E17E0 800E7130 00C03821 */  addu  $a3, $a2, $zero
/* 0E17E4 800E7134 AD2E0000 */  sw    $t6, ($t1)
/* 0E17E8 800E7138 AD2C0004 */  sw    $t4, 4($t1)
/* 0E17EC 800E713C AD4B0000 */  sw    $t3, ($t2)
/* 0E17F0 800E7140 AD400004 */  sw    $zero, 4($t2)
/* 0E17F4 800E7144 ACED0000 */  sw    $t5, ($a3)

/* 0E17F8 800E7148 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E17FC 800E714C 00481021 */  addu  $v0, $v0, $t0
/* 0E1800 800E7150 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E1804 800E7154 24C60008 */  addiu $a2, $a2, 8
/* 0E1808 800E7158 24030073 */  li    $v1, 115
/* 0E180C 800E715C 00621023 */  subu  $v0, $v1, $v0
/* 0E1810 800E7160 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E1814 800E7164 00021080 */  sll   $v0, $v0, 2
/* 0E1818 800E7168 00501025 */  or    $v0, $v0, $s0
/* 0E181C 800E716C ACE20004 */  sw    $v0, 4($a3)
/* 0E1820 800E7170 00C03821 */  addu  $a3, $a2, $zero
/* 0E1824 800E7174 ACF10000 */  sw    $s1, ($a3)

/* 0E1828 800E7178 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E182C 800E717C 00481021 */  addu  $v0, $v0, $t0
/* 0E1830 800E7180 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E1834 800E7184 00052C03 */  sra   $a1, $a1, 0x10
/* 0E1838 800E7188 24C60008 */  addiu $a2, $a2, 8
/* 0E183C 800E718C 00621823 */  subu  $v1, $v1, $v0
/* 0E1840 800E7190 306303FF */  andi  $v1, $v1, 0x3ff
/* 0E1844 800E7194 00031880 */  sll   $v1, $v1, 2
/* 0E1848 800E7198 3C02003C */  lui   $v0, 0x3c
/* 0E184C 800E719C 00621825 */  or    $v1, $v1, $v0
/* 0E1850 800E71A0 ACE30004 */  sw    $v1, 4($a3)

/* 0E1854 800E71A4 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E1858 800E71A8 00481021 */  addu  $v0, $v0, $t0
/* 0E185C 800E71AC 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E1860 800E71B0 00C03821 */  addu  $a3, $a2, $zero
/* 0E1864 800E71B4 24C60008 */  addiu $a2, $a2, 8
/* 0E1868 800E71B8 3C03F63C */  lui   $v1, %hi(0xF63C0004) # $v1, 0xf63c
/* 0E186C 800E71BC ACF20004 */  sw    $s2, 4($a3)

/* 0E1870 800E71C0 2442007D */  addiu $v0, $v0, 0x7d
/* 0E1874 800E71C4 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E1878 800E71C8 00021080 */  sll   $v0, $v0, 2
/* 0E187C 800E71CC 00431025 */  or    $v0, $v0, $v1
/* 0E1880 800E71D0 ACE20000 */  sw    $v0, ($a3)

/* 0E1884 800E71D4 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E1888 800E71D8 00481021 */  addu  $v0, $v0, $t0
/* 0E188C 800E71DC 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E1890 800E71E0 00C01821 */  addu  $v1, $a2, $zero
/* 0E1894 800E71E4 24C60008 */  addiu $a2, $a2, 8
/* 0E1898 800E71E8 00C03821 */  addu  $a3, $a2, $zero
/* 0E189C 800E71EC AC730004 */  sw    $s3, %lo(0xF63C0004)($v1)

/* 0E18A0 800E71F0 2442007D */  addiu $v0, $v0, 0x7d
/* 0E18A4 800E71F4 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E18A8 800E71F8 00021080 */  sll   $v0, $v0, 2
/* 0E18AC 800E71FC 00541025 */  or    $v0, $v0, $s4
/* 0E18B0 800E7200 AC620000 */  sw    $v0, ($v1)

/* 0E18B4 800E7204 3C038015 */  lui   $v1, %hi(D_801516A0)
/* 0E18B8 800E7208 00681821 */  addu  $v1, $v1, $t0
/* 0E18BC 800E720C 806316A0 */  lb    $v1, %lo(D_801516A0)($v1)
/* 0E18C0 800E7210 24C60008 */  addiu $a2, $a2, 8
/* 0E18C4 800E7214 00C05021 */  addu  $t2, $a2, $zero
/* 0E18C8 800E7218 00031040 */  sll   $v0, $v1, 1
/* 0E18CC 800E721C 00431021 */  addu  $v0, $v0, $v1
/* 0E18D0 800E7220 244200FA */  addiu $v0, $v0, 0xfa
/* 0E18D4 800E7224 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E18D8 800E7228 00021380 */  sll   $v0, $v0, 0xe
/* 0E18DC 800E722C 00551025 */  or    $v0, $v0, $s5
/* 0E18E0 800E7230 ACE20000 */  sw    $v0, ($a3)

/* 0E18E4 800E7234 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E18E8 800E7238 00481021 */  addu  $v0, $v0, $t0
/* 0E18EC 800E723C 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E18F0 800E7240 24C60008 */  addiu $a2, $a2, 8
/* 0E18F4 800E7244 00C04821 */  addu  $t1, $a2, $zero
/* 0E18F8 800E7248 00021840 */  sll   $v1, $v0, 1
/* 0E18FC 800E724C 00621821 */  addu  $v1, $v1, $v0
/* 0E1900 800E7250 240200E6 */  li    $v0, 230
/* 0E1904 800E7254 00431023 */  subu  $v0, $v0, $v1
/* 0E1908 800E7258 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E190C 800E725C 00021380 */  sll   $v0, $v0, 0xe
/* 0E1910 800E7260 344202DC */  ori   $v0, $v0, 0x2dc
/* 0E1914 800E7264 ACE20004 */  sw    $v0, 4($a3)

/* 0E1918 800E7268 3C028015 */  lui   $v0, %hi(D_801516A0)
/* 0E191C 800E726C 00481021 */  addu  $v0, $v0, $t0
/* 0E1920 800E7270 804216A0 */  lb    $v0, %lo(D_801516A0)($v0)
/* 0E1924 800E7274 24C60008 */  addiu $a2, $a2, 8
/* 0E1928 800E7278 00C03821 */  addu  $a3, $a2, $zero
/* 0E192C 800E727C 00021040 */  sll   $v0, $v0, 1
/* 0E1930 800E7280 244200F0 */  addiu $v0, $v0, 0xf0
/* 0E1934 800E7284 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E1938 800E7288 00021380 */  sll   $v0, $v0, 0xe
/* 0E193C 800E728C 00571025 */  or    $v0, $v0, $s7
/* 0E1940 800E7290 AD420000 */  sw    $v0, ($t2)

/* 0E1944 800E7294 3C038015 */  lui   $v1, %hi(D_801516A0)
/* 0E1948 800E7298 00681821 */  addu  $v1, $v1, $t0
/* 0E194C 800E729C 806316A0 */  lb    $v1, %lo(D_801516A0)($v1)
/* 0E1950 800E72A0 24C60008 */  addiu $a2, $a2, 8
/* 0E1954 800E72A4 240200F0 */  li    $v0, 240
/* 0E1958 800E72A8 00031840 */  sll   $v1, $v1, 1
/* 0E195C 800E72AC 00431023 */  subu  $v0, $v0, $v1
/* 0E1960 800E72B0 304203FF */  andi  $v0, $v0, 0x3ff
/* 0E1964 800E72B4 00021380 */  sll   $v0, $v0, 0xe
/* 0E1968 800E72B8 344200A4 */  ori   $v0, $v0, 0xa4
/* 0E196C 800E72BC AD420004 */  sw    $v0, 4($t2)

/* 0E1970 800E72C0 3C02E700 */  lui   $v0, 0xe700
/* 0E1974 800E72C4 AD220000 */  sw    $v0, ($t1)
/* 0E1978 800E72C8 24020001 */  li    $v0, 1
/* 0E197C 800E72CC AD200004 */  sw    $zero, 4($t1)
/* 0E1980 800E72D0 ACF60000 */  sw    $s6, ($a3)
/* 0E1984 800E72D4 ACF80004 */  sw    $t8, 4($a3)

/* 0E1988 800E72D8 14A20010 */  bne   $a1, $v0, .L3_800E731C
/* 0E198C 800E72DC AC860000 */   sw    $a2, ($a0)

/* 0E1990 800E72E0 3C028015 */  lui   $v0, %hi(D_801516A7) # $v0, 0x8015
/* 0E1994 800E72E4 904216A7 */  lbu   $v0, %lo(D_801516A7)($v0)
/* 0E1998 800E72E8 24420001 */  addiu $v0, $v0, 1
/* 0E199C 800E72EC 3C018015 */  lui   $at, %hi(D_801516A7) # $at, 0x8015
/* 0E19A0 800E72F0 A02216A7 */  sb    $v0, %lo(D_801516A7)($at)

/* 0E19A4 800E72F4 00021600 */  sll   $v0, $v0, 0x18
/* 0E19A8 800E72F8 00021603 */  sra   $v0, $v0, 0x18
/* 0E19AC 800E72FC 28420007 */  slti  $v0, $v0, 7
/* 0E19B0 800E7300 14400012 */  bnez  $v0, .L3_800E734C
/* 0E19B4 800E7304 03201021 */   addu  $v0, $t9, $zero

/* 0E19B8 800E7308 24020006 */  li    $v0, 6
/* 0E19BC 800E730C 3C018015 */  lui   $at, %hi(D_801516A7) # $at, 0x8015
/* 0E19C0 800E7310 A02216A7 */  sb    $v0, %lo(D_801516A7)($at)
/* 0E19C4 800E7314 08039CD2 */  j     .L3_800E7348
/* 0E19C8 800E7318 24190001 */   li    $t9, 1

.L3_800E731C:
/* 0E19CC 800E731C 3C028015 */  lui   $v0, %hi(D_801516A7) # $v0, 0x8015
/* 0E19D0 800E7320 904216A7 */  lbu   $v0, %lo(D_801516A7)($v0)
/* 0E19D4 800E7324 2442FFFF */  addiu $v0, $v0, -1
/* 0E19D8 800E7328 3C018015 */  lui   $at, %hi(D_801516A7) # $at, 0x8015
/* 0E19DC 800E732C A02216A7 */  sb    $v0, %lo(D_801516A7)($at)
/* 0E19E0 800E7330 00021600 */  sll   $v0, $v0, 0x18
/* 0E19E4 800E7334 04410005 */  bgez  $v0, .L3_800E734C
/* 0E19E8 800E7338 03201021 */   addu  $v0, $t9, $zero

/* 0E19EC 800E733C 3C018015 */  lui   $at, %hi(D_801516A7) # $at, 0x8015
/* 0E19F0 800E7340 A02016A7 */  sb    $zero, %lo(D_801516A7)($at)
/* 0E19F4 800E7344 24190001 */  li    $t9, 1

.L3_800E7348:
/* 0E19F8 800E7348 03201021 */  addu  $v0, $t9, $zero

.L3_800E734C:
/* 0E19FC 800E734C 8FB7001C */  lw    $s7, 0x1c($sp)
/* 0E1A00 800E7350 8FB60018 */  lw    $s6, 0x18($sp)
/* 0E1A04 800E7354 8FB50014 */  lw    $s5, 0x14($sp)
/* 0E1A08 800E7358 8FB40010 */  lw    $s4, 0x10($sp)
/* 0E1A0C 800E735C 8FB3000C */  lw    $s3, 0xc($sp)
/* 0E1A10 800E7360 8FB20008 */  lw    $s2, 8($sp)
/* 0E1A14 800E7364 8FB10004 */  lw    $s1, 4($sp)
/* 0E1A18 800E7368 8FB00000 */  lw    $s0, ($sp)
/* 0E1A1C 800E736C 03E00008 */  jr    $ra
/* 0E1A20 800E7370 27BD0020 */   addiu $sp, $sp, 0x20

/*----------------------------------------------------------------------------*/
# main pause menu routine? if not, it's very highly related to it.

# Params:
# $a0 - ?
# $a1 - somehow toggles text display

func3_800E7374:
/* 0E1A24 800E7374 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0E1A28 800E7378 AFB20068 */  sw    $s2, 0x68($sp)
/* 0E1A2C 800E737C 00809021 */  addu  $s2, $a0, $zero
/* 0E1A30 800E7380 00052C00 */  sll   $a1, $a1, 0x10
/* 0E1A34 800E7384 AFB00060 */  sw    $s0, 0x60($sp)
/* 0E1A38 800E7388 00058403 */  sra   $s0, $a1, 0x10
/* 0E1A3C 800E738C 24020001 */  li    $v0, 1
/* 0E1A40 800E7390 AFBF0070 */  sw    $ra, 0x70($sp)
/* 0E1A44 800E7394 AFB3006C */  sw    $s3, 0x6c($sp)
/* 0E1A48 800E7398 1602025A */  bne   $s0, $v0, .L3_800E7D04 # exit
/* 0E1A4C 800E739C AFB10064 */   sw    $s1, 0x64($sp)

/* 0E1A50 800E73A0 8E4E0000 */  lw    $t6, ($s2)
/* 0E1A54 800E73A4 3C0DE200 */  lui   $t5, (0xE200001C >> 16) # lui $t5, 0xe200
/* 0E1A58 800E73A8 35AD001C */  ori   $t5, (0xE200001C & 0xFFFF) # ori $t5, $t5, 0x1c
/* 0E1A5C 800E73AC 3C0C0F0A */  lui   $t4, (0x0F0A7008 >> 16) # lui $t4, 0xf0a
/* 0E1A60 800E73B0 358C7008 */  ori   $t4, (0x0F0A7008 & 0xFFFF) # ori $t4, $t4, 0x7008
/* 0E1A64 800E73B4 3C0BFCFF */  lui   $t3, (0xFCFFFFFF >> 16) # lui $t3, 0xfcff
/* 0E1A68 800E73B8 356BFFFF */  ori   $t3, (0xFCFFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* 0E1A6C 800E73BC 3C0AFFFC */  lui   $t2, (0xFFFCF279 >> 16) # lui $t2, 0xfffc
/* 0E1A70 800E73C0 354AF279 */  ori   $t2, (0xFFFCF279 & 0xFFFF) # ori $t2, $t2, 0xf279
/* 0E1A74 800E73C4 3C07E300 */  lui   $a3, (0xE3000A01 >> 16) # lui $a3, 0xe300
/* 0E1A78 800E73C8 34E70A01 */  ori   $a3, (0xE3000A01 & 0xFFFF) # ori $a3, $a3, 0xa01
/* 0E1A7C 800E73CC 3C08E300 */  lui   $t0, (0xE3001201 >> 16) # lui $t0, 0xe300
/* 0E1A80 800E73D0 35081201 */  ori   $t0, (0xE3001201 & 0xFFFF) # ori $t0, $t0, 0x1201
/* 0E1A84 800E73D4 3C09E300 */  lui   $t1, (0xE3000C00 >> 16) # lui $t1, 0xe300
/* 0E1A88 800E73D8 35290C00 */  ori   $t1, (0xE3000C00 & 0xFFFF) # ori $t1, $t1, 0xc00
/* 0E1A8C 800E73DC 01C01021 */  addu  $v0, $t6, $zero
/* 0E1A90 800E73E0 25CE0008 */  addiu $t6, $t6, 8
/* 0E1A94 800E73E4 01C01821 */  addu  $v1, $t6, $zero
/* 0E1A98 800E73E8 25CE0008 */  addiu $t6, $t6, 8
/* 0E1A9C 800E73EC 01C02021 */  addu  $a0, $t6, $zero
/* 0E1AA0 800E73F0 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AA4 800E73F4 01C02821 */  addu  $a1, $t6, $zero
/* 0E1AA8 800E73F8 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AAC 800E73FC 01C03021 */  addu  $a2, $t6, $zero
/* 0E1AB0 800E7400 25CE0008 */  addiu $t6, $t6, 8
/* 0E1AB4 800E7404 AC4D0000 */  sw    $t5, ($v0)
/* 0E1AB8 800E7408 AC4C0004 */  sw    $t4, 4($v0)
/* 0E1ABC 800E740C AC6B0000 */  sw    $t3, ($v1)
/* 0E1AC0 800E7410 AC6A0004 */  sw    $t2, 4($v1)
/* 0E1AC4 800E7414 AC870000 */  sw    $a3, ($a0)
/* 0E1AC8 800E7418 AC800004 */  sw    $zero, 4($a0)
/* 0E1ACC 800E741C ACA80000 */  sw    $t0, ($a1)
/* 0E1AD0 800E7420 ACA00004 */  sw    $zero, 4($a1)
/* 0E1AD4 800E7424 ACC90000 */  sw    $t1, ($a2)
/* 0E1AD8 800E7428 ACC00004 */  sw    $zero, 4($a2)
/* 0E1ADC 800E742C AE4E0000 */  sw    $t6, ($s2)

# check for pause sub-menu (e.g. quit/rematch/skip questions)
/* 0E1AE0 800E7430 3C028016 */  lui   $v0, %hi(bss3_80158838) # $v0, 0x8016
/* 0E1AE4 800E7434 84428838 */  lh    $v0, %lo(bss3_80158838)($v0)
/* 0E1AE8 800E7438 14400116 */  bnez  $v0, .L3_800E7894 # branch to pause sub-menu handling
/* 0E1AEC 800E743C 02402021 */   addu  $a0, $s2, $zero

#-------------------------#
# main pause menu handling
/* 0E1AF0 800E7440 3C058016 */  lui   $a1, %hi(bss3_80158878) # $a1, 0x8016
/* 0E1AF4 800E7444 8CA58878 */  lw    $a1, %lo(bss3_80158878)($a1)
/* 0E1AF8 800E7448 3C028015 */  lui   $v0, %hi(D_80151608) # $v0, 0x8015
/* 0E1AFC 800E744C 94421608 */  lhu   $v0, %lo(D_80151608)($v0)
/* 0E1B00 800E7450 3C038015 */  lui   $v1, %hi(D_80151654) # $v1, 0x8015
/* 0E1B04 800E7454 94631654 */  lhu   $v1, %lo(D_80151654)($v1)
/* 0E1B08 800E7458 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1B0C 800E745C 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)

/* 0E1B10 800E7460 44821000 */  mtc1  $v0, $f2
/* 0E1B14 800E7464 00000000 */  nop   
/* 0E1B18 800E7468 468010A0 */  cvt.s.w $f2, $f2
/* 0E1B1C 800E746C 44071000 */  mfc1  $a3, $f2
/* 0E1B20 800E7470 44830000 */  mtc1  $v1, $f0
/* 0E1B24 800E7474 00000000 */  nop   
/* 0E1B28 800E7478 46800020 */  cvt.s.w $f0, $f0
/* 0E1B2C 800E747C 0C03A151 */  jal   func3_800E8544
/* 0E1B30 800E7480 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E1B34 800E7484 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1B38 800E7488 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1B3C 800E748C 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E1B40 800E7490 1040000C */  beqz  $v0, .L3_800E74C4
/* 0E1B44 800E7494 24100514 */   li    $s0, 0x514 # file ID: [pause menu] white text palette

# show "skip" as second option
/* 0E1B48 800E7498 0C04A198 */  jal   func3_80128660
/* 0E1B4C 800E749C 24110522 */   li    $s1, 0x522 # file ID: [pause menu] skip

/* 0E1B50 800E74A0 304200FF */  andi  $v0, $v0, 0xff
/* 0E1B54 800E74A4 10400003 */  beqz  $v0, .L3_800E74B4 # skip grayed out part
/* 0E1B58 800E74A8 00000000 */   nop   

/* 0E1B5C 800E74AC 08039D32 */  j     .L3_800E74C8
/* 0E1B60 800E74B0 24100515 */   li    $s0, 0x515 # file ID: [pause menu] gray text palette

.L3_800E74B4:
/* 0E1B64 800E74B4 3C018016 */  lui   $at, %hi(bss3_8015883D) # $at, 0x8016
/* 0E1B68 800E74B8 A020883D */  sb    $zero, %lo(bss3_8015883D)($at)
/* 0E1B6C 800E74BC 08039D33 */  j     .L3_800E74CC
/* 0E1B70 800E74C0 02201821 */   addu  $v1, $s1, $zero

# show "rematch" instead
.L3_800E74C4:
/* 0E1B74 800E74C4 24110523 */  li    $s1, 0x523 # file ID: [pause menu] rematch

.L3_800E74C8:
/* 0E1B78 800E74C8 02201821 */  addu  $v1, $s1, $zero

.L3_800E74CC:
/* 0E1B7C 800E74CC 00031040 */  sll   $v0, $v1, 1
/* 0E1B80 800E74D0 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1B84 800E74D4 00822021 */  addu  $a0, $a0, $v0
/* 0E1B88 800E74D8 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1B8C 800E74DC 3C078015 */  lui   $a3, %hi(D3_80150BC8)
/* 0E1B90 800E74E0 00E23821 */  addu  $a3, $a3, $v0
/* 0E1B94 800E74E4 94E70BC8 */  lhu   $a3, %lo(D3_80150BC8)($a3)
/* 0E1B98 800E74E8 3C138015 */  lui   $s3, %hi(ptrTbl_801573F8) # $s3, 0x8015
/* 0E1B9C 800E74EC 267373F8 */  addiu $s3, %lo(ptrTbl_801573F8) # addiu $s3, $s3, 0x73f8
/* 0E1BA0 800E74F0 00031880 */  sll   $v1, $v1, 2
/* 0E1BA4 800E74F4 00731821 */  addu  $v1, $v1, $s3
/* 0E1BA8 800E74F8 00101080 */  sll   $v0, $s0, 2
/* 0E1BAC 800E74FC 00531021 */  addu  $v0, $v0, $s3
/* 0E1BB0 800E7500 44840000 */  mtc1  $a0, $f0
/* 0E1BB4 800E7504 00000000 */  nop   
/* 0E1BB8 800E7508 46800020 */  cvt.s.w $f0, $f0
/* 0E1BBC 800E750C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1BC0 800E7510 8C650000 */  lw    $a1, ($v1)
/* 0E1BC4 800E7514 8C460000 */  lw    $a2, ($v0)
/* 0E1BC8 800E7518 44871000 */  mtc1  $a3, $f2
/* 0E1BCC 800E751C 00000000 */  nop   
/* 0E1BD0 800E7520 468010A0 */  cvt.s.w $f2, $f2
/* 0E1BD4 800E7524 44071000 */  mfc1  $a3, $f2
/* 0E1BD8 800E7528 00000000 */  nop   
/* 0E1BDC 800E752C 0C03A151 */  jal   func3_800E8544
/* 0E1BE0 800E7530 02402021 */   addu  $a0, $s2, $zero

/* 0E1BE4 800E7534 3C038015 */  lui   $v1, %hi(D_80151656) # $v1, 0x8015
/* 0E1BE8 800E7538 94631656 */  lhu   $v1, %lo(D_80151656)($v1)
/* 0E1BEC 800E753C 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1BF0 800E7540 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1BF4 800E7544 3C058016 */  lui   $a1, %hi(bss3_8015887C) # $a1, 0x8016
/* 0E1BF8 800E7548 8CA5887C */  lw    $a1, %lo(bss3_8015887C)($a1)
/* 0E1BFC 800E754C 44830000 */  mtc1  $v1, $f0
/* 0E1C00 800E7550 00000000 */  nop   
/* 0E1C04 800E7554 46800020 */  cvt.s.w $f0, $f0
/* 0E1C08 800E7558 30422000 */  andi  $v0, $v0, 0x2000
/* 0E1C0C 800E755C 0002102B */  sltu  $v0, $zero, $v0
/* 0E1C10 800E7560 00021023 */  negu  $v0, $v0
/* 0E1C14 800E7564 30420515 */  andi  $v0, $v0, 0x515 # file ID: [pause menu] gray text palette
/* 0E1C18 800E7568 34420514 */  ori   $v0, $v0, 0x514 # file ID: [pause menu] white text palette
/* 0E1C1C 800E756C 3C038015 */  lui   $v1, %hi(D_8015160A) # $v1, 0x8015
/* 0E1C20 800E7570 9463160A */  lhu   $v1, %lo(D_8015160A)($v1)
/* 0E1C24 800E7574 00021080 */  sll   $v0, $v0, 2
/* 0E1C28 800E7578 00531021 */  addu  $v0, $v0, $s3
/* 0E1C2C 800E757C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1C30 800E7580 8C460000 */  lw    $a2, ($v0)
/* 0E1C34 800E7584 44831000 */  mtc1  $v1, $f2
/* 0E1C38 800E7588 00000000 */  nop   
/* 0E1C3C 800E758C 468010A0 */  cvt.s.w $f2, $f2
/* 0E1C40 800E7590 44071000 */  mfc1  $a3, $f2
/* 0E1C44 800E7594 00000000 */  nop   
/* 0E1C48 800E7598 0C03A151 */  jal   func3_800E8544
/* 0E1C4C 800E759C 02402021 */   addu  $a0, $s2, $zero

# spirit meter display
/* 0E1C50 800E75A0 3C02800A */  lui   $v0, %hi(bssMain_800A4052) # lui $v0, 0x800a
/* 0E1C54 800E75A4 90424052 */  lbu   $v0, %lo(bssMain_800A4052)($v0)
/* 0E1C58 800E75A8 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1C5C 800E75AC 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1C60 800E75B0 2C420001 */  sltiu $v0, $v0, 1
/* 0E1C64 800E75B4 00021023 */  negu  $v0, $v0
/* 0E1C68 800E75B8 30420527 */  andi  $v0, $v0, 0x527 # file ID: [pause menu] spirit meter on
/* 0E1C6C 800E75BC 34420526 */  ori   $v0, $v0, 0x526 # file ID: [pause menu] spirit meter off
/* 0E1C70 800E75C0 00021840 */  sll   $v1, $v0, 1
/* 0E1C74 800E75C4 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1C78 800E75C8 00832021 */  addu  $a0, $a0, $v1
/* 0E1C7C 800E75CC 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1C80 800E75D0 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1C84 800E75D4 00230821 */  addu  $at, $at, $v1
/* 0E1C88 800E75D8 94230BC8 */  lhu   $v1, %lo(D3_80150BC8)($at)
/* 0E1C8C 800E75DC 00021080 */  sll   $v0, $v0, 2
/* 0E1C90 800E75E0 00531021 */  addu  $v0, $v0, $s3
/* 0E1C94 800E75E4 44840000 */  mtc1  $a0, $f0
/* 0E1C98 800E75E8 00000000 */  nop   
/* 0E1C9C 800E75EC 46800020 */  cvt.s.w $f0, $f0
/* 0E1CA0 800E75F0 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1CA4 800E75F4 8C450000 */  lw    $a1, ($v0)
/* 0E1CA8 800E75F8 44831000 */  mtc1  $v1, $f2
/* 0E1CAC 800E75FC 00000000 */  nop   
/* 0E1CB0 800E7600 468010A0 */  cvt.s.w $f2, $f2
/* 0E1CB4 800E7604 44071000 */  mfc1  $a3, $f2
/* 0E1CB8 800E7608 00000000 */  nop   
/* 0E1CBC 800E760C 0C03A151 */  jal   func3_800E8544
/* 0E1CC0 800E7610 02402021 */   addu  $a0, $s2, $zero

/* 0E1CC4 800E7614 3C020002 */  lui   $v0, (0x00020100 >> 16) # lui $v0, 2
/* 0E1CC8 800E7618 34420100 */  ori   $v0, (0x00020100 & 0xFFFF) # ori $v0, $v0, 0x100
/* 0E1CCC 800E761C 3C03800A */  lui   $v1, %hi(bssMain_800980A0) # $v1, 0x800a
/* 0E1CD0 800E7620 8C6380A0 */  lw    $v1, %lo(bssMain_800980A0)($v1)
/* 0E1CD4 800E7624 3C108015 */  lui   $s0, %hi(D3_80150BC8) # $s0, 0x8015
/* 0E1CD8 800E7628 26100BC8 */  addiu $s0, %lo(D3_80150BC8) # addiu $s0, $s0, 0xbc8
/* 0E1CDC 800E762C 3C118015 */  lui   $s1, %hi(D3_80150C14) # $s1, 0x8015
/* 0E1CE0 800E7630 26310C14 */  addiu $s1, %lo(D3_80150C14) # addiu $s1, $s1, 0xc14
/* 0E1CE4 800E7634 00621824 */  and   $v1, $v1, $v0
/* 0E1CE8 800E7638 24020100 */  li    $v0, 256
/* 0E1CEC 800E763C 5462001C */  bnel  $v1, $v0, .L3_800E76B0
/* 0E1CF0 800E7640 02402021 */   addu  $a0, $s2, $zero

# referee display
/* 0E1CF4 800E7644 3C038017 */  lui   $v1, %hi(bss3_8016C016) # lui $v1, 0x8017
/* 0E1CF8 800E7648 8463C016 */  lh    $v1, %lo(bss3_8016C016)($v1)
/* 0E1CFC 800E764C 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1D00 800E7650 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1D04 800E7654 0003182B */  sltu  $v1, $zero, $v1
/* 0E1D08 800E7658 00031823 */  negu  $v1, $v1
/* 0E1D0C 800E765C 30630525 */  andi  $v1, $v1, 0x525 # file ID: [pause menu] referee on
/* 0E1D10 800E7660 34630524 */  ori   $v1, $v1, 0x524 # file ID: [pause menu] referee off
/* 0E1D14 800E7664 00031040 */  sll   $v0, $v1, 1
/* 0E1D18 800E7668 00502021 */  addu  $a0, $v0, $s0
/* 0E1D1C 800E766C 00511021 */  addu  $v0, $v0, $s1
/* 0E1D20 800E7670 94420000 */  lhu   $v0, ($v0)
/* 0E1D24 800E7674 94870000 */  lhu   $a3, ($a0)
/* 0E1D28 800E7678 00031880 */  sll   $v1, $v1, 2
/* 0E1D2C 800E767C 00731821 */  addu  $v1, $v1, $s3
/* 0E1D30 800E7680 44820000 */  mtc1  $v0, $f0
/* 0E1D34 800E7684 00000000 */  nop   
/* 0E1D38 800E7688 46800020 */  cvt.s.w $f0, $f0
/* 0E1D3C 800E768C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1D40 800E7690 8C650000 */  lw    $a1, ($v1)
/* 0E1D44 800E7694 44871000 */  mtc1  $a3, $f2
/* 0E1D48 800E7698 00000000 */  nop   
/* 0E1D4C 800E769C 468010A0 */  cvt.s.w $f2, $f2
/* 0E1D50 800E76A0 44071000 */  mfc1  $a3, $f2
/* 0E1D54 800E76A4 00000000 */  nop   
/* 0E1D58 800E76A8 08039DBC */  j     .L3_800E76F0
/* 0E1D5C 800E76AC 02402021 */   addu  $a0, $s2, $zero

.L3_800E76B0:
/* 0E1D60 800E76B0 3C058016 */  lui   $a1, %hi(bss3_80158888) # $a1, 0x8016
/* 0E1D64 800E76B4 8CA58888 */  lw    $a1, %lo(bss3_80158888)($a1)
/* 0E1D68 800E76B8 3C028015 */  lui   $v0, %hi(D_80151610) # $v0, 0x8015
/* 0E1D6C 800E76BC 94421610 */  lhu   $v0, %lo(D_80151610)($v0)
/* 0E1D70 800E76C0 3C038015 */  lui   $v1, %hi(D_8015165C) # $v1, 0x8015
/* 0E1D74 800E76C4 9463165C */  lhu   $v1, %lo(D_8015165C)($v1)
/* 0E1D78 800E76C8 3C068016 */  lui   $a2, %hi(bss3_8015884C) # $a2, 0x8016
/* 0E1D7C 800E76CC 8CC6884C */  lw    $a2, %lo(bss3_8015884C)($a2)
/* 0E1D80 800E76D0 44821000 */  mtc1  $v0, $f2
/* 0E1D84 800E76D4 00000000 */  nop   
/* 0E1D88 800E76D8 468010A0 */  cvt.s.w $f2, $f2
/* 0E1D8C 800E76DC 44071000 */  mfc1  $a3, $f2
/* 0E1D90 800E76E0 44830000 */  mtc1  $v1, $f0
/* 0E1D94 800E76E4 00000000 */  nop   
/* 0E1D98 800E76E8 46800020 */  cvt.s.w $f0, $f0
/* 0E1D9C 800E76EC E7A00010 */  swc1  $f0, 0x10($sp)

.L3_800E76F0:
/* 0E1DA0 800E76F0 0C03A151 */  jal   func3_800E8544
/* 0E1DA4 800E76F4 00000000 */   nop   

/* 0E1DA8 800E76F8 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1DAC 800E76FC 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1DB0 800E7700 30420200 */  andi  $v0, $v0, 0x200
/* 0E1DB4 800E7704 5440001F */  bnezl $v0, .L3_800E7784
/* 0E1DB8 800E7708 02402021 */   addu  $a0, $s2, $zero

# replay option
/* 0E1DBC 800E770C 3C02800A */  lui   $v0, %hi(bssMain_800A4054) # lui $v0, 0x800a
/* 0E1DC0 800E7710 90424054 */  lbu   $v0, %lo(bssMain_800A4054)($v0)
/* 0E1DC4 800E7714 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1DC8 800E7718 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1DCC 800E771C 2C420001 */  sltiu $v0, $v0, 1
/* 0E1DD0 800E7720 00021023 */  negu  $v0, $v0
/* 0E1DD4 800E7724 30420529 */  andi  $v0, $v0, 0x529 # file ID: [pause menu] replay on
/* 0E1DD8 800E7728 34420528 */  ori   $v0, $v0, 0x528 # file ID: [pause menu] replay off
/* 0E1DDC 800E772C 00021840 */  sll   $v1, $v0, 1
/* 0E1DE0 800E7730 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1DE4 800E7734 00832021 */  addu  $a0, $a0, $v1
/* 0E1DE8 800E7738 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1DEC 800E773C 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1DF0 800E7740 00230821 */  addu  $at, $at, $v1
/* 0E1DF4 800E7744 94230BC8 */  lhu   $v1, %lo(D3_80150BC8)($at)
/* 0E1DF8 800E7748 00021080 */  sll   $v0, $v0, 2
/* 0E1DFC 800E774C 44840000 */  mtc1  $a0, $f0
/* 0E1E00 800E7750 00000000 */  nop   
/* 0E1E04 800E7754 46800020 */  cvt.s.w $f0, $f0
/* 0E1E08 800E7758 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1E0C 800E775C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E1E10 800E7760 00A22821 */  addu  $a1, $a1, $v0
/* 0E1E14 800E7764 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E1E18 800E7768 44831000 */  mtc1  $v1, $f2
/* 0E1E1C 800E776C 00000000 */  nop   
/* 0E1E20 800E7770 468010A0 */  cvt.s.w $f2, $f2
/* 0E1E24 800E7774 44071000 */  mfc1  $a3, $f2
/* 0E1E28 800E7778 00000000 */  nop   
/* 0E1E2C 800E777C 08039DF1 */  j     .L3_800E77C4
/* 0E1E30 800E7780 02402021 */   addu  $a0, $s2, $zero

.L3_800E7784:
/* 0E1E34 800E7784 3C058016 */  lui   $a1, %hi(bss3_80158898) # $a1, 0x8016
/* 0E1E38 800E7788 8CA58898 */  lw    $a1, %lo(bss3_80158898)($a1)
/* 0E1E3C 800E778C 3C028015 */  lui   $v0, %hi(D_80151618) # $v0, 0x8015
/* 0E1E40 800E7790 94421618 */  lhu   $v0, %lo(D_80151618)($v0)
/* 0E1E44 800E7794 3C038015 */  lui   $v1, %hi(D_80151664) # $v1, 0x8015
/* 0E1E48 800E7798 94631664 */  lhu   $v1, %lo(D_80151664)($v1)
/* 0E1E4C 800E779C 3C068016 */  lui   $a2, %hi(bss3_8015884C) # $a2, 0x8016
/* 0E1E50 800E77A0 8CC6884C */  lw    $a2, %lo(bss3_8015884C)($a2)
/* 0E1E54 800E77A4 44821000 */  mtc1  $v0, $f2
/* 0E1E58 800E77A8 00000000 */  nop   
/* 0E1E5C 800E77AC 468010A0 */  cvt.s.w $f2, $f2
/* 0E1E60 800E77B0 44071000 */  mfc1  $a3, $f2
/* 0E1E64 800E77B4 44830000 */  mtc1  $v1, $f0
/* 0E1E68 800E77B8 00000000 */  nop   
/* 0E1E6C 800E77BC 46800020 */  cvt.s.w $f0, $f0
/* 0E1E70 800E77C0 E7A00010 */  swc1  $f0, 0x10($sp)

.L3_800E77C4:
/* 0E1E74 800E77C4 0C03A151 */  jal   func3_800E8544
/* 0E1E78 800E77C8 00000000 */   nop   

/* 0E1E7C 800E77CC 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1E80 800E77D0 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1E84 800E77D4 00021040 */  sll   $v0, $v0, 1
/* 0E1E88 800E77D8 3C038015 */  lui   $v1, %hi(D_80151688)
/* 0E1E8C 800E77DC 00621821 */  addu  $v1, $v1, $v0
/* 0E1E90 800E77E0 84631688 */  lh    $v1, %lo(D_80151688)($v1)
/* 0E1E94 800E77E4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1E98 800E77E8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1E9C 800E77EC 00031040 */  sll   $v0, $v1, 1
/* 0E1EA0 800E77F0 3C048015 */  lui   $a0, %hi(D3_80150C14)
/* 0E1EA4 800E77F4 00822021 */  addu  $a0, $a0, $v0
/* 0E1EA8 800E77F8 94840C14 */  lhu   $a0, %lo(D3_80150C14)($a0)
/* 0E1EAC 800E77FC 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E1EB0 800E7800 00220821 */  addu  $at, $at, $v0
/* 0E1EB4 800E7804 94220BC8 */  lhu   $v0, %lo(D3_80150BC8)($at)
/* 0E1EB8 800E7808 00031880 */  sll   $v1, $v1, 2
/* 0E1EBC 800E780C 44840000 */  mtc1  $a0, $f0
/* 0E1EC0 800E7810 00000000 */  nop   
/* 0E1EC4 800E7814 46800020 */  cvt.s.w $f0, $f0
/* 0E1EC8 800E7818 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E1ECC 800E781C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E1ED0 800E7820 00A32821 */  addu  $a1, $a1, $v1
/* 0E1ED4 800E7824 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E1ED8 800E7828 44821000 */  mtc1  $v0, $f2
/* 0E1EDC 800E782C 00000000 */  nop   
/* 0E1EE0 800E7830 468010A0 */  cvt.s.w $f2, $f2
/* 0E1EE4 800E7834 44071000 */  mfc1  $a3, $f2
/* 0E1EE8 800E7838 00000000 */  nop   
/* 0E1EEC 800E783C 0C03A151 */  jal   func3_800E8544
/* 0E1EF0 800E7840 02402021 */   addu  $a0, $s2, $zero

/* 0E1EF4 800E7844 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1EF8 800E7848 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1EFC 800E784C 00021040 */  sll   $v0, $v0, 1
/* 0E1F00 800E7850 3C038015 */  lui   $v1, %hi(D_80151694)
/* 0E1F04 800E7854 00621821 */  addu  $v1, $v1, $v0
/* 0E1F08 800E7858 84631694 */  lh    $v1, %lo(D_80151694)($v1)
/* 0E1F0C 800E785C 02402021 */  addu  $a0, $s2, $zero
/* 0E1F10 800E7860 3C058016 */  lui   $a1, %hi(bss3_80158874) # $a1, 0x8016
/* 0E1F14 800E7864 8CA58874 */  lw    $a1, %lo(bss3_80158874)($a1)
/* 0E1F18 800E7868 00031840 */  sll   $v1, $v1, 1
/* 0E1F1C 800E786C 3C028015 */  lui   $v0, %hi(D3_80150BC8)
/* 0E1F20 800E7870 00431021 */  addu  $v0, $v0, $v1
/* 0E1F24 800E7874 94420BC8 */  lhu   $v0, %lo(D3_80150BC8)($v0)
/* 0E1F28 800E7878 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1F2C 800E787C 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1F30 800E7880 3C018015 */  lui   $at, %hi(D3_80150C14)
/* 0E1F34 800E7884 00230821 */  addu  $at, $at, $v1
/* 0E1F38 800E7888 94230C14 */  lhu   $v1, %lo(D3_80150C14)($at)
/* 0E1F3C 800E788C 08039E93 */  j     .L3_800E7A4C
/* 0E1F40 800E7890 2442FFF0 */   addiu $v0, $v0, -0x10

#-------------------------#
# pause sub-menu handling
.L3_800E7894:
/* 0E1F44 800E7894 3C058016 */  lui   $a1, %hi(bss3_801588BC) # $a1, 0x8016
/* 0E1F48 800E7898 8CA588BC */  lw    $a1, %lo(bss3_801588BC)($a1)
/* 0E1F4C 800E789C 3C028015 */  lui   $v0, %hi(D_8015162A) # $v0, 0x8015
/* 0E1F50 800E78A0 9442162A */  lhu   $v0, %lo(D_8015162A)($v0)
/* 0E1F54 800E78A4 3C038015 */  lui   $v1, %hi(D_80151676) # $v1, 0x8015
/* 0E1F58 800E78A8 94631676 */  lhu   $v1, %lo(D_80151676)($v1)
/* 0E1F5C 800E78AC 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1F60 800E78B0 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1F64 800E78B4 44821000 */  mtc1  $v0, $f2
/* 0E1F68 800E78B8 00000000 */  nop   
/* 0E1F6C 800E78BC 468010A0 */  cvt.s.w $f2, $f2
/* 0E1F70 800E78C0 44071000 */  mfc1  $a3, $f2
/* 0E1F74 800E78C4 44830000 */  mtc1  $v1, $f0
/* 0E1F78 800E78C8 00000000 */  nop   
/* 0E1F7C 800E78CC 46800020 */  cvt.s.w $f0, $f0
/* 0E1F80 800E78D0 0C03A151 */  jal   func3_800E8544
/* 0E1F84 800E78D4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E1F88 800E78D8 02402021 */  addu  $a0, $s2, $zero
/* 0E1F8C 800E78DC 3C058016 */  lui   $a1, %hi(bss3_801588C0) # $a1, 0x8016
/* 0E1F90 800E78E0 8CA588C0 */  lw    $a1, %lo(bss3_801588C0)($a1)
/* 0E1F94 800E78E4 3C028015 */  lui   $v0, %hi(D_8015162C) # $v0, 0x8015
/* 0E1F98 800E78E8 9442162C */  lhu   $v0, %lo(D_8015162C)($v0)
/* 0E1F9C 800E78EC 3C038015 */  lui   $v1, %hi(D_80151678) # $v1, 0x8015
/* 0E1FA0 800E78F0 94631678 */  lhu   $v1, %lo(D_80151678)($v1)
/* 0E1FA4 800E78F4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E1FA8 800E78F8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E1FAC 800E78FC 44821000 */  mtc1  $v0, $f2
/* 0E1FB0 800E7900 00000000 */  nop   
/* 0E1FB4 800E7904 468010A0 */  cvt.s.w $f2, $f2
/* 0E1FB8 800E7908 44071000 */  mfc1  $a3, $f2
/* 0E1FBC 800E790C 44830000 */  mtc1  $v1, $f0
/* 0E1FC0 800E7910 00000000 */  nop   
/* 0E1FC4 800E7914 46800020 */  cvt.s.w $f0, $f0
/* 0E1FC8 800E7918 0C03A151 */  jal   func3_800E8544
/* 0E1FCC 800E791C E7A00010 */   swc1  $f0, 0x10($sp)

# check option for quit match question
/* 0E1FD0 800E7920 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E1FD4 800E7924 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E1FD8 800E7928 54500008 */  bnel  $v0, $s0, .L3_800E794C
/* 0E1FDC 800E792C 24100530 */   li    $s0, 0x530 # file ID: [pause menu] quit match?

/* 0E1FE0 800E7930 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E1FE4 800E7934 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1FE8 800E7938 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E1FEC 800E793C 2C420001 */  sltiu $v0, $v0, 1
/* 0E1FF0 800E7940 00021023 */  negu  $v0, $v0
/* 0E1FF4 800E7944 3042052F */  andi  $v0, $v0, 0x52F # file ID: [pause menu] restart match?
/* 0E1FF8 800E7948 3450052E */  ori   $s0, $v0, 0x52E # file ID: [pause menu] skip match?

.L3_800E794C:
/* 0E1FFC 800E794C 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2000 800E7950 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E2004 800E7954 02001821 */  addu  $v1, $s0, $zero
/* 0E2008 800E7958 00031040 */  sll   $v0, $v1, 1
/* 0E200C 800E795C 3C058015 */  lui   $a1, %hi(D3_80150C14)
/* 0E2010 800E7960 00A22821 */  addu  $a1, $a1, $v0
/* 0E2014 800E7964 94A50C14 */  lhu   $a1, %lo(D3_80150C14)($a1)
/* 0E2018 800E7968 3C018015 */  lui   $at, %hi(D3_80150BC8)
/* 0E201C 800E796C 00220821 */  addu  $at, $at, $v0
/* 0E2020 800E7970 94220BC8 */  lhu   $v0, %lo(D3_80150BC8)($at)
/* 0E2024 800E7974 02402021 */  addu  $a0, $s2, $zero
/* 0E2028 800E7978 00031880 */  sll   $v1, $v1, 2
/* 0E202C 800E797C 44850000 */  mtc1  $a1, $f0
/* 0E2030 800E7980 00000000 */  nop   
/* 0E2034 800E7984 46800020 */  cvt.s.w $f0, $f0
/* 0E2038 800E7988 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E203C 800E798C 3C058015 */  lui   $a1, %hi(ptrTbl_801573F8)
/* 0E2040 800E7990 00A32821 */  addu  $a1, $a1, $v1
/* 0E2044 800E7994 8CA573F8 */  lw    $a1, %lo(ptrTbl_801573F8)($a1)
/* 0E2048 800E7998 44821000 */  mtc1  $v0, $f2
/* 0E204C 800E799C 00000000 */  nop   
/* 0E2050 800E79A0 468010A0 */  cvt.s.w $f2, $f2
/* 0E2054 800E79A4 44071000 */  mfc1  $a3, $f2
/* 0E2058 800E79A8 00000000 */  nop   
/* 0E205C 800E79AC 0C03A151 */  jal   func3_800E8544
/* 0E2060 800E79B0 24100532 */   li    $s0, 0x532 # file ID: [pause menu] no

/* 0E2064 800E79B4 3C118015 */  lui   $s1, %hi(D3_80150BC8) # $s1, 0x8015
/* 0E2068 800E79B8 26310BC8 */  addiu $s1, %lo(D3_80150BC8) # addiu $s1, $s1, 0xbc8
/* 0E206C 800E79BC 3C038016 */  lui   $v1, %hi(bss3_80158838) # $v1, 0x8016
/* 0E2070 800E79C0 84638838 */  lh    $v1, %lo(bss3_80158838)($v1)
/* 0E2074 800E79C4 3C138015 */  lui   $s3, %hi(D3_80150C14) # $s3, 0x8015
/* 0E2078 800E79C8 26730C14 */  addiu $s3, %lo(D3_80150C14) # addiu $s3, $s3, 0xc14
/* 0E207C 800E79CC 24020001 */  li    $v0, 1
/* 0E2080 800E79D0 50620001 */  beql  $v1, $v0, .L3_800E79D8
/* 0E2084 800E79D4 24100531 */   li    $s0, 0x531 # file ID: [pause menu] yes

.L3_800E79D8:
/* 0E2088 800E79D8 02402021 */  addu  $a0, $s2, $zero
/* 0E208C 800E79DC 3C058016 */  lui   $a1, %hi(bss3_80158874) # $a1, 0x8016
/* 0E2090 800E79E0 8CA58874 */  lw    $a1, %lo(bss3_80158874)($a1)
/* 0E2094 800E79E4 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2098 800E79E8 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E209C 800E79EC 00101040 */  sll   $v0, $s0, 1
/* 0E20A0 800E79F0 00511821 */  addu  $v1, $v0, $s1
/* 0E20A4 800E79F4 94630000 */  lhu   $v1, ($v1)
/* 0E20A8 800E79F8 00531021 */  addu  $v0, $v0, $s3
/* 0E20AC 800E79FC 94420000 */  lhu   $v0, ($v0)
/* 0E20B0 800E7A00 2463FFF0 */  addiu $v1, $v1, -0x10
/* 0E20B4 800E7A04 44831000 */  mtc1  $v1, $f2
/* 0E20B8 800E7A08 00000000 */  nop   
/* 0E20BC 800E7A0C 468010A0 */  cvt.s.w $f2, $f2
/* 0E20C0 800E7A10 44071000 */  mfc1  $a3, $f2
/* 0E20C4 800E7A14 44820000 */  mtc1  $v0, $f0
/* 0E20C8 800E7A18 00000000 */  nop   
/* 0E20CC 800E7A1C 46800020 */  cvt.s.w $f0, $f0
/* 0E20D0 800E7A20 0C03A151 */  jal   func3_800E8544
/* 0E20D4 800E7A24 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E20D8 800E7A28 02402021 */  addu  $a0, $s2, $zero
/* 0E20DC 800E7A2C 3C058016 */  lui   $a1, %hi(bss3_801588A8) # $a1, 0x8016
/* 0E20E0 800E7A30 8CA588A8 */  lw    $a1, %lo(bss3_801588A8)($a1)
/* 0E20E4 800E7A34 3C028015 */  lui   $v0, %hi(D_80151620) # $v0, 0x8015
/* 0E20E8 800E7A38 94421620 */  lhu   $v0, %lo(D_80151620)($v0)
/* 0E20EC 800E7A3C 3C038015 */  lui   $v1, %hi(D_8015166C) # $v1, 0x8015
/* 0E20F0 800E7A40 9463166C */  lhu   $v1, %lo(D_8015166C)($v1)
/* 0E20F4 800E7A44 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E20F8 800E7A48 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)

#-------------------------#
# shared ending sequence
.L3_800E7A4C:
/* 0E20FC 800E7A4C 44821000 */  mtc1  $v0, $f2
/* 0E2100 800E7A50 00000000 */  nop   
/* 0E2104 800E7A54 468010A0 */  cvt.s.w $f2, $f2
/* 0E2108 800E7A58 44071000 */  mfc1  $a3, $f2
/* 0E210C 800E7A5C 44830000 */  mtc1  $v1, $f0
/* 0E2110 800E7A60 00000000 */  nop   
/* 0E2114 800E7A64 46800020 */  cvt.s.w $f0, $f0
/* 0E2118 800E7A68 0C03A151 */  jal   func3_800E8544
/* 0E211C 800E7A6C E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2120 800E7A70 02402021 */  addu  $a0, $s2, $zero
/* 0E2124 800E7A74 3C058016 */  lui   $a1, %hi(bss3_801588D0) # $a1, 0x8016
/* 0E2128 800E7A78 8CA588D0 */  lw    $a1, %lo(bss3_801588D0)($a1)
/* 0E212C 800E7A7C 3C028015 */  lui   $v0, %hi(D_80151634) # $v0, 0x8015
/* 0E2130 800E7A80 94421634 */  lhu   $v0, %lo(D_80151634)($v0)
/* 0E2134 800E7A84 3C038015 */  lui   $v1, %hi(D_80151680) # $v1, 0x8015
/* 0E2138 800E7A88 94631680 */  lhu   $v1, %lo(D_80151680)($v1)
/* 0E213C 800E7A8C 3C068016 */  lui   $a2, %hi(bss3_801588CC) # $a2, 0x8016
/* 0E2140 800E7A90 8CC688CC */  lw    $a2, %lo(bss3_801588CC)($a2)
/* 0E2144 800E7A94 44821000 */  mtc1  $v0, $f2
/* 0E2148 800E7A98 00000000 */  nop   
/* 0E214C 800E7A9C 468010A0 */  cvt.s.w $f2, $f2
/* 0E2150 800E7AA0 44071000 */  mfc1  $a3, $f2
/* 0E2154 800E7AA4 44830000 */  mtc1  $v1, $f0
/* 0E2158 800E7AA8 00000000 */  nop   
/* 0E215C 800E7AAC 46800020 */  cvt.s.w $f0, $f0
/* 0E2160 800E7AB0 0C03A151 */  jal   func3_800E8544
/* 0E2164 800E7AB4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2168 800E7AB8 02402021 */  addu  $a0, $s2, $zero
/* 0E216C 800E7ABC 3C058016 */  lui   $a1, %hi(bss3_801588D8) # $a1, 0x8016
/* 0E2170 800E7AC0 8CA588D8 */  lw    $a1, %lo(bss3_801588D8)($a1)
/* 0E2174 800E7AC4 3C028015 */  lui   $v0, %hi(D_80151638) # $v0, 0x8015
/* 0E2178 800E7AC8 94421638 */  lhu   $v0, %lo(D_80151638)($v0)
/* 0E217C 800E7ACC 3C038015 */  lui   $v1, %hi(D_80151684) # $v1, 0x8015
/* 0E2180 800E7AD0 94631684 */  lhu   $v1, %lo(D_80151684)($v1)
/* 0E2184 800E7AD4 3C068016 */  lui   $a2, %hi(bss3_801588D4) # $a2, 0x8016
/* 0E2188 800E7AD8 8CC688D4 */  lw    $a2, %lo(bss3_801588D4)($a2)
/* 0E218C 800E7ADC 44821000 */  mtc1  $v0, $f2
/* 0E2190 800E7AE0 00000000 */  nop   
/* 0E2194 800E7AE4 468010A0 */  cvt.s.w $f2, $f2
/* 0E2198 800E7AE8 44071000 */  mfc1  $a3, $f2
/* 0E219C 800E7AEC 44830000 */  mtc1  $v1, $f0
/* 0E21A0 800E7AF0 00000000 */  nop   
/* 0E21A4 800E7AF4 46800020 */  cvt.s.w $f0, $f0
/* 0E21A8 800E7AF8 0C03A151 */  jal   func3_800E8544
/* 0E21AC 800E7AFC E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E21B0 800E7B00 02402021 */  addu  $a0, $s2, $zero
/* 0E21B4 800E7B04 3C058016 */  lui   $a1, %hi(bss3_801588C8) # $a1, 0x8016
/* 0E21B8 800E7B08 8CA588C8 */  lw    $a1, %lo(bss3_801588C8)($a1)
/* 0E21BC 800E7B0C 3C028015 */  lui   $v0, %hi(D_80151630) # $v0, 0x8015
/* 0E21C0 800E7B10 94421630 */  lhu   $v0, %lo(D_80151630)($v0)
/* 0E21C4 800E7B14 3C038015 */  lui   $v1, %hi(D_8015167C) # $v1, 0x8015
/* 0E21C8 800E7B18 9463167C */  lhu   $v1, %lo(D_8015167C)($v1)
/* 0E21CC 800E7B1C 3C068016 */  lui   $a2, %hi(bss3_801588C4) # $a2, 0x8016
/* 0E21D0 800E7B20 8CC688C4 */  lw    $a2, %lo(bss3_801588C4)($a2)
/* 0E21D4 800E7B24 44821000 */  mtc1  $v0, $f2
/* 0E21D8 800E7B28 00000000 */  nop   
/* 0E21DC 800E7B2C 468010A0 */  cvt.s.w $f2, $f2
/* 0E21E0 800E7B30 44071000 */  mfc1  $a3, $f2
/* 0E21E4 800E7B34 44830000 */  mtc1  $v1, $f0
/* 0E21E8 800E7B38 00000000 */  nop   
/* 0E21EC 800E7B3C 46800020 */  cvt.s.w $f0, $f0
/* 0E21F0 800E7B40 0C03A151 */  jal   func3_800E8544
/* 0E21F4 800E7B44 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E21F8 800E7B48 02402021 */  addu  $a0, $s2, $zero
/* 0E21FC 800E7B4C 3C058016 */  lui   $a1, %hi(bss3_801588A0) # $a1, 0x8016
/* 0E2200 800E7B50 8CA588A0 */  lw    $a1, %lo(bss3_801588A0)($a1)
/* 0E2204 800E7B54 3C028015 */  lui   $v0, %hi(D_8015161C) # $v0, 0x8015
/* 0E2208 800E7B58 9442161C */  lhu   $v0, %lo(D_8015161C)($v0)
/* 0E220C 800E7B5C 3C038015 */  lui   $v1, %hi(D_80151668) # $v1, 0x8015
/* 0E2210 800E7B60 94631668 */  lhu   $v1, %lo(D_80151668)($v1)
/* 0E2214 800E7B64 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2218 800E7B68 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E221C 800E7B6C 44821000 */  mtc1  $v0, $f2
/* 0E2220 800E7B70 00000000 */  nop   
/* 0E2224 800E7B74 468010A0 */  cvt.s.w $f2, $f2
/* 0E2228 800E7B78 44071000 */  mfc1  $a3, $f2
/* 0E222C 800E7B7C 44830000 */  mtc1  $v1, $f0
/* 0E2230 800E7B80 00000000 */  nop   
/* 0E2234 800E7B84 46800020 */  cvt.s.w $f0, $f0
/* 0E2238 800E7B88 0C03A151 */  jal   func3_800E8544
/* 0E223C 800E7B8C E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2240 800E7B90 02402021 */  addu  $a0, $s2, $zero
/* 0E2244 800E7B94 3C058016 */  lui   $a1, %hi(bss3_801588A4) # $a1, 0x8016
/* 0E2248 800E7B98 8CA588A4 */  lw    $a1, %lo(bss3_801588A4)($a1)
/* 0E224C 800E7B9C 3C028015 */  lui   $v0, %hi(D_8015161E) # $v0, 0x8015
/* 0E2250 800E7BA0 9442161E */  lhu   $v0, %lo(D_8015161E)($v0)
/* 0E2254 800E7BA4 3C038015 */  lui   $v1, %hi(D_8015166A) # $v1, 0x8015
/* 0E2258 800E7BA8 9463166A */  lhu   $v1, %lo(D_8015166A)($v1)
/* 0E225C 800E7BAC 3C068016 */  lui   $a2, %hi(bss3_80158848) # $a2, 0x8016
/* 0E2260 800E7BB0 8CC68848 */  lw    $a2, %lo(bss3_80158848)($a2)
/* 0E2264 800E7BB4 44821000 */  mtc1  $v0, $f2
/* 0E2268 800E7BB8 00000000 */  nop   
/* 0E226C 800E7BBC 468010A0 */  cvt.s.w $f2, $f2
/* 0E2270 800E7BC0 44071000 */  mfc1  $a3, $f2
/* 0E2274 800E7BC4 44830000 */  mtc1  $v1, $f0
/* 0E2278 800E7BC8 00000000 */  nop   
/* 0E227C 800E7BCC 46800020 */  cvt.s.w $f0, $f0
/* 0E2280 800E7BD0 0C03A151 */  jal   func3_800E8544
/* 0E2284 800E7BD4 E7A00010 */   swc1  $f0, 0x10($sp)

/* 0E2288 800E7BD8 3C038015 */  lui   $v1, %hi(D_80151648) # $v1, 0x8015
/* 0E228C 800E7BDC 94631648 */  lhu   $v1, %lo(D_80151648)($v1)
/* 0E2290 800E7BE0 3C028016 */  lui   $v0, %hi(bss3_80158846) # $v0, 0x8016
/* 0E2294 800E7BE4 94428846 */  lhu   $v0, %lo(bss3_80158846)($v0)
/* 0E2298 800E7BE8 3C058016 */  lui   $a1, %hi(bss3_80158860) # $a1, 0x8016
/* 0E229C 800E7BEC 8CA58860 */  lw    $a1, %lo(bss3_80158860)($a1)
/* 0E22A0 800E7BF0 44830000 */  mtc1  $v1, $f0
/* 0E22A4 800E7BF4 00000000 */  nop   
/* 0E22A8 800E7BF8 46800020 */  cvt.s.w $f0, $f0
/* 0E22AC 800E7BFC 24420516 */  addiu $v0, $v0, 0x516 # file ID: [pause menu] blue text palette
/* 0E22B0 800E7C00 3C038015 */  lui   $v1, %hi(D_801515FC) # $v1, 0x8015
/* 0E22B4 800E7C04 946315FC */  lhu   $v1, %lo(D_801515FC)($v1)
/* 0E22B8 800E7C08 00021400 */  sll   $v0, $v0, 0x10
/* 0E22BC 800E7C0C 00021383 */  sra   $v0, $v0, 0xe
/* 0E22C0 800E7C10 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E22C4 800E7C14 3C068015 */  lui   $a2, %hi(ptrTbl_801573F8)
/* 0E22C8 800E7C18 00C23021 */  addu  $a2, $a2, $v0
/* 0E22CC 800E7C1C 8CC673F8 */  lw    $a2, %lo(ptrTbl_801573F8)($a2)
/* 0E22D0 800E7C20 44831000 */  mtc1  $v1, $f2
/* 0E22D4 800E7C24 00000000 */  nop   
/* 0E22D8 800E7C28 468010A0 */  cvt.s.w $f2, $f2
/* 0E22DC 800E7C2C 44071000 */  mfc1  $a3, $f2
/* 0E22E0 800E7C30 00000000 */  nop   
/* 0E22E4 800E7C34 0C03A151 */  jal   func3_800E8544
/* 0E22E8 800E7C38 02402021 */   addu  $a0, $s2, $zero

/* 0E22EC 800E7C3C 3C038016 */  lui   $v1, %hi(bss3_80158846) # $v1, 0x8016
/* 0E22F0 800E7C40 94638846 */  lhu   $v1, %lo(bss3_80158846)($v1)
/* 0E22F4 800E7C44 2462051B */  addiu $v0, $v1, 0x51B # file ID: [pause menu] controller 1
/* 0E22F8 800E7C48 00021400 */  sll   $v0, $v0, 0x10
/* 0E22FC 800E7C4C 00021403 */  sra   $v0, $v0, 0x10
/* 0E2300 800E7C50 00022040 */  sll   $a0, $v0, 1
/* 0E2304 800E7C54 3C058015 */  lui   $a1, %hi(D3_80150C14)
/* 0E2308 800E7C58 00A42821 */  addu  $a1, $a1, $a0
/* 0E230C 800E7C5C 94A50C14 */  lhu   $a1, %lo(D3_80150C14)($a1)
/* 0E2310 800E7C60 3C078015 */  lui   $a3, %hi(D3_80150BC8)
/* 0E2314 800E7C64 00E43821 */  addu  $a3, $a3, $a0
/* 0E2318 800E7C68 94E70BC8 */  lhu   $a3, %lo(D3_80150BC8)($a3)
/* 0E231C 800E7C6C 3C048015 */  lui   $a0, %hi(ptrTbl_801573F8) # $a0, 0x8015
/* 0E2320 800E7C70 248473F8 */  addiu $a0, %lo(ptrTbl_801573F8) # addiu $a0, $a0, 0x73f8
/* 0E2324 800E7C74 00021080 */  sll   $v0, $v0, 2
/* 0E2328 800E7C78 00441021 */  addu  $v0, $v0, $a0
/* 0E232C 800E7C7C 24630516 */  addiu $v1, $v1, 0x516 # file ID: [pause menu] blue text palette
/* 0E2330 800E7C80 00031C00 */  sll   $v1, $v1, 0x10
/* 0E2334 800E7C84 00031B83 */  sra   $v1, $v1, 0xe
/* 0E2338 800E7C88 00641821 */  addu  $v1, $v1, $a0
/* 0E233C 800E7C8C 44850000 */  mtc1  $a1, $f0
/* 0E2340 800E7C90 00000000 */  nop   
/* 0E2344 800E7C94 46800020 */  cvt.s.w $f0, $f0
/* 0E2348 800E7C98 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0E234C 800E7C9C 8C450000 */  lw    $a1, ($v0)
/* 0E2350 800E7CA0 8C660000 */  lw    $a2, ($v1)
/* 0E2354 800E7CA4 44871000 */  mtc1  $a3, $f2
/* 0E2358 800E7CA8 00000000 */  nop   
/* 0E235C 800E7CAC 468010A0 */  cvt.s.w $f2, $f2
/* 0E2360 800E7CB0 44071000 */  mfc1  $a3, $f2
/* 0E2364 800E7CB4 00000000 */  nop   
/* 0E2368 800E7CB8 0C03A151 */  jal   func3_800E8544
/* 0E236C 800E7CBC 02402021 */   addu  $a0, $s2, $zero

/* 0E2370 800E7CC0 8E4E0000 */  lw    $t6, ($s2)
/* 0E2374 800E7CC4 3C02E300 */  lui   $v0, (0xE3000C00 >> 16) # lui $v0, 0xe300
/* 0E2378 800E7CC8 34420C00 */  ori   $v0, (0xE3000C00 & 0xFFFF) # ori $v0, $v0, 0xc00
/* 0E237C 800E7CCC 3C05E300 */  lui   $a1, (0xE3001201 >> 16) # lui $a1, 0xe300
/* 0E2380 800E7CD0 34A51201 */  ori   $a1, (0xE3001201 & 0xFFFF) # ori $a1, $a1, 0x1201
/* 0E2384 800E7CD4 01C01821 */  addu  $v1, $t6, $zero
/* 0E2388 800E7CD8 25CE0008 */  addiu $t6, $t6, 8
/* 0E238C 800E7CDC 01C02021 */  addu  $a0, $t6, $zero
/* 0E2390 800E7CE0 25CE0008 */  addiu $t6, $t6, 8
/* 0E2394 800E7CE4 AC620000 */  sw    $v0, ($v1)
/* 0E2398 800E7CE8 3C020008 */  lui   $v0, 8
/* 0E239C 800E7CEC AC620004 */  sw    $v0, 4($v1)
/* 0E23A0 800E7CF0 24022000 */  li    $v0, 8192
/* 0E23A4 800E7CF4 AC850000 */  sw    $a1, ($a0)
/* 0E23A8 800E7CF8 AC820004 */  sw    $v0, 4($a0)
/* 0E23AC 800E7CFC AE4E0000 */  sw    $t6, ($s2)
/* 0E23B0 800E7D00 24020001 */  li    $v0, 1

.L3_800E7D04:
/* 0E23B4 800E7D04 8FBF0070 */  lw    $ra, 0x70($sp)
/* 0E23B8 800E7D08 8FB3006C */  lw    $s3, 0x6c($sp)
/* 0E23BC 800E7D0C 8FB20068 */  lw    $s2, 0x68($sp)
/* 0E23C0 800E7D10 8FB10064 */  lw    $s1, 0x64($sp)
/* 0E23C4 800E7D14 8FB00060 */  lw    $s0, 0x60($sp)
/* 0E23C8 800E7D18 03E00008 */  jr    $ra
/* 0E23CC 800E7D1C 27BD0078 */   addiu $sp, $sp, 0x78

/*----------------------------------------------------------------------------*/
# related to pause menu

func3_800E7D20:
/* 0E23D0 800E7D20 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 0E23D4 800E7D24 AFB100D4 */  sw    $s1, 0xd4($sp)
/* 0E23D8 800E7D28 3C118016 */  lui   $s1, %hi(bss3_80158750) # $s1, 0x8016
/* 0E23DC 800E7D2C 26318750 */  addiu $s1, %lo(bss3_80158750) # addiu $s1, $s1, -0x78b0
/* 0E23E0 800E7D30 F7B400E0 */  sdc1  $f20, 0xe0($sp)
/* 0E23E4 800E7D34 4480A000 */  mtc1  $zero, $f20
/* 0E23E8 800E7D38 02202021 */  addu  $a0, $s1, $zero
/* 0E23EC 800E7D3C 4406A000 */  mfc1  $a2, $f20
/* 0E23F0 800E7D40 4407A000 */  mfc1  $a3, $f20
/* 0E23F4 800E7D44 24050005 */  li    $a1, 5
/* 0E23F8 800E7D48 AFBF00DC */  sw    $ra, 0xdc($sp)
/* 0E23FC 800E7D4C AFB200D8 */  sw    $s2, 0xd8($sp)
/* 0E2400 800E7D50 AFB000D0 */  sw    $s0, 0xd0($sp)
/* 0E2404 800E7D54 F7B800F0 */  sdc1  $f24, 0xf0($sp)
/* 0E2408 800E7D58 F7B600E8 */  sdc1  $f22, 0xe8($sp)
/* 0E240C 800E7D5C 0C000600 */  jal   func_80001800
/* 0E2410 800E7D60 E7B40010 */   swc1  $f20, 0x10($sp)

/* 0E2414 800E7D64 02202021 */  addu  $a0, $s1, $zero
/* 0E2418 800E7D68 0C000635 */  jal   func_800018D4
/* 0E241C 800E7D6C 00002821 */   addu  $a1, $zero, $zero

/* 0E2420 800E7D70 0C00061B */  jal   func_8000186C
/* 0E2424 800E7D74 02202021 */   addu  $a0, $s1, $zero

/* 0E2428 800E7D78 3C0643F0 */  lui   $a2, 0x43f0
/* 0E242C 800E7D7C 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E2430 800E7D80 4481B000 */  mtc1  $at, $f22
/* 0E2434 800E7D84 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E2438 800E7D88 4481C000 */  mtc1  $at, $f24
/* 0E243C 800E7D8C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E2440 800E7D90 44810000 */  mtc1  $at, $f0
/* 0E2444 800E7D94 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E2448 800E7D98 44811000 */  mtc1  $at, $f2
/* 0E244C 800E7D9C 27B20038 */  addiu $s2, $sp, 0x38
/* 0E2450 800E7DA0 4405A000 */  mfc1  $a1, $f20
/* 0E2454 800E7DA4 4407A000 */  mfc1  $a3, $f20
/* 0E2458 800E7DA8 02402021 */  addu  $a0, $s2, $zero
/* 0E245C 800E7DAC E7B60010 */  swc1  $f22, 0x10($sp)
/* 0E2460 800E7DB0 E7B80014 */  swc1  $f24, 0x14($sp)
/* 0E2464 800E7DB4 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E2468 800E7DB8 0C00C5A4 */  jal   guOrthoF
/* 0E246C 800E7DBC E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E2470 800E7DC0 27B00078 */  addiu $s0, $sp, 0x78
/* 0E2474 800E7DC4 4405A000 */  mfc1  $a1, $f20
/* 0E2478 800E7DC8 4406B000 */  mfc1  $a2, $f22
/* 0E247C 800E7DCC 4407C000 */  mfc1  $a3, $f24
/* 0E2480 800E7DD0 02002021 */  addu  $a0, $s0, $zero
/* 0E2484 800E7DD4 AFA50010 */  sw    $a1, 0x10($sp)
/* 0E2488 800E7DD8 AFA60014 */  sw    $a2, 0x14($sp)
/* 0E248C 800E7DDC AFA50018 */  sw    $a1, 0x18($sp)
/* 0E2490 800E7DE0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0E2494 800E7DE4 AFA70020 */  sw    $a3, 0x20($sp)
/* 0E2498 800E7DE8 0C00C3E0 */  jal   guLookAtF
/* 0E249C 800E7DEC AFA50024 */   sw    $a1, 0x24($sp)

/* 0E24A0 800E7DF0 02002021 */  addu  $a0, $s0, $zero
/* 0E24A4 800E7DF4 02402821 */  addu  $a1, $s2, $zero
/* 0E24A8 800E7DF8 0C000842 */  jal   func_80002108
/* 0E24AC 800E7DFC 2626009C */   addiu $a2, $s1, 0x9c

/* 0E24B0 800E7E00 3C038016 */  lui   $v1, %hi(bss3_80158764) # $v1, 0x8016
/* 0E24B4 800E7E04 8C638764 */  lw    $v1, %lo(bss3_80158764)($v1)
/* 0E24B8 800E7E08 24020001 */  li    $v0, 1
/* 0E24BC 800E7E0C 3C018016 */  lui   $at, %hi(bss3_80158769) # $at, 0x8016
/* 0E24C0 800E7E10 A0228769 */  sb    $v0, %lo(bss3_80158769)($at)
/* 0E24C4 800E7E14 8C620000 */  lw    $v0, ($v1)
/* 0E24C8 800E7E18 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E24CC 800E7E1C 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E24D0 800E7E20 44810000 */  mtc1  $at, $f0
/* 0E24D4 800E7E24 34420080 */  ori   $v0, $v0, 0x80
/* 0E24D8 800E7E28 AC620000 */  sw    $v0, ($v1)

/* 0E24DC 800E7E2C 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E24E0 800E7E30 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E24E4 800E7E34 00008821 */  addu  $s1, $zero, $zero
/* 0E24E8 800E7E38 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E24EC 800E7E3C 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E24F0 800E7E40 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E24F4 800E7E44 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E24F8 800E7E48 44810000 */  mtc1  $at, $f0
/* 0E24FC 800E7E4C 3C12DF00 */  lui   $s2, 0xdf00
/* 0E2500 800E7E50 3C108016 */  lui   $s0, %hi(bss3_8015882C) # $s0, 0x8016
/* 0E2504 800E7E54 2610882C */  addiu $s0, %lo(bss3_8015882C) # addiu $s0, $s0, -0x77d4
/* 0E2508 800E7E58 E4400020 */  swc1  $f0, 0x20($v0)

.L3_800E7E5C:
/* 0E250C 800E7E5C 0C000226 */  jal   aki_malloc
/* 0E2510 800E7E60 24041000 */   li    $a0, 4096

/* 0E2514 800E7E64 AE020000 */  sw    $v0, ($s0) # store malloc result
/* 0E2518 800E7E68 26310001 */  addiu $s1, $s1, 1
/* 0E251C 800E7E6C AC520000 */  sw    $s2, ($v0)
/* 0E2520 800E7E70 AC400004 */  sw    $zero, 4($v0)
/* 0E2524 800E7E74 2E220003 */  sltiu $v0, $s1, 3
/* 0E2528 800E7E78 1440FFF8 */  bnez  $v0, .L3_800E7E5C
/* 0E252C 800E7E7C 26100004 */   addiu $s0, $s0, 4

# set up start address for pause menu item textures
/* 0E2530 800E7E80 00008821 */  addu  $s1, $zero, $zero
/* 0E2534 800E7E84 3C128016 */  lui   $s2, %hi(bss3_80158848) # $s2, 0x8016
/* 0E2538 800E7E88 26528848 */  addiu $s2, %lo(bss3_80158848) # addiu $s2, $s2, -0x77b8

# load pause menu item files
.L3_800E7E8C:
/* 0E253C 800E7E8C 27A40028 */  addiu $a0, $sp, 0x28
/* 0E2540 800E7E90 26300514 */  addiu $s0, $s1, 0x514 # start of pause menu items in filetable
/* 0E2544 800E7E94 3210FFFF */  andi  $s0, $s0, 0xffff
/* 0E2548 800E7E98 0C000F71 */  jal   GetFileLoc
/* 0E254C 800E7E9C 02002821 */   addu  $a1, $s0, $zero

/* 0E2550 800E7EA0 8FA40030 */  lw    $a0, 0x30($sp)
/* 0E2554 800E7EA4 0C000226 */  jal   aki_malloc
/* 0E2558 800E7EA8 26310001 */   addiu $s1, $s1, 1 # next file ID

/* 0E255C 800E7EAC 27A400B8 */  addiu $a0, $sp, 0xb8
/* 0E2560 800E7EB0 02002821 */  addu  $a1, $s0, $zero
/* 0E2564 800E7EB4 00403021 */  addu  $a2, $v0, $zero # use malloc result
/* 0E2568 800E7EB8 0C000FA2 */  jal   LoadFile
/* 0E256C 800E7EBC AE460000 */   sw    $a2, ($s2) # store pointer

/* 0E2570 800E7EC0 2E220029 */  sltiu $v0, $s1, 41 # number of pause menu textures +1
/* 0E2574 800E7EC4 1440FFF1 */  bnez  $v0, .L3_800E7E8C
/* 0E2578 800E7EC8 26520004 */   addiu $s2, $s2, 4 # next pointer


/* 0E257C 800E7ECC 00008821 */  addu  $s1, $zero, $zero

.L3_800E7ED0:
/* 0E2580 800E7ED0 3C018016 */  lui   $at, %hi(bss3_8015883C)
/* 0E2584 800E7ED4 00310821 */  addu  $at, $at, $s1
/* 0E2588 800E7ED8 A020883C */  sb    $zero, %lo(bss3_8015883C)($at)
/* 0E258C 800E7EDC 26310001 */  addiu $s1, $s1, 1
/* 0E2590 800E7EE0 2E220006 */  sltiu $v0, $s1, 6 # number of items on pause menu
/* 0E2594 800E7EE4 1440FFFA */  bnez  $v0, .L3_800E7ED0
/* 0E2598 800E7EE8 00000000 */   nop   


/* 0E259C 800E7EEC 3C02800A */  lui   $v0, %hi(bssMain_800A3140) # $v0, 0x800a
/* 0E25A0 800E7EF0 8C423140 */  lw    $v0, %lo(bssMain_800A3140)($v0)
/* 0E25A4 800E7EF4 00021040 */  sll   $v0, $v0, 1

/* 0E25A8 800E7EF8 3C018015 */  lui   $at, %hi(D_801516A8)
/* 0E25AC 800E7EFC 00220821 */  addu  $at, $at, $v0
/* 0E25B0 800E7F00 942216A8 */  lhu   $v0, %lo(D_801516A8)($at)

/* 0E25B4 800E7F04 3C018016 */  lui   $at, %hi(bss3_80158842) # $at, 0x8016
/* 0E25B8 800E7F08 A4208842 */  sh    $zero, %lo(bss3_80158842)($at)

/* 0E25BC 800E7F0C 3C018016 */  lui   $at, %hi(bss3_80158844) # $at, 0x8016
/* 0E25C0 800E7F10 A4228844 */  sh    $v0, %lo(bss3_80158844)($at)

/* 0E25C4 800E7F14 00021400 */  sll   $v0, $v0, 0x10
/* 0E25C8 800E7F18 00021403 */  sra   $v0, $v0, 0x10
/* 0E25CC 800E7F1C 1040000F */  beqz  $v0, .L3_800E7F5C
/* 0E25D0 800E7F20 00008821 */   addu  $s1, $zero, $zero

/* 0E25D4 800E7F24 00402021 */  addu  $a0, $v0, $zero
/* 0E25D8 800E7F28 3C03800A */  lui   $v1, %hi(bssMain_800A24B0) # $v1, 0x800a
/* 0E25DC 800E7F2C 246324B0 */  addiu $v1, %lo(bssMain_800A24B0) # addiu $v1, $v1, 0x24b0

.L3_800E7F30:
/* 0E25E0 800E7F30 8C620000 */  lw    $v0, ($v1)
/* 0E25E4 800E7F34 10400006 */  beqz  $v0, .L3_800E7F50
/* 0E25E8 800E7F38 26310001 */   addiu $s1, $s1, 1

/* 0E25EC 800E7F3C 3C028016 */  lui   $v0, %hi(bss3_80158842) # $v0, 0x8016
/* 0E25F0 800E7F40 94428842 */  lhu   $v0, %lo(bss3_80158842)($v0)
/* 0E25F4 800E7F44 24420001 */  addiu $v0, $v0, 1
/* 0E25F8 800E7F48 3C018016 */  lui   $at, %hi(bss3_80158842) # $at, 0x8016
/* 0E25FC 800E7F4C A4228842 */  sh    $v0, %lo(bss3_80158842)($at)

.L3_800E7F50:
/* 0E2600 800E7F50 0224102B */  sltu  $v0, $s1, $a0
/* 0E2604 800E7F54 1440FFF6 */  bnez  $v0, .L3_800E7F30
/* 0E2608 800E7F58 24630004 */   addiu $v1, $v1, 4


.L3_800E7F5C:
/* 0E260C 800E7F5C 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2610 800E7F60 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2614 800E7F64 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E2618 800E7F68 10400003 */  beqz  $v0, .L3_800E7F78
/* 0E261C 800E7F6C 2402FFFF */   li    $v0, -1

/* 0E2620 800E7F70 3C018016 */  lui   $at, %hi(bss3_8015883D) # $at, 0x8016
/* 0E2624 800E7F74 A022883D */  sb    $v0, %lo(bss3_8015883D)($at)

.L3_800E7F78:
/* 0E2628 800E7F78 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E262C 800E7F7C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2630 800E7F80 30422000 */  andi  $v0, $v0, 0x2000
/* 0E2634 800E7F84 10400003 */  beqz  $v0, .L3_800E7F94
/* 0E2638 800E7F88 2402FFFF */   li    $v0, -1

/* 0E263C 800E7F8C 3C018016 */  lui   $at, %hi(bss3_8015883E) # $at, 0x8016
/* 0E2640 800E7F90 A022883E */  sb    $v0, %lo(bss3_8015883E)($at)

.L3_800E7F94:
/* 0E2644 800E7F94 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2648 800E7F98 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E264C 800E7F9C 3C030002 */  lui   $v1, (0x00020100 >> 16) # lui $v1, 2
/* 0E2650 800E7FA0 34630100 */  ori   $v1, (0x00020100 & 0xFFFF) # ori $v1, $v1, 0x100
/* 0E2654 800E7FA4 00431024 */  and   $v0, $v0, $v1
/* 0E2658 800E7FA8 24030100 */  li    $v1, 256
/* 0E265C 800E7FAC 10430003 */  beq   $v0, $v1, .L3_800E7FBC
/* 0E2660 800E7FB0 2402FFFF */   li    $v0, -1

/* 0E2664 800E7FB4 3C018016 */  lui   $at, %hi(bss3_80158840) # $at, 0x8016
/* 0E2668 800E7FB8 A0228840 */  sb    $v0, %lo(bss3_80158840)($at)

.L3_800E7FBC:
/* 0E266C 800E7FBC 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2670 800E7FC0 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2674 800E7FC4 30420200 */  andi  $v0, $v0, 0x200 # tag match bit
/* 0E2678 800E7FC8 10400003 */  beqz  $v0, .L3_800E7FD8
/* 0E267C 800E7FCC 2402FFFF */   li    $v0, -1

/* 0E2680 800E7FD0 3C018016 */  lui   $at, %hi(bss3_80158841) # $at, 0x8016
/* 0E2684 800E7FD4 A0228841 */  sb    $v0, %lo(bss3_80158841)($at)

.L3_800E7FD8:
/* 0E2688 800E7FD8 8FBF00DC */  lw    $ra, 0xdc($sp)
/* 0E268C 800E7FDC 8FB200D8 */  lw    $s2, 0xd8($sp)
/* 0E2690 800E7FE0 8FB100D4 */  lw    $s1, 0xd4($sp)
/* 0E2694 800E7FE4 8FB000D0 */  lw    $s0, 0xd0($sp)
/* 0E2698 800E7FE8 D7B800F0 */  ldc1  $f24, 0xf0($sp)
/* 0E269C 800E7FEC D7B600E8 */  ldc1  $f22, 0xe8($sp)
/* 0E26A0 800E7FF0 D7B400E0 */  ldc1  $f20, 0xe0($sp)
/* 0E26A4 800E7FF4 03E00008 */  jr    $ra
/* 0E26A8 800E7FF8 27BD00F8 */   addiu $sp, $sp, 0xf8

/*----------------------------------------------------------------------------*/
# free some memory malloc'd by pause menu

func3_800E7FFC:
/* 0E26AC 800E7FFC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E26B0 800E8000 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E26B4 800E8004 00008821 */  addu  $s1, $zero, $zero
/* 0E26B8 800E8008 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E26BC 800E800C 3C108016 */  lui   $s0, %hi(bss3_8015882C) # $s0, 0x8016
/* 0E26C0 800E8010 2610882C */  addiu $s0, %lo(bss3_8015882C) # addiu $s0, $s0, -0x77d4
/* 0E26C4 800E8014 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E26C8 800E8018 3C018016 */  lui   $at, %hi(bss3_80158760) # $at, 0x8016
/* 0E26CC 800E801C AC208760 */  sw    $zero, %lo(bss3_80158760)($at)

.L3_800E8020:
/* 0E26D0 800E8020 8E040000 */  lw    $a0, ($s0)
/* 0E26D4 800E8024 0C000280 */  jal   aki_free
/* 0E26D8 800E8028 26310001 */   addiu $s1, $s1, 1

/* 0E26DC 800E802C AE000000 */  sw    $zero, ($s0)
/* 0E26E0 800E8030 2E220003 */  sltiu $v0, $s1, 3
/* 0E26E4 800E8034 1440FFFA */  bnez  $v0, .L3_800E8020
/* 0E26E8 800E8038 26100004 */   addiu $s0, $s0, 4

/* 0E26EC 800E803C 00008821 */  addu  $s1, $zero, $zero
/* 0E26F0 800E8040 3C108016 */  lui   $s0, %hi(bss3_80158848) # $s0, 0x8016
/* 0E26F4 800E8044 26108848 */  addiu $s0, %lo(bss3_80158848) # addiu $s0, $s0, -0x77b8

.L3_800E8048:
/* 0E26F8 800E8048 8E040000 */  lw    $a0, ($s0)
/* 0E26FC 800E804C 0C000280 */  jal   aki_free
/* 0E2700 800E8050 26310001 */   addiu $s1, $s1, 1

/* 0E2704 800E8054 AE000000 */  sw    $zero, ($s0)
/* 0E2708 800E8058 2E220029 */  sltiu $v0, $s1, 0x29
/* 0E270C 800E805C 1440FFFA */  bnez  $v0, .L3_800E8048
/* 0E2710 800E8060 26100004 */   addiu $s0, $s0, 4

/* 0E2714 800E8064 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E2718 800E8068 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E271C 800E806C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E2720 800E8070 03E00008 */  jr    $ra
/* 0E2724 800E8074 27BD0020 */   addiu $sp, $sp, 0x20

/*----------------------------------------------------------------------------*/
# pause menu controller input routine?

# Params:
# $a0 - ?

func3_800E8078:
/* 0E2728 800E8078 3C028015 */  lui   $v0, %hi(D_801516B0) # $v0, 0x8015
/* 0E272C 800E807C 804216B0 */  lb    $v0, %lo(D_801516B0)($v0)
/* 0E2730 800E8080 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0E2734 800E8084 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0E2738 800E8088 00009821 */  addu  $s3, $zero, $zero
/* 0E273C 800E808C AFBF0030 */  sw    $ra, 0x30($sp)
/* 0E2740 800E8090 AFB20028 */  sw    $s2, 0x28($sp)
/* 0E2744 800E8094 AFB10024 */  sw    $s1, 0x24($sp)
/* 0E2748 800E8098 AFB00020 */  sw    $s0, 0x20($sp)
/* 0E274C 800E809C 00021080 */  sll   $v0, $v0, 2
/* 0E2750 800E80A0 3C018016 */  lui   $at, %hi(bss3_8015882C)
/* 0E2754 800E80A4 00220821 */  addu  $at, $at, $v0
/* 0E2758 800E80A8 8C22882C */  lw    $v0, %lo(bss3_8015882C)($at)
/* 0E275C 800E80AC 00008821 */  addu  $s1, $zero, $zero
/* 0E2760 800E80B0 AFA20010 */  sw    $v0, 0x10($sp)
/* 0E2764 800E80B4 00041400 */  sll   $v0, $a0, 0x10
/* 0E2768 800E80B8 00028403 */  sra   $s0, $v0, 0x10
/* 0E276C 800E80BC 120000C2 */  beqz  $s0, .L3_800E83C8
/* 0E2770 800E80C0 00809021 */   addu  $s2, $a0, $zero

/* 0E2774 800E80C4 2482FFFF */  addiu $v0, $a0, -1
/* 0E2778 800E80C8 3C018016 */  lui   $at, %hi(bss3_80158846) # $at, 0x8016
/* 0E277C 800E80CC A4228846 */  sh    $v0, %lo(bss3_80158846)($at)
/* 0E2780 800E80D0 27A40010 */  addiu $a0, $sp, 0x10
/* 0E2784 800E80D4 0C039C14 */  jal   func3_800E7050
/* 0E2788 800E80D8 24050001 */   li    $a1, 1

/* 0E278C 800E80DC 00021400 */  sll   $v0, $v0, 0x10
/* 0E2790 800E80E0 14400006 */  bnez  $v0, .L3_800E80FC
/* 0E2794 800E80E4 3C085555 */   lui   $t0, 0x5555

/* 0E2798 800E80E8 3C018016 */  lui   $at, %hi(bss3_80158838) # $at, 0x8016
/* 0E279C 800E80EC A4208838 */  sh    $zero, %lo(bss3_80158838)($at)

# zero out pause cursor position
/* 0E27A0 800E80F0 3C018016 */  lui   $at, %hi(bss3_8015883A) # $at, 0x8016
/* 0E27A4 800E80F4 0803A0FD */  j     .L3_800E83F4
/* 0E27A8 800E80F8 A420883A */   sh    $zero, %lo(bss3_8015883A)($at)

.L3_800E80FC:
/* 0E27AC 800E80FC 3C028016 */  lui   $v0, %hi(bss3_80158838) # $v0, 0x8016
/* 0E27B0 800E8100 84428838 */  lh    $v0, %lo(bss3_80158838)($v0)
/* 0E27B4 800E8104 14400073 */  bnez  $v0, .L3_800E82D4
/* 0E27B8 800E8108 00402021 */   addu  $a0, $v0, $zero

/* 0E27BC 800E810C 2602FFFF */  addiu $v0, $s0, -1
/* 0E27C0 800E8110 00021840 */  sll   $v1, $v0, 1
/* 0E27C4 800E8114 00621821 */  addu  $v1, $v1, $v0
/* 0E27C8 800E8118 00031880 */  sll   $v1, $v1, 2
/* 0E27CC 800E811C 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E27D0 800E8120 00431021 */  addu  $v0, $v0, $v1
/* 0E27D4 800E8124 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E27D8 800E8128 30420800 */  andi  $v0, $v0, 0x800 # d-pad up
/* 0E27DC 800E812C 10400017 */  beqz  $v0, .L3_800E818C
/* 0E27E0 800E8130 24030005 */   li    $v1, 5

.L3_800E8134:
# move pause cursor upward
/* 0E27E4 800E8134 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E27E8 800E8138 9442883A */  lhu   $v0, %lo(bss3_8015883A)($v0)
/* 0E27EC 800E813C 2442FFFF */  addiu $v0, $v0, -1
/* 0E27F0 800E8140 3C018016 */  lui   $at, %hi(bss3_8015883A) # $at, 0x8016
/* 0E27F4 800E8144 A422883A */  sh    $v0, %lo(bss3_8015883A)($at)
/* 0E27F8 800E8148 00021400 */  sll   $v0, $v0, 0x10
/* 0E27FC 800E814C 04410003 */  bgez  $v0, .L3_800E815C
/* 0E2800 800E8150 00000000 */   nop   

/* 0E2804 800E8154 3C018016 */  lui   $at, %hi(bss3_8015883A) # $at, 0x8016
/* 0E2808 800E8158 A423883A */  sh    $v1, %lo(bss3_8015883A)($at)

.L3_800E815C:
/* 0E280C 800E815C 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E2810 800E8160 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E2814 800E8164 3C018016 */  lui   $at, %hi(bss3_8015883C)
/* 0E2818 800E8168 00220821 */  addu  $at, $at, $v0
/* 0E281C 800E816C 8022883C */  lb    $v0, %lo(bss3_8015883C)($at)
/* 0E2820 800E8170 0440FFF0 */  bltz  $v0, .L3_800E8134
/* 0E2824 800E8174 00000000 */   nop   

/* 0E2828 800E8178 0C005770 */  jal   func_80015DC0
/* 0E282C 800E817C 24040409 */   li    $a0, 1033

/* 0E2830 800E8180 00402021 */  addu  $a0, $v0, $zero
/* 0E2834 800E8184 0C009060 */  jal   func_80024180
/* 0E2838 800E8188 00002821 */   addu  $a1, $zero, $zero

.L3_800E818C:
/* 0E283C 800E818C 00121400 */  sll   $v0, $s2, 0x10
/* 0E2840 800E8190 00021403 */  sra   $v0, $v0, 0x10
/* 0E2844 800E8194 2442FFFF */  addiu $v0, $v0, -1
/* 0E2848 800E8198 00021840 */  sll   $v1, $v0, 1
/* 0E284C 800E819C 00621821 */  addu  $v1, $v1, $v0
/* 0E2850 800E81A0 00031880 */  sll   $v1, $v1, 2
/* 0E2854 800E81A4 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E2858 800E81A8 00431021 */  addu  $v0, $v0, $v1
/* 0E285C 800E81AC 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E2860 800E81B0 30420400 */  andi  $v0, $v0, 0x400 # dpad down
/* 0E2864 800E81B4 1040001A */  beqz  $v0, .L3_800E8220
/* 0E2868 800E81B8 00121400 */   sll   $v0, $s2, 0x10

.L3_800E81BC:
# move pause cursor downward
/* 0E286C 800E81BC 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E2870 800E81C0 9442883A */  lhu   $v0, %lo(bss3_8015883A)($v0)
/* 0E2874 800E81C4 24420001 */  addiu $v0, $v0, 1
/* 0E2878 800E81C8 3C018016 */  lui   $at, %hi(bss3_8015883A) # $at, 0x8016
/* 0E287C 800E81CC A422883A */  sh    $v0, %lo(bss3_8015883A)($at)
/* 0E2880 800E81D0 00021400 */  sll   $v0, $v0, 0x10
/* 0E2884 800E81D4 00021403 */  sra   $v0, $v0, 0x10
/* 0E2888 800E81D8 28420006 */  slti  $v0, $v0, 6 # number of pause menu items
/* 0E288C 800E81DC 14400003 */  bnez  $v0, .L3_800E81EC
/* 0E2890 800E81E0 00000000 */   nop   

# wrap pause cursor around to top
/* 0E2894 800E81E4 3C018016 */  lui   $at, %hi(bss3_8015883A) # $at, 0x8016
/* 0E2898 800E81E8 A420883A */  sh    $zero, %lo(bss3_8015883A)($at)

.L3_800E81EC:
/* 0E289C 800E81EC 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E28A0 800E81F0 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E28A4 800E81F4 3C018016 */  lui   $at, %hi(bss3_8015883C)
/* 0E28A8 800E81F8 00220821 */  addu  $at, $at, $v0
/* 0E28AC 800E81FC 8022883C */  lb    $v0, %lo(bss3_8015883C)($at)
/* 0E28B0 800E8200 0440FFEE */  bltz  $v0, .L3_800E81BC
/* 0E28B4 800E8204 00000000 */   nop   

/* 0E28B8 800E8208 0C005770 */  jal   func_80015DC0
/* 0E28BC 800E820C 24040409 */   li    $a0, 1033

/* 0E28C0 800E8210 00402021 */  addu  $a0, $v0, $zero
/* 0E28C4 800E8214 0C009060 */  jal   func_80024180
/* 0E28C8 800E8218 00002821 */   addu  $a1, $zero, $zero

/* 0E28CC 800E821C 00121400 */  sll   $v0, $s2, 0x10

.L3_800E8220:
/* 0E28D0 800E8220 00021403 */  sra   $v0, $v0, 0x10
/* 0E28D4 800E8224 2442FFFF */  addiu $v0, $v0, -1
/* 0E28D8 800E8228 00021840 */  sll   $v1, $v0, 1
/* 0E28DC 800E822C 00621821 */  addu  $v1, $v1, $v0
/* 0E28E0 800E8230 00031880 */  sll   $v1, $v1, 2
/* 0E28E4 800E8234 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E28E8 800E8238 00431021 */  addu  $v0, $v0, $v1
/* 0E28EC 800E823C 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E28F0 800E8240 30428000 */  andi  $v0, $v0, 0x8000 # mask for A button
/* 0E28F4 800E8244 1040005B */  beqz  $v0, .L3_800E83B4 # branch if A button not pressed
/* 0E28F8 800E8248 24020003 */   li    $v0, 3 # option 3: spirit meter display

/* 0E28FC 800E824C 3C038016 */  lui   $v1, %hi(bss3_8015883A) # $v1, 0x8016
/* 0E2900 800E8250 8463883A */  lh    $v1, %lo(bss3_8015883A)($v1)
/* 0E2904 800E8254 1062000D */  beq   $v1, $v0, .L3_800E828C
/* 0E2908 800E8258 28620004 */   slti  $v0, $v1, 4

/* 0E290C 800E825C 50400005 */  beql  $v0, $zero, .L3_800E8274
/* 0E2910 800E8260 24020004 */   li    $v0, 4 # option 4: referee display

/* 0E2914 800E8264 5060004E */  beql  $v1, $zero, .L3_800E83A0
/* 0E2918 800E8268 24110002 */   li    $s1, 2

/* 0E291C 800E826C 0803A0B2 */  j     .L3_800E82C8
/* 0E2920 800E8270 24020002 */   li    $v0, 2

.L3_800E8274:
/* 0E2924 800E8274 10620008 */  beq   $v1, $v0, .L3_800E8298
/* 0E2928 800E8278 24020005 */   li    $v0, 5 # option 5: replay

/* 0E292C 800E827C 1062000C */  beq   $v1, $v0, .L3_800E82B0
/* 0E2930 800E8280 24020002 */   li    $v0, 2

/* 0E2934 800E8284 0803A0B2 */  j     .L3_800E82C8
/* 0E2938 800E8288 00000000 */   nop   

# spirit meter display
.L3_800E828C:
/* 0E293C 800E828C 3C03800A */  lui   $v1, %hi(bssMain_800A4052) # $v1, 0x800a
/* 0E2940 800E8290 0803A0AE */  j     .L3_800E82B8
/* 0E2944 800E8294 24634052 */   addiu $v1, %lo(bssMain_800A4052) # addiu $v1, $v1, 0x4052

.L3_800E8298:
# referee display
/* 0E2948 800E8298 3C028017 */  lui   $v0, %hi(bss3_8016C016) # $v0, 0x8017
/* 0E294C 800E829C 9442C016 */  lhu   $v0, %lo(bss3_8016C016)($v0)
/* 0E2950 800E82A0 38420001 */  xori  $v0, $v0, 1
/* 0E2954 800E82A4 3C018017 */  lui   $at, %hi(bss3_8016C016) # $at, 0x8017
/* 0E2958 800E82A8 0803A0E8 */  j     .L3_800E83A0
/* 0E295C 800E82AC A422C016 */   sh    $v0, %lo(bss3_8016C016)($at)

# replay option
.L3_800E82B0:
/* 0E2960 800E82B0 3C03800A */  lui   $v1, %hi(bssMain_800A4054) # $v1, 0x800a
/* 0E2964 800E82B4 24634054 */  addiu $v1, %lo(bssMain_800A4054) # addiu $v1, $v1, 0x4054

.L3_800E82B8:
/* 0E2968 800E82B8 90620000 */  lbu   $v0, ($v1)
/* 0E296C 800E82BC 38420001 */  xori  $v0, $v0, 1
/* 0E2970 800E82C0 0803A0E8 */  j     .L3_800E83A0
/* 0E2974 800E82C4 A0620000 */   sb    $v0, ($v1)

.L3_800E82C8:
/* 0E2978 800E82C8 3C018016 */  lui   $at, %hi(bss3_80158838) # $at, 0x8016
/* 0E297C 800E82CC 0803A0E8 */  j     .L3_800E83A0
/* 0E2980 800E82D0 A4228838 */   sh    $v0, %lo(bss3_80158838)($at)

.L3_800E82D4:
/* 0E2984 800E82D4 2602FFFF */  addiu $v0, $s0, -1
/* 0E2988 800E82D8 00021840 */  sll   $v1, $v0, 1
/* 0E298C 800E82DC 00621821 */  addu  $v1, $v1, $v0
/* 0E2990 800E82E0 00038080 */  sll   $s0, $v1, 2
/* 0E2994 800E82E4 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E2998 800E82E8 00501021 */  addu  $v0, $v0, $s0
/* 0E299C 800E82EC 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E29A0 800E82F0 30420C00 */  andi  $v0, $v0, 0xc00 # dpad up/down
/* 0E29A4 800E82F4 1040000A */  beqz  $v0, .L3_800E8320
/* 0E29A8 800E82F8 2482FFFF */   addiu $v0, $a0, -1

/* 0E29AC 800E82FC 38420001 */  xori  $v0, $v0, 1
/* 0E29B0 800E8300 24420001 */  addiu $v0, $v0, 1
/* 0E29B4 800E8304 3C018016 */  lui   $at, %hi(bss3_80158838) # $at, 0x8016
/* 0E29B8 800E8308 A4228838 */  sh    $v0, %lo(bss3_80158838)($at)
/* 0E29BC 800E830C 0C005770 */  jal   func_80015DC0
/* 0E29C0 800E8310 24040409 */   li    $a0, 1033

/* 0E29C4 800E8314 00402021 */  addu  $a0, $v0, $zero
/* 0E29C8 800E8318 0C009060 */  jal   func_80024180
/* 0E29CC 800E831C 00002821 */   addu  $a1, $zero, $zero

.L3_800E8320:
/* 0E29D0 800E8320 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E29D4 800E8324 00501021 */  addu  $v0, $v0, $s0
/* 0E29D8 800E8328 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E29DC 800E832C 30428000 */  andi  $v0, $v0, 0x8000 # a button
/* 0E29E0 800E8330 10400020 */  beqz  $v0, .L3_800E83B4
/* 0E29E4 800E8334 24020001 */   li    $v0, 1

/* 0E29E8 800E8338 3C038016 */  lui   $v1, %hi(bss3_80158838) # $v1, 0x8016
/* 0E29EC 800E833C 84638838 */  lh    $v1, %lo(bss3_80158838)($v1)
/* 0E29F0 800E8340 14620015 */  bne   $v1, $v0, .L3_800E8398
/* 0E29F4 800E8344 00000000 */   nop   

/* 0E29F8 800E8348 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E29FC 800E834C 8442883A */  lh    $v0, %lo(bss3_8015883A)($v0)
/* 0E2A00 800E8350 14430006 */  bne   $v0, $v1, .L3_800E836C
/* 0E2A04 800E8354 00000000 */   nop   

/* 0E2A08 800E8358 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E2A0C 800E835C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E2A10 800E8360 30421000 */  andi  $v0, $v0, 0x1000 # RRS mode bit
/* 0E2A14 800E8364 14400007 */  bnez  $v0, .L3_800E8384
/* 0E2A18 800E8368 24110005 */   li    $s1, 5

.L3_800E836C:
/* 0E2A1C 800E836C 3C028016 */  lui   $v0, %hi(bss3_8015883A) # $v0, 0x8016
/* 0E2A20 800E8370 9442883A */  lhu   $v0, %lo(bss3_8015883A)($v0)
/* 0E2A24 800E8374 0C04A1C2 */  jal   func3_80128708
/* 0E2A28 800E8378 24510002 */   addiu $s1, $v0, 2

/* 0E2A2C 800E837C 3C01800A */  lui   $at, %hi(bssMain_8009D5DC) # $at, 0x800a
/* 0E2A30 800E8380 AC20D5DC */  sw    $zero, %lo(bssMain_8009D5DC)($at)

.L3_800E8384:
/* 0E2A34 800E8384 3C048015 */  lui   $a0, %hi(D_801516B2) # $a0, 0x8015
/* 0E2A38 800E8388 0C000EF5 */  jal   func_80003BD4
/* 0E2A3C 800E838C 808416B2 */   lb    $a0, %lo(D_801516B2)($a0)

/* 0E2A40 800E8390 0803A0E8 */  j     .L3_800E83A0
/* 0E2A44 800E8394 00000000 */   nop   

.L3_800E8398:
/* 0E2A48 800E8398 3C018016 */  lui   $at, %hi(bss3_80158838) # $at, 0x8016
/* 0E2A4C 800E839C A4208838 */  sh    $zero, %lo(bss3_80158838)($at)

.L3_800E83A0:
/* 0E2A50 800E83A0 0C005770 */  jal   func_80015DC0
/* 0E2A54 800E83A4 24040408 */   li    $a0, 1032

/* 0E2A58 800E83A8 00402021 */  addu  $a0, $v0, $zero
/* 0E2A5C 800E83AC 0C009060 */  jal   func_80024180
/* 0E2A60 800E83B0 00002821 */   addu  $a1, $zero, $zero

.L3_800E83B4:
/* 0E2A64 800E83B4 27A40010 */  addiu $a0, $sp, 0x10
/* 0E2A68 800E83B8 0C039CDD */  jal   func3_800E7374
/* 0E2A6C 800E83BC 24050001 */   li    $a1, 1 # somehow toggles text display

/* 0E2A70 800E83C0 0803A0FD */  j     .L3_800E83F4
/* 0E2A74 800E83C4 3C085555 */   lui   $t0, 0x5555

.L3_800E83C8:
/* 0E2A78 800E83C8 3C028015 */  lui   $v0, %hi(D_801516B1) # $v0, 0x8015
/* 0E2A7C 800E83CC 804216B1 */  lb    $v0, %lo(D_801516B1)($v0)
/* 0E2A80 800E83D0 10400005 */  beqz  $v0, .L3_800E83E8
/* 0E2A84 800E83D4 27A40010 */   addiu $a0, $sp, 0x10

/* 0E2A88 800E83D8 0C039C14 */  jal   func3_800E7050
/* 0E2A8C 800E83DC 00002821 */   addu  $a1, $zero, $zero

/* 0E2A90 800E83E0 0803A0FC */  j     .L3_800E83F0
/* 0E2A94 800E83E4 00409821 */   addu  $s3, $v0, $zero

.L3_800E83E8:
/* 0E2A98 800E83E8 0C039C14 */  jal   func3_800E7050
/* 0E2A9C 800E83EC 24050001 */   li    $a1, 1

.L3_800E83F0:
/* 0E2AA0 800E83F0 3C085555 */  lui   $t0, (0x55555556 >> 16) # lui $t0, 0x5555

.L3_800E83F4:
/* 0E2AA4 800E83F4 8FA50010 */  lw    $a1, 0x10($sp)
/* 0E2AA8 800E83F8 3C048015 */  lui   $a0, %hi(D_801516B0) # $a0, 0x8015
/* 0E2AAC 800E83FC 908416B0 */  lbu   $a0, %lo(D_801516B0)($a0)
/* 0E2AB0 800E8400 35085556 */  ori   $t0, (0x55555556 & 0xFFFF) # ori $t0, $t0, 0x5556
/* 0E2AB4 800E8404 3C02DF00 */  lui   $v0, 0xdf00
/* 0E2AB8 800E8408 24870001 */  addiu $a3, $a0, 1
/* 0E2ABC 800E840C 00071E00 */  sll   $v1, $a3, 0x18
/* 0E2AC0 800E8410 00033603 */  sra   $a2, $v1, 0x18
/* 0E2AC4 800E8414 00042600 */  sll   $a0, $a0, 0x18
/* 0E2AC8 800E8418 00C80018 */  mult  $a2, $t0
/* 0E2ACC 800E841C 00042583 */  sra   $a0, $a0, 0x16
/* 0E2AD0 800E8420 ACA20000 */  sw    $v0, ($a1)
/* 0E2AD4 800E8424 ACA00004 */  sw    $zero, 4($a1)
/* 0E2AD8 800E8428 3C028016 */  lui   $v0, %hi(bss3_8015882C)
/* 0E2ADC 800E842C 00441021 */  addu  $v0, $v0, $a0
/* 0E2AE0 800E8430 8C42882C */  lw    $v0, %lo(bss3_8015882C)($v0)
/* 0E2AE4 800E8434 24A50008 */  addiu $a1, $a1, 8
/* 0E2AE8 800E8438 00031FC3 */  sra   $v1, $v1, 0x1f
/* 0E2AEC 800E843C AFA50010 */  sw    $a1, 0x10($sp)
/* 0E2AF0 800E8440 3C018015 */  lui   $at, %hi(D_801516B0) # $at, 0x8015
/* 0E2AF4 800E8444 A02716B0 */  sb    $a3, %lo(D_801516B0)($at)
/* 0E2AF8 800E8448 3C018016 */  lui   $at, %hi(bss3_80158760) # $at, 0x8016
/* 0E2AFC 800E844C AC228760 */  sw    $v0, %lo(bss3_80158760)($at)
/* 0E2B00 800E8450 00004810 */  mfhi  $t1
/* 0E2B04 800E8454 01231823 */  subu  $v1, $t1, $v1
/* 0E2B08 800E8458 00031040 */  sll   $v0, $v1, 1
/* 0E2B0C 800E845C 00431021 */  addu  $v0, $v0, $v1
/* 0E2B10 800E8460 00C23023 */  subu  $a2, $a2, $v0
/* 0E2B14 800E8464 00131400 */  sll   $v0, $s3, 0x10
/* 0E2B18 800E8468 3C018015 */  lui   $at, %hi(D_801516B0) # $at, 0x8015
/* 0E2B1C 800E846C 10400010 */  beqz  $v0, .L3_800E84B0
/* 0E2B20 800E8470 A02616B0 */   sb    $a2, %lo(D_801516B0)($at)

/* 0E2B24 800E8474 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E2B28 800E8478 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E2B2C 800E847C 8C420000 */  lw    $v0, ($v0)
/* 0E2B30 800E8480 30420080 */  andi  $v0, $v0, 0x80
/* 0E2B34 800E8484 14400004 */  bnez  $v0, .L3_800E8498
/* 0E2B38 800E8488 00000000 */   nop   

/* 0E2B3C 800E848C 3C048015 */  lui   $a0, %hi(D_801516B2) # $a0, 0x8015
/* 0E2B40 800E8490 0C000EF5 */  jal   func_80003BD4
/* 0E2B44 800E8494 808416B2 */   lb    $a0, %lo(D_801516B2)($a0)

.L3_800E8498:
/* 0E2B48 800E8498 3C038016 */  lui   $v1, %hi(bss3_80158764) # $v1, 0x8016
/* 0E2B4C 800E849C 8C638764 */  lw    $v1, %lo(bss3_80158764)($v1)
/* 0E2B50 800E84A0 8C620000 */  lw    $v0, ($v1)
/* 0E2B54 800E84A4 34420080 */  ori   $v0, $v0, 0x80
/* 0E2B58 800E84A8 0803A148 */  j     .L3_800E8520
/* 0E2B5C 800E84AC AC620000 */   sw    $v0, ($v1)

.L3_800E84B0:
/* 0E2B60 800E84B0 3C028016 */  lui   $v0, %hi(bss3_80158764) # $v0, 0x8016
/* 0E2B64 800E84B4 8C428764 */  lw    $v0, %lo(bss3_80158764)($v0)
/* 0E2B68 800E84B8 8C420000 */  lw    $v0, ($v0)
/* 0E2B6C 800E84BC 30420080 */  andi  $v0, $v0, 0x80
/* 0E2B70 800E84C0 1040000E */  beqz  $v0, .L3_800E84FC
/* 0E2B74 800E84C4 00000000 */   nop   

/* 0E2B78 800E84C8 0C000F08 */  jal   func_80003C20
/* 0E2B7C 800E84CC 00000000 */   nop   

/* 0E2B80 800E84D0 3C018015 */  lui   $at, %hi(D_801516B2) # $at, 0x8015
/* 0E2B84 800E84D4 A02216B2 */  sb    $v0, %lo(D_801516B2)($at)
/* 0E2B88 800E84D8 0C000EF5 */  jal   func_80003BD4
/* 0E2B8C 800E84DC 00002021 */   addu  $a0, $zero, $zero

/* 0E2B90 800E84E0 0C005803 */  jal   func_8001600C
/* 0E2B94 800E84E4 00002021 */   addu  $a0, $zero, $zero

/* 0E2B98 800E84E8 0C005770 */  jal   func_80015DC0
/* 0E2B9C 800E84EC 2404040D */   li    $a0, 1037

/* 0E2BA0 800E84F0 00402021 */  addu  $a0, $v0, $zero
/* 0E2BA4 800E84F4 0C009060 */  jal   func_80024180
/* 0E2BA8 800E84F8 00002821 */   addu  $a1, $zero, $zero

.L3_800E84FC:
/* 0E2BAC 800E84FC 3C048016 */  lui   $a0, %hi(bss3_80158764) # $a0, 0x8016
/* 0E2BB0 800E8500 8C848764 */  lw    $a0, %lo(bss3_80158764)($a0)
/* 0E2BB4 800E8504 8C820000 */  lw    $v0, ($a0)
/* 0E2BB8 800E8508 2403FF7F */  li    $v1, -129
/* 0E2BBC 800E850C 00431024 */  and   $v0, $v0, $v1
/* 0E2BC0 800E8510 AC820000 */  sw    $v0, ($a0)
/* 0E2BC4 800E8514 00111400 */  sll   $v0, $s1, 0x10
/* 0E2BC8 800E8518 50400001 */  beql  $v0, $zero, .L3_800E8520
/* 0E2BCC 800E851C 24110001 */   li    $s1, 1

.L3_800E8520:
/* 0E2BD0 800E8520 00111400 */  sll   $v0, $s1, 0x10
/* 0E2BD4 800E8524 00021403 */  sra   $v0, $v0, 0x10
/* 0E2BD8 800E8528 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0E2BDC 800E852C 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0E2BE0 800E8530 8FB20028 */  lw    $s2, 0x28($sp)
/* 0E2BE4 800E8534 8FB10024 */  lw    $s1, 0x24($sp)
/* 0E2BE8 800E8538 8FB00020 */  lw    $s0, 0x20($sp)
/* 0E2BEC 800E853C 03E00008 */  jr    $ra
/* 0E2BF0 800E8540 27BD0038 */   addiu $sp, $sp, 0x38

/*----------------------------------------------------------------------------*/
# possibly related to drawing the pause menu items

# Params:
# $a0 - pointer to ?
# $a1 - ? address?
# $a2 - ? word
# $a3 - ? word

func3_800E8544:
/* 0E2BF4 800E8544 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0E2BF8 800E8548 AFB10044 */  sw    $s1, 0x44($sp)
/* 0E2BFC 800E854C 00808821 */  addu  $s1, $a0, $zero # store $a0 in $s1
/* 0E2C00 800E8550 3C04F500 */  lui   $a0, (0xF5000100 >> 16) # lui $a0, 0xf500
/* 0E2C04 800E8554 34840100 */  ori   $a0, (0xF5000100 & 0xFFFF) # ori $a0, $a0, 0x100
/* 0E2C08 800E8558 3C080703 */  lui   $t0, (0x0703C000 >> 16) # lui $t0, 0x703
/* 0E2C0C 800E855C AFBF0048 */  sw    $ra, 0x48($sp)
/* 0E2C10 800E8560 AFB00040 */  sw    $s0, 0x40($sp)
/* 0E2C14 800E8564 8E220000 */  lw    $v0, ($s1)
/* 0E2C18 800E8568 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 0E2C1C 800E856C 3508C000 */  ori   $t0, (0x0703C000 & 0xFFFF) # ori $t0, $t0, 0xc000
/* 0E2C20 800E8570 3C10E700 */  lui   $s0, 0xe700
/* 0E2C24 800E8574 24430008 */  addiu $v1, $v0, 8
/* 0E2C28 800E8578 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C2C 800E857C 3C03FD10 */  lui   $v1, 0xfd10
/* 0E2C30 800E8580 AC430000 */  sw    $v1, ($v0)
/* 0E2C34 800E8584 3C038000 */  lui   $v1, 0x8000
/* 0E2C38 800E8588 00C33023 */  subu  $a2, $a2, $v1
/* 0E2C3C 800E858C 24430010 */  addiu $v1, $v0, 0x10
/* 0E2C40 800E8590 AC460004 */  sw    $a2, 4($v0)
/* 0E2C44 800E8594 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C48 800E8598 3C03E800 */  lui   $v1, 0xe800
/* 0E2C4C 800E859C AC430008 */  sw    $v1, 8($v0)
/* 0E2C50 800E85A0 24430018 */  addiu $v1, $v0, 0x18
/* 0E2C54 800E85A4 AC40000C */  sw    $zero, 0xc($v0)
/* 0E2C58 800E85A8 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C5C 800E85AC 3C030700 */  lui   $v1, 0x700
/* 0E2C60 800E85B0 AC430014 */  sw    $v1, 0x14($v0)
/* 0E2C64 800E85B4 24430020 */  addiu $v1, $v0, 0x20
/* 0E2C68 800E85B8 AC440010 */  sw    $a0, 0x10($v0)
/* 0E2C6C 800E85BC AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C70 800E85C0 3C03E600 */  lui   $v1, 0xe600
/* 0E2C74 800E85C4 AC430018 */  sw    $v1, 0x18($v0)
/* 0E2C78 800E85C8 24430028 */  addiu $v1, $v0, 0x28
/* 0E2C7C 800E85CC AC40001C */  sw    $zero, 0x1c($v0)
/* 0E2C80 800E85D0 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C84 800E85D4 3C03F000 */  lui   $v1, 0xf000
/* 0E2C88 800E85D8 AC430020 */  sw    $v1, 0x20($v0)
/* 0E2C8C 800E85DC 24430030 */  addiu $v1, $v0, 0x30
/* 0E2C90 800E85E0 AC480024 */  sw    $t0, 0x24($v0)
/* 0E2C94 800E85E4 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C98 800E85E8 AC500028 */  sw    $s0, 0x28($v0)
/* 0E2C9C 800E85EC AC40002C */  sw    $zero, 0x2c($v0)
/* 0E2CA0 800E85F0 90A20000 */  lbu   $v0, ($a1)
/* 0E2CA4 800E85F4 24420001 */  addiu $v0, $v0, 1
/* 0E2CA8 800E85F8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0E2CAC 800E85FC 90A30001 */  lbu   $v1, 1($a1)
/* 0E2CB0 800E8600 27A40038 */  addiu $a0, $sp, 0x38
/* 0E2CB4 800E8604 24020080 */  li    $v0, 128
/* 0E2CB8 800E8608 AFA20018 */  sw    $v0, 0x18($sp)
/* 0E2CBC 800E860C 24020010 */  li    $v0, 16
/* 0E2CC0 800E8610 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0E2CC4 800E8614 AFA00020 */  sw    $zero, 0x20($sp)
/* 0E2CC8 800E8618 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E2CCC 800E861C 24630001 */  addiu $v1, $v1, 1
/* 0E2CD0 800E8620 AFA30014 */  sw    $v1, 0x14($sp)
/* 0E2CD4 800E8624 90A20000 */  lbu   $v0, ($a1)
/* 0E2CD8 800E8628 24060002 */  li    $a2, 2
/* 0E2CDC 800E862C 3C038000 */  lui   $v1, 0x8000
/* 0E2CE0 800E8630 AFA20028 */  sw    $v0, 0x28($sp)
/* 0E2CE4 800E8634 90A20001 */  lbu   $v0, 1($a1)
/* 0E2CE8 800E8638 34630008 */  ori   $v1, $v1, 8
/* 0E2CEC 800E863C 00A32821 */  addu  $a1, $a1, $v1
/* 0E2CF0 800E8640 AFA70030 */  sw    $a3, 0x30($sp)
/* 0E2CF4 800E8644 00003821 */  addu  $a3, $zero, $zero
/* 0E2CF8 800E8648 24420001 */  addiu $v0, $v0, 1
/* 0E2CFC 800E864C AFA2002C */  sw    $v0, 0x2c($sp)
/* 0E2D00 800E8650 0C003C8B */  jal   func_8000F22C
/* 0E2D04 800E8654 E7A00034 */   swc1  $f0, 0x34($sp)

/* 0E2D08 800E8658 8FA20038 */  lw    $v0, 0x38($sp)
/* 0E2D0C 800E865C 24430008 */  addiu $v1, $v0, 8
/* 0E2D10 800E8660 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2D14 800E8664 AC500000 */  sw    $s0, ($v0)
/* 0E2D18 800E8668 AC400004 */  sw    $zero, 4($v0)
/* 0E2D1C 800E866C AE230000 */  sw    $v1, ($s1)
/* 0E2D20 800E8670 8FBF0048 */  lw    $ra, 0x48($sp)
/* 0E2D24 800E8674 8FB10044 */  lw    $s1, 0x44($sp)
/* 0E2D28 800E8678 8FB00040 */  lw    $s0, 0x40($sp)
/* 0E2D2C 800E867C 03E00008 */  jr    $ra
/* 0E2D30 800E8680 27BD0050 */   addiu $sp, $sp, 0x50

/*----------------------------------------------------------------------------*/
/* 0E2D34 800E8684 00000000 */  nop   
/* 0E2D38 800E8688 00000000 */  nop   
/* 0E2D3C 800E868C 00000000 */  nop   
