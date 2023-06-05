glabel func_80000460
/* 001060 80000460 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 001064 80000464 AFB1001C */  sw    $s1, 0x1c($sp)
/* 001068 80000468 00808821 */  addu  $s1, $a0, $zero
/* 00106C 8000046C AFBF0020 */  sw    $ra, 0x20($sp)
/* 001070 80000470 0C00DC9E */  jal   __osInitialize_common
/* 001074 80000474 AFB00018 */   sw    $s0, 0x18($sp)

/* 001078 80000478 0C00B19C */  jal   osAiSetFrequency
/* 00107C 8000047C 24047080 */   li    $a0, 28800

# OSThread *t
/* 001080 80000480 3C108005 */  lui   $s0, %hi(base_dl) # $s0, 0x8005
/* 001084 80000484 2610B2A0 */  addiu $s0, %lo(base_dl) # addiu $s0, $s0, -0x4d60
/* 001088 80000488 02002021 */  addu  $a0, $s0, $zero
# void *sp
/* 00108C 8000048C 3C028005 */  lui   $v0, %hi(bssMain_8004BC50) # $v0, 0x8005
/* 001090 80000490 2442BC50 */  addiu $v0, %lo(bssMain_8004BC50) # addiu $v0, $v0, -0x43b0
/* 001094 80000494 AFA20010 */  sw    $v0, 0x10($sp)
# OSPri pri
/* 001098 80000498 24020008 */  li    $v0, 8
/* 00109C 8000049C 24050001 */  li    $a1, 1 # thread ID 1
# void (*entry)(void *)
/* 0010A0 800004A0 3C068000 */  lui   $a2, %hi(MainThread) # $a2, 0x8000
/* 0010A4 800004A4 24C604D0 */  addiu $a2, %lo(MainThread) # addiu $a2, $a2, 0x4d0
# void *arg
/* 0010A8 800004A8 02203821 */  addu  $a3, $s1, $zero
/* 0010AC 800004AC 0C00CBF4 */  jal   osCreateThread
/* 0010B0 800004B0 AFA20014 */   sw    $v0, 0x14($sp)

/* 0010B4 800004B4 0C00CC64 */  jal   osStartThread
/* 0010B8 800004B8 02002021 */   addu  $a0, $s0, $zero

/* 0010BC 800004BC 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0010C0 800004C0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0010C4 800004C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0010C8 800004C8 03E00008 */  jr    $ra
/* 0010CC 800004CC 27BD0028 */   addiu $sp, $sp, 0x28
