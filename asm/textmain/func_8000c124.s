# Params:
# $a0 -
# $a1 -

glabel func_8000C124
/* 00CD24 8000C124 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00CD28 8000C128 AFB00018 */  sw    $s0, 0x18($sp)
/* 00CD2C 8000C12C 00A08021 */  addu  $s0, $a1, $zero
/* 00CD30 8000C130 C7A00034 */  lwc1  $f0, 0x34($sp)
/* 00CD34 8000C134 C7A20030 */  lwc1  $f2, 0x30($sp)
/* 00CD38 8000C138 00062E00 */  sll   $a1, $a2, 0x18
/* 00CD3C 8000C13C 00E03021 */  addu  $a2, $a3, $zero
/* 00CD40 8000C140 44071000 */  mfc1  $a3, $f2
/* 00CD44 8000C144 00052E03 */  sra   $a1, $a1, 0x18
/* 00CD48 8000C148 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00CD4C 8000C14C 0C000600 */  jal   func_80001800
/* 00CD50 8000C150 E7A00010 */   swc1  $f0, 0x10($sp)

/* 00CD54 8000C154 A2000000 */  sb    $zero, ($s0)
/* 00CD58 8000C158 A2000001 */  sb    $zero, 1($s0)
/* 00CD5C 8000C15C A2000002 */  sb    $zero, 2($s0)
/* 00CD60 8000C160 A2000003 */  sb    $zero, 3($s0)
/* 00CD64 8000C164 A2000004 */  sb    $zero, 4($s0)
/* 00CD68 8000C168 A2000005 */  sb    $zero, 5($s0)
/* 00CD6C 8000C16C A2000006 */  sb    $zero, 6($s0)

/* 00CD70 8000C170 A6000008 */  sh    $zero, 8($s0)
/* 00CD74 8000C174 A600000A */  sh    $zero, 0xa($s0)

/* 00CD78 8000C178 AE00000C */  sw    $zero, 0xc($s0)
/* 00CD7C 8000C17C AE000010 */  sw    $zero, 0x10($s0)
/* 00CD80 8000C180 AE000014 */  sw    $zero, 0x14($s0)
/* 00CD84 8000C184 AE000018 */  sw    $zero, 0x18($s0)
/* 00CD88 8000C188 AE00001C */  sw    $zero, 0x1c($s0)
/* 00CD8C 8000C18C AE000020 */  sw    $zero, 0x20($s0)
/* 00CD90 8000C190 AE000024 */  sw    $zero, 0x24($s0)
/* 00CD94 8000C194 AE000028 */  sw    $zero, 0x28($s0)
/* 00CD98 8000C198 AE00002C */  sw    $zero, 0x2c($s0)

/* 00CD9C 8000C19C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00CDA0 8000C1A0 8FB00018 */  lw    $s0, 0x18($sp)
/* 00CDA4 8000C1A4 03E00008 */  jr    $ra
/* 00CDA8 8000C1A8 27BD0020 */   addiu $sp, $sp, 0x20
