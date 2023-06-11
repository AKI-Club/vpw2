# Checks if ID4 belongs to an edit wrestler?

# Params:
# $a0 - Wrestler ID4

glabel GetWrestlerType
/* 00B124 8000A524 30820F00 */  andi  $v0, $a0, 0xF00
/* 00B128 8000A528 38420C00 */  xori  $v0, $v0, 0xC00 # Edit wrestler mask
/* 00B12C 8000A52C 03E00008 */  jr    $ra
/* 00B130 8000A530 0002102B */   sltu  $v0, $zero, $v0
