glabel func_800014D0
/* 0020D0 800014D0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0020D4 800014D4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0020D8 800014D8 3C128004 */  lui   $s2, %hi(D_8003C8B4) # $s2, 0x8004
/* 0020DC 800014DC 9252C8B4 */  lbu   $s2, %lo(D_8003C8B4)($s2)
/* 0020E0 800014E0 24020001 */  li    $v0, 1
/* 0020E4 800014E4 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0020E8 800014E8 AFB30024 */  sw    $s3, 0x24($sp)
/* 0020EC 800014EC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0020F0 800014F0 16420090 */  bne   $s2, $v0, .L80001734 # exit function
/* 0020F4 800014F4 AFB00018 */   sw    $s0, 0x18($sp)

# malloc space for base_dl
/* 0020F8 800014F8 3C100005 */  lui   $s0, %hi(_seg00SegmentRomStart) # $s0, 5
/* 0020FC 800014FC 2610BF40 */  addiu $s0, %lo(_seg00SegmentRomStart) # addiu $s0, $s0, -0x40c0
/* 002100 80001500 3C110005 */  lui   $s1, %hi(_basedlSegmentRomStart) # $s1, 5
/* 002104 80001504 2631BEA0 */  addiu $s1, %lo(_basedlSegmentRomStart) # addiu $s1, $s1, -0x4160
/* 002108 80001508 02118023 */  subu  $s0, $s0, $s1
/* 00210C 8000150C 3C018004 */  lui   $at, %hi(D_8003C8B4) # $at, 0x8004
/* 002110 80001510 A020C8B4 */  sb    $zero, %lo(D_8003C8B4)($at)
/* 002114 80001514 0C000226 */  jal   aki_malloc
/* 002118 80001518 02002021 */   addu  $a0, $s0, $zero

# load base_dl
/* 00211C 8000151C 02202021 */  addu  $a0, $s1, $zero /* set $a0 to ROM source addr */
/* 002120 80001520 00402821 */  addu  $a1, $v0, $zero /* set $a1 to malloc result addr */
/* 002124 80001524 3C01800B */  lui   $at, %hi(bssMain_800B62EC) # $at, 0x800b
/* 002128 80001528 AC2562EC */  sw    $a1, %lo(bssMain_800B62EC)($at)
/* 00212C 8000152C 0C000198 */  jal   LoadDataDMA
/* 002130 80001530 02003021 */   addu  $a2, $s0, $zero /* set $a2 to length */

# OSMesgQueue *mq
/* 002134 80001534 3C108005 */  lui   $s0, %hi(bssMain_80055728) # $s0, 0x8005
/* 002138 80001538 26105728 */  addiu $s0, %lo(bssMain_80055728) # addiu $s0, $s0, 0x5728
/* 00213C 8000153C 02002021 */  addu  $a0, $s0, $zero
# OSMesg *msg
/* 002140 80001540 3C058005 */  lui   $a1, %hi(bssMain_80055740) # $a1, 0x8005
/* 002144 80001544 24A55740 */  addiu $a1, %lo(bssMain_80055740) # addiu $a1, $a1, 0x5740
/* 002148 80001548 0C00C984 */  jal   osCreateMesgQueue
/* 00214C 8000154C 24060010 */   li    $a2, 16 # count/number of messages

/* 002150 80001550 3C048005 */  lui   $a0, %hi(bssMain_80055720) # $a0, 0x8005
/* 002154 80001554 24845720 */  addiu $a0, %lo(bssMain_80055720) # addiu $a0, $a0, 0x5720
/* 002158 80001558 0C000171 */  jal   func_800005C4
/* 00215C 8000155C 02002821 */   addu  $a1, $s0, $zero

