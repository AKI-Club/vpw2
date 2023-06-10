# Zoinkity: "Calling 80006C18 will tell you the width of the current char in the input."

# Params:
# $a0 - pointer to char

glabel func_80006C18
/* 007818 80006C18 90820000 */  lbu   $v0, ($a0)
/* 00781C 80006C1C 304300F0 */  andi  $v1, $v0, 0xf0 # mask for top nibble
/* 007820 80006C20 24020090 */  li    $v0, 0x90
/* 007824 80006C24 1062000C */  beq   $v1, $v0, .L80006C58
/* 007828 80006C28 28620091 */   slti  $v0, $v1, 0x91

/* 00782C 80006C2C 10400005 */  beqz  $v0, .L80006C44
/* 007830 80006C30 24020080 */   li    $v0, 0x80

/* 007834 80006C34 10620009 */  beq   $v1, $v0, .L80006C5C
/* 007838 80006C38 24020002 */   li    $v0, 2 # two byte char

/* 00783C 80006C3C 08001B17 */  j     .L80006C5C
/* 007840 80006C40 24020001 */   li    $v0, 1 # one byte char

.L80006C44:
/* 007844 80006C44 240200E0 */  li    $v0, 0xE0
/* 007848 80006C48 10620003 */  beq   $v1, $v0, .L80006C58
/* 00784C 80006C4C 240200F0 */   li    $v0, 0xF0

/* 007850 80006C50 14620002 */  bne   $v1, $v0, .L80006C5C
/* 007854 80006C54 24020001 */   li    $v0, 1 # one byte char

.L80006C58:
/* 007858 80006C58 24020002 */  li    $v0, 2 # two byte char

.L80006C5C:
/* 00785C 80006C5C 03E00008 */  jr    $ra
/* 007860 80006C60 00000000 */   nop   
