glabel func_80009340
/* 009F40 80009340 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 009F44 80009344 00804021 */  addu  $t0, $a0, $zero
/* 009F48 80009348 01003821 */  addu  $a3, $t0, $zero
/* 009F4C 8000934C 30A9FFFF */  andi  $t1, $a1, 0xffff
/* 009F50 80009350 27A60010 */  addiu $a2, $sp, 0x10
/* 009F54 80009354 3C024000 */  lui   $v0, 0x4000
/* 009F58 80009358 01021024 */  and   $v0, $t0, $v0
/* 009F5C 8000935C AFBF0034 */  sw    $ra, 0x34($sp)
/* 009F60 80009360 AFB00030 */  sw    $s0, 0x30($sp)
/* 009F64 80009364 AFA80010 */  sw    $t0, 0x10($sp)
/* 009F68 80009368 A7A00024 */  sh    $zero, 0x24($sp)
/* 009F6C 8000936C 14400013 */  bnez  $v0, .L800093BC
/* 009F70 80009370 AFA00028 */   sw    $zero, 0x28($sp)

/* 009F74 80009374 91020000 */  lbu   $v0, ($t0)
/* 009F78 80009378 10400011 */  beqz  $v0, .L800093C0
/* 009F7C 8000937C 00002821 */   addu  $a1, $zero, $zero

.L80009380:
/* 009F80 80009380 90E40000 */  lbu   $a0, ($a3)
/* 009F84 80009384 94C50014 */  lhu   $a1, 0x14($a2)
/* 009F88 80009388 94C20014 */  lhu   $v0, 0x14($a2)
/* 009F8C 8000938C 24E70001 */  addiu $a3, $a3, 1
/* 009F90 80009390 8CC30018 */  lw    $v1, 0x18($a2)
/* 009F94 80009394 24A50001 */  addiu $a1, $a1, 1
/* 009F98 80009398 00821021 */  addu  $v0, $a0, $v0
/* 009F9C 8000939C 3042000F */  andi  $v0, $v0, 0xf
/* 009FA0 800093A0 00442004 */  sllv  $a0, $a0, $v0
/* 009FA4 800093A4 00641821 */  addu  $v1, $v1, $a0
/* 009FA8 800093A8 ACC30018 */  sw    $v1, 0x18($a2)
/* 009FAC 800093AC A4C50014 */  sh    $a1, 0x14($a2)
/* 009FB0 800093B0 90E20000 */  lbu   $v0, ($a3)
/* 009FB4 800093B4 1440FFF2 */  bnez  $v0, .L80009380
/* 009FB8 800093B8 00000000 */   nop   

.L800093BC:
/* 009FBC 800093BC 00002821 */  addu  $a1, $zero, $zero

.L800093C0:
/* 009FC0 800093C0 3C038009 */  lui   $v1, %hi(bssMain_800928F8) # $v1, 0x8009
/* 009FC4 800093C4 8C6328F8 */  lw    $v1, %lo(bssMain_800928F8)($v1)
/* 009FC8 800093C8 8FA70028 */  lw    $a3, 0x28($sp)
/* 009FCC 800093CC 97A60024 */  lhu   $a2, 0x24($sp)
/* 009FD0 800093D0 24640014 */  addiu $a0, $v1, 0x14

.L800093D4:
/* 009FD4 800093D4 8C620000 */  lw    $v0, ($v1)
/* 009FD8 800093D8 5448000A */  bnel  $v0, $t0, .L80009404
/* 009FDC 800093DC 24A50001 */   addiu $a1, $a1, 1

/* 009FE0 800093E0 9482FFFE */  lhu   $v0, -2($a0)
/* 009FE4 800093E4 14490007 */  bne   $v0, $t1, .L80009404
/* 009FE8 800093E8 24A50001 */   addiu $a1, $a1, 1

/* 009FEC 800093EC 8C820004 */  lw    $v0, 4($a0)
/* 009FF0 800093F0 14470004 */  bne   $v0, $a3, .L80009404
/* 009FF4 800093F4 00000000 */   nop   

