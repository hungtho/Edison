# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.c"
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.c"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 1
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h" 2





typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR : 20;
    volatile unsigned int TO_W1R0 : 1;
    volatile unsigned int reserved_21 : 11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE : 1;
    volatile unsigned int MSK_WR_RSP : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int MODE_UP_PGR : 1;
    volatile unsigned int BUFF_OVL : 1;
    volatile unsigned int reserved_10 : 2;
    volatile unsigned int SYNC_INPUT_REG : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int BRG_RST : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int BUFF_DPT : 8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR : 5;
    volatile unsigned int FIRST_RSP_PTR : 5;
    volatile unsigned int TRAN_IN_PGR : 5;
    volatile unsigned int ABT_TRAN_PGR : 5;
    volatile unsigned int FBC : 6;
    volatile unsigned int RSP_TRAN_RDY : 6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2 : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK6_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK7_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0 : 2;
    volatile unsigned int EN_CLK1 : 2;
    volatile unsigned int EN_CLK2 : 2;
    volatile unsigned int EN_CLK3 : 2;
    volatile unsigned int EN_CLK4 : 2;
    volatile unsigned int EN_CLK5 : 2;
    volatile unsigned int EN_CLK6 : 2;
    volatile unsigned int EN_CLK7 : 2;
    volatile unsigned int EN_ECLK0 : 2;
    volatile unsigned int EN_ECLK1 : 2;
    volatile unsigned int EN_ECLK2 : 2;
    volatile unsigned int EN_FXCLK : 2;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT : 1;
    volatile unsigned int TO_MODE : 1;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int TO_VAL : 5;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0 : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int SWAP_0 : 1;
    volatile unsigned int O1F_0 : 2;
    volatile unsigned int reserved_6 : 2;
    volatile unsigned int O1SEL_1 : 1;
    volatile unsigned int I1SEL_1 : 1;
    volatile unsigned int SH_EN_1 : 1;
    volatile unsigned int SWAP_1 : 1;
    volatile unsigned int O1F_1 : 2;
    volatile unsigned int reserved_14 : 2;
    volatile unsigned int O1SEL_2 : 1;
    volatile unsigned int I1SEL_2 : 1;
    volatile unsigned int SH_EN_2 : 1;
    volatile unsigned int SWAP_2 : 1;
    volatile unsigned int O1F_2 : 2;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int O1SEL_3 : 1;
    volatile unsigned int I1SEL_3 : 1;
    volatile unsigned int SH_EN_3 : 1;
    volatile unsigned int SWAP_3 : 1;
    volatile unsigned int O1F_3 : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0 : 1;
    volatile unsigned int OC0_0 : 1;
    volatile unsigned int SL0_0 : 1;
    volatile unsigned int DT0_0 : 1;
    volatile unsigned int POL1_0 : 1;
    volatile unsigned int OC1_0 : 1;
    volatile unsigned int SL1_0 : 1;
    volatile unsigned int DT1_0 : 1;
    volatile unsigned int POL0_1 : 1;
    volatile unsigned int OC0_1 : 1;
    volatile unsigned int SL0_1 : 1;
    volatile unsigned int DT0_1 : 1;
    volatile unsigned int POL1_1 : 1;
    volatile unsigned int OC1_1 : 1;
    volatile unsigned int SL1_1 : 1;
    volatile unsigned int DT1_1 : 1;
    volatile unsigned int POL0_2 : 1;
    volatile unsigned int OC0_2 : 1;
    volatile unsigned int SL0_2 : 1;
    volatile unsigned int DT0_2 : 1;
    volatile unsigned int POL1_2 : 1;
    volatile unsigned int OC1_2 : 1;
    volatile unsigned int SL1_2 : 1;
    volatile unsigned int DT1_2 : 1;
    volatile unsigned int POL0_3 : 1;
    volatile unsigned int OC0_3 : 1;
    volatile unsigned int SL0_3 : 1;
    volatile unsigned int DT0_3 : 1;
    volatile unsigned int POL1_3 : 1;
    volatile unsigned int OC1_3 : 1;
    volatile unsigned int SL1_3 : 1;
    volatile unsigned int DT1_3 : 1;
} Ifx_GTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR : 1;
    volatile unsigned int OC0_0_SR : 1;
    volatile unsigned int SL0_0_SR : 1;
    volatile unsigned int DT0_0_SR : 1;
    volatile unsigned int POL1_0_SR : 1;
    volatile unsigned int OC1_0_SR : 1;
    volatile unsigned int SL1_0_SR : 1;
    volatile unsigned int DT1_0_SR : 1;
    volatile unsigned int POL0_1_SR : 1;
    volatile unsigned int OC0_1_SR : 1;
    volatile unsigned int SL0_1_SR : 1;
    volatile unsigned int DT0_1_SR : 1;
    volatile unsigned int POL1_1_SR : 1;
    volatile unsigned int OC1_1_SR : 1;
    volatile unsigned int SL1_1_SR : 1;
    volatile unsigned int DT1_1_SR : 1;
    volatile unsigned int POL0_2_SR : 1;
    volatile unsigned int OC0_2_SR : 1;
    volatile unsigned int SL0_2_SR : 1;
    volatile unsigned int DT0_2_SR : 1;
    volatile unsigned int POL1_2_SR : 1;
    volatile unsigned int OC1_2_SR : 1;
    volatile unsigned int SL1_2_SR : 1;
    volatile unsigned int DT1_2_SR : 1;
    volatile unsigned int POL0_3_SR : 1;
    volatile unsigned int OC0_3_SR : 1;
    volatile unsigned int SL0_3_SR : 1;
    volatile unsigned int DT0_3_SR : 1;
    volatile unsigned int POL1_3_SR : 1;
    volatile unsigned int OC1_3_SR : 1;
    volatile unsigned int SL1_3_SR : 1;
    volatile unsigned int DT1_3_SR : 1;
} Ifx_GTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL : 2;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int UPD_MODE : 3;
    volatile unsigned int reserved_7 : 25;
} Ifx_GTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_DTV_CH_Bits
{
    volatile unsigned int RELRISE : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int RELFALL : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_GTM_DTM_DTV_CH_Bits;


typedef struct _Ifx_GTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int PSU_IN_SEL : 1;
    volatile unsigned int IN_POL : 1;
    volatile unsigned int reserved_18 : 2;
    volatile unsigned int SHIFT_SEL : 2;
    volatile unsigned int reserved_22 : 10;
} Ifx_GTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN : 1;
    volatile unsigned int BRIDGE_MODE_RST : 1;
    volatile unsigned int AEI_IN : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int TOM_OUT_RST : 1;
    volatile unsigned int TOM_TRIG_CHAIN : 3;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int IRQ_MODE_LEVEL : 1;
    volatile unsigned int IRQ_MODE_PULSE : 1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY : 1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE : 1;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int reserved_0 : 4;
    volatile unsigned int AEI_IRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ : 1;
    volatile unsigned int TIM0_CH1_IRQ : 1;
    volatile unsigned int TIM0_CH2_IRQ : 1;
    volatile unsigned int TIM0_CH3_IRQ : 1;
    volatile unsigned int TIM0_CH4_IRQ : 1;
    volatile unsigned int TIM0_CH5_IRQ : 1;
    volatile unsigned int TIM0_CH6_IRQ : 1;
    volatile unsigned int TIM0_CH7_IRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ : 1;
    volatile unsigned int TOM0_CH1_IRQ : 1;
    volatile unsigned int TOM0_CH2_IRQ : 1;
    volatile unsigned int TOM0_CH3_IRQ : 1;
    volatile unsigned int TOM0_CH4_IRQ : 1;
    volatile unsigned int TOM0_CH5_IRQ : 1;
    volatile unsigned int TOM0_CH6_IRQ : 1;
    volatile unsigned int TOM0_CH7_IRQ : 1;
    volatile unsigned int TOM0_CH8_IRQ : 1;
    volatile unsigned int TOM0_CH9_IRQ : 1;
    volatile unsigned int TOM0_CH10_IRQ : 1;
    volatile unsigned int TOM0_CH11_IRQ : 1;
    volatile unsigned int TOM0_CH12_IRQ : 1;
    volatile unsigned int TOM0_CH13_IRQ : 1;
    volatile unsigned int TOM0_CH14_IRQ : 1;
    volatile unsigned int TOM0_CH15_IRQ : 1;
    volatile unsigned int TOM1_CH0_IRQ : 1;
    volatile unsigned int TOM1_CH1_IRQ : 1;
    volatile unsigned int TOM1_CH2_IRQ : 1;
    volatile unsigned int TOM1_CH3_IRQ : 1;
    volatile unsigned int TOM1_CH4_IRQ : 1;
    volatile unsigned int TOM1_CH5_IRQ : 1;
    volatile unsigned int TOM1_CH6_IRQ : 1;
    volatile unsigned int TOM1_CH7_IRQ : 1;
    volatile unsigned int TOM1_CH8_IRQ : 1;
    volatile unsigned int TOM1_CH9_IRQ : 1;
    volatile unsigned int TOM1_CH10_IRQ : 1;
    volatile unsigned int TOM1_CH11_IRQ : 1;
    volatile unsigned int TOM1_CH12_IRQ : 1;
    volatile unsigned int TOM1_CH13_IRQ : 1;
    volatile unsigned int TOM1_CH14_IRQ : 1;
    volatile unsigned int TOM1_CH15_IRQ : 1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ : 1;
    volatile unsigned int TIM0_CH1_EIRQ : 1;
    volatile unsigned int TIM0_CH2_EIRQ : 1;
    volatile unsigned int TIM0_CH3_EIRQ : 1;
    volatile unsigned int TIM0_CH4_EIRQ : 1;
    volatile unsigned int TIM0_CH5_EIRQ : 1;
    volatile unsigned int TIM0_CH6_EIRQ : 1;
    volatile unsigned int TIM0_CH7_EIRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ : 1;
    volatile unsigned int reserved_1 : 3;
    volatile unsigned int TIM0_EIRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL : 4;
    volatile unsigned int CH1SEL : 4;
    volatile unsigned int CH2SEL : 4;
    volatile unsigned int CH3SEL : 4;
    volatile unsigned int CH4SEL : 4;
    volatile unsigned int CH5SEL : 4;
    volatile unsigned int CH6SEL : 4;
    volatile unsigned int CH7SEL : 4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT : 1;
    volatile unsigned int TRG_AEI_USP_ADDR : 1;
    volatile unsigned int TRG_AEI_IM_ADDR : 1;
    volatile unsigned int TRG_AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT : 1;
    volatile unsigned int AEI_USP_ADDR : 1;
    volatile unsigned int AEI_IM_ADDR : 1;
    volatile unsigned int AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0 : 24;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN : 1;
    volatile unsigned int DREN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV : 27;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int CM : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int B0LMI : 4;
    volatile unsigned int B0HMT : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int B0HMI : 4;
    volatile unsigned int B1LMT : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int B1LMI : 4;
    volatile unsigned int B1HMT : 3;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int B1HMI : 4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0 : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OTGB1 : 4;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int OTGB2 : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP : 8;
    volatile unsigned int NO : 4;
    volatile unsigned int MINOR : 4;
    volatile unsigned int MAJOR : 4;
    volatile unsigned int DEV_CODE0 : 4;
    volatile unsigned int DEV_CODE1 : 4;
    volatile unsigned int DEV_CODE2 : 4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE : 27;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0 : 2;
    volatile unsigned int ENDIS_CH1 : 2;
    volatile unsigned int ENDIS_CH2 : 2;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0 : 1;
    volatile unsigned int SRC_CH1 : 1;
    volatile unsigned int SRC_CH2 : 1;
    volatile unsigned int SRC_CH3 : 1;
    volatile unsigned int SRC_CH4 : 1;
    volatile unsigned int SRC_CH5 : 1;
    volatile unsigned int SRC_CH6 : 1;
    volatile unsigned int SRC_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN : 1;
    volatile unsigned int TIM_MODE : 3;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int CICTRL : 1;
    volatile unsigned int TBU0x_SEL : 1;
    volatile unsigned int GPR0_SEL : 2;
    volatile unsigned int GPR1_SEL : 2;
    volatile unsigned int CNTS_SEL : 1;
    volatile unsigned int DSL : 1;
    volatile unsigned int ISL : 1;
    volatile unsigned int ECNT_RESET : 1;
    volatile unsigned int FLT_EN : 1;
    volatile unsigned int FLT_CNT_FRQ : 2;
    volatile unsigned int EXT_CAP_EN : 1;
    volatile unsigned int FLT_MODE_RE : 1;
    volatile unsigned int FLT_CTR_RE : 1;
    volatile unsigned int FLT_MODE_FE : 1;
    volatile unsigned int FLT_CTR_FE : 1;
    volatile unsigned int CLK_SEL : 3;
    volatile unsigned int FR_ECNT_OFL : 1;
    volatile unsigned int EGPR0_SEL : 1;
    volatile unsigned int EGPR1_SEL : 1;
    volatile unsigned int TOCTRL : 2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN : 1;
    volatile unsigned int ECNTOFL_EIRQ_EN : 1;
    volatile unsigned int CNTOFL_EIRQ_EN : 1;
    volatile unsigned int GPRzOFL_EIRQ_EN : 1;
    volatile unsigned int TODET_EIRQ_EN : 1;
    volatile unsigned int GLITCHDET_EIRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN : 1;
    volatile unsigned int ECNTOFL_IRQ_EN : 1;
    volatile unsigned int CNTOFL_IRQ_EN : 1;
    volatile unsigned int GPRzOFL_IRQ_EN : 1;
    volatile unsigned int TODET_IRQ_EN : 1;
    volatile unsigned int GLITCHDET_IRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL : 1;
    volatile unsigned int TRG_ECNTOFL : 1;
    volatile unsigned int TRG_CNTOFL : 1;
    volatile unsigned int TRG_GPRzOFL : 1;
    volatile unsigned int TRG_TODET : 1;
    volatile unsigned int TRG_GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL : 1;
    volatile unsigned int ECNTOFL : 1;
    volatile unsigned int CNTOFL : 1;
    volatile unsigned int GPRzOFL : 1;
    volatile unsigned int TODET : 1;
    volatile unsigned int GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV : 8;
    volatile unsigned int reserved_8 : 20;
    volatile unsigned int TCS : 3;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0 : 2;
    volatile unsigned int MODE_0 : 2;
    volatile unsigned int VAL_1 : 2;
    volatile unsigned int MODE_1 : 2;
    volatile unsigned int VAL_2 : 2;
    volatile unsigned int MODE_2 : 2;
    volatile unsigned int VAL_3 : 2;
    volatile unsigned int MODE_3 : 2;
    volatile unsigned int VAL_4 : 2;
    volatile unsigned int MODE_4 : 2;
    volatile unsigned int VAL_5 : 2;
    volatile unsigned int MODE_5 : 2;
    volatile unsigned int VAL_6 : 2;
    volatile unsigned int MODE_6 : 2;
    volatile unsigned int VAL_7 : 2;
    volatile unsigned int MODE_7 : 2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT : 8;
    volatile unsigned int F_IN : 8;
    volatile unsigned int TIM_IN : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0 : 11;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int OSM_TRIG : 1;
    volatile unsigned int EXT_TRIG : 1;
    volatile unsigned int EXTTRIGOUT : 1;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int BITREV : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0 : 1;
    volatile unsigned int TRG_CCU1TC0 : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_DTM_CH_CTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_DTM_CH_CTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_DTM_CH_CTRL2_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CTRL_Bits B;
} Ifx_GTM_DTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_DTV_CH_Bits B;
} Ifx_GTM_DTM_DTV_CH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_DTM_PS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;
# 2140 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[8];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
    unsigned char reserved_4[28];
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[52];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 2239 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DTM
{
    Ifx_GTM_DTM_CTRL CTRL;
    Ifx_GTM_DTM_CH_CTRL1 CH_CTRL1;
    Ifx_GTM_DTM_CH_CTRL2 CH_CTRL2;
    Ifx_GTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
    Ifx_GTM_DTM_PS_CTRL PS_CTRL;
    Ifx_GTM_DTM_DTV_CH DTV_CH[4];
} Ifx_GTM_DTM;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    unsigned char reserved_4[4];
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    unsigned char reserved_C[12];
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    unsigned char reserved_1C[20];
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    unsigned char reserved_34[4];
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[1];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_40[80];
    Ifx_GTM_INOUTSEL_CAN CAN;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_INP_VAL INP_VAL;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F4[12];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_174[12];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F4[12];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_274[12];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F4[12];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_374[12];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F4[12];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 2388 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    Ifx_GTM_HW_CONF HW_CONF;
    unsigned char reserved_28[8];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[1];
    unsigned char reserved_44[188];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[484];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[696];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_63C[2500];
    Ifx_GTM_TIM TIM[1];
    unsigned char reserved_1400[27648];
    Ifx_GTM_TOM TOM[2];
    unsigned char reserved_9000[41024];
    Ifx_GTM_DTM DTM1;
    unsigned char reserved_13064[220];
    Ifx_GTM_DTM DTM5;
    unsigned char reserved_13164[576412];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDA4[12];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    unsigned char reserved_9FDB4[4];
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    unsigned char reserved_9FDBC[8];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    unsigned char reserved_9FDD8[4];
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    unsigned char reserved_9FE00[512];
} Ifx_GTM;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h" 2
# 52 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h" 1
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
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
# 68 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h" 2


# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 1
# 63 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h" 1
# 61 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h" 1
# 78 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
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
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
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
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int reserved_3 : 6;
    unsigned int SEL9 : 1;
    unsigned int SEL10 : 1;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 671 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_64[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[96];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 79 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h" 2
# 62 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h" 2
# 79 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h"
typedef enum
{
    IfxPort_Index_00 = 0,
    IfxPort_Index_02 = 2,
    IfxPort_Index_10 = 10,
    IfxPort_Index_11 = 11,
    IfxPort_Index_13 = 13,
    IfxPort_Index_14 = 14,
    IfxPort_Index_15 = 15,
    IfxPort_Index_20 = 20,
    IfxPort_Index_21 = 21,
    IfxPort_Index_22 = 22,
    IfxPort_Index_23 = 23,
    IfxPort_Index_33 = 33,
    IfxPort_Index_34 = 34,
    IfxPort_Index_none = -1
} IfxPort_Index;







typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(13)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(13)];
# 64 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 1
# 66 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 1
# 56 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
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
# 65 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 2
# 74 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 169 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 207 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 222 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 237 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 251 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 266 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 282 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 297 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 320 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 338 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 354 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 369 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 393 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 412 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 422 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern Ifx_P *IfxPort_getAddress(IfxPort_Index port);





