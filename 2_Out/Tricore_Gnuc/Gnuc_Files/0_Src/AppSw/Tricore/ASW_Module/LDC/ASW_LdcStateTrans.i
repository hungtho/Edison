# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
# 35 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
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
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h" 2
# 64 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
extern void Asw_Ldc_ModeUpdate ( const st_DiagnosisType *stp_faultDetectedResult, const st_RealValuesType *stp_adcValues );
extern en_LDC_MODE_DEF Asw_GET_Ldc_Mode ( void );
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h"
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 2
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h" 1
# 36 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h" 1
# 37 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h" 2
# 59 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
extern st_RteIn_Ldc st_rteLdcIn;
extern st_RteIn_Obc st_rteObcIn;






extern void RTE_LDC_IN ( void );
extern void RTE_OBC_IN ( void );
# 38 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 2
# 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h" 1
# 58 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h"
extern st_RteOut_Ldc st_rteLdcOut;
extern st_RteOut_Obc st_rteObcOut;






extern void RTE_LDC_OUT ( void );
extern void RTE_OBC_OUT ( void );
# 39 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 2
# 1 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_ServiceCfg.h" 1
# 40 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 2
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h" 1
# 59 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
extern byte u8g_SoftStartEnd;
extern byte u8g_SoftStopEnd;
extern single f32g_cmdTargetCur_SS;
extern st_DiagnosisType st_AswLdcDiagFlag;






