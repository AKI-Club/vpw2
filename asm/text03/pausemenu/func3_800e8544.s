# possibly related to drawing the pause menu items

# Params:
# $a0 - pointer to ?
# $a1 - ? address?
# $a2 - ? word
# $a3 - ? word

glabel func3_800E8544
/* 0E2BF4 800E8544 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0E2BF8 800E8548 AFB10044 */  sw    $s1, 0x44($sp)
/* 0E2BFC 800E854C 00808821 */  addu  $s1, $a0, $zero # store $a0 in $s1
/* 0E2C00 800E8550 3C04F500 */  lui   $a0, (0xF5000100 >> 16) # lui $a0, 0xf500
/* 0E2C04 800E8554 34840100 */  ori   $a0, (0xF5000100 & 0xFFFF) # ori $a0, $a0, 0x100
/* 0E2C08 800E8558 3C080703 */  lui   $t0, (0x0703C000 >> 16) # lui $t0, 0x703
/* 0E2C0C 800E855C AFBF0048 */  sw    $ra, 0x48($sp)
/* 0E2C10 800E8560 AFB00040 */  sw    $s0, 0x40($sp)
/* 0E2C14 800E8564 8E220000 */  lw    $v0, ($s1)
/* 0E2C18 800E8568 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 0E2C1C 800E856C 3508C000 */  ori   $t0, (0x0703C000 & 0xFFFF) # ori $t0, $t0, 0xc000
/* 0E2C20 800E8570 3C10E700 */  lui   $s0, 0xe700
/* 0E2C24 800E8574 24430008 */  addiu $v1, $v0, 8
/* 0E2C28 800E8578 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C2C 800E857C 3C03FD10 */  lui   $v1, 0xfd10
/* 0E2C30 800E8580 AC430000 */  sw    $v1, ($v0)
/* 0E2C34 800E8584 3C038000 */  lui   $v1, 0x8000
/* 0E2C38 800E8588 00C33023 */  subu  $a2, $a2, $v1
/* 0E2C3C 800E858C 24430010 */  addiu $v1, $v0, 0x10
/* 0E2C40 800E8590 AC460004 */  sw    $a2, 4($v0)
/* 0E2C44 800E8594 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C48 800E8598 3C03E800 */  lui   $v1, 0xe800
/* 0E2C4C 800E859C AC430008 */  sw    $v1, 8($v0)
/* 0E2C50 800E85A0 24430018 */  addiu $v1, $v0, 0x18
/* 0E2C54 800E85A4 AC40000C */  sw    $zero, 0xc($v0)
/* 0E2C58 800E85A8 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C5C 800E85AC 3C030700 */  lui   $v1, 0x700
/* 0E2C60 800E85B0 AC430014 */  sw    $v1, 0x14($v0)
/* 0E2C64 800E85B4 24430020 */  addiu $v1, $v0, 0x20
/* 0E2C68 800E85B8 AC440010 */  sw    $a0, 0x10($v0)
/* 0E2C6C 800E85BC AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C70 800E85C0 3C03E600 */  lui   $v1, 0xe600
/* 0E2C74 800E85C4 AC430018 */  sw    $v1, 0x18($v0)
/* 0E2C78 800E85C8 24430028 */  addiu $v1, $v0, 0x28
/* 0E2C7C 800E85CC AC40001C */  sw    $zero, 0x1c($v0)
/* 0E2C80 800E85D0 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C84 800E85D4 3C03F000 */  lui   $v1, 0xf000
/* 0E2C88 800E85D8 AC430020 */  sw    $v1, 0x20($v0)
/* 0E2C8C 800E85DC 24430030 */  addiu $v1, $v0, 0x30
/* 0E2C90 800E85E0 AC480024 */  sw    $t0, 0x24($v0)
/* 0E2C94 800E85E4 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2C98 800E85E8 AC500028 */  sw    $s0, 0x28($v0)
/* 0E2C9C 800E85EC AC40002C */  sw    $zero, 0x2c($v0)
/* 0E2CA0 800E85F0 90A20000 */  lbu   $v0, ($a1)
/* 0E2CA4 800E85F4 24420001 */  addiu $v0, $v0, 1
/* 0E2CA8 800E85F8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0E2CAC 800E85FC 90A30001 */  lbu   $v1, 1($a1)
/* 0E2CB0 800E8600 27A40038 */  addiu $a0, $sp, 0x38
/* 0E2CB4 800E8604 24020080 */  li    $v0, 128
/* 0E2CB8 800E8608 AFA20018 */  sw    $v0, 0x18($sp)
/* 0E2CBC 800E860C 24020010 */  li    $v0, 16
/* 0E2CC0 800E8610 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0E2CC4 800E8614 AFA00020 */  sw    $zero, 0x20($sp)
/* 0E2CC8 800E8618 AFA00024 */  sw    $zero, 0x24($sp)
/* 0E2CCC 800E861C 24630001 */  addiu $v1, $v1, 1
/* 0E2CD0 800E8620 AFA30014 */  sw    $v1, 0x14($sp)
/* 0E2CD4 800E8624 90A20000 */  lbu   $v0, ($a1)
/* 0E2CD8 800E8628 24060002 */  li    $a2, 2
/* 0E2CDC 800E862C 3C038000 */  lui   $v1, 0x8000
/* 0E2CE0 800E8630 AFA20028 */  sw    $v0, 0x28($sp)
/* 0E2CE4 800E8634 90A20001 */  lbu   $v0, 1($a1)
/* 0E2CE8 800E8638 34630008 */  ori   $v1, $v1, 8
/* 0E2CEC 800E863C 00A32821 */  addu  $a1, $a1, $v1
/* 0E2CF0 800E8640 AFA70030 */  sw    $a3, 0x30($sp)
/* 0E2CF4 800E8644 00003821 */  addu  $a3, $zero, $zero
/* 0E2CF8 800E8648 24420001 */  addiu $v0, $v0, 1
/* 0E2CFC 800E864C AFA2002C */  sw    $v0, 0x2c($sp)
/* 0E2D00 800E8650 0C003C8B */  jal   func_8000F22C
/* 0E2D04 800E8654 E7A00034 */   swc1  $f0, 0x34($sp)

/* 0E2D08 800E8658 8FA20038 */  lw    $v0, 0x38($sp)
/* 0E2D0C 800E865C 24430008 */  addiu $v1, $v0, 8
/* 0E2D10 800E8660 AFA30038 */  sw    $v1, 0x38($sp)
/* 0E2D14 800E8664 AC500000 */  sw    $s0, ($v0)
/* 0E2D18 800E8668 AC400004 */  sw    $zero, 4($v0)
/* 0E2D1C 800E866C AE230000 */  sw    $v1, ($s1)
/* 0E2D20 800E8670 8FBF0048 */  lw    $ra, 0x48($sp)
/* 0E2D24 800E8674 8FB10044 */  lw    $s1, 0x44($sp)
/* 0E2D28 800E8678 8FB00040 */  lw    $s0, 0x40($sp)
/* 0E2D2C 800E867C 03E00008 */  jr    $ra
/* 0E2D30 800E8680 27BD0050 */   addiu $sp, $sp, 0x50

/*----------------------------------------------------------------------------*/
/* 0E2D34 800E8684 00000000 */  nop   
/* 0E2D38 800E8688 00000000 */  nop   
/* 0E2D3C 800E868C 00000000 */  nop   
