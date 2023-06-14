# loads Toki1 values and performs some other init

glabel func_800118F4
/* 0124F4 800118F4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0124F8 800118F8 27A40010 */  addiu $a0, $sp, 0x10
/* 0124FC 800118FC 2405034B */  li    $a1, 0x034B # file ID 034B: Toki1 values
/* 012500 80011900 AFBF0050 */  sw    $ra, 0x50($sp)
/* 012504 80011904 AFB7004C */  sw    $s7, 0x4c($sp)
/* 012508 80011908 AFB60048 */  sw    $s6, 0x48($sp)
/* 01250C 8001190C AFB50044 */  sw    $s5, 0x44($sp)
/* 012510 80011910 AFB40040 */  sw    $s4, 0x40($sp)
/* 012514 80011914 AFB3003C */  sw    $s3, 0x3c($sp)
/* 012518 80011918 AFB20038 */  sw    $s2, 0x38($sp)
/* 01251C 8001191C AFB10034 */  sw    $s1, 0x34($sp)
/* 012520 80011920 0C000F71 */  jal   GetFileLoc
/* 012524 80011924 AFB00030 */   sw    $s0, 0x30($sp)

/* 012528 80011928 8FA40018 */  lw    $a0, 0x18($sp)
/* 01252C 8001192C 0000A021 */  addu  $s4, $zero, $zero
/* 012530 80011930 24170001 */  li    $s7, 1
/* 012534 80011934 2416FFFF */  li    $s6, -1
/* 012538 80011938 3C138007 */  lui   $s3, %hi(bssMain_800707E8) # $s3, 0x8007
/* 01253C 8001193C 267307E8 */  addiu $s3, %lo(bssMain_800707E8) # addiu $s3, $s3, 0x7e8
/* 012540 80011940 3C158007 */  lui   $s5, %hi(bssMain_800707C8) # $s5, 0x8007
/* 012544 80011944 26B507C8 */  addiu $s5, %lo(bssMain_800707C8) # addiu $s5, $s5, 0x7c8
/* 012548 80011948 0C000226 */  jal   aki_malloc
/* 01254C 8001194C 00008021 */   addu  $s0, $zero, $zero

/* 012550 80011950 27A40020 */  addiu $a0, $sp, 0x20
/* 012554 80011954 00403021 */  addu  $a2, $v0, $zero
/* 012558 80011958 3C018007 */  lui   $at, %hi(bssMain_800707C4) # $at, 0x8007
/* 01255C 8001195C AC2607C4 */  sw    $a2, %lo(bssMain_800707C4)($at)
/* 012560 80011960 0C000FA2 */  jal   LoadFile
/* 012564 80011964 2405034B */   li    $a1, 0x034B # file ID 034B: Toki1 values

/* 012568 80011968 3C028007 */  lui   $v0, %hi(bssMain_80070518) # $v0, 0x8007
/* 01256C 8001196C 24420518 */  addiu $v0, %lo(bssMain_80070518) # addiu $v0, $v0, 0x518
/* 012570 80011970 24520060 */  addiu $s2, $v0, 0x60
/* 012574 80011974 00408821 */  addu  $s1, $v0, $zero

.L80011978:
/* 012578 80011978 0C000226 */  jal   aki_malloc
/* 01257C 8001197C 24040080 */   li    $a0, 128

/* 012580 80011980 3C018007 */  lui   $at, %hi(bssMain_800704C8)
/* 012584 80011984 00300821 */  addu  $at, $at, $s0
/* 012588 80011988 AC2204C8 */  sw    $v0, %lo(bssMain_800704C8)($at)
/* 01258C 8001198C 0C000226 */  jal   aki_malloc
/* 012590 80011990 24040080 */   li    $a0, 128

/* 012594 80011994 02202021 */  addu  $a0, $s1, $zero # OSMesgQueue *mq
/* 012598 80011998 02402821 */  addu  $a1, $s2, $zero # OSMesg *msg
/* 01259C 8001199C 3C018007 */  lui   $at, %hi(bssMain_800704CC)
/* 0125A0 800119A0 00300821 */  addu  $at, $at, $s0
/* 0125A4 800119A4 AC2204CC */  sw    $v0, %lo(bssMain_800704CC)($at)
/* 0125A8 800119A8 3C018007 */  lui   $at, %hi(bssMain_800704C0)
/* 0125AC 800119AC 00300821 */  addu  $at, $at, $s0
/* 0125B0 800119B0 A03704C0 */  sb    $s7, %lo(bssMain_800704C0)($at)
/* 0125B4 800119B4 3C018007 */  lui   $at, %hi(bssMain_800704C1)
/* 0125B8 800119B8 00300821 */  addu  $at, $at, $s0
/* 0125BC 800119BC A02004C1 */  sb    $zero, %lo(bssMain_800704C1)($at)
/* 0125C0 800119C0 3C018007 */  lui   $at, %hi(bssMain_800704C4)
/* 0125C4 800119C4 00300821 */  addu  $at, $at, $s0
/* 0125C8 800119C8 A43604C4 */  sh    $s6, %lo(bssMain_800704C4)($at)
/* 0125CC 800119CC 3C018007 */  lui   $at, %hi(bssMain_800704C6)
/* 0125D0 800119D0 00300821 */  addu  $at, $at, $s0
/* 0125D4 800119D4 A43604C6 */  sh    $s6, %lo(bssMain_800704C6)($at)
/* 0125D8 800119D8 0C00C984 */  jal   osCreateMesgQueue
/* 0125DC 800119DC 24060001 */   li    $a2, 1 # count/number of messages

