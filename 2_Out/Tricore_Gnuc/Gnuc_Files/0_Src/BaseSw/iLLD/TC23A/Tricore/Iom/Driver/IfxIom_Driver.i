# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c"
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h" 1
# 115 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h" 1
# 61 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxIom_cfg.h" 1
# 79 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxIom_cfg.h"
typedef enum
{
    IfxIom_MonInputSignal_p = 0,
    IfxIom_MonInputSignal_0 = 1,
    IfxIom_MonInputSignal_1 = 2,
    IfxIom_MonInputSignal_2 = 3
} IfxIom_MonInputSignal;



typedef enum
{
    IfxIom_RefInputSignal_p = 0,
    IfxIom_RefInputSignal_0 = 1,
    IfxIom_RefInputSignal_1 = 2,
    IfxIom_RefInputSignal_2 = 3,
    IfxIom_RefInputSignal_xorCombiner = 4
} IfxIom_RefInputSignal;







typedef enum
{
    IfxIom_MonInput_p33_0 = (IfxIom_MonInputSignal_p << 8) | 0x0,
    IfxIom_MonInput_p33_1 = (IfxIom_MonInputSignal_p << 8) | 0x1,
    IfxIom_MonInput_p33_2 = (IfxIom_MonInputSignal_p << 8) | 0x2,
    IfxIom_MonInput_p33_3 = (IfxIom_MonInputSignal_p << 8) | 0x3,
    IfxIom_MonInput_p33_4 = (IfxIom_MonInputSignal_p << 8) | 0x4,
    IfxIom_MonInput_p33_5 = (IfxIom_MonInputSignal_p << 8) | 0x5,
    IfxIom_MonInput_p33_6 = (IfxIom_MonInputSignal_p << 8) | 0x6,
    IfxIom_MonInput_p33_7 = (IfxIom_MonInputSignal_p << 8) | 0x7,
    IfxIom_MonInput_p33_8 = (IfxIom_MonInputSignal_p << 8) | 0x8,
    IfxIom_MonInput_p33_9 = (IfxIom_MonInputSignal_p << 8) | 0x9,
    IfxIom_MonInput_p33_10 = (IfxIom_MonInputSignal_p << 8) | 0xa,
    IfxIom_MonInput_p33_11 = (IfxIom_MonInputSignal_p << 8) | 0xb,
    IfxIom_MonInput_p33_12 = (IfxIom_MonInputSignal_p << 8) | 0xc,
    IfxIom_MonInput_p20_12 = (IfxIom_MonInputSignal_p << 8) | 0xd,
    IfxIom_MonInput_p20_13 = (IfxIom_MonInputSignal_p << 8) | 0xe,
    IfxIom_MonInput_p20_14 = (IfxIom_MonInputSignal_p << 8) | 0xf,
    IfxIom_MonInput_gtmTout22 = (IfxIom_MonInputSignal_0 << 8) | 0x0,
    IfxIom_MonInput_gtmTout23 = (IfxIom_MonInputSignal_0 << 8) | 0x1,
    IfxIom_MonInput_gtmTout24 = (IfxIom_MonInputSignal_0 << 8) | 0x2,
    IfxIom_MonInput_gtmTout25 = (IfxIom_MonInputSignal_0 << 8) | 0x3,
    IfxIom_MonInput_gtmTout26 = (IfxIom_MonInputSignal_0 << 8) | 0x4,
    IfxIom_MonInput_gtmTout27 = (IfxIom_MonInputSignal_0 << 8) | 0x5,
    IfxIom_MonInput_gtmTout28 = (IfxIom_MonInputSignal_0 << 8) | 0x6,
    IfxIom_MonInput_gtmTout29 = (IfxIom_MonInputSignal_0 << 8) | 0x7,
    IfxIom_MonInput_gtmTout30 = (IfxIom_MonInputSignal_0 << 8) | 0x8,
    IfxIom_MonInput_gtmTout31 = (IfxIom_MonInputSignal_0 << 8) | 0x9,
    IfxIom_MonInput_gtmTout32 = (IfxIom_MonInputSignal_0 << 8) | 0xa,
    IfxIom_MonInput_gtmTout33 = (IfxIom_MonInputSignal_0 << 8) | 0xb,
    IfxIom_MonInput_gtmTout34 = (IfxIom_MonInputSignal_0 << 8) | 0xc,
    IfxIom_MonInput_gtmTout68 = (IfxIom_MonInputSignal_0 << 8) | 0xd,
    IfxIom_MonInput_gtmTout69 = (IfxIom_MonInputSignal_0 << 8) | 0xe,
    IfxIom_MonInput_gtmTout70 = (IfxIom_MonInputSignal_0 << 8) | 0xf,
    IfxIom_MonInput_ccu60Cc62 = (IfxIom_MonInputSignal_1 << 8) | 0x0,
    IfxIom_MonInput_ccu60Cc61 = (IfxIom_MonInputSignal_1 << 8) | 0x1,
    IfxIom_MonInput_ccu60Cc60 = (IfxIom_MonInputSignal_1 << 8) | 0x2,
    IfxIom_MonInput_ccu60Cout60 = (IfxIom_MonInputSignal_1 << 8) | 0x3,
    IfxIom_MonInput_ccu60Cout61 = (IfxIom_MonInputSignal_1 << 8) | 0x4,
    IfxIom_MonInput_ccu60Cout62 = (IfxIom_MonInputSignal_1 << 8) | 0x5,
    IfxIom_MonInput_ccu60Cout63 = (IfxIom_MonInputSignal_1 << 8) | 0x6,
    IfxIom_MonInput_ccu61Cout63 = (IfxIom_MonInputSignal_1 << 8) | 0x7,
    IfxIom_MonInput_ccu61Cc60 = (IfxIom_MonInputSignal_1 << 8) | 0x8,
    IfxIom_MonInput_ccu61Cc61 = (IfxIom_MonInputSignal_1 << 8) | 0x9,
    IfxIom_MonInput_ccu61Cc62 = (IfxIom_MonInputSignal_1 << 8) | 0xa,
    IfxIom_MonInput_ccu61Cout60 = (IfxIom_MonInputSignal_1 << 8) | 0xb,
    IfxIom_MonInput_ccu61Cout61 = (IfxIom_MonInputSignal_1 << 8) | 0xc,
    IfxIom_MonInput_ccu61Cout62 = (IfxIom_MonInputSignal_1 << 8) | 0xd,
    IfxIom_MonInput_psi5Psitx0 = (IfxIom_MonInputSignal_1 << 8) | 0xe,
    IfxIom_MonInput_psi5Psitx1 = (IfxIom_MonInputSignal_1 << 8) | 0xf,
    IfxIom_MonInput_qspi0Mrst = (IfxIom_MonInputSignal_2 << 8) | 0x0,
    IfxIom_MonInput_qspi1Mrst = (IfxIom_MonInputSignal_2 << 8) | 0x1,
    IfxIom_MonInput_qspi2Mrst = (IfxIom_MonInputSignal_2 << 8) | 0x2,
    IfxIom_MonInput_qspi3Mrst = (IfxIom_MonInputSignal_2 << 8) | 0x3,
    IfxIom_MonInput_gnd = (IfxIom_MonInputSignal_2 << 8) | 0x4,
    IfxIom_MonInput_canNode0Txd = (IfxIom_MonInputSignal_2 << 8) | 0x5,
    IfxIom_MonInput_canNode1Txd = (IfxIom_MonInputSignal_2 << 8) | 0x6,
    IfxIom_MonInput_canNode2Txd = (IfxIom_MonInputSignal_2 << 8) | 0x7,
    IfxIom_MonInput_canNode3Txd = (IfxIom_MonInputSignal_2 << 8) | 0x8,
    IfxIom_MonInput_gtmTout104 = (IfxIom_MonInputSignal_2 << 8) | 0x9,
    IfxIom_MonInput_gtmTout105 = (IfxIom_MonInputSignal_2 << 8) | 0xa,
    IfxIom_MonInput_gtmTout106 = (IfxIom_MonInputSignal_2 << 8) | 0xb,
    IfxIom_MonInput_asclin0Atx = (IfxIom_MonInputSignal_2 << 8) | 0xc,
    IfxIom_MonInput_asclin1Atx = (IfxIom_MonInputSignal_2 << 8) | 0xd,
    IfxIom_MonInput_asclin2Atx = (IfxIom_MonInputSignal_2 << 8) | 0xe,
    IfxIom_MonInput_asclin3Atx = (IfxIom_MonInputSignal_2 << 8) | 0xf
} IfxIom_MonInput;



