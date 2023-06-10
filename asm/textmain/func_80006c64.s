# gets a character from the string at 8003EF9C

# Params:
# $a0 - character to get

glabel func_80006C64
/* 007864 80006C64 3084000F */  andi  $a0, $a0, 0xF
/* 007868 80006C68 3C028004 */  lui   $v0, %hi(D_8003EF9C) # $v0, 0x8004
/* 00786C 80006C6C 2442EF9C */  addiu $v0, %lo(D_8003EF9C) # addiu $v0, $v0, -0x1064
/* 007870 80006C70 03E00008 */  jr    $ra
/* 007874 80006C74 00821021 */   addu  $v0, $a0, $v0
