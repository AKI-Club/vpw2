# Params:
# $a0 - ? (used for loading only)
# $a1 - file ID 1
# $a2 - file ID 2
# $a3 - ?

glabel func_8000C96C
/* 00D56C 8000C96C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 00D570 8000C970 AFB20090 */  sw    $s2, 0x90($sp)
/* 00D574 8000C974 93B200C3 */  lbu   $s2, 0xc3($sp)
/* 00D578 8000C978 AFB700A4 */  sw    $s7, 0xa4($sp)
/* 00D57C 8000C97C 8FB700C4 */  lw    $s7, 0xc4($sp)
/* 00D580 8000C980 AFB600A0 */  sw    $s6, 0xa0($sp)
/* 00D584 8000C984 0080B021 */  addu  $s6, $a0, $zero
/* 00D588 8000C988 AFB00088 */  sw    $s0, 0x88($sp)
/* 00D58C 8000C98C 00A08021 */  addu  $s0, $a1, $zero # file ID 1 in $s0
/* 00D590 8000C990 AFB5009C */  sw    $s5, 0x9c($sp)
/* 00D594 8000C994 00C0A821 */  addu  $s5, $a2, $zero # file ID 2 in $s5
/* 00D598 8000C998 AFB1008C */  sw    $s1, 0x8c($sp)
/* 00D59C 8000C99C 00E08821 */  addu  $s1, $a3, $zero
/* 00D5A0 8000C9A0 83A300CB */  lb    $v1, 0xcb($sp)
/* 00D5A4 8000C9A4 8FA400C8 */  lw    $a0, 0xc8($sp)
/* 00D5A8 8000C9A8 00052C00 */  sll   $a1, $a1, 0x10
/* 00D5AC 8000C9AC 0005282B */  sltu  $a1, $zero, $a1
/* 00D5B0 8000C9B0 AFBF00AC */  sw    $ra, 0xac($sp)
/* 00D5B4 8000C9B4 AFBE00A8 */  sw    $fp, 0xa8($sp)
/* 00D5B8 8000C9B8 AFB40098 */  sw    $s4, 0x98($sp)
/* 00D5BC 8000C9BC AFB30094 */  sw    $s3, 0x94($sp)
/* 00D5C0 8000C9C0 A3B70047 */  sb    $s7, 0x47($sp)
/* 00D5C4 8000C9C4 8EC20020 */  lw    $v0, 0x20($s6)
/* 00D5C8 8000C9C8 00031827 */  nor   $v1, $zero, $v1
/* 00D5CC 8000C9CC 00031FC3 */  sra   $v1, $v1, 0x1f
/* 00D5D0 8000C9D0 90420002 */  lbu   $v0, 2($v0)
/* 00D5D4 8000C9D4 0083A024 */  and   $s4, $a0, $v1
/* 00D5D8 8000C9D8 38420001 */  xori  $v0, $v0, 1
/* 00D5DC 8000C9DC 2C420001 */  sltiu $v0, $v0, 1
/* 00D5E0 8000C9E0 00451024 */  and   $v0, $v0, $a1
/* 00D5E4 8000C9E4 104000FF */  beqz  $v0, .L8000CDE4
/* 00D5E8 8000C9E8 0280F021 */   addu  $fp, $s4, $zero

/* 00D5EC 8000C9EC 00061400 */  sll   $v0, $a2, 0x10
/* 00D5F0 8000C9F0 104000FC */  beqz  $v0, .L8000CDE4
/* 00D5F4 8000C9F4 27A40010 */   addiu $a0, $sp, 0x10

# file 1
/* 00D5F8 8000C9F8 3210FFFF */  andi  $s0, $s0, 0xffff
/* 00D5FC 8000C9FC 0C000F71 */  jal   GetFileLoc
/* 00D600 8000CA00 02002821 */   addu  $a1, $s0, $zero