typedef enum
{
    IfxIom_RefInput_p33_0 = (IfxIom_RefInputSignal_p << 8) | 0x0,
    IfxIom_RefInput_p33_1 = (IfxIom_RefInputSignal_p << 8) | 0x1,
    IfxIom_RefInput_p33_2 = (IfxIom_RefInputSignal_p << 8) | 0x2,
    IfxIom_RefInput_p33_3 = (IfxIom_RefInputSignal_p << 8) | 0x3,
    IfxIom_RefInput_p33_4 = (IfxIom_RefInputSignal_p << 8) | 0x4,
    IfxIom_RefInput_p33_5 = (IfxIom_RefInputSignal_p << 8) | 0x5,
    IfxIom_RefInput_p33_6 = (IfxIom_RefInputSignal_p << 8) | 0x6,
    IfxIom_RefInput_p33_7 = (IfxIom_RefInputSignal_p << 8) | 0x7,
    IfxIom_RefInput_p33_8 = (IfxIom_RefInputSignal_p << 8) | 0x8,
    IfxIom_RefInput_p33_9 = (IfxIom_RefInputSignal_p << 8) | 0x9,
    IfxIom_RefInput_p33_10 = (IfxIom_RefInputSignal_p << 8) | 0xa,
    IfxIom_RefInput_p33_11 = (IfxIom_RefInputSignal_p << 8) | 0xb,
    IfxIom_RefInput_p33_12 = (IfxIom_RefInputSignal_p << 8) | 0xc,
    IfxIom_RefInput_p20_12 = (IfxIom_RefInputSignal_p << 8) | 0xd,
    IfxIom_RefInput_p20_13 = (IfxIom_RefInputSignal_p << 8) | 0xe,
    IfxIom_RefInput_p20_14 = (IfxIom_RefInputSignal_p << 8) | 0xf,
    IfxIom_RefInput_gtmTout0 = (IfxIom_RefInputSignal_0 << 8) | 0x0,
    IfxIom_RefInput_gtmTout1 = (IfxIom_RefInputSignal_0 << 8) | 0x1,
    IfxIom_RefInput_gtmTout2 = (IfxIom_RefInputSignal_0 << 8) | 0x2,
    IfxIom_RefInput_gtmTout3 = (IfxIom_RefInputSignal_0 << 8) | 0x3,
    IfxIom_RefInput_gtmTout4 = (IfxIom_RefInputSignal_0 << 8) | 0x4,
    IfxIom_RefInput_gtmTout5 = (IfxIom_RefInputSignal_0 << 8) | 0x5,
    IfxIom_RefInput_gtmTout6 = (IfxIom_RefInputSignal_0 << 8) | 0x6,
    IfxIom_RefInput_gtmTout7 = (IfxIom_RefInputSignal_0 << 8) | 0x7,
    IfxIom_RefInput_gtmTout8 = (IfxIom_RefInputSignal_0 << 8) | 0x8,
    IfxIom_RefInput_gtmTout9 = (IfxIom_RefInputSignal_0 << 8) | 0x9,
    IfxIom_RefInput_gtmTout10 = (IfxIom_RefInputSignal_0 << 8) | 0xa,
    IfxIom_RefInput_gtmTout11 = (IfxIom_RefInputSignal_0 << 8) | 0xb,
    IfxIom_RefInput_gtmTout12 = (IfxIom_RefInputSignal_0 << 8) | 0xc,
    IfxIom_RefInput_gtmTout13 = (IfxIom_RefInputSignal_0 << 8) | 0xd,
    IfxIom_RefInput_gtmTout14 = (IfxIom_RefInputSignal_0 << 8) | 0xe,
    IfxIom_RefInput_gtmTout15 = (IfxIom_RefInputSignal_0 << 8) | 0xf,
    IfxIom_RefInput_ccu60Cout63 = (IfxIom_RefInputSignal_1 << 8) | 0x0,
    IfxIom_RefInput_ccu60Cout62 = (IfxIom_RefInputSignal_1 << 8) | 0x1,
    IfxIom_RefInput_ccu60Cout61 = (IfxIom_RefInputSignal_1 << 8) | 0x2,
    IfxIom_RefInput_ccu60Cout60 = (IfxIom_RefInputSignal_1 << 8) | 0x3,
    IfxIom_RefInput_ccu60Cc62 = (IfxIom_RefInputSignal_1 << 8) | 0x4,
    IfxIom_RefInput_ccu60Cc61 = (IfxIom_RefInputSignal_1 << 8) | 0x5,
    IfxIom_RefInput_ccu60Cc60 = (IfxIom_RefInputSignal_1 << 8) | 0x6,
    IfxIom_RefInput_ccu61Cout63 = (IfxIom_RefInputSignal_1 << 8) | 0x7,
    IfxIom_RefInput_ccu61Cout62 = (IfxIom_RefInputSignal_1 << 8) | 0x8,
    IfxIom_RefInput_ccu61Cout61 = (IfxIom_RefInputSignal_1 << 8) | 0x9,
    IfxIom_RefInput_ccu61Cout60 = (IfxIom_RefInputSignal_1 << 8) | 0xa,
    IfxIom_RefInput_ccu61Cc62 = (IfxIom_RefInputSignal_1 << 8) | 0xb,
    IfxIom_RefInput_ccu61Cc61 = (IfxIom_RefInputSignal_1 << 8) | 0xc,
    IfxIom_RefInput_ccu61Cc60 = (IfxIom_RefInputSignal_1 << 8) | 0xd,
    IfxIom_RefInput_psi5Psitx0 = (IfxIom_RefInputSignal_1 << 8) | 0xe,
    IfxIom_RefInput_psi5Psitx2 = (IfxIom_RefInputSignal_1 << 8) | 0xf,
    IfxIom_RefInput_qspi0Mrst = (IfxIom_RefInputSignal_2 << 8) | 0x0,
    IfxIom_RefInput_qspi1Mrst = (IfxIom_RefInputSignal_2 << 8) | 0x1,
    IfxIom_RefInput_qspi2Mrst = (IfxIom_RefInputSignal_2 << 8) | 0x2,
    IfxIom_RefInput_qspi3Mrst = (IfxIom_RefInputSignal_2 << 8) | 0x3,
    IfxIom_RefInput_gnd = (IfxIom_RefInputSignal_2 << 8) | 0x4,
    IfxIom_RefInput_canNode0Txd = (IfxIom_RefInputSignal_2 << 8) | 0x5,
    IfxIom_RefInput_canNode1Txd = (IfxIom_RefInputSignal_2 << 8) | 0x6,
    IfxIom_RefInput_canNode2Txd = (IfxIom_RefInputSignal_2 << 8) | 0x7,
    IfxIom_RefInput_canNode3Txd = (IfxIom_RefInputSignal_2 << 8) | 0x8,
    IfxIom_RefInput_gtmTout107 = (IfxIom_RefInputSignal_2 << 8) | 0x9,
    IfxIom_RefInput_gtmTout108 = (IfxIom_RefInputSignal_2 << 8) | 0xa,
    IfxIom_RefInput_gtmTout109 = (IfxIom_RefInputSignal_2 << 8) | 0xb,
    IfxIom_RefInput_asclin0Atx = (IfxIom_RefInputSignal_2 << 8) | 0xc,
    IfxIom_RefInput_asclin1Atx = (IfxIom_RefInputSignal_2 << 8) | 0xd,
    IfxIom_RefInput_asclin2Atx = (IfxIom_RefInputSignal_2 << 8) | 0xe,
    IfxIom_RefInput_asclin3Atx = (IfxIom_RefInputSignal_2 << 8) | 0xf,
    IfxIom_RefInput_exorCombiner = (IfxIom_RefInputSignal_xorCombiner << 8) | 0x0
} IfxIom_RefInput;
# 62 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_regdef.h" 2





