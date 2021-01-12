# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
# 35 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
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
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h" 2
# 59 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
extern byte u8g_SoftStartEnd;
extern byte u8g_SoftStopEnd;
extern single f32g_cmdTargetCur_SS;
extern st_DiagnosisType st_AswLdcDiagFlag;






extern void Asw_Ldc_Init ( void );
extern void Asw_Ldc_Mode ( void );
extern void Asw_Ldc_PhaseShiftLimit ( dword u32_val );
extern en_LDC_STATE Asw_GET_Ldc_PwmCtrl ( void );
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2
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
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h" 2
# 57 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h"
typedef struct
{
 float32 P;
 float32 I;
 float32 D;
 float32 a;
}st_PID_GAINS;

typedef struct
{
 float32 f32_e;
 float32 f32_sum;
 float32 f32_past;
 float32 f32_w;
}st_PID_ERRORS;
# 87 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h"
extern void Asw_Obc_PiInit ( void );
extern void Asw_Ldc_PiInit ( void );
extern void Asw_Obc_PiCofficient ( void );
extern void Asw_Ldc_PiCofficient ( void );

extern dword Asw_Ldc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Ldc_SoftStart ( single f32_CmdTarget, single f32_RefTemp );
extern single Asw_Obc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Obc_SoftStart ( single f32_cmdTarget, single f32_RefTemp );
# 38 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h" 1
# 64 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
extern void Asw_Ldc_ModeUpdate ( const st_DiagnosisType *stp_faultDetectedResult, const st_RealValuesType *stp_adcValues );
extern en_LDC_MODE_DEF Asw_GET_Ldc_Mode ( void );
# 39 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h" 2
# 66 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h"
extern void Asw_Ldc_AdcInit ( void );
extern void Asw_Ldc_DiagAdcValues ( st_DiagnosisType *stp_DiagFlags, const st_RealValuesType *stp_adcValues );
extern en_STATE_DEF Asw_Adc_NormalMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_UnderMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_OverMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_TempNormalMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp );
extern en_STATE_DEF Asw_Adc_TempFaultMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp );
# 40 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2

# 1 "0_Src/AppSw/Tricore/BSW_Module/Services/Bsw_Pwm.h" 1
# 64 "0_Src/AppSw/Tricore/BSW_Module/Services/Bsw_Pwm.h"
extern void Bsw_Ldc_PwmEnable ( dword u32_cmdPhaseShift );
extern void Bsw_Ldc_PwmDisable ( void );
extern void Bsw_Obc_PwmEnable ( single f32_frequency );
extern void Bsw_Obc_PwmDisable ( void );
# 42 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c" 2
# 60 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunReady ( void );
static void Seq_RunNormal ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt, single u8_cmdTargetCur );
static void Seq_RunFault ( void );
static void Seq_RunFailure ( void );
static void Seq_RunDerating ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt );

static void Seq_Control_LdcRun ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt, single u8_cmdTargetCur );
static void Seq_Control_LdcDerating ( const st_DiagnosisType *st_DetectedFlag );
static void Seq_StatePowerOff ( void );
static void Seq_StatePowerOn ( void );
static byte Ldc_SoftStop ( dword u32_rteshift );
static void Ldc_SET_DeratingState ( en_LDC_DERATING_STAT u8_val );







byte u8g_SoftStartEnd = 0U;
byte u8g_SoftStopEnd = 0U;
single f32g_cmdTargetCur_SS = 0.0f;
st_DiagnosisType st_AswLdcDiagFlag = { 0u, };






static en_LDC_STATE u8s_LdcPWMCtrl = EN_LDC_Off;
static en_LDC_DERATING_STAT u8s_LdcDeratingState = DERATING_NOT_USE;
# 104 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
void Asw_Ldc_Init ( void )
{
 Asw_Ldc_PiInit ();
 Asw_Ldc_PiCofficient ();
 Asw_Ldc_AdcInit ();
}
# 118 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
void Asw_Ldc_Mode ( void )
{
 en_LDC_MODE_DEF u8_ldcModeState = Asw_GET_Ldc_Mode ();

 byte u8_ldcEnableSig = 0U;
 single f32_refVolVal = 0.0F;
 single f32_refCurVal = 0.0F;

 u8_ldcEnableSig = st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable;
 f32_refVolVal = st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt;
 f32_refCurVal = ( 215.0f );

 switch( u8_ldcModeState )
 {
 case LDC_MODE_READY :
  Seq_RunReady ();
  break;

 case LDC_MODE_NORMAL :
  Seq_RunNormal ( u8_ldcEnableSig, f32_refVolVal, f32_refCurVal );
  break;

 case LDC_MODE_DERATING :
  Seq_RunDerating ( u8_ldcEnableSig, f32_refVolVal );
  break;

 case LDC_MODE_FAULT :
  Seq_RunFault();
  break;

 case LDC_MODE_FAILURE :
  Seq_RunFailure ();
  break;

 default :
  Seq_RunReady ();
  break;
 }
}
# 165 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
void Asw_Ldc_PhaseShiftLimit ( dword u32_val )
{
 if( u32_val > ( 420.0F ) ){
  st_rteLdcOut.st_PwmValue.u32_phaseshift = ( 420.0F );
 }else{
  st_rteLdcOut.st_PwmValue.u32_phaseshift = u32_val;
 }
}
# 181 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
en_LDC_STATE Asw_GET_Ldc_PwmCtrl ( void )
{
 return u8s_LdcPWMCtrl;
}
# 198 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunReady ( void )
{
 Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}
