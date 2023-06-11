# Related to AkiText?

# Params:
# $a0 - ?
# $a1 - entry number to use?

glabel func_8000A534
/* 00B134 8000A534 3C028004 */  lui   $v0, %hi(dynPtr_DefaultNames) # $v0, 0x8004
/* 00B138 8000A538 8C42FDA0 */  lw    $v0, %lo(dynPtr_DefaultNames)($v0)
/* 00B13C 8000A53C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B140 8000A540 00052840 */  sll   $a1, $a1, 1
/* 00B144 8000A544 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00B148 8000A548 00A22821 */  addu  $a1, $a1, $v0
/* 00B14C 8000A54C 94A50000 */  lhu   $a1, ($a1)
/* 00B150 8000A550 0C001B1E */  jal   func_80006C78
/* 00B154 8000A554 00452821 */   addu  $a1, $v0, $a1

/* 00B158 8000A558 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B15C 8000A55C 03E00008 */  jr    $ra
/* 00B160 8000A560 27BD0018 */   addiu $sp, $sp, 0x18