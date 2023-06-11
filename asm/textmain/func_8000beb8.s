# Params:
# $a0 - write address?
# $a1 - related to malloc size?
# $a2 - ?
# $a3 - ?

glabel func_8000BEB8
/* 00CAB8 8000BEB8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00CABC 8000BEBC AFB20018 */  sw    $s2, 0x18($sp)
/* 00CAC0 8000BEC0 00809021 */  addu  $s2, $a0, $zero
/* 00CAC4 8000BEC4 AFB10014 */  sw    $s1, 0x14($sp)
/* 00CAC8 8000BEC8 00058C00 */  sll   $s1, $a1, 0x10
/* 00CACC 8000BECC 00118B03 */  sra   $s1, $s1, 0xc
/* 00CAD0 8000BED0 00063400 */  sll   $a2, $a2, 0x10
/* 00CAD4 8000BED4 00062403 */  sra   $a0, $a2, 0x10
/* 00CAD8 8000BED8 000637C2 */  srl   $a2, $a2, 0x1f
/* 00CADC 8000BEDC 00862021 */  addu  $a0, $a0, $a2
/* 00CAE0 8000BEE0 00042043 */  sra   $a0, $a0, 1
/* 00CAE4 8000BEE4 AFB00010 */  sw    $s0, 0x10($sp)
/* 00CAE8 8000BEE8 00078400 */  sll   $s0, $a3, 0x10
/* 00CAEC 8000BEEC 00108403 */  sra   $s0, $s0, 0x10
/* 00CAF0 8000BEF0 26020005 */  addiu $v0, $s0, 5
/* 00CAF4 8000BEF4 00822021 */  addu  $a0, $a0, $v0
/* 00CAF8 8000BEF8 000420C0 */  sll   $a0, $a0, 3
/* 00CAFC 8000BEFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 00CB00 8000BF00 0C000226 */  jal   aki_malloc
/* 00CB04 8000BF04 02242021 */   addu  $a0, $s1, $a0

# store malloc result
/* 00CB08 8000BF08 AE420010 */  sw    $v0, 0x10($s2)
/* 00CB0C 8000BF0C AE420014 */  sw    $v0, 0x14($s2)

/* 00CB10 8000BF10 00511021 */  addu  $v0, $v0, $s1
/* 00CB14 8000BF14 001080C0 */  sll   $s0, $s0, 3
/* 00CB18 8000BF18 AE420018 */  sw    $v0, 0x18($s2)
/* 00CB1C 8000BF1C 00501021 */  addu  $v0, $v0, $s0
/* 00CB20 8000BF20 AE42001C */  sw    $v0, 0x1c($s2)
/* 00CB24 8000BF24 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00CB28 8000BF28 8FB20018 */  lw    $s2, 0x18($sp)
/* 00CB2C 8000BF2C 8FB10014 */  lw    $s1, 0x14($sp)
/* 00CB30 8000BF30 8FB00010 */  lw    $s0, 0x10($sp)
/* 00CB34 8000BF34 03E00008 */  jr    $ra
/* 00CB38 8000BF38 27BD0020 */   addiu $sp, $sp, 0x20
