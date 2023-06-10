# has some controller pak functions
# dead code?

glabel func_80004BF8
/* 0057F8 80004BF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0057FC 80004BFC 00002021 */  addu  $a0, $zero, $zero
/* 005800 80004C00 00002821 */  addu  $a1, $zero, $zero
/* 005804 80004C04 00003021 */  addu  $a2, $zero, $zero
/* 005808 80004C08 00003821 */  addu  $a3, $zero, $zero
/* 00580C 80004C0C AFBF0020 */  sw    $ra, 0x20($sp)
/* 005810 80004C10 AFA00010 */  sw    $zero, 0x10($sp)
/* 005814 80004C14 AFA00014 */  sw    $zero, 0x14($sp)
/* 005818 80004C18 0C00D288 */  jal   osPfsAllocateFile
/* 00581C 80004C1C AFA00018 */   sw    $zero, 0x18($sp)

/* 005820 80004C20 00002021 */  addu  $a0, $zero, $zero
/* 005824 80004C24 00002821 */  addu  $a1, $zero, $zero
/* 005828 80004C28 00003021 */  addu  $a2, $zero, $zero
/* 00582C 80004C2C 00003821 */  addu  $a3, $zero, $zero
/* 005830 80004C30 0C00D394 */  jal   osPfsDeleteFile
/* 005834 80004C34 AFA00010 */   sw    $zero, 0x10($sp)

/* 005838 80004C38 00002021 */  addu  $a0, $zero, $zero
/* 00583C 80004C3C 00002821 */  addu  $a1, $zero, $zero
/* 005840 80004C40 0C00D52C */  jal   osPfsFileState
/* 005844 80004C44 00003021 */   addu  $a2, $zero, $zero

/* 005848 80004C48 00002021 */  addu  $a0, $zero, $zero
/* 00584C 80004C4C 00002821 */  addu  $a1, $zero, $zero
/* 005850 80004C50 00003021 */  addu  $a2, $zero, $zero
/* 005854 80004C54 00003821 */  addu  $a3, $zero, $zero
/* 005858 80004C58 AFA00010 */  sw    $zero, 0x10($sp)
/* 00585C 80004C5C 0C00D594 */  jal   osPfsFindFile
/* 005860 80004C60 AFA00014 */   sw    $zero, 0x14($sp)

/* 005864 80004C64 00002021 */  addu  $a0, $zero, $zero
/* 005868 80004C68 0C00D6BC */  jal   osPfsFreeBlocks
/* 00586C 80004C6C 00002821 */   addu  $a1, $zero, $zero

/* 005870 80004C70 00002021 */  addu  $a0, $zero, $zero
/* 005874 80004C74 00002821 */  addu  $a1, $zero, $zero
/* 005878 80004C78 0C00D740 */  jal   osPfsInitPak
/* 00587C 80004C7C 00003021 */   addu  $a2, $zero, $zero

/* 005880 80004C80 00002021 */  addu  $a0, $zero, $zero
/* 005884 80004C84 00002821 */  addu  $a1, $zero, $zero
/* 005888 80004C88 0C00D700 */  jal   osPfsNumFiles
/* 00588C 80004C8C 00003021 */   addu  $a2, $zero, $zero

/* 005890 80004C90 0C00D7F4 */  jal   osPfsRepairId
/* 005894 80004C94 00002021 */   addu  $a0, $zero, $zero

/* 005898 80004C98 00002021 */  addu  $a0, $zero, $zero
/* 00589C 80004C9C 00002821 */  addu  $a1, $zero, $zero
/* 0058A0 80004CA0 00003021 */  addu  $a2, $zero, $zero
/* 0058A4 80004CA4 00003821 */  addu  $a3, $zero, $zero
/* 0058A8 80004CA8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0058AC 80004CAC 0C00D41C */  jal   osPfsReadWriteFile
/* 0058B0 80004CB0 AFA00014 */   sw    $zero, 0x14($sp)

/* 0058B4 80004CB4 00002021 */  addu  $a0, $zero, $zero
/* 0058B8 80004CB8 00002821 */  addu  $a1, $zero, $zero
/* 0058BC 80004CBC 0C00AEFC */  jal   osVoiceInit
/* 0058C0 80004CC0 00003021 */   addu  $a2, $zero, $zero

/* 0058C4 80004CC4 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0058C8 80004CC8 03E00008 */  jr    $ra
/* 0058CC 80004CCC 27BD0028 */   addiu $sp, $sp, 0x28
