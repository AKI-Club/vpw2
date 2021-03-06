# Virtual Pro-Wrestling 2 | code_main/filetable.s
/*============================================================================*/

SetupFiletable:
/* 0048B0 80003CB0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0048B4 80003CB4 3404CC8C */  li    $a0, 52364
/* 0048B8 80003CB8 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0048BC 80003CBC AFB50024 */  sw    $s5, 0x24($sp)
/* 0048C0 80003CC0 AFB40020 */  sw    $s4, 0x20($sp)
/* 0048C4 80003CC4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0048C8 80003CC8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0048CC 80003CCC AFB10014 */  sw    $s1, 0x14($sp)
/* 0048D0 80003CD0 0C000226 */  jal   aki_malloc
/* 0048D4 80003CD4 AFB00010 */   sw    $s0, 0x10($sp)

/* 0048D8 80003CD8 3C040131 */  lui   $a0, %hi(_fileindexSegmentRomStart) # $a0, 0x131
/* 0048DC 80003CDC 24840F40 */  addiu $a0, %lo(_fileindexSegmentRomStart) # addiu $a0, $a0, 0xf40
/* 0048E0 80003CE0 00402821 */  addu  $a1, $v0, $zero
/* 0048E4 80003CE4 3C018005 */  lui   $at, %hi(bssMain_80056FE0) # $at, 0x8005
/* 0048E8 80003CE8 AC256FE0 */  sw    $a1, %lo(bssMain_80056FE0)($at)
/* 0048EC 80003CEC 0C000198 */  jal   LoadDataDMA
/* 0048F0 80003CF0 3406CC8C */   li    $a2, 52364

/* 0048F4 80003CF4 0C000226 */  jal   aki_malloc
/* 0048F8 80003CF8 3404CC88 */   li    $a0, 52360

/* 0048FC 80003CFC 3C018005 */  lui   $at, %hi(bssMain_80056FE4) # $at, 0x8005
/* 004900 80003D00 AC226FE4 */  sw    $v0, %lo(bssMain_80056FE4)($at)
/* 004904 80003D04 0C000226 */  jal   aki_malloc
/* 004908 80003D08 24040004 */   li    $a0, 4

/* 00490C 80003D0C 00409821 */  addu  $s3, $v0, $zero
/* 004910 80003D10 3C118005 */  lui   $s1, %hi(bssMain_80056FE0) # $s1, 0x8005
/* 004914 80003D14 8E316FE0 */  lw    $s1, %lo(bssMain_80056FE0)($s1)
/* 004918 80003D18 00009021 */  addu  $s2, $zero, $zero
/* 00491C 80003D1C 2415FFFE */  li    $s5, -2
/* 004920 80003D20 3C140015 */  lui   $s4, %hi(_filetableSegmentRomStart) # $s4, 0x15
/* 004924 80003D24 26942DF0 */  addiu $s4, %lo(_filetableSegmentRomStart) # addiu $s4, $s4, 0x2df0
/* 004928 80003D28 00008021 */  addu  $s0, $zero, $zero

.L__loop:
/* 00492C 80003D2C 8E240000 */  lw    $a0, ($s1)
/* 004930 80003D30 26310004 */  addiu $s1, $s1, 4
/* 004934 80003D34 8E230000 */  lw    $v1, ($s1)
/* 004938 80003D38 00801021 */  addu  $v0, $a0, $zero
/* 00493C 80003D3C 00952024 */  and   $a0, $a0, $s5
/* 004940 80003D40 00751824 */  and   $v1, $v1, $s5
/* 004944 80003D44 00942021 */  addu  $a0, $a0, $s4
/* 004948 80003D48 30420001 */  andi  $v0, $v0, 1
/* 00494C 80003D4C 10400009 */  beqz  $v0, .L80003D74
/* 004950 80003D50 00741821 */   addu  $v1, $v1, $s4

/* 004954 80003D54 02602821 */  addu  $a1, $s3, $zero
/* 004958 80003D58 0C000198 */  jal   LoadDataDMA
/* 00495C 80003D5C 24060004 */   li    $a2, 4

