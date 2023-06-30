glabel func3_800E97CC
/* 0E3E7C 800E97CC 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 0E3E80 800E97D0 F7B400C8 */  sdc1  $f20, 0xc8($sp)
/* 0E3E84 800E97D4 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0E3E88 800E97D8 4481A000 */  mtc1  $at, $f20
/* 0E3E8C 800E97DC F7B600D0 */  sdc1  $f22, 0xd0($sp)
/* 0E3E90 800E97E0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0E3E94 800E97E4 4481B000 */  mtc1  $at, $f22
/* 0E3E98 800E97E8 AFB400B8 */  sw    $s4, 0xb8($sp)
/* 0E3E9C 800E97EC 0000A021 */  addu  $s4, $zero, $zero
/* 0E3EA0 800E97F0 AFB500BC */  sw    $s5, 0xbc($sp)
/* 0E3EA4 800E97F4 241500FF */  li    $s5, 255
/* 0E3EA8 800E97F8 AFB300B4 */  sw    $s3, 0xb4($sp)
/* 0E3EAC 800E97FC 00009821 */  addu  $s3, $zero, $zero
/* 0E3EB0 800E9800 AFB200B0 */  sw    $s2, 0xb0($sp)
/* 0E3EB4 800E9804 00009021 */  addu  $s2, $zero, $zero
/* 0E3EB8 800E9808 AFB100AC */  sw    $s1, 0xac($sp)
/* 0E3EBC 800E980C 00008821 */  addu  $s1, $zero, $zero
/* 0E3EC0 800E9810 AFBF00C0 */  sw    $ra, 0xc0($sp)
/* 0E3EC4 800E9814 AFB000A8 */  sw    $s0, 0xa8($sp)

.L3_800E9818:
/* 0E3EC8 800E9818 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 0E3ECC 800E981C 44810000 */  mtc1  $at, $f0
/* 0E3ED0 800E9820 3C014019 */  li    $at, 0x40190000 # 2.390625
/* 0E3ED4 800E9824 3421999A */  ori   $at, (0x4019999A & 0xFFFF) # ori $at, $at, 0x999a
/* 0E3ED8 800E9828 44811000 */  mtc1  $at, $f2
/* 0E3EDC 800E982C 3C013FE6 */  li    $at, 0x3FE60000 # 1.796875
/* 0E3EE0 800E9830 34216666 */  ori   $at, (0x3FE66666 & 0xFFFF) # ori $at, $at, 0x6666
/* 0E3EE4 800E9834 44812000 */  mtc1  $at, $f4
/* 0E3EE8 800E9838 3C048016 */  lui   $a0, %hi(bss3_8015D620) # $a0, 0x8016
/* 0E3EEC 800E983C 2484D620 */  addiu $a0, %lo(bss3_8015D620) # addiu $a0, $a0, -0x29e0
/* 0E3EF0 800E9840 02442021 */  addu  $a0, $s2, $a0
/* 0E3EF4 800E9844 240200F0 */  li    $v0, 240
/* 0E3EF8 800E9848 3C018016 */  lui   $at, %hi(bss3_8015D6F8)
/* 0E3EFC 800E984C 00310821 */  addu  $at, $at, $s1
/* 0E3F00 800E9850 A422D6F8 */  sh    $v0, %lo(bss3_8015D6F8)($at)
/* 0E3F04 800E9854 24020078 */  li    $v0, 120
/* 0E3F08 800E9858 3C018016 */  lui   $at, %hi(bss3_8015D6F6)
/* 0E3F0C 800E985C 00310821 */  addu  $at, $at, $s1
/* 0E3F10 800E9860 A020D6F6 */  sb    $zero, %lo(bss3_8015D6F6)($at)
/* 0E3F14 800E9864 3C018016 */  lui   $at, %hi(bss3_8015D6F4)
/* 0E3F18 800E9868 00310821 */  addu  $at, $at, $s1
/* 0E3F1C 800E986C A420D6F4 */  sh    $zero, %lo(bss3_8015D6F4)($at)
/* 0E3F20 800E9870 3C018016 */  lui   $at, %hi(bss3_8015D6FC)
/* 0E3F24 800E9874 00310821 */  addu  $at, $at, $s1
/* 0E3F28 800E9878 AC20D6FC */  sw    $zero, %lo(bss3_8015D6FC)($at)
/* 0E3F2C 800E987C 3C018016 */  lui   $at, %hi(bss3_8015D700)
/* 0E3F30 800E9880 00310821 */  addu  $at, $at, $s1
/* 0E3F34 800E9884 E434D700 */  swc1  $f20, %lo(bss3_8015D700)($at)
/* 0E3F38 800E9888 3C018016 */  lui   $at, %hi(bss3_8015D6F7)
/* 0E3F3C 800E988C 00310821 */  addu  $at, $at, $s1
/* 0E3F40 800E9890 A020D6F7 */  sb    $zero, %lo(bss3_8015D6F7)($at)
/* 0E3F44 800E9894 3C018016 */  lui   $at, %hi(bss3_8015D6FA)
/* 0E3F48 800E9898 00310821 */  addu  $at, $at, $s1
/* 0E3F4C 800E989C A422D6FA */  sh    $v0, %lo(bss3_8015D6FA)($at)
/* 0E3F50 800E98A0 3C018016 */  lui   $at, %hi(bss3_8015D710)
/* 0E3F54 800E98A4 00310821 */  addu  $at, $at, $s1
/* 0E3F58 800E98A8 A035D710 */  sb    $s5, %lo(bss3_8015D710)($at)
/* 0E3F5C 800E98AC 3C018016 */  lui   $at, %hi(bss3_8015D711)
/* 0E3F60 800E98B0 00310821 */  addu  $at, $at, $s1
/* 0E3F64 800E98B4 A035D711 */  sb    $s5, %lo(bss3_8015D711)($at)
/* 0E3F68 800E98B8 3C018016 */  lui   $at, %hi(bss3_8015D712)
/* 0E3F6C 800E98BC 00310821 */  addu  $at, $at, $s1
/* 0E3F70 800E98C0 A035D712 */  sb    $s5, %lo(bss3_8015D712)($at)
/* 0E3F74 800E98C4 3C018016 */  lui   $at, %hi(bss3_8015D704)
/* 0E3F78 800E98C8 00310821 */  addu  $at, $at, $s1
/* 0E3F7C 800E98CC E420D704 */  swc1  $f0, %lo(bss3_8015D704)($at)
/* 0E3F80 800E98D0 3C018016 */  lui   $at, %hi(bss3_8015D708)
/* 0E3F84 800E98D4 00310821 */  addu  $at, $at, $s1
/* 0E3F88 800E98D8 E422D708 */  swc1  $f2, %lo(bss3_8015D708)($at)
/* 0E3F8C 800E98DC 3C018016 */  lui   $at, %hi(bss3_8015D70C)
/* 0E3F90 800E98E0 00310821 */  addu  $at, $at, $s1
/* 0E3F94 800E98E4 E424D70C */  swc1  $f4, %lo(bss3_8015D70C)($at)
/* 0E3F98 800E98E8 0C03A43C */  jal   func3_800E90F0
/* 0E3F9C 800E98EC 24050002 */   li    $a1, 2

