glabel func_8000E3AC
/* 00EFAC 8000E3AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00EFB0 8000E3B0 C7A00040 */  lwc1  $f0, 0x40($sp)
/* 00EFB4 8000E3B4 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 00EFB8 8000E3B8 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 00EFBC 8000E3BC C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 00EFC0 8000E3C0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 00EFC4 8000E3C4 AFA00020 */  sw    $zero, 0x20($sp)
/* 00EFC8 8000E3C8 E7A00010 */  swc1  $f0, 0x10($sp)
/* 00EFCC 8000E3CC E7A20014 */  swc1  $f2, 0x14($sp)
/* 00EFD0 8000E3D0 E7A40018 */  swc1  $f4, 0x18($sp)
/* 00EFD4 8000E3D4 0C003832 */  jal   func_8000E0C8
/* 00EFD8 8000E3D8 E7A6001C */   swc1  $f6, 0x1c($sp)

/* 00EFDC 8000E3DC 8FBF0028 */  lw    $ra, 0x28($sp)
/* 00EFE0 8000E3E0 03E00008 */  jr    $ra
/* 00EFE4 8000E3E4 27BD0030 */   addiu $sp, $sp, 0x30
