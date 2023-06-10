# another function related to character width?

# Params:
# $a0 - pointer to string?

glabel func_80006CD4
/* 0078D4 80006CD4 90820000 */  lbu   $v0, ($a0)
/* 0078D8 80006CD8 1040001B */  beqz  $v0, .L80006D48
/* 0078DC 80006CDC 00000000 */   nop   

/* 0078E0 80006CE0 2409000A */  li    $t1, 0x0A # '\n' (line break)
/* 0078E4 80006CE4 24080090 */  li    $t0, 0x90 # JIS X 0208 characters (2 bytes)
/* 0078E8 80006CE8 24070080 */  li    $a3, 0x80 # could be Shift-JIS if 0x80, or JIS X 0208 if greater than 0x80
/* 0078EC 80006CEC 240600E0 */  li    $a2, 0xE0 # JIS X 0208 characters (2 bytes)
/* 0078F0 80006CF0 240500F0 */  li    $a1, 0xF0 # Shift-JIS specific (2 bytes)

.L80006CF4:
/* 0078F4 80006CF4 14490003 */  bne   $v0, $t1, .L80006D04 # branch if not \n
/* 0078F8 80006CF8 304300F0 */   andi  $v1, $v0, 0xF0 # mask for top nibble

# '\n': advance 1 byte and exit
/* 0078FC 80006CFC 08001B52 */  j     .L80006D48
/* 007900 80006D00 24840001 */   addiu $a0, $a0, 1

.L80006D04:
/* 007904 80006D04 1068000B */  beq   $v1, $t0, .L80006D34 # branch if 0x90
/* 007908 80006D08 28620091 */   slti  $v0, $v1, 0x91

/* 00790C 80006D0C 10400005 */  beqz  $v0, .L80006D24
/* 007910 80006D10 00000000 */   nop   

/* 007914 80006D14 10670008 */  beq   $v1, $a3, .L80006D38 # branch if 0x80
/* 007918 80006D18 24020002 */   li    $v0, 2 # advance 2 bytes

/* 00791C 80006D1C 08001B4E */  j     .L80006D38
/* 007920 80006D20 24020001 */   li    $v0, 1 # advance 1 byte

.L80006D24:
/* 007924 80006D24 10660004 */  beq   $v1, $a2, .L80006D38
/* 007928 80006D28 24020002 */   li    $v0, 2 # advance 2 bytes

/* 00792C 80006D2C 14650002 */  bne   $v1, $a1, .L80006D38
/* 007930 80006D30 24020001 */   li    $v0, 1 # advance 1 byte

.L80006D34:
/* 007934 80006D34 24020002 */  li    $v0, 2 # advance 2 bytes

.L80006D38:
/* 007938 80006D38 00822021 */  addu  $a0, $a0, $v0 # advance by one or two bytes as needed

# loop condition
/* 00793C 80006D3C 90820000 */  lbu   $v0, ($a0)
/* 007940 80006D40 1440FFEC */  bnez  $v0, .L80006CF4
/* 007944 80006D44 00000000 */   nop   

.L80006D48:
/* 007948 80006D48 03E00008 */  jr    $ra
/* 00794C 80006D4C 00801021 */   addu  $v0, $a0, $zero
