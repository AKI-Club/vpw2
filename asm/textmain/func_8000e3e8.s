glabel func_8000E3E8
/* 00EFE8 8000E3E8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00EFEC 8000E3EC C7A00040 */  lwc1  $f0, 0x40($sp)
/* 00EFF0 8000E3F0 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 00EFF4 8000E3F4 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 00EFF8 8000E3F8 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 00EFFC 8000E3FC 97A20052 */  lhu   $v0, 0x52($sp)
/* 00F000 8000E400 AFBF0028 */  sw    $ra, 0x28($sp)
/* 00F004 8000E404 E7A00010 */  swc1  $f0, 0x10($sp)
/* 00F008 8000E408 E7A20014 */  swc1  $f2, 0x14($sp)
/* 00F00C 8000E40C E7A40018 */  swc1  $f4, 0x18($sp)
/* 00F010 8000E410 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 00F014 8000E414 0C003832 */  jal   func_8000E0C8
/* 00F018 8000E418 AFA20020 */   sw    $v0, 0x20($sp)

/* 00F01C 8000E41C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 00F020 8000E420 03E00008 */  jr    $ra
/* 00F024 8000E424 27BD0030 */   addiu $sp, $sp, 0x30