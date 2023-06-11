# Unload default strings from memory

glabel UnloadDefaultStrings
/* 00B540 8000A940 3C048004 */  lui   $a0, %hi(dynPtr_DefaultNames) # $a0, 0x8004
/* 00B544 8000A944 8C84FDA0 */  lw    $a0, %lo(dynPtr_DefaultNames)($a0)
/* 00B548 8000A948 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B54C 8000A94C 10800005 */  beqz  $a0, .L8000A964
/* 00B550 8000A950 AFBF0010 */   sw    $ra, 0x10($sp)

/* 00B554 8000A954 0C000280 */  jal   aki_free
/* 00B558 8000A958 00000000 */   nop   

/* 00B55C 8000A95C 3C018004 */  lui   $at, %hi(dynPtr_DefaultNames) # $at, 0x8004
/* 00B560 8000A960 AC20FDA0 */  sw    $zero, %lo(dynPtr_DefaultNames)($at)

.L8000A964:
/* 00B564 8000A964 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B568 8000A968 03E00008 */  jr    $ra
/* 00B56C 8000A96C 27BD0018 */   addiu $sp, $sp, 0x18
