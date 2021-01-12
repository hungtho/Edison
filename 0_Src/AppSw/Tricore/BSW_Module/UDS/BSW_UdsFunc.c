/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_UdsFunc.c                                               **
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

#define BSW_UDSFUNC_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include <stdlib.h>
#include "BSW_UdsFunc.h"
#include "BSW_Defines.h"
#include "BSW_DiagCfg.h"
#include "BSW_TpFunc.h"
#include "BSW_ISR.h"
#include "../Drivers/Mcal_Multican.h"
#include "../Drivers/Mcal_DFlash.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define TESTER_TIMEOUT_TM		( 5000U / 1U )

#define NO		( 0U )
#define YES		( 1U )

#define SECURITY_UNLOCK		( 1U )
#define SECURITY_LOCK     ( 0U )

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
static void DescSendResponse ( const DescMsgContext *stp_MsgContext );
static void DescSetNegResponse ( byte u8_mContext, byte u8_ErrorCode );
static void TesterTimeout_Check_Func ( void );
static void SetBootMode ( dword u32_BootMode );

static void ApplDescProcessDiagnosticSessionControl ( DescMsgContext *stp_MsgContext );
static void ApplDescProcessEcuReset ( DescMsgContext *stp_MsgContext );
static void ApplDescProcessSecurityAccess ( DescMsgContext *stp_MsgContext );
static void ApplDescProcessCommunicatonControl ( DescMsgContext *stp_MsgContext );
static void ApplDescProcessTesterPresent ( DescMsgContext *stp_MsgContext );
static void ApplDescProcessControlDTCSetting ( DescMsgContext *stp_MsgContext );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
byte u8g_UDS_ResetReq = DIAG_NO;
byte u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
byte u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
byte u8g_UDS_DTC_CtrlSts = DIAG_DTC_CTRL_ON;

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_DescNegResCode;
static byte u8s_DiagSessionSts;
static byte u8s_SecuritySts;
static byte u8s_SecuritySequence;
static byte u8s_SecurityAttemptCnt;
static byte u8s_SecurityTimeDlyReq;
static byte u8s_SecurityTimeDlyCnt;
static word u16s_TesterTimeout_cnt;

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
void Bsw_UdsFunc_Init ( void )
{
	u8s_DescNegResCode = NrcPositiveResponse;
	u8s_DiagSessionSts = DefaultSession;
	u8s_SecuritySts = SECURITY_LOCK;
	u8s_SecuritySequence = 0U;
	u8s_SecurityAttemptCnt = 0U;
	u8s_SecurityTimeDlyReq = 0U;
	u8s_SecurityTimeDlyCnt = 0U;
	u16s_TesterTimeout_cnt = 0U;

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_UdsFunc ( void )
{
	/* Diagnostic Service Id List */
	static const DescService sts_DescService[] =
	{
		/* u2_mIsValid, u2_mReqType, u1_mHaveSubFunc, u3_mDummy, u2_mServiceId, Func */
			{ YES, DIAG_PHYS|DIAG_FUNC, YES, 0U, 0x10U, ApplDescProcessDiagnosticSessionControl  	},
			{ YES, DIAG_PHYS     			, YES, 0U, 0x11U, ApplDescProcessEcuReset                  	},
			{ YES, DIAG_PHYS     			, YES, 0U, 0x27U, ApplDescProcessSecurityAccess            	},
			{ YES, DIAG_PHYS|DIAG_FUNC, YES, 0U, 0x28U, ApplDescProcessCommunicatonControl       	},
			{ YES, DIAG_PHYS|DIAG_FUNC, YES, 0U, 0x3EU, ApplDescProcessTesterPresent            	},
			{ YES, DIAG_PHYS|DIAG_FUNC, YES, 0U, 0x85U, ApplDescProcessControlDTCSetting        	},
#if defined ( ENABLE_UDS_READ_MEMORY_SERVICE )
		{ YES, DIAG_PHYS     			, NO,  0U, 0x23U, ApplDescProcessReadMemoryByAddress        },
#endif
		{ NO , 0x00U    					, 0U,  0U, 0xFFU, NULL                                     	}
	};

	static DescMsgContext st_MsgContext;
	byte u8_Idx;
	byte u8_IsEndFrame = 0U;
	byte u8_SvcId;
	byte u8_RecvLen = 0U;
	byte u8_RequestType = 0x00U;

	TesterTimeout_Check_Func ();

	if( u8g_Can_DiagRxFlag == STATE_NORMAL )
	{
		u8g_Can_DiagRxFlag = STATE_FAULT;
		u16s_TesterTimeout_cnt = 0U;

		if( Bsw_TpRecvProc ( &u8_IsEndFrame, &u8_RecvLen, &u8_RequestType ) != ERR_OK )
		{
			u8s_DescNegResCode = NrcInvalidFormat;
			st_MsgContext.u8_mContext = 0U;
			DescSendResponse ( &st_MsgContext ); /* send negative response */
		}
		else
		{
			if( ( u8_IsEndFrame == 1U ) && ( u8_RecvLen != 0U ) )
			{
				st_MsgContext.u16_mReqDataLen = ( word )u8_RecvLen - 1U;

				if( u8_RecvLen < 8U )
				{
					u8_SvcId = u8g_SingleRxBuf[ 0 ];
					st_MsgContext.u8p_mReqData = &u8g_SingleRxBuf[ 1 ];
				}
				else
				{
					u8_SvcId = u8g_TpRxBuf[ 0 ];
					st_MsgContext.u8p_mReqData = &u8g_TpRxBuf[ 1 ];
				}

				st_MsgContext.u8p_mResData = &u8g_TpTxBuf[ 1 ];
				st_MsgContext.st_mMsgAddInfo.u2_mReqType = u8_RequestType;
				st_MsgContext.st_mMsgAddInfo.u1_mSuppressRes = DIAG_NO;

				u8s_DescNegResCode = NrcPositiveResponse;

				for( u8_Idx = 0U; sts_DescService[ u8_Idx ].u2_mIsValid != DIAG_NO; u8_Idx++ )
				{
					if( ( sts_DescService[ u8_Idx ].u8_mServiceId == u8_SvcId )
					 && ( ( sts_DescService[ u8_Idx ].u2_mReqType & u8_RequestType ) != 0x00U ) )
					{
						sts_DescService[ u8_Idx ].Func ( &st_MsgContext );
						break;
					}
				}

				if( sts_DescService[ u8_Idx ].u2_mIsValid == DIAG_NO )
				{
					u8s_DescNegResCode = NrcServiceNotSupported;
				}

				if( ( st_MsgContext.st_mMsgAddInfo.u2_mReqType == DIAG_FUNC )
				 && ( ( u8s_DescNegResCode == NrcServiceNotSupported )
					 || ( u8s_DescNegResCode == NrcSubfunctionNotSupported )
					 || ( u8s_DescNegResCode == NrcRequestOutOfRange ) ) )
				{
					st_MsgContext.st_mMsgAddInfo.u1_mSuppressRes = DIAG_YES;
				}
				else
				{
					if( sts_DescService[ u8_Idx ].u1_mHaveSubFunc == DIAG_YES ) /* if service with subFunction is supported */
					{
						if( ( ( st_MsgContext.u8p_mReqData[ 0 ] & 0x80U ) == 0x80U )
						 && ( u8s_DescNegResCode == NrcPositiveResponse ) )
						{
							st_MsgContext.st_mMsgAddInfo.u1_mSuppressRes = DIAG_YES;
						}
					}
				}

				if( st_MsgContext.st_mMsgAddInfo.u1_mSuppressRes == DIAG_NO )
				{
					DescSendResponse ( &st_MsgContext );	/* send response */
				}
			}
		}
	}

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
static void DescSendResponse ( const DescMsgContext *stp_MsgContext )
{
	byte u8_Sid;
	byte u8_ResDataLen;

	if( u8g_RxFrameType == FT_SF ){ u8_Sid = u8g_SingleRxBuf[ 0 ]; }
	else{ u8_Sid = u8g_TpRxBuf[ 0 ]; }

	if( u8s_DescNegResCode == NrcPositiveResponse ) /* positive response */
	{
		u8g_TpTxBuf[ 0 ] = u8_Sid + 0x40U;
		u8_ResDataLen = ( byte )( stp_MsgContext->u16_mResDataLen + 1U );
	}
  else /* negative response */
	{
		u8g_TpTxBuf[ 0 ] = 0x7FU;
		u8g_TpTxBuf[ 1 ] = u8_Sid;
		u8g_TpTxBuf[ 2 ] = u8s_DescNegResCode;
		u8_ResDataLen = 3U;
	}

	if( u8_ResDataLen < 8U )
	{
		Bsw_TpSingleFrame ( u8_ResDataLen );
	}
	else
	{
		Bsw_TpFirstFrame ( u8_ResDataLen );
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void DescSetNegResponse ( byte u8_mContext, byte u8_ErrorCode )
{
	if( u8_mContext != 0U ){}
	u8s_DescNegResCode = u8_ErrorCode;

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessDiagnosticSessionControl ( DescMsgContext *stp_MsgContext )
{
	byte u8_SubFunc;

	u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

	switch( u8_SubFunc )
	{
		case DefaultSession:
			if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
			{
				u8s_DiagSessionSts = DefaultSession;

				u8s_SecuritySts = SECURITY_LOCK;
				u8s_SecuritySequence = big_FALSE;
				u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
				u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_ENABLE;

				stp_MsgContext->u8p_mResData[ 0 ] = DefaultSession;
				stp_MsgContext->u8p_mResData[ 1 ] = 0x00U;
				stp_MsgContext->u8p_mResData[ 2 ] = 0x32U;
				stp_MsgContext->u8p_mResData[ 3 ] = 0x00u;
				stp_MsgContext->u8p_mResData[ 4 ] = 0xC8U;
				stp_MsgContext->u16_mResDataLen = 5U;
			}
			else
			{
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
			}
			break;
		case ProgrammingSession:
			if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
			{
				u8s_DiagSessionSts = ProgrammingSession;

				u8s_SecuritySts = SECURITY_LOCK;
				u8s_SecuritySequence = big_FALSE;

				SetBootMode ( BOOT_MODE );

				stp_MsgContext->u8p_mResData[ 0 ] = ProgrammingSession;
				stp_MsgContext->u8p_mResData[ 1 ] = 0x00U;
				stp_MsgContext->u8p_mResData[ 2 ] = 0x32U;
				stp_MsgContext->u8p_mResData[ 3 ] = 0x00U;
				stp_MsgContext->u8p_mResData[ 4 ] = 0xC8U;
				stp_MsgContext->u16_mResDataLen = 5U;
			}
			else
			{
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
			}
			break;
		case ExtendedDiagSession:
			if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
			{
				u8s_DiagSessionSts = ExtendedDiagSession;

				u8s_SecuritySts = SECURITY_LOCK;
				u8s_SecuritySequence = big_FALSE;

				stp_MsgContext->u8p_mResData[ 0 ] = ExtendedDiagSession;
				stp_MsgContext->u8p_mResData[ 1 ] = 0x00U;
				stp_MsgContext->u8p_mResData[ 2 ] = 0x32U;
				stp_MsgContext->u8p_mResData[ 3 ] = 0x00U;
				stp_MsgContext->u8p_mResData[ 4 ] = 0xC8U;
				stp_MsgContext->u16_mResDataLen = 5U;
			}
			else
			{
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
			}
			break;
		default:
			DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
			break;
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessEcuReset ( DescMsgContext *stp_MsgContext )
{
	byte u8_SubFunc;

	u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

	switch( u8_SubFunc )
	{
		case hardReset:
			if( stp_MsgContext->u16_mReqDataLen <= 0x01U )
			{
				u8g_UDS_ResetReq = DIAG_YES;

				stp_MsgContext->u8p_mResData[ 0 ] = 0x01U;
				stp_MsgContext->u16_mResDataLen = 1U;
			}
			else
			{
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
			}
			break;
		default:
			DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
			break;
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessSecurityAccess ( DescMsgContext *stp_MsgContext )
{
	static byte u8s_Seed[ 4 ];
	 byte u8_SubFunc;

	if( u8s_DiagSessionSts == ExtendedDiagSession )
	{
		u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

		switch( u8_SubFunc )
		{
			case RequestSeed:
				if( stp_MsgContext->u16_mReqDataLen <= 0x01U )
				{
					if( u8s_SecurityAttemptCnt < 3U )
					{
						if( u8s_SecuritySequence == big_FALSE )
						{
							u8s_SecuritySequence = big_TRUE;
							u8s_Seed[ 0 ] = 0U;
							u8s_Seed[ 1 ] = 0U;
							u8s_Seed[ 2 ] = 0U;
							u8s_Seed[ 3 ] = 0U;

							if( u8s_SecuritySts == SECURITY_LOCK )
							{
								srand ( MODULE_STM0.TIM0.U );

								u8s_Seed[ 0 ] = ( byte )( ( ( byte )rand () % 0xFFU ) + 1U );
								u8s_Seed[ 1 ] = ( byte )( ( ( byte )rand () % 0xFFU ) + 1U );
								u8s_Seed[ 2 ] = ( byte )( ( ( byte )rand () % 0xFFU ) + 1U );
								u8s_Seed[ 3 ] = ( byte )( ( ( byte )rand () % 0xFFU ) + 1U );
							}
						}

						stp_MsgContext->u8p_mResData[ 0 ] = RequestSeed;
						stp_MsgContext->u8p_mResData[ 1 ] = u8s_Seed[ 0 ];
						stp_MsgContext->u8p_mResData[ 2 ] = u8s_Seed[ 1 ];
						stp_MsgContext->u8p_mResData[ 3 ] = u8s_Seed[ 2 ];
						stp_MsgContext->u8p_mResData[ 4 ] = u8s_Seed[ 3 ];
						stp_MsgContext->u16_mResDataLen = 5U;
					}
					else
					{
						DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcTimeDelayNotExpired );
					}
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			case SendKey:
				if( stp_MsgContext->u16_mReqDataLen <= 0x05U )
				{
					if( u8s_SecuritySequence == big_TRUE )
					{
						u8s_SecuritySequence = big_FALSE;

						if( ( stp_MsgContext->u8p_mReqData[ 1 ] == ( u8s_Seed[ 0 ] ^ 0x55U ) )
						 &&	( stp_MsgContext->u8p_mReqData[ 2 ] == ( u8s_Seed[ 1 ] ^ 0xAAU ) )
						 && ( stp_MsgContext->u8p_mReqData[ 3 ] == ( u8s_Seed[ 2 ] ^ 0x55U ) )
						 && ( stp_MsgContext->u8p_mReqData[ 4 ] == ( u8s_Seed[ 3 ] ^ 0xAAU ) ) )
						{
							u8s_SecuritySts = SECURITY_UNLOCK;
							u8s_SecurityAttemptCnt = 0U;
							u8s_SecurityTimeDlyReq = big_FALSE;

							stp_MsgContext->u8p_mResData[ 0 ] = SendKey;
							stp_MsgContext->u16_mResDataLen = 1U;
						}
						else
						{
							u8s_SecuritySts = SECURITY_LOCK;
							u8s_SecurityAttemptCnt++;

							if( u8s_SecurityAttemptCnt >= 3U )
							{
								u8s_SecurityTimeDlyCnt = 0U;
								u8s_SecurityTimeDlyReq = big_TRUE;

								DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcExceedNumOfAttempts );
							}
							else
							{
								DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidKey );
							}
						}
					}
					else
					{
						DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcRequestSequenceError );
					}
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			default:
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
				break;
		}
	}
	else
	{
		DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcConditionsNotCorrect );
	}

	return;
}


/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessCommunicatonControl ( DescMsgContext *stp_MsgContext )
{
	byte u8_SubFunc;

	if( u8s_DiagSessionSts == ExtendedDiagSession )
	{
		u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

		switch( u8_SubFunc )
		{
			case enableRxAndTx:
				if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
				{
					u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
					u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_ENABLE;

					stp_MsgContext->u8p_mResData[ 0 ] = enableRxAndTx;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			case enableRxAndDisableTx:
				if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
				{
					u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
					u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_DISABLE;

					stp_MsgContext->u8p_mResData[ 0 ] = enableRxAndDisableTx;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			case disableRxAndEnableTx:
				if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
				{
					u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_DISABLE;
					u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_ENABLE;

					stp_MsgContext->u8p_mResData[ 0 ] = disableRxAndEnableTx;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			case disableRxAndTx:
				if( stp_MsgContext->u16_mReqDataLen <= 0x02U )
				{
					u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_DISABLE;
					u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_DISABLE;

					stp_MsgContext->u8p_mResData[ 0 ] = disableRxAndTx;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			default:
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
				break;
		}
	}
	else
	{
		DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcConditionsNotCorrect );
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessTesterPresent ( DescMsgContext *stp_MsgContext )
{
	byte u8_SubFunc;

	u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

	switch( u8_SubFunc )
	{
	  case 0x00:
	    if( stp_MsgContext->u16_mReqDataLen <= 0x01U )
	    {
	      stp_MsgContext->u8p_mResData[ 0 ] = 0x00U;
  		  stp_MsgContext->u16_mResDataLen = 1U;
	    }
	    else
	    {
	      DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
	    }
	    break;
	  default:
	    DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
	    break;
	}

  return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void ApplDescProcessControlDTCSetting ( DescMsgContext *stp_MsgContext )
{
	byte u8_SubFunc;

	if( u8s_DiagSessionSts == ExtendedDiagSession )
	{
		u8_SubFunc = stp_MsgContext->u8p_mReqData[ 0 ] & 0x7FU;

		switch( u8_SubFunc )
		{
			case 0x01:
				if( stp_MsgContext->u16_mReqDataLen <= 0x01U )
				{
					u8g_UDS_DTC_CtrlSts = DIAG_DTC_CTRL_ON;

					stp_MsgContext->u8p_mResData[ 0 ] = 0x01;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			case 0x02:
				if( stp_MsgContext->u16_mReqDataLen <= 0x01U )
				{
					u8g_UDS_DTC_CtrlSts = DIAG_DTC_CTRL_OFF;

					stp_MsgContext->u8p_mResData[ 0 ] = 0x02U;
					stp_MsgContext->u16_mResDataLen = 1U;
				}
				else
				{
					DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcInvalidFormat );
				}
				break;
			default:
				DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcSubfunctionNotSupported );
				break;
		}
	}
	else
	{
		DescSetNegResponse ( stp_MsgContext->u8_mContext, NrcConditionsNotCorrect );
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void TesterTimeout_Check_Func ( void )
{
	if( u8s_DiagSessionSts != DefaultSession )
	{
		u16s_TesterTimeout_cnt = U16_CountUp( u16s_TesterTimeout_cnt, TESTER_TIMEOUT_TM );
		if( u16s_TesterTimeout_cnt == TESTER_TIMEOUT_TM )
		{
			u8s_SecuritySts = SECURITY_LOCK;
			u8s_SecuritySequence = big_FALSE;
			u8g_UDS_CommRx_CtrlSts = DIAG_COMM_CTRL_ENABLE;
			u8g_UDS_CommTx_CtrlSts = DIAG_COMM_CTRL_ENABLE;

			u8s_DiagSessionSts = DefaultSession;
		}
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void SetBootMode ( dword u32_BootMode )
{
	dword u32_ReadData;
	byte u8_WriteMode [4];

	u32_ReadData = *( ( volatile dword * )REPROGRAMMING_REQ_ADDR );

	if( ( ( u32_ReadData & 0x0000FFFFU ) != ERASED_FLASH_MODE )
	 && ( ( u32_ReadData & 0x0000FFFFU ) != u32_BootMode ) )
	{
		u8_WriteMode[ 0 ] = Get32BitLoLoByte ( u32_BootMode );
		u8_WriteMode[ 1 ] = Get32BitLoHiByte ( u32_BootMode );
		u8_WriteMode[ 2 ] = Get32BitHiLoByte ( u32_ReadData );
		u8_WriteMode[ 3 ] = Get32BitHiHiByte ( u32_ReadData );

		( void )Mcal_DFlashErase ( 15U );
		( void )Mcal_DFlashWrite ( REPROGRAMMING_REQ_ADDR, 1U, u8_WriteMode );
	}

	u8g_UDS_ResetReq = DIAG_YES;

	return;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
