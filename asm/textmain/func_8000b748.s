# Params:
# $a0 - Wrestler ID4
# $a1 - costume number
# $a2 - ?? address

glabel func_8000B748
/* 00C348 8000B748 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C34C 8000B74C 00803821 */  addu  $a3, $a0, $zero
/* 00C350 8000B750 AFB00010 */  sw    $s0, 0x10($sp)
/* 00C354 8000B754 00C08021 */  addu  $s0, $a2, $zero
/* 00C358 8000B758 30E30F00 */  andi  $v1, $a3, 0xF00
/* 00C35C 8000B75C 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00C360 8000B760 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00C364 8000B764 AFB20018 */  sw    $s2, 0x18($sp)
/* 00C368 8000B768 14620003 */  bne   $v1, $v0, .L8000B778
/* 00C36C 8000B76C AFB10014 */   sw    $s1, 0x14($sp)

# get ID2 for mempak wrestler
/* 00C370 8000B770 08002DEA */  j     .L8000B7A8
/* 00C374 8000B774 24E2F372 */   addiu $v0, $a3, -0xc8e

.L8000B778:
/* 00C378 8000B778 00001821 */  addu  $v1, $zero, $zero
/* 00C37C 8000B77C 3C068004 */  lui   $a2, %hi(ptrTbl_WrestlerData) # $a2, 0x8004
/* 00C380 8000B780 24C6FAB0 */  addiu $a2, %lo(ptrTbl_WrestlerData) # addiu $a2, $a2, -0x550

.L8000B784:
/* 00C384 8000B784 8CC20000 */  lw    $v0, ($a2)
/* 00C388 8000B788 94420000 */  lhu   $v0, ($v0)
/* 00C38C 8000B78C 10470006 */  beq   $v0, $a3, .L8000B7A8
/* 00C390 8000B790 00601021 */   addu  $v0, $v1, $zero

/* 00C394 8000B794 24630001 */  addiu $v1, $v1, 1
/* 00C398 8000B798 28620073 */  slti  $v0, $v1, 0x73
/* 00C39C 8000B79C 1440FFF9 */  bnez  $v0, .L8000B784
/* 00C3A0 8000B7A0 24C60004 */   addiu $a2, $a2, 4

/* 00C3A4 8000B7A4 00001021 */  addu  $v0, $zero, $zero

.L8000B7A8:
/* 00C3A8 8000B7A8 1040009A */  beqz  $v0, .L8000BA14
/* 00C3AC 8000B7AC 30E30F00 */   andi  $v1, $a3, 0xF00

/* 00C3B0 8000B7B0 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00C3B4 8000B7B4 14620003 */  bne   $v1, $v0, .L8000B7C4
/* 00C3B8 8000B7B8 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00C3BC 8000B7BC 08002DFC */  j     .L8000B7F0
/* 00C3C0 8000B7C0 24E2F372 */   addiu $v0, $a3, -0xc8e

.L8000B7C4:
/* 00C3C4 8000B7C4 3C068004 */  lui   $a2, %hi(ptrTbl_WrestlerData) # $a2, 0x8004
/* 00C3C8 8000B7C8 24C6FAB0 */  addiu $a2, %lo(ptrTbl_WrestlerData) # addiu $a2, $a2, -0x550

.L8000B7CC:
/* 00C3CC 8000B7CC 8CC20000 */  lw    $v0, ($a2)
/* 00C3D0 8000B7D0 94420000 */  lhu   $v0, ($v0)
/* 00C3D4 8000B7D4 10470006 */  beq   $v0, $a3, .L8000B7F0
/* 00C3D8 8000B7D8 00601021 */   addu  $v0, $v1, $zero

/* 00C3DC 8000B7DC 24630001 */  addiu $v1, $v1, 1
/* 00C3E0 8000B7E0 28620073 */  slti  $v0, $v1, 0x73
/* 00C3E4 8000B7E4 1440FFF9 */  bnez  $v0, .L8000B7CC
/* 00C3E8 8000B7E8 24C60004 */   addiu $a2, $a2, 4

/* 00C3EC 8000B7EC 00001021 */  addu  $v0, $zero, $zero

.L8000B7F0:
/* 00C3F0 8000B7F0 00401821 */  addu  $v1, $v0, $zero
/* 00C3F4 8000B7F4 2462FF8D */  addiu $v0, $v1, -0x73
/* 00C3F8 8000B7F8 2C420010 */  sltiu $v0, $v0, 0x10
/* 00C3FC 8000B7FC 1040000A */  beqz  $v0, .L8000B828
/* 00C400 8000B800 00000000 */   nop   