/* 00D604 8000CA04 8FA40018 */  lw    $a0, 0x18($sp)
/* 00D608 8000CA08 0C000226 */  jal   aki_malloc
/* 00D60C 8000CA0C 00000000 */   nop   

/* 00D610 8000CA10 27A40020 */  addiu $a0, $sp, 0x20
/* 00D614 8000CA14 02002821 */  addu  $a1, $s0, $zero
/* 00D618 8000CA18 00409821 */  addu  $s3, $v0, $zero
/* 00D61C 8000CA1C 0C000FA2 */  jal   LoadFile
/* 00D620 8000CA20 02603021 */   addu  $a2, $s3, $zero

# file 2
/* 00D624 8000CA24 27A40010 */  addiu $a0, $sp, 0x10
/* 00D628 8000CA28 32B0FFFF */  andi  $s0, $s5, 0xffff
/* 00D62C 8000CA2C 0C000F71 */  jal   GetFileLoc
/* 00D630 8000CA30 02002821 */   addu  $a1, $s0, $zero

/* 00D634 8000CA34 8FA40018 */  lw    $a0, 0x18($sp)
/* 00D638 8000CA38 0C000226 */  jal   aki_malloc
/* 00D63C 8000CA3C 00000000 */   nop   

/* 00D640 8000CA40 27A40030 */  addiu $a0, $sp, 0x30
/* 00D644 8000CA44 02002821 */  addu  $a1, $s0, $zero
/* 00D648 8000CA48 00408021 */  addu  $s0, $v0, $zero
/* 00D64C 8000CA4C 0C000FA2 */  jal   LoadFile
/* 00D650 8000CA50 02003021 */   addu  $a2, $s0, $zero


/* 00D654 8000CA54 92650006 */  lbu   $a1, 6($s3)
/* 00D658 8000CA58 24020001 */  li    $v0, 1
/* 00D65C 8000CA5C 92630007 */  lbu   $v1, 7($s3)
/* 00D660 8000CA60 86C40008 */  lh    $a0, 8($s6)
/* 00D664 8000CA64 00A24804 */  sllv  $t1, $v0, $a1
/* 00D668 8000CA68 152400DA */  bne   $t1, $a0, .L8000CDD4
/* 00D66C 8000CA6C 00623004 */   sllv  $a2, $v0, $v1

/* 00D670 8000CA70 86C2000A */  lh    $v0, 0xa($s6)
/* 00D674 8000CA74 00172E00 */  sll   $a1, $s7, 0x18
/* 00D678 8000CA78 00051E03 */  sra   $v1, $a1, 0x18
/* 00D67C 8000CA7C 00402021 */  addu  $a0, $v0, $zero
/* 00D680 8000CA80 0043102A */  slt   $v0, $v0, $v1
/* 00D684 8000CA84 144000D3 */  bnez  $v0, .L8000CDD4
/* 00D688 8000CA88 00141600 */   sll   $v0, $s4, 0x18

/* 00D68C 8000CA8C 00021603 */  sra   $v0, $v0, 0x18
/* 00D690 8000CA90 5440000D */  bnezl $v0, .L8000CAC8
/* 00D694 8000CA94 00821823 */   subu  $v1, $a0, $v0

/* 00D698 8000CA98 04A10002 */  bgez  $a1, .L8000CAA4
/* 00D69C 8000CA9C 00054603 */   sra   $t0, $a1, 0x18

/* 00D6A0 8000CAA0 00084023 */  negu  $t0, $t0

.L8000CAA4:
/* 00D6A4 8000CAA4 00881023 */  subu  $v0, $a0, $t0
/* 00D6A8 8000CAA8 00404021 */  addu  $t0, $v0, $zero
/* 00D6AC 8000CAAC 00021400 */  sll   $v0, $v0, 0x10
/* 00D6B0 8000CAB0 00021403 */  sra   $v0, $v0, 0x10
/* 00D6B4 8000CAB4 00C2102B */  sltu  $v0, $a2, $v0
/* 00D6B8 8000CAB8 54400008 */  bnezl $v0, .L8000CADC
/* 00D6BC 8000CABC 00C04021 */   addu  $t0, $a2, $zero

