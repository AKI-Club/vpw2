# probably the main gameplay screen function

glabel func3_800E6B20
/* 0E11D0 800E6B20 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0E11D4 800E6B24 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0E11D8 800E6B28 3C1E800A */  lui   $fp, %hi(bssMain_8009D5E8) # $fp, 0x800a
/* 0E11DC 800E6B2C 93DED5E8 */  lbu   $fp, %lo(bssMain_8009D5E8)($fp)
/* 0E11E0 800E6B30 AFB60038 */  sw    $s6, 0x38($sp)
/* 0E11E4 800E6B34 24160001 */  li    $s6, 1
/* 0E11E8 800E6B38 AFB00020 */  sw    $s0, 0x20($sp)
/* 0E11EC 800E6B3C 00008021 */  addu  $s0, $zero, $zero
/* 0E11F0 800E6B40 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0E11F4 800E6B44 2417005A */  li    $s7, 90
/* 0E11F8 800E6B48 00002021 */  addu  $a0, $zero, $zero
/* 0E11FC 800E6B4C 24050002 */  li    $a1, 2
/* 0E1200 800E6B50 00003021 */  addu  $a2, $zero, $zero
/* 0E1204 800E6B54 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0E1208 800E6B58 AFB50034 */  sw    $s5, 0x34($sp)
/* 0E120C 800E6B5C AFB40030 */  sw    $s4, 0x30($sp)
/* 0E1210 800E6B60 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0E1214 800E6B64 AFB20028 */  sw    $s2, 0x28($sp)
/* 0E1218 800E6B68 AFB10024 */  sw    $s1, 0x24($sp)
/* 0E121C 800E6B6C 0C00593F */  jal   func_800164FC
/* 0E1220 800E6B70 A7A00016 */   sh    $zero, 0x16($sp)

/* 0E1224 800E6B74 24040003 */  li    $a0, 3
/* 0E1228 800E6B78 0C008F57 */  jal   func_80023D5C
/* 0E122C 800E6B7C 24050002 */   li    $a1, 2

/* 0E1230 800E6B80 3C04800A */  lui   $a0, %hi(bssMain_8009D5D4) # $a0, 0x800a
/* 0E1234 800E6B84 8084D5D4 */  lb    $a0, %lo(bssMain_8009D5D4)($a0)
/* 0E1238 800E6B88 00009821 */  addu  $s3, $zero, $zero
/* 0E123C 800E6B8C 00009021 */  addu  $s2, $zero, $zero
/* 0E1240 800E6B90 0000A021 */  addu  $s4, $zero, $zero
/* 0E1244 800E6B94 00008821 */  addu  $s1, $zero, $zero
/* 0E1248 800E6B98 3C150008 */  lui   $s5, 8
/* 0E124C 800E6B9C 0C000F26 */  jal   func_80003C98
/* 0E1250 800E6BA0 A7A0001E */   sh    $zero, 0x1e($sp)

/* 0E1254 800E6BA4 0C000CE4 */  jal   func_80003390
/* 0E1258 800E6BA8 00000000 */   nop   

/* 0E125C 800E6BAC 0C000CE4 */  jal   func_80003390
/* 0E1260 800E6BB0 00000000 */   nop   

/* 0E1264 800E6BB4 0C000CE4 */  jal   func_80003390
/* 0E1268 800E6BB8 00000000 */   nop   

/* 0E126C 800E6BBC 0C000CE4 */  jal   func_80003390
/* 0E1270 800E6BC0 00000000 */   nop   

/* 0E1274 800E6BC4 0C0012ED */  jal   func_80004BB4
/* 0E1278 800E6BC8 00002021 */   addu  $a0, $zero, $zero

/* 0E127C 800E6BCC 0C00127A */  jal   func_800049E8
/* 0E1280 800E6BD0 2404000F */   li    $a0, 15

/* 0E1284 800E6BD4 0C049D70 */  jal   func3_801275C0
/* 0E1288 800E6BD8 00000000 */   nop   

/* 0E128C 800E6BDC 0C005FBD */  jal   func_80017EF4
/* 0E1290 800E6BE0 00002021 */   addu  $a0, $zero, $zero

/* 0E1294 800E6BE4 0C03BF04 */  jal   func3_800EFC10
/* 0E1298 800E6BE8 00000000 */   nop   

