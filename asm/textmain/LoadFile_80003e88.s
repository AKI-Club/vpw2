# Params:
# $a0 - ??? (used for writing some values)
# $a1 - File ID
# $a2 - Write destination?

glabel LoadFile
/* 004A88 80003E88 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004A8C 80003E8C AFB20028 */  sw    $s2, 0x28($sp)
/* 004A90 80003E90 00809021 */  addu  $s2, $a0, $zero
/* 004A94 80003E94 AFB10024 */  sw    $s1, 0x24($sp)
/* 004A98 80003E98 00C08821 */  addu  $s1, $a2, $zero
/* 004A9C 80003E9C 27A80010 */  addiu $t0, $sp, 0x10
/* 004AA0 80003EA0 30A2FFFF */  andi  $v0, $a1, 0xffff
/* 004AA4 80003EA4 2C430001 */  sltiu $v1, $v0, 1
/* 004AA8 80003EA8 2C423323 */  sltiu $v0, $v0, 0x3323 # max filetable ID
/* 004AAC 80003EAC 38420001 */  xori  $v0, $v0, 1
/* 004AB0 80003EB0 00621825 */  or    $v1, $v1, $v0
/* 004AB4 80003EB4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 004AB8 80003EB8 10600003 */  beqz  $v1, .L80003EC8
/* 004ABC 80003EBC AFB00020 */   sw    $s0, 0x20($sp)

.L80003EC0:
/* 004AC0 80003EC0 08000FB0 */  j     .L80003EC0
/* 004AC4 80003EC4 00000000 */   nop   

.L80003EC8:
/* 004AC8 80003EC8 24A5FFFF */  addiu $a1, $a1, -1
/* 004ACC 80003ECC 3C028005 */  lui   $v0, %hi(bssMain_80056FE0) # $v0, 0x8005
/* 004AD0 80003ED0 8C426FE0 */  lw    $v0, %lo(bssMain_80056FE0)($v0)
/* 004AD4 80003ED4 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 004AD8 80003ED8 00052880 */  sll   $a1, $a1, 2
/* 004ADC 80003EDC 3C078005 */  lui   $a3, %hi(bssMain_80056FE4) # $a3, 0x8005
/* 004AE0 80003EE0 8CE76FE4 */  lw    $a3, %lo(bssMain_80056FE4)($a3)
/* 004AE4 80003EE4 00451021 */  addu  $v0, $v0, $a1
/* 004AE8 80003EE8 8C460000 */  lw    $a2, ($v0)
/* 004AEC 80003EEC AD060000 */  sw    $a2, ($t0)
/* 004AF0 80003EF0 8C420004 */  lw    $v0, 4($v0)
/* 004AF4 80003EF4 AD020004 */  sw    $v0, 4($t0)
/* 004AF8 80003EF8 8D020000 */  lw    $v0, ($t0)
/* 004AFC 80003EFC 8D030004 */  lw    $v1, 4($t0)
/* 004B00 80003F00 2404FFFE */  li    $a0, -2
/* 004B04 80003F04 00441024 */  and   $v0, $v0, $a0
/* 004B08 80003F08 AD020000 */  sw    $v0, ($t0)
/* 004B0C 80003F0C 8D020000 */  lw    $v0, ($t0)
/* 004B10 80003F10 00A72821 */  addu  $a1, $a1, $a3
/* 004B14 80003F14 00641824 */  and   $v1, $v1, $a0
/* 004B18 80003F18 AD030004 */  sw    $v1, 4($t0)
/* 004B1C 80003F1C 8D030004 */  lw    $v1, 4($t0)
/* 004B20 80003F20 3C040015 */  lui   $a0, %hi(_filetableSegmentRomStart) # $a0, 0x15
/* 004B24 80003F24 24842DF0 */  addiu $a0, %lo(_filetableSegmentRomStart) # addiu $a0, $a0, 0x2df0
/* 004B28 80003F28 00441021 */  addu  $v0, $v0, $a0
/* 004B2C 80003F2C 00641821 */  addu  $v1, $v1, $a0
/* 004B30 80003F30 AD020000 */  sw    $v0, ($t0)
/* 004B34 80003F34 AD030004 */  sw    $v1, 4($t0)
/* 004B38 80003F38 8CA20000 */  lw    $v0, ($a1)
/* 004B3C 80003F3C 30C60001 */  andi  $a2, $a2, 1
/* 004B40 80003F40 10C00006 */  beqz  $a2, .L80003F5C
/* 004B44 80003F44 AD020008 */   sw    $v0, 8($t0)

