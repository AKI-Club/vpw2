/* Virtual Pro-Wrestling 2 decompilation project - Main segment main C file...
 * yes, I know this is going to be a nightmare.
 */
/*============================================================================*/
#include "common.h"
#include "ultra64.h"

/*============================================================================*/
GLOBAL_ASM("asm/textmain/textmain.s")

// I AINT GOT A FUCKING CLUE WHAT THIS EVEN IS
/* hilariously enough, that comment isn't me (for once) -f */

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
/* returns 8004BE00; called when setting up sound tables 1,2,3 */
extern s16 bssMain_8004BE00;

s16 *func_80000654(void) {
    return &bssMain_8004BE00;
}

/*============================================================================*/
GLOBAL_ASM("asm/textmain/LoadDataDMA_80000660.s")

GLOBAL_ASM("asm/textmain/LoadCodeDMA_80000744.s")

GLOBAL_ASM("asm/textmain/func_80000870.s")

GLOBAL_ASM("asm/textmain/aki_malloc_80000898.s")
GLOBAL_ASM("asm/textmain/aki_free_80000a00.s")

GLOBAL_ASM("asm/textmain/GetPiHandle_SRAM_80000b4c.s")

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_80000bf0.s")

GLOBAL_ASM("asm/textmain/func_80000e98.s")

GLOBAL_ASM("asm/textmain/func_80000f10.s")

/*----------------------------------------------------------------------------*/
extern s32 bssMain_80052090;

s32 *func_80000F90(void) {
    return &bssMain_80052090;
}

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/thread_80000f9c.s")

/*----------------------------------------------------------------------------*/
extern s32 bssMain_800520C8;

s32 *func_800010D8(void) {
    return &bssMain_800520C8;
}

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/thread_800010e4.s")

GLOBAL_ASM("asm/textmain/thread_80001240.s")

GLOBAL_ASM("asm/textmain/func_80001440.s")

/*============================================================================*/

GLOBAL_ASM("asm/textmain/func_800014d0.s")
GLOBAL_ASM("asm/textmain/func_80001768.s")
GLOBAL_ASM("asm/textmain/func_8000178c.s")
GLOBAL_ASM("asm/textmain/func_8000179c.s")

/*============================================================================*/

GLOBAL_ASM("asm/textmain/func_80001800.s")
GLOBAL_ASM("asm/textmain/func_8000186c.s")
GLOBAL_ASM("asm/textmain/func_800018d4.s")
GLOBAL_ASM("asm/textmain/func_80001934.s")
GLOBAL_ASM("asm/textmain/func_80001988.s")
GLOBAL_ASM("asm/textmain/func_800019bc.s")
GLOBAL_ASM("asm/textmain/func_80001a1c.s")
GLOBAL_ASM("asm/textmain/func_80001b0c.s")

GLOBAL_ASM("asm/textmain/func_80001c00.s")
GLOBAL_ASM("asm/textmain/func_80001da4.s")
GLOBAL_ASM("asm/textmain/func_80001e10.s")
GLOBAL_ASM("asm/textmain/func_80002108.s")
GLOBAL_ASM("asm/textmain/func_8000244c.s")
GLOBAL_ASM("asm/textmain/func_80002568.s")
GLOBAL_ASM("asm/textmain/func_800025d8.s")

/*============================================================================*/

GLOBAL_ASM("asm/textmain/func_80002700.s")
GLOBAL_ASM("asm/textmain/func_800027f8.s")
GLOBAL_ASM("asm/textmain/func_80002a00.s")
GLOBAL_ASM("asm/textmain/func_80002b84.s")
GLOBAL_ASM("asm/textmain/func_80002e40.s")
GLOBAL_ASM("asm/textmain/func_80003120.s")

/*----------------------------------------------------------------------------*/
extern s32 bssMain_800557BC;

void func_800032E0(void) {
    bssMain_800557BC = 0;
}

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_800032ec.s")
GLOBAL_ASM("asm/textmain/func_80003330.s")
GLOBAL_ASM("asm/textmain/func_80003374.s")
GLOBAL_ASM("asm/textmain/func_80003390.s")
GLOBAL_ASM("asm/textmain/thread_800033d4.s")
GLOBAL_ASM("asm/textmain/ClearFramebuffers_800036b4.s")

/*============================================================================*/
GLOBAL_ASM("asm/textmain/SetupSoundTable_123_80003720.s")
GLOBAL_ASM("asm/textmain/func_80003944.s")
GLOBAL_ASM("asm/textmain/func_80003964.s")
GLOBAL_ASM("asm/textmain/func_800039a4.s")
GLOBAL_ASM("asm/textmain/func_800039d4.s")
GLOBAL_ASM("asm/textmain/func_800039f4.s")
GLOBAL_ASM("asm/textmain/func_80003a14.s")
GLOBAL_ASM("asm/textmain/func_80003a64.s")
GLOBAL_ASM("asm/textmain/func_80003a94.s")
GLOBAL_ASM("asm/textmain/func_80003ae8.s")
GLOBAL_ASM("asm/textmain/func_80003b9c.s")
GLOBAL_ASM("asm/textmain/func_80003bd4.s")

