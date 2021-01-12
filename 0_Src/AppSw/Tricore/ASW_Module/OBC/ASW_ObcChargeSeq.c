/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_ChargingSeq.c                                           **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.03.20                                                  **
**                                                                          **
******************************************************************************
**                                                                          **
**  (c) 2020 YOUNG HWA TECH Co., Ltd. All Rights Reserved                   **
**                                                                          **
**                       YOUNG HWA TECH Co., Ltd.                           **
******************************************************************************

VERSION HISTORY:
----------------

Version     : -.-
Date        : ----.--.--
Revised by  : Tran Duc Hung
Description : Original version.

*/

#define ASW_CHARGINGSEQ_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_ObcConfig.h"
#include "ASW_ObcChargeSeq.h"
#include "ASW_ObcDiagAdc.h"
#include "ASW_ObcConstantPower.h"
#include "ASW_ObcChargeMode.h"

#include "BSW_Gpio.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      PROTOTYPES OF LOCAL FUNCTIONS                     **/
/**                                                                        **/
/****************************************************************************/
static byte ChkBms_SysChargingReady ( void );
static byte ChkOBC_ChargingReady ( void );
static byte ChkOBC_ReadySta ( single f32_AuxVolt, byte u8_HvilSta );
static byte ChkOBC_ACDetectSta ( single f32_ACVIn );
static byte ChkOBC_ControllableSta ( single f32_ACVIn );
static byte ChkOBC_HVILSta ( void );
static byte ChkAdcChangeModeFault ( const st_DiagnosisType *stp_DetectedFlag );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
#if OBC_CHARGE_SEQ_TEST
byte u8s_OBC_ChargingReady_test = 1;
byte u8g_Tot_ChargingReady_test = 0;
#endif

byte u8g_Tot_ChargingReady = 0U; 		 /* BMS + OBC Charging Ready */
byte u8g_OBC_ChargeFinishReq = 0U;
st_DiagnosisType st_AswObcDiagFlag = { 0u, };

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_AcRlySta = 0U;
static byte u8s_PFCSta = 0U;
static byte u8s_PWMSta = 0U;
static byte u8s_OBC_ChargingReady = 0U; 		 /* OBC_Charging Ready Check */
static byte u8s_Bms_SystemChargingReady = 0U;	 /* BMS HW + CAN Charging Ready */
static byte u8g_Bms_Hw_OBCEnable = 0U;   	 /* BMS HW AC Charging Ready signal */

