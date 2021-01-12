# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
# 46 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h" 1
# 124 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 1
# 64 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 1
# 116 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
# 49 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Ifx_Cfg.h" 1
# 50 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 84 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 1
# 49 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 50 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 2
# 85 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 140 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h" 1
# 101 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
typedef unsigned char boolean;



typedef unsigned char uint8;



typedef unsigned short uint16;



typedef unsigned long uint32;




typedef unsigned long long uint64;



typedef signed char sint8;



typedef short sint16;




typedef long sint32;






typedef long long sint64;



typedef unsigned long uint8_least;



typedef unsigned long uint16_least;



typedef unsigned long uint32_least;



typedef signed long sint8_least;



typedef signed long sint16_least;



typedef signed long sint32_least;




typedef float float32;




typedef double float64;
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;
typedef void (*voidfuncvoid) (void);

typedef struct
{
    float32 real;
    float32 imag;
} cfloat32;

typedef struct
{
    sint32 real;
    sint32 imag;
} csint32;

typedef struct
{
    sint16 real;
    sint16 imag;
} csint16;

typedef sint64 Ifx_TickTime;
# 92 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 164 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;
# 178 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count
} Ifx_Pwm_Mode;
# 196 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 47 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 48 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 197 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2
# 208 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef struct
{
  fract real;
  fract imag;
} cfract;

typedef struct
{
    sfract real;
    sfract imag;
} csfract;
# 117 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 2

typedef void *IfxStdIf_InterfaceDriver;
# 65 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 2






typedef struct IfxStdIf_DPipe_ IfxStdIf_DPipe;

typedef volatile boolean *IfxStdIf_DPipe_WriteEvent;
typedef volatile boolean *IfxStdIf_DPipe_ReadEvent;
# 92 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Write)(IfxStdIf_InterfaceDriver stdIf, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 107 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Read)(IfxStdIf_InterfaceDriver stdIf, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);







typedef sint32 (*IfxStdIf_DPipe_GetReadCount)(IfxStdIf_InterfaceDriver stdIf);







typedef IfxStdIf_DPipe_ReadEvent (*IfxStdIf_DPipe_GetReadEvent)(IfxStdIf_InterfaceDriver stdIf);







typedef uint32 (*IfxStdIf_DPipe_GetSendCount)(IfxStdIf_InterfaceDriver stdIf);







typedef Ifx_TickTime (*IfxStdIf_DPipe_GetTxTimeStamp)(IfxStdIf_InterfaceDriver stdIf);







typedef sint32 (*IfxStdIf_DPipe_GetWriteCount)(IfxStdIf_InterfaceDriver stdIf);







typedef IfxStdIf_DPipe_WriteEvent (*IfxStdIf_DPipe_GetWriteEvent)(IfxStdIf_InterfaceDriver stdIf);
# 166 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanReadCount)(IfxStdIf_InterfaceDriver stdIf, Ifx_SizeT count, Ifx_TickTime timeout);
# 177 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanWriteCount)(IfxStdIf_InterfaceDriver stdIf, Ifx_SizeT count, Ifx_TickTime timeout);
# 186 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_FlushTx)(IfxStdIf_InterfaceDriver stdIf, Ifx_TickTime timeout);






typedef void (*IfxStdIf_DPipe_ClearRx)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_DPipe_ClearTx)(IfxStdIf_InterfaceDriver stdIf);







typedef void (*IfxStdIf_DPipe_OnReceive)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_DPipe_OnTransmit)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_DPipe_OnError)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_DPipe_ResetSendCount)(IfxStdIf_InterfaceDriver stdIf);



struct IfxStdIf_DPipe_
{
    IfxStdIf_InterfaceDriver driver;
    boolean txDisabled;


    IfxStdIf_DPipe_Write write;
    IfxStdIf_DPipe_Read read;
    IfxStdIf_DPipe_GetReadCount getReadCount;
    IfxStdIf_DPipe_GetReadEvent getReadEvent;
    IfxStdIf_DPipe_GetWriteCount getWriteCount;
    IfxStdIf_DPipe_GetWriteEvent getWriteEvent;
    IfxStdIf_DPipe_CanReadCount canReadCount;
    IfxStdIf_DPipe_CanWriteCount canWriteCount;
    IfxStdIf_DPipe_FlushTx flushTx;
    IfxStdIf_DPipe_ClearTx clearTx;
    IfxStdIf_DPipe_ClearRx clearRx;
    IfxStdIf_DPipe_OnReceive onReceive;
    IfxStdIf_DPipe_OnTransmit onTransmit;
    IfxStdIf_DPipe_OnError onError;

