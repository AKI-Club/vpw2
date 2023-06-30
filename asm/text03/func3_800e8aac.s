glabel func3_800E8AAC
/* 0E315C 800E8AAC 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 0E3160 800E8AB0 AFBF00B0 */  sw    $ra, 0xb0($sp)
/* 0E3164 800E8AB4 AFB100AC */  sw    $s1, 0xac($sp)
/* 0E3168 800E8AB8 AFB000A8 */  sw    $s0, 0xa8($sp)
/* 0E316C 800E8ABC F7B800C8 */  sdc1  $f24, 0xc8($sp)
/* 0E3170 800E8AC0 F7B600C0 */  sdc1  $f22, 0xc0($sp)
/* 0E3174 800E8AC4 F7B400B8 */  sdc1  $f20, 0xb8($sp)
/* 0E3178 800E8AC8 0C0025B8 */  jal   func_800096E0
/* 0E317C 800E8ACC 24040001 */   li    $a0, 1

/* 0E3180 800E8AD0 3C118016 */  lui   $s1, %hi(bss3_801588F0) # $s1, 0x8016
/* 0E3184 800E8AD4 263188F0 */  addiu $s1, %lo(bss3_801588F0) # addiu $s1, $s1, -0x7710
/* 0E3188 800E8AD8 4480A000 */  mtc1  $zero, $f20
/* 0E318C 800E8ADC 02202021 */  addu  $a0, $s1, $zero
/* 0E3190 800E8AE0 4406A000 */  mfc1  $a2, $f20
/* 0E3194 800E8AE4 4407A000 */  mfc1  $a3, $f20
/* 0E3198 800E8AE8 24050005 */  li    $a1, 5
/* 0E319C 800E8AEC 0C000600 */  jal   func_80001800
/* 0E31A0 800E8AF0 E7B40010 */   swc1  $f20, 0x10($sp)

/* 0E31A4 800E8AF4 02202021 */  addu  $a0, $s1, $zero
/* 0E31A8 800E8AF8 0C000635 */  jal   func_800018D4
/* 0E31AC 800E8AFC 00002821 */   addu  $a1, $zero, $zero

/* 0E31B0 800E8B00 0C00061B */  jal   func_8000186C
/* 0E31B4 800E8B04 02202021 */   addu  $a0, $s1, $zero

/* 0E31B8 800E8B08 3C0643F0 */  lui   $a2, 0x43f0
/* 0E31BC 800E8B0C 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E31C0 800E8B10 4481B000 */  mtc1  $at, $f22
/* 0E31C4 800E8B14 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E31C8 800E8B18 4481C000 */  mtc1  $at, $f24
/* 0E31CC 800E8B1C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E31D0 800E8B20 44810000 */  mtc1  $at, $f0
/* 0E31D4 800E8B24 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E31D8 800E8B28 44811000 */  mtc1  $at, $f2
/* 0E31DC 800E8B2C 4405A000 */  mfc1  $a1, $f20
/* 0E31E0 800E8B30 4407A000 */  mfc1  $a3, $f20
/* 0E31E4 800E8B34 27A40028 */  addiu $a0, $sp, 0x28
/* 0E31E8 800E8B38 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0E31EC 800E8B3C E7B80014 */  swc1  $f24, 0x14($sp)
/* 0E31F0 800E8B40 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E31F4 800E8B44 0C00C5A4 */  jal   guOrthoF
/* 0E31F8 800E8B48 E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E31FC 800E8B4C 27B00068 */  addiu $s0, $sp, 0x68
/* 0E3200 800E8B50 4405A000 */  mfc1  $a1, $f20
/* 0E3204 800E8B54 4406B000 */  mfc1  $a2, $f22
/* 0E3208 800E8B58 4407C000 */  mfc1  $a3, $f24
/* 0E320C 800E8B5C 02002021 */  addu  $a0, $s0, $zero
/* 0E3210 800E8B60 AFA50010 */  sw    $a1, 0x10($sp)
/* 0E3214 800E8B64 AFA60014 */  sw    $a2, 0x14($sp)
/* 0E3218 800E8B68 AFA50018 */  sw    $a1, 0x18($sp)
/* 0E321C 800E8B6C AFA5001C */  sw    $a1, 0x1c($sp)
/* 0E3220 800E8B70 AFA70020 */  sw    $a3, 0x20($sp)
/* 0E3224 800E8B74 0C00C3E0 */  jal   guLookAtF
/* 0E3228 800E8B78 AFA50024 */   sw    $a1, 0x24($sp)