static byte u8g_OBC_HVILSta = 0U;
static byte u8g_OBC_ACDetectSta = 0U;
static byte u8g_OBC_ControllableSta = 0U;
static byte u8g_OBC_ReadySta = 0U;
static byte u8g_OBC_OperatingMode = 0U;
static byte u8g_OBC_PowerDeratingSta = 0U;
static byte u8g_ObcPWMEnable = 0U;
static byte u8s_ACChargingReady100msOffCnt = 0U;
static byte u8s_ACChargingReady100msOnCnt = 0U;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Obc_RunInit ( void )
{
	Bsw_Set_GpioWrite( OBC_DISCHARGE_OUT, ( byte )EN_OBC_Off );

	u8g_OBC_HVILSta = 1U;
	u8g_OBC_ACDetectSta = 0U;
//	u8g_OBC_ChargeFinishReq = 0U;
	u8g_OBC_ControllableSta = 0U;
	u8g_OBC_ReadySta = 0U;
	u8g_OBC_OperatingMode = 0U;
	u8g_OBC_PowerDeratingSta = 0U;

	u8s_Bms_SystemChargingReady = 0U;
	u8g_Bms_Hw_OBCEnable = 0U;

	u8s_OBC_ChargingReady = 0U;
	u8g_Tot_ChargingReady = 0U;

	u8s_AcRlySta = 0U;
	u8s_PFCSta = 0U;
	u8s_PWMSta = 0U;
	u8s_ACChargingReady100msOffCnt = 0U;
	u8s_ACChargingReady100msOnCnt = 0U;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Obc_ChargingSeqRun (void)
{
	/* u8g_OBC_HVILSta  = ChkOBC_HVILSta1ms(); */ /* 0 : Closed, 1 : Open */
	u8g_OBC_HVILSta  = ChkOBC_HVILSta ();
	u8g_OBC_HVILSta = EN_HVIL_Closed;
	u8g_OBC_ReadySta = ChkOBC_ReadySta ( st_rteObcIn.st_RealValue.f32_BatteryVoltage, u8g_OBC_HVILSta );
	u8g_OBC_ACDetectSta = ChkOBC_ACDetectSta ( st_rteObcIn.st_RealValue.f32_InputVoltage );
	u8g_OBC_ControllableSta = ChkOBC_ControllableSta ( st_rteObcIn.st_RealValue.f32_InputVoltage );

	u8g_OBC_OperatingMode = ( byte )u8g_OBC_OperateState;
	/* 1. Hardware Charging Ready */
	u8g_Bms_Hw_OBCEnable = Bsw_Get_GpioRead( OBC_ENABLE_IN );
#if OBC_CHARGE_SEQ_TEST
	u8s_OBC_ChargingReady =  u8s_OBC_ChargingReady_test;
#else
	/* 2. OBC Charging Ready */
	u8s_OBC_ChargingReady = ChkOBC_ChargingReady ();
#endif

	/* 3. BMS Charging Ready */
	u8s_Bms_SystemChargingReady = ChkBms_SysChargingReady ();

	/* 4. Tot_ChargingReady */
	if( ( u8s_OBC_ChargingReady == 1U )
   && ( u8s_Bms_SystemChargingReady == 1U )
	 && ( ChkAdcChangeModeFault( &st_AswObcDiagFlag ) == 0U ) )
	{
		u8g_Tot_ChargingReady =  1U;
	}
	else
	{
		u8g_Tot_ChargingReady =  0U;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_SET_ACRly_PFC_PWM_ON ( void )
{
	byte u8_ret = 0U;

	if( u8s_ACChargingReady100msOnCnt <= DEF_ACRly_ON_MAX_Cnt )
	{
		u8s_AcRlySta = ( byte )EN_OBC_On;
		Bsw_Set_GpioWrite( RELAY_OUT, ( byte )EN_OBC_On );
		u8s_ACChargingReady100msOnCnt++;
	}
	else if( ( DEF_ACRly_ON_MAX_Cnt < u8s_ACChargingReady100msOnCnt )
		  && ( u8s_ACChargingReady100msOnCnt <= DEF_PFC_ON_MAX_Cnt ) )
	{
		u8s_PFCSta = ( byte )EN_OBC_On;
		Bsw_Set_GpioWrite( PFC_ENABLE_OUT, ( byte )EN_OBC_On );
		u8s_ACChargingReady100msOnCnt++;
	}
	else if( ( DEF_PFC_ON_MAX_Cnt < u8s_ACChargingReady100msOnCnt )
		  && ( u8s_ACChargingReady100msOnCnt <= DEF_PWM_ON_MAX_Cnt ) )
	{
		u8s_PWMSta = ( byte )EN_OBC_On;
		u8s_ACChargingReady100msOnCnt++;
	}
	else
	{
		u8_ret =  1U;
		u8g_ObcPWMEnable = ( byte )EN_OBC_On;
	}

	return u8_ret;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_SET_ACRly_PFC_PWM_OFF ( void )
{
	byte u8_ret = 0U;

	if( u8s_ACChargingReady100msOffCnt <= DEF_PWM_OFF_MAX_Cnt )
	{
		u8s_PWMSta = ( byte )EN_OBC_Off;
		u8g_ObcPWMEnable = ( byte )EN_OBC_Off;
		u8s_ACChargingReady100msOffCnt++;
	}
	else if( ( DEF_PWM_OFF_MAX_Cnt < u8s_ACChargingReady100msOffCnt )
			 && ( u8s_ACChargingReady100msOffCnt <= DEF_PFC_OFF_MAX_Cnt ) )
	{
		u8s_PFCSta = ( byte )EN_OBC_Off;
		Bsw_Set_GpioWrite( PFC_ENABLE_OUT, ( byte )EN_OBC_Off );
		u8s_ACChargingReady100msOffCnt++;
	}
	else if( ( DEF_PFC_OFF_MAX_Cnt < u8s_ACChargingReady100msOffCnt )
			 && ( u8s_ACChargingReady100msOffCnt <= DEF_ACRly_OFF_MAX_Cnt ) )
	{
		u8s_AcRlySta = ( byte )EN_OBC_Off;
		Bsw_Set_GpioWrite( RELAY_OUT, ( byte )EN_OBC_Off );
		u8s_ACChargingReady100msOffCnt++;
	}
	else
	{
		u8_ret =  1U;
	}

	return u8_ret;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_ReadySta ( void )
{
	return u8g_OBC_ReadySta;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_ACDetectSta ( void )
{
	return u8g_OBC_ACDetectSta;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_ChargeFinishReq ( void )
{
	return u8g_OBC_ChargeFinishReq;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_ControllableSta ( void )
{
	return u8g_OBC_ControllableSta;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_HVILSta ( void )
{
	return u8g_OBC_HVILSta;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_OperatingMode ( void )
{
	return u8g_OBC_OperatingMode;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_OBC_PowerDeratingSta ( void )
{
	return u8g_OBC_PowerDeratingSta;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_GET_ObcPWMEnable ( void )
{
	return u8g_ObcPWMEnable;
}

/****************************************************************************/
/**                                                                        **/
/**                      LOCAL FUNCTIONS                                   **/
/**                                                                        **/
/****************************************************************************/
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkBms_SysChargingReady ( void )
{
	byte u8_rslt = EN_OBC_Off;

	if( ( u8s_OBC_ChargingReady == ( byte )EN_OBC_On )
/*	 && ( u8g_Bms_Hw_OBCEnable == ( byte )EN_OBC_On )*/
	 && ( st_rteObcIn.st_CANValue.u8_Bms_ACChargeCapacity == ( byte )EN_ACCharge_Ready )
	 && ( st_rteObcIn.st_CANValue.u8_BmsObcCmdEnOBC == ( byte )EN_OBC_On )
	 && ( st_rteObcIn.st_CANValue.u8_Bms_ChargeMode == 1U ) ) /* Normal Mode */
	{
		u8_rslt = EN_OBC_On;  /* OBC Vcu chargingReady */
	}

	return u8_rslt;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkOBC_ChargingReady ( void )
{
	byte u8_rslt = EN_OBC_Off;

	if( ( u8g_OBC_ReadySta == ( byte )EN_OBCReady_Ready ) )
	/*
	 && ( u8g_OBC_HVILSta == ( byte )EN_HVIL_Closed )

	 && ( st_rteObcIn.st_CANValue.u8_Bms_ACPP == ( byte )EN_PP_Detected )
	 && ( ( st_rteObcIn.st_CANValue.u8_Bms_ACCP == ( byte )EN_CP_StateC ) || ( RTE_GET_BMS_ACCP() == ( byte )EN_CP_StateD ) ) */
/*	 && ( u8g_OBC_ACDetectSta == ( byte )EN_OBC_On )*/
/*	 && ( u8g_OBC_ControllableSta == ( byte )EN_OBC_On ) )*/
	{
		u8_rslt = EN_OBC_On;
	}

	return u8_rslt;
}
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkOBC_ReadySta ( single f32_AuxVolt, byte u8_HvilSta )
{
	byte u8_rslt = EN_OBCReady_NotReady;

	if( ( OBC_VAUX_READY <= f32_AuxVolt )
	 && ( u8_HvilSta == ( byte )EN_HVIL_Closed ) )
	{
		u8_rslt = EN_OBCReady_Ready;
	}

	return u8_rslt;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkOBC_ACDetectSta ( single f32_ACVIn )
{
	byte u8_rslt = EN_OBC_Off;

	if( OBC_VAC_DETECTION <= f32_ACVIn)
	{
		u8_rslt = EN_OBC_On; /* AC Input Volt */
	}

	return u8_rslt;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkOBC_ControllableSta ( single f32_ACVIn )
{
	byte u8_rslt = EN_OBC_Off;

	if( ( OBC_VIN_NOR_LOWER <= f32_ACVIn )
	 && ( f32_ACVIn <= OBC_VIN_NOR_UPPER ) )
	{
		u8_rslt = EN_OBC_On;
	}

	return u8_rslt;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte ChkOBC_HVILSta ( void )
{
	byte u8_rslt = EN_HVIL_Open;
	byte u8_AC_InterLock = EN_HVIL_Open;
	byte u8_OBC_InterLock = EN_HVIL_Open;

	u8_AC_InterLock = Bsw_Get_GpioRead ( AC_CONNECTOR_INTERLOCK_IN );
	u8_OBC_InterLock = Bsw_Get_GpioRead ( OBC_OUTPUT_INTERLOCK_IN );

	if( ( u8_AC_InterLock == ( byte )EN_HVIL_Closed )
	 && ( u8_OBC_InterLock == ( byte )EN_HVIL_Closed ) )
	{
		u8_rslt = EN_HVIL_Closed;
	}

	return u8_rslt;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static  byte ChkAdcChangeModeFault ( const st_DiagnosisType* stp_DetectedFlag )
{
	byte rtnVal = 0U;

	if( ( stp_DetectedFlag->u8_HV_V == STATE_OVER )
   || ( stp_DetectedFlag->u8_HV_V == STATE_UNDER )
	 || ( stp_DetectedFlag->u8_HV_I == STATE_OVER)
	 || ( stp_DetectedFlag->u8_HV_I == STATE_UNDER )
	 || ( stp_DetectedFlag->u8_LV_V == STATE_OVER )
	 || ( stp_DetectedFlag->u8_LV_V == STATE_UNDER )
	 || ( stp_DetectedFlag->u8_LV_I == STATE_OVER )
	 || ( stp_DetectedFlag->u8_LV_I == STATE_UNDER ) )
	{
		rtnVal = 1U;   /* Stay to mode fault   */
}

	return rtnVal;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
