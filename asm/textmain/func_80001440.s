# Params:
# $a0 - related to framebuffer location

glabel func_80001440
/* 002040 80001440 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002044 80001444 AFBF0018 */  sw    $ra, 0x18($sp)
/* 002048 80001448 AFB10014 */  sw    $s1, 0x14($sp)
/* 00204C 8000144C AFB00010 */  sw    $s0, 0x10($sp)

# get current framebuffer pointer?
/* 002050 80001450 8C90000C */  lw    $s0, 0xc($a0)
/* 002054 80001454 2411FFFF */  li    $s1, -1

.L80001458:
 # OSMesgQueue *mq
/* 002058 80001458 3C048005 */  lui   $a0, %hi(bssMain_800521A8) # $a0, 0x8005
/* 00205C 8000145C 248421A8 */  addiu $a0, %lo(bssMain_800521A8) # addiu $a0, $a0, 0x21a8
/* 002060 80001460 00002821 */  addu  $a1, $zero, $zero
/* 002064 80001464 0C00C9E0 */  jal   osRecvMesg
/* 002068 80001468 00003021 */   addu  $a2, $zero, $zero # flag: OS_MESG_NOBLOCK

# check if message received
/* 00206C 8000146C 1451FFFA */  bne   $v0, $s1, .L80001458
/* 002070 80001470 00000000 */   nop   

.L80001474:
/* 002074 80001474 0C00CE38 */  jal   osViGetCurrentFramebuffer
/* 002078 80001478 00000000 */   nop   

# branch if current framebuffer is same as the one from the pointer
/* 00207C 8000147C 10500005 */  beq   $v0, $s0, .L80001494
/* 002080 80001480 00000000 */   nop   

# check current vi mode
/* 002084 80001484 0C00CE48 */  jal   osViGetCurrentMode
/* 002088 80001488 00000000 */   nop   

/* 00208C 8000148C 14500008 */  bne   $v0, $s0, .L800014B0
/* 002090 80001490 00000000 */   nop   

.L80001494:
/* 002094 80001494 3C048005 */  lui   $a0, %hi(bssMain_800521A8) # $a0, 0x8005
/* 002098 80001498 248421A8 */  addiu $a0, %lo(bssMain_800521A8) # addiu $a0, $a0, 0x21a8
/* 00209C 8000149C 00002821 */  addu  $a1, $zero, $zero
/* 0020A0 800014A0 0C00C9E0 */  jal   osRecvMesg
/* 0020A4 800014A4 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 0020A8 800014A8 0800051D */  j     .L80001474
/* 0020AC 800014AC 00000000 */   nop   

.L800014B0:
/* 0020B0 800014B0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0020B4 800014B4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0020B8 800014B8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0020BC 800014BC 03E00008 */  jr    $ra
/* 0020C0 800014C0 27BD0020 */   addiu $sp, $sp, 0x20

/*----------------------------------------------------------------------------*/
/* 0020C4 800014C4 00000000 */  nop   
/* 0020C8 800014C8 00000000 */  nop   
/* 0020CC 800014CC 00000000 */  nop   
/*============================================================================*/