/* 0E129C 800E6BEC 0C039F48 */  jal   func3_800E7D20
/* 0E12A0 800E6BF0 00000000 */   nop   

/* 0E12A4 800E6BF4 0C000CE4 */  jal   func_80003390
/* 0E12A8 800E6BF8 00000000 */   nop   

.L3_800E6BFC:
/* 0E12AC 800E6BFC 0C00118A */  jal   func_80004628
/* 0E12B0 800E6C00 00002021 */   addu  $a0, $zero, $zero

/* 0E12B4 800E6C04 00131400 */  sll   $v0, $s3, 0x10
/* 0E12B8 800E6C08 14400023 */  bnez  $v0, .L3_800E6C98
/* 0E12BC 800E6C0C 00000000 */   nop   

/* 0E12C0 800E6C10 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E12C4 800E6C14 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E12C8 800E6C18 00551024 */  and   $v0, $v0, $s5
/* 0E12CC 800E6C1C 14400013 */  bnez  $v0, .L3_800E6C6C
/* 0E12D0 800E6C20 00161400 */   sll   $v0, $s6, 0x10

/* 0E12D4 800E6C24 10400005 */  beqz  $v0, .L3_800E6C3C
/* 0E12D8 800E6C28 240400FF */   li    $a0, 255

/* 0E12DC 800E6C2C 240500FF */  li    $a1, 255
/* 0E12E0 800E6C30 0C03CE5E */  jal   func3_800F3978
/* 0E12E4 800E6C34 240600FF */   li    $a2, 255

/* 0E12E8 800E6C38 0040B021 */  addu  $s6, $v0, $zero

.L3_800E6C3C:
/* 0E12EC 800E6C3C 3C028017 */  lui   $v0, %hi(bss3_80175791) # $v0, 0x8017
/* 0E12F0 800E6C40 90425791 */  lbu   $v0, %lo(bss3_80175791)($v0)
/* 0E12F4 800E6C44 30420080 */  andi  $v0, $v0, 0x80
/* 0E12F8 800E6C48 1040000E */  beqz  $v0, .L3_800E6C84
/* 0E12FC 800E6C4C 240400FF */   li    $a0, 255

/* 0E1300 800E6C50 240500FF */  li    $a1, 255
/* 0E1304 800E6C54 0C03CE35 */  jal   func3_800F38D4
/* 0E1308 800E6C58 240600FF */   li    $a2, 255

/* 0E130C 800E6C5C 1440000A */  bnez  $v0, .L3_800E6C88
/* 0E1310 800E6C60 02801021 */   addu  $v0, $s4, $zero

/* 0E1314 800E6C64 08039B21 */  j     .L3_800E6C84
/* 0E1318 800E6C68 24140001 */   li    $s4, 1

.L3_800E6C6C:
/* 0E131C 800E6C6C 3C028017 */  lui   $v0, %hi(bss3_80175791) # $v0, 0x8017
/* 0E1320 800E6C70 90425791 */  lbu   $v0, %lo(bss3_80175791)($v0)
/* 0E1324 800E6C74 30420080 */  andi  $v0, $v0, 0x80
/* 0E1328 800E6C78 10400003 */  beqz  $v0, .L3_800E6C88
/* 0E132C 800E6C7C 02801021 */   addu  $v0, $s4, $zero

/* 0E1330 800E6C80 24140001 */  li    $s4, 1

.L3_800E6C84:
/* 0E1334 800E6C84 02801021 */  addu  $v0, $s4, $zero

.L3_800E6C88:
/* 0E1338 800E6C88 14400003 */  bnez  $v0, .L3_800E6C98
/* 0E133C 800E6C8C 00000000 */   nop   

/* 0E1340 800E6C90 0C049EA8 */  jal   func3_80127AA0
/* 0E1344 800E6C94 00000000 */   nop   

.L3_800E6C98:
/* 0E1348 800E6C98 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E134C 800E6C9C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1350 800E6CA0 00551024 */  and   $v0, $v0, $s5
/* 0E1354 800E6CA4 1440001A */  bnez  $v0, .L3_800E6D10
/* 0E1358 800E6CA8 00111400 */   sll   $v0, $s1, 0x10

/* 0E135C 800E6CAC 00122400 */  sll   $a0, $s2, 0x10
/* 0E1360 800E6CB0 0C03A01E */  jal   func3_800E8078
/* 0E1364 800E6CB4 00042403 */   sra   $a0, $a0, 0x10

