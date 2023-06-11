glabel func_8000998C
/* 00A58C 8000998C 27BDFFF8 */  addiu $sp, $sp, -8
/* 00A590 80009990 24060010 */  li    $a2, 16
/* 00A594 80009994 24050380 */  li    $a1, 896

.L80009998:
# number of wrestlers in stable
/* 00A598 80009998 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00A59C 8000999C 00451021 */  addu  $v0, $v0, $a1
/* 00A5A0 800099A0 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00A5A4 800099A4 18400011 */  blez  $v0, .L800099EC
/* 00A5A8 800099A8 00001821 */   addu  $v1, $zero, $zero

/* 00A5AC 800099AC 00063A00 */  sll   $a3, $a2, 8
/* 00A5B0 800099B0 00031080 */  sll   $v0, $v1, 2

.L800099B4:
/* 00A5B4 800099B4 00451021 */  addu  $v0, $v0, $a1
/* 00A5B8 800099B8 3C01800A */  lui   $at, %hi(bssMain_800A4510)
/* 00A5BC 800099BC 00220821 */  addu  $at, $at, $v0
/* 00A5C0 800099C0 94224510 */  lhu   $v0, %lo(bssMain_800A4510)($at)
/* 00A5C4 800099C4 54440003 */  bnel  $v0, $a0, .L800099D4
/* 00A5C8 800099C8 24630001 */   addiu $v1, $v1, 1

/* 00A5CC 800099CC 0800267F */  j     .L800099FC
/* 00A5D0 800099D0 00E31021 */   addu  $v0, $a3, $v1

.L800099D4:
# number of wrestlers in stable
/* 00A5D4 800099D4 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00A5D8 800099D8 00451021 */  addu  $v0, $v0, $a1
/* 00A5DC 800099DC 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00A5E0 800099E0 0062102A */  slt   $v0, $v1, $v0
/* 00A5E4 800099E4 1440FFF3 */  bnez  $v0, .L800099B4
/* 00A5E8 800099E8 00031080 */   sll   $v0, $v1, 2

.L800099EC:
/* 00A5EC 800099EC 24C6FFFF */  addiu $a2, $a2, -1
/* 00A5F0 800099F0 04C1FFE9 */  bgez  $a2, .L80009998
/* 00A5F4 800099F4 24A5FFC8 */   addiu $a1, $a1, -0x38

/* 00A5F8 800099F8 2402FFFF */  li    $v0, -1

.L800099FC:
/* 00A5FC 800099FC 03E00008 */  jr    $ra
/* 00A600 80009A00 27BD0008 */   addiu $sp, $sp, 8
