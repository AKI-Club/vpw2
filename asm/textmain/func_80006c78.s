# Recursive routine for getting a null-terminated string. (Related to AkiText?)

# Params:
# $a0 - write address
# $a1 - read address

glabel func_80006C78
/* 007878 80006C78 90A20000 */  lbu   $v0, ($a1)
/* 00787C 80006C7C A0820000 */  sb    $v0, ($a0)

# check for null/0x00 terminator
/* 007880 80006C80 90A20000 */  lbu   $v0, ($a1)
/* 007884 80006C84 10400003 */  beqz  $v0, .L80006C94
/* 007888 80006C88 24A50001 */   addiu $a1, $a1, 1

/* 00788C 80006C8C 08001B1E */  j     func_80006C78 # recursive call
/* 007890 80006C90 24840001 */   addiu $a0, $a0, 1

.L80006C94:
/* 007894 80006C94 03E00008 */  jr    $ra
/* 007898 80006C98 00801021 */   addu  $v0, $a0, $zero
