/* technically the idle thread? */

glabel MainThread
/* 0010D0 800004D0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0010D4 800004D4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0010D8 800004D8 00808021 */  addu  $s0, $a0, $zero
/* 0010DC 800004DC 24040096 */  li    $a0, 150 /* priority */
/* 0010E0 800004E0 3C058005 */  lui   $a1, %hi(bssMain_8004BD50) # $a1, 0x8005
/* 0010E4 800004E4 24A5BD50 */  addiu $a1, %lo(bssMain_8004BD50) # addiu $a1, $a1, -0x42b0
/* 0010E8 800004E8 3C068005 */  lui   $a2, %hi(bssMain_8004BC50) # $a2, 0x8005
/* 0010EC 800004EC 24C6BC50 */  addiu $a2, %lo(bssMain_8004BC50) # addiu $a2, $a2, -0x43b0
/* 0010F0 800004F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0010F4 800004F4 0C00AC54 */  jal   osCreatePiManager
/* 0010F8 800004F8 24070040 */   li    $a3, 64 /* message count */

/* 0010FC 800004FC 0C00AD70 */  jal   osCartRomInit
/* 001100 80000500 00000000 */   nop   

# related to OSPiHandle
/* 001104 80000504 3C018005 */  lui   $at, %hi(bssMain_8004BD68) # $at, 0x8005
/* 001108 80000508 0C008CC4 */  jal   func_80023310
/* 00110C 8000050C AC22BD68 */   sw    $v0, %lo(bssMain_8004BD68)($at)

# get tv type
/* 001110 80000510 3C048000 */  lui   $a0, %hi(osTvType) # $a0, 0x8000
/* 001114 80000514 8C840300 */  lw    $a0, %lo(osTvType)($a0)
/* 001118 80000518 24030001 */  li    $v1, 1 # OS_TV_NTSC
/* 00111C 8000051C 3C018005 */  lui   $at, %hi(bssMain_8004BD94) # $at, 0x8005
/* 001120 80000520 AC20BD94 */  sw    $zero, %lo(bssMain_8004BD94)($at)
/* 001124 80000524 14830009 */  bne   $a0, $v1, .L8000054C
/* 001128 80000528 24020002 */   li    $v0, 2 # OS_TV_MPAL

/* 00112C 8000052C AFA30010 */  sw    $v1, 0x10($sp)
/* 001130 80000530 3C048005 */  lui   $a0, %hi(bssMain_8004BE00) # $a0, 0x8005
/* 001134 80000534 2484BE00 */  addiu $a0, %lo(bssMain_8004BE00) # addiu $a0, $a0, -0x4200
/* 001138 80000538 3C058005 */  lui   $a1, %hi(bssMain_8004E090) # $a1, 0x8005
/* 00113C 8000053C 24A5E090 */  addiu $a1, %lo(bssMain_8004E090) # addiu $a1, $a1, -0x1f70
/* 001140 80000540 24060078 */  li    $a2, 120
/* 001144 80000544 08000162 */  j     .L80000588
/* 001148 80000548 24070002 */   li    $a3, 2 # OS_VI_NTSC_LAN1?

.L8000054C:
/* 00114C 8000054C 14820008 */  bne   $a0, $v0, .L80000570
/* 001150 80000550 AFA30010 */   sw    $v1, 0x10($sp)

/* 001154 80000554 3C048005 */  lui   $a0, %hi(bssMain_8004BE00) # $a0, 0x8005
/* 001158 80000558 2484BE00 */  addiu $a0, %lo(bssMain_8004BE00) # addiu $a0, $a0, -0x4200
/* 00115C 8000055C 3C058005 */  lui   $a1, %hi(bssMain_8004E090) # $a1, 0x8005
/* 001160 80000560 24A5E090 */  addiu $a1, %lo(bssMain_8004E090) # addiu $a1, $a1, -0x1f70
/* 001164 80000564 24060078 */  li    $a2, 120
/* 001168 80000568 08000162 */  j     .L80000588
/* 00116C 8000056C 2407001E */   li    $a3, 30 # OS_VI_MPAL_LAN1?

.L80000570:
/* 001170 80000570 3C048005 */  lui   $a0, %hi(bssMain_8004BE00) # $a0, 0x8005
/* 001174 80000574 2484BE00 */  addiu $a0, %lo(bssMain_8004BE00) # addiu $a0, $a0, -0x4200
/* 001178 80000578 3C058005 */  lui   $a1, %hi(bssMain_8004E090) # $a1, 0x8005
/* 00117C 8000057C 24A5E090 */  addiu $a1, %lo(bssMain_8004E090) # addiu $a1, $a1, -0x1f70
/* 001180 80000580 24060078 */  li    $a2, 120
/* 001184 80000584 2407002C */  li    $a3, 44 # OS_VI_FPAL_LAN1?

.L80000588:
/* 001188 80000588 0C0002FC */  jal   func_80000BF0
/* 00118C 8000058C 00000000 */   nop   

/* 001190 80000590 0C008C14 */  jal   func_80023050
/* 001194 80000594 02002021 */   addu  $a0, $s0, $zero

/* 001198 80000598 00002021 */  addu  $a0, $zero, $zero
/* 00119C 8000059C 0C00CC30 */  jal   osSetThreadPri
/* 0011A0 800005A0 00002821 */   addu  $a1, $zero, $zero

MainThread_idle:
/* 0011A4 800005A4 0C00C814 */  jal   guRandom
/* 0011A8 800005A8 00000000 */   nop   

/* 0011AC 800005AC 08000169 */  j     MainThread_idle
/* 0011B0 800005B0 00000000 */   nop   

func_800005B4:
/* 0011B4 800005B4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0011B8 800005B8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0011BC 800005BC 03E00008 */  jr    $ra
/* 0011C0 800005C0 27BD0020 */   addiu $sp, $sp, 0x20