extern IfxPort_Index IfxPort_getIndex(Ifx_P *port);
# 444 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 461 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 477 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 494 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 505 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? (1u) : (0u);
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 71 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h" 2
# 194 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
typedef volatile struct IfxGtm_Tom_TGC Ifx_GTM_TOM_TGC;
# 204 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
typedef enum
{
    IfxGtm_Dpll_SubInc_1 = 0,
    IfxGtm_Dpll_SubInc_2
} IfxGtm_Dpll_SubInc;



typedef enum
{
    IfxGtm_FeatureControl_disabled = 0,
    IfxGtm_FeatureControl_disable = 1,
    IfxGtm_FeatureControl_enable = 2,
    IfxGtm_FeatureControl_enabled = 3
} IfxGtm_FeatureControl;



typedef enum
{
    IfxGtm_Tim_0
} IfxGtm_Tim;



typedef enum
{
    IfxGtm_Tim_Ch_0,
    IfxGtm_Tim_Ch_1,
    IfxGtm_Tim_Ch_2,
    IfxGtm_Tim_Ch_3,
    IfxGtm_Tim_Ch_4,
    IfxGtm_Tim_Ch_5,
    IfxGtm_Tim_Ch_6,
    IfxGtm_Tim_Ch_7
} IfxGtm_Tim_Ch;



typedef enum
{
    IfxGtm_Tom_0,
    IfxGtm_Tom_1
} IfxGtm_Tom;



typedef enum
{
    IfxGtm_Tom_Ch_none = -1,
    IfxGtm_Tom_Ch_0,
    IfxGtm_Tom_Ch_1,
    IfxGtm_Tom_Ch_2,
    IfxGtm_Tom_Ch_3,
    IfxGtm_Tom_Ch_4,
    IfxGtm_Tom_Ch_5,
    IfxGtm_Tom_Ch_6,
    IfxGtm_Tom_Ch_7,
    IfxGtm_Tom_Ch_8,
    IfxGtm_Tom_Ch_9,
    IfxGtm_Tom_Ch_10,
    IfxGtm_Tom_Ch_11,
    IfxGtm_Tom_Ch_12,
    IfxGtm_Tom_Ch_13,
    IfxGtm_Tom_Ch_14,
    IfxGtm_Tom_Ch_15
} IfxGtm_Tom_Ch;



typedef enum
{
    IfxGtm_Tom_Tgc_0,
    IfxGtm_Tom_Tgc_1
} IfxGtm_Tom_Tgc;
# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
struct IfxGtm_Tom_TGC
{
    Ifx_GTM_TOM_TGC0_GLB_CTRL GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG INT_TRIG;
    Ifx_GTM_TOM_CH xxxCH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT OUTEN_STAT;
};
# 53 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 1
# 64 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h" 1
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
typedef enum
{
    IfxGtm_IrqMode_level = 0,
    IfxGtm_IrqMode_pulse = 1,
    IfxGtm_IrqMode_pulseNotify = 2,
    IfxGtm_IrqMode_singlePulse = 3
} IfxGtm_IrqMode;



typedef enum
{
    IfxGtm_SuspendMode_none = 0,
    IfxGtm_SuspendMode_hard = 1,
    IfxGtm_SuspendMode_soft = 2
} IfxGtm_SuspendMode;
# 97 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode);
# 123 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
extern void IfxGtm_disable(Ifx_GTM *gtm);





extern void IfxGtm_enable(Ifx_GTM *gtm);
# 141 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
extern float32 IfxGtm_getSysClkFrequency(void);





static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm)
{
    return gtm->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm)
{
    Ifx_GTM_OCS ocs;


    ocs.U = gtm->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode)
{
    Ifx_GTM_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;

    gtm->OCS.U = ocs.U;
}
# 65 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h" 1
# 69 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
typedef enum
{
    IfxGtm_Tbu_Ts_0,
    IfxGtm_Tbu_Ts_1,
    IfxGtm_Tbu_Ts_2
} IfxGtm_Tbu_Ts;
# 90 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);
# 99 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
static inline __attribute__ ((always_inline)) boolean IfxGtm_Tbu_isChannelEnabled(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);
# 110 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
extern float32 IfxGtm_Tbu_getClockFrequency(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);







static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel)
{
    uint32 shift = channel * 2;

    __ldmst_c(&gtm->TBU.CHEN.U, (3U << shift), (IfxGtm_FeatureControl_enable << shift));
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tbu_isChannelEnabled(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel)
{
    uint32 shift = channel * 2;
    uint32 enable_status = (gtm->TBU.CHEN.U & ((uint32)3 << shift)) >> shift;

    return enable_status == (uint32)IfxGtm_FeatureControl_enabled;
}
# 66 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h" 1
# 115 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h" 1
# 69 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_dma = 1
} IfxSrc_Tos;
# 116 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 1;
    unsigned int reserved_12 : 4;
    unsigned int ECC : 5;
    unsigned int reserved_21 : 3;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CAN1
{
    Ifx_SRC_SRCR INT[8];
} Ifx_SRC_CAN1;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
    unsigned char reserved_4[28];
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[16];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_EVR
{
    Ifx_SRC_SRCR WUT;
    Ifx_SRC_SRCR SCDC;
} Ifx_SRC_EVR;


typedef volatile struct _Ifx_SRC_FFT
{
    Ifx_SRC_SRCR DONE;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR RFS;
} Ifx_SRC_FFT;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[1520];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    unsigned char reserved_4[364];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[1][8];
    unsigned char reserved_1A0[992];
    Ifx_SRC_SRCR TOM[2][8];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    Ifx_SRC_SRCR HC;
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[4];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    unsigned char reserved_8[88];
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[304];
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 306 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[2];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
    Ifx_SRC_CAN1 CAN1[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[1];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GEVR
{
    Ifx_SRC_EVR EVR[1];
} Ifx_SRC_GEVR;


typedef volatile struct _Ifx_SRC_GFFT
{
    Ifx_SRC_FFT FFT[1];
} Ifx_SRC_GFFT;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[1];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[1];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[4];
    unsigned char reserved_40[224];
    Ifx_SRC_VADCCG CG[1];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 469 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    Ifx_SRC_GEMEM EMEM;
    unsigned char reserved_24[28];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_98[248];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[352];
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_360[192];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_540[944];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_960[32];
    Ifx_SRC_GVADC VADC;
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[196];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[460];
    Ifx_SRC_GEVR EVR;
    unsigned char reserved_FB8[8];
    Ifx_SRC_GFFT FFT;
    unsigned char reserved_FCC[52];
    Ifx_SRC_GGPSR GPSR;
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1BC0[1088];
} Ifx_SRC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h" 2
# 118 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h" 2
# 132 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 141 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 150 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 159 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 168 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 186 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 195 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 204 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 236 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? (1u) : (0u);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? (1u) : (0u);
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 84 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
typedef enum
{
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0 = 0,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1 = 1,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2 = 2,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk3 = 3,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk4 = 4,
    IfxGtm_Tom_Ch_ClkSrc_noClock = 5
} IfxGtm_Tom_Ch_ClkSrc;