# OSThread *t
/* 002160 80001560 3C108005 */  lui   $s0, %hi(bssMain_80053570) # $s0, 0x8005
/* 002164 80001564 26103570 */  addiu $s0, %lo(bssMain_80053570) # addiu $s0, $s0, 0x3570
/* 002168 80001568 02002021 */  addu  $a0, $s0, $zero
/* 00216C 8000156C 24050003 */  li    $a1, 3 # thread ID 3
# void (*entry)(void *)
/* 002170 80001570 3C068000 */  lui   $a2, %hi(thread_800033D4) # $a2, 0x8000
/* 002174 80001574 24C633D4 */  addiu $a2, %lo(thread_800033D4) # addiu $a2, $a2, 0x33d4
# void *sp
/* 002178 80001578 3C028005 */  lui   $v0, %hi(bssMain_80055720) # $v0, 0x8005
/* 00217C 8000157C 24425720 */  addiu $v0, %lo(bssMain_80055720) # addiu $v0, $v0, 0x5720
# OSPri pri
/* 002180 80001580 AFA20010 */  sw    $v0, 0x10($sp)
/* 002184 80001584 24020046 */  li    $v0, 70
/* 002188 80001588 00003821 */  addu  $a3, $zero, $zero # void *arg
/* 00218C 8000158C 0C00CBF4 */  jal   osCreateThread
/* 002190 80001590 AFA20014 */   sw    $v0, 0x14($sp)

# OSMesgQueue *mq
/* 002194 80001594 3C048005 */  lui   $a0, %hi(bssMain_80055780) # $a0, 0x8005
/* 002198 80001598 24845780 */  addiu $a0, %lo(bssMain_80055780) # addiu $a0, $a0, 0x5780
# OSMesg *msg
/* 00219C 8000159C 3C058005 */  lui   $a1, %hi(bssMain_80055798) # $a1, 0x8005
/* 0021A0 800015A0 24A55798 */  addiu $a1, %lo(bssMain_80055798) # addiu $a1, $a1, 0x5798
/* 0021A4 800015A4 0C00C984 */  jal   osCreateMesgQueue
/* 0021A8 800015A8 24060001 */   li    $a2, 1 # count/number of messages

# OSMesgQueue *mq
/* 0021AC 800015AC 3C048005 */  lui   $a0, %hi(bssMain_800557A0) # $a0, 0x8005
/* 0021B0 800015B0 248457A0 */  addiu $a0, %lo(bssMain_800557A0) # addiu $a0, $a0, 0x57a0
# OSMesg *msg
/* 0021B4 800015B4 3C058005 */  lui   $a1, %hi(bssMain_800557B8) # $a1, 0x8005
/* 0021B8 800015B8 24A557B8 */  addiu $a1, %lo(bssMain_800557B8) # addiu $a1, $a1, 0x57b8
/* 0021BC 800015BC 0C00C984 */  jal   osCreateMesgQueue
/* 0021C0 800015C0 24060001 */   li    $a2, 1 # count/number of messages

/* 0021C4 800015C4 0C00CC64 */  jal   osStartThread
/* 0021C8 800015C8 02002021 */   addu  $a0, $s0, $zero

/* 0021CC 800015CC 3C038000 */  lui   $v1, %hi(osTvType) # $v1, 0x8000
/* 0021D0 800015D0 8C630300 */  lw    $v1, %lo(osTvType)($v1)
/* 0021D4 800015D4 14720004 */  bne   $v1, $s2, .L800015E8
/* 0021D8 800015D8 24020002 */   li    $v0, 2

/* 0021DC 800015DC 3C048005 */  lui   $a0, %hi(tbl_80049870) # $a0, 0x8005
/* 0021E0 800015E0 0800057F */  j     .L800015FC
/* 0021E4 800015E4 24849870 */   addiu $a0, %lo(tbl_80049870) # addiu $a0, $a0, -0x6790

.L800015E8:
/* 0021E8 800015E8 3C048005 */  lui   $a0, %hi(tbl_80049910) # $a0, 0x8005
/* 0021EC 800015EC 14620003 */  bne   $v1, $v0, .L800015FC
/* 0021F0 800015F0 24849910 */   addiu $a0, %lo(tbl_80049910) # addiu $a0, $a0, -0x66f0

/* 0021F4 800015F4 3C048005 */  lui   $a0, %hi(tbl_800498C0) # $a0, 0x8005
/* 0021F8 800015F8 248498C0 */  addiu $a0, %lo(tbl_800498C0) # addiu $a0, $a0, -0x6740

.L800015FC:
/* 0021FC 800015FC 3C058005 */  lui   $a1, %hi(bssMain_800559A0) # $a1, 0x8005
/* 002200 80001600 24A559A0 */  addiu $a1, %lo(bssMain_800559A0) # addiu $a1, $a1, 0x59a0
/* 002204 80001604 0C00C888 */  jal   bcopy
/* 002208 80001608 24060050 */   li    $a2, 80

