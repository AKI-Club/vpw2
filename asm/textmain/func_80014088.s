glabel func_80014088
/* 014C88 80014088 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 014C8C 8001408C 00A01821 */  addu  $v1, $a1, $zero
/* 014C90 80014090 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 014C94 80014094 2CA50100 */  sltiu $a1, $a1, 0x100
/* 014C98 80014098 14A00002 */  bnez  $a1, .L800140A4
/* 014C9C 8001409C AFBF0010 */   sw    $ra, 0x10($sp)

/* 014CA0 800140A0 24030080 */  li    $v1, 128

.L800140A4:
/* 014CA4 800140A4 00042400 */  sll   $a0, $a0, 0x10
/* 014CA8 800140A8 00042403 */  sra   $a0, $a0, 0x10
/* 014CAC 800140AC 00041040 */  sll   $v0, $a0, 1
/* 014CB0 800140B0 3C018008 */  lui   $at, %hi(bssMain_80079EAC)
/* 014CB4 800140B4 00220821 */  addu  $at, $at, $v0
/* 014CB8 800140B8 0C00472A */  jal   func_80011CA8
/* 014CBC 800140BC A4239EAC */   sh    $v1, %lo(bssMain_80079EAC)($at)

/* 014CC0 800140C0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 014CC4 800140C4 03E00008 */  jr    $ra
/* 014CC8 800140C8 27BD0018 */   addiu $sp, $sp, 0x18
