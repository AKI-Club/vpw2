# Params:
# $a0 - ?
# $a1 - file ID 1
# $a2 - file ID 2
# $a3 - ?

glabel func_80014168
/* 014D68 80014168 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 014D6C 8001416C 00C01021 */  addu  $v0, $a2, $zero # store $a2 in $v0
/* 014D70 80014170 AFB20038 */  sw    $s2, 0x38($sp)
/* 014D74 80014174 00E09021 */  addu  $s2, $a3, $zero # store $a3 in $s2
/* 014D78 80014178 00052C00 */  sll   $a1, $a1, 0x10
/* 014D7C 8001417C 00052C03 */  sra   $a1, $a1, 0x10
/* 014D80 80014180 AFB00030 */  sw    $s0, 0x30($sp)
/* 014D84 80014184 00028400 */  sll   $s0, $v0, 0x10
/* 014D88 80014188 AFB40040 */  sw    $s4, 0x40($sp)
/* 014D8C 8001418C 8FB40060 */  lw    $s4, 0x60($sp)
/* 014D90 80014190 00108403 */  sra   $s0, $s0, 0x10
/* 014D94 80014194 02003021 */  addu  $a2, $s0, $zero
/* 014D98 80014198 AFB10034 */  sw    $s1, 0x34($sp)
/* 014D9C 8001419C 00408821 */  addu  $s1, $v0, $zero
/* 014DA0 800141A0 AFBF0048 */  sw    $ra, 0x48($sp)
/* 014DA4 800141A4 AFB50044 */  sw    $s5, 0x44($sp)
/* 014DA8 800141A8 0C00313C */  jal   func_8000C4F0
/* 014DAC 800141AC AFB3003C */   sw    $s3, 0x3c($sp)

/* 014DB0 800141B0 1200002B */  beqz  $s0, .L80014260
/* 014DB4 800141B4 27A40010 */   addiu $a0, $sp, 0x10

/* 014DB8 800141B8 3235FFFF */  andi  $s5, $s1, 0xffff

/* 014DBC 800141BC 0C000F71 */  jal   GetFileLoc
/* 014DC0 800141C0 02A02821 */   addu  $a1, $s5, $zero

/* 014DC4 800141C4 00121C00 */  sll   $v1, $s2, 0x10
/* 014DC8 800141C8 00031C03 */  sra   $v1, $v1, 0x10
/* 014DCC 800141CC 3C048008 */  lui   $a0, %hi(bssMain_8007F438) # $a0, 0x8008
/* 014DD0 800141D0 2484F438 */  addiu $a0, %lo(bssMain_8007F438) # addiu $a0, $a0, -0xbc8
/* 014DD4 800141D4 00031040 */  sll   $v0, $v1, 1
/* 014DD8 800141D8 00431021 */  addu  $v0, $v0, $v1
/* 014DDC 800141DC 000210C0 */  sll   $v0, $v0, 3
/* 014DE0 800141E0 00439821 */  addu  $s3, $v0, $v1
/* 014DE4 800141E4 00131880 */  sll   $v1, $s3, 2
/* 014DE8 800141E8 00641821 */  addu  $v1, $v1, $a0
/* 014DEC 800141EC 00141400 */  sll   $v0, $s4, 0x10
/* 014DF0 800141F0 00029403 */  sra   $s2, $v0, 0x10
/* 014DF4 800141F4 00121080 */  sll   $v0, $s2, 2
/* 014DF8 800141F8 00438821 */  addu  $s1, $v0, $v1
/* 014DFC 800141FC 8E240000 */  lw    $a0, ($s1)
/* 014E00 80014200 10800004 */  beqz  $a0, .L80014214
/* 014E04 80014204 00000000 */   nop   

/* 014E08 80014208 0C000280 */  jal   aki_free
/* 014E0C 8001420C 00000000 */   nop   

/* 014E10 80014210 AE200000 */  sw    $zero, ($s1)

.L80014214:
/* 014E14 80014214 8FB00018 */  lw    $s0, 0x18($sp)
/* 014E18 80014218 2E020020 */  sltiu $v0, $s0, 0x20
/* 014E1C 8001421C 54400001 */  bnezl $v0, .L80014224
/* 014E20 80014220 24100020 */   li    $s0, 32

.L80014224:
/* 014E24 80014224 0C000226 */  jal   aki_malloc
/* 014E28 80014228 02002021 */   addu  $a0, $s0, $zero

/* 014E2C 8001422C 27A40020 */  addiu $a0, $sp, 0x20
/* 014E30 80014230 02A02821 */  addu  $a1, $s5, $zero # file ID from $s5
/* 014E34 80014234 00403021 */  addu  $a2, $v0, $zero
/* 014E38 80014238 0C000FA2 */  jal   LoadFile
/* 014E3C 8001423C AE260000 */   sw    $a2, ($s1)

/* 014E40 80014240 3C038008 */  lui   $v1, %hi(bssMain_8007F5C8) # $v1, 0x8008
/* 014E44 80014244 2463F5C8 */  addiu $v1, %lo(bssMain_8007F5C8) # addiu $v1, $v1, -0xa38
/* 014E48 80014248 00131040 */  sll   $v0, $s3, 1
/* 014E4C 8001424C 00431021 */  addu  $v0, $v0, $v1
/* 014E50 80014250 00121840 */  sll   $v1, $s2, 1
/* 014E54 80014254 00621821 */  addu  $v1, $v1, $v0
/* 014E58 80014258 00101042 */  srl   $v0, $s0, 1
/* 014E5C 8001425C A4620000 */  sh    $v0, ($v1)

.L80014260:
/* 014E60 80014260 8FBF0048 */  lw    $ra, 0x48($sp)
/* 014E64 80014264 8FB50044 */  lw    $s5, 0x44($sp)
/* 014E68 80014268 8FB40040 */  lw    $s4, 0x40($sp)
/* 014E6C 8001426C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 014E70 80014270 8FB20038 */  lw    $s2, 0x38($sp)
/* 014E74 80014274 8FB10034 */  lw    $s1, 0x34($sp)
/* 014E78 80014278 8FB00030 */  lw    $s0, 0x30($sp)
/* 014E7C 8001427C 03E00008 */  jr    $ra
/* 014E80 80014280 27BD0050 */   addiu $sp, $sp, 0x50