/* 0E3FA0 800E98F0 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E3FA4 800E98F4 8FA60010 */  lw    $a2, 0x10($sp)
/* 0E3FA8 800E98F8 3C108016 */  lui   $s0, %hi(bss3_8015D2B0) # $s0, 0x8016
/* 0E3FAC 800E98FC 2610D2B0 */  addiu $s0, %lo(bss3_8015D2B0) # addiu $s0, $s0, -0x2d50
/* 0E3FB0 800E9900 02708021 */  addu  $s0, $s3, $s0
/* 0E3FB4 800E9904 02002021 */  addu  $a0, $s0, $zero
/* 0E3FB8 800E9908 24050005 */  li    $a1, 5
/* 0E3FBC 800E990C 0C000600 */  jal   func_80001800
/* 0E3FC0 800E9910 00C03821 */   addu  $a3, $a2, $zero

/* 0E3FC4 800E9914 02002021 */  addu  $a0, $s0, $zero
/* 0E3FC8 800E9918 0C000635 */  jal   func_800018D4
/* 0E3FCC 800E991C 00002821 */   addu  $a1, $zero, $zero

/* 0E3FD0 800E9920 0C00061B */  jal   func_8000186C
/* 0E3FD4 800E9924 02002021 */   addu  $a0, $s0, $zero

/* 0E3FD8 800E9928 27A40028 */  addiu $a0, $sp, 0x28
/* 0E3FDC 800E992C 3C0643F0 */  lui   $a2, 0x43f0
/* 0E3FE0 800E9930 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0E3FE4 800E9934 44810000 */  mtc1  $at, $f0
/* 0E3FE8 800E9938 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E3FEC 800E993C 44811000 */  mtc1  $at, $f2
/* 0E3FF0 800E9940 00002821 */  addu  $a1, $zero, $zero
/* 0E3FF4 800E9944 00A03821 */  addu  $a3, $a1, $zero
/* 0E3FF8 800E9948 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0E3FFC 800E994C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0E4000 800E9950 E7A00018 */  swc1  $f0, 0x18($sp)
/* 0E4004 800E9954 0C00C5A4 */  jal   guOrthoF
/* 0E4008 800E9958 E7A2001C */   swc1  $f2, 0x1c($sp)

