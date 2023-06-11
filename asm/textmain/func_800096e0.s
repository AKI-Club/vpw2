# load some default/shared items

# Params:
# $a0 - ? (0 for menus, 1 for gameplay)

glabel func_800096E0
/* 00A2E0 800096E0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00A2E4 800096E4 AFB10064 */  sw    $s1, 0x64($sp)
/* 00A2E8 800096E8 00808821 */  addu  $s1, $a0, $zero # store $a0 in $s1
/* 00A2EC 800096EC AFB00060 */  sw    $s0, 0x60($sp)

# load font characters
/* 00A2F0 800096F0 3C108007 */  lui   $s0, %hi(bssMain_8006E300) # $s0, 0x8007
/* 00A2F4 800096F4 2610E300 */  addiu $s0, %lo(bssMain_8006E300) # addiu $s0, $s0, -0x1d00
/* 00A2F8 800096F8 02002021 */  addu  $a0, $s0, $zero
/* 00A2FC 800096FC AFBF0068 */  sw    $ra, 0x68($sp)
/* 00A300 80009700 0C00C950 */  jal   bzero
/* 00A304 80009704 24051A00 */   li    $a1, 6656

/* 00A308 80009708 27A40020 */  addiu $a0, $sp, 0x20
/* 00A30C 8000970C 24050003 */  li    $a1, 3 # file ID for font characters
/* 00A310 80009710 0C000FA2 */  jal   LoadFile
/* 00A314 80009714 02003021 */   addu  $a2, $s0, $zero

/* 00A318 80009718 27A40030 */  addiu $a0, $sp, 0x30
/* 00A31C 8000971C 3C068005 */  lui   $a2, %hi(bssMain_80057200) # $a2, 0x8005
/* 00A320 80009720 24C67200 */  addiu $a2, %lo(bssMain_80057200) # addiu $a2, $a2, 0x7200
/* 00A324 80009724 0C000FA2 */  jal   LoadFile
/* 00A328 80009728 2405000F */   li    $a1, 15 # file ID for button graphics

/* 00A32C 8000972C 27A40040 */  addiu $a0, $sp, 0x40
/* 00A330 80009730 3C068005 */  lui   $a2, %hi(bssMain_80057E00) # $a2, 0x8005
/* 00A334 80009734 24C67E00 */  addiu $a2, %lo(bssMain_80057E00) # addiu $a2, $a2, 0x7e00
/* 00A338 80009738 0C000FA2 */  jal   LoadFile
/* 00A33C 8000973C 24050002 */   li    $a1, 2 # file ID for small font (16x13)

# branch if menus
/* 00A340 80009740 12200004 */  beqz  $s1, .L80009754
/* 00A344 80009744 27A40010 */   addiu $a0, $sp, 0x10

# zero out pointer and skip loading large font
/* 00A348 80009748 3C018004 */  lui   $at, %hi(D_8003EFB8) # $at, 0x8004
/* 00A34C 8000974C 080025E0 */  j     .L80009780
/* 00A350 80009750 AC20EFB8 */   sw    $zero, %lo(D_8003EFB8)($at)

.L80009754:
/* 00A354 80009754 0C000F71 */  jal   GetFileLoc
/* 00A358 80009758 24050001 */   li    $a1, 1 # file ID for large font

/* 00A35C 8000975C 8FA40018 */  lw    $a0, 0x18($sp)
/* 00A360 80009760 0C000226 */  jal   aki_malloc
/* 00A364 80009764 00000000 */   nop   

/* 00A368 80009768 27A40050 */  addiu $a0, $sp, 0x50
/* 00A36C 8000976C 00403021 */  addu  $a2, $v0, $zero # store malloc result
/* 00A370 80009770 3C018004 */  lui   $at, %hi(D_8003EFB8) # $at, 0x8004
/* 00A374 80009774 AC26EFB8 */  sw    $a2, %lo(D_8003EFB8)($at)
/* 00A378 80009778 0C000FA2 */  jal   LoadFile
/* 00A37C 8000977C 24050001 */   li    $a1, 1 # file ID for large font

.L80009780:
/* 00A380 80009780 0C000226 */  jal   aki_malloc
/* 00A384 80009784 24040E00 */   li    $a0, 3584

/* 00A388 80009788 3C018009 */  lui   $at, %hi(bssMain_800928F8) # $at, 0x8009
/* 00A38C 8000978C AC2228F8 */  sw    $v0, %lo(bssMain_800928F8)($at)
/* 00A390 80009790 2404007F */  li    $a0, 127
/* 00A394 80009794 24420DE4 */  addiu $v0, $v0, 0xde4

.L80009798:
/* 00A398 80009798 AC400000 */  sw    $zero, ($v0)
/* 00A39C 8000979C 2484FFFF */  addiu $a0, $a0, -1
/* 00A3A0 800097A0 0481FFFD */  bgez  $a0, .L80009798
/* 00A3A4 800097A4 2442FFE4 */   addiu $v0, $v0, -0x1c

/* 00A3A8 800097A8 0C000226 */  jal   aki_malloc
/* 00A3AC 800097AC 24040DC0 */   li    $a0, 3520

/* 00A3B0 800097B0 3C01800A */  lui   $at, %hi(bssMain_8009B188) # $at, 0x800a
/* 00A3B4 800097B4 AC22B188 */  sw    $v0, %lo(bssMain_8009B188)($at)
/* 00A3B8 800097B8 00002021 */  addu  $a0, $zero, $zero
/* 00A3BC 800097BC 00401821 */  addu  $v1, $v0, $zero

.L800097C0:
/* 00A3C0 800097C0 AC600050 */  sw    $zero, 0x50($v1)
/* 00A3C4 800097C4 AC600054 */  sw    $zero, 0x54($v1)
/* 00A3C8 800097C8 24840001 */  addiu $a0, $a0, 1
/* 00A3CC 800097CC 28820028 */  slti  $v0, $a0, 0x28
/* 00A3D0 800097D0 1440FFFB */  bnez  $v0, .L800097C0
/* 00A3D4 800097D4 24630058 */   addiu $v1, $v1, 0x58

/* 00A3D8 800097D8 3C01800A */  lui   $at, %hi(bssMain_8009B180) # $at, 0x800a
/* 00A3DC 800097DC AC20B180 */  sw    $zero, %lo(bssMain_8009B180)($at)
/* 00A3E0 800097E0 8FBF0068 */  lw    $ra, 0x68($sp)
/* 00A3E4 800097E4 8FB10064 */  lw    $s1, 0x64($sp)
/* 00A3E8 800097E8 8FB00060 */  lw    $s0, 0x60($sp)
/* 00A3EC 800097EC 03E00008 */  jr    $ra
/* 00A3F0 800097F0 27BD0070 */   addiu $sp, $sp, 0x70