typedef enum
{
    IfxGtm_Tom_Ch_OutputTrigger_forward = 0,
    IfxGtm_Tom_Ch_OutputTrigger_generate = 1
} IfxGtm_Tom_Ch_OutputTrigger;



typedef enum
{
    IfxGtm_Tom_Ch_ResetEvent_onCm0 = 0,
    IfxGtm_Tom_Ch_ResetEvent_onTrigger = 1
} IfxGtm_Tom_Ch_ResetEvent;
# 124 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);
# 135 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_clearOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_clearZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern float32 IfxGtm_Tom_Ch_getClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern IfxGtm_Tom_Ch_ClkSrc IfxGtm_Tom_Ch_getClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareOnePointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareZeroPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_getOutputLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern volatile Ifx_SRC_SRCR *IfxGtm_Tom_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tom tom, IfxGtm_Tom_Ch channel);






extern Ifx_GTM_TOM_TGC *IfxGtm_Tom_Ch_getTgcPointer(Ifx_GTM_TOM *tom, uint32 tgcIndex);






extern volatile uint32 *IfxGtm_Tom_Ch_getTimerPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern void IfxGtm_Tom_Ch_setClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ClkSrc clock);
# 259 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompare(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOneShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowOne);
# 284 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompareShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero, uint32 shadowOne);







extern void IfxGtm_Tom_Ch_setCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero);







extern void IfxGtm_Tom_Ch_setCompareZeroShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero);







extern void IfxGtm_Tom_Ch_setCounterValue(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 value);
# 318 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_IrqMode mode, boolean interruptOnCompareZero, boolean interruptOnCompareOne);







extern void IfxGtm_Tom_Ch_setOneShotMode(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setPcm(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setResetSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ResetEvent event);







extern void IfxGtm_Tom_Ch_setSignalLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, Ifx_ActiveState activeState);







extern void IfxGtm_Tom_Ch_setTriggerOutput(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_OutputTrigger trigger);
# 374 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control);
# 386 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern uint32 IfxGtm_Tom_Tgc_buildFeature(uint16 enableMask, uint16 disableMask, uint8 bitfieldOffset);







extern uint32 IfxGtm_Tom_Tgc_buildFeatureForChannel(IfxGtm_Tom_Ch channel, boolean enabled, uint8 bitfieldOffset);
# 403 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannel(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);
# 412 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelOutput(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled);
# 429 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannels(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);
# 438 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelsOutput(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelsTrigger(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);







extern void IfxGtm_Tom_Tgc_enableChannelsUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);






extern void IfxGtm_Tom_Tgc_enableTimeTrigger(Ifx_GTM_TOM_TGC *tgc, boolean enabled);






extern void IfxGtm_Tom_Tgc_resetChannels(Ifx_GTM_TOM_TGC *tgc, uint32 resetMask);
# 477 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelForceUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean resetEnabled);
# 487 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelsForceUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, uint16 resetEnableMask, uint16 resetDisableMask);







extern void IfxGtm_Tom_Tgc_setTimeTrigger(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tbu_Ts base, uint32 value);





extern void IfxGtm_Tom_Tgc_trigger(Ifx_GTM_TOM_TGC *tgc);







static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel)
{
    return (Ifx_GTM_TOM_CH *)((uint32)&tom->CH0.CTRL.U + 0x40 * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control)
{
    tgc->GLB_CTRL.U = control;
}
# 55 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 1
# 64 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h" 1
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
typedef enum
{
    IfxGtm_Cmu_Clk_0 = 0,
    IfxGtm_Cmu_Clk_1,
    IfxGtm_Cmu_Clk_2,
    IfxGtm_Cmu_Clk_3,
    IfxGtm_Cmu_Clk_4,
    IfxGtm_Cmu_Clk_5,
    IfxGtm_Cmu_Clk_6,
    IfxGtm_Cmu_Clk_7
} IfxGtm_Cmu_Clk;

typedef enum
{
    IfxGtm_Cmu_Eclk_0 = 0,
    IfxGtm_Cmu_Eclk_1,
    IfxGtm_Cmu_Eclk_2
} IfxGtm_Cmu_Eclk;

typedef enum
{
    IfxGtm_Cmu_Fxclk_0 = 0,
    IfxGtm_Cmu_Fxclk_1,
    IfxGtm_Cmu_Fxclk_2,
    IfxGtm_Cmu_Fxclk_3,
    IfxGtm_Cmu_Fxclk_4
} IfxGtm_Cmu_Fxclk;



typedef enum
{
    IfxGtm_Cmu_Tim_Filter_Clk_0,
    IfxGtm_Cmu_Tim_Filter_Clk_1,
    IfxGtm_Cmu_Tim_Filter_Clk_6,
    IfxGtm_Cmu_Tim_Filter_Clk_7
} IfxGtm_Cmu_Tim_Filter_Clk;
# 119 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_enableClocks(Ifx_GTM *gtm, uint32 clkMask);







extern float32 IfxGtm_Cmu_getClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getFxClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Fxclk clkIndex, boolean assumeEnabled);





extern float32 IfxGtm_Cmu_getGclkFrequency(Ifx_GTM *gtm);






extern float32 IfxGtm_Cmu_getModuleFrequency(Ifx_GTM *gtm);






extern boolean IfxGtm_Cmu_isClkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex);






extern boolean IfxGtm_Cmu_isEclkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex);





extern boolean IfxGtm_Cmu_isFxClockEnabled(Ifx_GTM *gtm);
# 185 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_selectClkInput(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean useGlobal);







extern void IfxGtm_Cmu_setClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, float32 frequency);







extern void IfxGtm_Cmu_setEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, float32 frequency);






extern void IfxGtm_Cmu_setGclkFrequency(Ifx_GTM *gtm, float32 frequency);
# 65 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_bf.h" 1
# 66 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 2







typedef enum
{
    IfxGtm_Tim_CntsSel_cntReg = 0,
    IfxGtm_Tim_CntsSel_tbuTs0
} IfxGtm_Tim_CntsSel;



typedef enum
{
    IfxGtm_Tim_FilterCounter_upDown = 0,
    IfxGtm_Tim_FilterCounter_hold
} IfxGtm_Tim_FilterCounter;



typedef enum
{
    IfxGtm_Tim_FilterMode_immediateEdgePropagation = 0,
    IfxGtm_Tim_FilterMode_individualDeglitchTime
} IfxGtm_Tim_FilterMode;

typedef enum
{
    IfxGtm_Tim_GprSel_tbuTs0 = 0,
    IfxGtm_Tim_GprSel_tbuTs1,
    IfxGtm_Tim_GprSel_tbuTs2,
    IfxGtm_Tim_GprSel_cnts
} IfxGtm_Tim_GprSel;

typedef enum
{
    IfxGtm_Tim_Input_currentChannel = 0,
    IfxGtm_Tim_Input_adjacentChannel
} IfxGtm_Tim_Input;

typedef enum
{
    IfxGtm_Tim_Mode_pwmMeasurement = 0,
    IfxGtm_Tim_Mode_pulseIntegration,
    IfxGtm_Tim_Mode_inputEvent,
    IfxGtm_Tim_Mode_inputPrescaler,
    IfxGtm_Tim_Mode_bitCompression
} IfxGtm_Tim_Mode;



typedef enum
{
    IfxGtm_Tim_Timeout_disabled,
    IfxGtm_Tim_Timeout_risingEdge,
    IfxGtm_Tim_Timeout_fallingEdge,
    IfxGtm_Tim_Timeout_bothEdge
} IfxGtm_Tim_Timeout;
# 141 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel);







static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel);






static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);






static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);
# 228 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern float32 IfxGtm_Tim_Ch_getCaptureClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getCaptureClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getFilterClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Tim_Filter_Clk IfxGtm_Tim_Ch_getFilterClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getTimeoutClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getTimeoutClockSource(Ifx_GTM_TIM_CH *channel);
# 270 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern void IfxGtm_Tim_Ch_setChannelNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnNewVal, boolean irqOnCntOverflow, boolean irqOnEcntOverflow, boolean irqOnDatalost);