/* 00D6C0 8000CAC0 080032B7 */  j     .L8000CADC
/* 00D6C4 8000CAC4 00000000 */   nop   

.L8000CAC8:
/* 00D6C8 8000CAC8 00031400 */  sll   $v0, $v1, 0x10
/* 00D6CC 8000CACC 00021403 */  sra   $v0, $v0, 0x10
/* 00D6D0 8000CAD0 00021027 */  nor   $v0, $zero, $v0
/* 00D6D4 8000CAD4 000217C3 */  sra   $v0, $v0, 0x1f
/* 00D6D8 8000CAD8 00624024 */  and   $t0, $v1, $v0

.L8000CADC:
/* 00D6DC 8000CADC 8EC20020 */  lw    $v0, 0x20($s6)
/* 00D6E0 8000CAE0 92630002 */  lbu   $v1, 2($s3)
/* 00D6E4 8000CAE4 24450008 */  addiu $a1, $v0, 8
/* 00D6E8 8000CAE8 24020001 */  li    $v0, 1
/* 00D6EC 8000CAEC 10620051 */  beq   $v1, $v0, .L8000CC34
/* 00D6F0 8000CAF0 26660008 */   addiu $a2, $s3, 8

/* 00D6F4 8000CAF4 001E1600 */  sll   $v0, $fp, 0x18
/* 00D6F8 8000CAF8 00021E03 */  sra   $v1, $v0, 0x18
/* 00D6FC 8000CAFC 14600014 */  bnez  $v1, .L8000CB50
/* 00D700 8000CB00 00091042 */   srl   $v0, $t1, 1

/* 00D704 8000CB04 93AE0047 */  lbu   $t6, 0x47($sp)
/* 00D708 8000CB08 000E1600 */  sll   $v0, $t6, 0x18
/* 00D70C 8000CB0C 00021E03 */  sra   $v1, $v0, 0x18
/* 00D710 8000CB10 04600008 */  bltz  $v1, .L8000CB34
/* 00D714 8000CB14 00091042 */   srl   $v0, $t1, 1

/* 00D718 8000CB18 00000000 */  nop   
/* 00D71C 8000CB1C 00690018 */  mult  $v1, $t1
/* 00D720 8000CB20 00001012 */  mflo  $v0
/* 00D724 8000CB24 00000000 */  nop   
/* 00D728 8000CB28 00000000 */  nop   
/* 00D72C 8000CB2C 080032DD */  j     .L8000CB74
/* 00D730 8000CB30 00A22821 */   addu  $a1, $a1, $v0

.L8000CB34:
/* 00D734 8000CB34 00000000 */  nop   
/* 00D738 8000CB38 00620018 */  mult  $v1, $v0
/* 00D73C 8000CB3C 00001012 */  mflo  $v0
/* 00D740 8000CB40 00000000 */  nop   
/* 00D744 8000CB44 00000000 */  nop   
/* 00D748 8000CB48 080032DD */  j     .L8000CB74
/* 00D74C 8000CB4C 00C23023 */   subu  $a2, $a2, $v0

.L8000CB50:
/* 00D750 8000CB50 00000000 */  nop   
/* 00D754 8000CB54 00620018 */  mult  $v1, $v0
/* 00D758 8000CB58 00001012 */  mflo  $v0
/* 00D75C 8000CB5C 00000000 */  nop   
/* 00D760 8000CB60 00000000 */  nop   
/* 00D764 8000CB64 00690018 */  mult  $v1, $t1
/* 00D768 8000CB68 00001812 */  mflo  $v1
/* 00D76C 8000CB6C 00C23021 */  addu  $a2, $a2, $v0
/* 00D770 8000CB70 00A32821 */  addu  $a1, $a1, $v1

