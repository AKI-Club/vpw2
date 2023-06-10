# set up controllers?
glabel func_800044D0
/* 0050D0 800044D0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0050D4 800044D4 AFB00030 */  sw    $s0, 0x30($sp)
/* 0050D8 800044D8 00008021 */  addu  $s0, $zero, $zero
/* 0050DC 800044DC 3C048005 */  lui   $a0, %hi(bssMain_80057028) # $a0, 0x8005
/* 0050E0 800044E0 24847028 */  addiu $a0, %lo(bssMain_80057028) # addiu $a0, $a0, 0x7028
/* 0050E4 800044E4 00001821 */  addu  $v1, $zero, $zero
/* 0050E8 800044E8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0050EC 800044EC AFB20038 */  sw    $s2, 0x38($sp)
/* 0050F0 800044F0 AFB10034 */  sw    $s1, 0x34($sp)

.L800044F4:
# store OSContStatus pointers
/* 0050F4 800044F4 3C01800A */  lui   $at, %hi(bssMain_8009B150)
/* 0050F8 800044F8 00230821 */  addu  $at, $at, $v1
/* 0050FC 800044FC AC24B150 */  sw    $a0, %lo(bssMain_8009B150)($at)

/* 005100 80004500 24840004 */  addiu $a0, $a0, 4
/* 005104 80004504 26100001 */  addiu $s0, $s0, 1
/* 005108 80004508 2E020004 */  sltiu $v0, $s0, 4 # max controllers
/* 00510C 8000450C 1440FFF9 */  bnez  $v0, .L800044F4
/* 005110 80004510 2463000C */   addiu $v1, $v1, 0xC


/* 005114 80004514 27A40010 */  addiu $a0, $sp, 0x10 # OSMesgQueue *mq
/* 005118 80004518 27A50028 */  addiu $a1, $sp, 0x28 # OSMesg *msg
/* 00511C 8000451C 0C00C984 */  jal   osCreateMesgQueue
/* 005120 80004520 24060001 */   li    $a2, 1 # count/number of messages

/* 005124 80004524 24040005 */  li    $a0, 5 # OS_EVENT_SI (controller interrupt)
/* 005128 80004528 27A50010 */  addiu $a1, $sp, 0x10
/* 00512C 8000452C 0C00CA78 */  jal   osSetEventMesg
/* 005130 80004530 24060001 */   li    $a2, 1 # OSMesg m

# u8 *bitpattern
/* 005134 80004534 3C058005 */  lui   $a1, %hi(bssMain_800571D8) # $a1, 0x8005
/* 005138 80004538 24A571D8 */  addiu $a1, %lo(bssMain_800571D8) # addiu $a1, $a1, 0x71d8
# OSContStatus *status
/* 00513C 8000453C 3C068005 */  lui   $a2, %hi(bssMain_80057028) # $a2, 0x8005
/* 005140 80004540 24C67028 */  addiu $a2, %lo(bssMain_80057028) # addiu $a2, $a2, 0x7028
/* 005144 80004544 0C00C1AC */  jal   osContInit
/* 005148 80004548 27A40010 */   addiu $a0, $sp, 0x10 # OSMesgQueue *mq

# 4 players, 4 controllers
/* 00514C 8000454C 24040004 */  li    $a0, 4
/* 005150 80004550 0C00C270 */  jal   osContSetCh
/* 005154 80004554 00409021 */   addu  $s2, $v0, $zero

# OSMesgQueue *mq
/* 005158 80004558 3C108005 */  lui   $s0, %hi(bssMain_80057008) # $s0, 0x8005
/* 00515C 8000455C 26107008 */  addiu $s0, %lo(bssMain_80057008) # addiu $s0, $s0, 0x7008
/* 005160 80004560 02002021 */  addu  $a0, $s0, $zero
# OSMesg *msg
/* 005164 80004564 3C058005 */  lui   $a1, %hi(bssMain_80057020) # $a1, 0x8005
/* 005168 80004568 24A57020 */  addiu $a1, %lo(bssMain_80057020) # addiu $a1, $a1, 0x7020
/* 00516C 8000456C 0C00C984 */  jal   osCreateMesgQueue
/* 005170 80004570 24060001 */   li    $a2, 1 # count/number of messages

