# 80001240: graphics-related thread

glabel thread_80001240
/* 001E40 80001240 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 001E44 80001244 AFB00020 */  sw    $s0, 0x20($sp)
/* 001E48 80001248 3C108005 */  lui   $s0, %hi(bssMain_80052550) # $s0, 0x8005
/* 001E4C 8000124C 8E102550 */  lw    $s0, %lo(bssMain_80052550)($s0)
/* 001E50 80001250 24040001 */  li    $a0, 1 # OS_IM_NONE
/* 001E54 80001254 AFBF002C */  sw    $ra, 0x2c($sp)
/* 001E58 80001258 AFB20028 */  sw    $s2, 0x28($sp)
/* 001E5C 8000125C 0C00AC2C */  jal   osSetIntMask
/* 001E60 80001260 AFB10024 */   sw    $s1, 0x24($sp)

/* 001E64 80001264 3C048005 */  lui   $a0, %hi(bssMain_80052554) # $a0, 0x8005
/* 001E68 80001268 94842554 */  lhu   $a0, %lo(bssMain_80052554)($a0)
/* 001E6C 8000126C 3C128005 */  lui   $s2, %hi(bssMain_800521A8) # $s2, 0x8005
/* 001E70 80001270 265221A8 */  addiu $s2, %lo(bssMain_800521A8) # addiu $s2, $s2, 0x21a8
/* 001E74 80001274 AFB20014 */  sw    $s2, 0x14($sp)
/* 001E78 80001278 8E030260 */  lw    $v1, 0x260($s0)
/* 001E7C 8000127C 00408821 */  addu  $s1, $v0, $zero
/* 001E80 80001280 AFA30010 */  sw    $v1, 0x10($sp)
/* 001E84 80001284 27A30010 */  addiu $v1, $sp, 0x10
/* 001E88 80001288 10800005 */  beqz  $a0, .L800012A0
/* 001E8C 8000128C AE030260 */   sw    $v1, 0x260($s0)

/* 001E90 80001290 02402021 */  addu  $a0, $s2, $zero
/* 001E94 80001294 26050020 */  addiu $a1, $s0, 0x20 # OSMesg msg
/* 001E98 80001298 0C00CA2C */  jal   osSendMesg
/* 001E9C 8000129C 00003021 */   addu  $a2, $zero, $zero

.L800012A0:
/* 001EA0 800012A0 0C00AC2C */  jal   osSetIntMask
/* 001EA4 800012A4 02202021 */   addu  $a0, $s1, $zero

/* 001EA8 800012A8 2650FF20 */  addiu $s0, $s2, -0xe0
/* 001EAC 800012AC 27B1001C */  addiu $s1, $sp, 0x1c
/* 001EB0 800012B0 02002021 */  addu  $a0, $s0, $zero

#{
.L800012B4:
/* 001EB4 800012B4 27A50018 */  addiu $a1, $sp, 0x18
/* 001EB8 800012B8 0C00C9E0 */  jal   osRecvMesg
/* 001EBC 800012BC 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001EC0 800012C0 3C028005 */  lui   $v0, %hi(bssMain_80052554) # $v0, 0x8005
/* 001EC4 800012C4 94422554 */  lhu   $v0, %lo(bssMain_80052554)($v0)
/* 001EC8 800012C8 30420002 */  andi  $v0, $v0, 2
/* 001ECC 800012CC 10400004 */  beqz  $v0, .L800012E0
/* 001ED0 800012D0 00000000 */   nop   

/* 001ED4 800012D4 8FA50018 */  lw    $a1, 0x18($sp)
/* 001ED8 800012D8 08000506 */  j     .L80001418
/* 001EDC 800012DC 8CA40050 */   lw    $a0, 0x50($a1)

.L800012E0:
/* 001EE0 800012E0 0C000510 */  jal   func_80001440
/* 001EE4 800012E4 8FA40018 */   lw    $a0, 0x18($sp)

/* 001EE8 800012E8 0C00AC2C */  jal   osSetIntMask
/* 001EEC 800012EC 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001EF0 800012F0 3C038005 */  lui   $v1, %hi(bssMain_80052544) # $v1, 0x8005
/* 001EF4 800012F4 8C632544 */  lw    $v1, %lo(bssMain_80052544)($v1)
/* 001EF8 800012F8 1060000E */  beqz  $v1, .L80001334
/* 001EFC 800012FC 00402021 */   addu  $a0, $v0, $zero

/* 001F00 80001300 8FA20018 */  lw    $v0, 0x18($sp)
/* 001F04 80001304 3C018005 */  lui   $at, %hi(bssMain_80052548) # $at, 0x8005
/* 001F08 80001308 0C00AC2C */  jal   osSetIntMask
/* 001F0C 8000130C AC222548 */   sw    $v0, %lo(bssMain_80052548)($at)

/* 001F10 80001310 260400A8 */  addiu $a0, $s0, 0xa8 # OSMesgQueue *mq
/* 001F14 80001314 27A5001C */  addiu $a1, $sp, 0x1c # OSMesg *msg
/* 001F18 80001318 0C00C9E0 */  jal   osRecvMesg
/* 001F1C 8000131C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001F20 80001320 0C00AC2C */  jal   osSetIntMask
/* 001F24 80001324 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001F28 80001328 00402021 */  addu  $a0, $v0, $zero
/* 001F2C 8000132C 3C018005 */  lui   $at, %hi(bssMain_80052548) # $at, 0x8005
/* 001F30 80001330 AC202548 */  sw    $zero, %lo(bssMain_80052548)($at)

.L80001334:
/* 001F34 80001334 0C00AC2C */  jal   osSetIntMask
/* 001F38 80001338 00000000 */   nop   

