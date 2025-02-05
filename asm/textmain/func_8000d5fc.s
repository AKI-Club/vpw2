# related to title belt rendering?

# Params:
# $a0 - ?
# $a1 - file ID 1
# $a2 - file ID 2

glabel func_8000D5FC
/* 00E1FC 8000D5FC 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00E200 8000D600 AFB10054 */  sw    $s1, 0x54($sp)
/* 00E204 8000D604 00808821 */  addu  $s1, $a0, $zero
/* 00E208 8000D608 AFB00050 */  sw    $s0, 0x50($sp)
/* 00E20C 8000D60C 00A08021 */  addu  $s0, $a1, $zero
/* 00E210 8000D610 AFB20058 */  sw    $s2, 0x58($sp)
/* 00E214 8000D614 00C09021 */  addu  $s2, $a2, $zero
/* 00E218 8000D618 00052C00 */  sll   $a1, $a1, 0x10
/* 00E21C 8000D61C 0005282B */  sltu  $a1, $zero, $a1
/* 00E220 8000D620 00063400 */  sll   $a2, $a2, 0x10
/* 00E224 8000D624 0006302B */  sltu  $a2, $zero, $a2
/* 00E228 8000D628 00A62824 */  and   $a1, $a1, $a2
/* 00E22C 8000D62C AFBF0060 */  sw    $ra, 0x60($sp)
/* 00E230 8000D630 10A00195 */  beqz  $a1, .L8000DC88
/* 00E234 8000D634 AFB3005C */   sw    $s3, 0x5c($sp)

# file 1
/* 00E238 8000D638 27A40010 */  addiu $a0, $sp, 0x10
/* 00E23C 8000D63C 3210FFFF */  andi  $s0, $s0, 0xffff
/* 00E240 8000D640 0C000F71 */  jal   GetFileLoc
/* 00E244 8000D644 02002821 */   addu  $a1, $s0, $zero

/* 00E248 8000D648 8FA20018 */  lw    $v0, 0x18($sp)
/* 00E24C 8000D64C AE220004 */  sw    $v0, 4($s1)
/* 00E250 8000D650 0C000226 */  jal   aki_malloc
/* 00E254 8000D654 8FA40018 */   lw    $a0, 0x18($sp)

/* 00E258 8000D658 27A40030 */  addiu $a0, $sp, 0x30
/* 00E25C 8000D65C 02002821 */  addu  $a1, $s0, $zero
/* 00E260 8000D660 00403021 */  addu  $a2, $v0, $zero
/* 00E264 8000D664 0C000FA2 */  jal   LoadFile
/* 00E268 8000D668 AE26000C */   sw    $a2, 0xc($s1)

# file 2
/* 00E26C 8000D66C 27A40020 */  addiu $a0, $sp, 0x20
/* 00E270 8000D670 3250FFFF */  andi  $s0, $s2, 0xffff
/* 00E274 8000D674 0C000F71 */  jal   GetFileLoc
/* 00E278 8000D678 02002821 */   addu  $a1, $s0, $zero

/* 00E27C 8000D67C 8FA40028 */  lw    $a0, 0x28($sp)
/* 00E280 8000D680 0C000226 */  jal   aki_malloc
/* 00E284 8000D684 00000000 */   nop   

/* 00E288 8000D688 27A40040 */  addiu $a0, $sp, 0x40
/* 00E28C 8000D68C 02002821 */  addu  $a1, $s0, $zero
/* 00E290 8000D690 00403021 */  addu  $a2, $v0, $zero
/* 00E294 8000D694 0C000FA2 */  jal   LoadFile
/* 00E298 8000D698 AE260010 */   sw    $a2, 0x10($s1)

# check for monochrome mode
/* 00E29C 8000D69C 3C028004 */  lui   $v0, %hi(var_8003FDB0) # $v0, 0x8004
/* 00E2A0 8000D6A0 9442FDB0 */  lhu   $v0, %lo(var_8003FDB0)($v0)
/* 00E2A4 8000D6A4 24100001 */  li    $s0, 1
/* 00E2A8 8000D6A8 14500009 */  bne   $v0, $s0, .L8000D6D0
/* 00E2AC 8000D6AC 00002021 */   addu  $a0, $zero, $zero

/* 00E2B0 8000D6B0 8FA50028 */  lw    $a1, 0x28($sp)
/* 00E2B4 8000D6B4 8E240010 */  lw    $a0, 0x10($s1)
/* 00E2B8 8000D6B8 000517C2 */  srl   $v0, $a1, 0x1f
/* 00E2BC 8000D6BC 00A22821 */  addu  $a1, $a1, $v0
/* 00E2C0 8000D6C0 00052843 */  sra   $a1, $a1, 1
/* 00E2C4 8000D6C4 0C0030A5 */  jal   func_8000C294
/* 00E2C8 8000D6C8 30A5FFFF */   andi  $a1, $a1, 0xffff

/* 00E2CC 8000D6CC 00002021 */  addu  $a0, $zero, $zero