/* 0125E0 800119E0 26240018 */  addiu $a0, $s1, 0x18 # OSMesgQueue *mq
/* 0125E4 800119E4 26450004 */  addiu $a1, $s2, 4 # OSMesg *msg
/* 0125E8 800119E8 0C00C984 */  jal   osCreateMesgQueue
/* 0125EC 800119EC 24060001 */   li    $a2, 1 # count/number of messages

/* 0125F0 800119F0 26630001 */  addiu $v1, $s3, 1
/* 0125F4 800119F4 26A40001 */  addiu $a0, $s5, 1
/* 0125F8 800119F8 26650008 */  addiu $a1, $s3, 8
/* 0125FC 800119FC 3C018007 */  lui   $at, %hi(bssMain_800704C2)
/* 012600 80011A00 00300821 */  addu  $at, $at, $s0
/* 012604 80011A04 A02004C2 */  sb    $zero, %lo(bssMain_800704C2)($at)
/* 012608 80011A08 3C018007 */  lui   $at, %hi(bssMain_800704C3)
/* 01260C 80011A0C 00300821 */  addu  $at, $at, $s0
/* 012610 80011A10 A02004C3 */  sb    $zero, %lo(bssMain_800704C3)($at)

.L80011A14:
/* 012614 80011A14 A0960000 */  sb    $s6, ($a0)
/* 012618 80011A18 A0600000 */  sb    $zero, ($v1)
/* 01261C 80011A1C 24630001 */  addiu $v1, $v1, 1
/* 012620 80011A20 0065102B */  sltu  $v0, $v1, $a1
/* 012624 80011A24 1440FFFB */  bnez  $v0, .L80011A14
/* 012628 80011A28 24840001 */   addiu $a0, $a0, 1

/* 01262C 80011A2C 3C018007 */  lui   $at, %hi(bssMain_80070808)
/* 012630 80011A30 00340821 */  addu  $at, $at, $s4
/* 012634 80011A34 A0200808 */  sb    $zero, %lo(bssMain_80070808)($at)
/* 012638 80011A38 26730008 */  addiu $s3, $s3, 8
/* 01263C 80011A3C 26B50008 */  addiu $s5, $s5, 8
/* 012640 80011A40 265200C0 */  addiu $s2, $s2, 0xc0
/* 012644 80011A44 263100C0 */  addiu $s1, $s1, 0xc0
/* 012648 80011A48 26940001 */  addiu $s4, $s4, 1
/* 01264C 80011A4C 2E820004 */  sltiu $v0, $s4, 4
/* 012650 80011A50 1440FFC9 */  bnez  $v0, .L80011978
/* 012654 80011A54 261000C0 */   addiu $s0, $s0, 0xc0

# get and store handler for cartrom
/* 012658 80011A58 0C00AD70 */  jal   osCartRomInit
/* 01265C 80011A5C 00000000 */   nop   

/* 012660 80011A60 3C018007 */  lui   $at, %hi(bssMain_800704BC) # $at, 0x8007
/* 012664 80011A64 AC2204BC */  sw    $v0, %lo(bssMain_800704BC)($at)

/* 012668 80011A68 24020001 */  li    $v0, 1
/* 01266C 80011A6C 3C01800A */  lui   $at, %hi(bssMain_8009B184) # $at, 0x800a
/* 012670 80011A70 A422B184 */  sh    $v0, %lo(bssMain_8009B184)($at)
/* 012674 80011A74 3C01800A */  lui   $at, %hi(bssMain_800A44A0) # $at, 0x800a
/* 012678 80011A78 A02044A0 */  sb    $zero, %lo(bssMain_800A44A0)($at)
/* 01267C 80011A7C 8FBF0050 */  lw    $ra, 0x50($sp)
/* 012680 80011A80 8FB7004C */  lw    $s7, 0x4c($sp)
/* 012684 80011A84 8FB60048 */  lw    $s6, 0x48($sp)
/* 012688 80011A88 8FB50044 */  lw    $s5, 0x44($sp)
/* 01268C 80011A8C 8FB40040 */  lw    $s4, 0x40($sp)
/* 012690 80011A90 8FB3003C */  lw    $s3, 0x3c($sp)
/* 012694 80011A94 8FB20038 */  lw    $s2, 0x38($sp)
/* 012698 80011A98 8FB10034 */  lw    $s1, 0x34($sp)
/* 01269C 80011A9C 8FB00030 */  lw    $s0, 0x30($sp)
/* 0126A0 80011AA0 03E00008 */  jr    $ra
/* 0126A4 80011AA4 27BD0058 */   addiu $sp, $sp, 0x58
