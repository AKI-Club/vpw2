# aki_free
# $a0 - pointer to data to free

glabel aki_free
# don't free a null pointer
/* 001600 80000A00 10800050 */  beqz  $a0, .L80000B44
/* 001604 80000A04 00000000 */   nop   

/* 001608 80000A08 8C82FFF8 */  lw    $v0, -8($a0)
/* 00160C 80000A0C 1440004D */  bnez  $v0, .L80000B44
/* 001610 80000A10 2486FFF0 */   addiu $a2, $a0, -0x10

/* 001614 80000A14 8C83FFFC */  lw    $v1, -4($a0)
/* 001618 80000A18 3C02CAFE */  lui   $v0, (0xCAFE4ABE >> 16) # lui $v0, 0xcafe
/* 00161C 80000A1C 34424ABE */  ori   $v0, (0xCAFE4ABE & 0xFFFF) # ori $v0, $v0, 0x4abe
/* 001620 80000A20 14620048 */  bne   $v1, $v0, .L80000B44
/* 001624 80000A24 00000000 */   nop   

/* 001628 80000A28 3C058004 */  lui   $a1, %hi(D_8003C890) # $a1, 0x8004
/* 00162C 80000A2C 8CA5C890 */  lw    $a1, %lo(D_8003C890)($a1)
/* 001630 80000A30 08000299 */  j     .L80000A64
/* 001634 80000A34 00A6102B */   sltu  $v0, $a1, $a2

.L80000A38:
/* 001638 80000A38 8CA30000 */  lw    $v1, ($a1)
/* 00163C 80000A3C 00A3102B */  sltu  $v0, $a1, $v1
/* 001640 80000A40 54400007 */  bnezl $v0, .L80000A60
/* 001644 80000A44 00602821 */   addu  $a1, $v1, $zero

/* 001648 80000A48 00A6102B */  sltu  $v0, $a1, $a2
/* 00164C 80000A4C 1440000B */  bnez  $v0, .L80000A7C
/* 001650 80000A50 00C3102B */   sltu  $v0, $a2, $v1

/* 001654 80000A54 14400009 */  bnez  $v0, .L80000A7C
/* 001658 80000A58 00000000 */   nop   

/* 00165C 80000A5C 00602821 */  addu  $a1, $v1, $zero

.L80000A60:
/* 001660 80000A60 00A6102B */  sltu  $v0, $a1, $a2

.L80000A64:
/* 001664 80000A64 1040FFF4 */  beqz  $v0, .L80000A38
/* 001668 80000A68 00000000 */   nop   

/* 00166C 80000A6C 8CA20000 */  lw    $v0, ($a1)
/* 001670 80000A70 00C2102B */  sltu  $v0, $a2, $v0
/* 001674 80000A74 1040FFF0 */  beqz  $v0, .L80000A38
/* 001678 80000A78 00000000 */   nop   

.L80000A7C:
/* 00167C 80000A7C 8CC40004 */  lw    $a0, 4($a2)
/* 001680 80000A80 8CA30000 */  lw    $v1, ($a1)
/* 001684 80000A84 00041100 */  sll   $v0, $a0, 4
/* 001688 80000A88 00C21021 */  addu  $v0, $a2, $v0
/* 00168C 80000A8C 54430011 */  bnel  $v0, $v1, .L80000AD4
/* 001690 80000A90 ACC30000 */   sw    $v1, ($a2)

