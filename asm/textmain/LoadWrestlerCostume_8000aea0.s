# Params:
# $a0 - 
# $a1 - Load address

glabel LoadWrestlerCostume
/* 00BAA0 8000AEA0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 00BAA4 8000AEA4 AFB10054 */  sw    $s1, 0x54($sp)
/* 00BAA8 8000AEA8 00808821 */  addu  $s1, $a0, $zero
/* 00BAAC 8000AEAC AFB00050 */  sw    $s0, 0x50($sp)
/* 00BAB0 8000AEB0 00A08021 */  addu  $s0, $a1, $zero
/* 00BAB4 8000AEB4 27A40010 */  addiu $a0, $sp, 0x10
/* 00BAB8 8000AEB8 AFBF0058 */  sw    $ra, 0x58($sp)
/* 00BABC 8000AEBC 0C00C950 */  jal   bzero
/* 00BAC0 8000AEC0 2405003E */   li    $a1, 62

/* 00BAC4 8000AEC4 92020000 */  lbu   $v0, ($s0) # Body Type
/* 00BAC8 8000AEC8 A3A20010 */  sb    $v0, 0x10($sp)
/* 00BACC 8000AECC 92020001 */  lbu   $v0, 1($s0) # Skin Color
/* 00BAD0 8000AED0 A3A20011 */  sb    $v0, 0x11($sp)
/* 00BAD4 8000AED4 92020002 */  lbu   $v0, 2($s0) # Ring Attire
/* 00BAD8 8000AED8 A3A20013 */  sb    $v0, 0x13($sp)
/* 00BADC 8000AEDC 92020003 */  lbu   $v0, 3($s0) # Ring Attire Color 1
/* 00BAE0 8000AEE0 A3A20014 */  sb    $v0, 0x14($sp)
/* 00BAE4 8000AEE4 92020004 */  lbu   $v0, 4($s0) # Ring Attire Color 2
/* 00BAE8 8000AEE8 A3A20015 */  sb    $v0, 0x15($sp)
/* 00BAEC 8000AEEC 92020005 */  lbu   $v0, 5($s0) # Upper Attire
/* 00BAF0 8000AEF0 A3A20016 */  sb    $v0, 0x16($sp)
/* 00BAF4 8000AEF4 92020006 */  lbu   $v0, 6($s0) # Upper Attire Color 1
/* 00BAF8 8000AEF8 A3A20017 */  sb    $v0, 0x17($sp)
/* 00BAFC 8000AEFC 92020007 */  lbu   $v0, 7($s0) # Upper Attire Color 2
/* 00BB00 8000AF00 A3A20018 */  sb    $v0, 0x18($sp)
/* 00BB04 8000AF04 92020008 */  lbu   $v0, 8($s0) # Entrance Attire
/* 00BB08 8000AF08 A3A20046 */  sb    $v0, 0x46($sp)
/* 00BB0C 8000AF0C 92020009 */  lbu   $v0, 9($s0) # Entrance Attire Color 1
/* 00BB10 8000AF10 A3A20047 */  sb    $v0, 0x47($sp)
/* 00BB14 8000AF14 9202000A */  lbu   $v0, 0xa($s0) # Entrance Attire Color 2
/* 00BB18 8000AF18 A3A20048 */  sb    $v0, 0x48($sp)
/* 00BB1C 8000AF1C 9202000B */  lbu   $v0, 0xb($s0) # Entrance Weapon
/* 00BB20 8000AF20 A3A20049 */  sb    $v0, 0x49($sp)
/* 00BB24 8000AF24 9202000C */  lbu   $v0, 0xc($s0) # Gloves
/* 00BB28 8000AF28 A3A2002E */  sb    $v0, 0x2e($sp)
/* 00BB2C 8000AF2C 9202000D */  lbu   $v0, 0xd($s0) # Gloves Color 1
/* 00BB30 8000AF30 A3A2002F */  sb    $v0, 0x2f($sp)
/* 00BB34 8000AF34 9202000E */  lbu   $v0, 0xe($s0) # Gloves Color 2
/* 00BB38 8000AF38 A3A20030 */  sb    $v0, 0x30($sp)
/* 00BB3C 8000AF3C 9202000F */  lbu   $v0, 0xf($s0) # Tattoo
/* 00BB40 8000AF40 A3A20037 */  sb    $v0, 0x37($sp)
/* 00BB44 8000AF44 92020010 */  lbu   $v0, 0x10($s0) # Wristband
/* 00BB48 8000AF48 A3A2003A */  sb    $v0, 0x3a($sp)
/* 00BB4C 8000AF4C 92020011 */  lbu   $v0, 0x11($s0) # Wristband Color
/* 00BB50 8000AF50 A3A2003B */  sb    $v0, 0x3b($sp)
/* 00BB54 8000AF54 92020012 */  lbu   $v0, 0x12($s0) # Left Elbow Pad
/* 00BB58 8000AF58 A3A20031 */  sb    $v0, 0x31($sp)
/* 00BB5C 8000AF5C 92020013 */  lbu   $v0, 0x13($s0) # Left Elbow Pad Color
/* 00BB60 8000AF60 A3A20032 */  sb    $v0, 0x32($sp)
/* 00BB64 8000AF64 92020014 */  lbu   $v0, 0x14($s0) # Right Elbow Pad
/* 00BB68 8000AF68 A3A20034 */  sb    $v0, 0x34($sp)
/* 00BB6C 8000AF6C 92020015 */  lbu   $v0, 0x15($s0) # Right Elbow Pad Color
/* 00BB70 8000AF70 A3A20035 */  sb    $v0, 0x35($sp)
/* 00BB74 8000AF74 92020016 */  lbu   $v0, 0x16($s0) # Left Knee Pad
/* 00BB78 8000AF78 A3A2003D */  sb    $v0, 0x3d($sp)
/* 00BB7C 8000AF7C 92020017 */  lbu   $v0, 0x17($s0) # Left Knee Pad Color
/* 00BB80 8000AF80 A3A2003E */  sb    $v0, 0x3e($sp)
/* 00BB84 8000AF84 92020018 */  lbu   $v0, 0x18($s0) # Right Knee Pad
/* 00BB88 8000AF88 A3A20040 */  sb    $v0, 0x40($sp)
/* 00BB8C 8000AF8C 92020019 */  lbu   $v0, 0x19($s0) # Right Knee Pad Color
/* 00BB90 8000AF90 A3A20041 */  sb    $v0, 0x41($sp)
/* 00BB94 8000AF94 9202001A */  lbu   $v0, 0x1a($s0) # Boots
/* 00BB98 8000AF98 A3A20043 */  sb    $v0, 0x43($sp)
/* 00BB9C 8000AF9C 9202001B */  lbu   $v0, 0x1b($s0) # Boots Color 1
/* 00BBA0 8000AFA0 A3A20044 */  sb    $v0, 0x44($sp)
/* 00BBA4 8000AFA4 9202001C */  lbu   $v0, 0x1c($s0) # Boots Color 2
/* 00BBA8 8000AFA8 A3A20045 */  sb    $v0, 0x45($sp)
/* 00BBAC 8000AFAC 9202001D */  lbu   $v0, 0x1d($s0) # Wearing a mask
/* 00BBB0 8000AFB0 A3A2001B */  sb    $v0, 0x1b($sp)
/* 00BBB4 8000AFB4 92020022 */  lbu   $v0, 0x22($s0) # Hair Color
/* 00BBB8 8000AFB8 A3A2001A */  sb    $v0, 0x1a($sp)