/*----------------------------------------------------------------------------*/
extern u16 bssMain_80056FD4;

s32 func_80003C20(void) {
    return (s32) (bssMain_80056FD4 << 0x10) >> 0x18;
}

/*----------------------------------------------------------------------------*/
GLOBAL_ASM("asm/textmain/func_80003c34.s")
GLOBAL_ASM("asm/textmain/func_80003c98.s")

/*============================================================================*/
/* formerly in asm/code_main/filetable.s */
/* this section contains filetable functionality + LZSS decompression code */

GLOBAL_ASM("asm/textmain/SetupFiletable_80003cb0.s")
GLOBAL_ASM("asm/textmain/GetFileLoc_80003dc4.s")
GLOBAL_ASM("asm/textmain/LoadFile_80003e88.s")
GLOBAL_ASM("asm/textmain/DecompressLZSS_80004008.s")

/*============================================================================*/
GLOBAL_ASM("asm/textmain/func_80004130.s")
GLOBAL_ASM("asm/textmain/func_80004228.s")
GLOBAL_ASM("asm/textmain/func_80004494.s")

/*----------------------------------------------------------------------------*/
/* get absolute value of arg0 */
s32 func_800044BC(s32 arg0) {
    s32 var_v0;

    var_v0 = arg0;
    if (var_v0 < 0) {
        var_v0 = -var_v0;
    }
    return var_v0;
}

/*============================================================================*/
/* --- possible file break: controller-related stuff --- */
GLOBAL_ASM("asm/textmain/func_800044d0.s")
GLOBAL_ASM("asm/textmain/func_80004628.s")

/*----------------------------------------------------------------------------*/
extern s8 bssMain_800571D9;

void func_800049E8(s8 arg0) {
    bssMain_800571D9 = arg0;
}

/*----------------------------------------------------------------------------*/

GLOBAL_ASM("asm/textmain/func_800049f4.s")
GLOBAL_ASM("asm/textmain/func_80004a38.s")
GLOBAL_ASM("asm/textmain/func_80004a64.s")
GLOBAL_ASM("asm/textmain/func_80004b44.s")
GLOBAL_ASM("asm/textmain/func_80004b74.s")
GLOBAL_ASM("asm/textmain/func_80004bb4.s")
GLOBAL_ASM("asm/textmain/func_80004bf8.s")

/*============================================================================*/
/* --- possible file break for bit packing/unpacking related stuff --- */
GLOBAL_ASM("asm/textmain/func_80004cd0.s")
GLOBAL_ASM("asm/textmain/func_80004d0c.s")
GLOBAL_ASM("asm/textmain/PackBits_80004d60.s")
GLOBAL_ASM("asm/textmain/UnpackBits_80004f64.s")
GLOBAL_ASM("asm/textmain/WrestlerParams_Unpack_800051cc.s")
GLOBAL_ASM("asm/textmain/WrestlerMoves_Pack_80005578.s")
GLOBAL_ASM("asm/textmain/WrestlerParams_Pack_8000593c.s")
GLOBAL_ASM("asm/textmain/WrestlerMoves_Unpack_8000632c.s")
GLOBAL_ASM("asm/textmain/func_80006608.s")

/*============================================================================*/
/* --- file break: string/text related code? --- */
GLOBAL_ASM("asm/textmain/func_80006b80.s")
GLOBAL_ASM("asm/textmain/func_80006c18.s")
GLOBAL_ASM("asm/textmain/func_80006c64.s")
GLOBAL_ASM("asm/textmain/func_80006c78.s")
GLOBAL_ASM("asm/textmain/func_80006c9c.s")
GLOBAL_ASM("asm/textmain/func_80006cd4.s")
GLOBAL_ASM("asm/textmain/func_80006d50.s")
GLOBAL_ASM("asm/textmain/func_80006dc8.s")
GLOBAL_ASM("asm/textmain/func_80006e20.s")
GLOBAL_ASM("asm/textmain/func_80006ef4.s")
GLOBAL_ASM("asm/textmain/func_80006f5c.s")
GLOBAL_ASM("asm/textmain/func_80007004.s")
GLOBAL_ASM("asm/textmain/encode_decode_80007070.s")
GLOBAL_ASM("asm/textmain/encdec_Wrapper1_8000721c.s")
GLOBAL_ASM("asm/textmain/encdec_Wrapper0_80007238.s")
GLOBAL_ASM("asm/textmain/func_80007254.s")

/*============================================================================*/
/* --- possible file break?? --- */
GLOBAL_ASM("asm/textmain/func_80007390.s")
GLOBAL_ASM("asm/textmain/func_800074b8.s")
GLOBAL_ASM("asm/textmain/func_80007660.s")

GLOBAL_ASM("asm/textmain/func_800078c0.s")
GLOBAL_ASM("asm/textmain/func_800078dc.s")
GLOBAL_ASM("asm/textmain/func_80007d44.s")
GLOBAL_ASM("asm/textmain/func_80008424.s")

