glabel func_8000179C
/* 00239C 8000179C 3C018005 */  lui   $at, %hi(D_8004A610)
/* 0023A0 800017A0 D422A610 */  ldc1  $f2, %lo(D_8004A610)($at)
/* 0023A4 800017A4 30C600FF */  andi  $a2, $a2, 0xff
/* 0023A8 800017A8 44860000 */  mtc1  $a2, $f0
/* 0023AC 800017AC 00000000 */  nop   
/* 0023B0 800017B0 46800021 */  cvt.d.w $f0, $f0
/* 0023B4 800017B4 46220082 */  mul.d $f2, $f0, $f2
/* 0023B8 800017B8 3C018005 */  lui   $at, %hi(D_8004A618)
/* 0023BC 800017BC D420A618 */  ldc1  $f0, %lo(D_8004A618)($at)
/* 0023C0 800017C0 4622003E */  c.le.d $f0, $f2
/* 0023C4 800017C4 00000000 */  nop   
/* 0023C8 800017C8 00000000 */  nop   
/* 0023CC 800017CC 45010005 */  bc1t  .L800017E4
/* 0023D0 800017D0 A0850006 */   sb   $a1, 6($a0)

/* 0023D4 800017D4 4620100D */  cop1 0x20100D
/* 0023D8 800017D8 44030000 */  mfc1  $v1, $f0
/* 0023DC 800017DC 080005FE */  j     .L800017F8
/* 0023E0 800017E0 00000000 */   nop   

.L800017E4:
/* 0023E4 800017E4 46201001 */  sub.d $f0, $f2, $f0
/* 0023E8 800017E8 4620008D */  trunc.w.d $f2, $f0
/* 0023EC 800017EC 44031000 */  mfc1  $v1, $f2
/* 0023F0 800017F0 3C028000 */  lui   $v0, 0x8000
/* 0023F4 800017F4 00621825 */  or    $v1, $v1, $v0

.L800017F8:
/* 0023F8 800017F8 03E00008 */  jr    $ra
/* 0023FC 800017FC A0830007 */   sb    $v1, 7($a0)