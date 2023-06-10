# another recursive routine

# Params:
# $a0 - write address
# $a1 - read address

glabel func_80006C9C
/* 00789C 80006C9C 90820000 */  lbu   $v0, ($a0)
/* 0078A0 80006CA0 10400003 */  beqz  $v0, .L80006CB0
/* 0078A4 80006CA4 00801821 */   addu  $v1, $a0, $zero

/* 0078A8 80006CA8 08001B27 */  j     func_80006C9C # recursive call
/* 0078AC 80006CAC 24840001 */   addiu $a0, $a0, 1

.L80006CB0:
/* 0078B0 80006CB0 90A20000 */  lbu   $v0, ($a1)
/* 0078B4 80006CB4 A0620000 */  sb    $v0, ($v1)

# check for null/0x00 terminator
/* 0078B8 80006CB8 90A20000 */  lbu   $v0, ($a1)
/* 0078BC 80006CBC 10400003 */  beqz  $v0, .L80006CCC # exit read loop
/* 0078C0 80006CC0 24A50001 */   addiu $a1, $a1, 1

/* 0078C4 80006CC4 08001B2C */  j     .L80006CB0 # continue read loop
/* 0078C8 80006CC8 24630001 */   addiu $v1, $v1, 1

.L80006CCC:
/* 0078CC 80006CCC 03E00008 */  jr    $ra
/* 0078D0 80006CD0 00801021 */   addu  $v0, $a0, $zero
