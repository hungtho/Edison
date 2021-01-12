# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c"
# 46 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 1
# 64 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
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
# 65 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 1
# 118 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 66 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 1
# 71 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
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
# 67 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2


typedef enum
{
    IfxStdIf_Pos_MotionType_rotating,
    IfxStdIf_Pos_MotionType_linear
} IfxStdIf_Pos_MotionType;


typedef enum
{
    IfxStdIf_Pos_ResolutionFactor_oneFold = 1,
    IfxStdIf_Pos_ResolutionFactor_twoFold = 2,
    IfxStdIf_Pos_ResolutionFactor_fourFold = 4
} IfxStdIf_Pos_ResolutionFactor;


typedef enum
{
    IfxStdIf_Pos_SensorType_encoder,
    IfxStdIf_Pos_SensorType_hall,
    IfxStdIf_Pos_SensorType_resolver,
    IfxStdIf_Pos_SensorType_angletrk,
    IfxStdIf_Pos_SensorType_igmr,
    IfxStdIf_Pos_SensorType_virtual
} IfxStdIf_Pos_SensorType;


typedef enum
{
    IfxStdIf_Pos_Dir_forward,
    IfxStdIf_Pos_Dir_backward,
    IfxStdIf_Pos_Dir_unknown
} IfxStdIf_Pos_Dir;


typedef union
{
    uint32 status;
    struct
    {
        uint32 notSynchronised : 1;
        uint32 signalLoss : 1;
        uint32 signalDegradation : 1;
        uint32 trackingLoss : 1;
        uint32 commError : 1;
    } B;
} IfxStdIf_Pos_Status;

typedef sint32 IfxStdIf_Pos_RawAngle;


typedef struct IfxStdIf_Pos_ IfxStdIf_Pos;
# 129 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef float32 (*IfxStdIf_Pos_GetAbsolutePosition)(IfxStdIf_InterfaceDriver stdIf);





typedef void (*IfxStdIf_Pos_OnZeroIrq)(IfxStdIf_InterfaceDriver stdIf);






typedef sint32 (*IfxStdIf_Pos_GetOffset)(IfxStdIf_InterfaceDriver stdIf);
# 152 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef float32 (*IfxStdIf_Pos_GetPosition)(IfxStdIf_InterfaceDriver stdIf);
# 161 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef IfxStdIf_Pos_Dir (*IfxStdIf_Pos_GetDirection)(IfxStdIf_InterfaceDriver stdIf);






typedef IfxStdIf_Pos_Status (*IfxStdIf_Pos_GetFault)(IfxStdIf_InterfaceDriver stdIf);






typedef uint16 (*IfxStdIf_Pos_GetPeriodPerRotation)(IfxStdIf_InterfaceDriver stdIf);
# 184 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef sint32 (*IfxStdIf_Pos_GetRawPosition)(IfxStdIf_InterfaceDriver stdIf);





typedef float32 (*IfxStdIf_Pos_GetRefreshPeriod)(IfxStdIf_InterfaceDriver stdIf);





typedef sint32 (*IfxStdIf_Pos_GetResolution)(IfxStdIf_InterfaceDriver stdIf);





typedef IfxStdIf_Pos_SensorType (*IfxStdIf_Pos_GetSensorType)(IfxStdIf_InterfaceDriver stdIf);





typedef float32 (*IfxStdIf_Pos_GetSpeed)(IfxStdIf_InterfaceDriver stdIf);





typedef sint32 (*IfxStdIf_Pos_GetTurn)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_Pos_OnEventA)(IfxStdIf_InterfaceDriver stdIf);
# 230 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_Update)(IfxStdIf_InterfaceDriver stdIf);
# 239 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_Reset)(IfxStdIf_InterfaceDriver stdIf);
# 248 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_ResetFaults)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_Pos_SetOffset)(IfxStdIf_InterfaceDriver stdIf, sint32 offset);






typedef void (*IfxStdIf_Pos_SetPosition)(IfxStdIf_InterfaceDriver stdIf, float32 position);





typedef void (*IfxStdIf_Pos_SetRawPosition)(IfxStdIf_InterfaceDriver stdIf, sint32 position);






typedef void (*IfxStdIf_Pos_SetSpeed)(IfxStdIf_InterfaceDriver stdIf, float32 speed);






typedef void (*IfxStdIf_Pos_SetRefreshPeriod)(IfxStdIf_InterfaceDriver stdIf, float32 updatePeriod);



struct IfxStdIf_Pos_
{
    IfxStdIf_InterfaceDriver driver;
    IfxStdIf_Pos_OnZeroIrq onZeroIrq;
    IfxStdIf_Pos_GetAbsolutePosition getAbsolutePosition;
    IfxStdIf_Pos_GetOffset getOffset;
    IfxStdIf_Pos_GetPosition getPosition;
    IfxStdIf_Pos_GetDirection getDirection;
    IfxStdIf_Pos_GetFault getFault;
    IfxStdIf_Pos_GetRawPosition getRawPosition;
    IfxStdIf_Pos_GetPeriodPerRotation getPeriodPerRotation;
    IfxStdIf_Pos_GetRefreshPeriod getRefreshPeriod;
    IfxStdIf_Pos_GetResolution getResolution;
    IfxStdIf_Pos_GetSensorType getSensorType;
    IfxStdIf_Pos_GetTurn getTurn;
    IfxStdIf_Pos_OnEventA onEventA;
    IfxStdIf_Pos_Reset reset;
    IfxStdIf_Pos_ResetFaults resetFaults;
    IfxStdIf_Pos_GetSpeed getSpeed;
    IfxStdIf_Pos_Update update;
    IfxStdIf_Pos_SetOffset setOffset;
    IfxStdIf_Pos_SetPosition setPosition;
    IfxStdIf_Pos_SetRawPosition setRawPosition;
    IfxStdIf_Pos_SetSpeed setSpeed;
    IfxStdIf_Pos_SetRefreshPeriod setRefreshPeriod;
};