/* 0E400C 800E995C AFA00024 */  sw    $zero, 0x24($sp)
/* 0E4010 800E9960 8FA50024 */  lw    $a1, 0x24($sp)
/* 0E4014 800E9964 4406A000 */  mfc1  $a2, $f20
/* 0E4018 800E9968 4407B000 */  mfc1  $a3, $f22
/* 0E401C 800E996C 27A40068 */  addiu $a0, $sp, 0x68
/* 0E4020 800E9970 AFA00010 */  sw    $zero, 0x10($sp)
/* 0E4024 800E9974 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0E4028 800E9978 AFA00018 */  sw    $zero, 0x18($sp)
/* 0E402C 800E997C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0E4030 800E9980 0C00C3E0 */  jal   guLookAtF
/* 0E4034 800E9984 E7B60020 */   swc1  $f22, 0x20($sp)

/* 0E4038 800E9988 27A40068 */  addiu $a0, $sp, 0x68
/* 0E403C 800E998C 27A50028 */  addiu $a1, $sp, 0x28
/* 0E4040 800E9990 0C000842 */  jal   func_80002108
/* 0E4044 800E9994 2606009C */   addiu $a2, $s0, 0x9c

/* 0E4048 800E9998 8E030014 */  lw    $v1, 0x14($s0)
/* 0E404C 800E999C 24020001 */  li    $v0, 1
/* 0E4050 800E99A0 A2020019 */  sb    $v0, 0x19($s0)
/* 0E4054 800E99A4 8C620000 */  lw    $v0, ($v1)
/* 0E4058 800E99A8 3C01C59C */  li    $at, 0xC59C0000 # -4992.000000
/* 0E405C 800E99AC 34214000 */  ori   $at, (0xC59C4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 0E4060 800E99B0 44810000 */  mtc1  $at, $f0
/* 0E4064 800E99B4 34420080 */  ori   $v0, $v0, 0x80
/* 0E4068 800E99B8 AC620000 */  sw    $v0, ($v1)
/* 0E406C 800E99BC 8E020014 */  lw    $v0, 0x14($s0)
/* 0E4070 800E99C0 26520034 */  addiu $s2, $s2, 0x34
/* 0E4074 800E99C4 26940001 */  addiu $s4, $s4, 1
/* 0E4078 800E99C8 E4400024 */  swc1  $f0, 0x24($v0)
/* 0E407C 800E99CC 8E020014 */  lw    $v0, 0x14($s0)
/* 0E4080 800E99D0 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0E4084 800E99D4 44810000 */  mtc1  $at, $f0
/* 0E4088 800E99D8 267300DC */  addiu $s3, $s3, 0xdc
/* 0E408C 800E99DC E4400020 */  swc1  $f0, 0x20($v0)
/* 0E4090 800E99E0 2E820004 */  sltiu $v0, $s4, 4
/* 0E4094 800E99E4 1440FF8C */  bnez  $v0, .L3_800E9818
/* 0E4098 800E99E8 26310024 */   addiu $s1, $s1, 0x24

/* 0E409C 800E99EC 8FBF00C0 */  lw    $ra, 0xc0($sp)
/* 0E40A0 800E99F0 8FB500BC */  lw    $s5, 0xbc($sp)
/* 0E40A4 800E99F4 8FB400B8 */  lw    $s4, 0xb8($sp)
/* 0E40A8 800E99F8 8FB300B4 */  lw    $s3, 0xb4($sp)
/* 0E40AC 800E99FC 8FB200B0 */  lw    $s2, 0xb0($sp)
/* 0E40B0 800E9A00 8FB100AC */  lw    $s1, 0xac($sp)
/* 0E40B4 800E9A04 8FB000A8 */  lw    $s0, 0xa8($sp)
/* 0E40B8 800E9A08 D7B600D0 */  ldc1  $f22, 0xd0($sp)
/* 0E40BC 800E9A0C D7B400C8 */  ldc1  $f20, 0xc8($sp)
/* 0E40C0 800E9A10 03E00008 */  jr    $ra
/* 0E40C4 800E9A14 27BD00D8 */   addiu $sp, $sp, 0xd8
