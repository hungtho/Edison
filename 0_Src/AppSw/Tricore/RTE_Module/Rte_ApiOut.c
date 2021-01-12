/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Rte_ApiOut.c                                                **
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

#define RTE_APIOUT_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_ApiOut.h"

#include "ASW_LdcStateTrans.h"
#include "ASW_LdcState.h"
#include "ASW_ObcChargeSeq.h"

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
st_RteOut_Ldc st_rteLdcOut;
st_RteOut_Obc st_rteObcOut;

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
void RTE_LDC_OUT ( void )
{
	st_rteLdcOut.st_CANValue.u8_ldc_mode = Asw_GET_Ldc_Mode ();
	st_rteLdcOut.st_PwmValue.u8_LdcPWMCtrl = Asw_GET_Ldc_PwmCtrl ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_OUT ( void )
{
	st_rteObcOut.st_CANValue.u8_OBC_ReadySta = Asw_GET_OBC_ReadySta ();
	st_rteObcOut.st_CANValue.u8_OBC_ACDetectSta = Asw_GET_OBC_ACDetectSta ();
	st_rteObcOut.st_CANValue.u8_OBC_ChargeFinishReq = Asw_GET_OBC_ChargeFinishReq ();
	st_rteObcOut.st_CANValue.u8_OBC_ControllableSta = Asw_GET_OBC_ControllableSta () ;
	st_rteObcOut.st_CANValue.u8_OBC_HVILSta = Asw_GET_OBC_HVILSta ();
	st_rteObcOut.st_CANValue.u8_OBC_OperatingMode = Asw_GET_OBC_OperatingMode ();
	st_rteObcOut.st_CANValue.u8_OBC_PowerDeratingSta = Asw_GET_OBC_PowerDeratingSta ();

	st_rteObcOut.st_PwmValue.u8_ObcPWMCtrl = Asw_GET_ObcPWMEnable ();
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