# OS_IM_VI
/* 00220C 8000160C 3C040008 */  lui   $a0, (0x00080401 >> 16) # lui $a0, 8
/* 002210 80001610 0C00AC2C */  jal   osSetIntMask
/* 002214 80001614 34840401 */   ori   $a0, (0x00080401 & 0xFFFF) # ori $a0, $a0, 0x401

/* 002218 80001618 00402021 */  addu  $a0, $v0, $zero
/* 00221C 8000161C 3C108005 */  lui   $s0, %hi(bssMain_800559A8) # $s0, 0x8005
/* 002220 80001620 261059A8 */  addiu $s0, %lo(bssMain_800559A8) # addiu $s0, $s0, 0x59a8
/* 002224 80001624 240201E0 */  li    $v0, 480
/* 002228 80001628 AE020000 */  sw    $v0, ($s0)
/* 00222C 8000162C 24020300 */  li    $v0, 768
/* 002230 80001630 3C018005 */  lui   $at, %hi(bssMain_800559C0) # $at, 0x8005
/* 002234 80001634 AC2259C0 */  sw    $v0, %lo(bssMain_800559C0)($at)
/* 002238 80001638 240203C0 */  li    $v0, 960
/* 00223C 8000163C 3C018005 */  lui   $at, %hi(bssMain_800559C8) # $at, 0x8005
/* 002240 80001640 AC2259C8 */  sw    $v0, %lo(bssMain_800559C8)($at)
/* 002244 80001644 3C018005 */  lui   $at, %hi(bssMain_800559DC) # $at, 0x8005
/* 002248 80001648 AC2259DC */  sw    $v0, %lo(bssMain_800559DC)($at)
/* 00224C 8000164C 0C00AC2C */  jal   osSetIntMask
/* 002250 80001650 00008821 */   addu  $s1, $zero, $zero

/* 002254 80001654 0C00CF40 */  jal   osViSetMode
/* 002258 80001658 2604FFF8 */   addiu $a0, $s0, -8

/* 00225C 8000165C 0C00CF54 */  jal   osViSetSpecialFeatures
/* 002260 80001660 2404006A */   li    $a0, 0x6A # OS_VI_GAMMA_OFF | OS_VI_GAMMA_DITHER_OFF | OS_VI_DIVOT_OFF | OS_VI_DITHER_FILTER_ON

/* 002264 80001664 0C00D09C */  jal   osViBlack
/* 002268 80001668 24040001 */   li    $a0, 1

/* 00226C 8000166C 24130002 */  li    $s3, 2
/* 002270 80001670 3C128005 */  lui   $s2, %hi(bssMain_80055728) # $s2, 0x8005
/* 002274 80001674 26525728 */  addiu $s2, %lo(bssMain_80055728) # addiu $s2, $s2, 0x5728
/* 002278 80001678 3C108005 */  lui   $s0, %hi(bssMain_80052560) # $s0, 0x8005
/* 00227C 8000167C 26102560 */  addiu $s0, %lo(bssMain_80052560) # addiu $s0, $s0, 0x2560
.L80001680:
/* 002280 80001680 0C000226 */  jal   aki_malloc
/* 002284 80001684 24042C38 */   li    $a0, 11320

/* 002288 80001688 AE020000 */  sw    $v0, ($s0) # store malloc result
/* 00228C 8000168C A4532C18 */  sh    $s3, 0x2c18($v0)
/* 002290 80001690 AC522C10 */  sw    $s2, 0x2c10($v0)
/* 002294 80001694 8E030000 */  lw    $v1, ($s0)
/* 002298 80001698 26310001 */  addiu $s1, $s1, 1
/* 00229C 8000169C 24632C18 */  addiu $v1, $v1, 0x2c18
/* 0022A0 800016A0 AC432C14 */  sw    $v1, 0x2c14($v0)
/* 0022A4 800016A4 2E220002 */  sltiu $v0, $s1, 2
/* 0022A8 800016A8 1440FFF5 */  bnez  $v0, .L80001680
/* 0022AC 800016AC 26100004 */   addiu $s0, $s0, 4

