# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
# 35 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
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
# 36 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c" 2
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
# 37 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c" 2
# 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.h" 1
# 83 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.h"
extern void Asw_Ctrl_Init ( void );
extern byte Asw_Read_DTC_Sts ( byte u8_Diag_DTC_Idx );
extern void Asw_Write_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Data );
extern void Asw_Set_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts );
extern void Asw_Clr_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts );
extern void Asw_Clr_All_DTC_Sts ( void );
extern void Asw_Ldc_DtcStsUpdate ( void );
# 38 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c" 2
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
# 39 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c" 2
# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h" 1
# 36 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h"
# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h" 1
# 37 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h" 2
# 117 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h"
typedef struct
{
 byte u2_mReqType :2;
 byte u1_mSuppressRes :1;
 byte u5_mDummy :5;
}DescMsgAddInfo;


typedef struct
{
 byte *u8p_mReqData;
 word u16_mReqDataLen;
 byte *u8p_mResData;
 word u16_mResDataLen;
 DescMsgAddInfo st_mMsgAddInfo;
 byte u8_mContext;
}DescMsgContext;

typedef struct
{
 byte u2_mIsValid :2;
 byte u2_mReqType :2;
 byte u1_mHaveSubFunc :1;
 byte u3_mDummy :3;
 byte u8_mServiceId;
 void ( * Func )( DescMsgContext * );
}DescService;
# 154 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h"
extern byte u8g_UDS_ResetReq;
extern byte u8g_UDS_CommRx_CtrlSts;
extern byte u8g_UDS_CommTx_CtrlSts;
extern byte u8g_UDS_DTC_CtrlSts;