/* 0E1368 800E6CB8 00409821 */  addu  $s3, $v0, $zero
/* 0E136C 800E6CBC 00131400 */  sll   $v0, $s3, 0x10
/* 0E1370 800E6CC0 00021C03 */  sra   $v1, $v0, 0x10
/* 0E1374 800E6CC4 28620002 */  slti  $v0, $v1, 2
/* 0E1378 800E6CC8 14400011 */  bnez  $v0, .L3_800E6D10
/* 0E137C 800E6CCC 00111400 */   sll   $v0, $s1, 0x10

/* 0E1380 800E6CD0 24020002 */  li    $v0, 2
/* 0E1384 800E6CD4 1062000C */  beq   $v1, $v0, .L3_800E6D08
/* 0E1388 800E6CD8 24020003 */   li    $v0, 3

/* 0E138C 800E6CDC 14620006 */  bne   $v1, $v0, .L3_800E6CF8
/* 0E1390 800E6CE0 24020005 */   li    $v0, 5

/* 0E1394 800E6CE4 24020001 */  li    $v0, 1
/* 0E1398 800E6CE8 3C018016 */  lui   $at, %hi(bss3_80158740) # $at, 0x8016
/* 0E139C 800E6CEC AC228740 */  sw    $v0, %lo(bss3_80158740)($at)
/* 0E13A0 800E6CF0 08039B42 */  j     .L3_800E6D08
/* 0E13A4 800E6CF4 2411003C */   li    $s1, 60

.L3_800E6CF8:
/* 0E13A8 800E6CF8 14620003 */  bne   $v1, $v0, .L3_800E6D08
/* 0E13AC 800E6CFC 2411003C */   li    $s1, 60

/* 0E13B0 800E6D00 24070001 */  li    $a3, 1
/* 0E13B4 800E6D04 A7A7001E */  sh    $a3, 0x1e($sp)

.L3_800E6D08:
/* 0E13B8 800E6D08 00009021 */  addu  $s2, $zero, $zero
/* 0E13BC 800E6D0C 00111400 */  sll   $v0, $s1, 0x10

.L3_800E6D10:
/* 0E13C0 800E6D10 00021403 */  sra   $v0, $v0, 0x10
/* 0E13C4 800E6D14 10400010 */  beqz  $v0, .L3_800E6D58
/* 0E13C8 800E6D18 28420002 */   slti  $v0, $v0, 2

/* 0E13CC 800E6D1C 54400003 */  bnezl $v0, .L3_800E6D2C
/* 0E13D0 800E6D20 0000F021 */   addu  $fp, $zero, $zero

/* 0E13D4 800E6D24 08039B90 */  j     .L3_800E6E40
/* 0E13D8 800E6D28 2631FFFF */   addiu $s1, $s1, -1

.L3_800E6D2C:
/* 0E13DC 800E6D2C 00008021 */  addu  $s0, $zero, $zero
/* 0E13E0 800E6D30 3C028017 */  lui   $v0, %hi(bss3_80175791)
/* 0E13E4 800E6D34 90425791 */  lbu   $v0, %lo(bss3_80175791)($v0)
/* 0E13E8 800E6D38 24040001 */  li    $a0, 1
/* 0E13EC 800E6D3C 34420080 */  ori   $v0, $v0, 0x80
/* 0E13F0 800E6D40 3C018017 */  lui   $at, %hi(bss3_80175791) # $at, 0x8017
/* 0E13F4 800E6D44 A0225791 */  sb    $v0, %lo(bss3_80175791)($at)
/* 0E13F8 800E6D48 0C008F57 */  jal   func_80023D5C
/* 0E13FC 800E6D4C 2405003C */   li    $a1, 60

/* 0E1400 800E6D50 08039B90 */  j     .L3_800E6E40
/* 0E1404 800E6D54 00000000 */   nop   

.L3_800E6D58:
/* 0E1408 800E6D58 3C03800A */  lui   $v1, %hi(bssMain_800980A0) # $v1, 0x800a
/* 0E140C 800E6D5C 8C6380A0 */  lw    $v1, %lo(bssMain_800980A0)($v1)
/* 0E1410 800E6D60 00751024 */  and   $v0, $v1, $s5
/* 0E1414 800E6D64 1440003B */  bnez  $v0, .L3_800E6E54
/* 0E1418 800E6D68 00121400 */   sll   $v0, $s2, 0x10

