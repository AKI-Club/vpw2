glabel SetupFiletable
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