/* 001694 80000A94 8C620004 */  lw    $v0, 4($v1)
/* 001698 80000A98 00821021 */  addu  $v0, $a0, $v0
/* 00169C 80000A9C ACC20004 */  sw    $v0, 4($a2)
/* 0016A0 80000AA0 8CA20000 */  lw    $v0, ($a1)
/* 0016A4 80000AA4 AC400004 */  sw    $zero, 4($v0)
/* 0016A8 80000AA8 8CA20000 */  lw    $v0, ($a1)
/* 0016AC 80000AAC 8C420000 */  lw    $v0, ($v0)
/* 0016B0 80000AB0 ACC20000 */  sw    $v0, ($a2)
/* 0016B4 80000AB4 8CA20000 */  lw    $v0, ($a1)
/* 0016B8 80000AB8 AC400000 */  sw    $zero, ($v0)
/* 0016BC 80000ABC 8CA40000 */  lw    $a0, ($a1)
/* 0016C0 80000AC0 24020000 */  li    $v0, 0
/* 0016C4 80000AC4 3C03BABE */  lui   $v1, (0xBABEBACA >> 16) # lui $v1, 0xbabe
/* 0016C8 80000AC8 3463BACA */  ori   $v1, (0xBABEBACA & 0xFFFF) # ori $v1, $v1, 0xbaca
/* 0016CC 80000ACC AC820008 */  sw    $v0, 8($a0)
/* 0016D0 80000AD0 AC83000C */  sw    $v1, 0xc($a0)

.L80000AD4:
/* 0016D4 80000AD4 8CA30004 */  lw    $v1, 4($a1)
/* 0016D8 80000AD8 00031100 */  sll   $v0, $v1, 4
/* 0016DC 80000ADC 00A21021 */  addu  $v0, $a1, $v0
/* 0016E0 80000AE0 5446000C */  bnel  $v0, $a2, .L80000B14
/* 0016E4 80000AE4 ACA60000 */   sw    $a2, ($a1)

/* 0016E8 80000AE8 8CC20004 */  lw    $v0, 4($a2)
/* 0016EC 80000AEC 00621021 */  addu  $v0, $v1, $v0
/* 0016F0 80000AF0 ACA20004 */  sw    $v0, 4($a1)
/* 0016F4 80000AF4 8CC20000 */  lw    $v0, ($a2)
/* 0016F8 80000AF8 ACC00004 */  sw    $zero, 4($a2)
/* 0016FC 80000AFC ACA20000 */  sw    $v0, ($a1)
/* 001700 80000B00 24020000 */  li    $v0, 0
/* 001704 80000B04 3C03BABE */  lui   $v1, (0xBABEBACA >> 16) # lui $v1, 0xbabe
/* 001708 80000B08 3463BACA */  ori   $v1, (0xBABEBACA & 0xFFFF) # ori $v1, $v1, 0xbaca
/* 00170C 80000B0C 080002C8 */  j     .L80000B20
/* 001710 80000B10 ACC00000 */   sw    $zero, ($a2)

.L80000B14:
/* 001714 80000B14 24020000 */  li    $v0, 0
/* 001718 80000B18 3C03BABE */  lui   $v1, (0xBABEFACE >> 16) # lui $v1, 0xbabe
/* 00171C 80000B1C 3463FACE */  ori   $v1, (0xBABEFACE & 0xFFFF) # ori $v1, $v1, 0xface

.L80000B20:
/* 001720 80000B20 ACC20008 */  sw    $v0, 8($a2)
/* 001724 80000B24 ACC3000C */  sw    $v1, 0xc($a2)
/* 001728 80000B28 3C02800A */  lui   $v0, %hi(bssMain_800A404C) # $v0, 0x800a
/* 00172C 80000B2C 8C42404C */  lw    $v0, %lo(bssMain_800A404C)($v0)
/* 001730 80000B30 3C018004 */  lui   $at, %hi(D_8003C890) # $at, 0x8004
/* 001734 80000B34 AC25C890 */  sw    $a1, %lo(D_8003C890)($at)
/* 001738 80000B38 2442FFFF */  addiu $v0, $v0, -1
/* 00173C 80000B3C 3C01800A */  lui   $at, %hi(bssMain_800A404C) # $at, 0x800a
/* 001740 80000B40 AC22404C */  sw    $v0, %lo(bssMain_800A404C)($at)

.L80000B44:
/* 001744 80000B44 03E00008 */  jr    $ra
/* 001748 80000B48 00000000 */   nop   