typedef struct _Ifx_IOM_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_IOM_ACCEN0_Bits;


typedef struct _Ifx_IOM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_IOM_ACCEN1_Bits;


typedef struct _Ifx_IOM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 4;
    unsigned int RMC : 8;
    unsigned int reserved_16 : 16;
} Ifx_IOM_CLC_Bits;


typedef struct _Ifx_IOM_ECMCCFG_Bits
{
    unsigned int SELC0 : 4;
    unsigned int THRC0 : 4;
    unsigned int SELC1 : 4;
    unsigned int THCR1 : 4;
    unsigned int SELC2 : 4;
    unsigned int THCR2 : 4;
    unsigned int SELC3 : 4;
    unsigned int THCR3 : 4;
} Ifx_IOM_ECMCCFG_Bits;


typedef struct _Ifx_IOM_ECMETH0_Bits
{
    unsigned int ETA0 : 1;
    unsigned int ETA1 : 1;
    unsigned int ETA2 : 1;
    unsigned int ETA3 : 1;
    unsigned int ETA4 : 1;
    unsigned int ETA5 : 1;
    unsigned int ETA6 : 1;
    unsigned int ETA7 : 1;
    unsigned int ETA8 : 1;
    unsigned int ETA9 : 1;
    unsigned int ETA10 : 1;
    unsigned int ETA11 : 1;
    unsigned int ETA12 : 1;
    unsigned int ETA13 : 1;
    unsigned int ETA14 : 1;
    unsigned int ETA15 : 1;
    unsigned int ETB0 : 1;
    unsigned int ETB1 : 1;
    unsigned int ETB2 : 1;
    unsigned int ETB3 : 1;
    unsigned int ETB4 : 1;
    unsigned int ETB5 : 1;
    unsigned int ETB6 : 1;
    unsigned int ETB7 : 1;
    unsigned int ETB8 : 1;
    unsigned int ETB9 : 1;
    unsigned int ETB10 : 1;
    unsigned int ETB11 : 1;
    unsigned int ETB12 : 1;
    unsigned int ETB13 : 1;
    unsigned int ETB14 : 1;
    unsigned int ETB15 : 1;
} Ifx_IOM_ECMETH0_Bits;