extern void IfxGtm_Tim_Ch_setClockSource(Ifx_GTM_TIM_CH *channel, IfxGtm_Cmu_Clk clock);






extern void IfxGtm_Tim_Ch_setFilterNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnGlitch);






extern void IfxGtm_Tim_Ch_setNotificationMode(Ifx_GTM_TIM_CH *channel, IfxGtm_IrqMode mode);






extern void IfxGtm_Tim_Ch_setTimeoutNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnTimeout);







static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (2u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (3u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (1u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (5u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (0u);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel)
{
    if(gtm){}
    return &(*(Ifx_SRC *)0xF0038000u).GTM.GTM[0].TIM[tim][channel];
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.CNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GPRzOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.ECNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GLITCHDET == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.NEWVAL == 1;
}


static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    return (Ifx_GTM_TIM_CH *)((uint32)&tim->CH0.GPR0.U + ((uint32)&tim->CH1 - (uint32)&tim->CH0) * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    tim->RST.U |= (uint32)1 << (uint32)channel;
}
# 56 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2





typedef enum
{
    IfxGtm_ChXSel_a,
    IfxGtm_ChXSel_b,
    IfxGtm_ChXSel_c,
    IfxGtm_ChXSel_d,

    IfxGtm_ChXSel_e,
    IfxGtm_ChXSel_f,
    IfxGtm_ChXSel_g,
    IfxGtm_ChXSel_h,

    IfxGtm_ChXSel_i,
    IfxGtm_ChXSel_j,
    IfxGtm_ChXSel_k,
    IfxGtm_ChXSel_l,

    IfxGtm_ChXSel_m,
    IfxGtm_ChXSel_n,
    IfxGtm_ChXSel_o,
    IfxGtm_ChXSel_p
} IfxGtm_ChXSel;


typedef enum
{
    IfxGtm_ToutSel_a,
    IfxGtm_ToutSel_b,
    IfxGtm_ToutSel_c,
    IfxGtm_ToutSel_d,
    IfxGtm_ToutSel_e
} IfxGtm_ToutSel;


typedef const struct
{
    IfxGtm_Tim tim;
    IfxGtm_Tim_Ch channel;
    IfxPort_Pin pin;
    IfxGtm_ChXSel select;
} IfxGtm_Tim_TinMap;


typedef const struct
{
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch channel;
    IfxGtm_ToutSel toutSel;
    uint32 toutn;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Tom_ToutMap;


typedef const struct
{
    Ifx_GTM* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Clk_Out;


typedef IfxGtm_Tom_ToutMap *IfxGtm_Tom_ToutMapP;

extern void IfxGtm_PinMap_setTimTin(IfxGtm_Tim_TinMap *config, IfxPort_InputMode inputMode);
extern void IfxGtm_PinMap_setTomTout(IfxGtm_Tom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);

extern IfxGtm_Clk_Out IfxGtm_CLK0_P23_1_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK1_P33_10_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK2_P11_12_OUT;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN0_P02_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN18_P00_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN26_P33_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN32_P33_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN34_P33_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN48_P22_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN53_P21_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN77_P15_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN85_P14_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN87_P14_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN8_P02_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN9_P00_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN103_P10_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN10_P00_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN11_P00_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN1_P02_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN27_P33_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN31_P33_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN47_P22_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN54_P21_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN78_P15_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN86_P14_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN104_P10_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN107_P10_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN28_P33_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN2_P02_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN33_P33_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN55_P21_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN79_P15_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN105_P10_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN108_P10_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN21_P00_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN29_P33_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN3_P02_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN49_P22_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN56_P21_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN80_P14_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN22_P33_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN30_P33_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN4_P02_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN50_P22_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN57_P21_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN61_P20_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN81_P14_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN23_P33_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN58_P21_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN5_P02_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN82_P14_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN24_P33_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN42_P23_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN59_P20_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN62_P20_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN6_P02_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN83_P14_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN25_P33_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN63_P20_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN64_P20_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN7_P02_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN84_P14_4_IN;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT87_P14_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT88_P14_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT110_P11_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT111_P22_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT112_P34_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT113_P34_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT114_P34_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT115_P34_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT110_P11_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT111_P22_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT1_P02_1_OUT;
# 47 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.c" 2

IfxGtm_Clk_Out IfxGtm_CLK0_P23_1_OUT = {&(*(Ifx_GTM *)0xF0100000u), {&(*(Ifx_P *)0xF003C300u), 1}, IfxPort_OutputIdx_alt4};
IfxGtm_Clk_Out IfxGtm_CLK1_P33_10_OUT = {&(*(Ifx_GTM *)0xF0100000u), {&(*(Ifx_P *)0xF003D300u),10}, IfxPort_OutputIdx_alt5};
IfxGtm_Clk_Out IfxGtm_CLK2_P11_12_OUT = {&(*(Ifx_GTM *)0xF0100000u), {&(*(Ifx_P *)0xF003B100u),12}, IfxPort_OutputIdx_alt3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN0_P02_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003A200u), 0}, (IfxGtm_ChXSel)2};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN18_P00_9_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003A000u), 9}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN26_P33_4_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003D300u), 4}, (IfxGtm_ChXSel)10};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN32_P33_10_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003D300u),10}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN34_P33_12_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003D300u),12}, (IfxGtm_ChXSel)12};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN48_P22_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003C200u), 1}, (IfxGtm_ChXSel)8};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN53_P21_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003C100u), 2}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN77_P15_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003B500u), 6}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN85_P14_5_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003B400u), 5}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN87_P14_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003B400u), 7}, (IfxGtm_ChXSel)5};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN8_P02_8_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003A200u), 8}, (IfxGtm_ChXSel)11};
IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN9_P00_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_0, {&(*(Ifx_P *)0xF003A000u), 0}, (IfxGtm_ChXSel)13};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN103_P10_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003B000u), 1}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN10_P00_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003A000u), 1}, (IfxGtm_ChXSel)10};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN11_P00_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003A000u), 2}, (IfxGtm_ChXSel)11};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN1_P02_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003A200u), 1}, (IfxGtm_ChXSel)2};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN27_P33_5_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003D300u), 5}, (IfxGtm_ChXSel)8};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN31_P33_9_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003D300u), 9}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN47_P22_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003C200u), 0}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN54_P21_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003C100u), 3}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN78_P15_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003B500u), 7}, (IfxGtm_ChXSel)5};
IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN86_P14_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_1, {&(*(Ifx_P *)0xF003B400u), 6}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN104_P10_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003B000u), 2}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN107_P10_5_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003B000u), 5}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN28_P33_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003D300u), 6}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN2_P02_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003A200u), 2}, (IfxGtm_ChXSel)2};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN33_P33_11_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003D300u),11}, (IfxGtm_ChXSel)8};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN55_P21_4_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003C100u), 4}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN79_P15_8_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_2, {&(*(Ifx_P *)0xF003B500u), 8}, (IfxGtm_ChXSel)5};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN105_P10_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003B000u), 3}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN108_P10_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003B000u), 6}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN21_P00_12_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003A000u),12}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN29_P33_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003D300u), 7}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN3_P02_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003A200u), 3}, (IfxGtm_ChXSel)2};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN49_P22_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003C200u), 2}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN56_P21_5_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003C100u), 5}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN80_P14_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_3, {&(*(Ifx_P *)0xF003B400u), 0}, (IfxGtm_ChXSel)5};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN22_P33_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003D300u), 0}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN30_P33_8_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003D300u), 8}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN4_P02_4_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003A200u), 4}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN50_P22_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003C200u), 3}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN57_P21_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003C100u), 6}, (IfxGtm_ChXSel)8};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN61_P20_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003C000u), 3}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN81_P14_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_4, {&(*(Ifx_P *)0xF003B400u), 1}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN23_P33_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_5, {&(*(Ifx_P *)0xF003D300u), 1}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN58_P21_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_5, {&(*(Ifx_P *)0xF003C100u), 7}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN5_P02_5_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_5, {&(*(Ifx_P *)0xF003A200u), 5}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN82_P14_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_5, {&(*(Ifx_P *)0xF003B400u), 2}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN24_P33_2_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003D300u), 2}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN42_P23_1_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003C300u), 1}, (IfxGtm_ChXSel)4};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN59_P20_0_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003C000u), 0}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN62_P20_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003C000u), 6}, (IfxGtm_ChXSel)9};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN6_P02_6_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003A200u), 6}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN83_P14_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_6, {&(*(Ifx_P *)0xF003B400u), 3}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN25_P33_3_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_7, {&(*(Ifx_P *)0xF003D300u), 3}, (IfxGtm_ChXSel)6};
IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN63_P20_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_7, {&(*(Ifx_P *)0xF003C000u), 7}, (IfxGtm_ChXSel)7};
IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN64_P20_8_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_7, {&(*(Ifx_P *)0xF003C000u), 8}, (IfxGtm_ChXSel)3};
IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN7_P02_7_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_7, {&(*(Ifx_P *)0xF003A200u), 7}, (IfxGtm_ChXSel)1};
IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN84_P14_4_IN = {IfxGtm_Tim_0, IfxGtm_Tim_Ch_7, {&(*(Ifx_P *)0xF003B400u), 4}, (IfxGtm_ChXSel)2};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT18_P00_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 18, {&(*(Ifx_P *)0xF003A000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT26_P33_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 26, {&(*(Ifx_P *)0xF003D300u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT32_P33_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 32, {&(*(Ifx_P *)0xF003D300u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT53_P21_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 53, {&(*(Ifx_P *)0xF003C100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT76_P15_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 76, {&(*(Ifx_P *)0xF003B500u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT77_P15_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 77, {&(*(Ifx_P *)0xF003B500u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT85_P14_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 85, {&(*(Ifx_P *)0xF003B400u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT87_P14_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 87, {&(*(Ifx_P *)0xF003B400u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT12_P00_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_a, 12, {&(*(Ifx_P *)0xF003A000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT2_P02_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_a, 2, {&(*(Ifx_P *)0xF003A200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT62_P20_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_b, 62, {&(*(Ifx_P *)0xF003C000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT70_P20_14_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_b, 70, {&(*(Ifx_P *)0xF003C000u),14}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT96_P11_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_a, 96, {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT13_P00_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_a, 13, {&(*(Ifx_P *)0xF003A000u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT3_P02_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_a, 3, {&(*(Ifx_P *)0xF003A200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT49_P22_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_a, 49, {&(*(Ifx_P *)0xF003C200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT63_P20_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_b, 63, {&(*(Ifx_P *)0xF003C000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT71_P15_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_b, 71, {&(*(Ifx_P *)0xF003B500u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT97_P11_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_a, 97, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT14_P00_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 14, {&(*(Ifx_P *)0xF003A000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT34_P33_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_b, 34, {&(*(Ifx_P *)0xF003D300u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT4_P02_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 4, {&(*(Ifx_P *)0xF003A200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT50_P22_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 50, {&(*(Ifx_P *)0xF003C200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT72_P15_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_b, 72, {&(*(Ifx_P *)0xF003B500u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT98_P11_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 98, {&(*(Ifx_P *)0xF003B100u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT15_P00_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_a, 15, {&(*(Ifx_P *)0xF003A000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT5_P02_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_a, 5, {&(*(Ifx_P *)0xF003A200u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT65_P20_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_b, 65, {&(*(Ifx_P *)0xF003C000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT73_P15_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_b, 73, {&(*(Ifx_P *)0xF003B500u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT99_P11_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_a, 99, {&(*(Ifx_P *)0xF003B100u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT100_P11_11_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_a, 100, {&(*(Ifx_P *)0xF003B100u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT16_P00_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_a, 16, {&(*(Ifx_P *)0xF003A000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT66_P20_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_b, 66, {&(*(Ifx_P *)0xF003C000u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT6_P02_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_a, 6, {&(*(Ifx_P *)0xF003A200u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT74_P15_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_b, 74, {&(*(Ifx_P *)0xF003B500u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT101_P11_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_a, 101, {&(*(Ifx_P *)0xF003B100u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT17_P00_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_a, 17, {&(*(Ifx_P *)0xF003A000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT42_P23_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_b, 42, {&(*(Ifx_P *)0xF003C300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT67_P20_11_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_b, 67, {&(*(Ifx_P *)0xF003C000u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT75_P15_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_b, 75, {&(*(Ifx_P *)0xF003B500u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT7_P02_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_a, 7, {&(*(Ifx_P *)0xF003A200u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT103_P10_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 103, {&(*(Ifx_P *)0xF003B000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT27_P33_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 27, {&(*(Ifx_P *)0xF003D300u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT31_P33_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 31, {&(*(Ifx_P *)0xF003D300u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT54_P21_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 54, {&(*(Ifx_P *)0xF003C100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT78_P15_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 78, {&(*(Ifx_P *)0xF003B500u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT86_P14_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 86, {&(*(Ifx_P *)0xF003B400u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT104_P10_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 104, {&(*(Ifx_P *)0xF003B000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT107_P10_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 107, {&(*(Ifx_P *)0xF003B000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT28_P33_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 28, {&(*(Ifx_P *)0xF003D300u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT33_P33_11_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 33, {&(*(Ifx_P *)0xF003D300u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT55_P21_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 55, {&(*(Ifx_P *)0xF003C100u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT79_P15_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 79, {&(*(Ifx_P *)0xF003B500u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT88_P14_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 88, {&(*(Ifx_P *)0xF003B400u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT105_P10_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 105, {&(*(Ifx_P *)0xF003B000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT108_P10_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 108, {&(*(Ifx_P *)0xF003B000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT21_P00_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 21, {&(*(Ifx_P *)0xF003A000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT29_P33_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 29, {&(*(Ifx_P *)0xF003D300u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT56_P21_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 56, {&(*(Ifx_P *)0xF003C100u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT80_P14_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 80, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT0_P02_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 0, {&(*(Ifx_P *)0xF003A200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT10_P00_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 10, {&(*(Ifx_P *)0xF003A000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT110_P11_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 110, {&(*(Ifx_P *)0xF003B100u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT1_P02_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 1, {&(*(Ifx_P *)0xF003A200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT22_P33_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_a, 22, {&(*(Ifx_P *)0xF003D300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT30_P33_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_a, 30, {&(*(Ifx_P *)0xF003D300u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT53_P21_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 53, {&(*(Ifx_P *)0xF003C100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT54_P21_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 54, {&(*(Ifx_P *)0xF003C100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT57_P21_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_a, 57, {&(*(Ifx_P *)0xF003C100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT61_P20_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 61, {&(*(Ifx_P *)0xF003C000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT64_P20_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 64, {&(*(Ifx_P *)0xF003C000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT65_P20_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 65, {&(*(Ifx_P *)0xF003C000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT72_P15_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 72, {&(*(Ifx_P *)0xF003B500u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT73_P15_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 73, {&(*(Ifx_P *)0xF003B500u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT81_P14_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_a, 81, {&(*(Ifx_P *)0xF003B400u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT8_P02_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 8, {&(*(Ifx_P *)0xF003A200u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT94_P13_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 94, {&(*(Ifx_P *)0xF003B300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT95_P11_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 95, {&(*(Ifx_P *)0xF003B100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT9_P00_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_c, 9, {&(*(Ifx_P *)0xF003A000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT11_P00_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 11, {&(*(Ifx_P *)0xF003A000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT12_P00_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 12, {&(*(Ifx_P *)0xF003A000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT23_P33_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_a, 23, {&(*(Ifx_P *)0xF003D300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT27_P33_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 27, {&(*(Ifx_P *)0xF003D300u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT28_P33_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 28, {&(*(Ifx_P *)0xF003D300u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT2_P02_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 2, {&(*(Ifx_P *)0xF003A200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT3_P02_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 3, {&(*(Ifx_P *)0xF003A200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT55_P21_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 55, {&(*(Ifx_P *)0xF003C100u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT56_P21_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 56, {&(*(Ifx_P *)0xF003C100u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT58_P21_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_a, 58, {&(*(Ifx_P *)0xF003C100u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT66_P20_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 66, {&(*(Ifx_P *)0xF003C000u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT67_P20_11_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 67, {&(*(Ifx_P *)0xF003C000u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT74_P15_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 74, {&(*(Ifx_P *)0xF003B500u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT76_P15_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 76, {&(*(Ifx_P *)0xF003B500u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT82_P14_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_a, 82, {&(*(Ifx_P *)0xF003B400u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT91_P13_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_a, 91, {&(*(Ifx_P *)0xF003B300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT96_P11_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 96, {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT97_P11_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_c, 97, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT13_P00_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 13, {&(*(Ifx_P *)0xF003A000u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT14_P00_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 14, {&(*(Ifx_P *)0xF003A000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT24_P33_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 24, {&(*(Ifx_P *)0xF003D300u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT29_P33_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 29, {&(*(Ifx_P *)0xF003D300u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT30_P33_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 30, {&(*(Ifx_P *)0xF003D300u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT42_P23_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 42, {&(*(Ifx_P *)0xF003C300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT48_P22_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 48, {&(*(Ifx_P *)0xF003C200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT49_P22_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 49, {&(*(Ifx_P *)0xF003C200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT4_P02_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 4, {&(*(Ifx_P *)0xF003A200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT59_P20_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 59, {&(*(Ifx_P *)0xF003C000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT5_P02_5_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 5, {&(*(Ifx_P *)0xF003A200u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT68_P20_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 68, {&(*(Ifx_P *)0xF003C000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT69_P20_13_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 69, {&(*(Ifx_P *)0xF003C000u),13}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT80_P14_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 80, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT82_P14_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 82, {&(*(Ifx_P *)0xF003B400u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT83_P14_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 83, {&(*(Ifx_P *)0xF003B400u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT91_P13_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 91, {&(*(Ifx_P *)0xF003B300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT92_P13_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 92, {&(*(Ifx_P *)0xF003B300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT98_P11_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 98, {&(*(Ifx_P *)0xF003B100u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT99_P11_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_c, 99, {&(*(Ifx_P *)0xF003B100u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT100_P11_11_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 100, {&(*(Ifx_P *)0xF003B100u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT101_P11_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 101, {&(*(Ifx_P *)0xF003B100u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT111_P22_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 111, {&(*(Ifx_P *)0xF003C200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT15_P00_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 15, {&(*(Ifx_P *)0xF003A000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT16_P00_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 16, {&(*(Ifx_P *)0xF003A000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT25_P33_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_a, 25, {&(*(Ifx_P *)0xF003D300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT31_P33_9_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 31, {&(*(Ifx_P *)0xF003D300u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT32_P33_10_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 32, {&(*(Ifx_P *)0xF003D300u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT50_P22_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 50, {&(*(Ifx_P *)0xF003C200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT64_P20_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 64, {&(*(Ifx_P *)0xF003C000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT6_P02_6_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 6, {&(*(Ifx_P *)0xF003A200u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT70_P20_14_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 70, {&(*(Ifx_P *)0xF003C000u),14}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT71_P15_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 71, {&(*(Ifx_P *)0xF003B500u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT7_P02_7_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 7, {&(*(Ifx_P *)0xF003A200u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT81_P14_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 81, {&(*(Ifx_P *)0xF003B400u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT84_P14_4_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_a, 84, {&(*(Ifx_P *)0xF003B400u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT92_P13_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_c, 92, {&(*(Ifx_P *)0xF003B300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT93_P13_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_a, 93, {&(*(Ifx_P *)0xF003B300u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT0_P02_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 0, {&(*(Ifx_P *)0xF003A200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT48_P22_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 48, {&(*(Ifx_P *)0xF003C200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT68_P20_12_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_b, 68, {&(*(Ifx_P *)0xF003C000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT8_P02_8_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 8, {&(*(Ifx_P *)0xF003A200u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT94_P13_3_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 94, {&(*(Ifx_P *)0xF003B300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT95_P11_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 95, {&(*(Ifx_P *)0xF003B100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT9_P00_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_a, 9, {&(*(Ifx_P *)0xF003A000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT10_P00_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_a, 10, {&(*(Ifx_P *)0xF003A000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT11_P00_2_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_a, 11, {&(*(Ifx_P *)0xF003A000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT1_P02_1_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_a, 1, {&(*(Ifx_P *)0xF003A200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT47_P22_0_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_a, 47, {&(*(Ifx_P *)0xF003C200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT69_P20_13_OUT = {IfxGtm_Tom_0, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_b, 69, {&(*(Ifx_P *)0xF003C000u),13}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT18_P00_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 18, {&(*(Ifx_P *)0xF003A000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT26_P33_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 26, {&(*(Ifx_P *)0xF003D300u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT32_P33_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 32, {&(*(Ifx_P *)0xF003D300u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT48_P22_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 48, {&(*(Ifx_P *)0xF003C200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT53_P21_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 53, {&(*(Ifx_P *)0xF003C100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT68_P20_12_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_a, 68, {&(*(Ifx_P *)0xF003C000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT76_P15_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 76, {&(*(Ifx_P *)0xF003B500u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT77_P15_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 77, {&(*(Ifx_P *)0xF003B500u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT85_P14_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 85, {&(*(Ifx_P *)0xF003B400u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT8_P02_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 8, {&(*(Ifx_P *)0xF003A200u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT94_P13_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 94, {&(*(Ifx_P *)0xF003B300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT9_P00_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_0, IfxGtm_ToutSel_b, 9, {&(*(Ifx_P *)0xF003A000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT104_P10_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_b, 104, {&(*(Ifx_P *)0xF003B000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT107_P10_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_b, 107, {&(*(Ifx_P *)0xF003B000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT2_P02_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_b, 2, {&(*(Ifx_P *)0xF003A200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT62_P20_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_10, IfxGtm_ToutSel_a, 62, {&(*(Ifx_P *)0xF003C000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT105_P10_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_b, 105, {&(*(Ifx_P *)0xF003B000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT108_P10_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_b, 108, {&(*(Ifx_P *)0xF003B000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT3_P02_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_b, 3, {&(*(Ifx_P *)0xF003A200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT63_P20_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_11, IfxGtm_ToutSel_a, 63, {&(*(Ifx_P *)0xF003C000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT112_P34_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 112, {&(*(Ifx_P *)0xF003D400u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT34_P33_12_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 34, {&(*(Ifx_P *)0xF003D300u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT4_P02_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_b, 4, {&(*(Ifx_P *)0xF003A200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT61_P20_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_12, IfxGtm_ToutSel_a, 61, {&(*(Ifx_P *)0xF003C000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT113_P34_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_a, 113, {&(*(Ifx_P *)0xF003D400u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT5_P02_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_b, 5, {&(*(Ifx_P *)0xF003A200u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT65_P20_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_13, IfxGtm_ToutSel_a, 65, {&(*(Ifx_P *)0xF003C000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT114_P34_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_a, 114, {&(*(Ifx_P *)0xF003D400u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT66_P20_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_a, 66, {&(*(Ifx_P *)0xF003C000u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT6_P02_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_14, IfxGtm_ToutSel_b, 6, {&(*(Ifx_P *)0xF003A200u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT115_P34_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_a, 115, {&(*(Ifx_P *)0xF003D400u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT67_P20_11_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_a, 67, {&(*(Ifx_P *)0xF003C000u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT7_P02_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_15, IfxGtm_ToutSel_b, 7, {&(*(Ifx_P *)0xF003A200u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT10_P00_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 10, {&(*(Ifx_P *)0xF003A000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT11_P00_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 11, {&(*(Ifx_P *)0xF003A000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT27_P33_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 27, {&(*(Ifx_P *)0xF003D300u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT31_P33_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 31, {&(*(Ifx_P *)0xF003D300u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT47_P22_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 47, {&(*(Ifx_P *)0xF003C200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT54_P21_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 54, {&(*(Ifx_P *)0xF003C100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT69_P20_13_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_a, 69, {&(*(Ifx_P *)0xF003C000u),13}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT78_P15_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 78, {&(*(Ifx_P *)0xF003B500u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT86_P14_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 86, {&(*(Ifx_P *)0xF003B400u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT95_P11_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_1, IfxGtm_ToutSel_b, 95, {&(*(Ifx_P *)0xF003B100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT12_P00_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 12, {&(*(Ifx_P *)0xF003A000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT28_P33_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 28, {&(*(Ifx_P *)0xF003D300u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT33_P33_11_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 33, {&(*(Ifx_P *)0xF003D300u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT55_P21_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 55, {&(*(Ifx_P *)0xF003C100u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT70_P20_14_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_a, 70, {&(*(Ifx_P *)0xF003C000u),14}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT79_P15_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 79, {&(*(Ifx_P *)0xF003B500u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT96_P11_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_2, IfxGtm_ToutSel_b, 96, {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT13_P00_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 13, {&(*(Ifx_P *)0xF003A000u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT21_P00_12_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 21, {&(*(Ifx_P *)0xF003A000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT29_P33_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 29, {&(*(Ifx_P *)0xF003D300u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT49_P22_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 49, {&(*(Ifx_P *)0xF003C200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT56_P21_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 56, {&(*(Ifx_P *)0xF003C100u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT71_P15_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_a, 71, {&(*(Ifx_P *)0xF003B500u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT80_P14_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 80, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT97_P11_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_3, IfxGtm_ToutSel_b, 97, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT0_P02_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 0, {&(*(Ifx_P *)0xF003A200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT10_P00_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 10, {&(*(Ifx_P *)0xF003A000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT110_P11_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 110, {&(*(Ifx_P *)0xF003B100u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT14_P00_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 14, {&(*(Ifx_P *)0xF003A000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT1_P02_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 1, {&(*(Ifx_P *)0xF003A200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT22_P33_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 22, {&(*(Ifx_P *)0xF003D300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT30_P33_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 30, {&(*(Ifx_P *)0xF003D300u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT50_P22_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 50, {&(*(Ifx_P *)0xF003C200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT53_P21_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 53, {&(*(Ifx_P *)0xF003C100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT54_P21_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 54, {&(*(Ifx_P *)0xF003C100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT57_P21_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 57, {&(*(Ifx_P *)0xF003C100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT64_P20_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 64, {&(*(Ifx_P *)0xF003C000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT65_P20_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 65, {&(*(Ifx_P *)0xF003C000u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT72_P15_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_a, 72, {&(*(Ifx_P *)0xF003B500u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT73_P15_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 73, {&(*(Ifx_P *)0xF003B500u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT81_P14_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 81, {&(*(Ifx_P *)0xF003B400u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT8_P02_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 8, {&(*(Ifx_P *)0xF003A200u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT94_P13_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 94, {&(*(Ifx_P *)0xF003B300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT95_P11_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 95, {&(*(Ifx_P *)0xF003B100u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT98_P11_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_b, 98, {&(*(Ifx_P *)0xF003B100u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT9_P00_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_4, IfxGtm_ToutSel_d, 9, {&(*(Ifx_P *)0xF003A000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT11_P00_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 11, {&(*(Ifx_P *)0xF003A000u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT12_P00_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 12, {&(*(Ifx_P *)0xF003A000u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT15_P00_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 15, {&(*(Ifx_P *)0xF003A000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT23_P33_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 23, {&(*(Ifx_P *)0xF003D300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT27_P33_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 27, {&(*(Ifx_P *)0xF003D300u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT28_P33_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 28, {&(*(Ifx_P *)0xF003D300u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT2_P02_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 2, {&(*(Ifx_P *)0xF003A200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT3_P02_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 3, {&(*(Ifx_P *)0xF003A200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT55_P21_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 55, {&(*(Ifx_P *)0xF003C100u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT56_P21_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 56, {&(*(Ifx_P *)0xF003C100u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT58_P21_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 58, {&(*(Ifx_P *)0xF003C100u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT66_P20_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 66, {&(*(Ifx_P *)0xF003C000u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT67_P20_11_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 67, {&(*(Ifx_P *)0xF003C000u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT73_P15_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_a, 73, {&(*(Ifx_P *)0xF003B500u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT74_P15_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 74, {&(*(Ifx_P *)0xF003B500u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT76_P15_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 76, {&(*(Ifx_P *)0xF003B500u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT82_P14_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 82, {&(*(Ifx_P *)0xF003B400u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT91_P13_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 91, {&(*(Ifx_P *)0xF003B300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT96_P11_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 96, {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT97_P11_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_d, 97, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT99_P11_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_5, IfxGtm_ToutSel_b, 99, {&(*(Ifx_P *)0xF003B100u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT100_P11_11_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 100, {&(*(Ifx_P *)0xF003B100u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT13_P00_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 13, {&(*(Ifx_P *)0xF003A000u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT14_P00_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 14, {&(*(Ifx_P *)0xF003A000u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT16_P00_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 16, {&(*(Ifx_P *)0xF003A000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT24_P33_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 24, {&(*(Ifx_P *)0xF003D300u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT29_P33_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 29, {&(*(Ifx_P *)0xF003D300u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT30_P33_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 30, {&(*(Ifx_P *)0xF003D300u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT48_P22_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 48, {&(*(Ifx_P *)0xF003C200u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT49_P22_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 49, {&(*(Ifx_P *)0xF003C200u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT4_P02_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 4, {&(*(Ifx_P *)0xF003A200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT59_P20_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 59, {&(*(Ifx_P *)0xF003C000u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT5_P02_5_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 5, {&(*(Ifx_P *)0xF003A200u), 5}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT68_P20_12_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 68, {&(*(Ifx_P *)0xF003C000u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT69_P20_13_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 69, {&(*(Ifx_P *)0xF003C000u),13}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT74_P15_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_a, 74, {&(*(Ifx_P *)0xF003B500u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT80_P14_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 80, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT82_P14_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 82, {&(*(Ifx_P *)0xF003B400u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT83_P14_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 83, {&(*(Ifx_P *)0xF003B400u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT91_P13_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 91, {&(*(Ifx_P *)0xF003B300u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT92_P13_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_b, 92, {&(*(Ifx_P *)0xF003B300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT98_P11_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 98, {&(*(Ifx_P *)0xF003B100u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT99_P11_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_6, IfxGtm_ToutSel_d, 99, {&(*(Ifx_P *)0xF003B100u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT100_P11_11_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 100, {&(*(Ifx_P *)0xF003B100u),11}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT101_P11_12_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 101, {&(*(Ifx_P *)0xF003B100u),12}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT111_P22_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 111, {&(*(Ifx_P *)0xF003C200u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT15_P00_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 15, {&(*(Ifx_P *)0xF003A000u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT16_P00_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 16, {&(*(Ifx_P *)0xF003A000u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT17_P00_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 17, {&(*(Ifx_P *)0xF003A000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT25_P33_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 25, {&(*(Ifx_P *)0xF003D300u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT31_P33_9_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 31, {&(*(Ifx_P *)0xF003D300u), 9}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT32_P33_10_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 32, {&(*(Ifx_P *)0xF003D300u),10}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT50_P22_3_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 50, {&(*(Ifx_P *)0xF003C200u), 3}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT64_P20_8_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_a, 64, {&(*(Ifx_P *)0xF003C000u), 8}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT6_P02_6_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 6, {&(*(Ifx_P *)0xF003A200u), 6}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT70_P20_14_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 70, {&(*(Ifx_P *)0xF003C000u),14}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT71_P15_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 71, {&(*(Ifx_P *)0xF003B500u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT75_P15_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_a, 75, {&(*(Ifx_P *)0xF003B500u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT7_P02_7_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 7, {&(*(Ifx_P *)0xF003A200u), 7}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT81_P14_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 81, {&(*(Ifx_P *)0xF003B400u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT84_P14_4_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 84, {&(*(Ifx_P *)0xF003B400u), 4}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT92_P13_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_d, 92, {&(*(Ifx_P *)0xF003B300u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT93_P13_2_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_7, IfxGtm_ToutSel_b, 93, {&(*(Ifx_P *)0xF003B300u), 2}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT0_P02_0_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_8, IfxGtm_ToutSel_b, 0, {&(*(Ifx_P *)0xF003A200u), 0}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT103_P10_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_b, 103, {&(*(Ifx_P *)0xF003B000u), 1}, IfxPort_OutputIdx_alt1};
IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT1_P02_1_OUT = {IfxGtm_Tom_1, IfxGtm_Tom_Ch_9, IfxGtm_ToutSel_b, 1, {&(*(Ifx_P *)0xF003A200u), 1}, IfxPort_OutputIdx_alt1};



void IfxGtm_PinMap_setTimTin(IfxGtm_Tim_TinMap *config, IfxPort_InputMode inputMode)
{
    uint32 shift = config->channel * 4;

    __ldmst_c(&((*(Ifx_GTM *)0xF0100000u).INOUTSEL.TIM[config->tim].INSEL.U), (0xFU << shift), ((uint32)config->select) << shift);

    if (inputMode != IfxPort_InputMode_undefined)
    {
        IfxPort_setPinModeInput(config->pin.port, config->pin.pinIndex, inputMode);
    }
}

void IfxGtm_PinMap_setTomTout(IfxGtm_Tom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    uint32 outselReg = (config->toutn >> 4);
    uint32 shift = (config->toutn & 0xFU) * 2;
    uint32 outsel = (uint32)config->toutSel << shift;
    uint32 mask = 0x3U << shift;

    __ldmst_c(&((*(Ifx_GTM *)0xF0100000u).INOUTSEL.T.OUTSEL[outselReg].U), mask, outsel);
    IfxPort_setPinModeOutput(config->pin.port, config->pin.pinIndex, outputMode, config->select);
    IfxPort_setPinPadDriver(config->pin.port, config->pin.pinIndex, padDriver);
}
