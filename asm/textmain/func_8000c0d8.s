# zeroes out various values at $a0

glabel func_8000C0D8
/* 00CCD8 8000C0D8 A0800000 */  sb    $zero, ($a0)
/* 00CCDC 8000C0DC A0800001 */  sb    $zero, 1($a0)
/* 00CCE0 8000C0E0 A0800002 */  sb    $zero, 2($a0)
/* 00CCE4 8000C0E4 A0800003 */  sb    $zero, 3($a0)
/* 00CCE8 8000C0E8 A0800004 */  sb    $zero, 4($a0)
/* 00CCEC 8000C0EC A0800005 */  sb    $zero, 5($a0)
/* 00CCF0 8000C0F0 A0800006 */  sb    $zero, 6($a0)

/* 00CCF4 8000C0F4 A4800008 */  sh    $zero, 8($a0)
/* 00CCF8 8000C0F8 A480000A */  sh    $zero, 0xa($a0)

/* 00CCFC 8000C0FC AC80000C */  sw    $zero, 0xc($a0)
/* 00CD00 8000C100 AC800010 */  sw    $zero, 0x10($a0)
/* 00CD04 8000C104 AC800014 */  sw    $zero, 0x14($a0)
/* 00CD08 8000C108 AC800018 */  sw    $zero, 0x18($a0)
/* 00CD0C 8000C10C AC80001C */  sw    $zero, 0x1c($a0)
/* 00CD10 8000C110 AC800020 */  sw    $zero, 0x20($a0)
/* 00CD14 8000C114 AC800024 */  sw    $zero, 0x24($a0)
/* 00CD18 8000C118 AC800028 */  sw    $zero, 0x28($a0)
/* 00CD1C 8000C11C 03E00008 */  jr    $ra
/* 00CD20 8000C120 AC80002C */   sw    $zero, 0x2c($a0)
