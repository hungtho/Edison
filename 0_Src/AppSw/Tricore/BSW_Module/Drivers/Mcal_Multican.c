/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Multican.c                                             **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.03.26                                                  **
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

#define MCAL_MULTICAN_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Multican.h"
#include "BSW_Defines.h"

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
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
volatile dword u32g_Can_DiagRxId = 0U;
volatile dword u32g_Can_DiagRxData[ 2 ] = { 0U, 0U };
st_Multican stg_MulticanBasic; /**< \brief Demo information */

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
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_MulticanInit( void )
{
	/* create module config */
	IfxMultican_Can_Config canConfig;
	/* create CAN node config */
	IfxMultican_Can_NodeConfig canNodeConfig;

	IfxMultican_Can_initModuleConfig ( &canConfig, CAN_0 );

	canConfig.nodePointer[ IfxMultican_SrcId_0 ].priority =   ISR_PRIORITY_CAN_RX;
	canConfig.nodePointer[ IfxMultican_SrcId_0 ].typeOfService = IfxSrc_Tos_cpu0;

	canConfig.nodePointer[ IfxMultican_SrcId_1 ].priority =   ISR_PRIORITY_CAN_TX;
	canConfig.nodePointer[ IfxMultican_SrcId_1 ].typeOfService = IfxSrc_Tos_cpu0;

	canConfig.nodePointer[ IfxMultican_SrcId_2 ].priority =   ISR_PRIORITY_CAN_BUSOFF;
	canConfig.nodePointer[ IfxMultican_SrcId_2 ].typeOfService = IfxSrc_Tos_cpu0;

  /* initialize module */
	if( IfxMultican_Can_initModule ( &stg_MulticanBasic.can, &canConfig) == IfxMultican_Status_ok )
	{
		/* initialize node */
		IfxMultican_Can_Node_initConfig ( &canNodeConfig, &stg_MulticanBasic.can );

		canNodeConfig.baudrate = 500000;

		canNodeConfig.nodeId    = ( IfxMultican_NodeId )( ( int )IfxMultican_NodeId_1 );
		canNodeConfig.rxPin     = &IfxMultican_RXD1B_P14_1_IN;
		canNodeConfig.rxPinMode = IfxPort_InputMode_pullUp;
		canNodeConfig.txPin     = &IfxMultican_TXD1_P14_0_OUT;
		canNodeConfig.txPinMode = IfxPort_OutputMode_pushPull;

		canNodeConfig.alertInterrupt.enabled = TRUE;
		canNodeConfig.alertInterrupt.srcId = IfxMultican_SrcId_1;
		canNodeConfig.transferInterrupt.enabled = TRUE;
		canNodeConfig.transferInterrupt.srcId = IfxMultican_SrcId_0;

		if( IfxMultican_Can_Node_init ( &stg_MulticanBasic.canSrcNode, &canNodeConfig ) == IfxMultican_Status_ok )
		{
			Mcal_MulticanObjCfg ();
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
void Mcal_MulticanObjCfg ( void )
{
	/* create message object config */
	IfxMultican_Can_MsgObjConfig canMsgObjConfig;
	IfxMultican_MsgObjId canMsgObjId = 0;

	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = VCU1_LDC;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;

	canMsgObjConfig.rxInterrupt.enabled = TRUE;
	canMsgObjConfig.rxInterrupt.srcId = IfxMultican_SrcId_0;

	/* initialize message object */
	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_VCU1_LDC, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*--------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = BMS1_OBC;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.rxInterrupt.enabled = TRUE;
	canMsgObjConfig.rxInterrupt.srcId = IfxMultican_SrcId_0;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_BMS1_OBC, &canMsgObjConfig ) == IfxMultican_Status_ok){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = BMS2;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;

	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.rxInterrupt.enabled = TRUE;
	canMsgObjConfig.rxInterrupt.srcId = IfxMultican_SrcId_0;

	if( IfxMultican_Can_MsgObj_init( &stg_MulticanBasic.can0RxMsgObj_BMS2, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/

	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );
	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = BMS2_OBC;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;

	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.rxInterrupt.enabled = TRUE;
	canMsgObjConfig.rxInterrupt.srcId = IfxMultican_SrcId_0;
	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_BMS2_OBC, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = BMS10;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_BMS10, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = DIAG_PHYS_REQUEST;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_PHYS_REQUEST, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = DIAG_FUNC_REQUEST;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_receive;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0RxMsgObj_FUNC_REQUEST, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = OBC_1;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_transmit;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.txInterrupt.enabled = TRUE;
	canMsgObjConfig.txInterrupt.srcId = IfxMultican_SrcId_1;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0TxMsgObj_OBC_1, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = OBC_2;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_transmit;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.txInterrupt.enabled = TRUE;
	canMsgObjConfig.txInterrupt.srcId = IfxMultican_SrcId_1;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0TxMsgObj_OBC_2, &canMsgObjConfig ) == IfxMultican_Status_ok){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = LDC_2;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_transmit;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.txInterrupt.enabled = TRUE;
	canMsgObjConfig.txInterrupt.srcId = IfxMultican_SrcId_1;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0TxMsgObj_LDC_2, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}

	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = LDC_1;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_transmit;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.txInterrupt.enabled = TRUE;
	canMsgObjConfig.txInterrupt.srcId = IfxMultican_SrcId_1;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0TxMsgObj_LDC_1, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}
	/*-------------------------------------------------------------------------------*/
	IfxMultican_Can_MsgObj_initConfig ( &canMsgObjConfig, &stg_MulticanBasic.canSrcNode );

	canMsgObjConfig.msgObjId              = canMsgObjId;
	canMsgObjConfig.messageId             = DIAG_PHYS_RESPONSE;
	canMsgObjConfig.acceptanceMask        = 0x7FFFFFFFUL;
	canMsgObjConfig.frame                 = IfxMultican_Frame_transmit;
	canMsgObjConfig.control.extendedFrame = TRUE;
	canMsgObjConfig.control.matchingId    = TRUE;
	canMsgObjConfig.txInterrupt.enabled = TRUE;
	canMsgObjConfig.txInterrupt.srcId = IfxMultican_SrcId_1;

	if( IfxMultican_Can_MsgObj_init ( &stg_MulticanBasic.can0TxMsgObj_PHYS_RESPONSE, &canMsgObjConfig ) == IfxMultican_Status_ok ){
		canMsgObjId++;
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/

void Mcal_CanTransmit ( dword u32_PduId, IfxMultican_Message *stp_packet, IfxMultican_Can_MsgObj *stp_obj )
{
	IfxMultican_Message msg;
	byte u8_rlt = 0U;
	word u16_Timeout = 0U;

	IfxMultican_Message_init ( &msg, u32_PduId, stp_packet->data[0], stp_packet->data[1], IfxMultican_DataLengthCode_8 );

	/* Transmit Data*/
	do
	{
		u8_rlt = IfxMultican_Can_MsgObj_sendMessage( stp_obj, &msg );
		u16_Timeout++;
	}	while( ( u8_rlt == IfxMultican_Status_notSentBusy )
			&& ( u16_Timeout < 100U ) );
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
