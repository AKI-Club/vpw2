# Load wrestler information

# Params
# $a0 - wrestler ID4
# $a1 - write destination

glabel func_8000B1A4
/* 00BDA4 8000B1A4 27BDFD10 */  addiu $sp, $sp, -0x2f0
/* 00BDA8 8000B1A8 AFB102D4 */  sw    $s1, 0x2d4($sp)
/* 00BDAC 8000B1AC 00808821 */  addu  $s1, $a0, $zero
/* 00BDB0 8000B1B0 AFB202D8 */  sw    $s2, 0x2d8($sp)
/* 00BDB4 8000B1B4 00A09021 */  addu  $s2, $a1, $zero
/* 00BDB8 8000B1B8 02402021 */  addu  $a0, $s2, $zero
/* 00BDBC 8000B1BC 240500C0 */  li    $a1, 192
/* 00BDC0 8000B1C0 AFBF02E8 */  sw    $ra, 0x2e8($sp)
/* 00BDC4 8000B1C4 AFB502E4 */  sw    $s5, 0x2e4($sp)
/* 00BDC8 8000B1C8 AFB402E0 */  sw    $s4, 0x2e0($sp)
/* 00BDCC 8000B1CC AFB302DC */  sw    $s3, 0x2dc($sp)
/* 00BDD0 8000B1D0 0C00C950 */  jal   bzero
/* 00BDD4 8000B1D4 AFB002D0 */   sw    $s0, 0x2d0($sp)

/* 00BDD8 8000B1D8 27A40020 */  addiu $a0, $sp, 0x20
/* 00BDDC 8000B1DC 0C00C950 */  jal   bzero
/* 00BDE0 8000B1E0 240500C8 */   li    $a1, 200

/* 00BDE4 8000B1E4 27A400E8 */  addiu $a0, $sp, 0xe8
/* 00BDE8 8000B1E8 0C00C950 */  jal   bzero
/* 00BDEC 8000B1EC 24050028 */   li    $a1, 40

/* 00BDF0 8000B1F0 32230F00 */  andi  $v1, $s1, 0xF00
/* 00BDF4 8000B1F4 24020D00 */  li    $v0, 0xD00 # mempak wrestler mask
/* 00BDF8 8000B1F8 14620003 */  bne   $v1, $v0, .L8000B208
/* 00BDFC 8000B1FC 00001821 */   addu  $v1, $zero, $zero

# get ID2 for mempak wrestler
/* 00BE00 8000B200 08002C8D */  j     .L8000B234
/* 00BE04 8000B204 2622F372 */   addiu $v0, $s1, -0xc8e

.L8000B208:
/* 00BE08 8000B208 3C048004 */  lui   $a0, %hi(ptrTbl_WrestlerData) # $a0, 0x8004
/* 00BE0C 8000B20C 2484FAB0 */  addiu $a0, %lo(ptrTbl_WrestlerData) # addiu $a0, $a0, -0x550

.L8000B210:
/* 00BE10 8000B210 8C820000 */  lw    $v0, ($a0) # load wrestler data pointer
/* 00BE14 8000B214 94420000 */  lhu   $v0, ($v0) # read wrestler ID4 value
/* 00BE18 8000B218 10510006 */  beq   $v0, $s1, .L8000B234
/* 00BE1C 8000B21C 00601021 */   addu  $v0, $v1, $zero

/* 00BE20 8000B220 24630001 */  addiu $v1, $v1, 1
/* 00BE24 8000B224 28620073 */  slti  $v0, $v1, 0x73
/* 00BE28 8000B228 1440FFF9 */  bnez  $v0, .L8000B210
/* 00BE2C 8000B22C 24840004 */   addiu $a0, $a0, 4

/* 00BE30 8000B230 00001021 */  addu  $v0, $zero, $zero

