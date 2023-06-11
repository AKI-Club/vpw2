# Params:
# $a0 - source address
# $a1 - ?

glabel func_8000BA54
/* 00C654 8000BA54 27BDFFF8 */  addiu $sp, $sp, -8
/* 00C658 8000BA58 00805021 */  addu  $t2, $a0, $zero
/* 00C65C 8000BA5C 8D47001C */  lw    $a3, 0x1c($t2)
/* 00C660 8000BA60 3C04D9FF */  lui   $a0, 0xD9FF
/* 00C664 8000BA64 3484F9FF */  ori   $a0, $a0, 0xF9FF
/* 00C668 8000BA68 3C06D9FF */  lui   $a2, 0xD9FF
/* 00C66C 8000BA6C 34C6FFFF */  ori   $a2, $a2, 0xFFFF
/* 00C670 8000BA70 00004821 */  addu  $t1, $zero, $zero
/* 00C674 8000BA74 81430002 */  lb    $v1, 2($t2)
/* 00C678 8000BA78 00E01021 */  addu  $v0, $a3, $zero
/* 00C67C 8000BA7C 24E70008 */  addiu $a3, $a3, 8
/* 00C680 8000BA80 AC440000 */  sw    $a0, ($v0)
/* 00C684 8000BA84 00E02021 */  addu  $a0, $a3, $zero
/* 00C688 8000BA88 AC400004 */  sw    $zero, 4($v0)
/* 00C68C 8000BA8C 24020400 */  li    $v0, 1024
/* 00C690 8000BA90 000318C0 */  sll   $v1, $v1, 3
/* 00C694 8000BA94 24630008 */  addiu $v1, $v1, 8
/* 00C698 8000BA98 AC860000 */  sw    $a2, ($a0)
/* 00C69C 8000BA9C AC820004 */  sw    $v0, 4($a0)
/* 00C6A0 8000BAA0 81420001 */  lb    $v0, 1($t2)
/* 00C6A4 8000BAA4 00A32821 */  addu  $a1, $a1, $v1
/* 00C6A8 8000BAA8 2442FFFF */  addiu $v0, $v0, -1
/* 00C6AC 8000BAAC 10400028 */  beqz  $v0, .L8000BB50
/* 00C6B0 8000BAB0 24E70008 */   addiu $a3, $a3, 8

/* 00C6B4 8000BAB4 3C0B0600 */  lui   $t3, 0x600
/* 00C6B8 8000BAB8 24A60005 */  addiu $a2, $a1, 5
/* 00C6BC 8000BABC 24E8FFFC */  addiu $t0, $a3, -4

.L8000BAC0:
/* 00C6C0 8000BAC0 90A20000 */  lbu   $v0, ($a1)
/* 00C6C4 8000BAC4 25080008 */  addiu $t0, $t0, 8
/* 00C6C8 8000BAC8 90C4FFFC */  lbu   $a0, -4($a2)
/* 00C6CC 8000BACC 90C3FFFD */  lbu   $v1, -3($a2)
/* 00C6D0 8000BAD0 24E70008 */  addiu $a3, $a3, 8
/* 00C6D4 8000BAD4 24A50006 */  addiu $a1, $a1, 6
/* 00C6D8 8000BAD8 00021040 */  sll   $v0, $v0, 1
/* 00C6DC 8000BADC 304200FF */  andi  $v0, $v0, 0xff
/* 00C6E0 8000BAE0 00021400 */  sll   $v0, $v0, 0x10
/* 00C6E4 8000BAE4 00042240 */  sll   $a0, $a0, 9
/* 00C6E8 8000BAE8 3084FE00 */  andi  $a0, $a0, 0xfe00
/* 00C6EC 8000BAEC 00441025 */  or    $v0, $v0, $a0
/* 00C6F0 8000BAF0 00031840 */  sll   $v1, $v1, 1
/* 00C6F4 8000BAF4 306300FF */  andi  $v1, $v1, 0xff
/* 00C6F8 8000BAF8 00431025 */  or    $v0, $v0, $v1
/* 00C6FC 8000BAFC 004B1025 */  or    $v0, $v0, $t3
/* 00C700 8000BB00 AD02FFFC */  sw    $v0, -4($t0)
/* 00C704 8000BB04 90C3FFFE */  lbu   $v1, -2($a2)
/* 00C708 8000BB08 90C4FFFF */  lbu   $a0, -1($a2)
/* 00C70C 8000BB0C 90C20000 */  lbu   $v0, ($a2)
/* 00C710 8000BB10 00031840 */  sll   $v1, $v1, 1
/* 00C714 8000BB14 306300FF */  andi  $v1, $v1, 0xff
/* 00C718 8000BB18 00031C00 */  sll   $v1, $v1, 0x10
/* 00C71C 8000BB1C 00042240 */  sll   $a0, $a0, 9
/* 00C720 8000BB20 3084FE00 */  andi  $a0, $a0, 0xfe00
/* 00C724 8000BB24 00641825 */  or    $v1, $v1, $a0
/* 00C728 8000BB28 00021040 */  sll   $v0, $v0, 1
/* 00C72C 8000BB2C 304200FF */  andi  $v0, $v0, 0xff
/* 00C730 8000BB30 00621825 */  or    $v1, $v1, $v0
/* 00C734 8000BB34 AD030000 */  sw    $v1, ($t0)
/* 00C738 8000BB38 81420001 */  lb    $v0, 1($t2)
/* 00C73C 8000BB3C 25290002 */  addiu $t1, $t1, 2
/* 00C740 8000BB40 2442FFFF */  addiu $v0, $v0, -1
/* 00C744 8000BB44 0122102B */  sltu  $v0, $t1, $v0
/* 00C748 8000BB48 1440FFDD */  bnez  $v0, .L8000BAC0
/* 00C74C 8000BB4C 24C60006 */   addiu $a2, $a2, 6