    IfxStdIf_DPipe_GetSendCount getSendCount;
    IfxStdIf_DPipe_GetTxTimeStamp getTxTimeStamp;
    IfxStdIf_DPipe_ResetSendCount resetSendCount;
};




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_write(IfxStdIf_DPipe *stdIf, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdIf->write(stdIf->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_read(IfxStdIf_DPipe *stdIf, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdIf->read(stdIf->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getReadCount(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getReadCount(stdIf->driver);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getWriteCount(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getWriteCount(stdIf->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canReadCount(IfxStdIf_DPipe *stdIf, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdIf->canReadCount(stdIf->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canWriteCount(IfxStdIf_DPipe *stdIf, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdIf->canWriteCount(stdIf->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_ReadEvent IfxStdIf_DPipe_getReadEvent(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getReadEvent(stdIf->driver);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_WriteEvent IfxStdIf_DPipe_getWriteEvent(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getWriteEvent(stdIf->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_flushTx(IfxStdIf_DPipe *stdIf, Ifx_TickTime timeout)
{
    return stdIf->flushTx(stdIf->driver, timeout);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearTx(IfxStdIf_DPipe *stdIf)
{
    stdIf->clearTx(stdIf->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearRx(IfxStdIf_DPipe *stdIf)
{
    stdIf->clearRx(stdIf->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onReceive(IfxStdIf_DPipe *stdIf)
{
    stdIf->onReceive(stdIf->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onTransmit(IfxStdIf_DPipe *stdIf)
{
    stdIf->onTransmit(stdIf->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onError(IfxStdIf_DPipe *stdIf)
{
    stdIf->onError(stdIf->driver);
}




static inline __attribute__ ((always_inline)) uint32 IfxStdIf_DPipe_getSendCount(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getSendCount(stdIf->driver);
}




static inline __attribute__ ((always_inline)) Ifx_TickTime IfxStdIf_DPipe_getTxTimeStamp(IfxStdIf_DPipe *stdIf)
{
    return stdIf->getTxTimeStamp(stdIf->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_resetSendCount(IfxStdIf_DPipe *stdIf)
{
    stdIf->resetSendCount(stdIf->driver);
}


extern void IfxStdIf_DPipe_print(IfxStdIf_DPipe *stdIf, pchar format, ...);
# 125 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h" 2
# 160 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
typedef enum
{
    Ifx_Shell_ResultCode_unknown = (128),
    Ifx_Shell_ResultCode_nok = (129),
    Ifx_Shell_ResultCode_undefined = (130),
    Ifx_Shell_ResultCode_ok = (255)
} Ifx_Shell_ResultCode;


typedef boolean (*Ifx_Shell_Call)(pchar args, void *data, IfxStdIf_DPipe *io);


typedef struct
{
    pchar commandLine;
    pchar help;
    void *data;
    Ifx_Shell_Call call;
} Ifx_Shell_Command;


typedef struct
{
    char *cmdStr;
    Ifx_SizeT cursor;
    Ifx_SizeT length;
    boolean historyAdd;
    Ifx_SizeT historyItem;
} Ifx_Shell_CmdLine;


typedef enum
{
    IFX_SHELL_CMD_STATE_NORMAL,
    IFX_SHELL_CMD_STATE_ESCAPE,
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET,
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET_NUMBER
} Ifx_Shell_CmdState;


typedef struct
{
    boolean (*start)(void *protocol, IfxStdIf_DPipe *io);
    void (*execute)(void *protocol);
    void (*onStart)(void *protocol, void *data);
    void *onStartData;
    void *object;
    boolean started;
} Ifx_Shell_Protocol;


typedef struct
{
    uint16 showPrompt : 1;
    uint16 enabled : 1;
    uint16 sendResultCode : 1;
    uint16 echo : 1;
    uint16 echoError : 1;
} Ifx_Shell_Flags;


typedef struct
{
    char echo[2];
    char inputbuffer[(128) + 1];
    char cmdStr[(128)];
    Ifx_Shell_CmdState cmdState;
    char escBracketNum;
} Ifx_Shell_Runtime;

typedef Ifx_Shell_Command *Ifx_Shell_CommandList;
typedef const Ifx_Shell_Command *Ifx_Shell_CommandListConst;



typedef struct
{
    IfxStdIf_DPipe *io;

    Ifx_Shell_Flags control;


    char *cmdHistory[(10)];


    Ifx_Shell_CmdLine cmd;

    Ifx_Shell_Runtime locals;
# 256 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
    Ifx_Shell_CommandListConst commandList[(1)];

    Ifx_Shell_Protocol protocol;
} Ifx_Shell;




typedef struct
{
    IfxStdIf_DPipe *standardIo;
    boolean echo;
    boolean showPrompt;
    boolean sendResultCode;
    Ifx_Shell_CommandListConst commandList[(1)];
    Ifx_Shell_Protocol protocol;
} Ifx_Shell_Config;




typedef struct
{
    pchar syntax;
    pchar description;
} Ifx_Shell_Syntax;
# 294 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
void Ifx_Shell_initConfig(Ifx_Shell_Config *config);






extern boolean Ifx_Shell_init(Ifx_Shell *shell, const Ifx_Shell_Config *config);





extern void Ifx_Shell_deinit(Ifx_Shell *shell);





extern void Ifx_Shell_enable(Ifx_Shell *shell);





extern void Ifx_Shell_disable(Ifx_Shell *shell);
# 329 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern void Ifx_Shell_process(Ifx_Shell *shell);
# 341 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern pchar Ifx_Shell_skipWhitespace(pchar args);







extern boolean Ifx_Shell_matchToken(pchar *argsPtr, pchar token);
# 358 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern boolean Ifx_Shell_parseToken(pchar *argsPtr, char *tokenBuffer, int bufferLength);






extern boolean Ifx_Shell_parseAddress(pchar *argsPtr, void **address);






extern boolean Ifx_Shell_parseSInt32(pchar *argsPtr, sint32 *value);







extern boolean Ifx_Shell_parseUInt32(pchar *argsPtr, uint32 *value, boolean hex);






extern boolean Ifx_Shell_parseSInt64(pchar *argsPtr, sint64 *value);







extern boolean Ifx_Shell_parseUInt64(pchar *argsPtr, uint64 *value, boolean hex);






extern boolean Ifx_Shell_parseFloat64(pchar *argsPtr, float64 *value);






extern boolean Ifx_Shell_parseFloat32(pchar *argsPtr, float32 *value);
# 423 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern const Ifx_Shell_Command *Ifx_Shell_commandFind(Ifx_Shell_CommandListConst commandList, pchar commandLine, pchar *args, uint32 *match);
# 432 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern boolean Ifx_Shell_showHelpSingle(Ifx_Shell_CommandListConst commandList, IfxStdIf_DPipe *io, boolean briefOnly, boolean singleCommand);







extern boolean Ifx_Shell_showHelp(pchar args, void *shellPtr, IfxStdIf_DPipe *io);






extern void Ifx_Shell_printSyntax(const Ifx_Shell_Syntax *syntaxList, IfxStdIf_DPipe *io);
# 460 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.h"
extern boolean Ifx_Shell_protocolStart(pchar args, void *data, IfxStdIf_DPipe *io);







extern boolean Ifx_Shell_bbProtocolStart(pchar args, void *data, IfxStdIf_DPipe *io);
# 47 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 54 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 55 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 2
# 48 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2






# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 62 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");
# 242 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
}
# 63 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 75 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx__jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void Ifx__moveToDataParam0(unsigned int var)
{
 __asm__ volatile ("mov\t %%d4, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) void Ifx__moveToDataParamRet(unsigned int var)
{
 __asm__ volatile ("mov\t %%d2, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) unsigned int Ifx__getDataParamRet(void)
{
 unsigned int var;
 __asm__ volatile (" mov\t %0, %%d2":"=d"(var));
 return var;
}

static inline __attribute__ ((always_inline)) void Ifx__moveToAddrParam0(const void *var)
{
 __asm__ volatile ("mov.aa\t %%a4, %0"::"a"(var));
}

static inline __attribute__ ((always_inline)) void Ifx__jumpToFunction(const void *fun)
{
 __asm__ volatile ("ji %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void Ifx__jumpToFunctionWithLink(const void *fun)
{
 Ifx__jump_and_link((void (*)(void))fun);
}

static inline __attribute__ ((always_inline)) void Ifx__jumpBackToLink(void)
{
 __asm__ volatile ("ji %a11");
}
# 151 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 Ifx__maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 Ifx__mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 241 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 Ifx__clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %1,%1,16    \n                      cls  %0,%1":"=d"(res):"d"(a):"memory");

    return res;
}



static inline __attribute__ ((always_inline)) float Ifx__fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract Ifx__float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__fract_to_sfract(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    extr  %0,%0,0x10,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__float_to_sfract(float a)
{
    fract tmp = Ifx__float_to_fract(a);
    return Ifx__fract_to_sfract(tmp);
}



static inline __attribute__ ((always_inline)) fract Ifx__getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("sh  %1,%1,16        \n                       maddrs.q  %0,%1,%2L,%3L,1        \n                       sh %0,%0,-16":"=d"(res):"d"(a),

                                                       "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("sh  %1,%1,16        \n                      madds.q  %0,%1,%2L,%3L,1        \n                      sh %0,%0,-16":"=d"(res):"d"(a),

                                                      "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long Ifx__mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long Ifx__mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 \n					sh  %0,%0,-16"



                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16    \n                       sh  %0,%1,-16":"=d"(res):"d"(a):"memory");

    return res;
}



static inline __attribute__ ((always_inline)) sint16 Ifx__sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %1,%1,16    \n                       sh  %0,%1,-16":"=d"(res):"d"(a):"memory");

    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %1,%1,16    \n                       sh  %0,%1,-16":"=d"(res):"d"(a):"memory");

    return res;
}



static inline __attribute__ ((always_inline)) laccum Ifx__shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract Ifx__shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract Ifx__u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16    \n                       sh  %0,%1,-16":"=d"(res):"d"(a):"memory");

    return res;
}
# 433 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 471 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%3  \n                     mov %%d15,%4  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 523 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void Ifx__restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 557 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx__cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void Ifx__cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* Ifx__cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 Ifx__mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 619 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb Ifx__absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 Ifx__extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 Ifx__extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 Ifx__getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 Ifx__getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 Ifx__getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 Ifx__gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 Ifx__gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw Ifx__initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw Ifx__insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw Ifx__insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb Ifx__minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb Ifx__minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw Ifx__minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw Ifx__minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void Ifx__setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1254 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double Ifx__fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float Ifx__fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1325 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 Ifx__satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 Ifx__satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 Ifx__sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 Ifx__sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1378 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 Ifx__adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 Ifx__subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 Ifx__subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1424 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx__debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}







static inline __attribute__ ((always_inline)) void Ifx__dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void Ifx__nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void Ifx__rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void Ifx__svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 Ifx__swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1508 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx__stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int Ifx__cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{

  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 1547 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 Ifx__fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}

static inline __attribute__ ((always_inline)) void* Ifx__getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void Ifx__setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}

static inline __attribute__ ((always_inline)) uint32 Ifx__crc32(uint32 b, uint32 a)
{
    uint32 returnvalue = 0;

    __asm__ volatile ("CRC32 %0,%1,%2" : "=d" (returnvalue) : "d"(b), "d"(a));

   return returnvalue;
}

static inline __attribute__ ((always_inline)) uint32 IfxCpu_calculateCrc32(uint32 *startaddress, uint8 length)
{
    uint32 returnvalue = 0;
    for (;length > 0; length--)
    {

        __asm__ ("CRC32 %0,%0,%1" : "+d" (returnvalue) : "d" (*startaddress));
        startaddress++;
    }
    return returnvalue;
}

static inline __attribute__ ((always_inline)) uint32 IfxCpu_getRandomVal(uint32 a, uint32 x, uint32 m)
{
 uint32 result;
    __asm("      mul.u     %%e14,%1,%2       # d15 = Eh; d14 = El    \n"
        "        mov       %%d12,%%d14       #   e12 = El            \n"
        "        mov       %%d13, 0          #                       \n"
        "        madd.u    %%e14,%%e12,%%d15, 5 # e14 = El + 5 * d15    \n"
        " cmp_m_%=: jge.u     %%d14,%3,sub_m_%=    #                       \n"
        "        jz        %%d15,done_%=        #                       \n"
        " sub_m_%=: subx      %%d14,%%d14,%3    #  e12=e12-m            \n"
        "        subc      %%d15,%%d15,%%d13 # d13=d13-0             \n"
        "        loopu     cmp_m_%=             #                       \n"
        " done_%=:  mov       %0,%%d14          #                       \n"
        : "=d"(result) : "d"(a), "d"(x), "d"(m) : "d12","d13","d14","d15");
    return result;
}

static inline __attribute__ ((always_inline)) sint32 Ifx__popcnt(sint32 a)
{
 sint32 res;
 __asm__ volatile ("popcnt %0,%1":"=d"(res):"d"(a));
  return res;
}



static inline __attribute__ ((always_inline)) void Ifx__cacheai(uint8* p)
{
    __asm__ volatile("cachea.i [%0]0"::"a"(p));
}
# 58 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 91 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = Ifx__extru(cx, 16, 4);
    return (void *)Ifx__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = Ifx__extru((int)addr, 28, 4) << 16;
    seg_idx = Ifx__extru((int)addr, 6, 16);
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 49 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3


# 51 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 2 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\stdlib.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 2 3
# 27 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 52 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 1 3
# 34 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 40 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3

# 53 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c" 2
# 77 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
char Ifx_Shell_cmdBuffer[(128) * (10)];

void Ifx_Shell_execute(Ifx_Shell *shell, pchar commandLine);
void Ifx_Shell_cmdEscapeProcess(Ifx_Shell *shell, char EscapeChar1, char EscapeChar2);
const Ifx_Shell_Command *Ifx_Shell_commandListFind(Ifx_Shell *shell, pchar commandLine, pchar *args, Ifx_Shell_CommandListConst *commandList);
static boolean Ifx_Shell_matchCommand(pchar *argsPtr, pchar *match);






boolean Ifx_Shell_isEndOfLine(pchar args)
{
    return ((args == ((void *)0)) || (*args == '\0')) ? (1u) : (0u);
}


static boolean Ifx_Shell_writeResult(Ifx_Shell *shell, Ifx_SizeT Code)
{
    Ifx_SizeT length = sizeof(Code);
    boolean result = IfxStdIf_DPipe_write(shell->io, &Code, &length, ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL));

    ((void)0);

    return result;
}



boolean Ifx_Shell_showHelpSingle(Ifx_Shell_CommandListConst commandList, IfxStdIf_DPipe *io, boolean briefOnly, boolean singleCommand)
{
    const Ifx_Shell_Command *command = commandList;
    uint32 index = 0;
    pchar space = "";
    pchar spaceParam = "";

    while (command->commandLine != ((void *)0))
    {
        pchar help = command->help;
        pchar chunk;
        boolean isParam = (0u);
        boolean isSyntax = (0u);
        IfxStdIf_DPipe_print(io, "%s%s", space, command->commandLine);

        while (*help != '\0')
        {
            Ifx_SizeT count;
            pchar matchp = "/p";
            pchar matchs = "/s";
                 spaceParam = "";

            if (Ifx_Shell_matchCommand(&help, &matchp))
            {
                isParam = (1u);
                isSyntax = (0u),
                spaceParam = "      ";
            }
            else if (Ifx_Shell_matchCommand(&help, &matchs))
            {
                isParam = (0u);
                isSyntax = (1u),
                spaceParam = "    SYNTAX: ";
            }
            else
            {
                if (isParam)
                {
                    spaceParam = "        ";
                }
                else if (isSyntax)
                {
                    spaceParam = "            ";
                }
            }


            chunk = strstr(help, "\r\n");

            if (chunk == ((void *)0))
            {
                chunk = help + strlen(help);
            }
            else
            {
                if (!briefOnly)
                {
                    chunk += strlen("\r\n");
                }
            }

            count = chunk - help;
            IfxStdIf_DPipe_print(io, "%s%s", space, spaceParam);
            IfxStdIf_DPipe_write(io, (void *)help, &count, ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL));

            help += count;

            if (briefOnly)
            {
                break;
            }
        }

        IfxStdIf_DPipe_print(io, "\r\n");

        if ((command->call == ((void *)0)) && (index == 0))
        {
            index = 1;
            space = "  ";
        }

        command = &command[1];

        if (singleCommand)
        {
            break;
        }
    }

    return (1u);
}


boolean Ifx_Shell_showHelpSingleCommand(pchar args, void *shellPtr, IfxStdIf_DPipe *io)
{
    Ifx_Shell_CommandListConst commandList;
    const Ifx_Shell_Command *shellCommand = Ifx_Shell_commandListFind(shellPtr, args, &args, &commandList);

    if (shellCommand != ((void *)0))
    {
        if (shellCommand->call == ((void *)0))
        {
            Ifx_Shell_showHelpSingle(commandList, io, (0u), (0u));
        }
        else
        {
            if (commandList->call == ((void *)0))
            {
                IfxStdIf_DPipe_print(io, "%s ", commandList->commandLine);
            }

            Ifx_Shell_showHelpSingle(shellCommand, io, (0u), (1u));
        }

        return (1u);
    }
    else
    {
        IfxStdIf_DPipe_print(io, "unknown command");
        return (0u);
    }
}


boolean Ifx_Shell_showHelp(pchar args, void *shellPtr, IfxStdIf_DPipe *io)
{
    sint32 i;
    Ifx_Shell *shell = shellPtr;
    boolean result = (1u);

    if (*args == '\0')
    {
        for (i = 0; i < (1); i++)
        {
            if (shell->commandList[i] != ((void *)0))
            {
                Ifx_Shell_showHelpSingle(shell->commandList[i], io, (1u), (0u));
            }
        }
    }
    else
    {
        result = Ifx_Shell_showHelpSingleCommand(args, shellPtr, io);
    }

    return result;
}


boolean Ifx_Shell_protocolStart(pchar args, void *data, IfxStdIf_DPipe *io)
{
    Ifx_Shell *shell = data;
    boolean Result = (1u);

    if (Ifx_Shell_matchToken(&args, "?") != (0u))
    {
        IfxStdIf_DPipe_print(io, "Syntax     : protocol start" "\r\n");
        IfxStdIf_DPipe_print(io, "           > start a protocol" "\r\n");
    }
    else if (Ifx_Shell_matchToken(&args, "start") != (0u))
    {
        if ((shell->protocol.start != ((void *)0)) && (shell->protocol.object != ((void *)0)))
        {
            Result = shell->protocol.start(shell->protocol.object, io);
            shell->protocol.started = (Result != (0u));

            if (shell->protocol.onStart != ((void *)0))
            {
                shell->protocol.onStart(shell->protocol.object, shell->protocol.onStartData);
            }
        }
        else
        {
            Result = (0u);
        }
    }
    else
    {}

    return Result;
}


boolean Ifx_Shell_bbProtocolStart(pchar args, void *data, IfxStdIf_DPipe *io)
{
    boolean result = (1u);

    if (Ifx_Shell_matchToken(&args, "?") != (0u))
    {
        IfxStdIf_DPipe_print(io, "Syntax     : protocol start" "\r\n");
        IfxStdIf_DPipe_print(io, "           > start a protocol" "\r\n");
    }
    else if (Ifx_Shell_matchToken(&args, "protocol") != (0u))
    {
        result = Ifx_Shell_protocolStart(args, data, io);
    }
    else
    {}

    return result;
}



void Ifx_Shell_initConfig(Ifx_Shell_Config *config)
{
    uint32 i;

    for (i = 0; i < (1); i++)
    {
        config->commandList[i] = ((void *)0);
    }

    config->standardIo = ((void *)0);
    config->echo = (1u);
    config->protocol.execute = ((void *)0);
    config->protocol.object = ((void *)0);
    config->protocol.onStart = ((void *)0);
    config->protocol.onStartData = ((void *)0);
    config->protocol.start = ((void *)0);
    config->protocol.started = (0u);
    config->sendResultCode = (0u);
    config->showPrompt = (1u);
    config->standardIo = ((void *)0);
}


boolean Ifx_Shell_init(Ifx_Shell *shell, const Ifx_Shell_Config *config)
{
    sint32 i;
    char **CmdHistory = ((void *)0);


    memset(shell, 0, sizeof(*shell));

    shell->protocol = config->protocol;
    shell->protocol.started = (0u);

    shell->io = config->standardIo;
    shell->control.showPrompt = config->showPrompt;
    shell->control.sendResultCode = config->sendResultCode;
    shell->control.echo = config->echo;
    shell->control.echoError = (1u);
    shell->control.enabled = (1u);

    shell->locals.escBracketNum = '\0';
    shell->locals.cmdState = IFX_SHELL_CMD_STATE_NORMAL;


    shell->cmd.cmdStr = shell->locals.cmdStr;


    memset(Ifx_Shell_cmdBuffer, 0, sizeof(Ifx_Shell_cmdBuffer));
    shell->cmdHistory[0] = &Ifx_Shell_cmdBuffer[0];

    for (i = 0; i < (1); i++)
    {
        shell->commandList[i] = config->commandList[i];
    }


    CmdHistory = shell->cmdHistory;

    for (i = 1; i < (10); i++)
    {
        CmdHistory[i] = &CmdHistory[i - 1][(128)];
    }

    shell->cmd.historyItem = (-1);


    strcpy(CmdHistory[0], "help");


    if (shell->control.showPrompt != 0)
    {
        IfxStdIf_DPipe_print(shell->io, "\r\n");
        IfxStdIf_DPipe_print(shell->io, "Shell>");
    }

    return (1u);
}


void Ifx_Shell_process(Ifx_Shell *shell)
{
    Ifx_SizeT i, j;
    Ifx_SizeT count;
    Ifx_SizeT readCount;
    boolean NormalKeyPress;

    Ifx_Shell_CmdLine *Cmd = &shell->cmd;
    char *inputbuffer = shell->locals.inputbuffer;
    char *cmdStr = shell->locals.cmdStr;
    char **CmdHistory = shell->cmdHistory;

    if (shell->control.enabled == 0)
    {
        return;
    }

    if ((shell->protocol.object != ((void *)0)) && (shell->protocol.started != (0u)))
    {
        shell->protocol.execute(shell->protocol.object);
    }
    else
    {
# 429 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
        count = 0;
        readCount = (128) - count;
        IfxStdIf_DPipe_read(shell->io, &inputbuffer[count], &readCount, ((Ifx_TickTime)0x0000000000000000LL));
        count += readCount;

        for (i = 0; i < count; i++)
        {

            NormalKeyPress = (0u);


            switch (inputbuffer[i])
            {

            case '\n':
            case '\r':

                {if (shell->control.echo) {IfxStdIf_DPipe_print(shell->io, "\r\n"); }}



                if (Cmd->length < (128))
                {
                    cmdStr[Cmd->length] = '\0';

                    if (Cmd->historyAdd != (0u))
                    {

                        for (j = (10) - 1; j > 0; j--)
                        {

                            strncpy(CmdHistory[j], CmdHistory[j - 1], (128));
                        }


                        strncpy(CmdHistory[0], cmdStr, (128));
                    }


                    Ifx_Shell_execute(shell, cmdStr);
                }


                if (shell->control.showPrompt != 0)
                {
                    IfxStdIf_DPipe_print(shell->io, "Shell>");
                }


                Cmd->length = 0;


                Cmd->cursor = 0;


                Cmd->historyAdd = (0u);


                Cmd->historyItem = (-1);
                break;


            case '\b':

                if (Cmd->cursor > 0)
                {

                    if (shell->control.echo != 0)
                    {

                        IfxStdIf_DPipe_print(shell->io, "\b");


                        for (j = Cmd->cursor; j < Cmd->length; j++)
                        {
                            IfxStdIf_DPipe_print(shell->io, "%c", cmdStr[j]);
                        }


                        IfxStdIf_DPipe_print(shell->io, " ");
                        {int ii; for (ii = 0; ii < ((Cmd->length - Cmd->cursor) + 1); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                    }


                    strncpy(&cmdStr[Cmd->cursor - 1], &cmdStr[Cmd->cursor], Cmd->length - Cmd->cursor);


                    cmdStr[Cmd->length - 1] = '\0';

                    Cmd->length--;
                    Cmd->cursor--;


                    Cmd->historyAdd = (1u);
                }

                break;


            case '\x1B':
                shell->locals.cmdState = IFX_SHELL_CMD_STATE_ESCAPE;
                break;


            case '[':

                if (shell->locals.cmdState == IFX_SHELL_CMD_STATE_ESCAPE)
                {

                    shell->locals.cmdState = IFX_SHELL_CMD_STATE_ESCAPE_BRACKET;
                }
                else
                {
                    NormalKeyPress = (1u);
                }

                break;


            case 'A':
            case 'B':
            case 'C':
            case 'D':

                if (shell->locals.cmdState == IFX_SHELL_CMD_STATE_ESCAPE_BRACKET)
                {

                    Ifx_Shell_cmdEscapeProcess(shell, inputbuffer[i], 0);


                    shell->locals.cmdState = IFX_SHELL_CMD_STATE_NORMAL;
                }
                else
                {
                    NormalKeyPress = (1u);
                }

                break;


            case '1':
            case '2':
            case '3':
            case '4':

                if (shell->locals.cmdState == IFX_SHELL_CMD_STATE_ESCAPE_BRACKET)
                {

                    shell->locals.escBracketNum = inputbuffer[i];
                    shell->locals.cmdState = IFX_SHELL_CMD_STATE_ESCAPE_BRACKET_NUMBER;
                }
                else
                {
                    NormalKeyPress = (1u);
                }

                break;


            case '~':

                if (shell->locals.cmdState == IFX_SHELL_CMD_STATE_ESCAPE_BRACKET_NUMBER)
                {

                    Ifx_Shell_cmdEscapeProcess(shell, shell->locals.escBracketNum, '~');


                    shell->locals.cmdState = IFX_SHELL_CMD_STATE_NORMAL;
                }
                else
                {
                    NormalKeyPress = (1u);
                }

                break;


            default:
                NormalKeyPress = (1u);
                break;
            }

            ((void)0);



            if (NormalKeyPress != (0u))
            {

                shell->locals.cmdState = IFX_SHELL_CMD_STATE_NORMAL;


                if (Cmd->length < ((128) - 1))
                {

                    Cmd->historyAdd = (1u);


                    cmdStr[Cmd->cursor] = inputbuffer[i];
                    Cmd->cursor++;


                    Cmd->length = Ifx__max(Cmd->length, Cmd->cursor);

                    if (shell->control.echo != 0)
                    {

                        shell->locals.echo[0] = inputbuffer[i];
                        IfxStdIf_DPipe_print(shell->io, shell->locals.echo);
                    }
                }
                else
                {

                    Cmd->historyAdd = (0u);
                }
            }
        }
    }
}


void Ifx_Shell_deinit(Ifx_Shell *shell)
{
    (void)shell;

}


pchar Ifx_Shell_skipWhitespace(pchar args)
{
    if (args != ((void *)0))
    {
        while ((*args != '\0') && ((((*args) == ' ') || ((*args) == '\t'))))
        {
            args = &args[1];
        }
    }

    return args;
}


boolean Ifx_Shell_matchToken(pchar *argsPtr, pchar token)
{
    pchar savedArguments = *argsPtr;
    char buffer[256];
    boolean result = (0u);

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) != (0u))
    {
        if (strcmp(token, buffer) == 0)
        {
            result = (1u);
        }
    }

    if (result == (0u))
    {

        *argsPtr = savedArguments;
    }

    return result;
}


static boolean Ifx_Shell_matchCommand(pchar *argsPtr, pchar *match)
{
    boolean result = (0u);
    pchar savedArguments = *argsPtr;
    pchar savedMatch = *match;
    char buffer0[256];
    char buffer1[256];

    if ((Ifx_Shell_parseToken(argsPtr, buffer0, (sizeof(buffer0) / sizeof(buffer0[0]))) != (0u))
        && (Ifx_Shell_parseToken(match, buffer1, (sizeof(buffer1) / sizeof(buffer1[0]))) != (0u)))
    {
        if (strcmp(buffer1, buffer0) == 0)
        {
            result = (1u);
        }
    }

    if (result == (0u))
    {

        *argsPtr = savedArguments;
        *match = savedMatch;
    }

    return result;
}


boolean Ifx_Shell_parseToken(pchar *argsPtr, char *tokenBuffer, int bufferLength)
{
    int mindex = 0;
    pchar args = Ifx_Shell_skipWhitespace(*argsPtr);

    tokenBuffer[0] = '\0';

    if (args == ((void *)0))
    {
        return (0u);
    }

    if (*args == '\"')
    {
        args = &args[1];

        while ((*args != '\0') && (*args != '\"'))
        {
            if (mindex < bufferLength)
            {
                tokenBuffer[mindex] = *args;
                mindex++;
            }

            args = &args[1];
        }


        if (*args != '\"')
        {
            return (0u);
        }

        args = &args[1];
    }
    else
    {

        if (*args == '\0')
        {
            return (0u);
        }

        while ((*args != '\0') && (!(((*args) == ' ') || ((*args) == '\t'))))
        {
            if (mindex < bufferLength)
            {
                tokenBuffer[mindex] = *args;
                mindex++;
            }

            args = &args[1];
        }
    }


    if (bufferLength > 0)
    {
        tokenBuffer[Ifx__min(mindex, bufferLength - 1)] = '\0';
    }

    *argsPtr = Ifx_Shell_skipWhitespace(args);

    return (1u);
}


boolean Ifx_Shell_parseAddress(pchar *argsPtr, void **address)
{
    char buffer[32];
    boolean result;

    *address = 0;

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u))
    {
        result = (0u);
    }
    else
    {
        result = (buffer[0] != '\0') && (sscanf(buffer, "%x ", (unsigned int *)address) == 1);
    }

    return result;
}


boolean Ifx_Shell_parseSInt32(pchar *argsPtr, sint32 *value)
{
    sint64 value64;
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseSInt64(argsPtr, &value64) == (0u))
    {
        result = (0u);
    }
    else
    {
        *value = (sint32)value64;
        result = (1u);
    }

    return result;
}


boolean Ifx_Shell_parseUInt32(pchar *argsPtr, uint32 *value, boolean hex)
{
    uint64 value64;
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseUInt64(argsPtr, &value64, hex) == (0u))
    {
        result = (0u);
    }
    else
    {
        *value = (uint32)value64;
        result = (1u);
    }

    return result;
}


boolean Ifx_Shell_parseSInt64(pchar *argsPtr, sint64 *value)
{
    char buffer[64];
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u))
    {
        result = (0u);
    }
    else
    {
        result = (buffer[0] != '\0') && (sscanf(buffer, "%lld ", value) == 1);
    }

    return result;
}


boolean Ifx_Shell_parseUInt64(pchar *argsPtr, uint64 *value, boolean hex)
{
    char buffer[64];
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u))
    {
        result = (0u);
    }
    else
    {
        char *bufferPointer = buffer;

        if ((buffer[0] == '0') && (buffer[1] == 'x'))
        {
            bufferPointer = &bufferPointer[2];
            hex = (1u);
        }

        if (hex != (0u))
        {
            result = (bufferPointer[0] != '\0') && (sscanf(bufferPointer, "%llx ", value) == 1);
        }
        else
        {
            result = (bufferPointer[0] != '\0') && (sscanf(bufferPointer, "%llu ", value) == 1);
        }
    }

    return result;
}


boolean Ifx_Shell_parseFloat64(pchar *argsPtr, float64 *value)
{
    char buffer[64];
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u))
    {
        result = (0u);
    }
    else
    {
        result = (buffer[0] != '\0') && (sscanf(buffer, "%lf ", value) == 1);
    }

    return result;
}


boolean Ifx_Shell_parseFloat32(pchar *argsPtr, float32 *value)
{
    char buffer[64];
    boolean result;

    *value = 0;

    if (Ifx_Shell_parseToken(argsPtr, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u))
    {
        result = (0u);
    }
    else
    {
        result = (buffer[0] != '\0') && (sscanf(buffer, "%f ", value) == 1);
    }

    return result;
}


const Ifx_Shell_Command *Ifx_Shell_commandFind(Ifx_Shell_CommandListConst commandList, pchar commandLine, pchar *args, uint32 *match)
{
    const Ifx_Shell_Command *command = commandList;
    const Ifx_Shell_Command *result = ((void *)0);
    pchar cmdLineTemp = commandLine;
    uint32 matchInit = 0;
    uint32 index = 0;

    boolean hasPrefix;

    hasPrefix = (command->commandLine != ((void *)0)) && (command->call == ((void *)0));
    *match = 0;

    while (command->commandLine != ((void *)0))
    {
        pchar commandTemp = command->commandLine;
        pchar commandLineTemp = cmdLineTemp;
        char buffer[256];
        uint32 matchCount = matchInit;

        while (Ifx_Shell_matchCommand(&commandLineTemp, &commandTemp) != (0u))
        {
            matchCount++;
        }

        if ((matchCount > *match) && (Ifx_Shell_parseToken(&commandTemp, buffer, (sizeof(buffer) / sizeof(buffer[0]))) == (0u)))
        {
            if ((index == 0) && (command->call == ((void *)0)))
            {
                cmdLineTemp = commandLineTemp;
                matchInit = matchCount;
            }

            *match = matchCount;
            *args = commandLineTemp;
            result = command;
        }
        else
        {
            if ((index == 0) && hasPrefix)
            {

                break;
            }
        }

        command = &command[1];

        index++;
    }

    return result;
}


const Ifx_Shell_Command *Ifx_Shell_commandListFind(Ifx_Shell *shell, pchar commandLine, pchar *args, Ifx_Shell_CommandListConst *commandList)
{
    int i;
    const Ifx_Shell_Command *shellCommand = ((void *)0);
    const Ifx_Shell_Command *Command = ((void *)0);
    uint32 matchMax = 0;
    uint32 match;

    for (i = 0; i < (1); i++)
    {
        if (shell->commandList[i] != ((void *)0))
        {
            shellCommand = Ifx_Shell_commandFind(shell->commandList[i], commandLine, args, &match);

            if ((shellCommand != ((void *)0)) && (match > matchMax))
            {
                matchMax = match;
                Command = shellCommand;
                *commandList = shell->commandList[i];
            }
        }
    }

    return Command;
}


void Ifx_Shell_execute(Ifx_Shell *shell, pchar commandLine)
{
    pchar args = ((void *)0);
    Ifx_Shell_CommandListConst commandList;
    const Ifx_Shell_Command *shellCommand = Ifx_Shell_commandListFind(shell, commandLine, &args, &commandList);

    if (shellCommand != ((void *)0))
    {
        if (shellCommand->call == ((void *)0))
        {
            Ifx_Shell_showHelp(commandLine, shell, shell->io);
        }
        else if (shellCommand->call(args, shellCommand->data, shell->io) != (0u))
        {
            if (shell->control.sendResultCode != 0)
            {
                Ifx_Shell_writeResult(shell, Ifx_Shell_ResultCode_ok);
            }
        }
        else
        {
            if (shell->control.sendResultCode != 0)
            {
                Ifx_Shell_writeResult(shell, Ifx_Shell_ResultCode_nok);
            }
            else if (shell->control.echoError != 0)
            {
                IfxStdIf_DPipe_print(shell->io, "\r\nShell command error: %s" "\r\n", commandLine);
            }
            else
            {}
        }
    }
    else
    {
        if (commandLine[0] != '\0')
        {
            if (shell->control.sendResultCode != 0)
            {
                Ifx_Shell_writeResult(shell, Ifx_Shell_ResultCode_unknown);
            }
            else if (shell->control.echoError != 0)
            {
                IfxStdIf_DPipe_print(shell->io, "\r\nUnknown command: %s" "\r\n", commandLine);
            }
            else
            {}
        }
    }
}
# 1093 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Shell.c"
void Ifx_Shell_cmdEscapeProcess(Ifx_Shell *shell, char EscapeChar1, char EscapeChar2)
{
    Ifx_Shell_CmdLine *Cmd = ((void *)0);
    char *cmdStr = ((void *)0);
    sint32 i = 0;


    boolean result = (shell != ((void *)0));

    ((void)0);

    if (result == (0u))
    {
        return;
    }


    Cmd = &shell->cmd;
    cmdStr = Cmd->cmdStr;


    ((void)0);
    ((void)0);
    ((void)0);


    switch (EscapeChar1)
    {
    case 'A':

        if (Cmd->historyItem == (-1))
        {

            Cmd->historyItem = 0;
        }
        else
        {
            if (Cmd->historyItem < ((10) - 1))
            {

                Cmd->historyItem++;
            }
        }


        strncpy(cmdStr, shell->cmdHistory[Cmd->historyItem], (128));


        if (shell->control.echo != 0)
        {
            {int ii; for (ii = 0; ii < (Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
            {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, " "); }}
            {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
            IfxStdIf_DPipe_print(shell->io, cmdStr);
        }

        Cmd->cursor = (Ifx_SizeT)strlen(cmdStr);
        Cmd->length = Cmd->cursor;
        Cmd->historyAdd = (0u);
        break;

    case 'B':

        if ((Cmd->historyItem == (-1)) || (Cmd->historyItem == 0))
        {

            if (shell->control.echo != 0)
            {
                {int ii; for (ii = 0; ii < (Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, " "); }}
                {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
            }

            Cmd->length = 0;
            Cmd->cursor = 0;
            Cmd->historyItem = (-1);
        }
        else
        {

            Cmd->historyItem--;


            strncpy(cmdStr, shell->cmdHistory[Cmd->historyItem], (128));

            if (shell->control.echo != 0)
            {
                {int ii; for (ii = 0; ii < (Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, " "); }}
                {int ii; for (ii = 0; ii < (Cmd->length); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                IfxStdIf_DPipe_print(shell->io, cmdStr);
            }

            Cmd->cursor = (Ifx_SizeT)strlen(cmdStr);
            Cmd->length = Cmd->cursor;
        }

        Cmd->historyAdd = (0u);
        break;

    case 'C':

        if (Cmd->cursor < Cmd->length)
        {

            {if (shell->control.echo) {IfxStdIf_DPipe_print(shell->io, "%c", cmdStr[Cmd->cursor]); }} Cmd->cursor++;
        }

        break;

    case 'D':

        if (Cmd->cursor > 0)
        {

            {if (shell->control.echo) {IfxStdIf_DPipe_print(shell->io, "\b"); }} Cmd->cursor--;
        }

        break;

    default:
        break;
    }


    if (EscapeChar2 == '~')
    {
        switch (EscapeChar1)
        {
        case '1':

            if (Cmd->cursor > 0)
            {
                {int ii; for (ii = 0; ii < (Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }} Cmd->cursor = 0;
            }

            break;

        case '2':

            if ((Cmd->cursor < Cmd->length) && (Cmd->length < ((128) - 1)))
            {

                if (shell->control.echo != (0u))
                {

                    IfxStdIf_DPipe_print(shell->io, " ");


                    for (i = Cmd->cursor; i < Cmd->length; i++)
                    {
                        IfxStdIf_DPipe_print(shell->io, "%c", cmdStr[i]);
                    }


                    {int ii; for (ii = 0; ii < ((Cmd->length + 1) - Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                }


                for (i = Cmd->length; i > Cmd->cursor; i--)
                {
                    cmdStr[i] = cmdStr[i - 1];
                }

                cmdStr[Cmd->length + 1] = '\0';
                cmdStr[Cmd->cursor] = ' ';

                Cmd->length++;
            }

            break;

        case '3':

            if (Cmd->cursor < Cmd->length)
            {

                if (shell->control.echo != 0)
                {
                    for (i = Cmd->cursor; i < (Cmd->length - 1); i++)
                    {

                        IfxStdIf_DPipe_print(shell->io, "%c", cmdStr[i + 1]);
                    }


                    IfxStdIf_DPipe_print(shell->io, " ");


                    {int ii; for (ii = 0; ii < (Cmd->length - Cmd->cursor); ii++) {IfxStdIf_DPipe_print(shell->io, "\b"); }}
                }


                strncpy(&cmdStr[Cmd->cursor], &cmdStr[Cmd->cursor + 1], Cmd->length - Cmd->cursor - 1);

                cmdStr[Cmd->length - 1] = '\0';
                Cmd->length--;
            }

            break;

        case '4':

            while (Cmd->cursor < Cmd->length)
            {
                {if (shell->control.echo) {IfxStdIf_DPipe_print(shell->io, "%c", cmdStr[Cmd->cursor]); }} Cmd->cursor++;
            }

            break;

        default:
            break;
        }
    }
}


void Ifx_Shell_enable(Ifx_Shell *shell)
{

    IfxStdIf_DPipe_clearRx(shell->io);

    shell->control.enabled = 1;
}


void Ifx_Shell_disable(Ifx_Shell *shell)
{
    shell->control.enabled = 0;
}


void Ifx_Shell_printSyntax(const Ifx_Shell_Syntax *syntaxList, IfxStdIf_DPipe *io)
{
    const Ifx_Shell_Syntax *syntax = syntaxList;

    while (syntax->syntax != ((void *)0))
    {
        IfxStdIf_DPipe_print(io, "Syntax     : %s" "\r\n", syntax->syntax);
        IfxStdIf_DPipe_print(io, "           > %s" "\r\n", syntax->description);
        syntax = &syntax[1];
    }
}