/* 0022B0 800016B0 3C040001 */  lui   $a0, %hi(0x010004) # $a0, 1
/* 0022B4 800016B4 0C000226 */  jal   aki_malloc
/* 0022B8 800016B8 3484AF40 */   ori   $a0, (0x0001AF40 & 0xFFFF) # ori $a0, $a0, 0xaf40

/* 0022BC 800016BC 3C018005 */  lui   $at, %hi(bssMain_800559F0) # $at, 0x8005
/* 0022C0 800016C0 AC2259F0 */  sw    $v0, %lo(bssMain_800559F0)($at) # store malloc result
/* 0022C4 800016C4 00402021 */  addu  $a0, $v0, $zero
/* 0022C8 800016C8 3C050001 */  lui   $a1, (0x0001AF40 >> 16) # lui $a1, 1
/* 0022CC 800016CC 0C00C950 */  jal   bzero
/* 0022D0 800016D0 34A5AF40 */   ori   $a1, (0x0001AF40 & 0xFFFF) # ori $a1, $a1, 0xaf40

/* 0022D4 800016D4 00008821 */  addu  $s1, $zero, $zero
/* 0022D8 800016D8 24071BFE */  li    $a3, 7166
/* 0022DC 800016DC 240619E8 */  li    $a2, 6632
/* 0022E0 800016E0 3C028005 */  lui   $v0, %hi(bssMain_800557C0) # $v0, 0x8005
/* 0022E4 800016E4 244257C0 */  addiu $v0, %lo(bssMain_800557C0) # addiu $v0, $v0, 0x57c0
/* 0022E8 800016E8 244500F0 */  addiu $a1, $v0, 0xf0
/* 0022EC 800016EC 00402021 */  addu  $a0, $v0, $zero

.L800016F0:
/* 0022F0 800016F0 AC870000 */  sw    $a3, ($a0)
/* 0022F4 800016F4 ACA60000 */  sw    $a2, ($a1)
/* 0022F8 800016F8 8C820000 */  lw    $v0, ($a0)
/* 0022FC 800016FC 00021C00 */  sll   $v1, $v0, 0x10
/* 002300 80001700 00431025 */  or    $v0, $v0, $v1
/* 002304 80001704 AC820000 */  sw    $v0, ($a0)
/* 002308 80001708 8CA30000 */  lw    $v1, ($a1)
/* 00230C 8000170C 26310001 */  addiu $s1, $s1, 1
/* 002310 80001710 24840004 */  addiu $a0, $a0, 4
/* 002314 80001714 00031400 */  sll   $v0, $v1, 0x10
/* 002318 80001718 00621825 */  or    $v1, $v1, $v0
/* 00231C 8000171C ACA30000 */  sw    $v1, ($a1)
/* 002320 80001720 2E22003C */  sltiu $v0, $s1, 0x3c
/* 002324 80001724 1440FFF2 */  bnez  $v0, .L800016F0
/* 002328 80001728 24A50004 */   addiu $a1, $a1, 4

/* 00232C 8000172C 0C0006C3 */  jal   func_80001B0C
/* 002330 80001730 00000000 */   nop   

.L80001734:
/* 002334 80001734 3C018005 */  lui   $at, %hi(bssMain_80056360) # $at, 0x8005
/* 002338 80001738 A4206360 */  sh    $zero, %lo(bssMain_80056360)($at)
/* 00233C 8000173C 3C018005 */  lui   $at, %hi(bssMain_80056362) # $at, 0x8005
/* 002340 80001740 A4206362 */  sh    $zero, %lo(bssMain_80056362)($at)
/* 002344 80001744 3C018005 */  lui   $at, %hi(bssMain_80056364) # $at, 0x8005
/* 002348 80001748 A4206364 */  sh    $zero, %lo(bssMain_80056364)($at)
/* 00234C 8000174C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 002350 80001750 8FB30024 */  lw    $s3, 0x24($sp)
/* 002354 80001754 8FB20020 */  lw    $s2, 0x20($sp)
/* 002358 80001758 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00235C 8000175C 8FB00018 */  lw    $s0, 0x18($sp)
/* 002360 80001760 03E00008 */  jr    $ra
/* 002364 80001764 27BD0030 */   addiu $sp, $sp, 0x30