.L8000BB50:
/* 00C750 8000BB50 81420001 */  lb    $v0, 1($t2)
/* 00C754 8000BB54 0122102B */  sltu  $v0, $t1, $v0
/* 00C758 8000BB58 10400014 */  beqz  $v0, .L8000BBAC
/* 00C75C 8000BB5C 00E01021 */   addu  $v0, $a3, $zero

/* 00C760 8000BB60 90A20000 */  lbu   $v0, ($a1)
/* 00C764 8000BB64 90A30001 */  lbu   $v1, 1($a1)
/* 00C768 8000BB68 90A40002 */  lbu   $a0, 2($a1)
/* 00C76C 8000BB6C 00E02821 */  addu  $a1, $a3, $zero
/* 00C770 8000BB70 24E70008 */  addiu $a3, $a3, 8
/* 00C774 8000BB74 ACA00004 */  sw    $zero, 4($a1)
/* 00C778 8000BB78 00021040 */  sll   $v0, $v0, 1
/* 00C77C 8000BB7C 304200FF */  andi  $v0, $v0, 0xff
/* 00C780 8000BB80 00021400 */  sll   $v0, $v0, 0x10
/* 00C784 8000BB84 00031A40 */  sll   $v1, $v1, 9
/* 00C788 8000BB88 3063FE00 */  andi  $v1, $v1, 0xfe00
/* 00C78C 8000BB8C 00431025 */  or    $v0, $v0, $v1
/* 00C790 8000BB90 00042040 */  sll   $a0, $a0, 1
/* 00C794 8000BB94 308400FF */  andi  $a0, $a0, 0xff
/* 00C798 8000BB98 00441025 */  or    $v0, $v0, $a0
/* 00C79C 8000BB9C 3C030500 */  lui   $v1, 0x500
/* 00C7A0 8000BBA0 00431025 */  or    $v0, $v0, $v1
/* 00C7A4 8000BBA4 ACA20000 */  sw    $v0, ($a1)
/* 00C7A8 8000BBA8 00E01021 */  addu  $v0, $a3, $zero

.L8000BBAC:
/* 00C7AC 8000BBAC 3C03E700 */  lui   $v1, 0xe700
/* 00C7B0 8000BBB0 AC430000 */  sw    $v1, ($v0)
/* 00C7B4 8000BBB4 AC400004 */  sw    $zero, 4($v0)
/* 00C7B8 8000BBB8 24420008 */  addiu $v0, $v0, 8
/* 00C7BC 8000BBBC 3C03DF00 */  lui   $v1, 0xdf00
/* 00C7C0 8000BBC0 AC430000 */  sw    $v1, ($v0)
/* 00C7C4 8000BBC4 AC400004 */  sw    $zero, 4($v0)
/* 00C7C8 8000BBC8 03E00008 */  jr    $ra
/* 00C7CC 8000BBCC 27BD0008 */   addiu $sp, $sp, 8
