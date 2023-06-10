# related to number -> ASCII conversion?

# Params:
# $a0 - write address?
# $a1 -

glabel func_80006DC8
/* 0079C8 80006DC8 18A00012 */  blez  $a1, .L80006E14
/* 0079CC 80006DCC 00803021 */   addu  $a2, $a0, $zero

/* 0079D0 80006DD0 24070023 */  li    $a3, 0x23
/* 0079D4 80006DD4 24840001 */  addiu $a0, $a0, 1

.L80006DD8:
/* 0079D8 80006DD8 28A20023 */  slti  $v0, $a1, 0x23
/* 0079DC 80006DDC 14400002 */  bnez  $v0, .L80006DE8
/* 0079E0 80006DE0 00A01821 */   addu  $v1, $a1, $zero

/* 0079E4 80006DE4 24030023 */  li    $v1, 0x23

.L80006DE8:
/* 0079E8 80006DE8 2862000A */  slti  $v0, $v1, 0x0A
/* 0079EC 80006DEC 10400003 */  beqz  $v0, .L80006DFC
/* 0079F0 80006DF0 A0C70000 */   sb    $a3, ($a2)

/* 0079F4 80006DF4 08001B80 */  j     .L80006E00
/* 0079F8 80006DF8 24620030 */   addiu $v0, $v1, 0x30 # adding 0x30 yields matching number in ASCII

.L80006DFC:
/* 0079FC 80006DFC 24620037 */  addiu $v0, $v1, 0x37 # adding 0x0A to 0x0F yields matching capital letter in ASCII

.L80006E00:
/* 007A00 80006E00 A0820000 */  sb    $v0, ($a0)
/* 007A04 80006E04 24840002 */  addiu $a0, $a0, 2
/* 007A08 80006E08 00A32823 */  subu  $a1, $a1, $v1
/* 007A0C 80006E0C 1CA0FFF2 */  bgtz  $a1, .L80006DD8
/* 007A10 80006E10 24C60002 */   addiu $a2, $a2, 2

.L80006E14:
/* 007A14 80006E14 A0C00000 */  sb    $zero, ($a2)
/* 007A18 80006E18 03E00008 */  jr    $ra
/* 007A1C 80006E1C 00C01021 */   addu  $v0, $a2, $zero
