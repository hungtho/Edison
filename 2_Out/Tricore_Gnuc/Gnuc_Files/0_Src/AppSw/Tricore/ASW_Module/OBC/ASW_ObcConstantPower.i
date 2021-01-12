# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
# 35 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h"
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h" 2
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h" 1
# 36 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h" 1
# 36 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h" 1
# 36 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
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
# 37 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h" 2
# 85 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
 typedef sint8 sbyte;
 typedef uint8 byte;

 typedef sint16 sword;
 typedef uint16 word;

 typedef sint32 sdword;
 typedef uint32 dword;

 typedef float32 single;
# 430 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
extern byte U8_CountUp ( byte u8_Count, byte u8_Max );
extern byte U8_CountDown ( byte u8_Count );
extern word U16_CountUp ( word u16_Count, word u16_Max );
extern word U16_CountDown ( word u16_Count );
extern dword U32_CountUp ( dword u32_Count, dword u32_Max );
extern dword U32_CountDown ( dword u32_Count );
extern byte DetectEdgeState ( byte u8_NowValue, byte *u8p_LastValue );
# 37 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h" 2
# 52 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
typedef enum
{
 EN_LDC_Off = 0U,
 EN_LDC_On
}en_LDC_STATE;

typedef enum
{
 NOR_LOWER = 0U,
 NOR_UPPER,
 NOR_RECOVER_LOWER,
 NOR_RECOVER_UPPER,
 FAULT_LOWER,
 FAULT_UPPER
}en_ADC_MODE_DEF;

typedef enum
{
 LDC_MODE_READY = 0U,
 LDC_MODE_NORMAL,
 LDC_MODE_DERATING,
 LDC_MODE_FAULT,
 LDC_MODE_FAILURE
}en_LDC_MODE_DEF;

typedef enum
{
 STATE_NORMAL,
 STATE_UNDER,
 STATE_OVER,
 STATE_DERATING,
 STATE_FAULT,
}en_STATE_DEF;

typedef enum
{
 DERATING_NOT_USE = 0U,
 DERATING_TEMP_LV01,
 DERATING_TEMP_LV02,
 DERATING_TEMP_LV03,
}en_LDC_DERATING_STAT;

typedef struct
{
 en_STATE_DEF u8_14VBat;
 en_STATE_DEF u8_Temp;
 en_STATE_DEF u8_HV_V;
 en_STATE_DEF u8_HV_I;
 en_STATE_DEF u8_LV_V;
 en_STATE_DEF u8_LV_I;
 en_STATE_DEF u8_LV_I_over;

 en_STATE_DEF u8_CanTimeoutSts;
 en_STATE_DEF u8_CanBusOffSts;
}st_DiagnosisType;

typedef struct
{
 single f32_limit[6];
 word u16_DeratingCnt;
 word u16_FaultUnderCnt;
 word u16_FaultOvertCnt;
 en_STATE_DEF u8_SensorState;
}st_AdcLimitValue;

typedef struct
{
 single f32_InputCurrent;
 single f32_InputVoltage;
 single f32_OutputCurrent;
 single f32_OutputVoltage;
 single f32_Temperature;
 single f32_BatteryVoltage;
}st_RealValuesType;

typedef struct
{

 byte u8_VcuCmdLdc_Enable;
 single f32_VcuCmdLdc_TargetVolt;

 en_STATE_DEF u8_canBusoffStatus;
 en_STATE_DEF u8_canTimeoutStatus;

}st_CANRxValuesType_Ldc;

typedef struct
{

 single f32_Bms_ObcCmdCurr;
 single f32_Bms_ObcCmdVoltage;
 byte u8_Bms_ACChargingReady;
 byte u8_BmsObcCmdEnOBC;
 byte u8_Bms_HWTestMode;
 byte u8_BmsObcCmdRelay;
 byte u8_BmsObcCmdPFC_Enable;
 byte u8_Bms_EnableOBCWakeup;

 byte u8_Bms_ACPP;
 byte u8_Bms_ACCP;
 byte u8_Bms_ACPwmDuty;
 byte u8_Bms_ACChargeCapacity;

 byte u8_Bms_ChargeEnd;
 byte u8_Bms_ChargeMode;

 en_STATE_DEF u8_canBusoffStatus;
 en_STATE_DEF u8_canTimeoutStatus;
}st_CANRxValuesType_Obc;

typedef struct
{
 en_LDC_MODE_DEF u8_ldc_mode;
}st_CANTxValuesType_Ldc;

typedef struct
{
 en_LDC_STATE u8_LdcPWMCtrl;
 dword u32_phaseshift;
}st_PWMType_Ldc;

typedef struct
{
 st_RealValuesType st_RealValue;
 st_CANRxValuesType_Ldc st_CANValue;
}st_RteIn_Ldc;

typedef struct
{
 st_CANTxValuesType_Ldc st_CANValue;
 st_PWMType_Ldc st_PwmValue;
}st_RteOut_Ldc;