typedef struct _Ifx_IOM_ECMETH1_Bits
{
    unsigned int ETC0 : 1;
    unsigned int ETC1 : 1;
    unsigned int ETC2 : 1;
    unsigned int ETC3 : 1;
    unsigned int ETC4 : 1;
    unsigned int ETC5 : 1;
    unsigned int ETC6 : 1;
    unsigned int ETC7 : 1;
    unsigned int ETC8 : 1;
    unsigned int ETC9 : 1;
    unsigned int ETC10 : 1;
    unsigned int ETC11 : 1;
    unsigned int ETC12 : 1;
    unsigned int ETC13 : 1;
    unsigned int ETC14 : 1;
    unsigned int ETC15 : 1;
    unsigned int ETD0 : 1;
    unsigned int ETD1 : 1;
    unsigned int ETD2 : 1;
    unsigned int ETD3 : 1;
    unsigned int ETD4 : 1;
    unsigned int ETD5 : 1;
    unsigned int ETD6 : 1;
    unsigned int ETD7 : 1;
    unsigned int ETD8 : 1;
    unsigned int ETD9 : 1;
    unsigned int ETD10 : 1;
    unsigned int ETD11 : 1;
    unsigned int ETD12 : 1;
    unsigned int ETD13 : 1;
    unsigned int ETD14 : 1;
    unsigned int ETD15 : 1;
} Ifx_IOM_ECMETH1_Bits;


typedef struct _Ifx_IOM_ECMSELR_Bits
{
    unsigned int CES0 : 1;
    unsigned int CES1 : 1;
    unsigned int CES2 : 1;
    unsigned int CES3 : 1;
    unsigned int CES4 : 1;
    unsigned int CES5 : 1;
    unsigned int CES6 : 1;
    unsigned int CES7 : 1;
    unsigned int CES8 : 1;
    unsigned int CES9 : 1;
    unsigned int CES10 : 1;
    unsigned int CES11 : 1;
    unsigned int CES12 : 1;
    unsigned int CES13 : 1;
    unsigned int CES14 : 1;
    unsigned int CES15 : 1;
    unsigned int CTS0 : 1;
    unsigned int CTS1 : 1;
    unsigned int CTS2 : 1;
    unsigned int CTS3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_IOM_ECMSELR_Bits;


typedef struct _Ifx_IOM_FPCCTR_Bits
{
    unsigned int CMP : 16;
    unsigned int MOD : 3;
    unsigned int ISM : 2;
    unsigned int reserved_21 : 1;
    unsigned int RTG : 1;
    unsigned int reserved_23 : 1;
    unsigned int ISR : 3;
    unsigned int reserved_27 : 5;
} Ifx_IOM_FPCCTR_Bits;


typedef struct _Ifx_IOM_FPCESR_Bits
{
    unsigned int FEG0 : 1;
    unsigned int FEG1 : 1;
    unsigned int FEG2 : 1;
    unsigned int FEG3 : 1;
    unsigned int FEG4 : 1;
    unsigned int FEG5 : 1;
    unsigned int FEG6 : 1;
    unsigned int FEG7 : 1;
    unsigned int FEG8 : 1;
    unsigned int FEG9 : 1;
    unsigned int FEG10 : 1;
    unsigned int FEG11 : 1;
    unsigned int FEG12 : 1;
    unsigned int FEG13 : 1;
    unsigned int FEG14 : 1;
    unsigned int FEG15 : 1;
    unsigned int REG0 : 1;
    unsigned int REG1 : 1;
    unsigned int REG2 : 1;
    unsigned int REG3 : 1;
    unsigned int REG4 : 1;
    unsigned int REG5 : 1;
    unsigned int REG6 : 1;
    unsigned int REG7 : 1;
    unsigned int REG8 : 1;
    unsigned int REG9 : 1;
    unsigned int REG10 : 1;
    unsigned int REG11 : 1;
    unsigned int REG12 : 1;
    unsigned int REG13 : 1;
    unsigned int REG14 : 1;
    unsigned int REG15 : 1;
} Ifx_IOM_FPCESR_Bits;


typedef struct _Ifx_IOM_FPCTIM_Bits
{
    unsigned int TIM : 16;
    unsigned int reserved_16 : 16;
} Ifx_IOM_FPCTIM_Bits;


typedef struct _Ifx_IOM_GTMEXR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_IOM_GTMEXR_Bits;


typedef struct _Ifx_IOM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_IOM_ID_Bits;


typedef struct _Ifx_IOM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_IOM_KRST0_Bits;


typedef struct _Ifx_IOM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_IOM_KRST1_Bits;


typedef struct _Ifx_IOM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_IOM_KRSTCLR_Bits;


typedef struct _Ifx_IOM_LAMCFG_Bits
{
    unsigned int IVR : 1;
    unsigned int IVM : 1;
    unsigned int MOS : 1;
    unsigned int RMS : 1;
    unsigned int EWS : 1;
    unsigned int reserved_5 : 3;
    unsigned int EDS : 4;
    unsigned int IVW : 1;
    unsigned int reserved_13 : 3;
    unsigned int MCS : 4;
    unsigned int RCS : 4;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMCFG_Bits;


typedef struct _Ifx_IOM_LAMEWC_Bits
{
    unsigned int CNT : 24;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMEWC_Bits;


typedef struct _Ifx_IOM_LAMEWS_Bits
{
    unsigned int THR : 24;
    unsigned int reserved_24 : 8;
} Ifx_IOM_LAMEWS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ACCEN0_Bits B;
} Ifx_IOM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ACCEN1_Bits B;
} Ifx_IOM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_CLC_Bits B;
} Ifx_IOM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMCCFG_Bits B;
} Ifx_IOM_ECMCCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMETH0_Bits B;
} Ifx_IOM_ECMETH0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMETH1_Bits B;
} Ifx_IOM_ECMETH1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ECMSELR_Bits B;
} Ifx_IOM_ECMSELR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCCTR_Bits B;
} Ifx_IOM_FPCCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCESR_Bits B;
} Ifx_IOM_FPCESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_FPCTIM_Bits B;
} Ifx_IOM_FPCTIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_GTMEXR_Bits B;
} Ifx_IOM_GTMEXR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_ID_Bits B;
} Ifx_IOM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRST0_Bits B;
} Ifx_IOM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRST1_Bits B;
} Ifx_IOM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_KRSTCLR_Bits B;
} Ifx_IOM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMCFG_Bits B;
} Ifx_IOM_LAMCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMEWC_Bits B;
} Ifx_IOM_LAMEWC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_IOM_LAMEWS_Bits B;
} Ifx_IOM_LAMEWS;
# 502 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_regdef.h"
typedef volatile struct _Ifx_IOM
{
    Ifx_IOM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_IOM_ID ID;
    unsigned char reserved_C[16];
    Ifx_IOM_KRSTCLR KRSTCLR;
    Ifx_IOM_KRST1 KRST1;
    Ifx_IOM_KRST0 KRST0;
    Ifx_IOM_ACCEN1 ACCEN1;
    Ifx_IOM_ACCEN0 ACCEN0;
    Ifx_IOM_ECMCCFG ECMCCFG;
    Ifx_IOM_ECMSELR ECMSELR;
    Ifx_IOM_ECMETH0 ECMETH0;
    Ifx_IOM_ECMETH1 ECMETH1;
    Ifx_IOM_GTMEXR GTMEXR;
    unsigned char reserved_44[52];
    Ifx_IOM_FPCESR FPCESR;
    unsigned char reserved_7C[4];
    Ifx_IOM_FPCCTR FPCCTR[16];
    Ifx_IOM_FPCTIM FPCTIM[16];
    Ifx_IOM_LAMEWC LAMEWC[16];
    unsigned char reserved_140[64];
    Ifx_IOM_LAMCFG LAMCFG[16];
    Ifx_IOM_LAMEWS LAMEWS[16];
} Ifx_IOM;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_reg.h" 2
# 63 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 1
# 66 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
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
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
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
# 68 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int reserved_26 : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 22;
    unsigned int reserved_26 : 5;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int reserved_8 : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 10;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 4;
    unsigned int reserved_4 : 4;
    unsigned int SD33I : 4;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 4;
    unsigned int reserved_4 : 4;
    unsigned int TON : 8;
    unsigned int TOFF : 8;
    unsigned int SDSTEP : 4;
    unsigned int SYNCDIV : 3;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int STBS : 2;
    unsigned int STSP : 2;
    unsigned int NS : 2;
    unsigned int OL : 1;
    unsigned int PIAD : 1;
    unsigned int ADCMODE : 4;
    unsigned int ADCLPF : 2;
    unsigned int ADCLSB : 1;
    unsigned int reserved_23 : 1;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDOLCON : 7;
    unsigned int MODSEL : 1;
    unsigned int MODLOW : 7;
    unsigned int reserved_15 : 1;
    unsigned int SDVOKLVL : 6;
    unsigned int MODMAN : 2;
    unsigned int MODHIGH : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int reserved_2 : 2;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int reserved_6 : 1;
    unsigned int UVSWD : 1;
    unsigned int reserved_8 : 2;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 1;
    unsigned int SCMOD : 2;
    unsigned int reserved_14 : 18;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int reserved_21 : 2;
    unsigned int PORSTDF : 1;
    unsigned int reserved_24 : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int reserved_26 : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 14;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWCR3_Bits
{
    unsigned int WUTREL : 24;
    unsigned int reserved_24 : 4;
    unsigned int WUTDIV : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR3_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int reserved_8 : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int reserved_15 : 1;
    unsigned int WUTWKP : 1;
    unsigned int WUTOVRUN : 1;
    unsigned int reserved_18 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int reserved_23 : 4;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int WUTRUN : 1;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int reserved_8 : 8;
    unsigned int WUTWKPCLR : 1;
    unsigned int WUTOVRUNCLR : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_PMSWUTCNT_Bits
{
    unsigned int WUTCNT : 24;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_PMSWUTCNT_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR3_Bits B;
} Ifx_SCU_PMSWCR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWUTCNT_Bits B;
} Ifx_SCU_PMSWUTCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1779 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1805 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    unsigned char reserved_84[24];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    unsigned char reserved_B4[4];
    Ifx_SCU_EVR13CON EVR13CON;
    unsigned char reserved_BC[4];
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[1];
    unsigned char reserved_D8[8];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[1];
    unsigned char reserved_10C[24];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON0 LCLCON0;
    unsigned char reserved_138[4];
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[12];
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    unsigned char reserved_1BC[8];
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    unsigned char reserved_1C8[20];
    Ifx_SCU_PMSWUTCNT PMSWUTCNT;
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[188];
    Ifx_SCU_PMSWCR3 PMSWCR3;
    unsigned char reserved_304[244];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h" 2