# check if masked or not
/* 00BBBC 8000AFBC 9202001D */  lbu   $v0, 0x1d($s0)
/* 00BBC0 8000AFC0 10400014 */  beqz  $v0, .L8000B014
/* 00BBC4 8000AFC4 00000000 */   nop   

# masked
/* 00BBC8 8000AFC8 92020028 */  lbu   $v0, 0x28($s0) # Mask Head Shape
/* 00BBCC 8000AFCC A3A20019 */  sb    $v0, 0x19($sp)
/* 00BBD0 8000AFD0 92020029 */  lbu   $v0, 0x29($s0) # Mask Number
/* 00BBD4 8000AFD4 A3A2001C */  sb    $v0, 0x1c($sp)
/* 00BBD8 8000AFD8 9202002E */  lbu   $v0, 0x2e($s0) # Mask Hair Type
/* 00BBDC 8000AFDC A3A2001F */  sb    $v0, 0x1f($sp)
/* 00BBE0 8000AFE0 9202002F */  lbu   $v0, 0x2f($s0) # Mask Accessory 1
/* 00BBE4 8000AFE4 A3A20022 */  sb    $v0, 0x22($sp)
/* 00BBE8 8000AFE8 92020030 */  lbu   $v0, 0x30($s0) # Mask Accessory 2
/* 00BBEC 8000AFEC A3A20025 */  sb    $v0, 0x25($sp)
/* 00BBF0 8000AFF0 9202002A */  lbu   $v0, 0x2a($s0) # Mask Color 1
/* 00BBF4 8000AFF4 A3A20023 */  sb    $v0, 0x23($sp)
/* 00BBF8 8000AFF8 9202002B */  lbu   $v0, 0x2b($s0) # Mask Color 2
/* 00BBFC 8000AFFC A3A20024 */  sb    $v0, 0x24($sp)
/* 00BC00 8000B000 9202002C */  lbu   $v0, 0x2c($s0) # Mask Color 3
/* 00BC04 8000B004 A3A20026 */  sb    $v0, 0x26($sp)
/* 00BC08 8000B008 9202002D */  lbu   $v0, 0x2d($s0) # Mask Color 4
/* 00BC0C 8000B00C 08002C13 */  j     .L8000B04C
/* 00BC10 8000B010 A3A20027 */   sb    $v0, 0x27($sp)

