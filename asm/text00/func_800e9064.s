# Params:
# $a0 - load/write address
# $a1 - file ID?
# $a2 - 
# $a3 - 

glabel func_800E9064
/* 04E4B4 800E9064 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 04E4B8 800E9068 AFB50044 */  sw    $s5, 0x44($sp)
/* 04E4BC 800E906C 8FB50060 */  lw    $s5, 0x60($sp)
/* 04E4C0 800E9070 AFB10034 */  sw    $s1, 0x34($sp)
/* 04E4C4 800E9074 8FB10064 */  lw    $s1, 0x64($sp)
/* 04E4C8 800E9078 AFB40040 */  sw    $s4, 0x40($sp)
/* 04E4CC 800E907C 8FB40068 */  lw    $s4, 0x68($sp)
/* 04E4D0 800E9080 AFB20038 */  sw    $s2, 0x38($sp)
/* 04E4D4 800E9084 00809021 */  addu  $s2, $a0, $zero
/* 04E4D8 800E9088 AFBF004C */  sw    $ra, 0x4c($sp)
/* 04E4DC 800E908C AFB60048 */  sw    $s6, 0x48($sp)
/* 04E4E0 800E9090 AFB3003C */  sw    $s3, 0x3c($sp)
/* 04E4E4 800E9094 AFB00030 */  sw    $s0, 0x30($sp)
/* 04E4E8 800E9098 8E420000 */  lw    $v0, ($s2)
/* 04E4EC 800E909C 00A02021 */  addu  $a0, $a1, $zero
/* 04E4F0 800E90A0 00C0B021 */  addu  $s6, $a2, $zero
/* 04E4F4 800E90A4 00E09821 */  addu  $s3, $a3, $zero
/* 04E4F8 800E90A8 02202821 */  addu  $a1, $s1, $zero
/* 04E4FC 800E90AC 0C03C320 */  jal   func_800F0C80
/* 04E500 800E90B0 AFA20028 */   sw    $v0, 0x28($sp)

/* 04E504 800E90B4 00408021 */  addu  $s0, $v0, $zero
/* 04E508 800E90B8 12000077 */  beqz  $s0, .L800E9298
/* 04E50C 800E90BC 27A40028 */   addiu $a0, $sp, 0x28

/* 04E510 800E90C0 8FA30028 */  lw    $v1, 0x28($sp)
/* 04E514 800E90C4 3C05DE00 */  lui   $a1, 0xde00
/* 04E518 800E90C8 24620008 */  addiu $v0, $v1, 8
/* 04E51C 800E90CC AFA20028 */  sw    $v0, 0x28($sp)
/* 04E520 800E90D0 3C020010 */  lui   $v0, %hi(0x00105668) # $v0, 0x10
/* 04E524 800E90D4 24425668 */  addiu $v0, %lo(0x00105668) # addiu $v0, $v0, 0x5668
/* 04E528 800E90D8 AC620004 */  sw    $v0, 4($v1)
/* 04E52C 800E90DC 24620010 */  addiu $v0, $v1, 0x10
/* 04E530 800E90E0 AC650000 */  sw    $a1, ($v1)
/* 04E534 800E90E4 AFA20028 */  sw    $v0, 0x28($sp)
/* 04E538 800E90E8 3C020010 */  lui   $v0, %hi(0x00105630) # $v0, 0x10
/* 04E53C 800E90EC 24425630 */  addiu $v0, %lo(0x00105630) # addiu $v0, $v0, 0x5630
/* 04E540 800E90F0 AC650008 */  sw    $a1, 8($v1)
/* 04E544 800E90F4 0C00258A */  jal   func_80009628
/* 04E548 800E90F8 AC62000C */   sw    $v0, 0xc($v1)

/* 04E54C 800E90FC 32228000 */  andi  $v0, $s1, 0x8000
/* 04E550 800E9100 1040000D */  beqz  $v0, .L800E9138
/* 04E554 800E9104 3C046666 */   lui   $a0, (0x66666667 >> 16) # lui $a0, 0x6666

/* 04E558 800E9108 86030010 */  lh    $v1, 0x10($s0)
/* 04E55C 800E910C 34846667 */  ori   $a0, (0x66666667 & 0xFFFF) # ori $a0, $a0, 0x6667
/* 04E560 800E9110 00031100 */  sll   $v0, $v1, 4
/* 04E564 800E9114 00431023 */  subu  $v0, $v0, $v1
/* 04E568 800E9118 00021140 */  sll   $v0, $v0, 5
/* 04E56C 800E911C 00440018 */  mult  $v0, $a0
/* 04E570 800E9120 000217C3 */  sra   $v0, $v0, 0x1f
/* 04E574 800E9124 00004010 */  mfhi  $t0
/* 04E578 800E9128 000819C3 */  sra   $v1, $t0, 7
/* 04E57C 800E912C 00000000 */  nop   
/* 04E580 800E9130 0803A44F */  j     .L800E913C
/* 04E584 800E9134 00623823 */   subu  $a3, $v1, $v0

