# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
# 35 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h"
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcConfig.h" 2
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
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h" 2
# 57 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
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
# 87 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
extern void Asw_Obc_PiInit ( void );
extern void Asw_Ldc_PiInit ( void );
extern void Asw_Obc_PiCofficient ( void );
extern void Asw_Ldc_PiCofficient ( void );

extern dword Asw_Ldc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Ldc_SoftStart ( single f32_CmdTarget, single f32_RefTemp );
extern single Asw_Obc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Obc_SoftStart ( single f32_cmdTarget, single f32_RefTemp );
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h" 1
# 36 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h"
# 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConfig.h" 1
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h" 2
# 58 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h"
extern single f32g_ObcRefCurr_CP;






extern void Asw_Obc_ConstPwrInit ( void );
extern void Asw_Obc_ConstPwr ( void );
# 37 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c" 2
# 55 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
static single Asw_Picontroller ( single f32_ref, single f32_in, st_PID_ERRORS *stp_error, st_PID_GAINS st_K );
static single Asw_Limiter ( single f32_in, single f32_upper, single f32_lower );
static void Asw_ResetError ( st_PID_ERRORS *stp_error );
# 70 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
static st_PID_ERRORS sts_eVoObc, sts_eIoObc;
static st_PID_GAINS sts_kVoObc, sts_kIoObc;

