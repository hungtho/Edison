/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_TpFunc.h                                                **
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

#ifndef BSW_TPFUNC_INCLUDED
#define BSW_TPFUNC_INCLUDED

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
#define BSW_TP_FUNC_BASE_TM			( 1U ) /* 1ms */

#define FT_SF		( 0U ) /* frame type: single frame */
#define FT_FF		( 1U ) /* frame type: first frame */
#define FT_CF		( 2U ) /* frame type: consecutive frame */
#define FT_FC		( 3U ) /* frame type, flow control frame */

#define MAX_TX_FRAME_SIZE		( 150U )
#define MAX_RX_FRAME_SIZE		( 150U )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef BSW_TPFUNC_C_SRC
# endif
extern byte u8g_TpTxBuf[ MAX_TX_FRAME_SIZE ];
extern byte u8g_TpRxBuf[ MAX_RX_FRAME_SIZE ];
extern byte u8g_SingleRxBuf[ 8 ];
extern byte u8g_RxFrameType;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Bsw_TpFunc_Init ( void );
extern void Bsw_TpFunc ( void );
extern byte Bsw_TpRecvProc ( byte *u8p_IsEndFrame, byte *u8p_RecvLen, byte *u8p_ReqType );
extern void Bsw_TpSingleFrame ( byte u8_DataLen );
extern void Bsw_TpFirstFrame ( byte u8_DataLen );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
