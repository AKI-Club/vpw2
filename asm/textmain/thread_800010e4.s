# 800010E4: audio-related thread

glabel thread_800010E4
/* 001CE4 800010E4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 001CE8 800010E8 AFB40028 */  sw    $s4, 0x28($sp)
/* 001CEC 800010EC 3C148005 */  lui   $s4, %hi(bssMain_80052090) # $s4, 0x8005
/* 001CF0 800010F0 26942090 */  addiu $s4, %lo(bssMain_80052090) # addiu $s4, $s4, 0x2090
/* 001CF4 800010F4 AFB30024 */  sw    $s3, 0x24($sp)
/* 001CF8 800010F8 269304B4 */  addiu $s3, $s4, 0x4b4
/* 001CFC 800010FC AFB5002C */  sw    $s5, 0x2c($sp)
/* 001D00 80001100 26950070 */  addiu $s5, $s4, 0x70
/* 001D04 80001104 AFB20020 */  sw    $s2, 0x20($sp)
/* 001D08 80001108 27B20014 */  addiu $s2, $sp, 0x14
/* 001D0C 8000110C AFBF0030 */  sw    $ra, 0x30($sp)
/* 001D10 80001110 AFB1001C */  sw    $s1, 0x1c($sp)
/* 001D14 80001114 AFB00018 */  sw    $s0, 0x18($sp)
/* 001D18 80001118 02802021 */  addu  $a0, $s4, $zero

#{
.L8000111C:
/* 001D1C 8000111C 27A50010 */  addiu $a1, $sp, 0x10
/* 001D20 80001120 0C00C9E0 */  jal   osRecvMesg
/* 001D24 80001124 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001D28 80001128 3C028005 */  lui   $v0, %hi(bssMain_80052554) # $v0, 0x8005
/* 001D2C 8000112C 94422554 */  lhu   $v0, %lo(bssMain_80052554)($v0)
/* 001D30 80001130 30420002 */  andi  $v0, $v0, 2
/* 001D34 80001134 14400032 */  bnez  $v0, .L80001200
/* 001D38 80001138 00000000 */   nop   

/* 001D3C 8000113C 0C00C100 */  jal   osWritebackDCacheAll
/* 001D40 80001140 00008021 */   addu  $s0, $zero, $zero

/* 001D44 80001144 3C118005 */  lui   $s1, %hi(bssMain_80052540) # $s1, 0x8005
/* 001D48 80001148 8E312540 */  lw    $s1, %lo(bssMain_80052540)($s1)
/* 001D4C 8000114C 1220000B */  beqz  $s1, .L8000117C
/* 001D50 80001150 00000000 */   nop   

/* 001D54 80001154 0C00CB34 */  jal   osSpTaskYield
/* 001D58 80001158 24100002 */   li    $s0, 2

/* 001D5C 8000115C 26840070 */  addiu $a0, $s4, 0x70
/* 001D60 80001160 27A50014 */  addiu $a1, $sp, 0x14
/* 001D64 80001164 0C00C9E0 */  jal   osRecvMesg
/* 001D68 80001168 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001D6C 8000116C 0C00CB3C */  jal   osSpTaskYielded
/* 001D70 80001170 26240010 */   addiu $a0, $s1, 0x10

/* 001D74 80001174 54400001 */  bnezl $v0, .L8000117C
/* 001D78 80001178 24100001 */   li    $s0, 1

.L8000117C:
/* 001D7C 8000117C 8FA20010 */  lw    $v0, 0x10($sp)
/* 001D80 80001180 24440010 */  addiu $a0, $v0, 0x10
/* 001D84 80001184 0C00CAA4 */  jal   osSpTaskLoad
/* 001D88 80001188 AE620000 */   sw    $v0, ($s3)

/* 001D8C 8000118C 8FA40010 */  lw    $a0, 0x10($sp)
/* 001D90 80001190 0C00CB27 */  jal   osSpTaskStartGo
/* 001D94 80001194 24840010 */   addiu $a0, $a0, 0x10

/* 001D98 80001198 02A02021 */  addu  $a0, $s5, $zero
/* 001D9C 8000119C 02402821 */  addu  $a1, $s2, $zero
/* 001DA0 800011A0 0C00C9E0 */  jal   osRecvMesg
/* 001DA4 800011A4 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001DA8 800011A8 8E620004 */  lw    $v0, 4($s3)
/* 001DAC 800011AC 10400005 */  beqz  $v0, .L800011C4
/* 001DB0 800011B0 AE600000 */   sw    $zero, ($s3)

/* 001DB4 800011B4 2664FC2C */  addiu $a0, $s3, -0x3d4 # OSMesgQueue *mq
/* 001DB8 800011B8 02402821 */  addu  $a1, $s2, $zero # OSMesg msg
/* 001DBC 800011BC 0C00CA2C */  jal   osSendMesg
/* 001DC0 800011C0 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

.L800011C4:
/* 001DC4 800011C4 24020001 */  li    $v0, 1
/* 001DC8 800011C8 16020008 */  bne   $s0, $v0, .L800011EC
/* 001DCC 800011CC 24020002 */   li    $v0, 2

/* 001DD0 800011D0 26300010 */  addiu $s0, $s1, 0x10
/* 001DD4 800011D4 0C00CAA4 */  jal   osSpTaskLoad
/* 001DD8 800011D8 02002021 */   addu  $a0, $s0, $zero

/* 001DDC 800011DC 0C00CB27 */  jal   osSpTaskStartGo
/* 001DE0 800011E0 02002021 */   addu  $a0, $s0, $zero

/* 001DE4 800011E4 08000480 */  j     .L80001200
/* 001DE8 800011E8 00000000 */   nop   

.L800011EC:
/* 001DEC 800011EC 16020004 */  bne   $s0, $v0, .L80001200
/* 001DF0 800011F0 02A02021 */   addu  $a0, $s5, $zero

/* 001DF4 800011F4 02402821 */  addu  $a1, $s2, $zero # OSMesg msg
/* 001DF8 800011F8 0C00CA2C */  jal   osSendMesg
/* 001DFC 800011FC 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

.L80001200:
/* 001E00 80001200 8FA20010 */  lw    $v0, 0x10($sp)
/* 001E04 80001204 8C440050 */  lw    $a0, 0x50($v0)
/* 001E08 80001208 8C450054 */  lw    $a1, 0x54($v0)
/* 001E0C 8000120C 0C00CA2C */  jal   osSendMesg
/* 001E10 80001210 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001E14 80001214 08000447 */  j     .L8000111C
/* 001E18 80001218 02802021 */   addu  $a0, $s4, $zero
#}

/* 001E1C 8000121C 8FBF0030 */  lw    $ra, 0x30($sp)
/* 001E20 80001220 8FB5002C */  lw    $s5, 0x2c($sp)
/* 001E24 80001224 8FB40028 */  lw    $s4, 0x28($sp)
/* 001E28 80001228 8FB30024 */  lw    $s3, 0x24($sp)
/* 001E2C 8000122C 8FB20020 */  lw    $s2, 0x20($sp)
/* 001E30 80001230 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001E34 80001234 8FB00018 */  lw    $s0, 0x18($sp)
/* 001E38 80001238 03E00008 */  jr    $ra
/* 001E3C 8000123C 27BD0038 */   addiu $sp, $sp, 0x38