static st_PID_ERRORS sts_eVoLdc, sts_eIoLdc;
static st_PID_GAINS sts_kVoLdc, sts_kIoLdc;
static dword u32s_appSStartCount = 0U ;
# 89 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
void Asw_Obc_PiCofficient ( void )
{
 sts_kVoObc.P = 1.1f;
 sts_kVoObc.I = 0.0094f;
 sts_kVoObc.D = 0.0f;
 sts_kVoObc.a = 1.0f/sts_kVoObc.P;

 sts_kIoObc.P = 5.0f;
 sts_kIoObc.I = 0.13f;
 sts_kIoObc.D = 0.0f;
 sts_kIoObc.a = 1.0f/sts_kIoObc.P;
}
# 109 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
void Asw_Ldc_PiCofficient ( void )
{
 sts_kVoLdc.P = 35.1f;
 sts_kVoLdc.I = 4.1f;

 sts_kVoLdc.D = 0.0f;
 sts_kVoLdc.a = 1.0f/sts_kVoLdc.P;

 sts_kIoLdc.P = 0.10f;
 sts_kIoLdc.I = 0.00912f;
 sts_kIoLdc.D = 0.0f;
 sts_kIoLdc.a = 1.0f/sts_kIoLdc.P;
}
# 130 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
void Asw_Obc_PiInit ( void )
{
 sts_eIoObc.f32_e = 0.0f;
 sts_eIoObc.f32_past = 0.0f;
 sts_eIoObc.f32_sum = 0.0f;
 sts_eIoObc.f32_w = 0.0f;

 sts_eVoObc.f32_e = 0.0f;
 sts_eVoObc.f32_past = 0.0f;
 sts_eVoObc.f32_sum = 0.0f;
 sts_eVoObc.f32_w = 0.0f;

 u32s_appSStartCount = 0U;

 Asw_ResetError ( &sts_eIoObc );
 Asw_ResetError ( &sts_eVoObc );
}
# 155 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
void Asw_Ldc_PiInit ( void )
{
 sts_eIoLdc.f32_e = 0.0f;
 sts_eIoLdc.f32_past = 0.0f;
 sts_eIoLdc.f32_sum = 0.0f;
 sts_eIoLdc.f32_w = 0.0f;

 sts_eVoLdc.f32_e = 0.0f;
 sts_eVoLdc.f32_past = 0.0f;
 sts_eVoLdc.f32_sum = 0.0f;
 sts_eVoLdc.f32_w = 0.0f;

 Asw_ResetError ( &sts_eIoLdc );
 Asw_ResetError ( &sts_eVoLdc );
}
# 179 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
dword Asw_Ldc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb )
{
 dword u32_ShiftLdc = 0U;
 single f32_vLdcPiSetpoint = 0.0f;
 single f32_iLdcPiSetpoint = 0.0f;
 single f32_eLdcVoLimiter = 0.0f;
 single f32_eLdcIoLimiter = 0.0f;
 single f32_vLdcFbValue = 0.0f;
 single f32_iLdcFbValue = 0.0f;
 single f32_vLdcPIconout = 0.0f;
 single f32_iLdcPIconout = 0.0f;

 f32_vLdcFbValue = f32_Vofb;
 f32_iLdcFbValue = f32_Iofb;
 f32_vLdcPiSetpoint = f32_Voref;

 f32_vLdcPIconout = Asw_Picontroller( f32_vLdcPiSetpoint, f32_vLdcFbValue, &sts_eVoLdc, sts_kVoLdc );
 f32_eLdcVoLimiter = Asw_Limiter( f32_vLdcPIconout, f32_Ioref, 1.0f );
 sts_eVoLdc.f32_past = f32_eLdcVoLimiter;
 sts_eVoLdc.f32_w = ( f32_vLdcPIconout - sts_eVoLdc.f32_past ) * sts_kVoLdc.a;

 f32_iLdcPiSetpoint = f32_eLdcVoLimiter;


 f32_iLdcPIconout = Asw_Picontroller( f32_iLdcPiSetpoint, f32_iLdcFbValue , &sts_eIoLdc , sts_kIoLdc );

 f32_eLdcIoLimiter = Asw_Limiter( f32_iLdcPIconout , ( 420.0F ), ( 0.0F ) );
 sts_eIoLdc.f32_past = f32_eLdcIoLimiter;
 sts_eIoLdc.f32_w = ( f32_iLdcPIconout - sts_eIoLdc.f32_past ) * sts_kIoLdc .a;

 u32_ShiftLdc = ( dword )f32_eLdcIoLimiter;

 return ( dword )u32_ShiftLdc;
}
# 221 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
single Asw_Ldc_SoftStart ( single f32_CmdTarget, single f32_RefTemp )
{
 static single f32_refValueTemp = 0.0f;

 if( f32_CmdTarget >= f32_RefTemp )
 {
  f32_refValueTemp = f32_RefTemp + ( f32_CmdTarget/2000.0f );
  if( f32_refValueTemp >= f32_CmdTarget )
  {
   f32_refValueTemp = f32_CmdTarget;
  }
 }
 else
 {
  f32_refValueTemp = f32_RefTemp - ( f32_CmdTarget/200.0f );
  if( f32_refValueTemp < f32_CmdTarget )
  {
   f32_refValueTemp = f32_CmdTarget;
  }
 }
 return ( single )f32_refValueTemp;
}
# 251 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
single Asw_Obc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb )
{
 single f32_iObcPiSetpoint = 0.0f;
 single f32_vObcPiSetpoint = 0.0f;
 single f32_vObcPiFbValue = 0.0f;
 single f32_iObcPiFbValue = 0.0f;
 single f32_obcFreLimit = 0.0f;
 single f32_vObcPIconout = 0.0f;
 single f32_iObcPIconout = 0.0f;
 single f32_eVoObcLimiter = 0.0f;
 single f32_eIoObcLimiter = 0.0f;

 f32_vObcPiFbValue = f32_Vofb;
 f32_iObcPiFbValue = f32_Iofb;
 f32_vObcPiSetpoint = f32_Voref;

 f32_vObcPIconout = Asw_Picontroller ( f32_vObcPiSetpoint, f32_vObcPiFbValue, &sts_eVoObc, sts_kVoObc );
 f32_eVoObcLimiter = Asw_Limiter ( f32_vObcPIconout, f32_Ioref, 1.0f );
 sts_eVoObc.f32_past = f32_eVoObcLimiter;
 sts_eVoObc.f32_w = ( f32_vObcPIconout - sts_eVoObc.f32_past ) * sts_kVoObc.a;

 f32_iObcPiSetpoint = f32_Ioref;
 f32_iObcPIconout = Asw_Picontroller ( f32_iObcPiSetpoint, f32_iObcPiFbValue, &sts_eIoObc, sts_kIoObc );

 f32_eIoObcLimiter = Asw_Limiter ( f32_iObcPIconout, ( 2000.0F ), ( 500.0F ) );
 sts_eIoObc.f32_past = f32_eIoObcLimiter;
 sts_eIoObc.f32_w = ( f32_iObcPIconout - sts_eIoObc.f32_past ) * sts_kIoObc.a;

 f32_obcFreLimit = Asw_Limiter ( ( ( 100000000.0F )/f32_eIoObcLimiter ), ( 200000.0F ), ( 50000.0F ) );

 return f32_obcFreLimit;
}
# 291 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
single Asw_Obc_SoftStart ( single f32_cmdTarget, single f32_RefTemp )
{
 static single f32_Aswref = 0.0f;

 u32s_appSStartCount++;

 if( u32s_appSStartCount > 20u )
 {
  if( f32_cmdTarget >= f32_RefTemp )
  {
   f32_Aswref = f32_RefTemp + ( f32_cmdTarget / 100.0f );

   if( f32_Aswref >= f32_cmdTarget ){ f32_Aswref = f32_cmdTarget; }
  }
  else
  {
   f32_Aswref = f32_RefTemp - ( f32_cmdTarget / 100.0f);

   if(f32_Aswref < f32_cmdTarget )
   {
    if( f32_Aswref > 2.5f ){ f32_Aswref = f32_cmdTarget; }
    else{ f32_Aswref = 2.5f; }
   }
  }

  u32s_appSStartCount = 0U;
 }

 return f32_Aswref;
}
# 334 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
static single Asw_Picontroller ( single f32_ref, single f32_in, st_PID_ERRORS *stp_error, st_PID_GAINS st_K )
{
 single f32_out;

 stp_error->f32_e = f32_ref - f32_in;
 stp_error->f32_sum += (stp_error->f32_e - stp_error->f32_w )*st_K.I;
 f32_out = ( st_K.P * stp_error->f32_e ) + stp_error->f32_sum;

 return f32_out;
}
# 352 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
static single Asw_Limiter ( single f32_in, single f32_upper, single f32_lower )
{
 single f32_limit;

 if( f32_in >= f32_upper )
 {
  f32_limit = f32_upper;
 }
 else if( f32_in <= f32_lower )
 {
  f32_limit = f32_lower;
 }
 else
 {
  f32_limit = f32_in;
 }

 return f32_limit;
}
# 379 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
static void Asw_ResetError ( st_PID_ERRORS *stp_error )
{
 stp_error->f32_e = 0.0f;
 stp_error->f32_sum = 0.0f;
 stp_error->f32_w = 0.0f;
 stp_error->f32_past = 0.0f;
}