.L8000B234:
/* 00BE34 8000B234 00021080 */  sll   $v0, $v0, 2
/* 00BE38 8000B238 3C108004 */  lui   $s0, %hi(ptrTbl_WrestlerData)
/* 00BE3C 8000B23C 02028021 */  addu  $s0, $s0, $v0
/* 00BE40 8000B240 8E10FAB0 */  lw    $s0, %lo(ptrTbl_WrestlerData)($s0)
/* 00BE44 8000B244 92020006 */  lbu   $v0, 6($s0) # Height (add 0x96 for cm)
/* 00BE48 8000B248 A6420000 */  sh    $v0, ($s2)
/* 00BE4C 8000B24C 92020007 */  lbu   $v0, 7($s0) # Weight (add 0x46 for KG)
/* 00BE50 8000B250 A6420002 */  sh    $v0, 2($s2)
/* 00BE54 8000B254 92020008 */  lbu   $v0, 8($s0) # Voice A
/* 00BE58 8000B258 A2420004 */  sb    $v0, 4($s2)
/* 00BE5C 8000B25C 92030009 */  lbu   $v1, 9($s0) # Voice B
/* 00BE60 8000B260 24020001 */  li    $v0, 1
/* 00BE64 8000B264 A2420007 */  sb    $v0, 7($s2) # store 1 at offset 7
/* 00BE68 8000B268 24020004 */  li    $v0, 4
/* 00BE6C 8000B26C A2420008 */  sb    $v0, 8($s2) # store 4 at offset 8
/* 00BE70 8000B270 24020005 */  li    $v0, 5
/* 00BE74 8000B274 A2400006 */  sb    $zero, 6($s2) # store 0 at offset 6
/* 00BE78 8000B278 A2420009 */  sb    $v0, 9($s2) # store 5 at offset 9
/* 00BE7C 8000B27C A2430005 */  sb    $v1, 5($s2)
/* 00BE80 8000B280 92020004 */  lbu   $v0, 4($s0) # Intro Music
/* 00BE84 8000B284 A242000A */  sb    $v0, 0xa($s2)
/* 00BE88 8000B288 92020005 */  lbu   $v0, 5($s0) # Voice Call
/* 00BE8C 8000B28C 16200038 */  bnez  $s1, .L8000B370
/* 00BE90 8000B290 A242000B */   sb    $v0, 0xb($s2)

/* 00BE94 8000B294 27B00110 */  addiu $s0, $sp, 0x110
/* 00BE98 8000B298 02002021 */  addu  $a0, $s0, $zero
/* 00BE9C 8000B29C 0C00C950 */  jal   bzero
/* 00BEA0 8000B2A0 24050064 */   li    $a1, 100

/* 00BEA4 8000B2A4 24030015 */  li    $v1, 21
/* 00BEA8 8000B2A8 24050003 */  li    $a1, 3
/* 00BEAC 8000B2AC 27A4013A */  addiu $a0, $sp, 0x13a

.L8000B2B0:
/* 00BEB0 8000B2B0 A4850000 */  sh    $a1, ($a0)
/* 00BEB4 8000B2B4 24630001 */  addiu $v1, $v1, 1
/* 00BEB8 8000B2B8 2862001F */  slti  $v0, $v1, 0x1f
/* 00BEBC 8000B2BC 1440FFFC */  bnez  $v0, .L8000B2B0
/* 00BEC0 8000B2C0 24840002 */   addiu $a0, $a0, 2

/* 00BEC4 8000B2C4 27A40110 */  addiu $a0, $sp, 0x110
/* 00BEC8 8000B2C8 264500AD */  addiu $a1, $s2, 0xad
/* 00BECC 8000B2CC 24020009 */  li    $v0, 9
/* 00BED0 8000B2D0 A6020050 */  sh    $v0, 0x50($s0)
/* 00BED4 8000B2D4 2402007B */  li    $v0, 123
/* 00BED8 8000B2D8 0C03F8CF */  jal   func_800FE33C
/* 00BEDC 8000B2DC A6020056 */   sh    $v0, 0x56($s0)

/* 00BEE0 8000B2E0 240300AB */  li    $v1, 171
/* 00BEE4 8000B2E4 26040156 */  addiu $a0, $s0, 0x156

.L8000B2E8:
/* 00BEE8 8000B2E8 A4800068 */  sh    $zero, 0x68($a0)
/* 00BEEC 8000B2EC 2463FFFF */  addiu $v1, $v1, -1
/* 00BEF0 8000B2F0 0461FFFD */  bgez  $v1, .L8000B2E8
/* 00BEF4 8000B2F4 2484FFFE */   addiu $a0, $a0, -2

/* 00BEF8 8000B2F8 27A40178 */  addiu $a0, $sp, 0x178
/* 00BEFC 8000B2FC 0C03F862 */  jal   func_800FE188
/* 00BF00 8000B300 2645000C */   addiu $a1, $s2, 0xc

/* 00BF04 8000B304 00009821 */  addu  $s3, $zero, $zero
/* 00BF08 8000B308 27B50020 */  addiu $s5, $sp, 0x20
/* 00BF0C 8000B30C 27B400E8 */  addiu $s4, $sp, 0xe8
/* 00BF10 8000B310 3C028004 */  lui   $v0, %hi(data_EditWrestlerFiles) # $v0, 0x8004
/* 00BF14 8000B314 2442EFD8 */  addiu $v0, %lo(data_EditWrestlerFiles) # addiu $v0, $v0, -0x1028
/* 00BF18 8000B318 24510002 */  addiu $s1, $v0, 2 # params file comes after moves file def
/* 00BF1C 8000B31C 00408021 */  addu  $s0, $v0, $zero
/* 00BF20 8000B320 27A40110 */  addiu $a0, $sp, 0x110

