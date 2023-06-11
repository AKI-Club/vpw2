# related to loading stable data at 800A4510

glabel func_8000A564
/* 00B164 8000A564 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00B168 8000A568 AFB00010 */  sw    $s0, 0x10($sp)
/* 00B16C 8000A56C 3C108004 */  lui   $s0, %hi(tbl_StableDefs) # $s0, 0x8004
/* 00B170 8000A570 2610FCBC */  addiu $s0, %lo(tbl_StableDefs) # addiu $s0, $s0, -0x344
/* 00B174 8000A574 AFB10014 */  sw    $s1, 0x14($sp)
/* 00B178 8000A578 3C11800A */  lui   $s1, %hi(bssMain_800A4510) # $s1, 0x800a
/* 00B17C 8000A57C 26314510 */  addiu $s1, %lo(bssMain_800A4510) # addiu $s1, $s1, 0x4510
/* 00B180 8000A580 02202021 */  addu  $a0, $s1, $zero
/* 00B184 8000A584 240503B8 */  li    $a1, 952
/* 00B188 8000A588 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00B18C 8000A58C AFB40020 */  sw    $s4, 0x20($sp)
/* 00B190 8000A590 AFB3001C */  sw    $s3, 0x1c($sp)
/* 00B194 8000A594 0C00C950 */  jal   bzero
/* 00B198 8000A598 AFB20018 */   sw    $s2, 0x18($sp)

/* 00B19C 8000A59C 00009821 */  addu  $s3, $zero, $zero
/* 00B1A0 8000A5A0 3C148004 */  lui   $s4, %hi(ptrTbl_WrestlerData) # $s4, 0x8004
/* 00B1A4 8000A5A4 2694FAB0 */  addiu $s4, %lo(ptrTbl_WrestlerData) # addiu $s4, $s4, -0x550
/* 00B1A8 8000A5A8 26320022 */  addiu $s2, $s1, 0x22 # advance to stable name position

.L8000A5AC:
/* 00B1AC 8000A5AC 8E020004 */  lw    $v0, 4($s0) # load stable text index
/* 00B1B0 8000A5B0 3C038004 */  lui   $v1, %hi(dynPtr_DefaultNames) # $v1, 0x8004
/* 00B1B4 8000A5B4 8C63FDA0 */  lw    $v1, %lo(dynPtr_DefaultNames)($v1)
/* 00B1B8 8000A5B8 00021040 */  sll   $v0, $v0, 1
/* 00B1BC 8000A5BC 00431021 */  addu  $v0, $v0, $v1
/* 00B1C0 8000A5C0 94450000 */  lhu   $a1, ($v0)
/* 00B1C4 8000A5C4 02402021 */  addu  $a0, $s2, $zero
/* 00B1C8 8000A5C8 0C001B1E */  jal   func_80006C78
/* 00B1CC 8000A5CC 00652821 */   addu  $a1, $v1, $a1

/* 00B1D0 8000A5D0 8E030000 */  lw    $v1, ($s0) # load stable data pointer
/* 00B1D4 8000A5D4 90620000 */  lbu   $v0, ($v1)
/* 00B1D8 8000A5D8 10400017 */  beqz  $v0, .L8000A638
/* 00B1DC 8000A5DC 00002021 */   addu  $a0, $zero, $zero

/* 00B1E0 8000A5E0 02202821 */  addu  $a1, $s1, $zero

.L8000A5E4:
/* 00B1E4 8000A5E4 00641021 */  addu  $v0, $v1, $a0
/* 00B1E8 8000A5E8 90420000 */  lbu   $v0, ($v0)
/* 00B1EC 8000A5EC 00021080 */  sll   $v0, $v0, 2
/* 00B1F0 8000A5F0 00541021 */  addu  $v0, $v0, $s4
/* 00B1F4 8000A5F4 8C420000 */  lw    $v0, ($v0)
/* 00B1F8 8000A5F8 94420002 */  lhu   $v0, 2($v0)
/* 00B1FC 8000A5FC A4A20002 */  sh    $v0, 2($a1)

/* 00B200 8000A600 8E020000 */  lw    $v0, ($s0)
/* 00B204 8000A604 00441021 */  addu  $v0, $v0, $a0
/* 00B208 8000A608 90420000 */  lbu   $v0, ($v0)
/* 00B20C 8000A60C 00021080 */  sll   $v0, $v0, 2
/* 00B210 8000A610 00541021 */  addu  $v0, $v0, $s4
/* 00B214 8000A614 8C420000 */  lw    $v0, ($v0)
/* 00B218 8000A618 94420000 */  lhu   $v0, ($v0)
/* 00B21C 8000A61C A4A20000 */  sh    $v0, ($a1)

/* 00B220 8000A620 8E030000 */  lw    $v1, ($s0)
/* 00B224 8000A624 24840001 */  addiu $a0, $a0, 1
/* 00B228 8000A628 00641021 */  addu  $v0, $v1, $a0
/* 00B22C 8000A62C 90420000 */  lbu   $v0, ($v0)
/* 00B230 8000A630 1440FFEC */  bnez  $v0, .L8000A5E4
/* 00B234 8000A634 24A50004 */   addiu $a1, $a1, 4

.L8000A638:
/* 00B238 8000A638 28820008 */  slti  $v0, $a0, 8
/* 00B23C 8000A63C 10400009 */  beqz  $v0, .L8000A664
/* 00B240 8000A640 A644FFFE */   sh    $a0, -2($s2)

/* 00B244 8000A644 00041080 */  sll   $v0, $a0, 2
/* 00B248 8000A648 00511821 */  addu  $v1, $v0, $s1

.L8000A64C:
/* 00B24C 8000A64C A4600000 */  sh    $zero, ($v1)
/* 00B250 8000A650 A4600002 */  sh    $zero, 2($v1)
/* 00B254 8000A654 24840001 */  addiu $a0, $a0, 1
/* 00B258 8000A658 28820008 */  slti  $v0, $a0, 8
/* 00B25C 8000A65C 1440FFFB */  bnez  $v0, .L8000A64C
/* 00B260 8000A660 24630004 */   addiu $v1, $v1, 4

.L8000A664:
/* 00B264 8000A664 26730001 */  addiu $s3, $s3, 1
/* 00B268 8000A668 26100008 */  addiu $s0, $s0, 8
/* 00B26C 8000A66C 26520038 */  addiu $s2, $s2, 0x38
/* 00B270 8000A670 2A620011 */  slti  $v0, $s3, 0x11
/* 00B274 8000A674 1440FFCD */  bnez  $v0, .L8000A5AC
/* 00B278 8000A678 26310038 */   addiu $s1, $s1, 0x38

/* 00B27C 8000A67C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00B280 8000A680 8FB40020 */  lw    $s4, 0x20($sp)
/* 00B284 8000A684 8FB3001C */  lw    $s3, 0x1c($sp)
/* 00B288 8000A688 8FB20018 */  lw    $s2, 0x18($sp)
/* 00B28C 8000A68C 8FB10014 */  lw    $s1, 0x14($sp)
/* 00B290 8000A690 8FB00010 */  lw    $s0, 0x10($sp)
/* 00B294 8000A694 03E00008 */  jr    $ra
/* 00B298 8000A698 27BD0028 */   addiu $sp, $sp, 0x28
