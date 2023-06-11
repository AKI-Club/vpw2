# related to models and calculating in-memory values

# Params:
# $a0 - write address
# $a1 - source address

glabel func_8000BD4C
/* 00C94C 8000BD4C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 00C950 8000BD50 00A03021 */  addu  $a2, $a1, $zero # store source addr in $a2
/* 00C954 8000BD54 24CA0008 */  addiu $t2, $a2, 8
/* 00C958 8000BD58 AFB00008 */  sw    $s0, 8($sp)

/* 00C95C 8000BD5C 90C50007 */  lbu   $a1, 7($a2) # texture size or offset?
/* 00C960 8000BD60 00804021 */  addu  $t0, $a0, $zero # store dest addr in $t0
/* 00C964 8000BD64 00003821 */  addu  $a3, $zero, $zero # zero out vertex counter
/* 00C968 8000BD68 90C30001 */  lbu   $v1, 1($a2) # number of vertices + flag
/* 00C96C 8000BD6C 2404FF7F */  li    $a0, -129
/* 00C970 8000BD70 00051100 */  sll   $v0, $a1, 4
/* 00C974 8000BD74 305900F0 */  andi  $t9, $v0, 0xf0 # v offset
/* 00C978 8000BD78 90C20000 */  lbu   $v0, ($a2) # size/scale
/* 00C97C 8000BD7C 00646024 */  and   $t4, $v1, $a0 # num verts in $t4
/* 00C980 8000BD80 90C30004 */  lbu   $v1, 4($a2) # x point offset
/* 00C984 8000BD84 30A500F0 */  andi  $a1, $a1, 0xf0
/* 00C988 8000BD88 30AF00FF */  andi  $t7, $a1, 0xff # u offset
/* 00C98C 8000BD8C 30580080 */  andi  $t8, $v0, 0x80 # mask top bit of size/scale into $t8
/* 00C990 8000BD90 00441024 */  and   $v0, $v0, $a0
/* 00C994 8000BD94 24490001 */  addiu $t1, $v0, 1 # add 1 to scale value
/* 00C998 8000BD98 00031E00 */  sll   $v1, $v1, 0x18
/* 00C99C 8000BD9C 90C20005 */  lbu   $v0, 5($a2) # y point offset
/* 00C9A0 8000BDA0 00032503 */  sra   $a0, $v1, 0x14
/* 00C9A4 8000BDA4 90C30006 */  lbu   $v1, 6($a2) # z point offset
/* 00C9A8 8000BDA8 00021600 */  sll   $v0, $v0, 0x18
/* 00C9AC 8000BDAC 00021503 */  sra   $v0, $v0, 0x14
/* 00C9B0 8000BDB0 00031E00 */  sll   $v1, $v1, 0x18
/* 00C9B4 8000BDB4 1180003D */  beqz  $t4, .L8000BEAC # exit
/* 00C9B8 8000BDB8 00031D03 */   sra   $v1, $v1, 0x14 # massaged z offset

/* 00C9BC 8000BDBC 00807021 */  addu  $t6, $a0, $zero # massaged x offset
/* 00C9C0 8000BDC0 00406821 */  addu  $t5, $v0, $zero # massaged y offset
/* 00C9C4 8000BDC4 240B007F */  li    $t3, 0x7F # used in alternate codepath for vertex color values
/* 00C9C8 8000BDC8 241000FF */  li    $s0, 0xFF # fourth vertex color component always full alpha
/* 00C9CC 8000BDCC 2504000F */  addiu $a0, $t0, 0xf
/* 00C9D0 8000BDD0 24C5000E */  addiu $a1, $a2, 0xe


# handle X, Y, and Z values
.L8000BDD4:
/* 00C9D4 8000BDD4 81420000 */  lb    $v0, ($t2)
/* 00C9D8 8000BDD8 004E1021 */  addu  $v0, $v0, $t6 # add x point offset value
/* 00C9DC 8000BDDC 00490018 */  mult  $v0, $t1 # multiply by scale
/* 00C9E0 8000BDE0 00001012 */  mflo  $v0
/* 00C9E4 8000BDE4 A5020000 */  sh    $v0, ($t0)

/* 00C9E8 8000BDE8 80A2FFFB */  lb    $v0, -5($a1)
/* 00C9EC 8000BDEC 004D1021 */  addu  $v0, $v0, $t5 # add y point offset value
/* 00C9F0 8000BDF0 00490018 */  mult  $v0, $t1 # multiply by scale
/* 00C9F4 8000BDF4 00001012 */  mflo  $v0
/* 00C9F8 8000BDF8 A482FFF3 */  sh    $v0, -0xd($a0)