/* 00C404 8000B804 3C068004 */  lui   $a2, %hi(dynPtr_MempakMovesets) # $a2, 0x8004
/* 00C408 8000B808 8CC6FD98 */  lw    $a2, %lo(dynPtr_MempakMovesets)($a2)
/* 00C40C 8000B80C 10C00006 */  beqz  $a2, .L8000B828
/* 00C410 8000B810 00031040 */   sll   $v0, $v1, 1

/* 00C414 8000B814 00431021 */  addu  $v0, $v0, $v1
/* 00C418 8000B818 00021180 */  sll   $v0, $v0, 6
/* 00C41C 8000B81C 2442A9C0 */  addiu $v0, $v0, -0x5640
/* 00C420 8000B820 08002E18 */  j     .L8000B860
/* 00C424 8000B824 00C22021 */   addu  $a0, $a2, $v0

.L8000B828:
/* 00C428 8000B828 3C048004 */  lui   $a0, %hi(dynPtr_DefaultMovesets) # $a0, 0x8004
/* 00C42C 8000B82C 8C84FD90 */  lw    $a0, %lo(dynPtr_DefaultMovesets)($a0)
/* 00C430 8000B830 10800004 */  beqz  $a0, .L8000B844
/* 00C434 8000B834 2462FFFF */   addiu $v0, $v1, -1

/* 00C438 8000B838 2C420072 */  sltiu $v0, $v0, 0x72
/* 00C43C 8000B83C 14400005 */  bnez  $v0, .L8000B854
/* 00C440 8000B840 00031040 */   sll   $v0, $v1, 1

.L8000B844:
/* 00C444 8000B844 3C048007 */  lui   $a0, %hi(bssMain_8006FD50) # $a0, 0x8007
/* 00C448 8000B848 2484FD50 */  addiu $a0, %lo(bssMain_8006FD50) # addiu $a0, $a0, -0x2b0
/* 00C44C 8000B84C 08002E19 */  j     .L8000B864
/* 00C450 8000B850 30E30F00 */   andi  $v1, $a3, 0xF00

.L8000B854:
/* 00C454 8000B854 00431021 */  addu  $v0, $v0, $v1
/* 00C458 8000B858 00021180 */  sll   $v0, $v0, 6
/* 00C45C 8000B85C 00822021 */  addu  $a0, $a0, $v0

.L8000B860:
/* 00C460 8000B860 30E30F00 */  andi  $v1, $a3, 0xF00

.L8000B864:
/* 00C464 8000B864 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00C468 8000B868 14620003 */  bne   $v1, $v0, .L8000B878
/* 00C46C 8000B86C 00809021 */   addu  $s2, $a0, $zero

# get ID2 for mempak wrestler
/* 00C470 8000B870 08002E2A */  j     .L8000B8A8
/* 00C474 8000B874 24E2F372 */   addiu $v0, $a3, -0xc8e

.L8000B878:
/* 00C478 8000B878 00001821 */  addu  $v1, $zero, $zero
/* 00C47C 8000B87C 3C068004 */  lui   $a2, %hi(ptrTbl_WrestlerData) # $a2, 0x8004
/* 00C480 8000B880 24C6FAB0 */  addiu $a2, %lo(ptrTbl_WrestlerData) # addiu $a2, $a2, -0x550

.L8000B884:
/* 00C484 8000B884 8CC20000 */  lw    $v0, ($a2)
/* 00C488 8000B888 94420000 */  lhu   $v0, ($v0)
/* 00C48C 8000B88C 10470006 */  beq   $v0, $a3, .L8000B8A8
/* 00C490 8000B890 00601021 */   addu  $v0, $v1, $zero

/* 00C494 8000B894 24630001 */  addiu $v1, $v1, 1
/* 00C498 8000B898 28620073 */  slti  $v0, $v1, 0x73
/* 00C49C 8000B89C 1440FFF9 */  bnez  $v0, .L8000B884
/* 00C4A0 8000B8A0 24C60004 */   addiu $a2, $a2, 4

/* 00C4A4 8000B8A4 00001021 */  addu  $v0, $zero, $zero

.L8000B8A8:
/* 00C4A8 8000B8A8 00401821 */  addu  $v1, $v0, $zero
/* 00C4AC 8000B8AC 2466FF8D */  addiu $a2, $v1, -0x73
/* 00C4B0 8000B8B0 2CC20010 */  sltiu $v0, $a2, 0x10
/* 00C4B4 8000B8B4 10400005 */  beqz  $v0, .L8000B8CC
/* 00C4B8 8000B8B8 00000000 */   nop   

