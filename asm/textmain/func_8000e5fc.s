glabel func_8000E5FC
/* 00F1FC 8000E5FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00F200 8000E600 AFB00018 */  sw    $s0, 0x18($sp)
/* 00F204 8000E604 00008021 */  addu  $s0, $zero, $zero
/* 00F208 8000E608 24020080 */  li    $v0, 128
/* 00F20C 8000E60C A3A20010 */  sb    $v0, 0x10($sp)
/* 00F210 8000E610 A3A20011 */  sb    $v0, 0x11($sp)
/* 00F214 8000E614 A3A20012 */  sb    $v0, 0x12($sp)
/* 00F218 8000E618 240200FF */  li    $v0, 255
/* 00F21C 8000E61C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00F220 8000E620 A3A20013 */  sb    $v0, 0x13($sp)
/* 00F224 8000E624 320400FF */  andi  $a0, $s0, 0xff

.L8000E628:
/* 00F228 8000E628 0C000700 */  jal   func_80001C00
/* 00F22C 8000E62C 27A50010 */   addiu $a1, $sp, 0x10

/* 00F230 8000E630 26100001 */  addiu $s0, $s0, 1
/* 00F234 8000E634 2E020004 */  sltiu $v0, $s0, 4
/* 00F238 8000E638 1440FFFB */  bnez  $v0, .L8000E628
/* 00F23C 8000E63C 320400FF */   andi  $a0, $s0, 0xff

/* 00F240 8000E640 3C018004 */  lui   $at, %hi(var_8003FDB2) # $at, 0x8004
/* 00F244 8000E644 A420FDB2 */  sh    $zero, %lo(var_8003FDB2)($at)
/* 00F248 8000E648 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00F24C 8000E64C 8FB00018 */  lw    $s0, 0x18($sp)
/* 00F250 8000E650 03E00008 */  jr    $ra
/* 00F254 8000E654 27BD0020 */   addiu $sp, $sp, 0x20