# 210 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunNormal ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt, single u8_cmdTargetCur )
{
 if( u8_cmdTargetVolt > 0.0F )
 {
  Seq_Control_LdcRun ( u8_cmdLdcEnable, u8_cmdTargetVolt, u8_cmdTargetCur );
 }
 else
 {
  Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
 }

 Ldc_SET_DeratingState( DERATING_NOT_USE );
}
# 231 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunDerating ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt )
{
 single f32_refVolt = u8_cmdTargetVolt;
 single f32_refCurr = 0.0F;

 Seq_Control_LdcDerating ( &st_AswLdcDiagFlag );

 switch( u8s_LdcDeratingState )
 {
 case DERATING_TEMP_LV01 :
  f32_refCurr = ( single )( 160.0f );
  break;
 case DERATING_TEMP_LV02 :
  f32_refCurr = ( single )( 128.0f );
  break;
 case DERATING_TEMP_LV03 :
  f32_refCurr = ( single )( 50.0f );
  break;
 default :
  f32_refCurr = ( single )( 215.0f );
  break;
 }

 Seq_Control_LdcRun ( u8_cmdLdcEnable, f32_refVolt, f32_refCurr );
}
# 264 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunFault ( void )
{
 Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}
# 276 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_RunFailure ( void )
{
 Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}
# 288 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_Control_LdcRun ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt, single u8_cmdTargetCur )
{
 if( ( u8_cmdLdcEnable == 1U ) && ( u8_cmdTargetVolt >= ( 9.0f ) ) )
 {
  f32g_cmdTargetCur_SS = Asw_Ldc_SoftStart ( u8_cmdTargetCur, f32g_cmdTargetCur_SS );
  if( f32g_cmdTargetCur_SS >= u8_cmdTargetCur )
  {
   u8g_SoftStartEnd = 1U;
  }

  Seq_StatePowerOn ();
 }
 else
 {
  Seq_StatePowerOff ();
 }
}
# 313 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_Control_LdcDerating ( const st_DiagnosisType* st_DetectedFlag )
{
 en_LDC_DERATING_STAT u8_ldcDeratingStat;
 u8_ldcDeratingStat = u8s_LdcDeratingState;

 if( st_DetectedFlag->u8_Temp == STATE_DERATING )
 {
  if( ( st_rteLdcIn.st_RealValue.f32_Temperature > ( 125.0f ) ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= ( 130.0f ) ) )
  {
   if( ( u8_ldcDeratingStat != DERATING_TEMP_LV02 ) && ( u8_ldcDeratingStat != DERATING_TEMP_LV03 ) )
   {
    Ldc_SET_DeratingState ( DERATING_TEMP_LV01 );
   }
   else
   {
    Ldc_SET_DeratingState ( u8_ldcDeratingStat );
   }
  }
  else if( ( st_rteLdcIn.st_RealValue.f32_Temperature > ( 130.0f ) ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= ( 140.0f ) ) )
  {
   if( u8_ldcDeratingStat != DERATING_TEMP_LV03 )
   {
    Ldc_SET_DeratingState ( DERATING_TEMP_LV02 );
   }
   else
   {
    Ldc_SET_DeratingState ( u8_ldcDeratingStat );
   }
  }
  else if( ( st_rteLdcIn.st_RealValue.f32_Temperature > ( 140.0f ) ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= ( 155.0f ) ) )
  {
   Ldc_SET_DeratingState ( DERATING_TEMP_LV03 );
  }
  else
  {
   Ldc_SET_DeratingState ( DERATING_NOT_USE );
  }
 }
 else
 {
  Ldc_SET_DeratingState ( DERATING_NOT_USE );
 }
}
# 364 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_StatePowerOff ( void )
{
 u8s_LdcPWMCtrl = EN_LDC_Off;

 if( Ldc_SoftStop ( st_rteLdcOut.st_PwmValue.u32_phaseshift ) == ( 1U ) )
 {
  f32g_cmdTargetCur_SS = 0.0F;
  u8g_SoftStartEnd = 0;
  Asw_Ldc_Init ();

  u8g_SoftStopEnd = ( 1U );
  Ldc_SET_DeratingState( DERATING_NOT_USE );
 }
}
# 386 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Seq_StatePowerOn ( void )
{
 u8g_SoftStopEnd = 0U;
 u8s_LdcPWMCtrl = EN_LDC_On;
}
# 399 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static byte Ldc_SoftStop ( dword u32_rteshift )
{
 byte u8_Ret = 0U;
 dword u32_shift = 0U;

 if( u32_rteshift > 2U )
 {
  u32_shift = u32_rteshift - 2U;
 }
 else
 {
  u8_Ret = 1U;
 }
 Asw_Ldc_PhaseShiftLimit ( u32_shift );

 return ( u8_Ret );
}
# 424 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
static void Ldc_SET_DeratingState ( en_LDC_DERATING_STAT u8_val )
{
 u8s_LdcDeratingState = u8_val;
}
