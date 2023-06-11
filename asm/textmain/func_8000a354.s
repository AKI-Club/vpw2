# related to stables

# Params:
# $a0 - Stable number?
# $a1 - ?

glabel func_8000A354
/* 00AF54 8000A354 2C820011 */  sltiu $v0, $a0, 0x11 # max number of stables
/* 00AF58 8000A358 1040000B */  beqz  $v0, .L8000A388
/* 00AF5C 8000A35C 00000000 */   nop   

/* 00AF60 8000A360 04A00009 */  bltz  $a1, .L8000A388
/* 00AF64 8000A364 000410C0 */   sll   $v0, $a0, 3

/* 00AF68 8000A368 00441023 */  subu  $v0, $v0, $a0
/* 00AF6C 8000A36C 000220C0 */  sll   $a0, $v0, 3
# number of wrestlers in stable
/* 00AF70 8000A370 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AF74 8000A374 00441021 */  addu  $v0, $v0, $a0
/* 00AF78 8000A378 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AF7C 8000A37C 00A2102A */  slt   $v0, $a1, $v0
/* 00AF80 8000A380 14400004 */  bnez  $v0, .L8000A394
/* 00AF84 8000A384 00051080 */   sll   $v0, $a1, 2

.L8000A388:
/* 00AF88 8000A388 3C028004 */  lui   $v0, %hi(D_8003EFC0) # $v0, 0x8004
/* 00AF8C 8000A38C 080028E9 */  j     .L8000A3A4
/* 00AF90 8000A390 2442EFC0 */   addiu $v0, %lo(D_8003EFC0) # addiu $v0, $v0, -0x1040

.L8000A394:
/* 00AF94 8000A394 3C03800A */  lui   $v1, %hi(bssMain_800A4510) # $v1, 0x800a
/* 00AF98 8000A398 24634510 */  addiu $v1, %lo(bssMain_800A4510) # addiu $v1, $v1, 0x4510
/* 00AF9C 8000A39C 00431021 */  addu  $v0, $v0, $v1
/* 00AFA0 8000A3A0 00821021 */  addu  $v0, $a0, $v0

.L8000A3A4:
/* 00AFA4 8000A3A4 03E00008 */  jr    $ra
/* 00AFA8 8000A3A8 94420002 */   lhu   $v0, 2($v0)