/* 005174 80004574 24040005 */  li    $a0, 5 # OS_EVENT_SI (controller interrupt)
/* 005178 80004578 02002821 */  addu  $a1, $s0, $zero # OSMesgQueue *mq
/* 00517C 8000457C 0C00CA78 */  jal   osSetEventMesg
/* 005180 80004580 00003021 */   addu  $a2, $zero, $zero # OSMesg m

/* 005184 80004584 3C018005 */  lui   $at, %hi(bssMain_800571DB) # $at, 0x8005
/* 005188 80004588 A02071DB */  sb    $zero, %lo(bssMain_800571DB)($at)
/* 00518C 8000458C 00008021 */  addu  $s0, $zero, $zero
/* 005190 80004590 3C118005 */  lui   $s1, %hi(bssMain_80057038) # $s1, 0x8005
/* 005194 80004594 26317038 */  addiu $s1, %lo(bssMain_80057038) # addiu $s1, $s1, 0x7038

.L80004598:
/* 005198 80004598 00102400 */  sll   $a0, $s0, 0x10
/* 00519C 8000459C 0C001299 */  jal   func_80004A64
/* 0051A0 800045A0 00042403 */   sra   $a0, $a0, 0x10

/* 0051A4 800045A4 3C028005 */  lui   $v0, %hi(bssMain_800571DB) # $v0, 0x8005
/* 0051A8 800045A8 904271DB */  lbu   $v0, %lo(bssMain_800571DB)($v0)
/* 0051AC 800045AC 02021007 */  srav  $v0, $v0, $s0
/* 0051B0 800045B0 30420001 */  andi  $v0, $v0, 1
/* 0051B4 800045B4 10400003 */  beqz  $v0, .L800045C4
/* 0051B8 800045B8 02202021 */   addu  $a0, $s1, $zero

/* 0051BC 800045BC 0C00D1A4 */  jal   __osMotorAccess
/* 0051C0 800045C0 00002821 */   addu  $a1, $zero, $zero # MOTOR_STOP

.L800045C4:
/* 0051C4 800045C4 3C018005 */  lui   $at, %hi(bssMain_800571E4)
/* 0051C8 800045C8 00300821 */  addu  $at, $at, $s0
/* 0051CC 800045CC A02071E4 */  sb    $zero, %lo(bssMain_800571E4)($at)
/* 0051D0 800045D0 3C018005 */  lui   $at, %hi(bssMain_800571DC)
/* 0051D4 800045D4 00300821 */  addu  $at, $at, $s0
/* 0051D8 800045D8 A02071DC */  sb    $zero, %lo(bssMain_800571DC)($at)
/* 0051DC 800045DC 3C018005 */  lui   $at, %hi(bssMain_800571E0)
/* 0051E0 800045E0 00300821 */  addu  $at, $at, $s0
/* 0051E4 800045E4 A02071E0 */  sb    $zero, %lo(bssMain_800571E0)($at)
/* 0051E8 800045E8 26100001 */  addiu $s0, $s0, 1
/* 0051EC 800045EC 2E020004 */  sltiu $v0, $s0, 4
/* 0051F0 800045F0 1440FFE9 */  bnez  $v0, .L80004598
/* 0051F4 800045F4 26310068 */   addiu $s1, $s1, 0x68


# OSMesgQueue *mq
/* 0051F8 800045F8 3C048005 */  lui   $a0, %hi(bssMain_80057008) # $a0, 0x8005
/* 0051FC 800045FC 0C00C134 */  jal   osContStartReadData
/* 005200 80004600 24847008 */   addiu $a0, %lo(bssMain_80057008) # addiu $a0, $a0, 0x7008

/* 005204 80004604 3C018005 */  lui   $at, %hi(bssMain_800571DA) # $at, 0x8005
/* 005208 80004608 A02071DA */  sb    $zero, %lo(bssMain_800571DA)($at)
/* 00520C 8000460C 02401021 */  addu  $v0, $s2, $zero
/* 005210 80004610 8FBF003C */  lw    $ra, 0x3c($sp)
/* 005214 80004614 8FB20038 */  lw    $s2, 0x38($sp)
/* 005218 80004618 8FB10034 */  lw    $s1, 0x34($sp)
/* 00521C 8000461C 8FB00030 */  lw    $s0, 0x30($sp)
/* 005220 80004620 03E00008 */  jr    $ra
/* 005224 80004624 27BD0040 */   addiu $sp, $sp, 0x40
