/* Virtual Pro-Wrestling 2 decompilation project - Main C file...
 * yes, I know this is going to be a nightmare.
 */
/*============================================================================*/
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

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_800004d0.s")

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_800005c4.s")

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_800005f0.s")

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_80000614.s")

/*----------------------------------------------------------------------------*/
/* dead code? */
extern s32 bssMain_8004C07C;

s32 func_80000648(void) {
    return bssMain_8004C07C;
}

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_80000654.s")

/*============================================================================*/
GLOBAL_ASM("asm/textmain/LoadDataDMA_80000660.s")

GLOBAL_ASM("asm/textmain/LoadCodeDMA_80000744.s")

GLOBAL_ASM("asm/textmain/func_80000870.s")

GLOBAL_ASM("asm/textmain/aki_malloc_80000898.s")
GLOBAL_ASM("asm/textmain/aki_free_80000a00.s")

GLOBAL_ASM("asm/textmain/GetPiHandle_SRAM_80000b4c.s")
