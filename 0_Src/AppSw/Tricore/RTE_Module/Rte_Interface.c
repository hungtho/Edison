/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Rte_Interface.c                                             **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.29                                                  **
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

#define RTE_INTERFACE_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Interface.h"
#include "Rte_ApiIn.h"
#include "Rte_ApiOut.h"

#include "ASW_LdcConfig.h"
#include "ASW_LdcDiagAdc.h"
#include "ASW_LdcDiagCan.h"
#include "ASW_LdcStateTrans.h"
#include "ASW_LdcState.h"
#include "ASW_LdcDtcCodeMng.h"
#include "ASW_LdcEepromCtrl.h"

#include "ASW_ObcConfig.h"
#include "ASW_ObcChargeMode.h"
#include "ASW_ObcChargeSeq.h"
#include "ASW_ObcDiagAdc.h"
#include "ASW_ObcDiagCan.h"
#include "ASW_ObcConstantPower.h"
#include "ASW_PIController.h"
#include "ASW_ObcUtility.h"

#include "BSW_Adc.h"
#include "BSW_Can.h"
#include "BSW_Pwm.h"
#include "BSW_Gpio.h"
#include "BSW_TpFunc.h"
#include "BSW_UdsFunc.h"

#include "../BSW_Module/Drivers/Mcal_Gpio.h"
#include "../BSW_Module/Drivers/Mcal_Adc.h"
#include "../BSW_Module/Drivers/Mcal_GtmTim.h"
#include "../BSW_Module/Drivers/Mcal_GtmTomPwm.h"
#include "../BSW_Module/Drivers/Mcal_Multican.h"
#include "../BSW_Module/Drivers/Mcal_Smu.h"
#include "../BSW_Module/Drivers/Mcal_DFlash.h"
//#include "Mcal_Spi.h"
#include "../BSW_Module/Drivers/Mcal_Stm.h"
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
static void RTE_Task_100us ( void );
static void RTE_Task_1ms ( void );
static void RTE_Task_100ms ( void );

static void RTE_LDC_UPDATE_CAN_TX ( void );
static void RTE_LDC_UPDATE_CAN_RX ( void );
static void RTE_OBC_UPDATE_CAN_TX ( void );
static void RTE_OBC_UPDATE_CAN_RX ( void );

