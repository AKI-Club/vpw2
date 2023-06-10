# Params:
# $a0 - pointer to write location?
# $a1 - pointer to ?
# $a2 - number of characters?

glabel func_80006B80
/* 007780 80006B80 27BDFFF8 */  addiu $sp, $sp, -8
/* 007784 80006B84 30C600FF */  andi  $a2, $a2, 0xff
/* 007788 80006B88 18C0001F */  blez  $a2, .L80006C08
/* 00778C 80006B8C 00004821 */   addu  $t1, $zero, $zero

# font characters location
/* 007790 80006B90 3C0A8007 */  lui   $t2, %hi(bssMain_8006E300) # $t2, 0x8007
/* 007794 80006B94 254AE300 */  addiu $t2, %lo(bssMain_8006E300) # addiu $t2, $t2, -0x1d00
/* 007798 80006B98 254B0001 */  addiu $t3, $t2, 1

.L80006B9C:
# text characters
/* 00779C 80006B9C 3C078004 */  lui   $a3, %hi(D_8003ED50) # $a3, 0x8004
/* 0077A0 80006BA0 24E7ED50 */  addiu $a3, %lo(D_8003ED50) # addiu $a3, $a3, -0x12b0
/* 0077A4 80006BA4 00001821 */  addu  $v1, $zero, $zero
/* 0077A8 80006BA8 90A80000 */  lbu   $t0, ($a1)
/* 0077AC 80006BAC 90E20000 */  lbu   $v0, ($a3)

.L80006BB0:
/* 0077B0 80006BB0 50480007 */  beql  $v0, $t0, .L80006BD0
/* 0077B4 80006BB4 00031840 */   sll   $v1, $v1, 1

/* 0077B8 80006BB8 24E70001 */  addiu $a3, $a3, 1
/* 0077BC 80006BBC 90E20000 */  lbu   $v0, ($a3)
/* 0077C0 80006BC0 1440FFFB */  bnez  $v0, .L80006BB0
/* 0077C4 80006BC4 24630001 */   addiu $v1, $v1, 1

/* 0077C8 80006BC8 00001821 */  addu  $v1, $zero, $zero
/* 0077CC 80006BCC 00031840 */  sll   $v1, $v1, 1

.L80006BD0:
/* 0077D0 80006BD0 006A1021 */  addu  $v0, $v1, $t2
/* 0077D4 80006BD4 90420000 */  lbu   $v0, ($v0)
/* 0077D8 80006BD8 006B1821 */  addu  $v1, $v1, $t3
/* 0077DC 80006BDC A0820000 */  sb    $v0, ($a0)
/* 0077E0 80006BE0 90620000 */  lbu   $v0, ($v1)
/* 0077E4 80006BE4 24A50001 */  addiu $a1, $a1, 1
/* 0077E8 80006BE8 A0820001 */  sb    $v0, 1($a0)
/* 0077EC 80006BEC 90A20000 */  lbu   $v0, ($a1)
/* 0077F0 80006BF0 10400005 */  beqz  $v0, .L80006C08
/* 0077F4 80006BF4 24840002 */   addiu $a0, $a0, 2

/* 0077F8 80006BF8 25290001 */  addiu $t1, $t1, 1
/* 0077FC 80006BFC 0126102A */  slt   $v0, $t1, $a2
/* 007800 80006C00 1440FFE6 */  bnez  $v0, .L80006B9C
/* 007804 80006C04 00000000 */   nop   

.L80006C08:
/* 007808 80006C08 A0800000 */  sb    $zero, ($a0)
/* 00780C 80006C0C 00801021 */  addu  $v0, $a0, $zero
/* 007810 80006C10 03E00008 */  jr    $ra
/* 007814 80006C14 27BD0008 */   addiu $sp, $sp, 8