.L8000CB74:
/* 00D774 8000CB74 00081400 */  sll   $v0, $t0, 0x10
/* 00D778 8000CB78 00021C03 */  sra   $v1, $v0, 0x10
/* 00D77C 8000CB7C 10600066 */  beqz  $v1, .L8000CD18
/* 00D780 8000CB80 00003821 */   addu  $a3, $zero, $zero

/* 00D784 8000CB84 00096842 */  srl   $t5, $t1, 1
/* 00D788 8000CB88 324200FF */  andi  $v0, $s2, 0xff
/* 00D78C 8000CB8C 244AFFFF */  addiu $t2, $v0, -1
/* 00D790 8000CB90 2648FFFF */  addiu $t0, $s2, -1
/* 00D794 8000CB94 00606021 */  addu  $t4, $v1, $zero

.L8000CB98:
/* 00D798 8000CB98 11A00020 */  beqz  $t5, .L8000CC1C
/* 00D79C 8000CB9C 00002021 */   addu  $a0, $zero, $zero

/* 00D7A0 8000CBA0 00095842 */  srl   $t3, $t1, 1

.L8000CBA4:
/* 00D7A4 8000CBA4 90C20000 */  lbu   $v0, ($a2)
/* 00D7A8 8000CBA8 00021902 */  srl   $v1, $v0, 4
/* 00D7AC 8000CBAC 0143102A */  slt   $v0, $t2, $v1
/* 00D7B0 8000CBB0 54400001 */  bnezl $v0, .L8000CBB8
/* 00D7B4 8000CBB4 01001821 */   addu  $v1, $t0, $zero

.L8000CBB8:
/* 00D7B8 8000CBB8 306200FF */  andi  $v0, $v1, 0xff
/* 00D7BC 8000CBBC 00021040 */  sll   $v0, $v0, 1
/* 00D7C0 8000CBC0 00501021 */  addu  $v0, $v0, $s0
/* 00D7C4 8000CBC4 94420000 */  lhu   $v0, ($v0)
/* 00D7C8 8000CBC8 10400002 */  beqz  $v0, .L8000CBD4
/* 00D7CC 8000CBCC 00711021 */   addu  $v0, $v1, $s1

/* 00D7D0 8000CBD0 A0A20000 */  sb    $v0, ($a1)

.L8000CBD4:
/* 00D7D4 8000CBD4 90C20000 */  lbu   $v0, ($a2)
/* 00D7D8 8000CBD8 3043000F */  andi  $v1, $v0, 0xf
/* 00D7DC 8000CBDC 0143102A */  slt   $v0, $t2, $v1
/* 00D7E0 8000CBE0 10400002 */  beqz  $v0, .L8000CBEC
/* 00D7E4 8000CBE4 24A50001 */   addiu $a1, $a1, 1

/* 00D7E8 8000CBE8 01001821 */  addu  $v1, $t0, $zero

.L8000CBEC:
/* 00D7EC 8000CBEC 306200FF */  andi  $v0, $v1, 0xff
/* 00D7F0 8000CBF0 00021040 */  sll   $v0, $v0, 1
/* 00D7F4 8000CBF4 00501021 */  addu  $v0, $v0, $s0
/* 00D7F8 8000CBF8 94420000 */  lhu   $v0, ($v0)
/* 00D7FC 8000CBFC 10400002 */  beqz  $v0, .L8000CC08
/* 00D800 8000CC00 00711021 */   addu  $v0, $v1, $s1

/* 00D804 8000CC04 A0A20000 */  sb    $v0, ($a1)

.L8000CC08:
/* 00D808 8000CC08 24A50001 */  addiu $a1, $a1, 1
/* 00D80C 8000CC0C 24840001 */  addiu $a0, $a0, 1
/* 00D810 8000CC10 008B102B */  sltu  $v0, $a0, $t3
/* 00D814 8000CC14 1440FFE3 */  bnez  $v0, .L8000CBA4
/* 00D818 8000CC18 24C60001 */   addiu $a2, $a2, 1