.L800E9138:
/* 04E588 800E9138 86070010 */  lh    $a3, 0x10($s0)

.L800E913C:
/* 04E58C 800E913C 32820010 */  andi  $v0, $s4, 0x10
/* 04E590 800E9140 10400005 */  beqz  $v0, .L800E9158
/* 04E594 800E9144 00000000 */   nop   

/* 04E598 800E9148 8602000E */  lh    $v0, 0xe($s0)
/* 04E59C 800E914C 00073840 */  sll   $a3, $a3, 1
/* 04E5A0 800E9150 0803A457 */  j     .L800E915C
/* 04E5A4 800E9154 00022040 */   sll   $a0, $v0, 1

.L800E9158:
/* 04E5A8 800E9158 8604000E */  lh    $a0, 0xe($s0)

.L800E915C:
/* 04E5AC 800E915C 28E20196 */  slti  $v0, $a3, 0x196
/* 04E5B0 800E9160 14400014 */  bnez  $v0, .L800E91B4
/* 04E5B4 800E9164 32820020 */   andi  $v0, $s4, 0x20

/* 04E5B8 800E9168 000410C0 */  sll   $v0, $a0, 3
/* 04E5BC 800E916C 00441023 */  subu  $v0, $v0, $a0
/* 04E5C0 800E9170 00021080 */  sll   $v0, $v0, 2
/* 04E5C4 800E9174 00441023 */  subu  $v0, $v0, $a0
/* 04E5C8 800E9178 00021900 */  sll   $v1, $v0, 4
/* 04E5CC 800E917C 00621823 */  subu  $v1, $v1, $v0
/* 04E5D0 800E9180 0067001A */  div   $zero, $v1, $a3
/* 04E5D4 800E9184 14E00002 */  bnez  $a3, .L800E9190
/* 04E5D8 800E9188 00000000 */   nop   

/* 04E5DC 800E918C 0007000D */  break 7

.L800E9190:
/* 04E5E0 800E9190 2401FFFF */  li    $at, -1
/* 04E5E4 800E9194 14E10004 */  bne   $a3, $at, .L800E91A8
/* 04E5E8 800E9198 3C018000 */   lui   $at, 0x8000

/* 04E5EC 800E919C 14610002 */  bne   $v1, $at, .L800E91A8
/* 04E5F0 800E91A0 00000000 */   nop   

/* 04E5F4 800E91A4 0006000D */  break 6

.L800E91A8:
/* 04E5F8 800E91A8 00002012 */  mflo  $a0
/* 04E5FC 800E91AC 24070195 */  li    $a3, 405
/* 04E600 800E91B0 32820020 */  andi  $v0, $s4, 0x20

.L800E91B4:
/* 04E604 800E91B4 10400003 */  beqz  $v0, .L800E91C4
/* 04E608 800E91B8 00801821 */   addu  $v1, $a0, $zero

/* 04E60C 800E91BC 0803A488 */  j     .L800E9220
/* 04E610 800E91C0 00E03021 */   addu  $a2, $a3, $zero

.L800E91C4:
/* 04E614 800E91C4 00000000 */  nop   
/* 04E618 800E91C8 00F50018 */  mult  $a3, $s5
/* 04E61C 800E91CC 00001812 */  mflo  $v1
/* 04E620 800E91D0 00000000 */  nop   
/* 04E624 800E91D4 00000000 */  nop   
/* 04E628 800E91D8 00950018 */  mult  $a0, $s5
/* 04E62C 800E91DC 00002012 */  mflo  $a0
/* 04E630 800E91E0 3C028080 */  lui   $v0, (0x80808081 >> 16) # lui $v0, 0x8080
/* 04E634 800E91E4 34428081 */  ori   $v0, (0x80808081 & 0xFFFF) # ori $v0, $v0, 0x8081
/* 04E638 800E91E8 00620018 */  mult  $v1, $v0
/* 04E63C 800E91EC 00004810 */  mfhi  $t1
/* 04E640 800E91F0 00000000 */  nop   
/* 04E644 800E91F4 00000000 */  nop   
/* 04E648 800E91F8 00820018 */  mult  $a0, $v0
/* 04E64C 800E91FC 01231021 */  addu  $v0, $t1, $v1
/* 04E650 800E9200 000211C3 */  sra   $v0, $v0, 7
/* 04E654 800E9204 00031FC3 */  sra   $v1, $v1, 0x1f
/* 04E658 800E9208 00433023 */  subu  $a2, $v0, $v1
/* 04E65C 800E920C 00002810 */  mfhi  $a1
/* 04E660 800E9210 00A41021 */  addu  $v0, $a1, $a0
/* 04E664 800E9214 000211C3 */  sra   $v0, $v0, 7
/* 04E668 800E9218 000427C3 */  sra   $a0, $a0, 0x1f
/* 04E66C 800E921C 00441823 */  subu  $v1, $v0, $a0

