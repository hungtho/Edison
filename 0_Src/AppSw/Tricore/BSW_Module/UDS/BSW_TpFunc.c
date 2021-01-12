/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_TpFunc.c                                                **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.06.02                                                  **
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

#define BSW_TPFUNC_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_TpFunc.h"
#include "BSW_UdsFunc.h"
#include "BSW_Defines.h"
#include "../Drivers/Mcal_Multican.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define TP_ST_NORMAL		( 0U )
#define TP_ST_WAIT_FC		( 1U ) /* wait flow control */
#define TP_ST_SEND_CF		( 2U ) /* send consecutive frame */

#define ST_MIN_LOW			( 1U ) /* 1ms */
#define ST_MIN_VALUE    ( 20U ) /* 20ms */
#define ST_MIN_HIGH			( 127U ) /* 127ms */
#define TP_BLOCK_SIZE		( 8U )

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
static void TpFlowControlFrame ( void );
static void TpSendFrame ( const byte *p_Data, byte u8_Size );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
byte u8g_TpTxBuf[ MAX_TX_FRAME_SIZE ];
byte u8g_TpRxBuf[ MAX_RX_FRAME_SIZE ];
byte u8g_SingleRxBuf[ 8 ];
byte u8g_RxFrameType;

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_TpTxBufIdx;
static byte u8s_TpTxSeqNum;
static byte u8s_TpTxDataCnt;
static byte u8s_TpTxState;

static byte u8s_TpRxBufIdx;
static byte u8s_TpRxSeqNum;
static byte u8s_TpRxDataCnt;
static byte u8s_TpRxDataSize;