.L8000CC1C:
/* 00D81C 8000CC1C 24E70001 */  addiu $a3, $a3, 1
/* 00D820 8000CC20 00EC102B */  sltu  $v0, $a3, $t4
/* 00D824 8000CC24 1440FFDC */  bnez  $v0, .L8000CB98
/* 00D828 8000CC28 324200FF */   andi  $v0, $s2, 0xff

/* 00D82C 8000CC2C 08003347 */  j     .L8000CD1C
/* 00D830 8000CC30 00000000 */   nop   

.L8000CC34:
/* 00D834 8000CC34 001E1600 */  sll   $v0, $fp, 0x18
/* 00D838 8000CC38 00021603 */  sra   $v0, $v0, 0x18
/* 00D83C 8000CC3C 14400013 */  bnez  $v0, .L8000CC8C
/* 00D840 8000CC40 00000000 */   nop   

/* 00D844 8000CC44 93AE0047 */  lbu   $t6, 0x47($sp)
/* 00D848 8000CC48 000E1600 */  sll   $v0, $t6, 0x18
/* 00D84C 8000CC4C 00021603 */  sra   $v0, $v0, 0x18
/* 00D850 8000CC50 04400007 */  bltz  $v0, .L8000CC70
/* 00D854 8000CC54 00000000 */   nop   

/* 00D858 8000CC58 00490018 */  mult  $v0, $t1
/* 00D85C 8000CC5C 00001012 */  mflo  $v0
/* 00D860 8000CC60 00000000 */  nop   
/* 00D864 8000CC64 00000000 */  nop   
/* 00D868 8000CC68 08003328 */  j     .L8000CCA0
/* 00D86C 8000CC6C 00A22821 */   addu  $a1, $a1, $v0

.L8000CC70:
/* 00D870 8000CC70 00000000 */  nop   
/* 00D874 8000CC74 00490018 */  mult  $v0, $t1
/* 00D878 8000CC78 00001012 */  mflo  $v0
/* 00D87C 8000CC7C 00000000 */  nop   
/* 00D880 8000CC80 00000000 */  nop   
/* 00D884 8000CC84 08003328 */  j     .L8000CCA0
/* 00D888 8000CC88 00C23023 */   subu  $a2, $a2, $v0

.L8000CC8C:
/* 00D88C 8000CC8C 00000000 */  nop   
/* 00D890 8000CC90 00490018 */  mult  $v0, $t1
/* 00D894 8000CC94 00001012 */  mflo  $v0
/* 00D898 8000CC98 00C23021 */  addu  $a2, $a2, $v0
/* 00D89C 8000CC9C 00A22821 */  addu  $a1, $a1, $v0

.L8000CCA0:
/* 00D8A0 8000CCA0 00081400 */  sll   $v0, $t0, 0x10
/* 00D8A4 8000CCA4 00021C03 */  sra   $v1, $v0, 0x10
/* 00D8A8 8000CCA8 1060001B */  beqz  $v1, .L8000CD18
/* 00D8AC 8000CCAC 00003821 */   addu  $a3, $zero, $zero
/* 00D8B0 8000CCB0 324200FF */  andi  $v0, $s2, 0xff
/* 00D8B4 8000CCB4 244AFFFF */  addiu $t2, $v0, -1
/* 00D8B8 8000CCB8 2648FFFF */  addiu $t0, $s2, -1
/* 00D8BC 8000CCBC 00605821 */  addu  $t3, $v1, $zero

.L8000CCC0:
/* 00D8C0 8000CCC0 11200011 */  beqz  $t1, .L8000CD08
/* 00D8C4 8000CCC4 00002021 */   addu  $a0, $zero, $zero

