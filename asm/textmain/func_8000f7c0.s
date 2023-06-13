# function that loads a texture and palette

# Params:
# $a0 - read/write address
# $a1 - texture file ID
# $a2 - palette file ID

glabel func_8000F7C0
/* 0103C0 8000F7C0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0103C4 8000F7C4 AFB00040 */  sw    $s0, 0x40($sp)
/* 0103C8 8000F7C8 00808021 */  addu  $s0, $a0, $zero # $a0 in $s0
/* 0103CC 8000F7CC AFB20048 */  sw    $s2, 0x48($sp)
/* 0103D0 8000F7D0 00A09021 */  addu  $s2, $a1, $zero # texture file ID in $s2
/* 0103D4 8000F7D4 AFB10044 */  sw    $s1, 0x44($sp)
/* 0103D8 8000F7D8 00C08821 */  addu  $s1, $a2, $zero # palette file ID in $s1

/* 0103DC 8000F7DC 00052C00 */  sll   $a1, $a1, 0x10
/* 0103E0 8000F7E0 10A0001A */  beqz  $a1, .L8000F84C
/* 0103E4 8000F7E4 AFBF004C */   sw    $ra, 0x4c($sp)

# get texture file location
/* 0103E8 8000F7E8 27A40010 */  addiu $a0, $sp, 0x10
/* 0103EC 8000F7EC 0C000F71 */  jal   GetFileLoc
/* 0103F0 8000F7F0 3245FFFF */   andi  $a1, $s2, 0xffff

/* 0103F4 8000F7F4 8E040000 */  lw    $a0, ($s0)
/* 0103F8 8000F7F8 10800008 */  beqz  $a0, .L8000F81C
/* 0103FC 8000F7FC 00000000 */   nop   

/* 010400 8000F800 8FA20018 */  lw    $v0, 0x18($sp)
/* 010404 8000F804 28420809 */  slti  $v0, $v0, 0x809
/* 010408 8000F808 1440000C */  bnez  $v0, .L8000F83C
/* 01040C 8000F80C 00000000 */   nop   

/* 010410 8000F810 0C000280 */  jal   aki_free
/* 010414 8000F814 00000000 */   nop   

/* 010418 8000F818 AE000000 */  sw    $zero, ($s0)

.L8000F81C:
/* 01041C 8000F81C 8FA20018 */  lw    $v0, 0x18($sp)
/* 010420 8000F820 28420808 */  slti  $v0, $v0, 0x808
/* 010424 8000F824 10400002 */  beqz  $v0, .L8000F830
/* 010428 8000F828 24020808 */   li    $v0, 2056

/* 01042C 8000F82C AFA20018 */  sw    $v0, 0x18($sp)

.L8000F830:
/* 010430 8000F830 0C000226 */  jal   aki_malloc
/* 010434 8000F834 8FA40018 */   lw    $a0, 0x18($sp)

/* 010438 8000F838 AE020000 */  sw    $v0, ($s0)

# load texture file
.L8000F83C:
/* 01043C 8000F83C 8E060000 */  lw    $a2, ($s0)
/* 010440 8000F840 27A40030 */  addiu $a0, $sp, 0x30
/* 010444 8000F844 0C000FA2 */  jal   LoadFile
/* 010448 8000F848 3245FFFF */   andi  $a1, $s2, 0xffff

.L8000F84C:
/* 01044C 8000F84C 00111400 */  sll   $v0, $s1, 0x10
/* 010450 8000F850 10400019 */  beqz  $v0, .L8000F8B8
/* 010454 8000F854 27A40020 */   addiu $a0, $sp, 0x20

# get palette file location
/* 010458 8000F858 0C000F71 */  jal   GetFileLoc
/* 01045C 8000F85C 3225FFFF */   andi  $a1, $s1, 0xffff

/* 010460 8000F860 8E040004 */  lw    $a0, 4($s0)
/* 010464 8000F864 10800008 */  beqz  $a0, .L8000F888
/* 010468 8000F868 00000000 */   nop   

/* 01046C 8000F86C 8FA20028 */  lw    $v0, 0x28($sp)
/* 010470 8000F870 28420021 */  slti  $v0, $v0, 0x21
/* 010474 8000F874 1440000C */  bnez  $v0, .L8000F8A8
/* 010478 8000F878 00000000 */   nop   

/* 01047C 8000F87C 0C000280 */  jal   aki_free
/* 010480 8000F880 00000000 */   nop   

/* 010484 8000F884 AE000004 */  sw    $zero, 4($s0)

.L8000F888:
/* 010488 8000F888 8FA20028 */  lw    $v0, 0x28($sp)
/* 01048C 8000F88C 28420020 */  slti  $v0, $v0, 0x20
/* 010490 8000F890 10400002 */  beqz  $v0, .L8000F89C
/* 010494 8000F894 24020020 */   li    $v0, 32

/* 010498 8000F898 AFA20028 */  sw    $v0, 0x28($sp)

.L8000F89C:
/* 01049C 8000F89C 0C000226 */  jal   aki_malloc
/* 0104A0 8000F8A0 8FA40028 */   lw    $a0, 0x28($sp)

/* 0104A4 8000F8A4 AE020004 */  sw    $v0, 4($s0)

# load palette file
.L8000F8A8:
/* 0104A8 8000F8A8 8E060004 */  lw    $a2, 4($s0)
/* 0104AC 8000F8AC 27A40030 */  addiu $a0, $sp, 0x30
/* 0104B0 8000F8B0 0C000FA2 */  jal   LoadFile
/* 0104B4 8000F8B4 3225FFFF */   andi  $a1, $s1, 0xffff

.L8000F8B8:
/* 0104B8 8000F8B8 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0104BC 8000F8BC 8FB20048 */  lw    $s2, 0x48($sp)
/* 0104C0 8000F8C0 8FB10044 */  lw    $s1, 0x44($sp)
/* 0104C4 8000F8C4 8FB00040 */  lw    $s0, 0x40($sp)
/* 0104C8 8000F8C8 03E00008 */  jr    $ra
/* 0104CC 8000F8CC 27BD0050 */   addiu $sp, $sp, 0x50
