/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_UdsFunc.h                                               **
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

#ifndef BSW_UDSFUNC_INCLUDED
#define BSW_UDSFUNC_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define DIAG_PHYS		( 0x01U )
#define DIAG_FUNC   ( 0x02U )

#define DIAG_NO			( 0U )
#define DIAG_YES		( 1U )

#define DIAG_COMM_CTRL_ENABLE			( 0U )
#define DIAG_COMM_CTRL_DISABLE		( 1U )

#define DIAG_DTC_CTRL_ON		( 0U )
#define DIAG_DTC_CTRL_OFF		( 1U )

#define DefaultSession        ( 0x01U )
#define ProgrammingSession    ( 0x02U )
#define ExtendedDiagSession		( 0x03U )

#define hardReset		( 0x01U )

#define RequestSeed		( 0x01U )
#define SendKey				( 0x02U )

#define enableRxAndTx						( 0x00U )
#define enableRxAndDisableTx		( 0x01U )
#define disableRxAndEnableTx		( 0x02U )
#define disableRxAndTx					( 0x03U )

/*-----------------------------------------------------------------------------
    &&&~ Negative response codes
 -----------------------------------------------------------------------------*/
#define NrcPositiveResponse                         ( 0x00U )
#define NrcGeneralReject                            ( 0x10U )
#define NrcServiceNotSupported                      ( 0x11U )
#define NrcSubfunctionNotSupported                  ( 0x12U )
#define NrcInvalidFormat                            ( 0x13U )
#define NrcResponseTooLong                          ( 0x14U )
#define NrcBusyRepeatRequest                        ( 0x21U )
#define NrcConditionsNotCorrect                     ( 0x22U )
#define NrcRequestSequenceError                     ( 0x24U )
#define NrcRequestOutOfRange                        ( 0x31U )
#define NrcAccessDenied                             ( 0x33U )
#define NrcInvalidKey                               ( 0x35U )
#define NrcExceedNumOfAttempts                      ( 0x36U )
#define NrcTimeDelayNotExpired                      ( 0x37U )
#define NrcUploadDownloadNotAccepted                ( 0x70U )
#define NrcTransferDataSuspended                    ( 0x71U )
#define NrcGeneralProgrammingFailure                ( 0x72U )
#define NrcWrongBlockSequenceCounter                ( 0x73U )
#define NrcResponsePending                          ( 0x78U )
#define NrcSubfunctionNotSupportedInActiveSession		( 0x7EU )
#define NrcServiceNotSupportedInActiveSession       ( 0x7FU )
#define NrcRpmTooHigh                               ( 0x81U )
#define NrcRpmTooLow                                ( 0x82U )
#define NrcEngineIsRunning                          ( 0x83U )
#define NrcEngineIsNotRunning                       ( 0x84U )
#define NrcEngineRunTimeTooLow                      ( 0x85U )
#define NrcTemperatureTooHigh                       ( 0x86U )
#define NrcTemperatureTooLow                        ( 0x87U )
#define NrcVehicleSpeedTooHigh                      ( 0x88U )
#define NrcVehicleSpeedTooLow                       ( 0x89U )
#define NrcThrottleSpeedTooHigh                     ( 0x8AU )
#define NrcThrottleSpeedTooLow                      ( 0x8BU )
#define NrcTransmissionRangeInNeutral               ( 0x8CU )
#define NrcTransmissionRangeInGears                 ( 0x8DU )
#define NrcBrakeSwitchNotClosed                     ( 0x8FU )
#define NrcShifterLeverNotInPark                    ( 0x90U )
#define NrcTorqueConverterClutchLocked              ( 0x91U )
#define NrcVoltageTooHigh                           ( 0x92U )
#define NrcVoltageTooLow                            ( 0x93U )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	byte u2_mReqType     :2; /* 0x01: Phys 0x02: Func */
	byte u1_mSuppressRes :1; /* 0x00: No   0x01: Yes  */
	byte u5_mDummy       :5;
}DescMsgAddInfo;

/* Context information of a request */
typedef struct
{
	byte *u8p_mReqData;
	word u16_mReqDataLen;
	byte *u8p_mResData;
	word u16_mResDataLen;
	DescMsgAddInfo st_mMsgAddInfo;
	byte u8_mContext;
}DescMsgContext;

typedef struct
{
	byte u2_mIsValid     :2; /* 0x00: End, 0x01: Support, 0x02: Not Support */
	byte u2_mReqType     :2; /* 0x01: Phys 0x02: Func */
	byte u1_mHaveSubFunc :1; /* 0x00: No   0x01: Yes  */
	byte u3_mDummy       :3;
	byte u8_mServiceId;
	void ( * Func )( DescMsgContext * );
}DescService;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef BSW_UDSFUNC_C_SRC
# endif

extern byte u8g_UDS_ResetReq;
extern byte u8g_UDS_CommRx_CtrlSts;
extern byte u8g_UDS_CommTx_CtrlSts;
extern byte u8g_UDS_DTC_CtrlSts;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Bsw_UdsFunc_Init ( void );
extern void Bsw_UdsFunc ( void );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