.L8000CCC8:
/* 00D8C8 8000CCC8 90C30000 */  lbu   $v1, ($a2)
/* 00D8CC 8000CCCC 0143102A */  slt   $v0, $t2, $v1
/* 00D8D0 8000CCD0 54400001 */  bnezl $v0, .L8000CCD8
/* 00D8D4 8000CCD4 01001821 */   addu  $v1, $t0, $zero

.L8000CCD8:
/* 00D8D8 8000CCD8 306200FF */  andi  $v0, $v1, 0xff
/* 00D8DC 8000CCDC 00021040 */  sll   $v0, $v0, 1
/* 00D8E0 8000CCE0 00501021 */  addu  $v0, $v0, $s0
/* 00D8E4 8000CCE4 94420000 */  lhu   $v0, ($v0)
/* 00D8E8 8000CCE8 10400002 */  beqz  $v0, .L8000CCF4
/* 00D8EC 8000CCEC 00711021 */   addu  $v0, $v1, $s1
/* 00D8F0 8000CCF0 A0A20000 */  sb    $v0, ($a1)

.L8000CCF4:
/* 00D8F4 8000CCF4 24A50001 */  addiu $a1, $a1, 1
/* 00D8F8 8000CCF8 24840001 */  addiu $a0, $a0, 1
/* 00D8FC 8000CCFC 0089102B */  sltu  $v0, $a0, $t1
/* 00D900 8000CD00 1440FFF1 */  bnez  $v0, .L8000CCC8
/* 00D904 8000CD04 24C60001 */   addiu $a2, $a2, 1

.L8000CD08:
/* 00D908 8000CD08 24E70001 */  addiu $a3, $a3, 1
/* 00D90C 8000CD0C 00EB102B */  sltu  $v0, $a3, $t3
/* 00D910 8000CD10 1440FFEB */  bnez  $v0, .L8000CCC0
/* 00D914 8000CD14 00000000 */   nop   

.L8000CD18:
/* 00D918 8000CD18 324200FF */  andi  $v0, $s2, 0xff

.L8000CD1C:
/* 00D91C 8000CD1C 00029040 */  sll   $s2, $v0, 1
/* 00D920 8000CD20 02003021 */  addu  $a2, $s0, $zero
/* 00D924 8000CD24 322200FF */  andi  $v0, $s1, 0xff
/* 00D928 8000CD28 8EC30024 */  lw    $v1, 0x24($s6)
/* 00D92C 8000CD2C 00023840 */  sll   $a3, $v0, 1
/* 00D930 8000CD30 8FA40018 */  lw    $a0, 0x18($sp)
/* 00D934 8000CD34 324200FF */  andi  $v0, $s2, 0xff
/* 00D938 8000CD38 0082102A */  slt   $v0, $a0, $v0
/* 00D93C 8000CD3C 10400002 */  beqz  $v0, .L8000CD48
/* 00D940 8000CD40 00672821 */   addu  $a1, $v1, $a3
/* 00D944 8000CD44 00809021 */  addu  $s2, $a0, $zero

.L8000CD48:
/* 00D948 8000CD48 24030200 */  li    $v1, 512
/* 00D94C 8000CD4C 00671823 */  subu  $v1, $v1, $a3
/* 00D950 8000CD50 324200FF */  andi  $v0, $s2, 0xff
/* 00D954 8000CD54 0043102A */  slt   $v0, $v0, $v1
/* 00D958 8000CD58 10400002 */  beqz  $v0, .L8000CD64
/* 00D95C 8000CD5C 00604021 */   addu  $t0, $v1, $zero
/* 00D960 8000CD60 324800FF */  andi  $t0, $s2, 0xff

.L8000CD64:
/* 00D964 8000CD64 00081400 */  sll   $v0, $t0, 0x10
/* 00D968 8000CD68 00021403 */  sra   $v0, $v0, 0x10
/* 00D96C 8000CD6C 10400009 */  beqz  $v0, .L8000CD94
/* 00D970 8000CD70 00002021 */   addu  $a0, $zero, $zero
/* 00D974 8000CD74 00401821 */  addu  $v1, $v0, $zero

