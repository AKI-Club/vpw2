glabel func_8000DE38
/* 00EA38 8000DE38 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00EA3C 8000DE3C AFB00010 */  sw    $s0, 0x10($sp)
/* 00EA40 8000DE40 00808021 */  addu  $s0, $a0, $zero
/* 00EA44 8000DE44 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00EA48 8000DE48 AFB40020 */  sw    $s4, 0x20($sp)
/* 00EA4C 8000DE4C AFB3001C */  sw    $s3, 0x1c($sp)
/* 00EA50 8000DE50 AFB20018 */  sw    $s2, 0x18($sp)
/* 00EA54 8000DE54 AFB10014 */  sw    $s1, 0x14($sp)
/* 00EA58 8000DE58 96030002 */  lhu   $v1, 2($s0)
/* 00EA5C 8000DE5C 3C025555 */  lui   $v0, (0x55555556 >> 16) # lui $v0, 0x5555
/* 00EA60 8000DE60 34425556 */  ori   $v0, (0x55555556 & 0xFFFF) # ori $v0, $v0, 0x5556
/* 00EA64 8000DE64 24630001 */  addiu $v1, $v1, 1
/* 00EA68 8000DE68 00031C00 */  sll   $v1, $v1, 0x10
/* 00EA6C 8000DE6C 00032403 */  sra   $a0, $v1, 0x10
/* 00EA70 8000DE70 00820018 */  mult  $a0, $v0
/* 00EA74 8000DE74 00A09821 */  addu  $s3, $a1, $zero
/* 00EA78 8000DE78 00C08821 */  addu  $s1, $a2, $zero
/* 00EA7C 8000DE7C 00E0A021 */  addu  $s4, $a3, $zero
/* 00EA80 8000DE80 00031FC3 */  sra   $v1, $v1, 0x1f
/* 00EA84 8000DE84 00004010 */  mfhi  $t0
/* 00EA88 8000DE88 01031823 */  subu  $v1, $t0, $v1
/* 00EA8C 8000DE8C 00031040 */  sll   $v0, $v1, 1
/* 00EA90 8000DE90 00431021 */  addu  $v0, $v0, $v1
/* 00EA94 8000DE94 00822023 */  subu  $a0, $a0, $v0
/* 00EA98 8000DE98 A6040002 */  sh    $a0, 2($s0)
/* 00EA9C 8000DE9C 00042400 */  sll   $a0, $a0, 0x10
/* 00EAA0 8000DEA0 00042383 */  sra   $a0, $a0, 0xe
/* 00EAA4 8000DEA4 00902021 */  addu  $a0, $a0, $s0
/* 00EAA8 8000DEA8 8C920008 */  lw    $s2, 8($a0)
/* 00EAAC 8000DEAC 82260002 */  lb    $a2, 2($s1)
/* 00EAB0 8000DEB0 8E240004 */  lw    $a0, 4($s1)
/* 00EAB4 8000DEB4 02402821 */  addu  $a1, $s2, $zero
/* 00EAB8 8000DEB8 0C00C888 */  jal   bcopy
/* 00EABC 8000DEBC 00063100 */   sll   $a2, $a2, 4

/* 00EAC0 8000DEC0 86020002 */  lh    $v0, 2($s0)
/* 00EAC4 8000DEC4 00021080 */  sll   $v0, $v0, 2
/* 00EAC8 8000DEC8 00501021 */  addu  $v0, $v0, $s0
/* 00EACC 8000DECC 8C430018 */  lw    $v1, 0x18($v0)
/* 00EAD0 8000DED0 3C06DE00 */  lui   $a2, 0xde00
/* 00EAD4 8000DED4 00602021 */  addu  $a0, $v1, $zero
/* 00EAD8 8000DED8 AC860000 */  sw    $a2, ($a0)
/* 00EADC 8000DEDC 8E820008 */  lw    $v0, 8($s4)
/* 00EAE0 8000DEE0 3C058000 */  lui   $a1, 0x8000
/* 00EAE4 8000DEE4 24630008 */  addiu $v1, $v1, 8
/* 00EAE8 8000DEE8 00451023 */  subu  $v0, $v0, $a1
/* 00EAEC 8000DEEC AC820004 */  sw    $v0, 4($a0)
/* 00EAF0 8000DEF0 00602021 */  addu  $a0, $v1, $zero
/* 00EAF4 8000DEF4 AC860000 */  sw    $a2, ($a0)
/* 00EAF8 8000DEF8 8E220008 */  lw    $v0, 8($s1)
/* 00EAFC 8000DEFC 24630008 */  addiu $v1, $v1, 8
/* 00EB00 8000DF00 00451023 */  subu  $v0, $v0, $a1
/* 00EB04 8000DF04 AC820004 */  sw    $v0, 4($a0)
/* 00EB08 8000DF08 3C02DF00 */  lui   $v0, 0xdf00
/* 00EB0C 8000DF0C AC620000 */  sw    $v0, ($v1)
/* 00EB10 8000DF10 AC600004 */  sw    $zero, 4($v1)
/* 00EB14 8000DF14 AE72000C */  sw    $s2, 0xc($s3)
/* 00EB18 8000DF18 82250002 */  lb    $a1, 2($s1)
/* 00EB1C 8000DF1C 0C000635 */  jal   func_800018D4
/* 00EB20 8000DF20 02602021 */   addu  $a0, $s3, $zero

/* 00EB24 8000DF24 8E630014 */  lw    $v1, 0x14($s3)
/* 00EB28 8000DF28 AC720030 */  sw    $s2, 0x30($v1)
/* 00EB2C 8000DF2C 92220002 */  lbu   $v0, 2($s1)
/* 00EB30 8000DF30 00021600 */  sll   $v0, $v0, 0x18
/* 00EB34 8000DF34 00021603 */  sra   $v0, $v0, 0x18
/* 00EB38 8000DF38 A462002C */  sh    $v0, 0x2c($v1)
/* 00EB3C 8000DF3C 92220003 */  lbu   $v0, 3($s1)
/* 00EB40 8000DF40 00021600 */  sll   $v0, $v0, 0x18
/* 00EB44 8000DF44 00021603 */  sra   $v0, $v0, 0x18
/* 00EB48 8000DF48 A462002E */  sh    $v0, 0x2e($v1)
/* 00EB4C 8000DF4C 86020002 */  lh    $v0, 2($s0)
/* 00EB50 8000DF50 00021080 */  sll   $v0, $v0, 2
/* 00EB54 8000DF54 00501021 */  addu  $v0, $v0, $s0
/* 00EB58 8000DF58 8C420018 */  lw    $v0, 0x18($v0)
/* 00EB5C 8000DF5C 02602021 */  addu  $a0, $s3, $zero
/* 00EB60 8000DF60 0C00061B */  jal   func_8000186C
/* 00EB64 8000DF64 AC620034 */   sw    $v0, 0x34($v1)

/* 00EB68 8000DF68 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00EB6C 8000DF6C 8FB40020 */  lw    $s4, 0x20($sp)
/* 00EB70 8000DF70 8FB3001C */  lw    $s3, 0x1c($sp)
/* 00EB74 8000DF74 8FB20018 */  lw    $s2, 0x18($sp)
/* 00EB78 8000DF78 8FB10014 */  lw    $s1, 0x14($sp)
/* 00EB7C 8000DF7C 8FB00010 */  lw    $s0, 0x10($sp)
/* 00EB80 8000DF80 03E00008 */  jr    $ra
/* 00EB84 8000DF84 27BD0028 */   addiu $sp, $sp, 0x28