/* 0E141C 800E6D6C 00021403 */  sra   $v0, $v0, 0x10
/* 0E1420 800E6D70 54400029 */  bnezl $v0, .L3_800E6E18
/* 0E1424 800E6D74 2443FFFF */   addiu $v1, $v0, -1

/* 0E1428 800E6D78 00161400 */  sll   $v0, $s6, 0x10
/* 0E142C 800E6D7C 14400030 */  bnez  $v0, .L3_800E6E40
/* 0E1430 800E6D80 00000000 */   nop   

/* 0E1434 800E6D84 3C028017 */  lui   $v0, %hi(bss3_80175791) # $v0, 0x8017
/* 0E1438 800E6D88 90425791 */  lbu   $v0, %lo(bss3_80175791)($v0)
/* 0E143C 800E6D8C 30420080 */  andi  $v0, $v0, 0x80
/* 0E1440 800E6D90 1440002B */  bnez  $v0, .L3_800E6E40
/* 0E1444 800E6D94 00000000 */   nop   

/* 0E1448 800E6D98 3C028017 */  lui   $v0, %hi(bss3_8016C014) # $v0, 0x8017
/* 0E144C 800E6D9C 8442C014 */  lh    $v0, %lo(bss3_8016C014)($v0)
/* 0E1450 800E6DA0 14400027 */  bnez  $v0, .L3_800E6E40
/* 0E1454 800E6DA4 30628000 */   andi  $v0, $v1, 0x8000

/* 0E1458 800E6DA8 1440000E */  bnez  $v0, .L3_800E6DE4
/* 0E145C 800E6DAC 00001821 */   addu  $v1, $zero, $zero

/* 0E1460 800E6DB0 00002021 */  addu  $a0, $zero, $zero

.L3_800E6DB4:
/* 0E1464 800E6DB4 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E1468 800E6DB8 00441021 */  addu  $v0, $v0, $a0
/* 0E146C 800E6DBC 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E1470 800E6DC0 30421000 */  andi  $v0, $v0, 0x1000 # start button
/* 0E1474 800E6DC4 54400001 */  bnezl $v0, .L3_800E6DCC
/* 0E1478 800E6DC8 24720001 */   addiu $s2, $v1, 1

.L3_800E6DCC:
/* 0E147C 800E6DCC 24630001 */  addiu $v1, $v1, 1
/* 0E1480 800E6DD0 2C620004 */  sltiu $v0, $v1, 4
/* 0E1484 800E6DD4 1440FFF7 */  bnez  $v0, .L3_800E6DB4
/* 0E1488 800E6DD8 2484000C */   addiu $a0, $a0, 0xc

/* 0E148C 800E6DDC 08039B90 */  j     .L3_800E6E40
/* 0E1490 800E6DE0 00000000 */   nop   

.L3_800E6DE4:
/* 0E1494 800E6DE4 00002021 */  addu  $a0, $zero, $zero

.L3_800E6DE8:
/* 0E1498 800E6DE8 3C02800A */  lui   $v0, %hi(bssMain_8009B156)
/* 0E149C 800E6DEC 00441021 */  addu  $v0, $v0, $a0
/* 0E14A0 800E6DF0 9442B156 */  lhu   $v0, %lo(bssMain_8009B156)($v0)
/* 0E14A4 800E6DF4 3042F03F */  andi  $v0, $v0, 0xf03f # all non-dpad buttons
/* 0E14A8 800E6DF8 54400001 */  bnezl $v0, .L3_800E6E00
/* 0E14AC 800E6DFC 24110005 */   li    $s1, 5

.L3_800E6E00:
/* 0E14B0 800E6E00 24630001 */  addiu $v1, $v1, 1
/* 0E14B4 800E6E04 2C620004 */  sltiu $v0, $v1, 4
/* 0E14B8 800E6E08 1440FFF7 */  bnez  $v0, .L3_800E6DE8
/* 0E14BC 800E6E0C 2484000C */   addiu $a0, $a0, 0xc

/* 0E14C0 800E6E10 08039B90 */  j     .L3_800E6E40
/* 0E14C4 800E6E14 00000000 */   nop   

