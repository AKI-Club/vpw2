glabel func_80002A00
/* 003600 80002A00 3C028005 */  lui   $v0, %hi(bssMain_80056362) # $v0, 0x8005
/* 003604 80002A04 84426362 */  lh    $v0, %lo(bssMain_80056362)($v0)
/* 003608 80002A08 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00360C 80002A0C AFB1001C */  sw    $s1, 0x1c($sp)
/* 003610 80002A10 00008821 */  addu  $s1, $zero, $zero
/* 003614 80002A14 AFB40028 */  sw    $s4, 0x28($sp)
/* 003618 80002A18 AFBF0034 */  sw    $ra, 0x34($sp)
/* 00361C 80002A1C AFB60030 */  sw    $s6, 0x30($sp)
/* 003620 80002A20 AFB5002C */  sw    $s5, 0x2c($sp)
/* 003624 80002A24 AFB30024 */  sw    $s3, 0x24($sp)
/* 003628 80002A28 AFB20020 */  sw    $s2, 0x20($sp)
/* 00362C 80002A2C AFB00018 */  sw    $s0, 0x18($sp)
/* 003630 80002A30 3C018005 */  lui   $at, %hi(bssMain_80056364) # $at, 0x8005
/* 003634 80002A34 A4206364 */  sh    $zero, %lo(bssMain_80056364)($at)
/* 003638 80002A38 10400026 */  beqz  $v0, .L80002AD4
/* 00363C 80002A3C 0080A021 */   addu  $s4, $a0, $zero

/* 003640 80002A40 241600FF */  li    $s6, 255
/* 003644 80002A44 00041400 */  sll   $v0, $a0, 0x10
/* 003648 80002A48 00021283 */  sra   $v0, $v0, 0xa
/* 00364C 80002A4C 24530038 */  addiu $s3, $v0, 0x38
/* 003650 80002A50 24150001 */  li    $s5, 1
/* 003654 80002A54 3C108005 */  lui   $s0, %hi(bssMain_80056368) # $s0, 0x8005
/* 003658 80002A58 26106368 */  addiu $s0, %lo(bssMain_80056368) # addiu $s0, $s0, 0x6368
/* 00365C 80002A5C 3C128005 */  lui   $s2, %hi(bssMain_80055A00) # $s2, 0x8005
/* 003660 80002A60 26525A00 */  addiu $s2, %lo(bssMain_80055A00) # addiu $s2, $s2, 0x5a00

.L80002A64:
/* 003664 80002A64 8E450000 */  lw    $a1, ($s2)
/* 003668 80002A68 8CA20004 */  lw    $v0, 4($a1)
/* 00366C 80002A6C 90430018 */  lbu   $v1, 0x18($v0)
/* 003670 80002A70 30620080 */  andi  $v0, $v1, 0x80
/* 003674 80002A74 10400008 */  beqz  $v0, .L80002A98
/* 003678 80002A78 A2030000 */   sb    $v1, ($s0)

/* 00367C 80002A7C A2160000 */  sb    $s6, ($s0)
/* 003680 80002A80 8CA40004 */  lw    $a0, 4($a1)
/* 003684 80002A84 00B32821 */  addu  $a1, $a1, $s3
/* 003688 80002A88 0C00D0D0 */  jal   guMtxF2L
/* 00368C 80002A8C 2484009C */   addiu $a0, $a0, 0x9c

/* 003690 80002A90 08000AAF */  j     .L80002ABC
/* 003694 80002A94 26100001 */   addiu $s0, $s0, 1

.L80002A98:
/* 003698 80002A98 8CA20000 */  lw    $v0, ($a1)
/* 00369C 80002A9C 54550007 */  bnel  $v0, $s5, .L80002ABC
/* 0036A0 80002AA0 26100001 */   addiu $s0, $s0, 1

/* 0036A4 80002AA4 306200FF */  andi  $v0, $v1, 0xff
/* 0036A8 80002AA8 3C018004 */  lui   $at, %hi(D_8003C8B8)
/* 0036AC 80002AAC 00220821 */  addu  $at, $at, $v0
/* 0036B0 80002AB0 9022C8B8 */  lbu   $v0, %lo(D_8003C8B8)($at)
/* 0036B4 80002AB4 A2020000 */  sb    $v0, ($s0)
/* 0036B8 80002AB8 26100001 */  addiu $s0, $s0, 1

