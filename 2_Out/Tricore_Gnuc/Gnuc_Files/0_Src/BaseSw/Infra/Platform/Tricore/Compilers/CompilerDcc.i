# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c"
# 44 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c"
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
# 45 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c" 2
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
# 46 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerDcc.c" 2
