/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Asw_ObcStateMachine.c                                       **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.03.13                                                  **
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

#define ASW_OBCSTATEMACHINE_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_ObcConfig.h"
#include "ASW_ObcChargeMode.h"
#include "ASW_PIController.h"
#include "ASW_ObcDiagAdc.h"
#include "ASW_ObcChargeSeq.h"
#include "ASW_ObcConstantPower.h"
#include "ASW_ObcUtility.h"

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

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
en_OBC_ModeState u8g_OBC_OperateState = OBC_InitMode;
single f32g_RteIoref = 0.0F;

/****************************************************************************/
/**                                                                        **/
/**                      LOCAL VARIABLES                                   **/
/**                                                                        **/
/****************************************************************************/
static void StateInit ( void );
static void StateNoCharging ( void );
static void StateCharging ( void );
static void StateFault ( void );
static void StateChargingFinish ( void );

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
void Asw_Obc_OperationMode ( void )
{
	switch( u8g_OBC_OperateState )
	{
		case OBC_InitMode:
			StateInit ();
			break;
		case OBC_NoChargingMode:
			StateNoCharging ();
			break;
		case OBC_ChargingMode:
			StateCharging ();
			break;
		case OBC_FaultMode:
			StateFault ();
			break;
		case OBC_ChargedFinishMode:
			StateChargingFinish ();
			break;
		default:
			u8g_OBC_OperateState = OBC_InitMode;
			break;
	}
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
static void StateInit ( void )
{
	u8g_OBC_OperateState = OBC_InitMode;
	Asw_Obc_Init ();

	u8g_OBC_OperateState = OBC_NoChargingMode;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void StateNoCharging ( void )
{
	u8g_OBC_OperateState = OBC_NoChargingMode;

	if( ( u8g_Tot_ChargingReady == 1U )
	 && ( st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr > OBC_STARTCHARGE_REFCURRENT ) )
	{
		if( Asw_SET_ACRly_PFC_PWM_ON () == 1U )
		{
			u8g_OBC_OperateState = OBC_ChargingMode;
		}
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void StateCharging ( void )
{
	u8g_OBC_OperateState = OBC_ChargingMode;

	if( u8g_Tot_ChargingReady == 0U )
	{
		u8g_OBC_OperateState = OBC_FaultMode;
	}
	else
	{
		Asw_Obc_ConstPwr ();

	  if ( ( st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr <= 0.0F )
	  /*|| ( st_rteObcIn.st_RealValue.f32_OutputCurrent < OBC_FINISHCHARGE_CURRENT )*/ )
		{
	    	u8g_OBC_ChargeFinishReq = 1U;

			if( st_rteObcIn.st_CANValue.u8_Bms_ChargeEnd == 1U )
			{
				u8g_OBC_OperateState = OBC_ChargedFinishMode;
			}
		}
		else
		{
			if( st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr < OBC_IREF_MAX )
			{
				if( f32g_ObcRefCurr_CP > OBC_IREF_MAX ){
					f32g_RteIoref = Asw_Obc_SoftStart ( OBC_IREF_MAX, f32g_RteIoref );
				}
				else
				{
					f32g_RteIoref = Asw_Obc_SoftStart ( f32g_ObcRefCurr_CP, f32g_RteIoref );
				}
			}

			u8g_OBC_ChargeFinishReq = 0U;
		}
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void StateFault ( void )
{
	u8g_OBC_OperateState = OBC_FaultMode;

	if( Asw_SET_ACRly_PFC_PWM_OFF () == 1U )
	{
		u8g_OBC_ChargeFinishReq = 1U;

		if( st_rteObcIn.st_CANValue.u8_Bms_ChargeEnd == 1U )
		{
			u8g_OBC_OperateState = OBC_ChargedFinishMode;
		}
	}
	else
	{
		u8g_OBC_ChargeFinishReq = 0U;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void StateChargingFinish ( void )
{
	u8g_OBC_OperateState = OBC_ChargedFinishMode;

	if( Asw_SET_ACRly_PFC_PWM_OFF () == 1U )
	{
		if( u8g_Tot_ChargingReady == 0U )
		{
			u8g_OBC_OperateState = OBC_InitMode;
		}
	}
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