/* 00C4BC 8000B8BC 3C048004 */  lui   $a0, %hi(dynPtr_MempakAppearance) # $a0, 0x8004
/* 00C4C0 8000B8C0 8C84FD94 */  lw    $a0, %lo(dynPtr_MempakAppearance)($a0)
/* 00C4C4 8000B8C4 1480000B */  bnez  $a0, .L8000B8F4
/* 00C4C8 8000B8C8 00061080 */   sll   $v0, $a2, 2

.L8000B8CC:
/* 00C4CC 8000B8CC 3C048004 */  lui   $a0, %hi(dynPtr_DefaultAppearance) # $a0, 0x8004
/* 00C4D0 8000B8D0 8C84FD8C */  lw    $a0, %lo(dynPtr_DefaultAppearance)($a0)
/* 00C4D4 8000B8D4 10800004 */  beqz  $a0, .L8000B8E8
/* 00C4D8 8000B8D8 2462FFFF */   addiu $v0, $v1, -1

/* 00C4DC 8000B8DC 2C420072 */  sltiu $v0, $v0, 0x72
/* 00C4E0 8000B8E0 14400004 */  bnez  $v0, .L8000B8F4
/* 00C4E4 8000B8E4 00031080 */   sll   $v0, $v1, 2

.L8000B8E8:
/* 00C4E8 8000B8E8 3C038007 */  lui   $v1, %hi(bssMain_8006FD10) # $v1, 0x8007
/* 00C4EC 8000B8EC 08002E43 */  j     .L8000B90C
/* 00C4F0 8000B8F0 2463FD10 */   addiu $v1, %lo(bssMain_8006FD10) # addiu $v1, $v1, -0x2f0

.L8000B8F4:
/* 00C4F4 8000B8F4 30A30003 */  andi  $v1, $a1, 3
/* 00C4F8 8000B8F8 00431021 */  addu  $v0, $v0, $v1
/* 00C4FC 8000B8FC 00021940 */  sll   $v1, $v0, 5
/* 00C500 8000B900 00621823 */  subu  $v1, $v1, $v0
/* 00C504 8000B904 00031840 */  sll   $v1, $v1, 1
/* 00C508 8000B908 00831821 */  addu  $v1, $a0, $v1

.L8000B90C:
/* 00C50C 8000B90C 92420004 */  lbu   $v0, 4($s2)
/* 00C510 8000B910 A2020001 */  sb    $v0, 1($s0)
/* 00C514 8000B914 92420005 */  lbu   $v0, 5($s2)
/* 00C518 8000B918 00E02021 */  addu  $a0, $a3, $zero
/* 00C51C 8000B91C 00608821 */  addu  $s1, $v1, $zero
/* 00C520 8000B920 0C002B7B */  jal   func_8000ADEC
/* 00C524 8000B924 A2020002 */   sb    $v0, 2($s0)

/* 00C528 8000B928 94450000 */  lhu   $a1, ($v0)
/* 00C52C 8000B92C 24A30096 */  addiu $v1, $a1, 0x96
/* 00C530 8000B930 286200FB */  slti  $v0, $v1, 0xfb
/* 00C534 8000B934 1440000E */  bnez  $v0, .L8000B970
/* 00C538 8000B938 286200D3 */   slti  $v0, $v1, 0xd3

/* 00C53C 8000B93C 3C045555 */  lui   $a0, (0x55555556 >> 16) # lui $a0, 0x5555
/* 00C540 8000B940 34845556 */  ori   $a0, (0x55555556 & 0xFFFF) # ori $a0, $a0, 0x5556
/* 00C544 8000B944 24A3FF9B */  addiu $v1, $a1, -0x65
/* 00C548 8000B948 00031080 */  sll   $v0, $v1, 2
/* 00C54C 8000B94C 00431021 */  addu  $v0, $v0, $v1
/* 00C550 8000B950 000210C0 */  sll   $v0, $v0, 3
/* 00C554 8000B954 00440018 */  mult  $v0, $a0
/* 00C558 8000B958 000217C3 */  sra   $v0, $v0, 0x1f
/* 00C55C 8000B95C 00004010 */  mfhi  $t0
/* 00C560 8000B960 01021023 */  subu  $v0, $t0, $v0
/* 00C564 8000B964 00000000 */  nop   
/* 00C568 8000B968 08002E62 */  j     .L8000B988
/* 00C56C 8000B96C 244300AA */   addiu $v1, $v0, 0xaa