.L8000D6D0:
/* 00E2D0 8000D6D0 0C00428D */  jal   func_80010A34
/* 00E2D4 8000D6D4 24050018 */   li    $a1, 24

/* 00E2D8 8000D6D8 244F0008 */  addiu $t7, $v0, 8
/* 00E2DC 8000D6DC 3C06E200 */  lui   $a2, (0xE200001C >> 16) # lui $a2, 0xe200
/* 00E2E0 8000D6E0 8E23000C */  lw    $v1, 0xc($s1)
/* 00E2E4 8000D6E4 3C048004 */  lui   $a0, %hi(var_8003FDB2) # $a0, 0x8004
/* 00E2E8 8000D6E8 9484FDB2 */  lhu   $a0, %lo(var_8003FDB2)($a0)
/* 00E2EC 8000D6EC 34C6001C */  ori   $a2, (0xE200001C & 0xFFFF) # ori $a2, $a2, 0x1c
/* 00E2F0 8000D6F0 3C050F0A */  lui   $a1, 0xf0a
/* 00E2F4 8000D6F4 AE220008 */  sw    $v0, 8($s1)
/* 00E2F8 8000D6F8 90730004 */  lbu   $s3, 4($v1)
/* 00E2FC 8000D6FC 90790005 */  lbu   $t9, 5($v1)
/* 00E300 8000D700 90780006 */  lbu   $t8, 6($v1)
/* 00E304 8000D704 90720007 */  lbu   $s2, 7($v1)
/* 00E308 8000D708 34A57008 */  ori   $a1, 0x7008
/* 00E30C 8000D70C 03101804 */  sllv  $v1, $s0, $t8
/* 00E310 8000D710 A6230000 */  sh    $v1, ($s1)
/* 00E314 8000D714 02501804 */  sllv  $v1, $s0, $s2
/* 00E318 8000D718 A6230002 */  sh    $v1, 2($s1)
/* 00E31C 8000D71C AC460000 */  sw    $a2, ($v0)
/* 00E320 8000D720 1480000F */  bnez  $a0, .L8000D760
/* 00E324 8000D724 AC450004 */   sw    $a1, 4($v0)

/* 00E328 8000D728 01E02821 */  addu  $a1, $t7, $zero
/* 00E32C 8000D72C 25EF0008 */  addiu $t7, $t7, 8
/* 00E330 8000D730 3C02FC15 */  lui   $v0, (0xFC15FE2B >> 16) # lui $v0, 0xfc15
/* 00E334 8000D734 3442FE2B */  ori   $v0, (0xFC15FE2B & 0xFFFF) # ori $v0, $v0, 0xfe2b
/* 00E338 8000D738 01E02021 */  addu  $a0, $t7, $zero
/* 00E33C 8000D73C 25EF0008 */  addiu $t7, $t7, 8
/* 00E340 8000D740 3C03E300 */  lui   $v1, %hi(0xE3000004) # $v1, 0xe300
/* 00E344 8000D744 34630A01 */  ori   $v1, (0xE3000A01 & 0xFFFF) # ori $v1, $v1, 0xa01
/* 00E348 8000D748 ACA20000 */  sw    $v0, ($a1)
/* 00E34C 8000D74C 2402F3F9 */  li    $v0, -3079
/* 00E350 8000D750 ACA20004 */  sw    $v0, 4($a1)
/* 00E354 8000D754 AC830000 */  sw    $v1, ($a0)
/* 00E358 8000D758 080035E7 */  j     .L8000D79C
/* 00E35C 8000D75C AC800004 */   sw    $zero, 4($a0)

.L8000D760:
/* 00E360 8000D760 01E02821 */  addu  $a1, $t7, $zero
/* 00E364 8000D764 25EF0008 */  addiu $t7, $t7, 8
/* 00E368 8000D768 3C06FC15 */  lui   $a2, %hi(0xFC150004) # $a2, 0xfc15
/* 00E36C 8000D76C 34C6FEA3 */  ori   $a2, (0xFC15FEA3 & 0xFFFF) # ori $a2, $a2, 0xfea3
/* 00E370 8000D770 3C04F00F */  lui   $a0, %hi(0xF00F0004) # $a0, 0xf00f
/* 00E374 8000D774 3484F23F */  ori   $a0, (0xF00FF23F & 0xFFFF) # ori $a0, $a0, 0xf23f
/* 00E378 8000D778 01E01821 */  addu  $v1, $t7, $zero
/* 00E37C 8000D77C 25EF0008 */  addiu $t7, $t7, 8
/* 00E380 8000D780 3C02E300 */  lui   $v0, (0xE3000A01 >> 16) # lui $v0, 0xe300
/* 00E384 8000D784 34420A01 */  ori   $v0, (0xE3000A01 & 0xFFFF) # ori $v0, $v0, 0xa01
/* 00E388 8000D788 ACA60000 */  sw    $a2, ($a1)
/* 00E38C 8000D78C ACA40004 */  sw    $a0, 4($a1)
/* 00E390 8000D790 AC620000 */  sw    $v0, ($v1)
/* 00E394 8000D794 3C020010 */  lui   $v0, 0x10
/* 00E398 8000D798 AC620004 */  sw    $v0, 4($v1)

