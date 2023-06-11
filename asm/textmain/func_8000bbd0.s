# Params:
# $a0 - source address
# $a1 - ?

glabel func_8000BBD0
/* 00C7D0 8000BBD0 27BDFFF8 */  addiu $sp, $sp, -8
/* 00C7D4 8000BBD4 00805021 */  addu  $t2, $a0, $zero
/* 00C7D8 8000BBD8 8D470008 */  lw    $a3, 8($t2)
/* 00C7DC 8000BBDC 3C04D9FF */  lui   $a0, %hi(0xD9FF0004) # $a0, 0xd9ff
/* 00C7E0 8000BBE0 3484F9FF */  ori   $a0, (0xD9FFF9FF & 0xFFFF) # ori $a0, $a0, 0xf9ff
/* 00C7E4 8000BBE4 3C06D9FF */  lui   $a2, (0xD9FFFFFF >> 16) # lui $a2, 0xd9ff
/* 00C7E8 8000BBE8 34C6FFFF */  ori   $a2, (0xD9FFFFFF & 0xFFFF) # ori $a2, $a2, 0xffff
/* 00C7EC 8000BBEC 00004821 */  addu  $t1, $zero, $zero
/* 00C7F0 8000BBF0 81430002 */  lb    $v1, 2($t2)
/* 00C7F4 8000BBF4 00E01021 */  addu  $v0, $a3, $zero
/* 00C7F8 8000BBF8 24E70008 */  addiu $a3, $a3, 8
/* 00C7FC 8000BBFC AC440000 */  sw    $a0, ($v0)
/* 00C800 8000BC00 00E02021 */  addu  $a0, $a3, $zero
/* 00C804 8000BC04 AC400004 */  sw    $zero, 4($v0)
/* 00C808 8000BC08 24020400 */  li    $v0, 1024
/* 00C80C 8000BC0C 000318C0 */  sll   $v1, $v1, 3
/* 00C810 8000BC10 24630008 */  addiu $v1, $v1, 8
/* 00C814 8000BC14 AC860000 */  sw    $a2, ($a0)
/* 00C818 8000BC18 AC820004 */  sw    $v0, %lo(0xD9FF0004)($a0)
/* 00C81C 8000BC1C 81420001 */  lb    $v0, 1($t2)
/* 00C820 8000BC20 00A32821 */  addu  $a1, $a1, $v1
/* 00C824 8000BC24 2442FFFF */  addiu $v0, $v0, -1
/* 00C828 8000BC28 10400028 */  beqz  $v0, .L8000BCCC
/* 00C82C 8000BC2C 24E70008 */   addiu $a3, $a3, 8

/* 00C830 8000BC30 3C0B0600 */  lui   $t3, 0x600
/* 00C834 8000BC34 24A60005 */  addiu $a2, $a1, 5
/* 00C838 8000BC38 24E8FFFC */  addiu $t0, $a3, -4

.L8000BC3C:
/* 00C83C 8000BC3C 90A20000 */  lbu   $v0, ($a1)
/* 00C840 8000BC40 25080008 */  addiu $t0, $t0, 8
/* 00C844 8000BC44 90C4FFFC */  lbu   $a0, -4($a2)
/* 00C848 8000BC48 90C3FFFD */  lbu   $v1, -3($a2)
/* 00C84C 8000BC4C 24E70008 */  addiu $a3, $a3, 8
/* 00C850 8000BC50 24A50006 */  addiu $a1, $a1, 6
/* 00C854 8000BC54 00021040 */  sll   $v0, $v0, 1
/* 00C858 8000BC58 304200FF */  andi  $v0, $v0, 0xff
/* 00C85C 8000BC5C 00021400 */  sll   $v0, $v0, 0x10
/* 00C860 8000BC60 00042240 */  sll   $a0, $a0, 9
/* 00C864 8000BC64 3084FE00 */  andi  $a0, $a0, 0xfe00
/* 00C868 8000BC68 00441025 */  or    $v0, $v0, $a0
/* 00C86C 8000BC6C 00031840 */  sll   $v1, $v1, 1
/* 00C870 8000BC70 306300FF */  andi  $v1, $v1, 0xff
/* 00C874 8000BC74 00431025 */  or    $v0, $v0, $v1
/* 00C878 8000BC78 004B1025 */  or    $v0, $v0, $t3
/* 00C87C 8000BC7C AD02FFFC */  sw    $v0, -4($t0)
/* 00C880 8000BC80 90C3FFFE */  lbu   $v1, -2($a2)
/* 00C884 8000BC84 90C4FFFF */  lbu   $a0, -1($a2)
/* 00C888 8000BC88 90C20000 */  lbu   $v0, ($a2)
/* 00C88C 8000BC8C 00031840 */  sll   $v1, $v1, 1
/* 00C890 8000BC90 306300FF */  andi  $v1, $v1, 0xff
/* 00C894 8000BC94 00031C00 */  sll   $v1, $v1, 0x10
/* 00C898 8000BC98 00042240 */  sll   $a0, $a0, 9
/* 00C89C 8000BC9C 3084FE00 */  andi  $a0, $a0, 0xfe00
/* 00C8A0 8000BCA0 00641825 */  or    $v1, $v1, $a0
/* 00C8A4 8000BCA4 00021040 */  sll   $v0, $v0, 1
/* 00C8A8 8000BCA8 304200FF */  andi  $v0, $v0, 0xff
/* 00C8AC 8000BCAC 00621825 */  or    $v1, $v1, $v0
/* 00C8B0 8000BCB0 AD030000 */  sw    $v1, ($t0)
/* 00C8B4 8000BCB4 81420001 */  lb    $v0, 1($t2)
/* 00C8B8 8000BCB8 25290002 */  addiu $t1, $t1, 2
/* 00C8BC 8000BCBC 2442FFFF */  addiu $v0, $v0, -1
/* 00C8C0 8000BCC0 0122102B */  sltu  $v0, $t1, $v0
/* 00C8C4 8000BCC4 1440FFDD */  bnez  $v0, .L8000BC3C
/* 00C8C8 8000BCC8 24C60006 */   addiu $a2, $a2, 6