/* 00C9FC 8000BDFC 80A2FFFC */  lb    $v0, -4($a1)
/* 00CA00 8000BE00 00431021 */  addu  $v0, $v0, $v1 # add z point offset value
/* 00CA04 8000BE04 00490018 */  mult  $v0, $t1 # multiply by scale
/* 00CA08 8000BE08 00001012 */  mflo  $v0
/* 00CA0C 8000BE0C A480FFF7 */  sh    $zero, -9($a0)
/* 00CA10 8000BE10 00000000 */  nop   

/* 00CA14 8000BE14 17000012 */  bnez  $t8, .L8000BE60 # branch if top bit of size/scale is set
/* 00CA18 8000BE18 A482FFF5 */   sh    $v0, -0xb($a0)

# handle U value
/* 00CA1C 8000BE1C 90A2FFFD */  lbu   $v0, -3($a1)
/* 00CA20 8000BE20 004F1021 */  addu  $v0, $v0, $t7 # add u offset value
/* 00CA24 8000BE24 00021140 */  sll   $v0, $v0, 5
/* 00CA28 8000BE28 24420008 */  addiu $v0, $v0, 8
/* 00CA2C 8000BE2C A482FFF9 */  sh    $v0, -7($a0)

# handle V value
/* 00CA30 8000BE30 90A2FFFE */  lbu   $v0, -2($a1) # add v offset value
/* 00CA34 8000BE34 00591021 */  addu  $v0, $v0, $t9
/* 00CA38 8000BE38 00021140 */  sll   $v0, $v0, 5
/* 00CA3C 8000BE3C 24420008 */  addiu $v0, $v0, 8
/* 00CA40 8000BE40 A482FFFB */  sh    $v0, -5($a0)

# handle vertex color
/* 00CA44 8000BE44 90A2FFFF */  lbu   $v0, -1($a1)
/* 00CA48 8000BE48 A082FFFD */  sb    $v0, -3($a0)
/* 00CA4C 8000BE4C 90A20000 */  lbu   $v0, ($a1)
/* 00CA50 8000BE50 A082FFFE */  sb    $v0, -2($a0)
/* 00CA54 8000BE54 90A20001 */  lbu   $v0, 1($a1)
/* 00CA58 8000BE58 08002FA3 */  j     .L_8000BE8C
/* 00CA5C 8000BE5C A082FFFF */   sb    $v0, -1($a0)

.L8000BE60:
# alternate codepath; get U/V from first two vertex color values?
/* 00CA60 8000BE60 94A2FFFE */  lhu   $v0, -2($a1)
/* 00CA64 8000BE64 00021140 */  sll   $v0, $v0, 5
/* 00CA68 8000BE68 24420008 */  addiu $v0, $v0, 8
/* 00CA6C 8000BE6C A482FFF9 */  sh    $v0, -7($a0)

/* 00CA70 8000BE70 94A20000 */  lhu   $v0, ($a1)

# set vertex color to 0x7F7F7F
/* 00CA74 8000BE74 A08BFFFD */  sb    $t3, -3($a0)
/* 00CA78 8000BE78 A08BFFFE */  sb    $t3, -2($a0)
/* 00CA7C 8000BE7C A08BFFFF */  sb    $t3, -1($a0)

/* 00CA80 8000BE80 00021140 */  sll   $v0, $v0, 5
/* 00CA84 8000BE84 24420008 */  addiu $v0, $v0, 8
/* 00CA88 8000BE88 A482FFFB */  sh    $v0, -5($a0)

.L_8000BE8C:
/* 00CA8C 8000BE8C A0900000 */  sb    $s0, ($a0) # store fourth component of vertex color
/* 00CA90 8000BE90 24A50008 */  addiu $a1, $a1, 8
/* 00CA94 8000BE94 254A0008 */  addiu $t2, $t2, 8
/* 00CA98 8000BE98 24840010 */  addiu $a0, $a0, 0x10
/* 00CA9C 8000BE9C 24E70001 */  addiu $a3, $a3, 1
/* 00CAA0 8000BEA0 00EC102B */  sltu  $v0, $a3, $t4 # compare to number of verts
/* 00CAA4 8000BEA4 1440FFCB */  bnez  $v0, .L8000BDD4
/* 00CAA8 8000BEA8 25080010 */   addiu $t0, $t0, 0x10


.L8000BEAC:
/* 00CAAC 8000BEAC 8FB00008 */  lw    $s0, 8($sp)
/* 00CAB0 8000BEB0 03E00008 */  jr    $ra
/* 00CAB4 8000BEB4 27BD0010 */   addiu $sp, $sp, 0x10