/* 0E322C 800E8B7C 02002021 */  addu  $a0, $s0, $zero
/* 0E3230 800E8B80 27A50028 */  addiu $a1, $sp, 0x28
/* 0E3234 800E8B84 0C000842 */  jal   func_80002108
/* 0E3238 800E8B88 2626009C */   addiu $a2, $s1, 0x9c

/* 0E323C 800E8B8C 3C038016 */  lui   $v1, %hi(bss3_80158904) # $v1, 0x8016
/* 0E3240 800E8B90 8C638904 */  lw    $v1, %lo(bss3_80158904)($v1)
/* 0E3244 800E8B94 24020001 */  li    $v0, 1
/* 0E3248 800E8B98 3C018016 */  lui   $at, %hi(bss3_80158909) # $at, 0x8016
/* 0E324C 800E8B9C A0228909 */  sb    $v0, %lo(bss3_80158909)($at)
/* 0E3250 800E8BA0 8C620000 */  lw    $v0, ($v1)
/* 0E3254 800E8BA4 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E3258 800E8BA8 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E325C 800E8BAC 44810000 */  mtc1  $at, $f0
/* 0E3260 800E8BB0 34420080 */  ori   $v0, $v0, 0x80
/* 0E3264 800E8BB4 AC620000 */  sw    $v0, ($v1)
/* 0E3268 800E8BB8 3C028016 */  lui   $v0, %hi(bss3_80158904) # $v0, 0x8016
/* 0E326C 800E8BBC 8C428904 */  lw    $v0, %lo(bss3_80158904)($v0)
/* 0E3270 800E8BC0 00002021 */  addu  $a0, $zero, $zero
/* 0E3274 800E8BC4 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E3278 800E8BC8 3C028016 */  lui   $v0, %hi(bss3_80158904) # $v0, 0x8016
/* 0E327C 800E8BCC 8C428904 */  lw    $v0, %lo(bss3_80158904)($v0)
/* 0E3280 800E8BD0 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E3284 800E8BD4 44810000 */  mtc1  $at, $f0
/* 0E3288 800E8BD8 3C05DF00 */  lui   $a1, 0xdf00
/* 0E328C 800E8BDC 3C038016 */  lui   $v1, %hi(bss3_801589D0) # $v1, 0x8016
/* 0E3290 800E8BE0 246389D0 */  addiu $v1, %lo(bss3_801589D0) # addiu $v1, $v1, -0x7630
/* 0E3294 800E8BE4 E4400020 */  swc1  $f0, 0x20($v0)

.L3_800E8BE8:
/* 0E3298 800E8BE8 AC650000 */  sw    $a1, ($v1)
/* 0E329C 800E8BEC AC600004 */  sw    $zero, 4($v1)
/* 0E32A0 800E8BF0 24840001 */  addiu $a0, $a0, 1
/* 0E32A4 800E8BF4 2C820002 */  sltiu $v0, $a0, 2
/* 0E32A8 800E8BF8 1440FFFB */  bnez  $v0, .L3_800E8BE8
/* 0E32AC 800E8BFC 24630800 */   addiu $v1, $v1, 0x800