.L8000D79C:
/* 00E39C 8000D79C 3C02E300 */  lui   $v0, (0xE3001001 >> 16) # lui $v0, 0xe300
/* 00E3A0 8000D7A0 34421001 */  ori   $v0, (0xE3001001 & 0xFFFF) # ori $v0, $v0, 0x1001
/* 00E3A4 8000D7A4 01E01821 */  addu  $v1, $t7, $zero
/* 00E3A8 8000D7A8 AC620000 */  sw    $v0, ($v1)
/* 00E3AC 8000D7AC 34028000 */  li    $v0, 32768
/* 00E3B0 8000D7B0 AC620004 */  sw    $v0, 4($v1)
/* 00E3B4 8000D7B4 8E22000C */  lw    $v0, 0xc($s1)
/* 00E3B8 8000D7B8 90430002 */  lbu   $v1, 2($v0)
/* 00E3BC 8000D7BC 24020001 */  li    $v0, 1
/* 00E3C0 8000D7C0 10620092 */  beq   $v1, $v0, .L8000DA0C
/* 00E3C4 8000D7C4 25EF0008 */   addiu $t7, $t7, 8

/* 00E3C8 8000D7C8 01E02021 */  addu  $a0, $t7, $zero
/* 00E3CC 8000D7CC 25EF0008 */  addiu $t7, $t7, 8
/* 00E3D0 8000D7D0 01E02821 */  addu  $a1, $t7, $zero
/* 00E3D4 8000D7D4 25EF0008 */  addiu $t7, $t7, 8
/* 00E3D8 8000D7D8 01E04021 */  addu  $t0, $t7, $zero
/* 00E3DC 8000D7DC 25EF0008 */  addiu $t7, $t7, 8
/* 00E3E0 8000D7E0 3C0BF500 */  lui   $t3, (0xF5000100 >> 16) # lui $t3, 0xf500
/* 00E3E4 8000D7E4 356B0100 */  ori   $t3, (0xF5000100 & 0xFFFF) # ori $t3, $t3, 0x100
/* 00E3E8 8000D7E8 01E03021 */  addu  $a2, $t7, $zero
/* 00E3EC 8000D7EC 25EF0008 */  addiu $t7, $t7, 8
/* 00E3F0 8000D7F0 01E04821 */  addu  $t1, $t7, $zero
/* 00E3F4 8000D7F4 25EF0008 */  addiu $t7, $t7, 8
/* 00E3F8 8000D7F8 3C0C0703 */  lui   $t4, (0x0703C000 >> 16) # lui $t4, 0x703
/* 00E3FC 8000D7FC 358CC000 */  ori   $t4, (0x0703C000 & 0xFFFF) # ori $t4, $t4, 0xc000
/* 00E400 8000D800 01E03821 */  addu  $a3, $t7, $zero
/* 00E404 8000D804 25EF0008 */  addiu $t7, $t7, 8
/* 00E408 8000D808 01E05021 */  addu  $t2, $t7, $zero
/* 00E40C 8000D80C 25EF0008 */  addiu $t7, $t7, 8
/* 00E410 8000D810 3C0E8000 */  lui   $t6, (0x80000008 >> 16) # lui $t6, 0x8000
/* 00E414 8000D814 35CE0008 */  ori   $t6, (0x80000008 & 0xFFFF) # ori $t6, $t6, 8
/* 00E418 8000D818 3C02FD10 */  lui   $v0, 0xfd10
/* 00E41C 8000D81C AC820000 */  sw    $v0, ($a0)
/* 00E420 8000D820 8E230010 */  lw    $v1, 0x10($s1)
/* 00E424 8000D824 01E06821 */  addu  $t5, $t7, $zero
/* 00E428 8000D828 25EF0008 */  addiu $t7, $t7, 8
/* 00E42C 8000D82C 3C028000 */  lui   $v0, 0x8000
/* 00E430 8000D830 00621823 */  subu  $v1, $v1, $v0
/* 00E434 8000D834 3C02E800 */  lui   $v0, 0xe800
/* 00E438 8000D838 AC830004 */  sw    $v1, 4($a0)
/* 00E43C 8000D83C ACA20000 */  sw    $v0, ($a1)
/* 00E440 8000D840 ACA00004 */  sw    $zero, 4($a1)
/* 00E444 8000D844 3C050700 */  lui   $a1, 0x700
/* 00E448 8000D848 AD0B0000 */  sw    $t3, ($t0)
/* 00E44C 8000D84C AD050004 */  sw    $a1, 4($t0)
/* 00E450 8000D850 3C08E600 */  lui   $t0, %hi(0xE6000004) # $t0, 0xe600
/* 00E454 8000D854 3C02F000 */  lui   $v0, 0xf000
/* 00E458 8000D858 ACC80000 */  sw    $t0, ($a2)
/* 00E45C 8000D85C ACC00004 */  sw    $zero, 4($a2)
/* 00E460 8000D860 AD220000 */  sw    $v0, ($t1)
/* 00E464 8000D864 3C02E700 */  lui   $v0, 0xe700
/* 00E468 8000D868 AD2C0004 */  sw    $t4, 4($t1)
/* 00E46C 8000D86C ACE20000 */  sw    $v0, ($a3)
/* 00E470 8000D870 3C02FD50 */  lui   $v0, 0xfd50
/* 00E474 8000D874 ACE00004 */  sw    $zero, 4($a3)
/* 00E478 8000D878 AD420000 */  sw    $v0, ($t2)
/* 00E47C 8000D87C 8E22000C */  lw    $v0, 0xc($s1)
/* 00E480 8000D880 01E02021 */  addu  $a0, $t7, $zero
/* 00E484 8000D884 25EF0008 */  addiu $t7, $t7, 8
/* 00E488 8000D888 33230003 */  andi  $v1, $t9, 3
/* 00E48C 8000D88C 00031C80 */  sll   $v1, $v1, 0x12
/* 00E490 8000D890 004E1021 */  addu  $v0, $v0, $t6
/* 00E494 8000D894 AD420004 */  sw    $v0, 4($t2)
/* 00E498 8000D898 3C02F550 */  lui   $v0, 0xf550
/* 00E49C 8000D89C ADA20000 */  sw    $v0, ($t5)
/* 00E4A0 8000D8A0 3242000F */  andi  $v0, $s2, 0xf
/* 00E4A4 8000D8A4 00021380 */  sll   $v0, $v0, 0xe
/* 00E4A8 8000D8A8 00451025 */  or    $v0, $v0, $a1
/* 00E4AC 8000D8AC 00621825 */  or    $v1, $v1, $v0
/* 00E4B0 8000D8B0 32620003 */  andi  $v0, $s3, 3
/* 00E4B4 8000D8B4 00021200 */  sll   $v0, $v0, 8
/* 00E4B8 8000D8B8 00621825 */  or    $v1, $v1, $v0
/* 00E4BC 8000D8BC 3302000F */  andi  $v0, $t8, 0xf
/* 00E4C0 8000D8C0 00021100 */  sll   $v0, $v0, 4
/* 00E4C4 8000D8C4 00621825 */  or    $v1, $v1, $v0
/* 00E4C8 8000D8C8 ADA30004 */  sw    $v1, 4($t5)
/* 00E4CC 8000D8CC AC880000 */  sw    $t0, ($a0)
/* 00E4D0 8000D8D0 01E04021 */  addu  $t0, $t7, $zero
/* 00E4D4 8000D8D4 3C02F300 */  lui   $v0, 0xf300
/* 00E4D8 8000D8D8 AC800004 */  sw    $zero, 4($a0)
/* 00E4DC 8000D8DC AD020000 */  sw    $v0, ($t0)
/* 00E4E0 8000D8E0 86240000 */  lh    $a0, ($s1)
/* 00E4E4 8000D8E4 25EF0008 */  addiu $t7, $t7, 8
/* 00E4E8 8000D8E8 04810002 */  bgez  $a0, .L8000D8F4
/* 00E4EC 8000D8EC 00801021 */   addu  $v0, $a0, $zero

