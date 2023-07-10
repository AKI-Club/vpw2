glabel func_800E7B60
/* 04CFB0 800E7B60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04CFB4 800E7B64 AFB7001C */  sw    $s7, 0x1c($sp)
/* 04CFB8 800E7B68 AFB60018 */  sw    $s6, 0x18($sp)
/* 04CFBC 800E7B6C AFB50014 */  sw    $s5, 0x14($sp)
/* 04CFC0 800E7B70 AFB40010 */  sw    $s4, 0x10($sp)
/* 04CFC4 800E7B74 AFB3000C */  sw    $s3, 0xc($sp)
/* 04CFC8 800E7B78 AFB20008 */  sw    $s2, 8($sp)
/* 04CFCC 800E7B7C AFB10004 */  sw    $s1, 4($sp)
/* 04CFD0 800E7B80 AFB00000 */  sw    $s0, ($sp)
/* 04CFD4 800E7B84 8C880000 */  lw    $t0, ($a0)
/* 04CFD8 800E7B88 00055040 */  sll   $t2, $a1, 1
/* 04CFDC 800E7B8C 3150FFFF */  andi  $s0, $t2, 0xffff
/* 04CFE0 800E7B90 3C0B0218 */  lui   $t3, 0x218
/* 04CFE4 800E7B94 020B1025 */  or    $v0, $s0, $t3
/* 04CFE8 800E7B98 00073C80 */  sll   $a3, $a3, 0x12
/* 04CFEC 800E7B9C 00073C02 */  srl   $a3, $a3, 0x10
/* 04CFF0 800E7BA0 00063480 */  sll   $a2, $a2, 0x12
/* 04CFF4 800E7BA4 24A90001 */  addiu $t1, $a1, 1
/* 04CFF8 800E7BA8 00094840 */  sll   $t1, $t1, 1
/* 04CFFC 800E7BAC 312FFFFF */  andi  $t7, $t1, 0xffff
/* 04D000 800E7BB0 24B10002 */  addiu $s1, $a1, 2
/* 04D004 800E7BB4 00118840 */  sll   $s1, $s1, 1
/* 04D008 800E7BB8 322EFFFF */  andi  $t6, $s1, 0xffff
/* 04D00C 800E7BBC 24A50003 */  addiu $a1, $a1, 3
/* 04D010 800E7BC0 00052840 */  sll   $a1, $a1, 1
/* 04D014 800E7BC4 314A00FF */  andi  $t2, $t2, 0xff
/* 04D018 800E7BC8 000A5400 */  sll   $t2, $t2, 0x10
/* 04D01C 800E7BCC 312900FF */  andi  $t1, $t1, 0xff
/* 04D020 800E7BD0 00094A00 */  sll   $t1, $t1, 8
/* 04D024 800E7BD4 01494825 */  or    $t1, $t2, $t1
/* 04D028 800E7BD8 323100FF */  andi  $s1, $s1, 0xff
/* 04D02C 800E7BDC 01001821 */  addu  $v1, $t0, $zero
/* 04D030 800E7BE0 25080008 */  addiu $t0, $t0, 8
/* 04D034 800E7BE4 01006821 */  addu  $t5, $t0, $zero
/* 04D038 800E7BE8 25080008 */  addiu $t0, $t0, 8
/* 04D03C 800E7BEC 01009021 */  addu  $s2, $t0, $zero
/* 04D040 800E7BF0 25080008 */  addiu $t0, $t0, 8
/* 04D044 800E7BF4 01009821 */  addu  $s3, $t0, $zero
/* 04D048 800E7BF8 25080008 */  addiu $t0, $t0, 8
/* 04D04C 800E7BFC 0100A021 */  addu  $s4, $t0, $zero
/* 04D050 800E7C00 25080008 */  addiu $t0, $t0, 8
/* 04D054 800E7C04 0100A821 */  addu  $s5, $t0, $zero
/* 04D058 800E7C08 25080008 */  addiu $t0, $t0, 8
/* 04D05C 800E7C0C 0100B021 */  addu  $s6, $t0, $zero
/* 04D060 800E7C10 25080008 */  addiu $t0, $t0, 8
/* 04D064 800E7C14 0100B821 */  addu  $s7, $t0, $zero
/* 04D068 800E7C18 25080008 */  addiu $t0, $t0, 8
/* 04D06C 800E7C1C 0100C021 */  addu  $t8, $t0, $zero
/* 04D070 800E7C20 AC620000 */  sw    $v0, ($v1)
/* 04D074 800E7C24 00E61025 */  or    $v0, $a3, $a2
/* 04D078 800E7C28 AC620004 */  sw    $v0, 4($v1)
/* 04D07C 800E7C2C 8FAC0030 */  lw    $t4, 0x30($sp)
/* 04D080 800E7C30 25080008 */  addiu $t0, $t0, 8
/* 04D084 800E7C34 01EB1025 */  or    $v0, $t7, $t3
/* 04D088 800E7C38 ADA20000 */  sw    $v0, ($t5)
/* 04D08C 800E7C3C 01CB1025 */  or    $v0, $t6, $t3
/* 04D090 800E7C40 000C6480 */  sll   $t4, $t4, 0x12
/* 04D094 800E7C44 00EC3825 */  or    $a3, $a3, $t4
/* 04D098 800E7C48 ADA70004 */  sw    $a3, 4($t5)
/* 04D09C 800E7C4C 8FA30034 */  lw    $v1, 0x34($sp)
/* 04D0A0 800E7C50 30ADFFFF */  andi  $t5, $a1, 0xffff
/* 04D0A4 800E7C54 01AB5825 */  or    $t3, $t5, $t3
/* 04D0A8 800E7C58 30A500FF */  andi  $a1, $a1, 0xff
/* 04D0AC 800E7C5C 01254825 */  or    $t1, $t1, $a1
/* 04D0B0 800E7C60 00052A00 */  sll   $a1, $a1, 8
/* 04D0B4 800E7C64 01455025 */  or    $t2, $t2, $a1
/* 04D0B8 800E7C68 01515025 */  or    $t2, $t2, $s1
/* 04D0BC 800E7C6C AE420000 */  sw    $v0, ($s2)
/* 04D0C0 800E7C70 00031C80 */  sll   $v1, $v1, 0x12
/* 04D0C4 800E7C74 00031C02 */  srl   $v1, $v1, 0x10
/* 04D0C8 800E7C78 00663025 */  or    $a2, $v1, $a2
/* 04D0CC 800E7C7C 006C1825 */  or    $v1, $v1, $t4
/* 04D0D0 800E7C80 AE460004 */  sw    $a2, 4($s2)
/* 04D0D4 800E7C84 AE6B0000 */  sw    $t3, ($s3)
/* 04D0D8 800E7C88 3C0B0214 */  lui   $t3, 0x214
/* 04D0DC 800E7C8C 020B8025 */  or    $s0, $s0, $t3
/* 04D0E0 800E7C90 AE630004 */  sw    $v1, 4($s3)
/* 04D0E4 800E7C94 AE900000 */  sw    $s0, ($s4)
/* 04D0E8 800E7C98 8FA2003C */  lw    $v0, 0x3c($sp)
/* 04D0EC 800E7C9C 8FA60038 */  lw    $a2, 0x38($sp)
/* 04D0F0 800E7CA0 8FA70040 */  lw    $a3, 0x40($sp)
/* 04D0F4 800E7CA4 01EB7825 */  or    $t7, $t7, $t3
/* 04D0F8 800E7CA8 01CB7025 */  or    $t6, $t6, $t3
/* 04D0FC 800E7CAC 01AB6825 */  or    $t5, $t5, $t3
/* 04D100 800E7CB0 00021540 */  sll   $v0, $v0, 0x15
/* 04D104 800E7CB4 00021402 */  srl   $v0, $v0, 0x10
/* 04D108 800E7CB8 00063540 */  sll   $a2, $a2, 0x15
/* 04D10C 800E7CBC 00461825 */  or    $v1, $v0, $a2
/* 04D110 800E7CC0 AE830004 */  sw    $v1, 4($s4)
/* 04D114 800E7CC4 AEAF0000 */  sw    $t7, ($s5)
/* 04D118 800E7CC8 8FA30044 */  lw    $v1, 0x44($sp)
/* 04D11C 800E7CCC 00073D40 */  sll   $a3, $a3, 0x15
/* 04D120 800E7CD0 00471025 */  or    $v0, $v0, $a3
/* 04D124 800E7CD4 AEA20004 */  sw    $v0, 4($s5)
/* 04D128 800E7CD8 3C020700 */  lui   $v0, 0x700
/* 04D12C 800E7CDC 01224825 */  or    $t1, $t1, $v0
/* 04D130 800E7CE0 AECE0000 */  sw    $t6, ($s6)
/* 04D134 800E7CE4 00031D40 */  sll   $v1, $v1, 0x15
/* 04D138 800E7CE8 00031C02 */  srl   $v1, $v1, 0x10
/* 04D13C 800E7CEC 00663025 */  or    $a2, $v1, $a2
/* 04D140 800E7CF0 00671825 */  or    $v1, $v1, $a3
/* 04D144 800E7CF4 AEC60004 */  sw    $a2, 4($s6)
/* 04D148 800E7CF8 AEED0000 */  sw    $t5, ($s7)
/* 04D14C 800E7CFC AEE30004 */  sw    $v1, 4($s7)
/* 04D150 800E7D00 AF090000 */  sw    $t1, ($t8)
/* 04D154 800E7D04 AF0A0004 */  sw    $t2, 4($t8)
/* 04D158 800E7D08 AC880000 */  sw    $t0, ($a0)
/* 04D15C 800E7D0C 8FB7001C */  lw    $s7, 0x1c($sp)
/* 04D160 800E7D10 8FB60018 */  lw    $s6, 0x18($sp)
/* 04D164 800E7D14 8FB50014 */  lw    $s5, 0x14($sp)
/* 04D168 800E7D18 8FB40010 */  lw    $s4, 0x10($sp)
/* 04D16C 800E7D1C 8FB3000C */  lw    $s3, 0xc($sp)
/* 04D170 800E7D20 8FB20008 */  lw    $s2, 8($sp)
/* 04D174 800E7D24 8FB10004 */  lw    $s1, 4($sp)
/* 04D178 800E7D28 8FB00000 */  lw    $s0, ($sp)
/* 04D17C 800E7D2C 03E00008 */  jr    $ra
/* 04D180 800E7D30 27BD0020 */   addiu $sp, $sp, 0x20
