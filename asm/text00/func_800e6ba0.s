glabel func_800E6BA0
/* 04BFF0 800E6BA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04BFF4 800E6BA4 AFB00010 */  sw    $s0, 0x10($sp)
/* 04BFF8 800E6BA8 3C108011 */  lui   $s0, %hi(bss0_8010C648) # $s0, 0x8011
/* 04BFFC 800E6BAC 2610C648 */  addiu $s0, %lo(bss0_8010C648) # addiu $s0, $s0, -0x39b8
/* 04C000 800E6BB0 02002021 */  addu  $a0, $s0, $zero
/* 04C004 800E6BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04C008 800E6BB8 0C000CB8 */  jal   func_800032E0
/* 04C00C 800E6BBC 26050008 */   addiu $a1, $s0, 8

/* 04C010 800E6BC0 0C000CCC */  jal   func_80003330
/* 04C014 800E6BC4 00000000 */   nop   

/* 04C018 800E6BC8 0C000534 */  jal   func_800014D0
/* 04C01C 800E6BCC 240401E0 */   li    $a0, 480

/* 04C020 800E6BD0 0C00127A */  jal   func_800049E8
/* 04C024 800E6BD4 2404000F */   li    $a0, 15

/* 04C028 800E6BD8 0C002A5C */  jal   func_8000A970
/* 04C02C 800E6BDC 00000000 */   nop   

# load edit mode move data
/* 04C030 800E6BE0 0C03F74B */  jal   func_800FDD2C
/* 04C034 800E6BE4 00000000 */   nop   

/* 04C038 800E6BE8 0C03C310 */  jal   func_800F0C40
/* 04C03C 800E6BEC 00000000 */   nop   

/* 04C040 800E6BF0 0C0025B8 */  jal   func_800096E0
/* 04C044 800E6BF4 00002021 */   addu  $a0, $zero, $zero

# allocate and load SRAM and Controller Pak data
/* 04C048 800E6BF8 0C03F06C */  jal   func_800FC1B0
/* 04C04C 800E6BFC 00000000 */   nop   

/* 04C050 800E6C00 0C03DD41 */  jal   func_800F7504
/* 04C054 800E6C04 00000000 */   nop   

/* 04C058 800E6C08 0C03CC0F */  jal   func_800F303C
/* 04C05C 800E6C0C 02002021 */   addu  $a0, $s0, $zero

/* 04C060 800E6C10 3C048011 */  lui   $a0, %hi(bss0_8010C740) # $a0, 0x8011
/* 04C064 800E6C14 2484C740 */  addiu $a0, %lo(bss0_8010C740) # addiu $a0, $a0, -0x38c0
/* 04C068 800E6C18 3C108011 */  lui   $s0, %hi(bss0_8010C658) # $s0, 0x8011
/* 04C06C 800E6C1C 2610C658 */  addiu $s0, %lo(bss0_8010C658) # addiu $s0, $s0, -0x39a8
/* 04C070 800E6C20 0C03BB5F */  jal   func_800EED7C
/* 04C074 800E6C24 02002821 */   addu  $a1, $s0, $zero

/* 04C078 800E6C28 0C03A61E */  jal   func_800E9878
/* 04C07C 800E6C2C 00000000 */   nop   

/* 04C080 800E6C30 0C046514 */  jal   func_80119450
/* 04C084 800E6C34 00000000 */   nop   

/* 04C088 800E6C38 0C00095A */  jal   func_80002568
/* 04C08C 800E6C3C 02002021 */   addu  $a0, $s0, $zero

