# related to stables

# Params:
# $a0 - Stable number?
# $a1 - ?

# Returns a wrestler ID4 in $v0?

glabel func_8000A2FC
/* 00AEFC 8000A2FC 2C820011 */  sltiu $v0, $a0, 0x11 # max number of stables
/* 00AF00 8000A300 1040000B */  beqz  $v0, .L8000A330
/* 00AF04 8000A304 00000000 */   nop   

/* 00AF08 8000A308 04A00009 */  bltz  $a1, .L8000A330
/* 00AF0C 8000A30C 000410C0 */   sll   $v0, $a0, 3

/* 00AF10 8000A310 00441023 */  subu  $v0, $v0, $a0
/* 00AF14 8000A314 000220C0 */  sll   $a0, $v0, 3
# number of wrestlers in stable
/* 00AF18 8000A318 3C02800A */  lui   $v0, %hi(bssMain_800A4530)
/* 00AF1C 8000A31C 00441021 */  addu  $v0, $v0, $a0
/* 00AF20 8000A320 94424530 */  lhu   $v0, %lo(bssMain_800A4530)($v0)
/* 00AF24 8000A324 00A2102A */  slt   $v0, $a1, $v0
/* 00AF28 8000A328 14400004 */  bnez  $v0, .L8000A33C
/* 00AF2C 8000A32C 00051080 */   sll   $v0, $a1, 2

.L8000A330:
/* 00AF30 8000A330 3C028004 */  lui   $v0, %hi(D_8003EFC0) # $v0, 0x8004
/* 00AF34 8000A334 080028D3 */  j     .L8000A34C
/* 00AF38 8000A338 2442EFC0 */   addiu $v0, %lo(D_8003EFC0) # addiu $v0, $v0, -0x1040

.L8000A33C:
/* 00AF3C 8000A33C 3C03800A */  lui   $v1, %hi(bssMain_800A4510) # $v1, 0x800a
/* 00AF40 8000A340 24634510 */  addiu $v1, %lo(bssMain_800A4510) # addiu $v1, $v1, 0x4510
/* 00AF44 8000A344 00431021 */  addu  $v0, $v0, $v1
/* 00AF48 8000A348 00821021 */  addu  $v0, $a0, $v0

.L8000A34C:
/* 00AF4C 8000A34C 03E00008 */  jr    $ra
/* 00AF50 8000A350 94420000 */   lhu   $v0, ($v0)