/* 00E4F0 8000D8F0 2482000F */  addiu $v0, $a0, 0xf

.L8000D8F4:
/* 00E4F4 8000D8F4 00021103 */  sra   $v0, $v0, 4
/* 00E4F8 8000D8F8 18400002 */  blez  $v0, .L8000D904
/* 00E4FC 8000D8FC 24050800 */   li    $a1, 2048

/* 00E500 8000D900 244507FF */  addiu $a1, $v0, 0x7ff

.L8000D904:
/* 00E504 8000D904 86240000 */  lh    $a0, ($s1)
/* 00E508 8000D908 86220002 */  lh    $v0, 2($s1)
/* 00E50C 8000D90C 00820018 */  mult  $a0, $v0
/* 00E510 8000D910 00001012 */  mflo  $v0
/* 00E514 8000D914 24420003 */  addiu $v0, $v0, 3
/* 00E518 8000D918 00021083 */  sra   $v0, $v0, 2
/* 00E51C 8000D91C 2443FFFF */  addiu $v1, $v0, -1
/* 00E520 8000D920 28620800 */  slti  $v0, $v1, 0x800
/* 00E524 8000D924 50400001 */  beql  $v0, $zero, .L8000D92C
/* 00E528 8000D928 240307FF */   li    $v1, 2047

.L8000D92C:
/* 00E52C 8000D92C 00803021 */  addu  $a2, $a0, $zero
/* 00E530 8000D930 30620FFF */  andi  $v0, $v1, 0xfff
/* 00E534 8000D934 00021300 */  sll   $v0, $v0, 0xc
/* 00E538 8000D938 3C030700 */  lui   $v1, %hi(0x07000007) # $v1, 0x700
/* 00E53C 8000D93C 04810002 */  bgez  $a0, .L8000D948
/* 00E540 8000D940 00433825 */   or    $a3, $v0, $v1

