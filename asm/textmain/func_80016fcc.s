glabel func_80016FCC
/* 017BCC 80016FCC 3C028004 */  lui   $v0, %hi(D_80040884) # $v0, 0x8004
/* 017BD0 80016FD0 84420884 */  lh    $v0, %lo(D_80040884)($v0)
/* 017BD4 80016FD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 017BD8 80016FD8 10400025 */  beqz  $v0, .L80017070
/* 017BDC 80016FDC AFBF0010 */   sw    $ra, 0x10($sp)

/* 017BE0 80016FE0 0C005C1F */  jal   func_8001707C
/* 017BE4 80016FE4 24046000 */   li    $a0, 24576

/* 017BE8 80016FE8 3C048008 */  lui   $a0, %hi(bssMain_8007FA48) # $a0, 0x8008
/* 017BEC 80016FEC 8C84FA48 */  lw    $a0, %lo(bssMain_8007FA48)($a0)
/* 017BF0 80016FF0 10800005 */  beqz  $a0, .L80017008
/* 017BF4 80016FF4 00000000 */   nop   

/* 017BF8 80016FF8 0C000280 */  jal   aki_free
/* 017BFC 80016FFC 00000000 */   nop   

/* 017C00 80017000 3C018008 */  lui   $at, %hi(bssMain_8007FA48) # $at, 0x8008
/* 017C04 80017004 AC20FA48 */  sw    $zero, %lo(bssMain_8007FA48)($at)

.L80017008:
/* 017C08 80017008 3C048008 */  lui   $a0, %hi(bssMain_8007FA44) # $a0, 0x8008
/* 017C0C 8001700C 8C84FA44 */  lw    $a0, %lo(bssMain_8007FA44)($a0)
/* 017C10 80017010 10800005 */  beqz  $a0, .L80017028
/* 017C14 80017014 00000000 */   nop   

/* 017C18 80017018 0C000280 */  jal   aki_free
/* 017C1C 8001701C 00000000 */   nop   

/* 017C20 80017020 3C018008 */  lui   $at, %hi(bssMain_8007FA44) # $at, 0x8008
/* 017C24 80017024 AC20FA44 */  sw    $zero, %lo(bssMain_8007FA44)($at)

.L80017028:
/* 017C28 80017028 3C048008 */  lui   $a0, %hi(bssMain_8007FA50) # $a0, 0x8008
/* 017C2C 8001702C 8C84FA50 */  lw    $a0, %lo(bssMain_8007FA50)($a0)
/* 017C30 80017030 10800005 */  beqz  $a0, .L80017048
/* 017C34 80017034 00000000 */   nop   

/* 017C38 80017038 0C000280 */  jal   aki_free
/* 017C3C 8001703C 00000000 */   nop   

/* 017C40 80017040 3C018008 */  lui   $at, %hi(bssMain_8007FA50) # $at, 0x8008
/* 017C44 80017044 AC20FA50 */  sw    $zero, %lo(bssMain_8007FA50)($at)

.L80017048:
/* 017C48 80017048 3C048008 */  lui   $a0, %hi(bssMain_8007FA4C) # $a0, 0x8008
/* 017C4C 8001704C 8C84FA4C */  lw    $a0, %lo(bssMain_8007FA4C)($a0)
/* 017C50 80017050 10800005 */  beqz  $a0, .L80017068
/* 017C54 80017054 00000000 */   nop   

/* 017C58 80017058 0C000280 */  jal   aki_free
/* 017C5C 8001705C 00000000 */   nop   

/* 017C60 80017060 3C018008 */  lui   $at, %hi(bssMain_8007FA4C) # $at, 0x8008
/* 017C64 80017064 AC20FA4C */  sw    $zero, %lo(bssMain_8007FA4C)($at)

.L80017068:
/* 017C68 80017068 3C018004 */  lui   $at, %hi(D_80040884) # $at, 0x8004
/* 017C6C 8001706C A4200884 */  sh    $zero, %lo(D_80040884)($at)

.L80017070:
/* 017C70 80017070 8FBF0010 */  lw    $ra, 0x10($sp)
/* 017C74 80017074 03E00008 */  jr    $ra
/* 017C78 80017078 27BD0018 */   addiu $sp, $sp, 0x18