.L80002ABC:
/* 0036BC 80002ABC 3C028005 */  lui   $v0, %hi(bssMain_80056362) # $v0, 0x8005
/* 0036C0 80002AC0 84426362 */  lh    $v0, %lo(bssMain_80056362)($v0)
/* 0036C4 80002AC4 26310001 */  addiu $s1, $s1, 1
/* 0036C8 80002AC8 0222102B */  sltu  $v0, $s1, $v0
/* 0036CC 80002ACC 1440FFE5 */  bnez  $v0, .L80002A64
/* 0036D0 80002AD0 26520004 */   addiu $s2, $s2, 4

.L80002AD4:
/* 0036D4 80002AD4 00148400 */  sll   $s0, $s4, 0x10
/* 0036D8 80002AD8 00108403 */  sra   $s0, $s0, 0x10
/* 0036DC 80002ADC 02002021 */  addu  $a0, $s0, $zero
/* 0036E0 80002AE0 00002821 */  addu  $a1, $zero, $zero
/* 0036E4 80002AE4 0C0009FE */  jal   func_800027F8
/* 0036E8 80002AE8 00003021 */   addu  $a2, $zero, $zero

/* 0036EC 80002AEC 02002021 */  addu  $a0, $s0, $zero
/* 0036F0 80002AF0 00002821 */  addu  $a1, $zero, $zero
/* 0036F4 80002AF4 0C0009FE */  jal   func_800027F8
/* 0036F8 80002AF8 24060001 */   li    $a2, 1

/* 0036FC 80002AFC 02002021 */  addu  $a0, $s0, $zero
/* 003700 80002B00 24050006 */  li    $a1, 6
/* 003704 80002B04 0C0009FE */  jal   func_800027F8
/* 003708 80002B08 00003021 */   addu  $a2, $zero, $zero

/* 00370C 80002B0C 02002021 */  addu  $a0, $s0, $zero
/* 003710 80002B10 24050003 */  li    $a1, 3
/* 003714 80002B14 0C0009FE */  jal   func_800027F8
/* 003718 80002B18 00003021 */   addu  $a2, $zero, $zero

/* 00371C 80002B1C 02002021 */  addu  $a0, $s0, $zero
/* 003720 80002B20 24050004 */  li    $a1, 4
/* 003724 80002B24 0C0009FE */  jal   func_800027F8
/* 003728 80002B28 24060001 */   li    $a2, 1

/* 00372C 80002B2C 02002021 */  addu  $a0, $s0, $zero
/* 003730 80002B30 24050004 */  li    $a1, 4
/* 003734 80002B34 0C0009FE */  jal   func_800027F8
/* 003738 80002B38 00003021 */   addu  $a2, $zero, $zero

/* 00373C 80002B3C 02002021 */  addu  $a0, $s0, $zero
/* 003740 80002B40 24050005 */  li    $a1, 5
/* 003744 80002B44 0C0009FE */  jal   func_800027F8
/* 003748 80002B48 24060001 */   li    $a2, 1

/* 00374C 80002B4C 02002021 */  addu  $a0, $s0, $zero
/* 003750 80002B50 24050005 */  li    $a1, 5
/* 003754 80002B54 0C0009FE */  jal   func_800027F8
/* 003758 80002B58 00003021 */   addu  $a2, $zero, $zero

/* 00375C 80002B5C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 003760 80002B60 8FB60030 */  lw    $s6, 0x30($sp)
/* 003764 80002B64 8FB5002C */  lw    $s5, 0x2c($sp)
/* 003768 80002B68 8FB40028 */  lw    $s4, 0x28($sp)
/* 00376C 80002B6C 8FB30024 */  lw    $s3, 0x24($sp)
/* 003770 80002B70 8FB20020 */  lw    $s2, 0x20($sp)
/* 003774 80002B74 8FB1001C */  lw    $s1, 0x1c($sp)
/* 003778 80002B78 8FB00018 */  lw    $s0, 0x18($sp)
/* 00377C 80002B7C 03E00008 */  jr    $ra
/* 003780 80002B80 27BD0038 */   addiu $sp, $sp, 0x38