/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Multican.h                                             **
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

#ifndef MCAL_MULTICAN_INCLUDED
#define MCAL_MULTICAN_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "IfxMultican_Can.h"
#include "BSW_ISR.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define CAN_0     ( ( Ifx_CAN *)( void *)&MODULE_CAN )

#define LDC_1  			( 0x18FF3070U )
#define LDC_2  			( 0x18FF3170U )
#define VCU1_LDC  	( 0x18FF4027U )

#define OBC_1  			( 0x18FF3071U )
#define OBC_2  			( 0x18FF3171U )

#define BMS1_OBC   	( 0x18FF1067U )
#define BMS2_OBC 		( 0x18FF1167U )
#define BMS2 				( 0x0CF80167U )
#define BMS10 			( 0x0CF80968U )

#define DIAG_PHYS_REQUEST		  ( 0x18DA1AF9U )
#define DIAG_PHYS_RESPONSE		( 0x18DAF91AU )
#define DIAG_FUNC_REQUEST     ( 0x18DBFFF9U )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	IfxMultican_Can        can;          /**< \brief CAN driver handle */
	IfxMultican_Can_Node   canSrcNode;   /**< \brief CAN Source Node */

	IfxMultican_Can_MsgObj can0RxMsgObj_VCU1_LDC; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0RxMsgObj_BMS1_OBC; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0RxMsgObj_BMS2_OBC; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0RxMsgObj_BMS2; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0RxMsgObj_BMS10; /**< \brief CAN Destination Message object */

	IfxMultican_Can_MsgObj can0TxMsgObj_LDC_1; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0TxMsgObj_LDC_2; /**< \brief CAN Source Message object */

	IfxMultican_Can_MsgObj can0TxMsgObj_OBC_1; /**< \brief CAN Source Message object */
	IfxMultican_Can_MsgObj can0TxMsgObj_OBC_2; /**< \brief CAN Destination Message object */

	IfxMultican_Can_MsgObj can0RxMsgObj_PHYS_REQUEST; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0RxMsgObj_FUNC_REQUEST; /**< \brief CAN Destination Message object */
	IfxMultican_Can_MsgObj can0TxMsgObj_PHYS_RESPONSE; /**< \brief CAN Destination Message object */
} st_Multican;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
# ifndef MCAL_MULTICAN_C_SRC
# endif
extern volatile dword u32g_Can_DiagRxId;
extern volatile dword u32g_Can_DiagRxData[ 2 ];
extern st_Multican stg_MulticanBasic;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_MulticanInit ( void );
extern void Mcal_MulticanObjCfg ( void );
extern void Mcal_CanTransmit ( dword u32_PduId, IfxMultican_Message *stp_packet, IfxMultican_Can_MsgObj *stp_obj );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