extern void Bsw_UdsFunc_Init ( void );
extern void Bsw_UdsFunc ( void );
# 40 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c" 2
# 60 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1102 ( const st_DiagnosisType *stp_DiagFlags );
static void Set_DTC_P1103 ( const st_DiagnosisType *stp_DiagFlags );
static void Set_DTC_P1104 ( const st_RealValuesType *stp_RealAdcValue );
static void Set_DTC_P1105 ( const st_RealValuesType *stp_RealAdcValue );
static void Set_DTC_P1106 ( const st_RealValuesType *stp_RealAdcValue );
static void Set_DTC_P1107 ( const st_RealValuesType *stp_RealAdcValue );
static void Set_DTC_P1108 ( const st_DiagnosisType *stp_DiagFlags );
static void Set_DTC_P1109 ( const st_RealValuesType *stp_RealAdcValue, single f32_RefVout, byte u8_SoftStartEnd );
static void Set_DTC_U1101 ( const st_DiagnosisType *stp_DiagFlags );
static void Set_DTC_U1102 ( const st_DiagnosisType *stp_DiagFlags );
# 82 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static byte u8s_DTC_Sts[ ( 10U ) ];
# 103 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Ctrl_Init ( void )
{
 byte u8_Cnt;

 for( u8_Cnt = 0U; u8_Cnt < ( 10U ); u8_Cnt++ )
 {
  u8s_DTC_Sts[ u8_Cnt ] = 0U;
 }
}
# 120 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
byte Asw_Read_DTC_Sts ( byte u8_Diag_DTC_Idx )
{
 byte u8_Read_DTC_Sts;

 u8_Read_DTC_Sts = u8s_DTC_Sts[ u8_Diag_DTC_Idx ];

 return ( u8_Read_DTC_Sts );
}
# 136 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Write_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Data )
{
 u8s_DTC_Sts[ u8_Diag_DTC_Idx ] = u8_Data;
}
# 148 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Set_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts )
{
 if( u8g_UDS_DTC_CtrlSts == ( 0U ) )
 {
  u8s_DTC_Sts[ u8_Diag_DTC_Idx ] |= u8_Diag_DTC_Sts;
 }
}
# 163 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Clr_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts )
{
 if( u8g_UDS_DTC_CtrlSts == ( 0U ) )
 {
  u8s_DTC_Sts[ u8_Diag_DTC_Idx ] &= ( byte )( ~u8_Diag_DTC_Sts );
 }
}
# 178 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Clr_All_DTC_Sts ( void )
{
 byte u8_Cnt;

 for( u8_Cnt = 0U; u8_Cnt < ( 10U ); u8_Cnt++ )
 {
  u8s_DTC_Sts[ u8_Cnt ] = 0U;
 }
}
# 195 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
void Asw_Ldc_DtcStsUpdate ( void )
{
 const st_DiagnosisType *stp_DiagFlags = &st_AswLdcDiagFlag;
 const st_RealValuesType *stp_RealAdcValue = &st_rteLdcIn.st_RealValue;

 Set_DTC_P1102 ( stp_DiagFlags );
 Set_DTC_P1103 ( stp_DiagFlags );
 Set_DTC_P1104 ( stp_RealAdcValue );
 Set_DTC_P1105 ( stp_RealAdcValue );
 Set_DTC_P1106 ( stp_RealAdcValue );
 Set_DTC_P1107 ( stp_RealAdcValue );
 Set_DTC_P1108 ( stp_DiagFlags );
 Set_DTC_P1109 ( stp_RealAdcValue, st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt, u8g_SoftStartEnd );
 Set_DTC_U1101 ( stp_DiagFlags );
 Set_DTC_U1102 ( stp_DiagFlags );
}
# 224 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1102 ( const st_DiagnosisType *stp_DiagFlags )
{
 if( stp_DiagFlags->u8_LV_V == STATE_OVER )
 {
  Asw_Set_DTC_Sts ( ( 0U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 0U ), ( 0x01U ) );
 }
}
# 243 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1103 ( const st_DiagnosisType *stp_DiagFlags )
{
 if( stp_DiagFlags->u8_HV_I == STATE_OVER )
 {
  Asw_Set_DTC_Sts ( ( 1U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 1U ), ( 0x01U ) );
 }
}
# 262 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1104 ( const st_RealValuesType *stp_RealAdcValue )
{
 if( stp_RealAdcValue->f32_InputCurrent <= ( -255.0F ) )
 {
  Asw_Set_DTC_Sts ( ( 2U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 2U ), ( 0x01U ) );
 }
}
# 281 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1105 ( const st_RealValuesType *stp_RealAdcValue )
{
 if( stp_RealAdcValue->f32_OutputCurrent <= ( -255.0F ) )
 {
  Asw_Set_DTC_Sts ( ( 3U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 3U ), ( 0x01U ) );
 }
}
# 300 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1106 ( const st_RealValuesType *stp_RealAdcValue )
{
 if( stp_RealAdcValue->f32_Temperature <= ( -255.0F ) )
 {
  Asw_Set_DTC_Sts ( ( 4U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 4U ), ( 0x01U ) );
 }
}
# 319 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1107 ( const st_RealValuesType *stp_RealAdcValue )
{
 single f32_delta = 0.0F;
 static word u16s_dtc_1107_cnt = 0U;

 f32_delta = stp_RealAdcValue->f32_BatteryVoltage - stp_RealAdcValue->f32_OutputVoltage;

 if( ( f32_delta > 8.0f ) || ( f32_delta < (-8.0f ) ) )
 {

  if( u16s_dtc_1107_cnt < ( 1000U ) ){
   u16s_dtc_1107_cnt++;
  }
  else{
   Asw_Set_DTC_Sts ( ( 5U ), ( ( 0x01U ) | ( 0x08U ) ) );
  }
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 5U ), ( 0x01U ) );
  u16s_dtc_1107_cnt = 0;
 }
}
# 350 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1108 ( const st_DiagnosisType *stp_DiagFlags )
{
 if( stp_DiagFlags->u8_Temp == STATE_OVER )
 {
  Asw_Set_DTC_Sts ( ( 6U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 6U ), ( 0x01U ) );
 }
}
# 369 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_P1109 ( const st_RealValuesType *stp_RealAdcValue, single f32_RefVout, byte u8_SoftStartEnd )
{
 single f32_delta = 0.0F;
 f32_delta = f32_RefVout - stp_RealAdcValue->f32_OutputVoltage;

 if( ( u8_SoftStartEnd == ( 1U ) )
 && ( ( f32_delta > 1.0F ) || ( f32_delta < ( -1.0F ) ) ) )
 {
  Asw_Set_DTC_Sts ( ( 7U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 7U ), ( 0x01U ) );
 }
}
# 392 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_U1101 ( const st_DiagnosisType *stp_DiagFlags )
{
 if( stp_DiagFlags->u8_CanBusOffSts == STATE_FAULT )
 {
  Asw_Set_DTC_Sts ( ( 8U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 8U ), ( 0x01U ) );
 }
}
# 411 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
static void Set_DTC_U1102 ( const st_DiagnosisType *stp_DiagFlags )
{
 if( stp_DiagFlags->u8_CanTimeoutSts == STATE_FAULT )
 {
  Asw_Set_DTC_Sts ( ( 9U ), ( ( 0x01U ) | ( 0x08U ) ) );
 }
 else
 {
  Asw_Clr_DTC_Sts ( ( 9U ), ( 0x01U ) );
 }
}
