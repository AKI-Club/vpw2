# Params:
# $a0 - ? address
# $a1 - ? address

glabel func3_800E9418
/* 0E3AC8 800E9418 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E3ACC 800E941C AFB20018 */  sw    $s2, 0x18($sp)
/* 0E3AD0 800E9420 00A09021 */  addu  $s2, $a1, $zero
/* 0E3AD4 800E9424 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E3AD8 800E9428 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E3ADC 800E942C AFB00010 */  sw    $s0, 0x10($sp)
/* 0E3AE0 800E9430 96460004 */  lhu   $a2, 4($s2)
/* 0E3AE4 800E9434 00808821 */  addu  $s1, $a0, $zero
/* 0E3AE8 800E9438 24C50001 */  addiu $a1, $a2, 1
/* 0E3AEC 800E943C 00052C00 */  sll   $a1, $a1, 0x10
/* 0E3AF0 800E9440 00052C03 */  sra   $a1, $a1, 0x10
/* 0E3AF4 800E9444 00063400 */  sll   $a2, $a2, 0x10
/* 0E3AF8 800E9448 0C00313C */  jal   func_8000C4F0
/* 0E3AFC 800E944C 00063403 */   sra   $a2, $a2, 0x10

/* 0E3B00 800E9450 00004021 */  addu  $t0, $zero, $zero
/* 0E3B04 800E9454 00008021 */  addu  $s0, $zero, $zero
/* 0E3B08 800E9458 8E270024 */  lw    $a3, 0x24($s1)
/* 0E3B0C 800E945C 00003021 */  addu  $a2, $zero, $zero
/* 0E3B10 800E9460 3409FFFF */  li    $t1, 65535

.L3_800E9464:
/* 0E3B14 800E9464 94E20000 */  lhu   $v0, ($a3)
/* 0E3B18 800E9468 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0E3B1C 800E946C 10490011 */  beq   $v0, $t1, .L3_800E94B4
/* 0E3B20 800E9470 24E70002 */   addiu $a3, $a3, 2

/* 0E3B24 800E9474 00002021 */  addu  $a0, $zero, $zero
/* 0E3B28 800E9478 00402821 */  addu  $a1, $v0, $zero

.L3_800E947C:
/* 0E3B2C 800E947C 3C028015 */  lui   $v0, %hi(tbl_80152018)
/* 0E3B30 800E9480 00441021 */  addu  $v0, $v0, $a0
/* 0E3B34 800E9484 80422018 */  lb    $v0, %lo(tbl_80152018)($v0)
/* 0E3B38 800E9488 00451007 */  srav  $v0, $a1, $v0
/* 0E3B3C 800E948C 3043001F */  andi  $v1, $v0, 0x1f
/* 0E3B40 800E9490 0103102A */  slt   $v0, $t0, $v1
/* 0E3B44 800E9494 50400004 */  beql  $v0, $zero, .L3_800E94A8
/* 0E3B48 800E9498 24840001 */   addiu $a0, $a0, 1

/* 0E3B4C 800E949C 00604021 */  addu  $t0, $v1, $zero
/* 0E3B50 800E94A0 00808021 */  addu  $s0, $a0, $zero
/* 0E3B54 800E94A4 24840001 */  addiu $a0, $a0, 1

.L3_800E94A8:
/* 0E3B58 800E94A8 2C820003 */  sltiu $v0, $a0, 3
/* 0E3B5C 800E94AC 1440FFF3 */  bnez  $v0, .L3_800E947C
/* 0E3B60 800E94B0 00000000 */   nop   

.L3_800E94B4:
/* 0E3B64 800E94B4 24C60001 */  addiu $a2, $a2, 1
/* 0E3B68 800E94B8 2CC20010 */  sltiu $v0, $a2, 0x10
/* 0E3B6C 800E94BC 1440FFE9 */  bnez  $v0, .L3_800E9464
/* 0E3B70 800E94C0 02202021 */   addu  $a0, $s1, $zero

/* 0E3B74 800E94C4 02402821 */  addu  $a1, $s2, $zero
/* 0E3B78 800E94C8 0C03A4C7 */  jal   func3_800E931C
/* 0E3B7C 800E94CC 321000FF */   andi  $s0, $s0, 0xff

/* 0E3B80 800E94D0 8E240024 */  lw    $a0, 0x24($s1)
/* 0E3B84 800E94D4 0C004213 */  jal   func_8001084C
/* 0E3B88 800E94D8 02002821 */   addu  $a1, $s0, $zero

/* 0E3B8C 800E94DC 8E220018 */  lw    $v0, 0x18($s1)
/* 0E3B90 800E94E0 3C08E200 */  lui   $t0, (0xE200001C >> 16) # lui $t0, 0xe200
/* 0E3B94 800E94E4 3508001C */  ori   $t0, (0xE200001C & 0xFFFF) # ori $t0, $t0, 0x1c
/* 0E3B98 800E94E8 3C060050 */  lui   $a2, (0x00504240 >> 16) # lui $a2, 0x50
/* 0E3B9C 800E94EC 34C64240 */  ori   $a2, (0x00504240 & 0xFFFF) # ori $a2, $a2, 0x4240
/* 0E3BA0 800E94F0 3C07FC12 */  lui   $a3, (0xFC121824 >> 16) # lui $a3, 0xfc12
/* 0E3BA4 800E94F4 34E71824 */  ori   $a3, (0xFC121824 & 0xFFFF) # ori $a3, $a3, 0x1824
/* 0E3BA8 800E94F8 3C04FF33 */  lui   $a0, (0xFF33FFFF >> 16) # lui $a0, 0xff33
/* 0E3BAC 800E94FC 3484FFFF */  ori   $a0, (0xFF33FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0E3BB0 800E9500 3C05E300 */  lui   $a1, (0xE3000A01 >> 16) # lui $a1, 0xe300
/* 0E3BB4 800E9504 34A50A01 */  ori   $a1, (0xE3000A01 & 0xFFFF) # ori $a1, $a1, 0xa01
/* 0E3BB8 800E9508 00401821 */  addu  $v1, $v0, $zero
/* 0E3BBC 800E950C 24420008 */  addiu $v0, $v0, 8
/* 0E3BC0 800E9510 AC680000 */  sw    $t0, ($v1)
/* 0E3BC4 800E9514 AC660004 */  sw    $a2, 4($v1)
/* 0E3BC8 800E9518 AC470000 */  sw    $a3, ($v0)
/* 0E3BCC 800E951C AC440004 */  sw    $a0, 4($v0)
/* 0E3BD0 800E9520 24420008 */  addiu $v0, $v0, 8
/* 0E3BD4 800E9524 AC450000 */  sw    $a1, ($v0)
/* 0E3BD8 800E9528 AC400004 */  sw    $zero, 4($v0)
/* 0E3BDC 800E952C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E3BE0 800E9530 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E3BE4 800E9534 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E3BE8 800E9538 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E3BEC 800E953C 03E00008 */  jr    $ra
/* 0E3BF0 800E9540 27BD0020 */   addiu $sp, $sp, 0x20
