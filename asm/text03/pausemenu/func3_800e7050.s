# Params:
# $a0 - ?
# $a1 - ?
# $a2 - ?

glabel func3_800E7050
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