.L8000CD78:
/* 00D978 8000CD78 90C20000 */  lbu   $v0, ($a2)
/* 00D97C 8000CD7C 24C60001 */  addiu $a2, $a2, 1
/* 00D980 8000CD80 24840001 */  addiu $a0, $a0, 1
/* 00D984 8000CD84 A0A20000 */  sb    $v0, ($a1)
/* 00D988 8000CD88 0083102B */  sltu  $v0, $a0, $v1
/* 00D98C 8000CD8C 1440FFFA */  bnez  $v0, .L8000CD78
/* 00D990 8000CD90 24A50001 */   addiu $a1, $a1, 1

.L8000CD94:
/* 00D994 8000CD94 322200FF */  andi  $v0, $s1, 0xff
/* 00D998 8000CD98 8EC30024 */  lw    $v1, 0x24($s6)
/* 00D99C 8000CD9C 00021040 */  sll   $v0, $v0, 1

# check for monochrome mode
/* 00D9A0 8000CDA0 3C048004 */  lui   $a0, %hi(var_8003FDB0) # $a0, 0x8004
/* 00D9A4 8000CDA4 9484FDB0 */  lhu   $a0, %lo(var_8003FDB0)($a0)
/* 00D9A8 8000CDA8 00622821 */  addu  $a1, $v1, $v0
/* 00D9AC 8000CDAC 24020001 */  li    $v0, 1
/* 00D9B0 8000CDB0 14820008 */  bne   $a0, $v0, .L8000CDD4
/* 00D9B4 8000CDB4 00A02021 */   addu  $a0, $a1, $zero

/* 00D9B8 8000CDB8 00081400 */  sll   $v0, $t0, 0x10
/* 00D9BC 8000CDBC 00022C03 */  sra   $a1, $v0, 0x10
/* 00D9C0 8000CDC0 000217C2 */  srl   $v0, $v0, 0x1f
/* 00D9C4 8000CDC4 00A22821 */  addu  $a1, $a1, $v0
/* 00D9C8 8000CDC8 00052843 */  sra   $a1, $a1, 1
/* 00D9CC 8000CDCC 0C0030A5 */  jal   func_8000C294
/* 00D9D0 8000CDD0 30A5FFFF */   andi  $a1, $a1, 0xffff

.L8000CDD4:
/* 00D9D4 8000CDD4 0C000280 */  jal   aki_free
/* 00D9D8 8000CDD8 02002021 */   addu  $a0, $s0, $zero

/* 00D9DC 8000CDDC 0C000280 */  jal   aki_free
/* 00D9E0 8000CDE0 02602021 */   addu  $a0, $s3, $zero

.L8000CDE4:
/* 00D9E4 8000CDE4 8FBF00AC */  lw    $ra, 0xac($sp)
/* 00D9E8 8000CDE8 8FBE00A8 */  lw    $fp, 0xa8($sp)
/* 00D9EC 8000CDEC 8FB700A4 */  lw    $s7, 0xa4($sp)
/* 00D9F0 8000CDF0 8FB600A0 */  lw    $s6, 0xa0($sp)
/* 00D9F4 8000CDF4 8FB5009C */  lw    $s5, 0x9c($sp)
/* 00D9F8 8000CDF8 8FB40098 */  lw    $s4, 0x98($sp)
/* 00D9FC 8000CDFC 8FB30094 */  lw    $s3, 0x94($sp)
/* 00DA00 8000CE00 8FB20090 */  lw    $s2, 0x90($sp)
/* 00DA04 8000CE04 8FB1008C */  lw    $s1, 0x8c($sp)
/* 00DA08 8000CE08 8FB00088 */  lw    $s0, 0x88($sp)
/* 00DA0C 8000CE0C 03E00008 */  jr    $ra
/* 00DA10 8000CE10 27BD00B0 */   addiu $sp, $sp, 0xb0
