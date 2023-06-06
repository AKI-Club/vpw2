# Returns pointer to PI handle for SRAM, setting it up if necessary.

glabel GetPiHandle_SRAM
/* 00174C 80000B4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001750 80000B50 AFB00010 */  sw    $s0, 0x10($sp)

# check if SRAM is set up at 0xA8000000 already
/* 001754 80000B54 3C108005 */  lui   $s0, %hi(bssMain_8004BD94) # $s0, 0x8005
/* 001758 80000B58 2610BD94 */  addiu $s0, %lo(bssMain_8004BD94) # addiu $s0, $s0, -0x426c
/* 00175C 80000B5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 001760 80000B60 8E020000 */  lw    $v0, ($s0)
/* 001764 80000B64 3C03A800 */  lui   $v1, 0xA800
/* 001768 80000B68 1043001B */  beq   $v0, $v1, .L80000BD8 # jump to end
/* 00176C 80000B6C 24020003 */   li    $v0, 3 # DEVICE_TYPE_SRAM

# load SRAM EPi handle
/* 001770 80000B70 26040008 */  addiu $a0, $s0, 8
/* 001774 80000B74 3C018005 */  lui   $at, %hi(SramHandle_Type) # $at, 0x8005
/* 001778 80000B78 A022BD8C */  sb    $v0, %lo(SramHandle_Type)($at)

/* 00177C 80000B7C 24020005 */  li    $v0, 5 # SRAM_latency
/* 001780 80000B80 AE030000 */  sw    $v1, ($s0) # store 0xA800 for later detection
/* 001784 80000B84 3C018005 */  lui   $at, %hi(SramHandle_Latency) # $at, 0x8005
/* 001788 80000B88 A022BD8D */  sb    $v0, %lo(SramHandle_Latency)($at)

/* 00178C 80000B8C 2402000C */  li    $v0, 0xC # SRAM_pulse
/* 001790 80000B90 3C018005 */  lui   $at, %hi(SramHandle_Pulse) # $at, 0x8005
/* 001794 80000B94 A022BD90 */  sb    $v0, %lo(SramHandle_Pulse)($at)

/* 001798 80000B98 2402000D */  li    $v0, 0xD # SRAM_pageSize
/* 00179C 80000B9C 3C018005 */  lui   $at, %hi(SramHandle_PageSize) # $at, 0x8005
/* 0017A0 80000BA0 A022BD8E */  sb    $v0, %lo(SramHandle_PageSize)($at)

/* 0017A4 80000BA4 24020002 */  li    $v0, 2 # SRAM_relDuration
/* 0017A8 80000BA8 3C018005 */  lui   $at, %hi(SramHandle_RelDuration) # $at, 0x8005
/* 0017AC 80000BAC A022BD8F */  sb    $v0, %lo(SramHandle_RelDuration)($at)

/* 0017B0 80000BB0 24020001 */  li    $v0, 1 # PI_DOMAIN2
/* 0017B4 80000BB4 3C018005 */  lui   $at, %hi(SramHandle_Domain) # $at, 0x8005
/* 0017B8 80000BB8 A022BD91 */  sb    $v0, %lo(SramHandle_Domain)($at)
/* 0017BC 80000BBC 3C018005 */  lui   $at, %hi(SramHandle_Speed) # $at, 0x8005
/* 0017C0 80000BC0 AC20BD98 */  sw    $zero, %lo(SramHandle_Speed)($at)
/* 0017C4 80000BC4 0C00C950 */  jal   bzero
/* 0017C8 80000BC8 24050060 */   li    $a1, 96

/* 0017CC 80000BCC 2610FFF4 */  addiu $s0, $s0, -0xc
/* 0017D0 80000BD0 0C00AD5C */  jal   osEPiLinkHandle
/* 0017D4 80000BD4 02002021 */   addu  $a0, $s0, $zero # OSPiHandle *EPiHandle

.L80000BD8:
/* 0017D8 80000BD8 3C028005 */  lui   $v0, %hi(SramHandle) # $v0, 0x8005
/* 0017DC 80000BDC 2442BD88 */  addiu $v0, %lo(SramHandle) # addiu $v0, $v0, -0x4278
/* 0017E0 80000BE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0017E4 80000BE4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0017E8 80000BE8 03E00008 */  jr    $ra
/* 0017EC 80000BEC 27BD0018 */   addiu $sp, $sp, 0x18