/* 001F3C 8000133C 0C00AC2C */  jal   osSetIntMask
/* 001F40 80001340 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001F44 80001344 8FA30018 */  lw    $v1, 0x18($sp)
/* 001F48 80001348 3C018005 */  lui   $at, %hi(bssMain_80052540) # $at, 0x8005
/* 001F4C 8000134C AC232540 */  sw    $v1, %lo(bssMain_80052540)($at)
/* 001F50 80001350 0C00AC2C */  jal   osSetIntMask
/* 001F54 80001354 00402021 */   addu  $a0, $v0, $zero

/* 001F58 80001358 8FA40018 */  lw    $a0, 0x18($sp)
/* 001F5C 8000135C 0C00CAA4 */  jal   osSpTaskLoad
/* 001F60 80001360 24840010 */   addiu $a0, $a0, 0x10

/* 001F64 80001364 8FA40018 */  lw    $a0, 0x18($sp)
/* 001F68 80001368 0C00CB27 */  jal   osSpTaskStartGo
/* 001F6C 8000136C 24840010 */   addiu $a0, $a0, 0x10

/* 001F70 80001370 26040038 */  addiu $a0, $s0, 0x38 # OSMesgQueue *mq
/* 001F74 80001374 02202821 */  addu  $a1, $s1, $zero # NULL
/* 001F78 80001378 0C00C9E0 */  jal   osRecvMesg
/* 001F7C 8000137C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001F80 80001380 0C00AC2C */  jal   osSetIntMask
/* 001F84 80001384 24040001 */   li    $a0, 1 # OS_IM_NONE

/* 001F88 80001388 3C018005 */  lui   $at, %hi(bssMain_80052540) # $at, 0x8005
/* 001F8C 8000138C AC202540 */  sw    $zero, %lo(bssMain_80052540)($at)
/* 001F90 80001390 0C00AC2C */  jal   osSetIntMask
/* 001F94 80001394 00402021 */   addu  $a0, $v0, $zero

/* 001F98 80001398 26040070 */  addiu $a0, $s0, 0x70 # OSMesgQueue *mq
/* 001F9C 8000139C 02202821 */  addu  $a1, $s1, $zero # NULL
/* 001FA0 800013A0 0C00C9E0 */  jal   osRecvMesg
/* 001FA4 800013A4 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001FA8 800013A8 8FA20018 */  lw    $v0, 0x18($sp)
/* 001FAC 800013AC 8C420008 */  lw    $v0, 8($v0)
/* 001FB0 800013B0 30420040 */  andi  $v0, $v0, 0x40
/* 001FB4 800013B4 10400015 */  beqz  $v0, .L8000140C
/* 001FB8 800013B8 00000000 */   nop   

/* 001FBC 800013BC 3C028004 */  lui   $v0, %hi(D_8003C8A0) # $v0, 0x8004
/* 001FC0 800013C0 8C42C8A0 */  lw    $v0, %lo(D_8003C8A0)($v0)
/* 001FC4 800013C4 1040000E */  beqz  $v0, .L80001400
/* 001FC8 800013C8 00000000 */   nop   

/* 001FCC 800013CC 3C028000 */  lui   $v0, %hi(osTvType) # $v0, 0x8000
/* 001FD0 800013D0 8C420300 */  lw    $v0, %lo(osTvType)($v0)
/* 001FD4 800013D4 14400006 */  bnez  $v0, .L800013F0 # branch if NTSC or MPAL
/* 001FD8 800013D8 00000000 */   nop   

# scale video output height in PAL mode (todo: value is actually 0.833f)
/* 001FDC 800013DC 3C013F55 */  li    $at, 0x3F550000
/* 001FE0 800013E0 34213F7D */  ori   $at, (0x3F553F7D & 0xFFFF) # ori $at, $at, 0x3f7d
/* 001FE4 800013E4 44816000 */  mtc1  $at, $f12
/* 001FE8 800013E8 0C00CFB0 */  jal   osViSetYScale
/* 001FEC 800013EC 00000000 */   nop   

.L800013F0:
/* 001FF0 800013F0 0C00D09C */  jal   osViBlack
/* 001FF4 800013F4 00002021 */   addu  $a0, $zero, $zero

/* 001FF8 800013F8 3C018004 */  lui   $at, %hi(D_8003C8A0) # $at, 0x8004
/* 001FFC 800013FC AC20C8A0 */  sw    $zero, %lo(D_8003C8A0)($at)

.L80001400:
/* 002000 80001400 8FA20018 */  lw    $v0, 0x18($sp)
/* 002004 80001404 0C00CFC4 */  jal   osViSwapBuffer
/* 002008 80001408 8C44000C */   lw    $a0, 0xc($v0)

.L8000140C:
/* 00200C 8000140C 8FA20018 */  lw    $v0, 0x18($sp)
/* 002010 80001410 8C440050 */  lw    $a0, 0x50($v0)
/* 002014 80001414 8C450054 */  lw    $a1, 0x54($v0)

.L80001418:
/* 002018 80001418 0C00CA2C */  jal   osSendMesg
/* 00201C 8000141C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 002020 80001420 080004AD */  j     .L800012B4
/* 002024 80001424 02002021 */   addu  $a0, $s0, $zero
#}

/* 002028 80001428 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00202C 8000142C 8FB20028 */  lw    $s2, 0x28($sp)
/* 002030 80001430 8FB10024 */  lw    $s1, 0x24($sp)
/* 002034 80001434 8FB00020 */  lw    $s0, 0x20($sp)
/* 002038 80001438 03E00008 */  jr    $ra
/* 00203C 8000143C 27BD0030 */   addiu $sp, $sp, 0x30