typedef enum
{
 OBC_InitMode = 0U,
 OBC_NoChargingMode,
 OBC_ChargingMode,
 OBC_FaultMode,
 OBC_ChargedFinishMode,
}en_OBC_ModeState;

typedef struct
{
 byte u8_OBC_ReadySta;
 byte u8_OBC_ControllableSta;
 byte u8_OBC_ChargeFinishReq;
 byte u8_OBC_ACDetectSta;
 byte u8_OBC_HVILSta;
 byte u8_OBC_PowerDeratingSta;
 en_OBC_ModeState u8_OBC_OperatingMode;
}st_CANTxValuesType_Obc;

typedef struct
{
 byte u8_ObcPWMCtrl;
 single f32_frequency;
}st_PWMType_Obc;

typedef struct
{
 st_RealValuesType st_RealValue;
 st_CANRxValuesType_Obc st_CANValue;
}st_RteIn_Obc;

typedef struct
{
 st_CANTxValuesType_Obc st_CANValue;
 st_PWMType_Obc st_PwmValue;
}st_RteOut_Obc;
# 37 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h" 2
# 59 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
extern st_RteIn_Ldc st_rteLdcIn;
extern st_RteIn_Obc st_rteObcIn;






extern void RTE_LDC_IN ( void );
extern void RTE_OBC_IN ( void );
# 38 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h" 2
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h" 1
# 58 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h"
extern st_RteOut_Ldc st_rteLdcOut;
extern st_RteOut_Obc st_rteObcOut;






extern void RTE_LDC_OUT ( void );
extern void RTE_OBC_OUT ( void );
# 39 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h" 2
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h" 1
# 58 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h"
extern single f32g_ObcRefCurr_CP;






extern void Asw_Obc_ConstPwrInit ( void );
extern void Asw_Obc_ConstPwr ( void );
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h" 2
# 57 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
enum {
 EN_OBC_Off = 0U,
 EN_OBC_On
};

enum {
 EN_OBCReady_NotReady = 0U,
 EN_OBCReady_Ready
};

enum {
 EN_ACCharge_NotReady = 0U,
 EN_ACCharge_Ready,
 EN_ACCharge_Finish
};

enum {
 EN_CP_StateA = 0,
 EN_CP_StateB,
 EN_CP_StateC,
 EN_CP_StateD,
 EN_CP_StateE,
 EN_CP_StateF
};

enum {
 EN_PP_NotDetected = 0,
 EN_PP_Detected,
 EN_PP_Open_SwitchPushed
};
enum {
 EN_BMS_Discharge_Init = 0,
 EN_BMS_Discharge_NotActive,
 EN_BMS_Discharge_Active
};

enum {
 EN_HVIL_Closed = 0,
 EN_HVIL_Open,
 EN_HVIL_Init
};
# 107 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
extern byte u8g_OBC_ChargeFinishReq;
extern byte u8g_Tot_ChargingReady;
extern st_DiagnosisType st_AswObcDiagFlag;






extern void Asw_Obc_RunInit ( void );
extern void Asw_Obc_ChargingSeqRun ( void );
extern byte Asw_SET_ACRly_PFC_PWM_ON ( void );
extern byte Asw_SET_ACRly_PFC_PWM_OFF ( void );

extern byte Asw_GET_OBC_ReadySta ( void );
extern byte Asw_GET_OBC_ACDetectSta ( void );
extern byte Asw_GET_OBC_ChargeFinishReq ( void );
extern byte Asw_GET_OBC_ControllableSta ( void );
extern byte Asw_GET_OBC_HVILSta ( void );
extern byte Asw_GET_OBC_OperatingMode ( void );
extern byte Asw_GET_OBC_PowerDeratingSta ( void );
extern byte Asw_GET_ObcPWMEnable ( void );
# 38 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c" 2
# 62 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
single f32g_ObcRefCurr_CP = 0.0f;
# 83 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
void Asw_Obc_ConstPwr ( void )
{
 single f32_DCOutCurr = 0.0f;
 single f32_DCOutVolt = 0.0f;
 single f32_DCOutKw = 0.0f;

 f32_DCOutCurr = st_rteObcIn.st_RealValue.f32_OutputCurrent;
 f32_DCOutVolt = st_rteObcIn.st_RealValue.f32_OutputVoltage;

 f32_DCOutKw = f32_DCOutCurr * f32_DCOutVolt;

 if( ( 6600.0f ) <= f32_DCOutKw )
 {
  if( ( single )f32_DCOutVolt > 0.0F )
  {
   f32g_ObcRefCurr_CP = ( 6600.0f ) / f32_DCOutVolt;
  }

  if( st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr < f32g_ObcRefCurr_CP )
  {
   f32g_ObcRefCurr_CP = st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr;
  }
 }
 else
 {
  f32g_ObcRefCurr_CP = st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr;
 }
}
# 119 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
void Asw_Obc_ConstPwrInit ( void )
{
 f32g_ObcRefCurr_CP = 0.0f;
}