extern void Asw_Ldc_Init ( void );
extern void Asw_Ldc_Mode ( void );
extern void Asw_Ldc_PhaseShiftLimit ( dword u32_val );
extern en_LDC_STATE Asw_GET_Ldc_PwmCtrl ( void );
# 38 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c" 2
# 57 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeReady ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeNormal ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeDerating ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeFault ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeFailure ( const st_RealValuesType *stp_RealValues );
static void Ldc_SET_ModeStatus ( en_LDC_MODE_DEF u8_val );
# 75 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static word u16g_CheckReady_Cnt = 0U;
static en_LDC_MODE_DEF u8g_LdcMode = LDC_MODE_READY;
# 90 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
void Asw_Ldc_ModeUpdate ( const st_DiagnosisType *stp_faultDetectedResult, const st_RealValuesType *stp_adcValues )
{
 switch( Asw_GET_Ldc_Mode () )
 {
 case LDC_MODE_READY:
  if( IsChangeModeFailure ( stp_adcValues ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
  }
  else if( IsChangeModeReady ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
  }
  else
  {
   Ldc_SET_ModeStatus ( LDC_MODE_READY );
  }
  break;
 case LDC_MODE_NORMAL:
  if( IsChangeModeFailure ( stp_adcValues ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
  }
  else if( IsChangeModeFault ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAULT );
  }
  else if( ( ( stp_faultDetectedResult->u8_HV_V == STATE_UNDER )
      || ( stp_faultDetectedResult->u8_HV_V == STATE_OVER ) )
      && ( st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable == 0U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_READY );
  }
  else if( IsChangeModeDerating ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_DERATING );
  }
  else
  {
   Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
  }
  break;
 case LDC_MODE_DERATING:
  if( IsChangeModeFailure ( stp_adcValues ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
  }
  else if( IsChangeModeFault ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAULT );
  }
  else if( ( ( stp_faultDetectedResult->u8_HV_V == STATE_UNDER )
      || ( stp_faultDetectedResult->u8_HV_V == STATE_OVER ) )
      && ( st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable == 0U ) )
  {
   Ldc_SET_ModeStatus( LDC_MODE_READY );
  }
  else if( IsChangeModeNormal ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
  }
  else
  {
   Ldc_SET_ModeStatus ( LDC_MODE_DERATING );
  }
  break;
 case LDC_MODE_FAULT:
  if( IsChangeModeFailure ( stp_adcValues ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
  }
  else if( IsChangeModeNormal ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_READY );
  }
  else
  {
   Ldc_SET_ModeStatus( LDC_MODE_FAULT );
  }
  break;
 case LDC_MODE_FAILURE:
  if( IsChangeModeNormal ( stp_faultDetectedResult ) == ( 1U ) )
  {
   Ldc_SET_ModeStatus ( LDC_MODE_READY );
  }
  else
  {
   Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
  }
  break;
 default:
   Ldc_SET_ModeStatus ( LDC_MODE_READY );
  break;
 }
}
# 193 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
en_LDC_MODE_DEF Asw_GET_Ldc_Mode ( void )
{
 return u8g_LdcMode;
}
# 209 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeReady ( const st_DiagnosisType *stp_DetectedFlag )
{
 byte rtnVal = ( 0U );

 if( ( stp_DetectedFlag->u8_LV_V == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_Temp == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_CanBusOffSts == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_CanTimeoutSts == STATE_NORMAL ) )
 {
  if( u16g_CheckReady_Cnt >= ( 500U ) ){ rtnVal = ( 1U ); }
  else{ u16g_CheckReady_Cnt++; }
 }
 else
 {
  u16g_CheckReady_Cnt = 0U;
 }

 return rtnVal;
}
# 236 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeNormal ( const st_DiagnosisType *stp_DetectedFlag )
{
 byte rtnVal = ( 0U );

 if( ( stp_DetectedFlag->u8_HV_I == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_HV_V == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_LV_I == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_LV_V == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_Temp == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_14VBat == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_LV_I_over == STATE_NORMAL )
  && ( stp_DetectedFlag->u8_CanBusOffSts == STATE_NORMAL ) )
 {
  rtnVal = ( 1U );
 }

 return rtnVal;
}
# 262 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeDerating ( const st_DiagnosisType *stp_DetectedFlag )
{
 byte rtnVal = ( 0U );

 if( stp_DetectedFlag->u8_Temp == STATE_DERATING )
 {
  rtnVal = ( 1U );
 }

 return rtnVal;
}
# 281 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeFault ( const st_DiagnosisType *stp_DetectedFlag )
{
 byte rtnVal = ( 0U );

 if( ( stp_DetectedFlag->u8_HV_V == STATE_OVER )
  || ( stp_DetectedFlag->u8_HV_I == STATE_OVER )
  || ( stp_DetectedFlag->u8_LV_V == STATE_OVER )
  || ( stp_DetectedFlag->u8_LV_I == STATE_OVER )
  || ( stp_DetectedFlag->u8_Temp == STATE_OVER )
  || ( stp_DetectedFlag->u8_14VBat == STATE_OVER )
  || ( stp_DetectedFlag->u8_HV_V == STATE_UNDER)
  || ( stp_DetectedFlag->u8_LV_V == STATE_UNDER)
  || ( stp_DetectedFlag->u8_Temp == STATE_UNDER )
  || ( stp_DetectedFlag->u8_LV_I_over == STATE_FAULT ) )
 {
  rtnVal = ( 1U );
  u16g_CheckReady_Cnt = 0U;
 }

 return rtnVal;
}
# 310 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static byte IsChangeModeFailure ( const st_RealValuesType *stp_RealValues )
{
 byte rtnVal = ( 0U );

 if( ( stp_RealValues->f32_Temperature <= ( -255.0F ) )
   || ( stp_RealValues->f32_InputCurrent <= ( -255.0F ) )
   || ( stp_RealValues->f32_InputVoltage <= ( -255.0F ) )
   || ( stp_RealValues->f32_OutputCurrent <= ( -255.0F ) )
   || ( stp_RealValues->f32_OutputVoltage <= ( -255.0F ) ) )
 {
  rtnVal = ( 1U );
  u16g_CheckReady_Cnt = 0U;
 }

 return rtnVal;
}
# 334 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
static void Ldc_SET_ModeStatus ( en_LDC_MODE_DEF u8_val )
{
 u8g_LdcMode = u8_val;
}