# 69 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 65 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 pwd)
{

    uint32 temp = pwd;
    uint16 res;

    __asm("xor.t  %0,%1,13,%1,12 \n           xor.t  %0,%0,0,%1,11  \n           sh.xor.t %1,%0,0,%1,1  \n           extr.u %0,%1,0,14     \n"


                                     : "=&d" (res) : "d" (temp));
    return res;

}
# 71 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
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
# 72 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 89 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 116 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 129 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, const IfxScuWdt_Config *config);
# 142 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, const IfxScuWdt_Config *config);
# 165 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 178 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 190 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 201 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 217 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 229 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 239 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 249 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 269 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);





static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 304 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 315 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 325 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 336 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 346 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 356 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 366 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 376 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 385 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);




extern boolean IfxScuWdt_getCpuWatchdogEndInit(void);
# 399 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 409 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 419 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);
# 431 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern boolean IfxScuWdt_enableWatchdogWithDebugger(void);





static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (0 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (0 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog)
{
    return (boolean)watchdog->CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU *)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (1 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.ENDINIT == 0)
    {}
}
# 64 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h" 2
# 75 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h"
typedef enum
{
    IfxIom_LamEventSource_mon = 0,
    IfxIom_LamEventSource_monXorRef = 1
} IfxIom_LamEventSource;




typedef enum
{
    IfxIom_LamEventTrigger_none = 0,
    IfxIom_LamEventTrigger_risingEdge = 1,
    IfxIom_LamEventTrigger_fallingEdge = 2,
    IfxIom_LamEventTrigger_anyEdge = 3
} IfxIom_LamEventTrigger;




typedef enum
{
    IfxIom_LamEventWindowClearEvent_none = 0,
    IfxIom_LamEventWindowClearEvent_risingEdge = 1,
    IfxIom_LamEventWindowClearEvent_fallingEdge = 2,
    IfxIom_LamEventWindowClearEvent_anyEdge = 3
} IfxIom_LamEventWindowClearEvent;




typedef enum
{
    IfxIom_LamEventWindowControlSource_ref = 0,
    IfxIom_LamEventWindowControlSource_mon = 1
} IfxIom_LamEventWindowControlSource;




typedef enum
{
    IfxIom_LamEventWindowRunControl_freeRunning = 0,
    IfxIom_LamEventWindowRunControl_gated = 1
} IfxIom_LamEventWindowRunControl;




