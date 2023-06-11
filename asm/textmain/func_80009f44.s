# also related to battle royals?

# Params:
# $a0 = wrestler ID4

glabel func_80009F44
/* 00AB44 80009F44 3C028004 */  lui   $v0, %hi(dynPtr_DefaultMovesets) # $v0, 0x8004
/* 00AB48 80009F48 8C42FD90 */  lw    $v0, %lo(dynPtr_DefaultMovesets)($v0)
/* 00AB4C 80009F4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00AB50 80009F50 1440001C */  bnez  $v0, .L80009FC4
/* 00AB54 80009F54 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00AB58 80009F58 00003021 */  addu  $a2, $zero, $zero
/* 00AB5C 80009F5C 3C07800B */  lui   $a3, %hi(bssMain_800B5CC0) # $a3, 0x800b
/* 00AB60 80009F60 24E75CC0 */  addiu $a3, %lo(bssMain_800B5CC0) # addiu $a3, $a3, 0x5cc0
/* 00AB64 80009F64 00002821 */  addu  $a1, $zero, $zero

.L80009F68:
/* 00AB68 80009F68 00E01821 */  addu  $v1, $a3, $zero

.L80009F6C:
/* 00AB6C 80009F6C 94620000 */  lhu   $v0, ($v1)
/* 00AB70 80009F70 5044000A */  beql  $v0, $a0, .L80009F9C
/* 00AB74 80009F74 00A01821 */   addu  $v1, $a1, $zero

/* 00AB78 80009F78 24A50001 */  addiu $a1, $a1, 1
/* 00AB7C 80009F7C 28A20028 */  slti  $v0, $a1, 40
/* 00AB80 80009F80 1440FFFA */  bnez  $v0, .L80009F6C
/* 00AB84 80009F84 24630002 */   addiu $v1, $v1, 2

/* 00AB88 80009F88 24C60001 */  addiu $a2, $a2, 1
/* 00AB8C 80009F8C 28C20002 */  slti  $v0, $a2, 2
/* 00AB90 80009F90 1440FFF5 */  bnez  $v0, .L80009F68
/* 00AB94 80009F94 00002821 */   addu  $a1, $zero, $zero

/* 00AB98 80009F98 00001821 */  addu  $v1, $zero, $zero

.L80009F9C:
/* 00AB9C 80009F9C 00031080 */  sll   $v0, $v1, 2
/* 00ABA0 80009FA0 00431021 */  addu  $v0, $v0, $v1
/* 00ABA4 80009FA4 00021080 */  sll   $v0, $v0, 2
/* 00ABA8 80009FA8 00431023 */  subu  $v0, $v0, $v1
/* 00ABAC 80009FAC 00021100 */  sll   $v0, $v0, 4
/* 00ABB0 80009FB0 00431021 */  addu  $v0, $v0, $v1
/* 00ABB4 80009FB4 3C01800A */  lui   $at, %hi(bssMain_800980D0)
/* 00ABB8 80009FB8 00220821 */  addu  $at, $at, $v0
/* 00ABBC 80009FBC 080027FA */  j     .L80009FE8
/* 00ABC0 80009FC0 802280D0 */   lb    $v0, %lo(bssMain_800980D0)($at)

.L80009FC4:
/* 00ABC4 80009FC4 0C002B7B */  jal   func_8000ADEC
/* 00ABC8 80009FC8 00000000 */   nop   

/* 00ABCC 80009FCC 9043000A */  lbu   $v1, 0xa($v0)
/* 00ABD0 80009FD0 00031040 */  sll   $v0, $v1, 1
/* 00ABD4 80009FD4 00431021 */  addu  $v0, $v0, $v1
/* 00ABD8 80009FD8 00021040 */  sll   $v0, $v0, 1
/* 00ABDC 80009FDC 3C018010 */  lui   $at, %hi(tbl_80105F78)
/* 00ABE0 80009FE0 00220821 */  addu  $at, $at, $v0
/* 00ABE4 80009FE4 84225F78 */  lh    $v0, %lo(tbl_80105F78)($at)

.L80009FE8:
/* 00ABE8 80009FE8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00ABEC 80009FEC 03E00008 */  jr    $ra
/* 00ABF0 80009FF0 27BD0018 */   addiu $sp, $sp, 0x18