/* 00E544 8000D944 2486000F */  addiu $a2, $a0, 0xf

.L8000D948:
/* 00E548 8000D948 00061103 */  sra   $v0, $a2, 4
/* 00E54C 8000D94C 5840000D */  blezl $v0, .L8000D984
/* 00E550 8000D950 30A20FFF */   andi  $v0, $a1, 0xfff

/* 00E554 8000D954 00A2001A */  div   $zero, $a1, $v0
/* 00E558 8000D958 14400002 */  bnez  $v0, .L8000D964
/* 00E55C 8000D95C 00000000 */   nop   

/* 00E560 8000D960 0007000D */  break 7

.L8000D964:
/* 00E564 8000D964 2401FFFF */  li    $at, -1
/* 00E568 8000D968 14410004 */  bne   $v0, $at, .L8000D97C
/* 00E56C 8000D96C 3C018000 */   lui   $at, 0x8000

/* 00E570 8000D970 14A10002 */  bne   $a1, $at, .L8000D97C
/* 00E574 8000D974 00000000 */   nop   

/* 00E578 8000D978 0006000D */  break 6

.L8000D97C:
/* 00E57C 8000D97C 00001012 */  mflo  $v0
/* 00E580 8000D980 30420FFF */  andi  $v0, $v0, 0xfff

.L8000D984:
/* 00E584 8000D984 00E21025 */  or    $v0, $a3, $v0
/* 00E588 8000D988 01E01821 */  addu  $v1, $t7, $zero
/* 00E58C 8000D98C 25EF0008 */  addiu $t7, $t7, 8
/* 00E590 8000D990 01E02821 */  addu  $a1, $t7, $zero
/* 00E594 8000D994 25EF0008 */  addiu $t7, $t7, 8
/* 00E598 8000D998 AD020004 */  sw    $v0, 4($t0)
/* 00E59C 8000D99C 3C02E700 */  lui   $v0, 0xe700
/* 00E5A0 8000D9A0 AC620000 */  sw    $v0, ($v1)
/* 00E5A4 8000D9A4 AC600004 */  sw    $zero, 4($v1)
/* 00E5A8 8000D9A8 96230000 */  lhu   $v1, ($s1)
/* 00E5AC 8000D9AC 33240003 */  andi  $a0, $t9, 3
/* 00E5B0 8000D9B0 00042480 */  sll   $a0, $a0, 0x12
/* 00E5B4 8000D9B4 3242000F */  andi  $v0, $s2, 0xf
/* 00E5B8 8000D9B8 00021380 */  sll   $v0, $v0, 0xe
/* 00E5BC 8000D9BC 00822025 */  or    $a0, $a0, $v0
/* 00E5C0 8000D9C0 32620003 */  andi  $v0, $s3, 3
/* 00E5C4 8000D9C4 00021200 */  sll   $v0, $v0, 8
/* 00E5C8 8000D9C8 00822025 */  or    $a0, $a0, $v0
/* 00E5CC 8000D9CC 3302000F */  andi  $v0, $t8, 0xf
/* 00E5D0 8000D9D0 00021100 */  sll   $v0, $v0, 4
/* 00E5D4 8000D9D4 00822025 */  or    $a0, $a0, $v0
/* 00E5D8 8000D9D8 3C02F540 */  lui   $v0, 0xf540
/* 00E5DC 8000D9DC ACA40004 */  sw    $a0, 4($a1)
/* 00E5E0 8000D9E0 01E02021 */  addu  $a0, $t7, $zero
/* 00E5E4 8000D9E4 00031C00 */  sll   $v1, $v1, 0x10
/* 00E5E8 8000D9E8 00031C43 */  sra   $v1, $v1, 0x11
/* 00E5EC 8000D9EC 24630007 */  addiu $v1, $v1, 7
/* 00E5F0 8000D9F0 000318C3 */  sra   $v1, $v1, 3
/* 00E5F4 8000D9F4 306301FF */  andi  $v1, $v1, 0x1ff
/* 00E5F8 8000D9F8 00031A40 */  sll   $v1, $v1, 9
/* 00E5FC 8000D9FC 00621825 */  or    $v1, $v1, $v0
/* 00E600 8000DA00 3C02F200 */  lui   $v0, 0xf200
/* 00E604 8000DA04 08003711 */  j     .L8000DC44
/* 00E608 8000DA08 ACA30000 */   sw    $v1, ($a1)

