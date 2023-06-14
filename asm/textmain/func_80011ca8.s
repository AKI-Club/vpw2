glabel func_80011CA8
/* 0128A8 80011CA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0128AC 80011CAC AFB00010 */  sw    $s0, 0x10($sp)
/* 0128B0 80011CB0 00048400 */  sll   $s0, $a0, 0x10
/* 0128B4 80011CB4 00108403 */  sra   $s0, $s0, 0x10
/* 0128B8 80011CB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0128BC 80011CBC 0C005010 */  jal   func_80014040
/* 0128C0 80011CC0 02002021 */   addu  $a0, $s0, $zero

/* 0128C4 80011CC4 00102040 */  sll   $a0, $s0, 1
/* 0128C8 80011CC8 00902021 */  addu  $a0, $a0, $s0
/* 0128CC 80011CCC 00042180 */  sll   $a0, $a0, 6
/* 0128D0 80011CD0 3C028007 */  lui   $v0, %hi(bssMain_800704D8) # $v0, 0x8007
/* 0128D4 80011CD4 244204D8 */  addiu $v0, %lo(bssMain_800704D8) # addiu $v0, $v0, 0x4d8
/* 0128D8 80011CD8 44050000 */  mfc1  $a1, $f0
/* 0128DC 80011CDC 00822021 */  addu  $a0, $a0, $v0
/* 0128E0 80011CE0 00A03021 */  addu  $a2, $a1, $zero
/* 0128E4 80011CE4 0C00D130 */  jal   guScaleF
/* 0128E8 80011CE8 00A03821 */   addu  $a3, $a1, $zero

/* 0128EC 80011CEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0128F0 80011CF0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0128F4 80011CF4 03E00008 */  jr    $ra
/* 0128F8 80011CF8 27BD0018 */   addiu $sp, $sp, 0x18