/* 004960 80003D60 3C028005 */  lui   $v0, %hi(bssMain_80056FE4) # $v0, 0x8005
/* 004964 80003D64 8C426FE4 */  lw    $v0, %lo(bssMain_80056FE4)($v0)
/* 004968 80003D68 8E630000 */  lw    $v1, ($s3)
/* 00496C 80003D6C 08000F61 */  j     .L80003D84
/* 004970 80003D70 02021021 */   addu  $v0, $s0, $v0

.L80003D74:
/* 004974 80003D74 3C028005 */  lui   $v0, %hi(bssMain_80056FE4) # $v0, 0x8005
/* 004978 80003D78 8C426FE4 */  lw    $v0, %lo(bssMain_80056FE4)($v0)
/* 00497C 80003D7C 00641823 */  subu  $v1, $v1, $a0
/* 004980 80003D80 02021021 */  addu  $v0, $s0, $v0

.L80003D84:
/* 004984 80003D84 AC430000 */  sw    $v1, ($v0)
/* 004988 80003D88 26520001 */  addiu $s2, $s2, 1
/* 00498C 80003D8C 2E423322 */  sltiu $v0, $s2, 0x3322 # max filetable ID minus 1
/* 004990 80003D90 1440FFE6 */  bnez  $v0, .L__loop
/* 004994 80003D94 26100004 */   addiu $s0, $s0, 4

/* 004998 80003D98 0C000280 */  jal   aki_free
/* 00499C 80003D9C 02602021 */   addu  $a0, $s3, $zero

/* 0049A0 80003DA0 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0049A4 80003DA4 8FB50024 */  lw    $s5, 0x24($sp)
/* 0049A8 80003DA8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0049AC 80003DAC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0049B0 80003DB0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0049B4 80003DB4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0049B8 80003DB8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0049BC 80003DBC 03E00008 */  jr    $ra
/* 0049C0 80003DC0 27BD0030 */   addiu $sp, $sp, 0x30

/*----------------------------------------------------------------------------*/
# todo: this actually gets the file size as well as location

# Params:
# $a0 - read/write address
# $a1 - File ID

GetFileLoc:
/* 0049C4 80003DC4 30A2FFFF */  andi  $v0, $a1, 0xffff
/* 0049C8 80003DC8 2C430001 */  sltiu $v1, $v0, 1
/* 0049CC 80003DCC 2C423323 */  sltiu $v0, $v0, 0x3323 # max filetable ID
/* 0049D0 80003DD0 38420001 */  xori  $v0, $v0, 1
/* 0049D4 80003DD4 00621825 */  or    $v1, $v1, $v0
/* 0049D8 80003DD8 10600003 */  beqz  $v1, .L80003DE8
/* 0049DC 80003DDC 00804021 */   addu  $t0, $a0, $zero

.L80003DE0:
/* 0049E0 80003DE0 08000F78 */  j     .L80003DE0
/* 0049E4 80003DE4 00000000 */   nop   

.L80003DE8:
/* 0049E8 80003DE8 24A5FFFF */  addiu $a1, $a1, -1
/* 0049EC 80003DEC 3C028005 */  lui   $v0, %hi(bssMain_80056FE0) # $v0, 0x8005
/* 0049F0 80003DF0 8C426FE0 */  lw    $v0, %lo(bssMain_80056FE0)($v0)
/* 0049F4 80003DF4 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 0049F8 80003DF8 00052880 */  sll   $a1, $a1, 2
/* 0049FC 80003DFC 3C078005 */  lui   $a3, %hi(bssMain_80056FE4) # $a3, 0x8005
/* 004A00 80003E00 8CE76FE4 */  lw    $a3, %lo(bssMain_80056FE4)($a3)
/* 004A04 80003E04 00451021 */  addu  $v0, $v0, $a1
/* 004A08 80003E08 8C460000 */  lw    $a2, ($v0)
/* 004A0C 80003E0C AD060000 */  sw    $a2, ($t0)
/* 004A10 80003E10 8C420004 */  lw    $v0, 4($v0)
/* 004A14 80003E14 AD020004 */  sw    $v0, 4($t0)
/* 004A18 80003E18 8D020000 */  lw    $v0, ($t0)
/* 004A1C 80003E1C 8D030004 */  lw    $v1, 4($t0)
/* 004A20 80003E20 2404FFFE */  li    $a0, -2
/* 004A24 80003E24 00441024 */  and   $v0, $v0, $a0
/* 004A28 80003E28 AD020000 */  sw    $v0, ($t0)
/* 004A2C 80003E2C 8D020000 */  lw    $v0, ($t0)
/* 004A30 80003E30 00A72821 */  addu  $a1, $a1, $a3
/* 004A34 80003E34 00641824 */  and   $v1, $v1, $a0
/* 004A38 80003E38 AD030004 */  sw    $v1, 4($t0)
/* 004A3C 80003E3C 8D030004 */  lw    $v1, 4($t0)
/* 004A40 80003E40 3C040015 */  lui   $a0, %hi(_filetableSegmentRomStart) # $a0, 0x15
/* 004A44 80003E44 24842DF0 */  addiu $a0, %lo(_filetableSegmentRomStart) # addiu $a0, $a0, 0x2df0
/* 004A48 80003E48 00441021 */  addu  $v0, $v0, $a0
/* 004A4C 80003E4C 00641821 */  addu  $v1, $v1, $a0
/* 004A50 80003E50 AD020000 */  sw    $v0, ($t0)
/* 004A54 80003E54 AD030004 */  sw    $v1, 4($t0)
/* 004A58 80003E58 8CA20000 */  lw    $v0, ($a1)
/* 004A5C 80003E5C 30C60001 */  andi  $a2, $a2, 1
/* 004A60 80003E60 10C00006 */  beqz  $a2, .L80003E7C
/* 004A64 80003E64 AD020008 */   sw    $v0, 8($t0)

