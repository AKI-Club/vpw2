glabel func_800171DC
/* 017DDC 800171DC 00002021 */  addu  $a0, $zero, $zero
/* 017DE0 800171E0 00001821 */  addu  $v1, $zero, $zero

.L800171E4:
/* 017DE4 800171E4 3C018008 */  lui   $at, %hi(bssMain_8007FA58)
/* 017DE8 800171E8 00230821 */  addu  $at, $at, $v1
/* 017DEC 800171EC A020FA58 */  sb    $zero, %lo(bssMain_8007FA58)($at)
/* 017DF0 800171F0 3C018008 */  lui   $at, %hi(bssMain_8007FA59)
/* 017DF4 800171F4 00230821 */  addu  $at, $at, $v1
/* 017DF8 800171F8 A020FA59 */  sb    $zero, %lo(bssMain_8007FA59)($at)
/* 017DFC 800171FC 3C018008 */  lui   $at, %hi(bssMain_8007FA5A)
/* 017E00 80017200 00230821 */  addu  $at, $at, $v1
/* 017E04 80017204 A020FA5A */  sb    $zero, %lo(bssMain_8007FA5A)($at)
/* 017E08 80017208 3C018008 */  lui   $at, %hi(bssMain_8007FA5B)
/* 017E0C 8001720C 00230821 */  addu  $at, $at, $v1
/* 017E10 80017210 A020FA5B */  sb    $zero, %lo(bssMain_8007FA5B)($at)
/* 017E14 80017214 3C01800A */  lui   $at, %hi(bssMain_8009B0CC)
/* 017E18 80017218 00240821 */  addu  $at, $at, $a0
/* 017E1C 8001721C A020B0CC */  sb    $zero, %lo(bssMain_8009B0CC)($at)
/* 017E20 80017220 3C01800A */  lui   $at, %hi(bssMain_8009D5C8)
/* 017E24 80017224 00240821 */  addu  $at, $at, $a0
/* 017E28 80017228 A020D5C8 */  sb    $zero, %lo(bssMain_8009D5C8)($at)
/* 017E2C 8001722C 24840001 */  addiu $a0, $a0, 1
/* 017E30 80017230 2C820004 */  sltiu $v0, $a0, 4
/* 017E34 80017234 1440FFEB */  bnez  $v0, .L800171E4
/* 017E38 80017238 24630004 */   addiu $v1, $v1, 4

/* 017E3C 8001723C 03E00008 */  jr    $ra
/* 017E40 80017240 00000000 */   nop   