static void RTE_LDC_CTRL ( void );
static void RTE_OBC_CTRL ( void );

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
void RTE_BSW_Init ( void )
{
	Mcal_GpioInit ();
	Mcal_Obc_GtmTimInit ();
	Mcal_GtmTomInit ();
	Mcal_StmInit ();
	/* Mcal_Qspi_Init(); */
	Mcal_MulticanInit ();
	Mcal_MulticanObjCfg ();

	Mcal_Ldc_VadcInit ();
	Mcal_Obc_VadcInit ();
	Mcal_DFlashInit ();
	Mcal_Smu_Init ();

	Bsw_CRC8_Init ();
	Bsw_AdcInit ();
	Bsw_UdsFunc_Init ();
	Bsw_TpFunc_Init ();

	Asw_Ldc_EepromInit ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_LDC_ASW_Init ( void )
{
	Asw_Ldc_Init ();
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_ASW_Init ( void )
{
	Asw_Obc_Init ();
	Bsw_Set_GpioWrite ( OBC_AUX_ENABLE_OUT, ( byte )EN_OBC_On );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_Task_Run ( void )
{
	RTE_Task_100us ();

	if( --u8g_task_flag_1m == 0U )
	{
		RTE_Task_1ms ();

		u8g_task_flag_1m = 10U;
	}

	if( --u16g_task_flag_100m == 0U )
	{
		RTE_Task_100ms ();

		u16g_task_flag_100m = 1000U;
	}
}


/*--------------------------------------------------------------------------*/
/* Function  |            																					        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_LDC_TASK_100us ( void )
{
	Bsw_Ldc_Vadc0Start ();
	Bsw_Ldc_Vadc0Scan ();

	RTE_LDC_IN ();
	RTE_LDC_CTRL ();
	RTE_LDC_OUT ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_LDC_TASK_1ms ( void )
{
	Asw_Ldc_DiagAdcValues ( &st_AswLdcDiagFlag, &st_rteLdcIn.st_RealValue ); /* Diagnostic of Adc values */
	Asw_Ldc_DiagCanState ( &st_AswLdcDiagFlag, &st_rteLdcIn.st_CANValue ); /* Diagnostic of CAN Communication*/

	Asw_Ldc_DtcStsUpdate ();
	Asw_Ldc_ModeUpdate ( &st_AswLdcDiagFlag, &st_rteLdcIn.st_RealValue );
	Asw_Ldc_Mode ();	/* LDC Sequence control by LDC mode */

	Bsw_UdsFunc ();
	Bsw_TpFunc ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_LDC_TASK_100ms( void )
{
	RTE_LDC_UPDATE_CAN_TX ();
	RTE_LDC_UPDATE_CAN_RX (); /* Checking CAN Rx message */
}

/*--------------------------------------------------------------------------*/
/* Function  |            																					        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_TASK_100us ( void )
{
	Bsw_Obc_Vadc1Start ();
	Bsw_Obc_Vadc1Scan ();

	RTE_OBC_IN ();
	RTE_OBC_CTRL ();
	RTE_OBC_OUT ();
}

/*--------------------------------------------------------------------------*/
/* Function  |            																					        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_TASK_1ms ( void )
{
#if TEST_HARDWARE
	if( Bsw_GET_Bms_HWTestMode () == ( byte )EN_OBC_On )
	{
		Bsw_Set_GpioWrite( RELAY_OUT, Bsw_GET_BMS_OBC_CmdRelay() );
		Bsw_Set_GpioWrite( PFC_ENABLE_OUT, Bsw_GET_BMS_OBC_CmdPfc_Enable() );

		if( Bsw_GET_Bms_EnableOBCWakeup () == 1U )
		{
			Bsw_Obc_PwmEnable ( 100000.0f );
		}
		else
		{
			Bsw_Obc_PwmDisable ();
		}
	}
#else
	Bsw_Obc_AdcScan_20ms ();
	Asw_Obc_DiagAdcValues ( &st_AswObcDiagFlag, &st_rteObcIn.st_RealValue ); /* Diagnostic of ADC value */
	Asw_Obc_DiagCanState ( &st_AswObcDiagFlag, &st_rteObcIn.st_CANValue ); /* Diagnostic of CAN Communication*/
	Asw_Obc_ChargingSeqRun ();
	Asw_Obc_OperationMode ();

#endif
}

/*--------------------------------------------------------------------------*/
/* Function  |            											       											*/
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_TASK_100ms ( void )
{
	RTE_OBC_UPDATE_CAN_TX ();
	RTE_OBC_UPDATE_CAN_RX (); /* Checking CAN Rx message */
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
static void RTE_Task_100us ( void )
{
	RTE_LDC_TASK_100us ();
	RTE_OBC_TASK_100us ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_Task_1ms ( void )
{
	BSW_CAN_ReleasTx ();
	RTE_LDC_TASK_1ms ();
	RTE_OBC_TASK_1ms ();

	if( u8g_UDS_ResetReq == 0U )
	{
		IfxScuWdt_serviceCpuWatchdog ( IfxScuWdt_getCpuWatchdogPassword() );
		IfxScuWdt_serviceSafetyWatchdog ( IfxScuWdt_getSafetyWatchdogPassword() );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_Task_100ms ( void )
{
	RTE_LDC_TASK_100ms ();
	RTE_OBC_TASK_100ms ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_LDC_UPDATE_CAN_TX ( void )
{
	if( u8g_UDS_CommTx_CtrlSts == DIAG_COMM_CTRL_ENABLE )
	{
		Bsw_CANTxLDCData_100ms ();
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_LDC_UPDATE_CAN_RX ( void )
{
	if( u8g_UDS_CommRx_CtrlSts == DIAG_COMM_CTRL_ENABLE )
	{
		Bsw_CANRxLDCData_100ms ();

		if( u16g_Ldc_CanTimeoutCnt < 5U )
		{
			u16g_Ldc_CanTimeoutCnt++;
		}
		else
		{
			u8g_Ldc_CanTimeout = STATE_FAULT;
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
static void RTE_OBC_UPDATE_CAN_TX ( void )
{
	Bsw_CANTxOBCData_100ms ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_OBC_UPDATE_CAN_RX ( void )
{
	Bsw_CANRxOBCData_100ms ();

	if( u16g_Obc_CanTimeoutCnt < 50U )
	{
		u16g_Obc_CanTimeoutCnt++;
		u8g_Obc_CanTimeout = STATE_NORMAL;
	}
	else
	{
		u8g_Obc_CanTimeout = STATE_FAULT;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void RTE_LDC_CTRL ( void )
{
	dword u32_phaseshift = 0U;
	if ( st_rteLdcOut.st_PwmValue.u8_LdcPWMCtrl == ( byte )EN_LDC_On )
	{
#if OPEN_LOOP
		Bsw_Ldc_PwmEnable ( f32g_VcuCmdLdcPhaseshift );
#else
		u32_phaseshift  = Asw_Ldc_PiCtrl ( st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt,
																			 f32g_cmdTargetCur_SS,
																			 st_rteLdcIn.st_RealValue.f32_OutputVoltage,
																			 st_rteLdcIn.st_RealValue.f32_OutputCurrent );
		Asw_Ldc_PhaseShiftLimit ( u32_phaseshift );
		Bsw_Ldc_PwmEnable ( st_rteLdcOut.st_PwmValue.u32_phaseshift );
#endif
	}
	else
	{
		if( u8g_SoftStopEnd == uTRUE )
		{
			Bsw_Ldc_PwmDisable ();
			Asw_Ldc_EepromCtrl ();
		}
		else
		{
			Asw_Ldc_PhaseShiftLimit ( st_rteLdcOut.st_PwmValue.u32_phaseshift );
			Bsw_Ldc_PwmEnable ( st_rteLdcOut.st_PwmValue.u32_phaseshift );
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
static void RTE_OBC_CTRL ( void )
{
#if !TEST_HARDWARE
	if( st_rteObcOut.st_PwmValue.u8_ObcPWMCtrl == ( byte )EN_OBC_On )
	{
		st_rteObcOut.st_PwmValue.f32_frequency = Asw_Obc_PiCtrl ( st_rteObcIn.st_CANValue.f32_Bms_ObcCmdVoltage,
																														 	f32g_RteIoref,
																															st_rteObcIn.st_RealValue.f32_OutputVoltage,
																															st_rteObcIn.st_RealValue.f32_OutputCurrent );

		Bsw_Obc_PwmEnable ( st_rteObcOut.st_PwmValue.f32_frequency );
	}
	else
	{
		Bsw_Obc_PwmDisable ();
	}
#endif
}

/****************************************************************************/
/**                                                                        **/
/**                      LOCAL FUNCTIONS                                   **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