/* 004B48 80003F48 8D020004 */  lw    $v0, 4($t0)
/* 004B4C 80003F4C 8D030000 */  lw    $v1, ($t0)
/* 004B50 80003F50 00431023 */  subu  $v0, $v0, $v1
/* 004B54 80003F54 08000FD8 */  j     .L80003F60
/* 004B58 80003F58 AD02000C */   sw    $v0, 0xc($t0)

.L80003F5C:
/* 004B5C 80003F5C AD00000C */  sw    $zero, 0xc($t0)

.L80003F60:
/* 004B60 80003F60 8FA4001C */  lw    $a0, 0x1c($sp)
/* 004B64 80003F64 18800015 */  blez  $a0, .L80003FBC
/* 004B68 80003F68 00000000 */   nop   

/* 004B6C 80003F6C 0C000226 */  jal   aki_malloc
/* 004B70 80003F70 00000000 */   nop   

/* 004B74 80003F74 00408021 */  addu  $s0, $v0, $zero
/* 004B78 80003F78 5200000C */  beql  $s0, $zero, .L80003FAC
/* 004B7C 80003F7C AFA00010 */   sw    $zero, 0x10($sp)

/* 004B80 80003F80 8FA40010 */  lw    $a0, 0x10($sp)
/* 004B84 80003F84 8FA6001C */  lw    $a2, 0x1c($sp)
/* 004B88 80003F88 0C000198 */  jal   LoadDataDMA
/* 004B8C 80003F8C 02002821 */   addu  $a1, $s0, $zero

/* 004B90 80003F90 02002021 */  addu  $a0, $s0, $zero
/* 004B94 80003F94 0C001002 */  jal   DecompressLZSS
/* 004B98 80003F98 02202821 */   addu  $a1, $s1, $zero

/* 004B9C 80003F9C 0C000280 */  jal   aki_free
/* 004BA0 80003FA0 02002021 */   addu  $a0, $s0, $zero

/* 004BA4 80003FA4 08000FF3 */  j     .L80003FCC
/* 004BA8 80003FA8 00000000 */   nop   

.L80003FAC:
/* 004BAC 80003FAC AFA00014 */  sw    $zero, 0x14($sp)
/* 004BB0 80003FB0 AFA00018 */  sw    $zero, 0x18($sp)
/* 004BB4 80003FB4 08000FF3 */  j     .L80003FCC
/* 004BB8 80003FB8 AFA0001C */   sw    $zero, 0x1c($sp)

.L80003FBC:
/* 004BBC 80003FBC 8FA40010 */  lw    $a0, 0x10($sp)
/* 004BC0 80003FC0 8FA60018 */  lw    $a2, 0x18($sp)
/* 004BC4 80003FC4 0C000198 */  jal   LoadDataDMA
/* 004BC8 80003FC8 02202821 */   addu  $a1, $s1, $zero

.L80003FCC:
/* 004BCC 80003FCC 8FA20010 */  lw    $v0, 0x10($sp)
/* 004BD0 80003FD0 8FA30014 */  lw    $v1, 0x14($sp)
/* 004BD4 80003FD4 8FA40018 */  lw    $a0, 0x18($sp)
/* 004BD8 80003FD8 8FA5001C */  lw    $a1, 0x1c($sp)
/* 004BDC 80003FDC AE420000 */  sw    $v0, ($s2) # file address in ROM
/* 004BE0 80003FE0 AE430004 */  sw    $v1, 4($s2) # next file's address in ROM
/* 004BE4 80003FE4 AE440008 */  sw    $a0, 8($s2) # length of file
/* 004BE8 80003FE8 AE45000C */  sw    $a1, 0xc($s2) # ???
/* 004BEC 80003FEC 02401021 */  addu  $v0, $s2, $zero

/* 004BF0 80003FF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 004BF4 80003FF4 8FB20028 */  lw    $s2, 0x28($sp)
/* 004BF8 80003FF8 8FB10024 */  lw    $s1, 0x24($sp)
/* 004BFC 80003FFC 8FB00020 */  lw    $s0, 0x20($sp)
/* 004C00 80004000 03E00008 */  jr    $ra
/* 004C04 80004004 27BD0030 */   addiu $sp, $sp, 0x30
