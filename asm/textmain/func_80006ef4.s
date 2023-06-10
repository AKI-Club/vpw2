# Params:
# $a0 - read address?

glabel func_80006EF4
# font characters location
/* 007AF4 80006EF4 3C058007 */  lui   $a1, %hi(bssMain_8006E300) # $a1, 0x8007
/* 007AF8 80006EF8 24A5E300 */  addiu $a1, %lo(bssMain_8006E300) # addiu $a1, $a1, -0x1d00
/* 007AFC 80006EFC 00003021 */  addu  $a2, $zero, $zero
/* 007B00 80006F00 90870001 */  lbu   $a3, 1($a0)

.L80006F04:
/* 007B04 80006F04 90A20001 */  lbu   $v0, 1($a1)
/* 007B08 80006F08 54E20005 */  bnel  $a3, $v0, .L80006F20
/* 007B0C 80006F0C 24A50002 */   addiu $a1, $a1, 2

/* 007B10 80006F10 90830000 */  lbu   $v1, ($a0)
/* 007B14 80006F14 90A20000 */  lbu   $v0, ($a1)
/* 007B18 80006F18 10620009 */  beq   $v1, $v0, .L80006F40
/* 007B1C 80006F1C 24A50002 */   addiu $a1, $a1, 2

.L80006F20:
/* 007B20 80006F20 90A20000 */  lbu   $v0, ($a1)
/* 007B24 80006F24 1440FFF7 */  bnez  $v0, .L80006F04
/* 007B28 80006F28 24C60002 */   addiu $a2, $a2, 2

/* 007B2C 80006F2C 2403FFFF */  li    $v1, -1

.L80006F30:
/* 007B30 80006F30 04610005 */  bgez  $v1, .L80006F48
/* 007B34 80006F34 00001021 */   addu  $v0, $zero, $zero

/* 007B38 80006F38 08001BD5 */  j     .L80006F54
/* 007B3C 80006F3C 00000000 */   nop   

.L80006F40:
/* 007B40 80006F40 08001BCC */  j     .L80006F30
/* 007B44 80006F44 00C01821 */   addu  $v1, $a2, $zero

.L80006F48:
# font characters location
/* 007B48 80006F48 3C028007 */  lui   $v0, %hi(bssMain_8006E300) # $v0, 0x8007
/* 007B4C 80006F4C 2442E300 */  addiu $v0, %lo(bssMain_8006E300) # addiu $v0, $v0, -0x1d00
/* 007B50 80006F50 00621021 */  addu  $v0, $v1, $v0

.L80006F54:
/* 007B54 80006F54 03E00008 */  jr    $ra
/* 007B58 80006F58 00000000 */   nop   
