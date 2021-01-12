/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcSequence.c                                           **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.14                                                  **
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

#define ASW_LDCSEQUENCE_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_LdcState.h"
#include "ASW_LdcConfig.h"
#include "ASW_PiController.h"
#include "ASW_LdcStateTrans.h"
#include "ASW_LdcDiagAdc.h"

#include "Bsw_Pwm.h"

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


/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
byte u8g_SoftStartEnd = 0U;
byte u8g_SoftStopEnd = 0U;
single f32g_cmdTargetCur_SS = 0.0f;
st_DiagnosisType st_AswLdcDiagFlag = { 0u, };

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static en_LDC_STATE u8s_LdcPWMCtrl = EN_LDC_Off;
static en_LDC_DERATING_STAT u8s_LdcDeratingState = DERATING_NOT_USE;

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
void Asw_Ldc_Init ( void )
{
	Asw_Ldc_PiInit ();
	Asw_Ldc_PiCofficient ();
	Asw_Ldc_AdcInit ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_Mode ( void )
{
	en_LDC_MODE_DEF u8_ldcModeState = Asw_GET_Ldc_Mode (); /* Updated LDC mode */

	byte u8_ldcEnableSig = 0U;
	single f32_refVolVal = 0.0F;
	single f32_refCurVal = 0.0F;

	u8_ldcEnableSig = st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable;
	f32_refVolVal = st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt;
	f32_refCurVal = LDC_CUR_MAX;

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

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_PhaseShiftLimit ( dword u32_val )
{
	if( u32_val > LDC_SHIFT_MAX ){
		st_rteLdcOut.st_PwmValue.u32_phaseshift = LDC_SHIFT_MAX;
	}else{
		st_rteLdcOut.st_PwmValue.u32_phaseshift = u32_val;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_LDC_STATE Asw_GET_Ldc_PwmCtrl ( void )
{
	return u8s_LdcPWMCtrl;
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
static void Seq_RunReady ( void )
{
	Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											       										  */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
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

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_RunDerating ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt )
{
	single f32_refVolt = u8_cmdTargetVolt;
	single f32_refCurr = 0.0F;

	Seq_Control_LdcDerating ( &st_AswLdcDiagFlag );

	switch( u8s_LdcDeratingState )
	{
	case DERATING_TEMP_LV01 :
		f32_refCurr = ( single )LDC_CUR_DRT_TEMP_LV01; /* reduce output current from 100% to 80% */
		break;
	case DERATING_TEMP_LV02 :
		f32_refCurr = ( single )LDC_CUR_DRT_TEMP_LV02; /* reduce output current from 100% to 50% */
		break;
	case DERATING_TEMP_LV03 :
		f32_refCurr = ( single )LDC_CUR_DRT_TEMP_LV03; /* reduce output current from 100% to 20% */
		break;
	default :
		f32_refCurr = ( single )LDC_CUR_MAX;
		break;
	}

	Seq_Control_LdcRun ( u8_cmdLdcEnable, f32_refVolt, f32_refCurr );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_RunFault ( void )
{
	Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_RunFailure ( void )
{
	Seq_Control_LdcRun ( 0U, 0.0F, 0.0F );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_Control_LdcRun ( byte u8_cmdLdcEnable, single u8_cmdTargetVolt, single u8_cmdTargetCur )
{
	if( ( u8_cmdLdcEnable == 1U ) && ( u8_cmdTargetVolt >= LDC_CMD_REFVOLT_MIN ) ) /* LDC_RUN_POWERON */
	{
		f32g_cmdTargetCur_SS = Asw_Ldc_SoftStart ( u8_cmdTargetCur, f32g_cmdTargetCur_SS );
		if( f32g_cmdTargetCur_SS >= u8_cmdTargetCur )
		{
			u8g_SoftStartEnd = 1U;
		}

		Seq_StatePowerOn ();
	}
	else /* LDC_RUN_STANDBY */
	{
		Seq_StatePowerOff ();
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_Control_LdcDerating ( const st_DiagnosisType* st_DetectedFlag )
{
	en_LDC_DERATING_STAT u8_ldcDeratingStat;
	u8_ldcDeratingStat = u8s_LdcDeratingState;

	if( st_DetectedFlag->u8_Temp == STATE_DERATING )
	{
		if( ( st_rteLdcIn.st_RealValue.f32_Temperature > LDC_TEMP_DRT_LV1 ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= LDC_TEMP_DRT_LV2 ) )
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
		else if( ( st_rteLdcIn.st_RealValue.f32_Temperature > LDC_TEMP_DRT_LV2 ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= LDC_TEMP_DRT_LV3 ) )
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
		else if( ( st_rteLdcIn.st_RealValue.f32_Temperature > LDC_TEMP_DRT_LV3 ) && ( st_rteLdcIn.st_RealValue.f32_Temperature <= LDC_TEMP_FAULT_UPPER ) )
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

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_StatePowerOff ( void )
{
	u8s_LdcPWMCtrl = EN_LDC_Off;

	if( Ldc_SoftStop ( st_rteLdcOut.st_PwmValue.u32_phaseshift ) == uTRUE )
	{
		f32g_cmdTargetCur_SS = 0.0F;
		u8g_SoftStartEnd = 0;
		Asw_Ldc_Init ();

		u8g_SoftStopEnd = uTRUE;
		Ldc_SET_DeratingState( DERATING_NOT_USE );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Seq_StatePowerOn ( void )
{
	u8g_SoftStopEnd = 0U;
	u8s_LdcPWMCtrl = EN_LDC_On;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
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

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Ldc_SET_DeratingState ( en_LDC_DERATING_STAT u8_val )
{
	u8s_LdcDeratingState = u8_val;
}
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
