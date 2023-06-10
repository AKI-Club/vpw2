glabel func_80004A38
/* 005638 80004A38 27BDFFE8 */  addiu $sp, $sp, -0x18

# OSMesgQueue *mq
/* 00563C 80004A3C 3C048005 */  lui   $a0, %hi(bssMain_80057008) # $a0, 0x8005
/* 005640 80004A40 24847008 */  addiu $a0, %lo(bssMain_80057008) # addiu $a0, $a0, 0x7008
/* 005644 80004A44 AFBF0010 */  sw    $ra, 0x10($sp)
/* 005648 80004A48 0C00C134 */  jal   osContStartReadData
/* 00564C 80004A4C 00000000 */   nop   

/* 005650 80004A50 3C018005 */  lui   $at, %hi(bssMain_800571DA) # $at, 0x8005
/* 005654 80004A54 A02071DA */  sb    $zero, %lo(bssMain_800571DA)($at)
/* 005658 80004A58 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00565C 80004A5C 03E00008 */  jr    $ra
/* 005660 80004A60 27BD0018 */   addiu $sp, $sp, 0x18