/* 0E32B0 800E8C00 2403FFFF */  li    $v1, -1
/* 0E32B4 800E8C04 24050001 */  li    $a1, 1
/* 0E32B8 800E8C08 240400F0 */  li    $a0, 240
/* 0E32BC 800E8C0C 240200B4 */  li    $v0, 180
/* 0E32C0 800E8C10 3C018016 */  lui   $at, %hi(bss3_801599DA) # $at, 0x8016
/* 0E32C4 800E8C14 A42299DA */  sh    $v0, %lo(bss3_801599DA)($at)
/* 0E32C8 800E8C18 2402008C */  li    $v0, 140
/* 0E32CC 800E8C1C 3C018016 */  lui   $at, %hi(bss3_801599D0) # $at, 0x8016
/* 0E32D0 800E8C20 A42099D0 */  sh    $zero, %lo(bss3_801599D0)($at)
/* 0E32D4 800E8C24 3C018016 */  lui   $at, %hi(bss3_801599E0) # $at, 0x8016
/* 0E32D8 800E8C28 A42399E0 */  sh    $v1, %lo(bss3_801599E0)($at)
/* 0E32DC 800E8C2C 3C018016 */  lui   $at, %hi(bss3_801599D4) # $at, 0x8016
/* 0E32E0 800E8C30 A42399D4 */  sh    $v1, %lo(bss3_801599D4)($at)
/* 0E32E4 800E8C34 3C018016 */  lui   $at, %hi(bss3_801599D6) # $at, 0x8016
/* 0E32E8 800E8C38 A42599D6 */  sh    $a1, %lo(bss3_801599D6)($at)
/* 0E32EC 800E8C3C 3C018016 */  lui   $at, %hi(bss3_801599D8) # $at, 0x8016
/* 0E32F0 800E8C40 A42499D8 */  sh    $a0, %lo(bss3_801599D8)($at)
/* 0E32F4 800E8C44 3C018016 */  lui   $at, %hi(bss3_801599DC) # $at, 0x8016
/* 0E32F8 800E8C48 AC2099DC */  sw    $zero, %lo(bss3_801599DC)($at)
/* 0E32FC 800E8C4C 3C018016 */  lui   $at, %hi(bss3_801599E6) # $at, 0x8016
/* 0E3300 800E8C50 A42599E6 */  sh    $a1, %lo(bss3_801599E6)($at)
/* 0E3304 800E8C54 3C018016 */  lui   $at, %hi(bss3_801599E8) # $at, 0x8016
/* 0E3308 800E8C58 A42499E8 */  sh    $a0, %lo(bss3_801599E8)($at)
/* 0E330C 800E8C5C 3C018016 */  lui   $at, %hi(bss3_801599EA) # $at, 0x8016
/* 0E3310 800E8C60 A42299EA */  sh    $v0, %lo(bss3_801599EA)($at)
/* 0E3314 800E8C64 3C018016 */  lui   $at, %hi(bss3_801599E4) # $at, 0x8016
/* 0E3318 800E8C68 A42399E4 */  sh    $v1, %lo(bss3_801599E4)($at)
/* 0E331C 800E8C6C 3C018016 */  lui   $at, %hi(bss3_801599EC) # $at, 0x8016
/* 0E3320 800E8C70 AC2099EC */  sw    $zero, %lo(bss3_801599EC)($at)
/* 0E3324 800E8C74 3C018016 */  lui   $at, %hi(bss3_801599F0) # $at, 0x8016
/* 0E3328 800E8C78 A02099F0 */  sb    $zero, %lo(bss3_801599F0)($at)
/* 0E332C 800E8C7C 3C018016 */  lui   $at, %hi(bss3_80159AF2) # $at, 0x8016
/* 0E3330 800E8C80 A4239AF2 */  sh    $v1, %lo(bss3_80159AF2)($at)
/* 0E3334 800E8C84 3C018016 */  lui   $at, %hi(bss3_80159AF0) # $at, 0x8016
/* 0E3338 800E8C88 A4209AF0 */  sh    $zero, %lo(bss3_80159AF0)($at)
/* 0E333C 800E8C8C 8FBF00B0 */  lw    $ra, 0xb0($sp)
/* 0E3340 800E8C90 8FB100AC */  lw    $s1, 0xac($sp)
/* 0E3344 800E8C94 8FB000A8 */  lw    $s0, 0xa8($sp)
/* 0E3348 800E8C98 D7B800C8 */  ldc1  $f24, 0xc8($sp)
/* 0E334C 800E8C9C D7B600C0 */  ldc1  $f22, 0xc0($sp)
/* 0E3350 800E8CA0 D7B400B8 */  ldc1  $f20, 0xb8($sp)
/* 0E3354 800E8CA4 03E00008 */  jr    $ra
/* 0E3358 800E8CA8 27BD00D0 */   addiu $sp, $sp, 0xd0