.L3_800E6E18:
/* 0E14C8 800E6E18 00031040 */  sll   $v0, $v1, 1
/* 0E14CC 800E6E1C 00431021 */  addu  $v0, $v0, $v1
/* 0E14D0 800E6E20 00021080 */  sll   $v0, $v0, 2
/* 0E14D4 800E6E24 3C01800A */  lui   $at, %hi(bssMain_8009B156)
/* 0E14D8 800E6E28 00220821 */  addu  $at, $at, $v0
/* 0E14DC 800E6E2C 9422B156 */  lhu   $v0, %lo(bssMain_8009B156)($at)
/* 0E14E0 800E6E30 30425000 */  andi  $v0, $v0, 0x5000 # b and start buttons
/* 0E14E4 800E6E34 2C420001 */  sltiu $v0, $v0, 1
/* 0E14E8 800E6E38 00021023 */  negu  $v0, $v0
/* 0E14EC 800E6E3C 02429024 */  and   $s2, $s2, $v0

.L3_800E6E40:
/* 0E14F0 800E6E40 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E14F4 800E6E44 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E14F8 800E6E48 00551024 */  and   $v0, $v0, $s5
/* 0E14FC 800E6E4C 10400005 */  beqz  $v0, .L3_800E6E64
/* 0E1500 800E6E50 00132400 */   sll   $a0, $s3, 0x10

.L3_800E6E54:
/* 0E1504 800E6E54 0C005803 */  jal   func_8001600C
/* 0E1508 800E6E58 00002021 */   addu  $a0, $zero, $zero

/* 0E150C 800E6E5C 08039BD4 */  j     .L3_800E6F50
/* 0E1510 800E6E60 02801021 */   addu  $v0, $s4, $zero

.L3_800E6E64:
/* 0E1514 800E6E64 0C03C015 */  jal   func3_800F0054
/* 0E1518 800E6E68 00042403 */   sra   $a0, $a0, 0x10

/* 0E151C 800E6E6C 97A70016 */  lhu   $a3, 0x16($sp)
/* 0E1520 800E6E70 00E01021 */  addu  $v0, $a3, $zero
/* 0E1524 800E6E74 1040002F */  beqz  $v0, .L3_800E6F34
/* 0E1528 800E6E78 00000000 */   nop   

/* 0E152C 800E6E7C 3C028017 */  lui   $v0, %hi(bss3_8016C010) # $v0, 0x8017
/* 0E1530 800E6E80 8442C010 */  lh    $v0, %lo(bss3_8016C010)($v0)
/* 0E1534 800E6E84 1040001C */  beqz  $v0, .L3_800E6EF8
/* 0E1538 800E6E88 00000000 */   nop   

/* 0E153C 800E6E8C 3C02800A */  lui   $v0, %hi(bssMain_8009B184) # $v0, 0x800a
/* 0E1540 800E6E90 8442B184 */  lh    $v0, %lo(bssMain_8009B184)($v0)
/* 0E1544 800E6E94 10400007 */  beqz  $v0, .L3_800E6EB4
/* 0E1548 800E6E98 00000000 */   nop   

/* 0E154C 800E6E9C 0C050AE8 */  jal   func3_80142BA0
/* 0E1550 800E6EA0 00000000 */   nop   

/* 0E1554 800E6EA4 10400003 */  beqz  $v0, .L3_800E6EB4
/* 0E1558 800E6EA8 00000000 */   nop   

/* 0E155C 800E6EAC 3C01800A */  lui   $at, %hi(bssMain_8009B184) # $at, 0x800a
/* 0E1560 800E6EB0 A420B184 */  sh    $zero, %lo(bssMain_8009B184)($at)

.L3_800E6EB4:
/* 0E1564 800E6EB4 97A7001E */  lhu   $a3, 0x1e($sp)
/* 0E1568 800E6EB8 00111400 */  sll   $v0, $s1, 0x10
/* 0E156C 800E6EBC 0002102B */  sltu  $v0, $zero, $v0
/* 0E1570 800E6EC0 00E21025 */  or    $v0, $a3, $v0
/* 0E1574 800E6EC4 10400003 */  beqz  $v0, .L3_800E6ED4
/* 0E1578 800E6EC8 00171400 */   sll   $v0, $s7, 0x10

