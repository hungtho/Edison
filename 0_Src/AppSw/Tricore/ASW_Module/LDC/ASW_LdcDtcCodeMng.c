/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcDtcCodeMng.c                                         **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.28                                                  **
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

#define ASW_LDCDTCCODEMNG_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "ASW_LdcConfig.h"
#include "ASW_LdcDtcCodeMng.h"
#include "ASW_LdcState.h"
#include "BSW_UdsFunc.h"
#include "BSW_ServiceCfg.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define DTC_1107_FILTER ( 1000U )

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

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_DTC_Sts[ DTC_MAX_NUM ];

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
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ctrl_Init ( void )
{
	byte u8_Cnt;

	for( u8_Cnt = 0U; u8_Cnt < DTC_MAX_NUM; u8_Cnt++ )
	{
		u8s_DTC_Sts[ u8_Cnt ] = 0U;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Asw_Read_DTC_Sts ( byte u8_Diag_DTC_Idx )
{
	byte u8_Read_DTC_Sts;

	u8_Read_DTC_Sts = u8s_DTC_Sts[ u8_Diag_DTC_Idx ];

	return ( u8_Read_DTC_Sts );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Write_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Data )
{
	u8s_DTC_Sts[ u8_Diag_DTC_Idx ] = u8_Data;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Set_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts )
{
	if( u8g_UDS_DTC_CtrlSts == DIAG_DTC_CTRL_ON )
	{
		u8s_DTC_Sts[ u8_Diag_DTC_Idx ] |= u8_Diag_DTC_Sts;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Clr_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts )
{
	if( u8g_UDS_DTC_CtrlSts == DIAG_DTC_CTRL_ON )
	{
		u8s_DTC_Sts[ u8_Diag_DTC_Idx ] &= ( byte )( ~u8_Diag_DTC_Sts );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Clr_All_DTC_Sts ( void )
{
	byte u8_Cnt;

	for( u8_Cnt = 0U; u8_Cnt < DTC_MAX_NUM; u8_Cnt++ )
	{
		u8s_DTC_Sts[ u8_Cnt ] = 0U;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
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
static void Set_DTC_P1102 ( const st_DiagnosisType *stp_DiagFlags )
{
	if( stp_DiagFlags->u8_LV_V == STATE_OVER )
	{
		Asw_Set_DTC_Sts ( DTC_P1102_VOUT_OVER, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1102_VOUT_OVER, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1103 ( const st_DiagnosisType *stp_DiagFlags  )
{
	if( stp_DiagFlags->u8_HV_I == STATE_OVER )
	{
		Asw_Set_DTC_Sts ( DTC_P1103_IIN_OVER, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1103_IIN_OVER, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1104 ( const st_RealValuesType *stp_RealAdcValue )
{
	if( stp_RealAdcValue->f32_InputCurrent <= DIAG_FAIL_VALUE )
	{
		Asw_Set_DTC_Sts ( DTC_P1104_IIN_SENSOR_SHORT, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1104_IIN_SENSOR_SHORT, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1105 ( const st_RealValuesType *stp_RealAdcValue )
{
	if( stp_RealAdcValue->f32_OutputCurrent <= DIAG_FAIL_VALUE )
	{
		Asw_Set_DTC_Sts ( DTC_P1105_IOUT_SENSOR_SHORT, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1105_IOUT_SENSOR_SHORT, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1106 ( const st_RealValuesType *stp_RealAdcValue )
{
	if( stp_RealAdcValue->f32_Temperature <= DIAG_FAIL_VALUE )
	{
		Asw_Set_DTC_Sts ( DTC_P1106_TEMP_SENSOR_SHORT, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1106_TEMP_SENSOR_SHORT, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1107 ( const st_RealValuesType *stp_RealAdcValue )
{
	single f32_delta = 0.0F;
	static word u16s_dtc_1107_cnt = 0U;

	f32_delta = stp_RealAdcValue->f32_BatteryVoltage - stp_RealAdcValue->f32_OutputVoltage;

	if( ( f32_delta > 8.0f ) || ( f32_delta < (-8.0f ) ) )
	{
		/* Filter 1000ms = 1s */
		if( u16s_dtc_1107_cnt < DTC_1107_FILTER ){
			u16s_dtc_1107_cnt++;
		}
		else{
			Asw_Set_DTC_Sts ( DTC_P1107_BATT_FAILURE, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
		}
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1107_BATT_FAILURE, DTC_TEST_FAIL );
		u16s_dtc_1107_cnt = 0;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1108 ( const st_DiagnosisType *stp_DiagFlags )
{
	if( stp_DiagFlags->u8_Temp == STATE_OVER )
	{
		Asw_Set_DTC_Sts ( DTC_P1108_TEMP_115_OVER, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1108_TEMP_115_OVER, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_P1109 ( const st_RealValuesType *stp_RealAdcValue, single f32_RefVout, byte u8_SoftStartEnd )
{
	single f32_delta = 0.0F;
	f32_delta = f32_RefVout - stp_RealAdcValue->f32_OutputVoltage;

	if( ( u8_SoftStartEnd == uTRUE )
	&& ( ( f32_delta > 1.0F ) || ( f32_delta < ( -1.0F ) ) ) )
	{
		Asw_Set_DTC_Sts ( DTC_P1109_OUTPUT_FAIL, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_P1109_OUTPUT_FAIL, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_U1101 ( const st_DiagnosisType *stp_DiagFlags )
{
	if( stp_DiagFlags->u8_CanBusOffSts == STATE_FAULT )
	{
		Asw_Set_DTC_Sts ( DTC_U1101_BUS_OFF, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_U1101_BUS_OFF, DTC_TEST_FAIL );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Set_DTC_U1102 ( const st_DiagnosisType *stp_DiagFlags )
{
	if( stp_DiagFlags->u8_CanTimeoutSts == STATE_FAULT )
	{
		Asw_Set_DTC_Sts ( DTC_U1102_BUS_TIMEOUT, ( DTC_TEST_FAIL | DTC_COMFIRMED ) );
	}
	else
	{
		Asw_Clr_DTC_Sts ( DTC_U1102_BUS_TIMEOUT, DTC_TEST_FAIL );
	}
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
