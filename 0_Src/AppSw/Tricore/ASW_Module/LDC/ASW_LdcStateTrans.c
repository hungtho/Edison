/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcStateTrans.c                                         **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.28                                                  **
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

#define ASW_LDCSTATETRANS_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_LdcStateTrans.h"
#include "ASW_LdcConfig.h"
#include "ASW_LdcState.h"
#include "BSW_ServiceCfg.h"

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
static byte IsChangeModeReady ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeNormal ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeDerating ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeFault ( const st_DiagnosisType *stp_DetectedFlag );
static byte IsChangeModeFailure ( const st_RealValuesType *stp_RealValues );
static void Ldc_SET_ModeStatus ( en_LDC_MODE_DEF u8_val );

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
static word u16g_CheckReady_Cnt = 0U;
static en_LDC_MODE_DEF u8g_LdcMode = LDC_MODE_READY;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_ModeUpdate ( const st_DiagnosisType *stp_faultDetectedResult, const st_RealValuesType *stp_adcValues )
{
	switch( Asw_GET_Ldc_Mode () )
	{
	case LDC_MODE_READY:
		if( IsChangeModeFailure ( stp_adcValues ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
		}
		else if( IsChangeModeReady ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
		}
		else
		{
			Ldc_SET_ModeStatus ( LDC_MODE_READY );
		}
		break;
	case LDC_MODE_NORMAL:
		if( IsChangeModeFailure ( stp_adcValues ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
		}
		else if( IsChangeModeFault ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAULT );
		}
		else if( ( ( stp_faultDetectedResult->u8_HV_V == STATE_UNDER )
						|| ( stp_faultDetectedResult->u8_HV_V == STATE_OVER ) )
						&& ( st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable == 0U ) )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_READY );
		}
		else if( IsChangeModeDerating ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_DERATING );
		}
		else
		{
			Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
		}
		break;
	case LDC_MODE_DERATING:
		if( IsChangeModeFailure ( stp_adcValues ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );  /* stay to mode Fault */
		}
		else if( IsChangeModeFault ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAULT );  /* stay to mode Fault */
		}
		else if( ( ( stp_faultDetectedResult->u8_HV_V == STATE_UNDER )
						|| ( stp_faultDetectedResult->u8_HV_V == STATE_OVER ) )
						&& ( st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable == 0U ) )
		{
			Ldc_SET_ModeStatus( LDC_MODE_READY );
		}
		else if( IsChangeModeNormal ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_NORMAL );
		}
		else
		{
			Ldc_SET_ModeStatus ( LDC_MODE_DERATING );
		}
		break;
	case LDC_MODE_FAULT:
		if( IsChangeModeFailure ( stp_adcValues ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_FAILURE );
		}
		else if( IsChangeModeNormal ( stp_faultDetectedResult ) == uTRUE )
		{
			Ldc_SET_ModeStatus ( LDC_MODE_READY );
		}
		else
		{
			Ldc_SET_ModeStatus( LDC_MODE_FAULT );
		}
		break;
	case LDC_MODE_FAILURE:
		if( IsChangeModeNormal ( stp_faultDetectedResult ) == uTRUE )
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

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_LDC_MODE_DEF Asw_GET_Ldc_Mode ( void )
{
	return u8g_LdcMode;
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
static byte IsChangeModeReady ( const st_DiagnosisType *stp_DetectedFlag )
{
	byte rtnVal = uFALSE;

	if( ( stp_DetectedFlag->u8_LV_V == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_Temp == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_CanBusOffSts == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_CanTimeoutSts == STATE_NORMAL ) )
	{
		if( u16g_CheckReady_Cnt >= LDC_READY_DELAY_TIME ){ rtnVal = uTRUE; }
		else{ u16g_CheckReady_Cnt++; }
	}
	else
	{
		u16g_CheckReady_Cnt = 0U;
	}

	return rtnVal;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        										*/
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte IsChangeModeNormal ( const st_DiagnosisType *stp_DetectedFlag )
{
	byte rtnVal = uFALSE;

	if(	( stp_DetectedFlag->u8_HV_I == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_HV_V == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_LV_I == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_LV_V == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_Temp == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_14VBat == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_LV_I_over == STATE_NORMAL )
	 && ( stp_DetectedFlag->u8_CanBusOffSts == STATE_NORMAL ) )
	{
		rtnVal = uTRUE;
	}

	return rtnVal;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        										*/
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte IsChangeModeDerating ( const st_DiagnosisType *stp_DetectedFlag )
{
	byte rtnVal = uFALSE;

	if( stp_DetectedFlag->u8_Temp == STATE_DERATING )
	{
		rtnVal = uTRUE;
	}

	return rtnVal;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        										*/
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static  byte IsChangeModeFault ( const st_DiagnosisType *stp_DetectedFlag )
{
	byte rtnVal = uFALSE;

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
		rtnVal = uTRUE; /* Stay to mode fault */
		u16g_CheckReady_Cnt = 0U;
	}

	return rtnVal;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte IsChangeModeFailure ( const st_RealValuesType *stp_RealValues )
{
	byte rtnVal = uFALSE;

	if( ( stp_RealValues->f32_Temperature <= DIAG_FAIL_VALUE )
   || ( stp_RealValues->f32_InputCurrent <= DIAG_FAIL_VALUE )
   || ( stp_RealValues->f32_InputVoltage <= DIAG_FAIL_VALUE )
   || ( stp_RealValues->f32_OutputCurrent <= DIAG_FAIL_VALUE )
   || ( stp_RealValues->f32_OutputVoltage <= DIAG_FAIL_VALUE ) )
	{
		rtnVal = uTRUE; /* entry to mode Failure */
		u16g_CheckReady_Cnt = 0U;
	}

	return rtnVal;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Ldc_SET_ModeStatus ( en_LDC_MODE_DEF u8_val )
{
	u8g_LdcMode = u8_val;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/


/****************************************************************************/
/**                                                                        **/
/**                      LOCAL FUNCTIONS                                   **/
/**                                                                        **/
/****************************************************************************/