/* 0E157C 800E6ECC 08039BBC */  j     .L3_800E6EF0
/* 0E1580 800E6ED0 00008021 */   addu  $s0, $zero, $zero

.L3_800E6ED4:
/* 0E1584 800E6ED4 18400003 */  blez  $v0, .L3_800E6EE4
/* 0E1588 800E6ED8 00000000 */   nop   

/* 0E158C 800E6EDC 08039BBC */  j     .L3_800E6EF0
/* 0E1590 800E6EE0 26F7FFFF */   addiu $s7, $s7, -1

.L3_800E6EE4:
/* 0E1594 800E6EE4 0C03A282 */  jal   func3_800E8A08
/* 0E1598 800E6EE8 00000000 */   nop   

/* 0E159C 800E6EEC 00408021 */  addu  $s0, $v0, $zero

.L3_800E6EF0:
/* 0E15A0 800E6EF0 08039BC5 */  j     .L3_800E6F14
/* 0E15A4 800E6EF4 24050008 */   li    $a1, 8

.L3_800E6EF8:
/* 0E15A8 800E6EF8 0C03C147 */  jal   func3_800F051C
/* 0E15AC 800E6EFC 00000000 */   nop   

/* 0E15B0 800E6F00 00408021 */  addu  $s0, $v0, $zero
/* 0E15B4 800E6F04 00101400 */  sll   $v0, $s0, 0x10
/* 0E15B8 800E6F08 04410002 */  bgez  $v0, .L3_800E6F14
/* 0E15BC 800E6F0C 24050008 */   li    $a1, 8

/* 0E15C0 800E6F10 03C08021 */  addu  $s0, $fp, $zero

.L3_800E6F14:
/* 0E15C4 800E6F14 00102400 */  sll   $a0, $s0, 0x10
/* 0E15C8 800E6F18 00042403 */  sra   $a0, $a0, 0x10
/* 0E15CC 800E6F1C 00052C00 */  sll   $a1, $a1, 0x10
/* 0E15D0 800E6F20 00052C02 */  srl   $a1, $a1, 0x10
/* 0E15D4 800E6F24 0C00593F */  jal   func_800164FC
/* 0E15D8 800E6F28 2406FF80 */   li    $a2, -128

/* 0E15DC 800E6F2C 08039BD4 */  j     .L3_800E6F50
/* 0E15E0 800E6F30 02801021 */   addu  $v0, $s4, $zero

.L3_800E6F34:
/* 0E15E4 800E6F34 3C028017 */  lui   $v0, %hi(bss3_8016C014) # $v0, 0x8017
/* 0E15E8 800E6F38 8442C014 */  lh    $v0, %lo(bss3_8016C014)($v0)
/* 0E15EC 800E6F3C 14400004 */  bnez  $v0, .L3_800E6F50
/* 0E15F0 800E6F40 02801021 */   addu  $v0, $s4, $zero

/* 0E15F4 800E6F44 24070001 */  li    $a3, 1
/* 0E15F8 800E6F48 A7A70016 */  sh    $a3, 0x16($sp)
/* 0E15FC 800E6F4C 03C08021 */  addu  $s0, $fp, $zero

.L3_800E6F50:
/* 0E1600 800E6F50 1040FF2A */  beqz  $v0, .L3_800E6BFC
/* 0E1604 800E6F54 3C030008 */   lui   $v1, 8

/* 0E1608 800E6F58 3C02800A */  lui   $v0, %hi(bssMain_800980A0) # $v0, 0x800a
/* 0E160C 800E6F5C 8C4280A0 */  lw    $v0, %lo(bssMain_800980A0)($v0)
/* 0E1610 800E6F60 00431024 */  and   $v0, $v0, $v1
/* 0E1614 800E6F64 14400026 */  bnez  $v0, .L3_800E7000
/* 0E1618 800E6F68 00000000 */   nop   

/* 0E161C 800E6F6C 97A7001E */  lhu   $a3, 0x1e($sp)
/* 0E1620 800E6F70 00E01021 */  addu  $v0, $a3, $zero
/* 0E1624 800E6F74 10400005 */  beqz  $v0, .L3_800E6F8C
/* 0E1628 800E6F78 00111400 */   sll   $v0, $s1, 0x10

/* 0E162C 800E6F7C 0C04B0DB */  jal   func3_8012C36C
/* 0E1630 800E6F80 00000000 */   nop   