typedef struct
{
    sint32 offset;
    boolean reversed;
    sint32 resolution;
    uint16 periodPerRotation;
    IfxStdIf_Pos_ResolutionFactor resolutionFactor;
    float32 updatePeriod;
    float32 speedModeThreshold;
    float32 minSpeed;
    float32 maxSpeed;
    boolean speedFilterEnabled;
    float32 speedFilerCutOffFrequency;
} IfxStdIf_Pos_Config;







static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_onZeroIrq(IfxStdIf_Pos *stdIf)
{
    stdIf->onZeroIrq(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getAbsolutePosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getAbsolutePosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_Status IfxStdIf_Pos_getFault(IfxStdIf_Pos *stdIf)
{
    return stdIf->getFault(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getOffset(IfxStdIf_Pos *stdIf)
{
    return stdIf->getOffset(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getPosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getPosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_Dir IfxStdIf_Pos_getDirection(IfxStdIf_Pos *stdIf)
{
    return stdIf->getDirection(stdIf->driver);
}





static inline __attribute__ ((always_inline)) uint16 IfxStdIf_Pos_getPeriodPerRotation(IfxStdIf_Pos *stdIf)
{
    return stdIf->getPeriodPerRotation(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getRawPosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getRawPosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getRefreshPeriod(IfxStdIf_Pos *stdIf)
{
    return stdIf->getRefreshPeriod(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getResolution(IfxStdIf_Pos *stdIf)
{
    return stdIf->getResolution(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getTurn(IfxStdIf_Pos *stdIf)
{
    return stdIf->getTurn(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_SensorType IfxStdIf_Pos_getSensorType(IfxStdIf_Pos *stdIf)
{
    return stdIf->getSensorType(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getSpeed(IfxStdIf_Pos *stdIf)
{
    return stdIf->getSpeed(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Pos_isFault(IfxStdIf_Pos *stdIf)
{
    return IfxStdIf_Pos_getFault(stdIf).status != 0;
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_onEventA(IfxStdIf_Pos *stdIf)
{
    stdIf->onEventA(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_update(IfxStdIf_Pos *stdIf)
{
    stdIf->update(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_reset(IfxStdIf_Pos *stdIf)
{
    stdIf->reset(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_resetFaults(IfxStdIf_Pos *stdIf)
{
    stdIf->resetFaults(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setOffset(IfxStdIf_Pos *stdIf, sint32 offset)
{
    stdIf->setOffset(stdIf->driver, offset);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setPosition(IfxStdIf_Pos *stdIf, float32 position)
{
    stdIf->setPosition(stdIf->driver, position);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setRawPosition(IfxStdIf_Pos *stdIf, sint32 position)
{
    stdIf->setRawPosition(stdIf->driver, position);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setSpeed(IfxStdIf_Pos *stdIf, float32 speed)
{
    stdIf->setSpeed(stdIf->driver, speed);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setRefreshPeriod(IfxStdIf_Pos *stdIf, float32 updatePeriod)
{
    stdIf->setRefreshPeriod(stdIf->driver, updatePeriod);
}
# 548 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_radsToRpm(float32 speed)
{
    return (60.0 / (2.0 * (3.1415926535897932384626433832795f))) * speed;
}
# 561 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_rpmToRads(float32 speed)
{
    return speed * ((2.0 * (3.1415926535897932384626433832795f)) / 60.0);
}







extern void IfxStdIf_Pos_initConfig(IfxStdIf_Pos_Config *config);







extern void IfxStdIf_Pos_printStatus(IfxStdIf_Pos *driver, IfxStdIf_DPipe *io);
# 47 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c" 2

void IfxStdIf_Pos_initConfig (IfxStdIf_Pos_Config * config)
{
    config->offset = 0;
    config->reversed = (0u);
    config->resolution = 0;
    config->periodPerRotation = 1;
    config->resolutionFactor = IfxStdIf_Pos_ResolutionFactor_oneFold;
    config->updatePeriod = 0.001;
    config->speedModeThreshold = 0;
    config->minSpeed = 0;
    config->maxSpeed = 20000.0 / 60.0 * (2 * (3.1415926535897932384626433832795f));
    config->speedFilterEnabled = (0u);
    config->speedFilerCutOffFrequency = 0;

}

void IfxStdIf_Pos_printStatus(IfxStdIf_Pos *driver, IfxStdIf_DPipe *io)
{
    IfxStdIf_Pos_Status status;
    status = IfxStdIf_Pos_getFault(driver);

    IfxStdIf_DPipe_print(io, "DSADC RDC status:""\r\n");
    if (status.status != 0)
    {
        if (status.B.commError)
        {
         IfxStdIf_DPipe_print(io, "- Communication error""\r\n");
        }
        if (status.B.notSynchronised)
        {
         IfxStdIf_DPipe_print(io, "- Synchronization error""\r\n");
        }
        if (status.B.signalDegradation)
        {
         IfxStdIf_DPipe_print(io, "- Signal degradation error""\r\n");
        }
        if (status.B.signalLoss)
        {
         IfxStdIf_DPipe_print(io, "- Signal loss error""\r\n");
        }
        if (status.B.trackingLoss)
        {
         IfxStdIf_DPipe_print(io, "- Tracking error""\r\n");
        }
    }
    else
    {
     IfxStdIf_DPipe_print(io, "- Ready""\r\n");
    }
}
