# Copy stable name to somewhere else in memory? (unused?)

# Params:
# $a0 - Stable number?
# $a1 - copy destination?

glabel func_8000A820
/* 00B420 8000A820 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00B424 8000A824 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00B428 8000A828 000410C0 */  sll   $v0, $a0, 3
/* 00B42C 8000A82C 00441023 */  subu  $v0, $v0, $a0
/* 00B430 8000A830 000210C0 */  sll   $v0, $v0, 3
# stable name
/* 00B434 8000A834 3C03800A */  lui   $v1, %hi(bssMain_800A4532) # $v1, 0x800a
/* 00B438 8000A838 24634532 */  addiu $v1, %lo(bssMain_800A4532) # addiu $v1, $v1, 0x4532
/* 00B43C 8000A83C 00A02021 */  addu  $a0, $a1, $zero
/* 00B440 8000A840 00432821 */  addu  $a1, $v0, $v1
/* 00B444 8000A844 0C00C888 */  jal   bcopy
/* 00B448 8000A848 24060014 */   li    $a2, 20

/* 00B44C 8000A84C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00B450 8000A850 03E00008 */  jr    $ra
/* 00B454 8000A854 27BD0018 */   addiu $sp, $sp, 0x18