.L800E9220:
/* 04E670 800E9220 000317C2 */  srl   $v0, $v1, 0x1f
/* 04E674 800E9224 00621021 */  addu  $v0, $v1, $v0
/* 04E678 800E9228 00021043 */  sra   $v0, $v0, 1
/* 04E67C 800E922C 02621023 */  subu  $v0, $s3, $v0
/* 04E680 800E9230 AFA20010 */  sw    $v0, 0x10($sp)
/* 04E684 800E9234 86020010 */  lh    $v0, 0x10($s0)
/* 04E688 800E9238 AFA20014 */  sw    $v0, 0x14($sp)
/* 04E68C 800E923C 8602000E */  lh    $v0, 0xe($s0)
/* 04E690 800E9240 27A40028 */  addiu $a0, $sp, 0x28
/* 04E694 800E9244 00063FC2 */  srl   $a3, $a2, 0x1f
/* 04E698 800E9248 AFA6001C */  sw    $a2, 0x1c($sp)
/* 04E69C 800E924C AFA30020 */  sw    $v1, 0x20($sp)
/* 04E6A0 800E9250 AFA20018 */  sw    $v0, 0x18($sp)
/* 04E6A4 800E9254 8602000C */  lh    $v0, 0xc($s0)
/* 04E6A8 800E9258 00C73821 */  addu  $a3, $a2, $a3
/* 04E6AC 800E925C 00073843 */  sra   $a3, $a3, 1
/* 04E6B0 800E9260 AFA20024 */  sw    $v0, 0x24($sp)
/* 04E6B4 800E9264 8E050004 */  lw    $a1, 4($s0)
/* 04E6B8 800E9268 02C73823 */  subu  $a3, $s6, $a3
/* 04E6BC 800E926C 0C039F4D */  jal   func_800E7D34
/* 04E6C0 800E9270 00003021 */   addu  $a2, $zero, $zero

/* 04E6C4 800E9274 8FA30028 */  lw    $v1, 0x28($sp)
/* 04E6C8 800E9278 3C02DE00 */  lui   $v0, 0xde00
/* 04E6CC 800E927C 24640008 */  addiu $a0, $v1, 8
/* 04E6D0 800E9280 AFA40028 */  sw    $a0, 0x28($sp)
/* 04E6D4 800E9284 AC620000 */  sw    $v0, ($v1)
/* 04E6D8 800E9288 3C020010 */  lui   $v0, %hi(0x00105698) # $v0, 0x10
/* 04E6DC 800E928C 24425698 */  addiu $v0, %lo(0x00105698) # addiu $v0, $v0, 0x5698
/* 04E6E0 800E9290 AC620004 */  sw    $v0, 4($v1)
/* 04E6E4 800E9294 AE440000 */  sw    $a0, ($s2)

.L800E9298:
/* 04E6E8 800E9298 8FBF004C */  lw    $ra, 0x4c($sp)
/* 04E6EC 800E929C 8FB60048 */  lw    $s6, 0x48($sp)
/* 04E6F0 800E92A0 8FB50044 */  lw    $s5, 0x44($sp)
/* 04E6F4 800E92A4 8FB40040 */  lw    $s4, 0x40($sp)
/* 04E6F8 800E92A8 8FB3003C */  lw    $s3, 0x3c($sp)
/* 04E6FC 800E92AC 8FB20038 */  lw    $s2, 0x38($sp)
/* 04E700 800E92B0 8FB10034 */  lw    $s1, 0x34($sp)
/* 04E704 800E92B4 8FB00030 */  lw    $s0, 0x30($sp)
/* 04E708 800E92B8 03E00008 */  jr    $ra
/* 04E70C 800E92BC 27BD0050 */   addiu $sp, $sp, 0x50