typedef enum
{
    IfxIom_LamFilterMode_delayDebounceBothEdge = 0,
    IfxIom_LamFilterMode_immediateDebounceBothEdge = 1,
    IfxIom_LamFilterMode_immediateDebounceRisingEdge = 2,
    IfxIom_LamFilterMode_immediateDebounceFallingEdge = 3,
    IfxIom_LamFilterMode_delayDebounceRisingEdgeImmediateDebounceFallingEdge = 4,
    IfxIom_LamFilterMode_immediateDebounceRisingEdgeDelayDebounceFallingEdge = 5,
    IfxIom_LamFilterMode_prescalerOnRisingEdge = 6,
    IfxIom_LamFilterMode_prescalerOnFallingEdge = 7,
    IfxIom_LamFilterMode_noFilter = 8
} IfxIom_LamFilterMode;



typedef enum
{
    IfxIom_LamId_0 = 0,
    IfxIom_LamId_1,
    IfxIom_LamId_2,
    IfxIom_LamId_3,
    IfxIom_LamId_4,
    IfxIom_LamId_5,
    IfxIom_LamId_6,
    IfxIom_LamId_7,
    IfxIom_LamId_8,
    IfxIom_LamId_9,
    IfxIom_LamId_10,
    IfxIom_LamId_11,
    IfxIom_LamId_12,
    IfxIom_LamId_13,
    IfxIom_LamId_14,
    IfxIom_LamId_15
} IfxIom_LamId;




typedef enum
{
    IfxIom_SleepMode_enable = 0,
    IfxIom_SleepMode_disable = 1
} IfxIom_SleepMode;
# 185 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h"
static inline __attribute__ ((always_inline)) void IfxIom_disableModule(Ifx_IOM *iom);






static inline __attribute__ ((always_inline)) void IfxIom_enableModule(Ifx_IOM *iom, uint8 clockDivider);






static inline __attribute__ ((always_inline)) void IfxIom_setSleepMode(Ifx_IOM *iom, IfxIom_SleepMode mode);
# 208 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Std/IfxIom.h"
extern float32 IfxIom_getFrequency(Ifx_IOM *iom);





extern void IfxIom_resetModule(Ifx_IOM *iom);







static inline __attribute__ ((always_inline)) void IfxIom_disableModule(Ifx_IOM *iom)
{
    uint16 psw = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(psw);
    iom->CLC.B.DISR = 1;
    IfxScuWdt_setCpuEndinit(psw);
}


static inline __attribute__ ((always_inline)) void IfxIom_enableModule(Ifx_IOM *iom, uint8 clockDivider)
{
    uint16 psw = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(psw);
    iom->CLC.B.RMC = clockDivider;
    iom->CLC.B.DISR = 0;
    IfxScuWdt_setCpuEndinit(psw);
}


static inline __attribute__ ((always_inline)) void IfxIom_setSleepMode(Ifx_IOM *iom, IfxIom_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    iom->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}
# 116 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h" 2
# 125 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h"
typedef struct
{
    boolean clearTimerOnGlitch;
    float32 fallingEdgeFilterTime;
    IfxIom_LamFilterMode mode;
    uint32 prescalerFactor;
    float32 risingEdgeFilterTime;
} IfxIom_Driver_LamFilterConfig;







typedef struct
{
    Ifx_IOM *module;
    uint8 accumulatedEventUsedMask;
    uint16 lamUsedMask;
} IfxIom_Driver;



typedef struct
{
    IfxIom_LamEventSource source;
    IfxIom_LamEventTrigger trigger;
} IfxIom_Driver_LamEventConfig;



typedef struct
{
    IfxIom_LamEventWindowClearEvent clearEvent;
    IfxIom_LamEventWindowControlSource controlSource;
    boolean inverted;
    IfxIom_LamEventWindowRunControl run;
    float32 threshold;
} IfxIom_Driver_LamEventWindowConfig;



typedef struct
{
    IfxIom_Driver_LamFilterConfig filter;
    IfxIom_MonInput input;
    boolean inverted;
} IfxIom_Driver_LamMonConfig;



typedef struct
{
    IfxIom_Driver_LamFilterConfig filter;
    IfxIom_RefInput input;
    boolean inverted;
} IfxIom_Driver_LamRefConfig;







typedef struct
{
    Ifx_IOM *module;
} IfxIom_Driver_Config;



typedef struct
{
    IfxIom_Driver *iomDriver;
    IfxIom_LamId channel;
    uint8 monIndex;
    uint8 refIndex;
    IfxIom_RefInputSignal refInput;
    IfxIom_MonInputSignal monInput;
    sint8 accumulatedCounterIndex;
    uint8 systemEventTriggerThreshold;
} IfxIom_Driver_Lam;



typedef struct
{
    IfxIom_Driver *iomDriver;
    IfxIom_LamId channel;
    IfxIom_Driver_LamEventConfig event;
    IfxIom_Driver_LamEventWindowConfig eventWindow;
    IfxIom_Driver_LamMonConfig mon;
    IfxIom_Driver_LamRefConfig ref;
    uint8 systemEventTriggerThreshold;
} IfxIom_Driver_LamConfig;
# 235 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h"
extern void IfxIom_Driver_clearAllGlitch(IfxIom_Driver *driver);





extern void IfxIom_Driver_clearHistory(IfxIom_Driver *driver);





extern void IfxIom_Driver_clearLamMonGlitch(IfxIom_Driver_Lam *driver);





extern void IfxIom_Driver_clearLamRefGlitch(IfxIom_Driver_Lam *driver);





extern uint32 IfxIom_Driver_disableEvents(IfxIom_Driver *driver);





extern void IfxIom_Driver_disableLamEvent(IfxIom_Driver_Lam *driver);





extern void IfxIom_Driver_enableLamEvent(IfxIom_Driver_Lam *driver);
# 282 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.h"
extern void IfxIom_Driver_getHistory(IfxIom_Driver *driver, uint16 *a, uint16 *b, uint16 *c, uint16 *d);







extern boolean IfxIom_Driver_init(IfxIom_Driver *driver, IfxIom_Driver_Config *config);






extern void IfxIom_Driver_initConfig(IfxIom_Driver_Config *config, Ifx_IOM *module);






extern boolean IfxIom_Driver_initLam(IfxIom_Driver_Lam *driver, IfxIom_Driver_LamConfig *config);