/* 009FF8 800093F8 94820000 */  lhu   $v0, ($a0)
/* 009FFC 800093FC 1046000F */  beq   $v0, $a2, .L8000943C
/* 00A000 80009400 00608021 */   addu  $s0, $v1, $zero

.L80009404:
/* 00A004 80009404 2484001C */  addiu $a0, $a0, 0x1c
/* 00A008 80009408 28A20080 */  slti  $v0, $a1, 0x80
/* 00A00C 8000940C 1440FFF1 */  bnez  $v0, .L800093D4
/* 00A010 80009410 2463001C */   addiu $v1, $v1, 0x1c

/* 00A014 80009414 00002821 */  addu  $a1, $zero, $zero
/* 00A018 80009418 3C038009 */  lui   $v1, %hi(bssMain_800928F8) # $v1, 0x8009
/* 00A01C 8000941C 8C6328F8 */  lw    $v1, %lo(bssMain_800928F8)($v1)

.L80009420:
/* 00A020 80009420 8C620000 */  lw    $v0, ($v1)
/* 00A024 80009424 10400009 */  beqz  $v0, .L8000944C
/* 00A028 80009428 24A50001 */   addiu $a1, $a1, 1

/* 00A02C 8000942C 28A20080 */  slti  $v0, $a1, 0x80
/* 00A030 80009430 1440FFFB */  bnez  $v0, .L80009420
/* 00A034 80009434 2463001C */   addiu $v1, $v1, 0x1c

/* 00A038 80009438 00008021 */  addu  $s0, $zero, $zero

.L8000943C:
/* 00A03C 8000943C 16000009 */  bnez  $s0, .L80009464
/* 00A040 80009440 00001021 */   addu  $v0, $zero, $zero

/* 00A044 80009444 0800252B */  j     .L800094AC
/* 00A048 80009448 00000000 */   nop   

.L8000944C:
/* 00A04C 8000944C 97A20024 */  lhu   $v0, 0x24($sp)
/* 00A050 80009450 A4620014 */  sh    $v0, 0x14($v1)
/* 00A054 80009454 8FA20028 */  lw    $v0, 0x28($sp)
/* 00A058 80009458 00608021 */  addu  $s0, $v1, $zero
/* 00A05C 8000945C 0800250F */  j     .L8000943C
/* 00A060 80009460 AE020018 */   sw    $v0, 0x18($s0)

.L80009464:
/* 00A064 80009464 8E030000 */  lw    $v1, ($s0)
/* 00A068 80009468 10600010 */  beqz  $v1, .L800094AC
/* 00A06C 8000946C 2402FFFF */   li    $v0, -1

/* 00A070 80009470 3C04800A */  lui   $a0, %hi(bssMain_8009B188) # $a0, 0x800a
/* 00A074 80009474 8C84B188 */  lw    $a0, %lo(bssMain_8009B188)($a0)
/* 00A078 80009478 0064102B */  sltu  $v0, $v1, $a0
/* 00A07C 8000947C 14400007 */  bnez  $v0, .L8000949C
/* 00A080 80009480 24820DC0 */   addiu $v0, $a0, 0xdc0

/* 00A084 80009484 0062102B */  sltu  $v0, $v1, $v0
/* 00A088 80009488 10400004 */  beqz  $v0, .L8000949C
/* 00A08C 8000948C 240200FF */   li    $v0, 255

/* 00A090 80009490 AC600050 */  sw    $zero, 0x50($v1)
/* 00A094 80009494 AC600054 */  sw    $zero, 0x54($v1)
/* 00A098 80009498 A0620000 */  sb    $v0, ($v1)

.L8000949C:
/* 00A09C 8000949C 0C000280 */  jal   aki_free
/* 00A0A0 800094A0 8E040004 */   lw    $a0, 4($s0)

/* 00A0A4 800094A4 AE000000 */  sw    $zero, ($s0)
/* 00A0A8 800094A8 2402FFFF */  li    $v0, -1

.L800094AC:
/* 00A0AC 800094AC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 00A0B0 800094B0 8FB00030 */  lw    $s0, 0x30($sp)
/* 00A0B4 800094B4 03E00008 */  jr    $ra
/* 00A0B8 800094B8 27BD0038 */   addiu $sp, $sp, 0x38