.L8000DA0C:
/* 00E60C 8000DA0C 01E02021 */  addu  $a0, $t7, $zero
/* 00E610 8000DA10 25EF0008 */  addiu $t7, $t7, 8
/* 00E614 8000DA14 01E02821 */  addu  $a1, $t7, $zero
/* 00E618 8000DA18 25EF0008 */  addiu $t7, $t7, 8
/* 00E61C 8000DA1C 01E04021 */  addu  $t0, $t7, $zero
/* 00E620 8000DA20 25EF0008 */  addiu $t7, $t7, 8
/* 00E624 8000DA24 3C0BF500 */  lui   $t3, (0xF5000100 >> 16) # lui $t3, 0xf500
/* 00E628 8000DA28 356B0100 */  ori   $t3, (0xF5000100 & 0xFFFF) # ori $t3, $t3, 0x100
/* 00E62C 8000DA2C 01E03021 */  addu  $a2, $t7, $zero
/* 00E630 8000DA30 25EF0008 */  addiu $t7, $t7, 8
/* 00E634 8000DA34 01E04821 */  addu  $t1, $t7, $zero
/* 00E638 8000DA38 25EF0008 */  addiu $t7, $t7, 8
/* 00E63C 8000DA3C 3C0C073F */  lui   $t4, (0x073FC000 >> 16) # lui $t4, 0x73f
/* 00E640 8000DA40 358CC000 */  ori   $t4, (0x073FC000 & 0xFFFF) # ori $t4, $t4, 0xc000
/* 00E644 8000DA44 01E03821 */  addu  $a3, $t7, $zero
/* 00E648 8000DA48 25EF0008 */  addiu $t7, $t7, 8
/* 00E64C 8000DA4C 01E05021 */  addu  $t2, $t7, $zero
/* 00E650 8000DA50 25EF0008 */  addiu $t7, $t7, 8
/* 00E654 8000DA54 3C0E8000 */  lui   $t6, (0x80000008 >> 16) # lui $t6, 0x8000
/* 00E658 8000DA58 35CE0008 */  ori   $t6, (0x80000008 & 0xFFFF) # ori $t6, $t6, 8
/* 00E65C 8000DA5C 3C02FD10 */  lui   $v0, 0xfd10
/* 00E660 8000DA60 AC820000 */  sw    $v0, ($a0)
/* 00E664 8000DA64 8E230010 */  lw    $v1, 0x10($s1)
/* 00E668 8000DA68 01E06821 */  addu  $t5, $t7, $zero
/* 00E66C 8000DA6C 25EF0008 */  addiu $t7, $t7, 8
/* 00E670 8000DA70 3C028000 */  lui   $v0, 0x8000
/* 00E674 8000DA74 00621823 */  subu  $v1, $v1, $v0
/* 00E678 8000DA78 3C02E800 */  lui   $v0, 0xe800
/* 00E67C 8000DA7C AC830004 */  sw    $v1, 4($a0)
/* 00E680 8000DA80 ACA20000 */  sw    $v0, ($a1)
/* 00E684 8000DA84 ACA00004 */  sw    $zero, 4($a1)
/* 00E688 8000DA88 3C050700 */  lui   $a1, 0x700
/* 00E68C 8000DA8C AD0B0000 */  sw    $t3, ($t0)
/* 00E690 8000DA90 AD050004 */  sw    $a1, 4($t0)
/* 00E694 8000DA94 3C08E600 */  lui   $t0, %hi(0xE6000004) # $t0, 0xe600
/* 00E698 8000DA98 3C02F000 */  lui   $v0, 0xf000
/* 00E69C 8000DA9C ACC80000 */  sw    $t0, ($a2)
/* 00E6A0 8000DAA0 ACC00004 */  sw    $zero, 4($a2)
/* 00E6A4 8000DAA4 AD220000 */  sw    $v0, ($t1)
/* 00E6A8 8000DAA8 3C02E700 */  lui   $v0, 0xe700
/* 00E6AC 8000DAAC AD2C0004 */  sw    $t4, 4($t1)
/* 00E6B0 8000DAB0 ACE20000 */  sw    $v0, ($a3)
/* 00E6B4 8000DAB4 3C02FD50 */  lui   $v0, 0xfd50
/* 00E6B8 8000DAB8 ACE00004 */  sw    $zero, 4($a3)
/* 00E6BC 8000DABC AD420000 */  sw    $v0, ($t2)
/* 00E6C0 8000DAC0 8E22000C */  lw    $v0, 0xc($s1)
/* 00E6C4 8000DAC4 01E02021 */  addu  $a0, $t7, $zero
/* 00E6C8 8000DAC8 25EF0008 */  addiu $t7, $t7, 8
/* 00E6CC 8000DACC 33230003 */  andi  $v1, $t9, 3
/* 00E6D0 8000DAD0 00031C80 */  sll   $v1, $v1, 0x12
/* 00E6D4 8000DAD4 004E1021 */  addu  $v0, $v0, $t6
/* 00E6D8 8000DAD8 AD420004 */  sw    $v0, 4($t2)
/* 00E6DC 8000DADC 3C02F550 */  lui   $v0, 0xf550
/* 00E6E0 8000DAE0 ADA20000 */  sw    $v0, ($t5)
/* 00E6E4 8000DAE4 3242000F */  andi  $v0, $s2, 0xf
/* 00E6E8 8000DAE8 00021380 */  sll   $v0, $v0, 0xe
/* 00E6EC 8000DAEC 00451025 */  or    $v0, $v0, $a1
/* 00E6F0 8000DAF0 00621825 */  or    $v1, $v1, $v0
/* 00E6F4 8000DAF4 32620003 */  andi  $v0, $s3, 3
/* 00E6F8 8000DAF8 00021200 */  sll   $v0, $v0, 8
/* 00E6FC 8000DAFC 00621825 */  or    $v1, $v1, $v0
/* 00E700 8000DB00 3302000F */  andi  $v0, $t8, 0xf
/* 00E704 8000DB04 00021100 */  sll   $v0, $v0, 4
/* 00E708 8000DB08 00621825 */  or    $v1, $v1, $v0
/* 00E70C 8000DB0C ADA30004 */  sw    $v1, 4($t5)
/* 00E710 8000DB10 AC880000 */  sw    $t0, ($a0)
/* 00E714 8000DB14 01E04021 */  addu  $t0, $t7, $zero
/* 00E718 8000DB18 3C02F300 */  lui   $v0, 0xf300
/* 00E71C 8000DB1C AC800004 */  sw    $zero, 4($a0)
/* 00E720 8000DB20 AD020000 */  sw    $v0, ($t0)
/* 00E724 8000DB24 86240000 */  lh    $a0, ($s1)
/* 00E728 8000DB28 25EF0008 */  addiu $t7, $t7, 8
/* 00E72C 8000DB2C 04810002 */  bgez  $a0, .L8000DB38
/* 00E730 8000DB30 00801021 */   addu  $v0, $a0, $zero

