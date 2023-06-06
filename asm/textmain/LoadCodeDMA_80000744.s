# void LoadCodeDMA(uint romStart,uint romEnd, void *segStart, void *textStart,uint textEnd, void *dataStart,uint dataEnd, void *bssStart,uint bssEnd)
glabel LoadCodeDMA
/* 001344 80000744 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 001348 80000748 AFB00030 */  sw    $s0, 0x30($sp)
/* 00134C 8000074C 00A48023 */  subu  $s0, $a1, $a0
/* 001350 80000750 AFA5004C */  sw    $a1, 0x4c($sp)
/* 001354 80000754 8FA50058 */  lw    $a1, 0x58($sp)
/* 001358 80000758 AFA40048 */  sw    $a0, 0x48($sp)
/* 00135C 8000075C 00E02021 */  addu  $a0, $a3, $zero
/* 001360 80000760 AFBF0044 */  sw    $ra, 0x44($sp)
/* 001364 80000764 AFB40040 */  sw    $s4, 0x40($sp)
/* 001368 80000768 AFB3003C */  sw    $s3, 0x3c($sp)
/* 00136C 8000076C AFB20038 */  sw    $s2, 0x38($sp)
/* 001370 80000770 AFB10034 */  sw    $s1, 0x34($sp)
/* 001374 80000774 AFA60050 */  sw    $a2, 0x50($sp)
/* 001378 80000778 AFA70054 */  sw    $a3, 0x54($sp)
/* 00137C 8000077C 0C00C0C0 */  jal   osInvalICache
/* 001380 80000780 00A42823 */   subu  $a1, $a1, $a0

/* 001384 80000784 8FA4005C */  lw    $a0, 0x5c($sp)
/* 001388 80000788 8FA50060 */  lw    $a1, 0x60($sp)
/* 00138C 8000078C 02009021 */  addu  $s2, $s0, $zero
/* 001390 80000790 0C00C094 */  jal   osInvalDCache
/* 001394 80000794 00A42823 */   subu  $a1, $a1, $a0

/* 001398 80000798 27A40010 */  addiu $a0, $sp, 0x10
/* 00139C 8000079C 27A50028 */  addiu $a1, $sp, 0x28
/* 0013A0 800007A0 8FB10048 */  lw    $s1, 0x48($sp)
/* 0013A4 800007A4 8FB00050 */  lw    $s0, 0x50($sp)
/* 0013A8 800007A8 0C00C984 */  jal   osCreateMesgQueue
/* 0013AC 800007AC 24060001 */   li    $a2, 1 # count/number of messages

/* 0013B0 800007B0 02402821 */  addu  $a1, $s2, $zero
/* 0013B4 800007B4 0C00C094 */  jal   osInvalDCache
/* 0013B8 800007B8 02002021 */   addu  $a0, $s0, $zero

/* 0013BC 800007BC 02209821 */  addu  $s3, $s1, $zero
/* 0013C0 800007C0 1A40001F */  blez  $s2, .L80000840
/* 0013C4 800007C4 02008821 */   addu  $s1, $s0, $zero

/* 0013C8 800007C8 27B40010 */  addiu $s4, $sp, 0x10

# outer loop
.L800007CC:
/* 0013CC 800007CC 2A420101 */  slti  $v0, $s2, 0x101
/* 0013D0 800007D0 14400002 */  bnez  $v0, .L800007DC
/* 0013D4 800007D4 02408021 */   addu  $s0, $s2, $zero

/* 0013D8 800007D8 24100100 */  addiu    $s0, $zero, 256

.L800007DC:
/* 0013DC 800007DC 3C018005 */  lui   $at, %hi(bssMain_8004BD74) # $at, 0x8005
/* 0013E0 800007E0 AC34BD74 */  sw    $s4, %lo(bssMain_8004BD74)($at)
/* 0013E4 800007E4 3C018005 */  lui   $at, %hi(bssMain_8004BD72) # $at, 0x8005
/* 0013E8 800007E8 A020BD72 */  sb    $zero, %lo(bssMain_8004BD72)($at)
/* 0013EC 800007EC 3C018005 */  lui   $at, %hi(bssMain_8004BD7C) # $at, 0x8005
/* 0013F0 800007F0 AC33BD7C */  sw    $s3, %lo(bssMain_8004BD7C)($at)
/* 0013F4 800007F4 3C018005 */  lui   $at, %hi(bssMain_8004BD78) # $at, 0x8005
/* 0013F8 800007F8 AC31BD78 */  sw    $s1, %lo(bssMain_8004BD78)($at)
/* 0013FC 800007FC 3C018005 */  lui   $at, %hi(bssMain_8004BD80) # $at, 0x8005
/* 001400 80000800 AC30BD80 */  sw    $s0, %lo(bssMain_8004BD80)($at)

# inner loop
.L80000804:
# OSPiHandle *pihandle
/* 001404 80000804 3C048005 */  lui   $a0, %hi(bssMain_8004BD68) # $a0, 0x8005
/* 001408 80000808 8C84BD68 */  lw    $a0, %lo(bssMain_8004BD68)($a0)
# OSIoMesg *mb
/* 00140C 8000080C 3C058005 */  lui   $a1, %hi(bssMain_8004BD70) # $a1, 0x8005
/* 001410 80000810 24A5BD70 */  addiu $a1, %lo(bssMain_8004BD70) # addiu $a1, $a1, -0x4290
/* 001414 80000814 0C00AD34 */  jal   osEPiStartDma
/* 001418 80000818 00003021 */   addu  $a2, $zero, $zero # direction: OS_READ

/* 00141C 8000081C 1440FFF9 */  bnez  $v0, .L80000804
/* 001420 80000820 27A40010 */   addiu $a0, $sp, 0x10

/* 001424 80000824 27A5002C */  addiu $a1, $sp, 0x2c
/* 001428 80000828 0C00C9E0 */  jal   osRecvMesg
/* 00142C 8000082C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 001430 80000830 02709821 */  addu  $s3, $s3, $s0
/* 001434 80000834 02509023 */  subu  $s2, $s2, $s0
/* 001438 80000838 1E40FFE4 */  bgtz  $s2, .L800007CC
/* 00143C 8000083C 02308821 */   addu  $s1, $s1, $s0

.L80000840:
# bzero the bss portion
/* 001440 80000840 8FA40064 */  lw    $a0, 0x64($sp)
/* 001444 80000844 8FA50068 */  lw    $a1, 0x68($sp)
/* 001448 80000848 0C00C950 */  jal   bzero
/* 00144C 8000084C 00A42823 */   subu  $a1, $a1, $a0

/* 001450 80000850 8FBF0044 */  lw    $ra, 0x44($sp)
/* 001454 80000854 8FB40040 */  lw    $s4, 0x40($sp)
/* 001458 80000858 8FB3003C */  lw    $s3, 0x3c($sp)
/* 00145C 8000085C 8FB20038 */  lw    $s2, 0x38($sp)
/* 001460 80000860 8FB10034 */  lw    $s1, 0x34($sp)
/* 001464 80000864 8FB00030 */  lw    $s0, 0x30($sp)
/* 001468 80000868 03E00008 */  jr    $ra
/* 00146C 8000086C 27BD0048 */   addiu $sp, $sp, 0x48
