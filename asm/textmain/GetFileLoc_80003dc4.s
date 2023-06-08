# todo: this actually gets the file size as well as location

# Params:
# $a0 - read/write address
# $a1 - File ID

glabel GetFileLoc
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
