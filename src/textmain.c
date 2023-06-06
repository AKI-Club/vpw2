#include "common.h"
#include "ultra64.h"

/*============================================================================*/
GLOBAL_ASM("asm/textmain/textmain.s")

// I AINT GOT A FUCKING CLUE WHAT THIS EVEN IS

/*
struct UnkStruct_base_dl {
	s32 unk0;
	s32 unk4;
};

void start(void) {
    s32 var_t1;
    struct UnkStruct_base_dl *var_t0;

    var_t0 = (void *)0x8004B2A0; // 0x8004B2A0 = base_dl
    var_t1 = 0x6B050;
    while (var_t1 != 0) {
        var_t0->unk0 = 0;
        var_t0->unk4 = 0;
        var_t0 += 8;
        var_t1 -= 8;
    }
}
*/

/*============================================================================*/
GLOBAL_ASM("asm/textmain/func_80000460.s")
GLOBAL_ASM("asm/textmain/func_800004d0.s")
GLOBAL_ASM("asm/textmain/func_800005c4.s")