/* 004A68 80003E68 8D020004 */  lw    $v0, 4($t0)
/* 004A6C 80003E6C 8D030000 */  lw    $v1, ($t0)
/* 004A70 80003E70 00431023 */  subu  $v0, $v0, $v1
/* 004A74 80003E74 08000FA0 */  j     .L80003E80
/* 004A78 80003E78 AD02000C */   sw    $v0, 0xc($t0)

.L80003E7C:
/* 004A7C 80003E7C AD00000C */  sw    $zero, 0xc($t0)

.L80003E80:
/* 004A80 80003E80 03E00008 */  jr    $ra
/* 004A84 80003E84 00000000 */   nop   

/*----------------------------------------------------------------------------*/
# Params:
# $a0 - ??? (used for writing some values)
# $a1 - File ID
# $a2 - Write destination?

LoadFile:
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

/*----------------------------------------------------------------------------*/
DecompressLZSS:
/* 004C08 80004008 27BDFFF8 */  addiu $sp, $sp, -8
/* 004C0C 8000400C 8C8C0000 */  lw    $t4, ($a0) # get uncompressed size
/* 004C10 80004010 24840004 */  addiu $a0, $a0, 4
/* 004C14 80004014 2D821000 */  sltiu $v0, $t4, 0x1000
/* 004C18 80004018 10400002 */  beqz  $v0, .L80004024
/* 004C1C 8000401C 24081000 */   li    $t0, 4096

/* 004C20 80004020 01804021 */  addu  $t0, $t4, $zero

.L80004024:
/* 004C24 80004024 11000009 */  beqz  $t0, .L8000404C
/* 004C28 80004028 00005821 */   addu  $t3, $zero, $zero

/* 004C2C 8000402C 00A01821 */  addu  $v1, $a1, $zero
/* 004C30 80004030 01053021 */  addu  $a2, $t0, $a1
/* 004C34 80004034 A0600000 */  sb    $zero, ($v1)

.L80004038:
/* 004C38 80004038 24630001 */  addiu $v1, $v1, 1
/* 004C3C 8000403C 0066102B */  sltu  $v0, $v1, $a2
/* 004C40 80004040 5440FFFD */  bnezl $v0, .L80004038
/* 004C44 80004044 A0600000 */   sb    $zero, ($v1)

/* 004C48 80004048 00005821 */  addu  $t3, $zero, $zero

.L8000404C:
/* 004C4C 8000404C 11800034 */  beqz  $t4, .L80004120
/* 004C50 80004050 00004021 */   addu  $t0, $zero, $zero

/* 004C54 80004054 00A05021 */  addu  $t2, $a1, $zero
/* 004C58 80004058 000B1042 */  srl   $v0, $t3, 1

.L8000405C:
/* 004C5C 8000405C 00405821 */  addu  $t3, $v0, $zero
/* 004C60 80004060 30420100 */  andi  $v0, $v0, 0x100
/* 004C64 80004064 14400005 */  bnez  $v0, .L8000407C
/* 004C68 80004068 31620001 */   andi  $v0, $t3, 1