.L8000B970:
/* 00C570 8000B970 14400003 */  bnez  $v0, .L8000B980
/* 00C574 8000B974 286200AA */   slti  $v0, $v1, 0xaa

/* 00C578 8000B978 08002E62 */  j     .L8000B988
/* 00C57C 8000B97C 240300D2 */   li    $v1, 210

.L8000B980:
/* 00C580 8000B980 54400001 */  bnezl $v0, .L8000B988
/* 00C584 8000B984 240300AA */   li    $v1, 170

.L8000B988:
/* 00C588 8000B988 3C046666 */  lui   $a0, (0x66666667 >> 16) # lui $a0, 0x6666
/* 00C58C 8000B98C 34846667 */  ori   $a0, (0x66666667 & 0xFFFF) # ori $a0, $a0, 0x6667
/* 00C590 8000B990 2463FF56 */  addiu $v1, $v1, -0xaa
/* 00C594 8000B994 00031200 */  sll   $v0, $v1, 8
/* 00C598 8000B998 00431023 */  subu  $v0, $v0, $v1
/* 00C59C 8000B99C 00440018 */  mult  $v0, $a0
/* 00C5A0 8000B9A0 000217C3 */  sra   $v0, $v0, 0x1f
/* 00C5A4 8000B9A4 00004010 */  mfhi  $t0
/* 00C5A8 8000B9A8 00081903 */  sra   $v1, $t0, 4
/* 00C5AC 8000B9AC 00621823 */  subu  $v1, $v1, $v0
/* 00C5B0 8000B9B0 A2030003 */  sb    $v1, 3($s0)
/* 00C5B4 8000B9B4 9243000A */  lbu   $v1, 0xa($s2)
/* 00C5B8 8000B9B8 264400AD */  addiu $a0, $s2, 0xad
/* 00C5BC 8000B9BC 00031040 */  sll   $v0, $v1, 1
/* 00C5C0 8000B9C0 00431021 */  addu  $v0, $v0, $v1
/* 00C5C4 8000B9C4 00021040 */  sll   $v0, $v0, 1
/* 00C5C8 8000B9C8 3C018010 */  lui   $at, %hi(tbl_80105F78)
/* 00C5CC 8000B9CC 00220821 */  addu  $at, $at, $v0
/* 00C5D0 8000B9D0 94225F78 */  lhu   $v0, %lo(tbl_80105F78)($at)
/* 00C5D4 8000B9D4 2645000C */  addiu $a1, $s2, 0xc
/* 00C5D8 8000B9D8 02003021 */  addu  $a2, $s0, $zero
/* 00C5DC 8000B9DC 0C03FA21 */  jal   func_800FE884
/* 00C5E0 8000B9E0 A2020000 */   sb    $v0, ($s0)

/* 00C5E4 8000B9E4 02202021 */  addu  $a0, $s1, $zero
/* 00C5E8 8000B9E8 260500F4 */  addiu $a1, $s0, 0xf4
/* 00C5EC 8000B9EC 0C00C888 */  jal   bcopy
/* 00C5F0 8000B9F0 24060019 */   li    $a2, 25

/* 00C5F4 8000B9F4 26240019 */  addiu $a0, $s1, 0x19
/* 00C5F8 8000B9F8 2605010D */  addiu $a1, $s0, 0x10d
/* 00C5FC 8000B9FC 0C00C888 */  jal   bcopy
/* 00C600 8000BA00 2406000F */   li    $a2, 15

/* 00C604 8000BA04 26240029 */  addiu $a0, $s1, 0x29
/* 00C608 8000BA08 2605011C */  addiu $a1, $s0, 0x11c
/* 00C60C 8000BA0C 0C00C888 */  jal   bcopy
/* 00C610 8000BA10 24060015 */   li    $a2, 21

.L8000BA14:
/* 00C614 8000BA14 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00C618 8000BA18 8FB20018 */  lw    $s2, 0x18($sp)
/* 00C61C 8000BA1C 8FB10014 */  lw    $s1, 0x14($sp)
/* 00C620 8000BA20 8FB00010 */  lw    $s0, 0x10($sp)
/* 00C624 8000BA24 03E00008 */  jr    $ra
/* 00C628 8000BA28 27BD0020 */   addiu $sp, $sp, 0x20

/*----------------------------------------------------------------------------*/
/* 00C62C 8000BA2C 00000000 */  nop   
