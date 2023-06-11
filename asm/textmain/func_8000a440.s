# Related to wrestler unlocks

# Params:
# $a0 - unlock number?

glabel func_8000A440
/* 00B040 8000A440 3C038004 */  lui   $v1, %hi(tbl_WrestlerUnlockData) # $v1, 0x8004
/* 00B044 8000A444 2463FD44 */  addiu $v1, %lo(tbl_WrestlerUnlockData) # addiu $v1, $v1, -0x2bc
/* 00B048 8000A448 90620000 */  lbu   $v0, ($v1)
/* 00B04C 8000A44C 00003021 */  addu  $a2, $zero, $zero
/* 00B050 8000A450 1040000F */  beqz  $v0, .L8000A490
/* 00B054 8000A454 00003821 */   addu  $a3, $zero, $zero

/* 00B058 8000A458 24650001 */  addiu $a1, $v1, 1

.L8000A45C:
/* 00B05C 8000A45C 90A20000 */  lbu   $v0, ($a1)
/* 00B060 8000A460 54820008 */  bnel  $a0, $v0, .L8000A484
/* 00B064 8000A464 24630002 */   addiu $v1, $v1, 2

/* 00B068 8000A468 10C00004 */  beqz  $a2, .L8000A47C
/* 00B06C 8000A46C 00000000 */   nop   

/* 00B070 8000A470 90670000 */  lbu   $a3, ($v1)
/* 00B074 8000A474 08002921 */  j     .L8000A484
/* 00B078 8000A478 24630002 */   addiu $v1, $v1, 2

.L8000A47C:
/* 00B07C 8000A47C 90660000 */  lbu   $a2, ($v1)
/* 00B080 8000A480 24630002 */  addiu $v1, $v1, 2

.L8000A484:
/* 00B084 8000A484 90620000 */  lbu   $v0, ($v1)
/* 00B088 8000A488 1440FFF4 */  bnez  $v0, .L8000A45C
/* 00B08C 8000A48C 24A50002 */   addiu $a1, $a1, 2

.L8000A490:
/* 00B090 8000A490 00071200 */  sll   $v0, $a3, 8
/* 00B094 8000A494 03E00008 */  jr    $ra
/* 00B098 8000A498 00C21025 */   or    $v0, $a2, $v0