extern void IfxIom_Driver_initLamConfig(IfxIom_Driver_LamConfig *config, IfxIom_Driver *driver);







extern void IfxIom_Driver_isLamMonGlitch(IfxIom_Driver_Lam *driver, boolean *risingEdgeGlitch, boolean *fallingEdgeGlitch);







extern void IfxIom_Driver_isLamRefGlitch(IfxIom_Driver_Lam *driver, boolean *risingEdgeGlitch, boolean *fallingEdgeGlitch);






extern void IfxIom_Driver_restoreEvents(IfxIom_Driver *driver, uint32 mask);
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxIom_bf.h" 1
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 54 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 55 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 2
# 52 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c" 2
# 69 "0_Src/BaseSw/iLLD/TC23A/Tricore/Iom/Driver/IfxIom_Driver.c"
void IfxIom_Driver_clearAllGlitch(IfxIom_Driver *driver)
{
    Ifx_IOM *module = driver->module;
    module->FPCESR.U = 0xFFFFFFFF;
}


void IfxIom_Driver_clearHistory(IfxIom_Driver *driver)
{
    Ifx_IOM *module = driver->module;
    module->ECMETH0.U = 0;
}


void IfxIom_Driver_clearLamMonGlitch(IfxIom_Driver_Lam *driver)
{
    Ifx_IOM *module = driver->iomDriver->module;

    if (driver->monInput == IfxIom_MonInputSignal_p)
    {
        module->FPCESR.U = 0x10001 << driver->monIndex;
    }
}


void IfxIom_Driver_clearLamRefGlitch(IfxIom_Driver_Lam *driver)
{
    Ifx_IOM *module = driver->iomDriver->module;

    if (driver->refInput == IfxIom_RefInputSignal_p)
    {
        module->FPCESR.U = 0x10001 << driver->refIndex;
    }
}


uint32 IfxIom_Driver_disableEvents(IfxIom_Driver *driver)
{
    uint32 value;
    value = driver->module->ECMSELR.U;
    driver->module->ECMSELR.U = 0;
    return value;
}


void IfxIom_Driver_disableLamEvent(IfxIom_Driver_Lam *driver)
{
    IfxIom_Driver *iomDriver = driver->iomDriver;
    Ifx_IOM *module = iomDriver->module;


    if (driver->systemEventTriggerThreshold == 1)
    {
        module->ECMSELR.U &= ~(1 << (driver->channel + (0u)));
    }
    else if (driver->systemEventTriggerThreshold >= 2)
    {
        module->ECMSELR.U &= ~(1 << (driver->accumulatedCounterIndex + (16u)));
    }
    else
    {

    }
}


void IfxIom_Driver_enableLamEvent(IfxIom_Driver_Lam *driver)
{
    IfxIom_Driver *iomDriver = driver->iomDriver;
    Ifx_IOM *module = iomDriver->module;


    if (driver->systemEventTriggerThreshold == 1)
    {
        module->ECMSELR.U |= (1 << (driver->channel + (0u)));
    }
    else if (driver->systemEventTriggerThreshold >= 2)
    {
        module->ECMSELR.U |= (1 << (driver->accumulatedCounterIndex + (16u)));
    }
    else
    {

    }
}


void IfxIom_Driver_getHistory(IfxIom_Driver *driver, uint16 *a, uint16 *b, uint16 *c, uint16 *d)
{
    Ifx_IOM *module = driver->module;
    uint32 value;

    value = module->ECMETH0.U;
    *a = value & 0xFFFF;
    *b = value >> 16;

    value = module->ECMETH1.U;
    *c = value & 0xFFFF;
    *d = value >> 16;
}


boolean IfxIom_Driver_init(IfxIom_Driver *driver, IfxIom_Driver_Config *config)
{
    driver->module = config->module;
    driver->accumulatedEventUsedMask = 0;
    driver->lamUsedMask = 0;
    return (1u);
}


void IfxIom_Driver_initConfig(IfxIom_Driver_Config *config, Ifx_IOM *module)
{
    config->module = module;
}