/* 0E1634 800E6F84 08039BE7 */  j     .L3_800E6F9C
/* 0E1638 800E6F88 00000000 */   nop   

.L3_800E6F8C:
/* 0E163C 800E6F8C 10400003 */  beqz  $v0, .L3_800E6F9C
/* 0E1640 800E6F90 00000000 */   nop   

/* 0E1644 800E6F94 3C01800A */  lui   $at, %hi(bssMain_8009D5DC) # $at, 0x800a
/* 0E1648 800E6F98 AC20D5DC */  sw    $zero, %lo(bssMain_8009D5DC)($at)

.L3_800E6F9C:
/* 0E164C 800E6F9C 0C0012ED */  jal   func_80004BB4
/* 0E1650 800E6FA0 24040001 */   li    $a0, 1

/* 0E1654 800E6FA4 0C00118A */  jal   func_80004628
/* 0E1658 800E6FA8 00002021 */   addu  $a0, $zero, $zero

/* 0E165C 800E6FAC 0C005803 */  jal   func_8001600C
/* 0E1660 800E6FB0 00002021 */   addu  $a0, $zero, $zero

/* 0E1664 800E6FB4 00101400 */  sll   $v0, $s0, 0x10
/* 0E1668 800E6FB8 00021403 */  sra   $v0, $v0, 0x10
/* 0E166C 800E6FBC 28420013 */  slti  $v0, $v0, 0x13
/* 0E1670 800E6FC0 1040000B */  beqz  $v0, .L3_800E6FF0
/* 0E1674 800E6FC4 00002021 */   addu  $a0, $zero, $zero

/* 0E1678 800E6FC8 00002821 */  addu  $a1, $zero, $zero
/* 0E167C 800E6FCC 0C00593F */  jal   func_800164FC
/* 0E1680 800E6FD0 00003021 */   addu  $a2, $zero, $zero

/* 0E1684 800E6FD4 24040003 */  li    $a0, 3
/* 0E1688 800E6FD8 0C008F57 */  jal   func_80023D5C
/* 0E168C 800E6FDC 24050002 */   li    $a1, 2

/* 0E1690 800E6FE0 0C000CE4 */  jal   func_80003390
/* 0E1694 800E6FE4 00000000 */   nop   

/* 0E1698 800E6FE8 0C000CE4 */  jal   func_80003390
/* 0E169C 800E6FEC 00000000 */   nop   

.L3_800E6FF0:
/* 0E16A0 800E6FF0 0C000CE4 */  jal   func_80003390
/* 0E16A4 800E6FF4 00000000 */   nop   

/* 0E16A8 800E6FF8 0C000CE4 */  jal   func_80003390
/* 0E16AC 800E6FFC 00000000 */   nop   

.L3_800E7000:
/* 0E16B0 800E7000 3C048016 */  lui   $a0, %hi(bss3_80158740) # $a0, 0x8016
/* 0E16B4 800E7004 0C039FFF */  jal   func3_800E7FFC
/* 0E16B8 800E7008 8C848740 */   lw    $a0, %lo(bss3_80158740)($a0)

/* 0E16BC 800E700C 0C03C0CB */  jal   func3_800F032C
/* 0E16C0 800E7010 00000000 */   nop   

/* 0E16C4 800E7014 0C006056 */  jal   func_80018158
/* 0E16C8 800E7018 00000000 */   nop   

/* 0E16CC 800E701C 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0E16D0 800E7020 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0E16D4 800E7024 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0E16D8 800E7028 8FB60038 */  lw    $s6, 0x38($sp)
/* 0E16DC 800E702C 8FB50034 */  lw    $s5, 0x34($sp)
/* 0E16E0 800E7030 8FB40030 */  lw    $s4, 0x30($sp)
/* 0E16E4 800E7034 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0E16E8 800E7038 8FB20028 */  lw    $s2, 0x28($sp)
/* 0E16EC 800E703C 8FB10024 */  lw    $s1, 0x24($sp)
/* 0E16F0 800E7040 8FB00020 */  lw    $s0, 0x20($sp)
/* 0E16F4 800E7044 03E00008 */  jr    $ra
/* 0E16F8 800E7048 27BD0048 */   addiu $sp, $sp, 0x48

/*----------------------------------------------------------------------------*/
/* 0E16FC 800E704C 00000000 */  nop   
