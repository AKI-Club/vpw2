# related to streamed music?

glabel func_80003AE8
/* 0046E8 80003AE8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0046EC 80003AEC AFB00018 */  sw    $s0, 0x18($sp)
/* 0046F0 80003AF0 00808021 */  addu  $s0, $a0, $zero
/* 0046F4 80003AF4 3C048004 */  lui   $a0, %hi(D_8003C8C0) # $a0, 0x8004
/* 0046F8 80003AF8 8C84C8C0 */  lw    $a0, %lo(D_8003C8C0)($a0)
/* 0046FC 80003AFC AFB20020 */  sw    $s2, 0x20($sp)
/* 004700 80003B00 8FB20040 */  lw    $s2, 0x40($sp)
/* 004704 80003B04 AFB1001C */  sw    $s1, 0x1c($sp)
/* 004708 80003B08 00A08821 */  addu  $s1, $a1, $zero
/* 00470C 80003B0C AFB30024 */  sw    $s3, 0x24($sp)
/* 004710 80003B10 00C09821 */  addu  $s3, $a2, $zero
/* 004714 80003B14 AFB40028 */  sw    $s4, 0x28($sp)
/* 004718 80003B18 00E0A021 */  addu  $s4, $a3, $zero
/* 00471C 80003B1C 10800003 */  beqz  $a0, .L80003B2C
/* 004720 80003B20 AFBF002C */   sw    $ra, 0x2c($sp)

/* 004724 80003B24 0C008FAA */  jal   func_80023EA8
/* 004728 80003B28 00002821 */   addu  $a1, $zero, $zero

.L80003B2C:
/* 00472C 80003B2C 3C048005 */  lui   $a0, %hi(bssMain_80056FCC) # $a0, 0x8005
/* 004730 80003B30 0C00911A */  jal   func_80024468
/* 004734 80003B34 8C846FCC */   lw    $a0, %lo(bssMain_80056FCC)($a0)

/* 004738 80003B38 00102400 */  sll   $a0, $s0, 0x10
/* 00473C 80003B3C 00042403 */  sra   $a0, $a0, 0x10
/* 004740 80003B40 00118400 */  sll   $s0, $s1, 0x10
/* 004744 80003B44 00108403 */  sra   $s0, $s0, 0x10
/* 004748 80003B48 02002821 */  addu  $a1, $s0, $zero
/* 00474C 80003B4C 00121400 */  sll   $v0, $s2, 0x10
/* 004750 80003B50 00021403 */  sra   $v0, $v0, 0x10
/* 004754 80003B54 00133400 */  sll   $a2, $s3, 0x10
/* 004758 80003B58 00143C00 */  sll   $a3, $s4, 0x10
/* 00475C 80003B5C 00063403 */  sra   $a2, $a2, 0x10
/* 004760 80003B60 00073C03 */  sra   $a3, $a3, 0x10
/* 004764 80003B64 0C008F11 */  jal   func_80023C44
/* 004768 80003B68 AFA20010 */   sw    $v0, 0x10($sp)

/* 00476C 80003B6C 3C018004 */  lui   $at, %hi(D_8003C8C0) # $at, 0x8004
/* 004770 80003B70 AC22C8C0 */  sw    $v0, %lo(D_8003C8C0)($at)
/* 004774 80003B74 3C018004 */  lui   $at, %hi(D_8003C8C4) # $at, 0x8004
/* 004778 80003B78 AC30C8C4 */  sw    $s0, %lo(D_8003C8C4)($at)
/* 00477C 80003B7C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 004780 80003B80 8FB40028 */  lw    $s4, 0x28($sp)
/* 004784 80003B84 8FB30024 */  lw    $s3, 0x24($sp)
/* 004788 80003B88 8FB20020 */  lw    $s2, 0x20($sp)
/* 00478C 80003B8C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 004790 80003B90 8FB00018 */  lw    $s0, 0x18($sp)
/* 004794 80003B94 03E00008 */  jr    $ra
/* 004798 80003B98 27BD0030 */   addiu $sp, $sp, 0x30