# non-masked
.L8000B014:
/* 00BC14 8000B014 9202001E */  lbu   $v0, 0x1e($s0) # Head Shape
/* 00BC18 8000B018 A3A20019 */  sb    $v0, 0x19($sp)
/* 00BC1C 8000B01C 92020020 */  lbu   $v0, 0x20($s0) # Face Number
/* 00BC20 8000B020 A3A2001C */  sb    $v0, 0x1c($sp)
/* 00BC24 8000B024 92020021 */  lbu   $v0, 0x21($s0) # Hair Type
/* 00BC28 8000B028 A3A2001F */  sb    $v0, 0x1f($sp)
/* 00BC2C 8000B02C 92020023 */  lbu   $v0, 0x23($s0) # Front Hair
/* 00BC30 8000B030 A3A20022 */  sb    $v0, 0x22($sp)
/* 00BC34 8000B034 92020025 */  lbu   $v0, 0x25($s0) # Facial Hair
/* 00BC38 8000B038 A3A20025 */  sb    $v0, 0x25($sp)
/* 00BC3C 8000B03C 92020026 */  lbu   $v0, 0x26($s0) # Facepaint
/* 00BC40 8000B040 A3A20028 */  sb    $v0, 0x28($sp)
/* 00BC44 8000B044 92020027 */  lbu   $v0, 0x27($s0) # Face Accessory
/* 00BC48 8000B048 A3A2002B */  sb    $v0, 0x2b($sp)

# and back to shared
.L8000B04C:
/* 00BC4C 8000B04C 27A40010 */  addiu $a0, $sp, 0x10
/* 00BC50 8000B050 0C03F710 */  jal   func_800FDC40
/* 00BC54 8000B054 02202821 */   addu  $a1, $s1, $zero

/* 00BC58 8000B058 8FBF0058 */  lw    $ra, 0x58($sp)
/* 00BC5C 8000B05C 8FB10054 */  lw    $s1, 0x54($sp)
/* 00BC60 8000B060 8FB00050 */  lw    $s0, 0x50($sp)
/* 00BC64 8000B064 03E00008 */  jr    $ra
/* 00BC68 8000B068 27BD0060 */   addiu $sp, $sp, 0x60
