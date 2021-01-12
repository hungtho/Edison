/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_ISR.c                                                   **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.16                                                  **
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

#define BSW_ISR_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "BSW_ISR.h"
#include "BSW_Adc.h"
//#include "BSW_Spi.h"
#include "../Drivers/Mcal_Stm.h"

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
IFX_INTERRUPT ( isr_StmTimer_handler, 0, ISR_PRIORITY_STM );

IFX_INTERRUPT ( isr_VADC0_handler, 0, ISR_PRIORITY_VADC0 );
IFX_INTERRUPT ( isr_VADC1_handler, 0, ISR_PRIORITY_VADC1 );

IFX_INTERRUPT ( isr_CanTx_Handler, 0, ISR_PRIORITY_CAN_TX);
IFX_INTERRUPT ( isr_CanRx_Handler, 0, ISR_PRIORITY_CAN_RX );
IFX_INTERRUPT ( isr_CanBusOff_Handler, 0, ISR_PRIORITY_CAN_BUSOFF );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
volatile byte u8g_task_flag_100u = 1U;
byte u8g_task_flag_1m = 7U;
word u16g_task_flag_100m = 1015U;

word u16g_Ldc_CanTimeoutCnt = 0U;
word u16g_Obc_CanTimeoutCnt = 0U;

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_CAN_Release_cnt = 0U;

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
void isr_StmTimer_handler ( void )
{
  IfxStm_increaseCompare ( STM_0, stg_STMConf.comparator, TIMER_INT_TIME );
  u8g_task_flag_100u = 1U;

  _enable();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void BSW_CAN_ReleasTx ( void )
{
	IfxMultican_Can_Node *Node  = &stg_MulticanBasic.canSrcNode;

	if( u8g_CAN_BusoffSts == STATE_FAULT )
	{
		u8s_CAN_Release_cnt++;
		if( u8s_CAN_Release_cnt >= 15U )
		{
			if( IfxMultican_Can_Node_recoverBusOff ( Node ) == IfxMultican_Status_ok )
			{
				u8g_CAN_BusoffSts = STATE_NORMAL;
			}
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
void isr_VADC0_handler ( void )
{
	static word u16s_Index_Ldc[ ADC_CHN_MAX ];

	Mcal_AdcBuffer ( st_Vadc0Ldc, 0U, u16g_hisLdcIout, u16s_Index_Ldc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 1U, u16g_hisLdcVout, u16s_Index_Ldc, HIS_BUFFER_SIZE  );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 2U, u16g_hisLdcIin, u16s_Index_Ldc, HIS_BUFFER_SIZE  );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 3U, u16g_hisLdcVin, u16s_Index_Ldc, HIS_BUFFER_SIZE  );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 4U, u16g_hisObcBattSens, u16s_Index_Ldc, HIS_BUFFER_SIZE  );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 5U, u16g_hisLdcBattSens, u16s_Index_Ldc, HIS_BUFFER_SIZE  );
	Mcal_AdcBuffer ( st_Vadc0Ldc, 6U, u16g_hisLdcTemp, u16s_Index_Ldc, HIS_BUFFER_SIZE );

	_enable();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void isr_VADC1_handler ( void )
{
	static word u16s_Index_Obc[ADC_CHN_MAX ];

	Mcal_AdcBuffer ( st_Vadc1Obc, 0U, u16g_hisObcIout, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 1U, u16g_hisObcVout, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 2U, u16g_hisObcIin, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 3U, u16g_hisObcVin, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 4U, u16g_hisObcJ1772Vol, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 5U, u16g_hisObcBplusSense, u16s_Index_Obc, HIS_BUFFER_SIZE );
	Mcal_AdcBuffer ( st_Vadc1Obc, 7U, u16g_hisObcTemp, u16s_Index_Obc, HIS_BUFFER_SIZE );
	_enable();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void isr_CanTx_Handler ( void )
{
	_enable();
}
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void isr_CanRx_Handler ( void )
{
	IfxMultican_Message sts_Rxmsg_PHYS_REQUEST;
	IfxMultican_Message sts_Rxmsg_FUNC_REQUEST;

	/* VCU_LDC message */
	if( IfxMultican_Can_MsgObj_isRxPending(&stg_MulticanBasic.can0RxMsgObj_VCU1_LDC ) == 1U )
	{
		IfxMultican_Message_init ( &stg_Rxmsg_VCU1_LDC, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );
		if( IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_VCU1_LDC, &stg_Rxmsg_VCU1_LDC) == IfxMultican_Status_ok ){
		}

		u16g_Ldc_CanTimeoutCnt = 0U;
		u8g_Ldc_CanTimeout = STATE_NORMAL;
	}

	/* BMS1_OBC message */
	if( IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_BMS1_OBC ) == 1U )
	{
		IfxMultican_Message_init ( &stg_Rxmsg_BMS1_OBC, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if( IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_BMS1_OBC, &stg_Rxmsg_BMS1_OBC ) == IfxMultican_Status_ok ){
		}

		u16g_Obc_CanTimeoutCnt = 0U;
		u8g_Obc_CanTimeout = STATE_NORMAL;
	}

	/* BMS2_OBC message */
	if( IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_BMS2_OBC ) == 1U )
	{
		IfxMultican_Message_init ( &stg_Rxmsg_BMS2_OBC, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if( IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_BMS2_OBC, &stg_Rxmsg_BMS2_OBC ) == IfxMultican_Status_ok ){
		}
	}

	/* BMS2 message */
	if (IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_BMS2 ) == 1U )
	{
		IfxMultican_Message_init ( &stg_Rxmsg_BMS2, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if(IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_BMS2, &stg_Rxmsg_BMS2) == IfxMultican_Status_ok ){
		}
	}

	/* BMS10 message */
	if (IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_BMS10) == 1U )
	{
		IfxMultican_Message_init ( &stg_Rxmsg_BMS10, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if(IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_BMS10, &stg_Rxmsg_BMS10 ) == IfxMultican_Status_ok ){
		}
	}

	/* Phys_Request message */
	if (IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_PHYS_REQUEST ) == 1U )
	{
		IfxMultican_Message_init ( &sts_Rxmsg_PHYS_REQUEST, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if(IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_PHYS_REQUEST, &sts_Rxmsg_PHYS_REQUEST ) == IfxMultican_Status_ok ){
		}

		u32g_Can_DiagRxData[ 0 ] = sts_Rxmsg_PHYS_REQUEST.data[ 0 ];
		u32g_Can_DiagRxData[ 1 ] = sts_Rxmsg_PHYS_REQUEST.data[ 1 ];
		u8g_Can_DiagRxFlag = STATE_NORMAL;
		u32g_Can_DiagRxId = DIAG_PHYS_REQUEST;
	}

	/* Func_Request message */
	if (IfxMultican_Can_MsgObj_isRxPending ( &stg_MulticanBasic.can0RxMsgObj_FUNC_REQUEST ) == 1U )
	{
		IfxMultican_Message_init ( &sts_Rxmsg_FUNC_REQUEST, 0xdeadU, 0xdeadbeefU, 0xdeadbeefU, IfxMultican_DataLengthCode_8 );

		if(IfxMultican_Can_MsgObj_readMessage ( &stg_MulticanBasic.can0RxMsgObj_FUNC_REQUEST, &sts_Rxmsg_FUNC_REQUEST ) == IfxMultican_Status_ok ){
		}

		u32g_Can_DiagRxData[ 0 ] = sts_Rxmsg_FUNC_REQUEST.data[ 0 ];
		u32g_Can_DiagRxData[ 1 ] = sts_Rxmsg_FUNC_REQUEST.data[ 1 ];
		u8g_Can_DiagRxFlag = STATE_NORMAL;
		u32g_Can_DiagRxId = DIAG_FUNC_REQUEST;
	}

	_enable();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void isr_CanBusOff_Handler ( void )
{
	static word u16s_CAN_Busoff_Cnt = 0U;

	if( u16s_CAN_Busoff_Cnt < 100U )
	{
		u16s_CAN_Busoff_Cnt++;
		u8g_CAN_BusoffSts = STATE_NORMAL;
	}
	else
	{
		u8g_CAN_BusoffSts = STATE_FAULT;
		u16s_CAN_Busoff_Cnt = 0U;
	}

	u8s_CAN_Release_cnt = 0U;

	_enable();
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