GLOBAL_ASM("asm/textmain/func_800086d0.s")
GLOBAL_ASM("asm/textmain/func_800086f4.s")
GLOBAL_ASM("asm/textmain/func_80008a08.s")
GLOBAL_ASM("asm/textmain/func_80008b78.s")
GLOBAL_ASM("asm/textmain/func_80008c88.s")
GLOBAL_ASM("asm/textmain/func_80008ebc.s")
GLOBAL_ASM("asm/textmain/func_80009278.s")
GLOBAL_ASM("asm/textmain/func_800092dc.s")
GLOBAL_ASM("asm/textmain/func_80009340.s")
GLOBAL_ASM("asm/textmain/func_800094bc.s")
GLOBAL_ASM("asm/textmain/func_80009628.s")
GLOBAL_ASM("asm/textmain/func_800096e0.s")
GLOBAL_ASM("asm/textmain/func_800097f4.s")

/*============================================================================*/
GLOBAL_ASM("asm/textmain/func_80009910.s")
GLOBAL_ASM("asm/textmain/func_8000998c.s")
GLOBAL_ASM("asm/textmain/func_80009a04.s")
GLOBAL_ASM("asm/textmain/func_80009a7c.s")
GLOBAL_ASM("asm/textmain/func_80009b10.s")
GLOBAL_ASM("asm/textmain/func_80009ba8.s")
GLOBAL_ASM("asm/textmain/func_80009c74.s")
GLOBAL_ASM("asm/textmain/func_80009c98.s")
GLOBAL_ASM("asm/textmain/func_80009cc4.s")
GLOBAL_ASM("asm/textmain/func_80009d50.s")
GLOBAL_ASM("asm/textmain/func_80009e6c.s")
GLOBAL_ASM("asm/textmain/func_80009e90.s")
GLOBAL_ASM("asm/textmain/func_80009f44.s")
GLOBAL_ASM("asm/textmain/func_80009ff4.s")
GLOBAL_ASM("asm/textmain/func_8000a014.s")
GLOBAL_ASM("asm/textmain/func_8000a04c.s")
GLOBAL_ASM("asm/textmain/func_8000a084.s")
GLOBAL_ASM("asm/textmain/func_8000a178.s")

GLOBAL_ASM("asm/textmain/ID2toID4_8000a270.s")
GLOBAL_ASM("asm/textmain/ID4toID2_8000a2b0.s")

GLOBAL_ASM("asm/textmain/func_8000a2fc.s")
GLOBAL_ASM("asm/textmain/func_8000a354.s")
GLOBAL_ASM("asm/textmain/func_8000a3ac.s")
GLOBAL_ASM("asm/textmain/func_8000a440.s")
GLOBAL_ASM("asm/textmain/func_8000a49c.s")

GLOBAL_ASM("asm/textmain/GetWrestlerType_8000a524.s")

GLOBAL_ASM("asm/textmain/func_8000a534.s")
GLOBAL_ASM("asm/textmain/func_8000a564.s")
GLOBAL_ASM("asm/textmain/func_8000a69c.s")
GLOBAL_ASM("asm/textmain/func_8000a710.s")
GLOBAL_ASM("asm/textmain/func_8000a820.s")
GLOBAL_ASM("asm/textmain/func_8000a858.s")
GLOBAL_ASM("asm/textmain/func_8000a8b4.s")

GLOBAL_ASM("asm/textmain/LoadDefaultStrings_8000a8ec.s")
GLOBAL_ASM("asm/textmain/UnloadDefaultStrings_8000a940.s")

GLOBAL_ASM("asm/textmain/func_8000a970.s")
GLOBAL_ASM("asm/textmain/func_8000aa6c.s")
GLOBAL_ASM("asm/textmain/func_8000aaac.s")
GLOBAL_ASM("asm/textmain/func_8000abfc.s")
GLOBAL_ASM("asm/textmain/func_8000ac4c.s")
GLOBAL_ASM("asm/textmain/func_8000acb4.s")
GLOBAL_ASM("asm/textmain/func_8000ad80.s")
GLOBAL_ASM("asm/textmain/func_8000adec.s")

GLOBAL_ASM("asm/textmain/LoadWrestlerCostume_8000aea0.s")

GLOBAL_ASM("asm/textmain/func_8000b06c.s")
GLOBAL_ASM("asm/textmain/func_8000b184.s")
GLOBAL_ASM("asm/textmain/func_8000b1a4.s")
GLOBAL_ASM("asm/textmain/func_8000b3e4.s")
GLOBAL_ASM("asm/textmain/func_8000b628.s")
GLOBAL_ASM("asm/textmain/func_8000b748.s")

/*============================================================================*/
/* --- probable file break; related to models and animations? --- */

GLOBAL_ASM("asm/textmain/func_8000ba30.s")
GLOBAL_ASM("asm/textmain/func_8000ba54.s")