boolean IfxIom_Driver_initLam(IfxIom_Driver_Lam *driver, IfxIom_Driver_LamConfig *config)
{
    boolean result = (1u);
    IfxIom_Driver *iomDriver = config->iomDriver;
    Ifx_IOM *module = iomDriver->module;
    float32 fiom;
    fiom = IfxIom_getFrequency(module);


    ((void)0);

    driver->accumulatedCounterIndex = -1;
    driver->channel = config->channel;
    driver->iomDriver = iomDriver;

    if (iomDriver->lamUsedMask & (1 << driver->channel))
    {

        result = (0u);
    }
    else
    {
        iomDriver->lamUsedMask |= 1 << driver->channel;

        {

            uint8 refIndex;
            IfxIom_RefInputSignal refInput;

            refIndex = ((config->ref.input >> 0) & 0xFF);
            refInput = ((IfxIom_RefInputSignal)((config->ref.input >> 8) & 0xFF));
            driver->refIndex = refIndex;
            driver->refInput = refInput;

            module->FPCCTR[refIndex].B.ISR = refInput;

            if (refInput == IfxIom_RefInputSignal_p)
            {
                if (config->ref.filter.mode == IfxIom_LamFilterMode_noFilter)
                {
                    module->FPCCTR[refIndex].B.MOD = IfxIom_LamFilterMode_immediateDebounceBothEdge;
                    module->FPCCTR[refIndex].B.CMP = 0;
                }
                else if ((config->ref.filter.mode == IfxIom_LamFilterMode_prescalerOnFallingEdge)
                         ||
                         (config->ref.filter.mode == IfxIom_LamFilterMode_prescalerOnRisingEdge))
                {
                    module->FPCCTR[refIndex].B.MOD = config->ref.filter.mode;
                    module->FPCCTR[refIndex].B.CMP = config->ref.filter.prescalerFactor - 1;
                }
                else
                {
                    module->FPCCTR[refIndex].B.MOD = config->ref.filter.mode;
                    module->FPCCTR[refIndex].B.CMP = fiom * config->ref.filter.risingEdgeFilterTime;
                    module->FPCCTR[refIndex].B.RTG = config->ref.filter.clearTimerOnGlitch ? 1 : 0;
                }
            }
        }

        {

            uint8 monIndex;
            IfxIom_MonInputSignal monInput;

            monIndex = ((config->mon.input >> 0) & 0xFF);
            monInput = ((IfxIom_MonInputSignal)((config->mon.input >> 8) & 0xFF));
            driver->monIndex = monIndex;
            driver->monInput = monInput;

            module->FPCCTR[monIndex].B.ISM = monInput;

            if (monInput == IfxIom_MonInputSignal_p)
            {
                if (config->mon.filter.mode == IfxIom_LamFilterMode_noFilter)
                {
                    module->FPCCTR[monIndex].B.MOD = IfxIom_LamFilterMode_immediateDebounceBothEdge;
                    module->FPCCTR[monIndex].B.CMP = 0;
                }
                else
                {
                    module->FPCCTR[monIndex].B.MOD = config->mon.filter.mode;
                    module->FPCCTR[monIndex].B.CMP = fiom * config->mon.filter.risingEdgeFilterTime;
                    module->FPCCTR[monIndex].B.RTG = config->mon.filter.clearTimerOnGlitch ? 1 : 0;
                }
            }
        }

        {

            module->LAMCFG[driver->channel].B.IVR = config->ref.inverted ? 1 : 0;
            module->LAMCFG[driver->channel].B.IVM = config->mon.inverted ? 1 : 0;
            module->LAMCFG[driver->channel].B.MOS = config->event.source == IfxIom_LamEventSource_mon ? 0 : 1;
            module->LAMCFG[driver->channel].B.RMS = config->eventWindow.run;
            module->LAMCFG[driver->channel].B.EWS = config->eventWindow.controlSource;
            module->LAMCFG[driver->channel].B.EDS =
                ((config->eventWindow.clearEvent) << 0)
                | ((config->event.trigger) << 2)
            ;
            module->LAMCFG[driver->channel].B.IVW = config->eventWindow.inverted ? 1 : 0;
            module->LAMCFG[driver->channel].B.MCS = ((config->mon.input >> 0) & 0xFF);
            module->LAMCFG[driver->channel].B.RCS = ((config->ref.input >> 0) & 0xFF);

            module->LAMEWS[driver->channel].B.THR = fiom * config->eventWindow.threshold;
        }

        {

            driver->systemEventTriggerThreshold = config->systemEventTriggerThreshold;

            if (driver->systemEventTriggerThreshold == 1)
            {
                module->ECMSELR.U |= 1 << (config->channel + (0u));
            }
            else if (driver->systemEventTriggerThreshold >= 2)
            {

                sint8 index;
                uint8 accumulatedEventUsedMask = iomDriver->accumulatedEventUsedMask;
                boolean success = (0u);

                for (index = 0; index < 4; index++)
                {
                    if ((accumulatedEventUsedMask & (1 << index)) == 0)
                    {
                        success = (1u);
                        iomDriver->accumulatedEventUsedMask |= 1 << index;
                        driver->accumulatedCounterIndex = index;
                        module->ECMSELR.U |= 1 << (index + (16u));

                        module->ECMCCFG.U |= (
                            (driver->channel << (0u))
                            | (driver->systemEventTriggerThreshold << (4u))
                            ) << (index * (8u));
                        break;
                    }
                }

                result &= success;
            }
            else
            {

            }
        }
    }

    return result;
}


void IfxIom_Driver_initLamConfig(IfxIom_Driver_LamConfig *config, IfxIom_Driver *driver)
{
    config->iomDriver = driver;
    config->channel = IfxIom_LamId_0;
    config->event.source = IfxIom_LamEventSource_mon;
    config->event.trigger = IfxIom_LamEventTrigger_none;
    config->eventWindow.clearEvent = IfxIom_LamEventWindowClearEvent_anyEdge;
    config->eventWindow.controlSource = IfxIom_LamEventWindowControlSource_ref;
    config->eventWindow.inverted = (0u);
    config->eventWindow.run = IfxIom_LamEventWindowRunControl_freeRunning;
    config->eventWindow.threshold = 0.0;
    config->mon.filter.clearTimerOnGlitch = (0u);
    config->mon.filter.fallingEdgeFilterTime = 0.0;
    config->mon.filter.mode = IfxIom_LamFilterMode_noFilter;
    config->mon.filter.prescalerFactor = 1;
    config->mon.filter.risingEdgeFilterTime = 0.0;
    config->mon.input = IfxIom_MonInput_p33_0;
    config->mon.inverted = (0u);
    config->ref.filter.clearTimerOnGlitch = (0u);
    config->ref.filter.fallingEdgeFilterTime = 0.0;
    config->ref.filter.mode = IfxIom_LamFilterMode_noFilter;
    config->ref.filter.prescalerFactor = 1;
    config->ref.filter.risingEdgeFilterTime = 0.0;
    config->ref.input = IfxIom_RefInput_p33_0;
    config->ref.inverted = (0u);
    config->systemEventTriggerThreshold = 1;
}


void IfxIom_Driver_isLamMonGlitch(IfxIom_Driver_Lam *driver, boolean *risingEdgeGlitch, boolean *fallingEdgeGlitch)
{
    Ifx_IOM *module = driver->iomDriver->module;

    if (driver->monInput == IfxIom_MonInputSignal_p)
    {
        uint32 index;
        index = driver->monIndex;
        *risingEdgeGlitch = (module->FPCESR.U >> (index + (16u))) != 0;
        *fallingEdgeGlitch = (module->FPCESR.U >> (index + (0u))) != 0;
    }
    else
    {
        *risingEdgeGlitch = (0u);
        *fallingEdgeGlitch = (0u);
    }
}


void IfxIom_Driver_isLamRefGlitch(IfxIom_Driver_Lam *driver, boolean *risingEdgeGlitch, boolean *fallingEdgeGlitch)
{
    Ifx_IOM *module = driver->iomDriver->module;

    if (driver->refInput == IfxIom_RefInputSignal_p)
    {
        uint32 index;
        index = driver->refIndex;
        *risingEdgeGlitch = (module->FPCESR.U >> (index + (16u))) != 0;
        *fallingEdgeGlitch = (module->FPCESR.U >> (index + (0u))) != 0;
    }
    else
    {
        *risingEdgeGlitch = (0u);
        *fallingEdgeGlitch = (0u);
    }
}


void IfxIom_Driver_restoreEvents(IfxIom_Driver *driver, uint32 mask)
{
    driver->module->ECMSELR.U = mask;
}