/* 00E734 8000DB34 24820007 */  addiu $v0, $a0, 7

.L8000DB38:
/* 00E738 8000DB38 000210C3 */  sra   $v0, $v0, 3
/* 00E73C 8000DB3C 18400002 */  blez  $v0, .L8000DB48
/* 00E740 8000DB40 24050800 */   li    $a1, 2048

/* 00E744 8000DB44 244507FF */  addiu $a1, $v0, 0x7ff

.L8000DB48:
/* 00E748 8000DB48 86240000 */  lh    $a0, ($s1)
/* 00E74C 8000DB4C 86220002 */  lh    $v0, 2($s1)
/* 00E750 8000DB50 00820018 */  mult  $a0, $v0
/* 00E754 8000DB54 00001012 */  mflo  $v0
/* 00E758 8000DB58 24420001 */  addiu $v0, $v0, 1
/* 00E75C 8000DB5C 00021043 */  sra   $v0, $v0, 1
/* 00E760 8000DB60 2443FFFF */  addiu $v1, $v0, -1
/* 00E764 8000DB64 28620800 */  slti  $v0, $v1, 0x800
/* 00E768 8000DB68 50400001 */  beql  $v0, $zero, .L8000DB70
/* 00E76C 8000DB6C 240307FF */   li    $v1, 2047

.L8000DB70:
/* 00E770 8000DB70 00803021 */  addu  $a2, $a0, $zero
/* 00E774 8000DB74 30620FFF */  andi  $v0, $v1, 0xfff
/* 00E778 8000DB78 00021300 */  sll   $v0, $v0, 0xc
/* 00E77C 8000DB7C 3C030700 */  lui   $v1, %hi(0x06FFFFFF) # $v1, 0x700
/* 00E780 8000DB80 04810002 */  bgez  $a0, .L8000DB8C
/* 00E784 8000DB84 00433825 */   or    $a3, $v0, $v1

/* 00E788 8000DB88 24860007 */  addiu $a2, $a0, 7

.L8000DB8C:
/* 00E78C 8000DB8C 000610C3 */  sra   $v0, $a2, 3
/* 00E790 8000DB90 5840000D */  blezl $v0, .L8000DBC8
/* 00E794 8000DB94 30A20FFF */   andi  $v0, $a1, 0xfff

/* 00E798 8000DB98 00A2001A */  div   $zero, $a1, $v0
/* 00E79C 8000DB9C 14400002 */  bnez  $v0, .L8000DBA8
/* 00E7A0 8000DBA0 00000000 */   nop   

/* 00E7A4 8000DBA4 0007000D */  break 7

.L8000DBA8:
/* 00E7A8 8000DBA8 2401FFFF */  li    $at, -1
/* 00E7AC 8000DBAC 14410004 */  bne   $v0, $at, .L8000DBC0
/* 00E7B0 8000DBB0 3C018000 */   lui   $at, 0x8000

/* 00E7B4 8000DBB4 14A10002 */  bne   $a1, $at, .L8000DBC0
/* 00E7B8 8000DBB8 00000000 */   nop   

/* 00E7BC 8000DBBC 0006000D */  break 6

.L8000DBC0:
/* 00E7C0 8000DBC0 00001012 */  mflo  $v0
/* 00E7C4 8000DBC4 30420FFF */  andi  $v0, $v0, 0xfff

