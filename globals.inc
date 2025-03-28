# globally accessible functions and data
# these will be accessible by C code and show up in the .map file

# routines currently living in main.s:
.global start
.global func_80000460
.global base_dl
.global bssMain_8009C190
.global MainThread
.global MainThread_idle
.global LoadDataDMA
.global LoadCodeDMA
.global aki_malloc
.global aki_free
.global func_80000B4C
.global func_800014D0
.global func_80001800
.global func_8000186C
.global func_800018D4
.global func_80001DA4
.global func_80002108
.global func_80002568
.global func_800025D8
.global func_80002700
.global func_800032E0
.global func_800032EC
.global func_80003330
.global func_80003374
.global func_80003390
.global SetupSoundTable_123
.global func_800039D4
.global func_80003BD4
.global func_80003C20
.global func_80003C98
# filetable.s breakout begin
.global SetupFiletable
.global GetFileLoc
.global LoadFile
.global DecompressLZSS
# filetable.s breakout end
.global func_80004228
.global func_80004494
.global func_80004628
.global func_800049E8
.global func_800049F4
.global func_80004A38
.global func_80004BB4
.global func_80004CD0
.global func_80004D0C
.global PackBits
.global UnpackBits
.global func_800051CC
.global func_80006D50
.global func_80006C64
.global func_80006C78
.global func_80006CD4
.global func_80006DC8
.global func_80006E20
.global func_80006F5C
.global func_80007004
.global encode_decode
.global encdec_Wrapper1
.global encdec_Wrapper0
.global func_80008424
.global func_800086D0
.global func_80008EBC
.global func_80009278
.global func_800092DC
.global func_800094BC
.global func_80009628
.global func_800096E0
.global func_800097F4
.global func_80009910
.global func_80009A04
.global func_80009A7C
.global func_80009B10
.global func_80009C74
.global func_80009C98
.global func_80009CC4
.global func_80009D50
.global func_80009E6C
.global func_80009F44
.global func_80009FF4
.global func_8000A014
.global func_8000A178
.global ID2toID4
.global ID4toID2
.global func_8000A2FC
.global func_8000A354
.global func_8000A3AC
.global func_8000A440
.global func_8000A49C
.global func_8000A524
.global func_8000A534
.global func_8000A564
.global func_8000A69C
.global func_8000A710
.global func_8000A858
.global func_8000A8B4
.global LoadDefaultWrestlerNames
.global UnloadDefaultWrestlerNames
.global func_8000A970
.global func_8000AA6C
.global func_8000AAAC
.global func_8000ABFC
.global func_8000AC4C
.global func_8000ACB4
.global func_8000AD80
.global func_8000ADEC
.global LoadDefaultWrestlerCostume
.global func_8000B06C
.global func_8000B1A4
.global func_8000B3E4
.global func_8000B628
.global func_8000B748
.global func_8000BEB8
.global func_8000C0D8
.global func_8000C294
.global func_8000C4F0
.global func_8000DF88
.global func_8000E3AC
.global func_8000E428
.global func_8000E5B0
.global func_8000E5C0
.global func_8000E5FC
.global func_8000F22C
.global func_8000F7C0
.global func_8000F8D0
.global func_8000FCC8
.global func_8000FE60
.global func_8000FEB0
.global func_8000FF9C
.global func_80010778
.global func_8001084C
.global func_80010CD4
.global func_80010CE4
.global func_800115E0
.global func_80011690
.global func_800116AC
.global func_800116EC
.global func_8001170C
.global func_8001178C
.global func_800118C0
.global func_800118F4
.global func_80011AA8
.global func_80011CFC
.global func_800123FC
.global func_800140CC
.global func_800140FC
.global func_80014594
.global func_80014658
.global func_80014730
.global func_80014A40
.global func_80014AAC
.global func_80014C70
.global func_80014CE0
.global func_80014E4C
.global func_80014F24
.global func_8001504C
.global func_800159A8
.global func_80015A78
.global func_80015B60
.global func_80015D14
.global func_80015DC0
.global func_80015E54
.global func_8001600C
.global func_8001606C
.global func_800164FC
.global SetupSoundTable_45
.global func_800168F0
.global func_800169C8
.global SetupSoundTable_6
.global func_80016C2C
.global func_80016C88
.global SetupSoundTable_78
.global func_80016FCC
.global func_8001707C
.global func_800171DC
.global func_80017244
.global func_800172BC
.global func_80017EF4
.global func_80018158
.global func_800182F0
.global func_80018550
.global func_8001C240
.global func_8001C248
.global func_8001C250
.global func_8001C284
.global func_8001C2C8
.global func_8001C2D0
.global func_8001C2D8
.global func_8001C2E0
.global func_8001C2E8
.global func_8001C2F0
.global func_8001C2F8
.global func_8001C300
.global func_8001C308
.global func_8001C310
.global func_8001C33C
.global func_8001C344
.global func_8001C34C
.global func_8001C354
.global func_8001C35C
.global func_8001C364
.global func_8001C36C
.global func_8001C374
.global func_8001C37C
.global func_8001C42C
.global func_8001C770
.global func_8001CAD0
.global func_8001D2F0
.global func_8001D408
.global func_8001D5A4
.global func_8001E5E4
.global func_8001E6E8
.global func_8001E6FC
.global func_8001E93C
.global func_8001F6AC
.global func_8001FFCC
.global func_80020104
.global func_800204FC
.global func_800205CC
.global func_8002122C
.global func_800218AC
.global func_80021A74
.global func_80021D94
.global func_80022450
.global func_80022754
.global func_80023D5C
.global func_80023FB4
.global func_80024180