/* 004C6C 8000406C 90820000 */  lbu   $v0, ($a0)
/* 004C70 80004070 24840001 */  addiu $a0, $a0, 1
/* 004C74 80004074 344BFF00 */  ori   $t3, $v0, 0xff00
/* 004C78 80004078 31620001 */  andi  $v0, $t3, 1

.L8000407C:
/* 004C7C 8000407C 10400007 */  beqz  $v0, .L8000409C
/* 004C80 80004080 00000000 */   nop   

/* 004C84 80004084 90820000 */  lbu   $v0, ($a0)
/* 004C88 80004088 24840001 */  addiu $a0, $a0, 1
/* 004C8C 8000408C 25080001 */  addiu $t0, $t0, 1
/* 004C90 80004090 A1420000 */  sb    $v0, ($t2)
/* 004C94 80004094 08001045 */  j     .L80004114
/* 004C98 80004098 254A0001 */   addiu $t2, $t2, 1

.L8000409C:
/* 004C9C 8000409C 90830000 */  lbu   $v1, ($a0)
/* 004CA0 800040A0 24840001 */  addiu $a0, $a0, 1
/* 004CA4 800040A4 90890000 */  lbu   $t1, ($a0)
/* 004CA8 800040A8 312200F0 */  andi  $v0, $t1, 0xf0
/* 004CAC 800040AC 00021100 */  sll   $v0, $v0, 4
/* 004CB0 800040B0 00621825 */  or    $v1, $v1, $v0
/* 004CB4 800040B4 3122000F */  andi  $v0, $t1, 0xf
/* 004CB8 800040B8 24490002 */  addiu $t1, $v0, 2
/* 004CBC 800040BC 24630012 */  addiu $v1, $v1, 0x12
/* 004CC0 800040C0 30630FFF */  andi  $v1, $v1, 0xfff
/* 004CC4 800040C4 31020FFF */  andi  $v0, $t0, 0xfff
/* 004CC8 800040C8 00621823 */  subu  $v1, $v1, $v0
/* 004CCC 800040CC 04600002 */  bltz  $v1, .L800040D8
/* 004CD0 800040D0 24840001 */   addiu $a0, $a0, 1

/* 004CD4 800040D4 2463F000 */  addiu $v1, $v1, -0x1000

.L800040D8:
/* 004CD8 800040D8 00003821 */  addu  $a3, $zero, $zero
/* 004CDC 800040DC 01053021 */  addu  $a2, $t0, $a1

.L800040E0:
/* 004CE0 800040E0 01031021 */  addu  $v0, $t0, $v1
/* 004CE4 800040E4 04400004 */  bltz  $v0, .L800040F8
/* 004CE8 800040E8 00A21021 */   addu  $v0, $a1, $v0

/* 004CEC 800040EC 90420000 */  lbu   $v0, ($v0)
/* 004CF0 800040F0 0800103F */  j     .L800040FC
/* 004CF4 800040F4 A0C20000 */   sb    $v0, ($a2)

.L800040F8:
/* 004CF8 800040F8 A0C00000 */  sb    $zero, ($a2)

.L800040FC:
/* 004CFC 800040FC 24C60001 */  addiu $a2, $a2, 1
/* 004D00 80004100 254A0001 */  addiu $t2, $t2, 1
/* 004D04 80004104 24E70001 */  addiu $a3, $a3, 1
/* 004D08 80004108 0127102B */  sltu  $v0, $t1, $a3
/* 004D0C 8000410C 1040FFF4 */  beqz  $v0, .L800040E0
/* 004D10 80004110 25080001 */   addiu $t0, $t0, 1

.L80004114:
/* 004D14 80004114 010C102B */  sltu  $v0, $t0, $t4
/* 004D18 80004118 1440FFD0 */  bnez  $v0, .L8000405C
/* 004D1C 8000411C 000B1042 */   srl   $v0, $t3, 1

.L80004120:
/* 004D20 80004120 27BD0008 */  addiu $sp, $sp, 8
/* 004D24 80004124 03E00008 */  jr    $ra
/* 004D28 80004128 00000000 */   nop   

/* 004D2C 8000412C 00000000 */  nop   