static word u16s_STminTickCnt;
static word u16s_STMin_tm;

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
void Bsw_TpFunc_Init ( void )
{
	byte u8_Cnt;

	for( u8_Cnt = 0U; u8_Cnt < MAX_TX_FRAME_SIZE; u8_Cnt++ )
	{
		u8g_TpTxBuf[ u8_Cnt ] = 0U;
	}

	for( u8_Cnt = 0U; u8_Cnt < MAX_RX_FRAME_SIZE; u8_Cnt++ )
	{
		u8g_TpRxBuf[ u8_Cnt ] = 0U;
	}

	for( u8_Cnt = 0U; u8_Cnt < 8U; u8_Cnt++ )
	{
		u8g_SingleRxBuf[ u8_Cnt ] = 0U;
	}

	u8g_RxFrameType = FT_SF;

	u8s_TpTxBufIdx = 0U;
	u8s_TpTxSeqNum = 0U;
	u8s_TpTxDataCnt = 0U;
	u8s_TpTxState = TP_ST_NORMAL;

	u8s_TpRxBufIdx = 0U;
	u8s_TpRxSeqNum = 0U;
	u8s_TpRxDataCnt = 0U;
	u8s_TpRxDataSize = 0U;

	u16s_STminTickCnt = ST_MIN_HIGH; /* need to check */
	u16s_STMin_tm = 0U;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_TpFunc ( void )
{
	byte u8_TpIdx;
	byte u8_DataLen;
	byte u8_TpFrame[ 8 ];

	u16s_STMin_tm++;

	switch( u8s_TpTxState )
	{
		case TP_ST_NORMAL:
			break;
		case TP_ST_WAIT_FC:
			break;
		case TP_ST_SEND_CF:
			if( u16s_STMin_tm >= u16s_STminTickCnt )
			{
				u16s_STMin_tm = 0U;
				u8s_TpTxSeqNum++;

				if( u8s_TpTxSeqNum > 0x0FU ){ u8s_TpTxSeqNum = 0U; }

				u8_TpFrame[ 0 ] = ( byte )( FT_CF << 4U );
				u8_TpFrame[ 0 ] |= ( byte )( u8s_TpTxSeqNum & 0x0FU );

				if( u8s_TpTxDataCnt > 7U ){ u8_DataLen = 7U; }
				else{ u8_DataLen = u8s_TpTxDataCnt; }

				for( u8_TpIdx = 0U; u8_TpIdx < u8_DataLen; u8_TpIdx++ )
				{
					u8_TpFrame[ u8_TpIdx + 1U ] = u8g_TpTxBuf[ u8_TpIdx + u8s_TpTxBufIdx ];
				}

				TpSendFrame ( u8_TpFrame, u8_DataLen + 1U );

				u8s_TpTxBufIdx += u8_DataLen;
				u8s_TpTxDataCnt -= u8_DataLen;

				if( u8s_TpTxDataCnt == 0U ){ u8s_TpTxState = TP_ST_NORMAL; }
			}
			break;
		default:
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
byte Bsw_TpRecvProc ( byte *u8p_IsEndFrame, byte *u8p_RecvLen, byte *u8p_ReqType )
{
	byte u8_FrameType;

	byte u8_TpIdx;
	byte u8_Dlc;
	byte u8_DataLen;
	byte u8_SeqNum;
	byte u8_ErrNo = ERR_OK;
	byte u8_STmin;
  byte u8_CANFrameData[ 8 ];
  dword u32_CANMsgID;

  u32_CANMsgID = u32g_Can_DiagRxId;

  u8_CANFrameData[ 0 ] = Get32BitLoLoByte ( u32g_Can_DiagRxData[ 0 ] );
  u8_CANFrameData[ 1 ] = Get32BitLoHiByte ( u32g_Can_DiagRxData[ 0 ] );
  u8_CANFrameData[ 2 ] = Get32BitHiLoByte ( u32g_Can_DiagRxData[ 0 ] );
  u8_CANFrameData[ 3 ] = Get32BitHiHiByte ( u32g_Can_DiagRxData[ 0 ] );
  u8_CANFrameData[ 4 ] = Get32BitLoLoByte ( u32g_Can_DiagRxData[ 1 ] );
  u8_CANFrameData[ 5 ] = Get32BitLoHiByte ( u32g_Can_DiagRxData[ 1 ] );
  u8_CANFrameData[ 6 ] = Get32BitHiLoByte ( u32g_Can_DiagRxData[ 1 ] );
  u8_CANFrameData[ 7 ] = Get32BitHiHiByte ( u32g_Can_DiagRxData[ 1 ] );

	if( u32_CANMsgID == DIAG_PHYS_REQUEST ){ *u8p_ReqType = DIAG_PHYS; }
	else if( u32_CANMsgID == DIAG_FUNC_REQUEST ){ *u8p_ReqType = DIAG_FUNC; }
	else{ *u8p_ReqType = 0x00U; }

	if( *u8p_ReqType != 0x00U )
	{
		u8_FrameType = Get8BitHiNibble( ( u8_CANFrameData[ 0 ] ) );
		u8_Dlc = Get8BitLoNibble( ( u8_CANFrameData[ 0 ] ) );

		u8g_RxFrameType = u8_FrameType;

		switch( u8_FrameType )
		{
			case FT_SF: /* single frame */
				for( u8_TpIdx = 0U; u8_TpIdx < u8_Dlc; u8_TpIdx++ )
				{
					u8g_SingleRxBuf[ u8_TpIdx ] = u8_CANFrameData[ u8_TpIdx + 1U ];
				}

				*u8p_IsEndFrame = TRUE;
				*u8p_RecvLen = u8_Dlc;
				break;
			case FT_FF: /* first frame */
				u8s_TpRxDataSize = u8_CANFrameData[ 1 ];
				u8s_TpRxDataCnt  = u8s_TpRxDataSize;

				for( u8_TpIdx = 0U; u8_TpIdx < 6U; u8_TpIdx++ )
				{
					u8g_TpRxBuf[ u8_TpIdx ] = u8_CANFrameData[ u8_TpIdx + 2U ];
				}

				u8s_TpRxBufIdx = 6U;
				u8s_TpRxDataCnt -= 6U;
				u8s_TpRxSeqNum = 0U;

				/* send flow control frame */
				TpFlowControlFrame ();
				break;
			case FT_CF: /* consecutive frame */
				u8s_TpRxSeqNum++;
				u8_SeqNum = u8_Dlc;

				if( u8s_TpRxSeqNum > 0x0FU ){ u8s_TpRxSeqNum = 0U; }

				if( u8s_TpRxSeqNum != u8_SeqNum )
				{
					u8s_TpRxBufIdx = 0U;
					u8_ErrNo = NrcRequestSequenceError;
				}
				else
				{
					if( u8s_TpRxDataCnt > 7U ){ u8_DataLen = 7U; }
					else{ u8_DataLen = u8s_TpRxDataCnt;	}

					if( ( u8s_TpRxBufIdx + u8_DataLen ) >= MAX_RX_FRAME_SIZE )
					{
						u8s_TpRxBufIdx = 0U;
						u8_ErrNo = NrcRequestOutOfRange;
					}
					else
					{
						for( u8_TpIdx = 0U; u8_TpIdx < u8_DataLen; u8_TpIdx++ )
						{
							u8g_TpRxBuf[ u8_TpIdx + u8s_TpRxBufIdx ] = u8_CANFrameData[ u8_TpIdx + 1U ];
						}

						u8s_TpRxBufIdx += u8_DataLen;
						u8s_TpRxDataCnt -= u8_DataLen;

						if( u8s_TpRxDataCnt == 0U )
						{
							*u8p_IsEndFrame = TRUE;
							*u8p_RecvLen = u8s_TpRxDataSize;
							u8s_TpRxBufIdx = 0U;
						}
						else
						{
							if( ( u8s_TpRxSeqNum % TP_BLOCK_SIZE ) == 0U )
							{
								/* send flow control frame */
								TpFlowControlFrame ();
							}
						}
					}
				}
				break;
			case FT_FC: /* flow control frame */
				u8_STmin = u8_CANFrameData[ 2 ];

				if( u8_STmin < ST_MIN_LOW ){ u16s_STminTickCnt = ( word )( ST_MIN_LOW / BSW_TP_FUNC_BASE_TM ); }
				else if( u8_STmin > ST_MIN_HIGH ){ u16s_STminTickCnt = ( word )( ST_MIN_HIGH / BSW_TP_FUNC_BASE_TM ); }
				else{ u16s_STminTickCnt = ( word )( u8_STmin / BSW_TP_FUNC_BASE_TM ); }

				u16s_STMin_tm = 0U;
				u8s_TpTxState = TP_ST_SEND_CF;
				break;
			default:
				u8_ErrNo = ERR_NOTAVAIL;
				break;
		}
	}
	else
	{
		u8_ErrNo = ERR_NOTAVAIL;
	}

	return ( u8_ErrNo )	;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_TpSingleFrame ( byte u8_DataLen )
{
	byte u8_TpIdx;
	byte u8_TpFrame[ 8 ];

	u8_TpFrame[ 0 ] = ( byte )( FT_SF << 4U );
	u8_TpFrame[ 0 ] |= ( byte )( u8_DataLen & 0x0FU );

	for( u8_TpIdx = 0; u8_TpIdx < u8_DataLen; u8_TpIdx++ )
	{
		u8_TpFrame[ u8_TpIdx + 1U ] = u8g_TpTxBuf[ u8_TpIdx ];
	}

	TpSendFrame ( u8_TpFrame, u8_DataLen + 1U );

	u8s_TpTxState = TP_ST_NORMAL;

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_TpFirstFrame ( byte u8_DataLen )
{
	byte u8_TpIdx;
	byte u8_TpFrame[ 8 ];

	u8_TpFrame[ 0 ] = ( byte )( FT_FF << 4U );
	u8_TpFrame[ 1 ] = u8_DataLen;

	for( u8_TpIdx = 0U; u8_TpIdx < 6U; u8_TpIdx++ )
	{
		u8_TpFrame[ u8_TpIdx + 2U ] = u8g_TpTxBuf[ u8_TpIdx ];
	}

	TpSendFrame ( u8_TpFrame, 8U );

	u8s_TpTxDataCnt = u8_DataLen - 6U;
	u8s_TpTxBufIdx = 6U;
	u8s_TpTxSeqNum = 0U;

	u8s_TpTxState = TP_ST_WAIT_FC;

  return;
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
static void TpFlowControlFrame ( void )
{
	byte u8_TpFrame[ 8 ];

	/* send flow control frame */
	u8_TpFrame[ 0 ] = ( byte )( FT_FC << 4U );
	u8_TpFrame[ 1 ] = TP_BLOCK_SIZE;
	u8_TpFrame[ 2 ] = ST_MIN_VALUE;

	TpSendFrame ( u8_TpFrame, 3U );

  return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void TpSendFrame ( const byte *p_Data, byte u8_Size )
{
	IfxMultican_Message st_CAN_Tx_PhysResponse;

	byte u8_TpIdx;
	byte u8_FrameData[ 8 ] = { 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA };

	for( u8_TpIdx = 0U; u8_TpIdx < u8_Size; u8_TpIdx++ )
	{
		u8_FrameData[ u8_TpIdx ] = p_Data[ u8_TpIdx ];
	}

	st_CAN_Tx_PhysResponse.data[ 0 ] = Make32Bit ( u8_FrameData[ 3 ], u8_FrameData[ 2 ], u8_FrameData[ 1 ], u8_FrameData[ 0 ] );
	st_CAN_Tx_PhysResponse.data[ 1 ] = Make32Bit ( u8_FrameData[ 7 ], u8_FrameData[ 6 ], u8_FrameData[ 5 ], u8_FrameData[ 4 ] );

	Mcal_CanTransmit ( DIAG_PHYS_RESPONSE, &st_CAN_Tx_PhysResponse, &stg_MulticanBasic.can0TxMsgObj_PHYS_RESPONSE );
}
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