# unsorted other stuff (mainly libultra)
.global func_80035070
.global func_800354B0
.global func_80035650
.global func_80035FD0
.global func_80036D40
.global func_80036F30
.global func_800393D0

# known to be libultra (sdk version 2.0??)
.global osSetIntMask
.global osCreatePiManager
.global osEPiStartDma
.global osEPiLinkHandle
.global osAiGetLength
.global osAiGetStatus
.global osAiSetFrequency
.global alFxNew
.global alEnvmixerNew
.global alLoadNew
.global alResampleNew
.global alAuxBusNew
.global alMainBusNew
.global alSaveNew
.global alAdpcmPull
.global alRaw16Pull
.global alLoadParam
.global alAuxBusPull
.global alAuxBusParam
.global alFilterNew
.global alMainBusPull
.global alMainBusParam
.global alResamplePull
.global alResampleParam
.global alInit
.global alClose
.global alLink
.global alUnlink
.global alHeapInit
.global alHeapDBAlloc
.global alCopy
.global alSynNew
.global alAudioFrame
.global sub_8002FFDC
.global __freeParam
.global _collectPVoices
.global _freePVoice
.global sub_800300B4
.global sub_800300FC
.global sub_80030148
.global alSynDelete
.global sub_800301B0
.global osInvalDCache
.global osInvalICache
.global osWritebackDCache
.global osWritebackDCacheAll
.global osContStartQuery
.global osContGetQuery
.global osContStartReadData
.global osContGetReadData
.global sub_800305F4
.global osContInit
.global __osContGetInitData
.global __osPackRequestData
.global osContSetCh
.global osVirtualToPhysical
.global sqrtf
.global guAlignF
.global guAlign
.global fcos
.global guLookAtF
.global guLookAt
.global guOrthoF
.global guOrtho
.global guPerspectiveF
.global guPerspective
.global guPositionF
.global guPosition
.global guRandom
.global fsin
.global bcopy
.global bzero
.global sub_800325FC
.global osCreateMesgQueue
.global osJamMesg
.global osRecvMesg
.global osSendMesg
.global sub_800329E0
.global osSpTaskLoad
.global osSpTaskStartGo
.global osSpTaskYield
.global osSpTaskYielded
.global sub_80032D40
.global __osPiCreateAccessQueue_0
.global __osPiGetAccess_0
.global __osPiRelAccess_0
.global sub_80032EE0
.global sub_80032F4C
.global osCreateThread
.global osGetThreadPri
.global osSetThreadPri
.global osStartThread
.global __osDequeueThread
.global osYieldThread
.global osGetTime
.global osSetTime
.global __osTimerServicesInit
.global __osTimerInterrupt
.global __osSetTimerIntr
.global sub_80033710
.global __osProbeTLB
.global sub_800338E0
.global sub_80033920
.global sub_80033960
.global sub_80033B00
.global sub_80033C78
.global osViSetEvent
.global osViSetMode
.global osViSetSpecialFeatures
.global osViSetYScale
.global osViSwapBuffer
.global sub_80033F60
.global osViBlack
.global sub_800342E0
.global sub_80034340
.global sub_800343C0
.global sub_800344C0
.global sub_80034520
.global sub_80034580
.global sub_800345E0
.global sub_80034690
.global sub_800347D4
.global sub_80034A20
.global sub_80034D2C
.global sub_80034E50
.global sub_80034FFC
.global osPfsIsPlug
.global __osPfsRequestData
.global __osPfsGetInitData
.global osPfsFreeBlocks
.global osPfsNumFiles
.global osPfsInitPak
.global osPfsRepairId
.global osAckRamromRead_0
.global __osException
.global __osSetGlobalIntMask
.global __osResetGlobalIntMask
.global osPiRawStartDma
.global osPiGetCmdQueue
.global __osAiDeviceBusy
.global bcmp
.global __osGetCause
.global osGetCount
.global __osGetSR
.global __osSetCompare
.global __osSetFpcCsr
.global __osSetSR
.global __osSpDeviceBusy
.global __osSpGetStatus
.global __osSpSetStatus
.global __osSpSetPc
.global osDestroyThread
.global osMapTLBRdb
.global osUnmapTLBAll
.global __osViInit
.global __osSiDeviceBusy

# todo: unsorted main data
.global ID2List_AJPW1
.global ID2List_AJPW2
.global ID2List_AJPW3
.global ID2List_NSW1
.global ID2List_NSW2
.global ID2List_NSW3
.global ID2List_DAW
.global ID2List_ILW
.global ID2List_JUNKS
.global ID2List_Perfecshi
.global ID2List_Brand
.global ID2List_Battration
.global ID2List_Legend1
.global ID2List_Legend2
.global ID2List_Legend3
.global ID2List_Edit1
.global ID2List_Edit2
.global WrestlerData_0000
.global WrestlerData_0001
.global WrestlerData_0002
.global ptrTbl_WrestlerData
.global StableDefs
.global ptrTbl_AttireExtraTextures
.global ptrTbl_AttireExtraModels
.global ptrTbl_BodyTypeModelsMain
.global ptrTbl_BodyTypeModelsSecond
.global ptrTbl_BodyTypeTextures
.global ptrTbl_RingAttireModels
.global ptrTbl_RingAttireTextures
.global ptrTbl_UpperAttireModels
.global ptrTbl_UpperAttireTextures