.L8000DBC8:
/* 00E7C8 8000DBC8 00E21025 */  or    $v0, $a3, $v0
/* 00E7CC 8000DBCC 01E01821 */  addu  $v1, $t7, $zero
/* 00E7D0 8000DBD0 25EF0008 */  addiu $t7, $t7, 8
/* 00E7D4 8000DBD4 01E02821 */  addu  $a1, $t7, $zero
/* 00E7D8 8000DBD8 25EF0008 */  addiu $t7, $t7, 8
/* 00E7DC 8000DBDC AD020004 */  sw    $v0, %lo(0xE6000004)($t0)
/* 00E7E0 8000DBE0 3C02E700 */  lui   $v0, 0xe700
/* 00E7E4 8000DBE4 AC620000 */  sw    $v0, ($v1)
/* 00E7E8 8000DBE8 AC600004 */  sw    $zero, %lo(0x07000004)($v1)
/* 00E7EC 8000DBEC 86240000 */  lh    $a0, ($s1)
/* 00E7F0 8000DBF0 33230003 */  andi  $v1, $t9, 3
/* 00E7F4 8000DBF4 00031C80 */  sll   $v1, $v1, 0x12
/* 00E7F8 8000DBF8 3242000F */  andi  $v0, $s2, 0xf
/* 00E7FC 8000DBFC 00021380 */  sll   $v0, $v0, 0xe
/* 00E800 8000DC00 00621825 */  or    $v1, $v1, $v0
/* 00E804 8000DC04 32620003 */  andi  $v0, $s3, 3
/* 00E808 8000DC08 00021200 */  sll   $v0, $v0, 8
/* 00E80C 8000DC0C 00621825 */  or    $v1, $v1, $v0
/* 00E810 8000DC10 3302000F */  andi  $v0, $t8, 0xf
/* 00E814 8000DC14 00021100 */  sll   $v0, $v0, 4
/* 00E818 8000DC18 00621825 */  or    $v1, $v1, $v0
/* 00E81C 8000DC1C 3C02F548 */  lui   $v0, 0xf548
/* 00E820 8000DC20 ACA30004 */  sw    $v1, 4($a1)
/* 00E824 8000DC24 24840007 */  addiu $a0, $a0, 7
/* 00E828 8000DC28 000420C3 */  sra   $a0, $a0, 3
/* 00E82C 8000DC2C 308401FF */  andi  $a0, $a0, 0x1ff
/* 00E830 8000DC30 00042240 */  sll   $a0, $a0, 9
/* 00E834 8000DC34 00822025 */  or    $a0, $a0, $v0
/* 00E838 8000DC38 ACA40000 */  sw    $a0, ($a1)
/* 00E83C 8000DC3C 01E02021 */  addu  $a0, $t7, $zero
/* 00E840 8000DC40 3C02F200 */  lui   $v0, 0xF200

.L8000DC44:
/* 00E844 8000DC44 AC820000 */  sw    $v0, ($a0)
/* 00E848 8000DC48 86230000 */  lh    $v1, ($s1)
/* 00E84C 8000DC4C 25EF0008 */  addiu $t7, $t7, 8
/* 00E850 8000DC50 86220002 */  lh    $v0, 2($s1)
/* 00E854 8000DC54 2463FFFF */  addiu $v1, $v1, -1
/* 00E858 8000DC58 00031880 */  sll   $v1, $v1, 2
/* 00E85C 8000DC5C 30630FFF */  andi  $v1, $v1, 0xfff
/* 00E860 8000DC60 00031B00 */  sll   $v1, $v1, 0xc
/* 00E864 8000DC64 2442FFFF */  addiu $v0, $v0, -1
/* 00E868 8000DC68 00021080 */  sll   $v0, $v0, 2
/* 00E86C 8000DC6C 30420FFF */  andi  $v0, $v0, 0xfff
/* 00E870 8000DC70 00621825 */  or    $v1, $v1, $v0
/* 00E874 8000DC74 AC830004 */  sw    $v1, 4($a0)
/* 00E878 8000DC78 01E01821 */  addu  $v1, $t7, $zero
/* 00E87C 8000DC7C 3C02DF00 */  lui   $v0, 0xdf00
/* 00E880 8000DC80 AC620000 */  sw    $v0, ($v1)
/* 00E884 8000DC84 AC600004 */  sw    $zero, 4($v1)

.L8000DC88:
/* 00E888 8000DC88 8FBF0060 */  lw    $ra, 0x60($sp)
/* 00E88C 8000DC8C 8FB3005C */  lw    $s3, 0x5c($sp)
/* 00E890 8000DC90 8FB20058 */  lw    $s2, 0x58($sp)
/* 00E894 8000DC94 8FB10054 */  lw    $s1, 0x54($sp)
/* 00E898 8000DC98 8FB00050 */  lw    $s0, 0x50($sp)
/* 00E89C 8000DC9C 03E00008 */  jr    $ra
/* 00E8A0 8000DCA0 27BD0068 */   addiu $sp, $sp, 0x68