/* 04C090 800E6C40 00002821 */  addu  $a1, $zero, $zero
/* 04C094 800E6C44 3C048012 */  lui   $a0, %hi(bss0_80118F48) # $a0, 0x8012
/* 04C098 800E6C48 24848F48 */  addiu $a0, %lo(bss0_80118F48) # addiu $a0, $a0, -0x70b8
/* 04C09C 800E6C4C 2403FFFF */  li    $v1, -1
/* 04C0A0 800E6C50 24020008 */  li    $v0, 8
/* 04C0A4 800E6C54 3C018012 */  lui   $at, %hi(bss0_801193D8) # $at, 0x8012
/* 04C0A8 800E6C58 AC2293D8 */  sw    $v0, %lo(bss0_801193D8)($at)
/* 04C0AC 800E6C5C 24020080 */  li    $v0, 128
/* 04C0B0 800E6C60 3C018012 */  lui   $at, %hi(bss0_80118AA4) # $at, 0x8012
/* 04C0B4 800E6C64 A0228AA4 */  sb    $v0, %lo(bss0_80118AA4)($at)
/* 04C0B8 800E6C68 24020040 */  li    $v0, 64
/* 04C0BC 800E6C6C 3C018012 */  lui   $at, %hi(bss0_801181B8) # $at, 0x8012
/* 04C0C0 800E6C70 AC2081B8 */  sw    $zero, %lo(bss0_801181B8)($at)
/* 04C0C4 800E6C74 3C018012 */  lui   $at, %hi(bss0_80119124) # $at, 0x8012
/* 04C0C8 800E6C78 AC239124 */  sw    $v1, %lo(bss0_80119124)($at)
/* 04C0CC 800E6C7C 3C018012 */  lui   $at, %hi(bss0_80119120) # $at, 0x8012
/* 04C0D0 800E6C80 AC239120 */  sw    $v1, %lo(bss0_80119120)($at)
/* 04C0D4 800E6C84 3C018012 */  lui   $at, %hi(bss0_8011911C) # $at, 0x8012
/* 04C0D8 800E6C88 AC23911C */  sw    $v1, %lo(bss0_8011911C)($at)
/* 04C0DC 800E6C8C 3C018012 */  lui   $at, %hi(bss0_80119118) # $at, 0x8012
/* 04C0E0 800E6C90 AC239118 */  sw    $v1, %lo(bss0_80119118)($at)
/* 04C0E4 800E6C94 3C018012 */  lui   $at, %hi(bss0_801192AC) # $at, 0x8012
/* 04C0E8 800E6C98 AC2092AC */  sw    $zero, %lo(bss0_801192AC)($at)
/* 04C0EC 800E6C9C 3C018012 */  lui   $at, %hi(bss0_801192A8) # $at, 0x8012
/* 04C0F0 800E6CA0 AC2092A8 */  sw    $zero, %lo(bss0_801192A8)($at)
/* 04C0F4 800E6CA4 3C018012 */  lui   $at, %hi(bss0_801192A4) # $at, 0x8012
/* 04C0F8 800E6CA8 AC2092A4 */  sw    $zero, %lo(bss0_801192A4)($at)
/* 04C0FC 800E6CAC 3C018012 */  lui   $at, %hi(bss0_801192A0) # $at, 0x8012
/* 04C100 800E6CB0 AC2092A0 */  sw    $zero, %lo(bss0_801192A0)($at)
/* 04C104 800E6CB4 3C018012 */  lui   $at, %hi(bss0_80118AB0) # $at, 0x8012
/* 04C108 800E6CB8 AC208AB0 */  sw    $zero, %lo(bss0_80118AB0)($at)
/* 04C10C 800E6CBC 3C018012 */  lui   $at, %hi(bss0_801181A0) # $at, 0x8012
/* 04C110 800E6CC0 AC2081A0 */  sw    $zero, %lo(bss0_801181A0)($at)
/* 04C114 800E6CC4 3C018012 */  lui   $at, %hi(bss0_801192B8) # $at, 0x8012
/* 04C118 800E6CC8 A02292B8 */  sb    $v0, %lo(bss0_801192B8)($at)
/* 04C11C 800E6CCC 3C018012 */  lui   $at, %hi(bss0_80118CA0) # $at, 0x8012
/* 04C120 800E6CD0 AC238CA0 */  sw    $v1, %lo(bss0_80118CA0)($at)

# outer loop {
.L800E6CD4:
/* 04C124 800E6CD4 2403000F */  li    $v1, 15
/* 04C128 800E6CD8 2482000F */  addiu $v0, $a0, 0xf

# inner loop {
.L800E6CDC:
/* 04C12C 800E6CDC A0400000 */  sb    $zero, ($v0)
/* 04C130 800E6CE0 2463FFFF */  addiu $v1, $v1, -1
/* 04C134 800E6CE4 0461FFFD */  bgez  $v1, .L800E6CDC
/* 04C138 800E6CE8 2442FFFF */   addiu $v0, $v0, -1
# } inner loop

/* 04C13C 800E6CEC 24A50001 */  addiu $a1, $a1, 1
/* 04C140 800E6CF0 28A20004 */  slti  $v0, $a1, 4
/* 04C144 800E6CF4 1440FFF7 */  bnez  $v0, .L800E6CD4
/* 04C148 800E6CF8 24840010 */   addiu $a0, $a0, 0x10
# } outer loop

/* 04C14C 800E6CFC 3C018010 */  lui   $at, %hi(D_801041A8) # $at, 0x8010
/* 04C150 800E6D00 0C039B86 */  jal   func_800E6E18
/* 04C154 800E6D04 AC2041A8 */   sw    $zero, %lo(D_801041A8)($at)

/* 04C158 800E6D08 0C000EF5 */  jal   func_80003BD4
/* 04C15C 800E6D0C 2404007F */   li    $a0, 127

/* 04C160 800E6D10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04C164 800E6D14 8FB00010 */  lw    $s0, 0x10($sp)
/* 04C168 800E6D18 03E00008 */  jr    $ra
/* 04C16C 800E6D1C 27BD0018 */   addiu $sp, $sp, 0x18
