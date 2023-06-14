# Calculate wrestler scale/height [Melonbread]

# Params:
# $a0 - player number

glabel func_80014040
/* 014C40 80014040 00042400 */  sll   $a0, $a0, 0x10
/* 014C44 80014044 000423C3 */  sra   $a0, $a0, 0xf
/* 014C48 80014048 3C028008 */  lui   $v0, %hi(bssMain_80079EAC)
/* 014C4C 8001404C 00441021 */  addu  $v0, $v0, $a0
/* 014C50 80014050 84429EAC */  lh    $v0, %lo(bssMain_80079EAC)($v0)
/* 014C54 80014054 3C018005 */  lui   $at, %hi(D_8004AAF0)
/* 014C58 80014058 D422AAF0 */  ldc1  $f2, %lo(D_8004AAF0)($at)
/* 014C5C 8001405C 44820000 */  mtc1  $v0, $f0
/* 014C60 80014060 00000000 */  nop   
/* 014C64 80014064 46800021 */  cvt.d.w $f0, $f0
/* 014C68 80014068 46220002 */  mul.d $f0, $f0, $f2
/* 014C6C 8001406C 3C018005 */  lui   $at, %hi(D_8004AAF8)
/* 014C70 80014070 D422AAF8 */  ldc1  $f2, %lo(D_8004AAF8)($at)
/* 014C74 80014074 46200020 */  cvt.s.d $f0, $f0
/* 014C78 80014078 46000021 */  cvt.d.s $f0, $f0
/* 014C7C 8001407C 46220000 */  add.d $f0, $f0, $f2
/* 014C80 80014080 03E00008 */  jr    $ra
/* 014C84 80014084 46200020 */   cvt.s.d $f0, $f0
