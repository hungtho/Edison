# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.c"
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.c"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 1
# 55 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Ifx_Cfg.h" 1
# 56 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_bf.h" 1
# 57 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_bf.h" 1
# 58 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 2
# 1312 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.c" 2