.L8000B324:
/* 00BF24 8000B324 96050000 */  lhu   $a1, ($s0) # load moves file ID
/* 00BF28 8000B328 02A03021 */  addu  $a2, $s5, $zero
/* 00BF2C 8000B32C 26100004 */  addiu $s0, $s0, 4
/* 00BF30 8000B330 0C000FA2 */  jal   LoadFile
/* 00BF34 8000B334 26730001 */   addiu $s3, $s3, 1

/* 00BF38 8000B338 27A40120 */  addiu $a0, $sp, 0x120
/* 00BF3C 8000B33C 96250000 */  lhu   $a1, ($s1) # load params file ID
/* 00BF40 8000B340 02803021 */  addu  $a2, $s4, $zero
/* 00BF44 8000B344 0C000FA2 */  jal   LoadFile
/* 00BF48 8000B348 26310004 */   addiu $s1, $s1, 4

/* 00BF4C 8000B34C 02402021 */  addu  $a0, $s2, $zero
/* 00BF50 8000B350 02802821 */  addu  $a1, $s4, $zero
/* 00BF54 8000B354 0C03F924 */  jal   func_800FE490
/* 00BF58 8000B358 02A03021 */   addu  $a2, $s5, $zero

/* 00BF5C 8000B35C 2A620003 */  slti  $v0, $s3, 3 # number of fighting styles/pairs of file IDs in table
/* 00BF60 8000B360 1440FFF0 */  bnez  $v0, .L8000B324
/* 00BF64 8000B364 27A40110 */   addiu $a0, $sp, 0x110

/* 00BF68 8000B368 08002CF0 */  j     .L8000B3C0
/* 00BF6C 8000B36C 00000000 */   nop   

.L8000B370:
/* 00BF70 8000B370 3C048004 */  lui   $a0, %hi(dynPtr_DefaultMovesets) # $a0, 0x8004
/* 00BF74 8000B374 8C84FD90 */  lw    $a0, %lo(dynPtr_DefaultMovesets)($a0)
/* 00BF78 8000B378 2645000C */  addiu $a1, $s2, 0xc
/* 00BF7C 8000B37C 240600A1 */  li    $a2, 161
/* 00BF80 8000B380 0C00C888 */  jal   bcopy
/* 00BF84 8000B384 2484000C */   addiu $a0, $a0, 0xc

/* 00BF88 8000B388 27A40110 */  addiu $a0, $sp, 0x110
/* 00BF8C 8000B38C 9605000A */  lhu   $a1, 0xa($s0) # moves file ID
/* 00BF90 8000B390 27B10020 */  addiu $s1, $sp, 0x20
/* 00BF94 8000B394 0C000FA2 */  jal   LoadFile
/* 00BF98 8000B398 02203021 */   addu  $a2, $s1, $zero

/* 00BF9C 8000B39C 27A40120 */  addiu $a0, $sp, 0x120
/* 00BFA0 8000B3A0 9605000C */  lhu   $a1, 0xc($s0) # params file ID
/* 00BFA4 8000B3A4 27B000E8 */  addiu $s0, $sp, 0xe8
/* 00BFA8 8000B3A8 0C000FA2 */  jal   LoadFile
/* 00BFAC 8000B3AC 02003021 */   addu  $a2, $s0, $zero

/* 00BFB0 8000B3B0 02402021 */  addu  $a0, $s2, $zero
/* 00BFB4 8000B3B4 02002821 */  addu  $a1, $s0, $zero
/* 00BFB8 8000B3B8 0C03F924 */  jal   func_800FE490
/* 00BFBC 8000B3BC 02203021 */   addu  $a2, $s1, $zero

.L8000B3C0:
/* 00BFC0 8000B3C0 8FBF02E8 */  lw    $ra, 0x2e8($sp)
/* 00BFC4 8000B3C4 8FB502E4 */  lw    $s5, 0x2e4($sp)
/* 00BFC8 8000B3C8 8FB402E0 */  lw    $s4, 0x2e0($sp)
/* 00BFCC 8000B3CC 8FB302DC */  lw    $s3, 0x2dc($sp)
/* 00BFD0 8000B3D0 8FB202D8 */  lw    $s2, 0x2d8($sp)
/* 00BFD4 8000B3D4 8FB102D4 */  lw    $s1, 0x2d4($sp)
/* 00BFD8 8000B3D8 8FB002D0 */  lw    $s0, 0x2d0($sp)
/* 00BFDC 8000B3DC 03E00008 */  jr    $ra
/* 00BFE0 8000B3E0 27BD02F0 */   addiu $sp, $sp, 0x2f0