.L8000BCCC:
/* 00C8CC 8000BCCC 81420001 */  lb    $v0, 1($t2)
/* 00C8D0 8000BCD0 0122102B */  sltu  $v0, $t1, $v0
/* 00C8D4 8000BCD4 10400014 */  beqz  $v0, .L8000BD28
/* 00C8D8 8000BCD8 00E01021 */   addu  $v0, $a3, $zero

/* 00C8DC 8000BCDC 90A20000 */  lbu   $v0, ($a1)
/* 00C8E0 8000BCE0 90A30001 */  lbu   $v1, 1($a1)
/* 00C8E4 8000BCE4 90A40002 */  lbu   $a0, 2($a1)
/* 00C8E8 8000BCE8 00E02821 */  addu  $a1, $a3, $zero
/* 00C8EC 8000BCEC 24E70008 */  addiu $a3, $a3, 8
/* 00C8F0 8000BCF0 ACA00004 */  sw    $zero, 4($a1)
/* 00C8F4 8000BCF4 00021040 */  sll   $v0, $v0, 1
/* 00C8F8 8000BCF8 304200FF */  andi  $v0, $v0, 0xff
/* 00C8FC 8000BCFC 00021400 */  sll   $v0, $v0, 0x10
/* 00C900 8000BD00 00031A40 */  sll   $v1, $v1, 9
/* 00C904 8000BD04 3063FE00 */  andi  $v1, $v1, 0xfe00
/* 00C908 8000BD08 00431025 */  or    $v0, $v0, $v1
/* 00C90C 8000BD0C 00042040 */  sll   $a0, $a0, 1
/* 00C910 8000BD10 308400FF */  andi  $a0, $a0, 0xff
/* 00C914 8000BD14 00441025 */  or    $v0, $v0, $a0
/* 00C918 8000BD18 3C030500 */  lui   $v1, 0x500
/* 00C91C 8000BD1C 00431025 */  or    $v0, $v0, $v1
/* 00C920 8000BD20 ACA20000 */  sw    $v0, ($a1)
/* 00C924 8000BD24 00E01021 */  addu  $v0, $a3, $zero

.L8000BD28:
/* 00C928 8000BD28 3C03E700 */  lui   $v1, 0xe700
/* 00C92C 8000BD2C AC430000 */  sw    $v1, ($v0)
/* 00C930 8000BD30 AC400004 */  sw    $zero, 4($v0)
/* 00C934 8000BD34 24420008 */  addiu $v0, $v0, 8
/* 00C938 8000BD38 3C03DF00 */  lui   $v1, 0xdf00
/* 00C93C 8000BD3C AC430000 */  sw    $v1, ($v0)
/* 00C940 8000BD40 AC400004 */  sw    $zero, 4($v0)
/* 00C944 8000BD44 03E00008 */  jr    $ra
/* 00C948 8000BD48 27BD0008 */   addiu $sp, $sp, 8
