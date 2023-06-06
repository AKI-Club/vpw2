# possible file break?

# related to setting up a code segment?

# Params:
# $a0 - rom start
# $a1 - rom end
# $a2 - segment start
# $a3 - segment text/code start
# (other params on stack)

glabel func_80000870
/* 001470 80000870 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001474 80000874 AFBF0010 */  sw    $ra, 0x10($sp)
/* 001478 80000878 AFA40018 */  sw    $a0, 0x18($sp)
/* 00147C 8000087C AFA5001C */  sw    $a1, 0x1c($sp)
/* 001480 80000880 AFA60020 */  sw    $a2, 0x20($sp)

# this call is different depending on what segment is loaded:
/* 001484 80000884 0C039ABC */  jal   func_800E6AF0
/* 001488 80000888 AFA70024 */   sw    $a3, 0x24($sp)

/* 00148C 8000088C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 001490 80000890 03E00008 */  jr    $ra
/* 001494 80000894 27BD0018 */   addiu $sp, $sp, 0x18
