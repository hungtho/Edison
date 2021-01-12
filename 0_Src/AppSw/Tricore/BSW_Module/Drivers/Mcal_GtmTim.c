/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_GtmTim.c                                               **
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

#define MCAL_GTMTIM_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_GtmTim.h"

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
static void Mcal_Obc_GtmTimConfig ( Ifx_GTM *stp_gtm );

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
static IfxGtm_Tim_In st_timDriver; // should be global
static single f32s_GtmTimFre ;
static dword u32s_GtmTimDuty;

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
 void Mcal_Obc_GtmTimInit ( void )
 {
	 Ifx_GTM *stp_gtm = GTM_0;
	 Mcal_Obc_GtmTimConfig ( stp_gtm );
 }

 /*--------------------------------------------------------------------------*/
 /* Function  |                                                              */
 /* Name      |                                                              */
 /*--------------------------------------------------------------------------*/
 /* Parameter | Nothing                                                      */
 /* Return    | Nothing                                                      */
 /*--------------------------------------------------------------------------*/
 void Mcal_Obc_GtmTimFreMeasure ( void )
 {
	 static Ifx_GTM_TIM_CH_GPR0 GPR0;
	 static Ifx_GTM_TIM_CH_GPR1 GPR1;
	 static dword period_ticks = 0;

	 if( IfxGtm_Tim_Ch_isNewValueEvent (st_timDriver.channel) == ( boolean )( TRUE ) )
	 {
	 	IfxGtm_Tim_Ch_clearNewValueEvent( st_timDriver.channel );

	 	// get values from registers
	 	GPR1.U       = st_timDriver.channel->GPR1.U;
	 	GPR0.U       = st_timDriver.channel->GPR0.U;
	 	period_ticks = GPR1.B.GPR1;

	 	u32s_GtmTimDuty = GPR0.B.GPR0;
	 	f32s_GtmTimFre = ( single )( 100000000.0f/(single)period_ticks );
	 }
	 else
	 {
		 f32s_GtmTimFre = 0.0f;
	 }
 }

 /*--------------------------------------------------------------------------*/
 /* Function  |                                                              */
 /* Name      |                                                              */
 /*--------------------------------------------------------------------------*/
 /* Parameter | Nothing                                                      */
 /* Return    | Nothing                                                      */
 /*--------------------------------------------------------------------------*/
 dword Mcal_Obc_GtmTimDutyJ1772 ( void )
 {
	 return u32s_GtmTimDuty;
 }

 /*--------------------------------------------------------------------------*/
 /* Function  |                                                              */
 /* Name      |                                                              */
 /*--------------------------------------------------------------------------*/
 /* Parameter | Nothing                                                      */
 /* Return    | Nothing                                                      */
 /*--------------------------------------------------------------------------*/
 single Mcal_Obc_GtmTimFreqJ1772 ( void )
 {
	 return f32s_GtmTimFre;
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
static void Mcal_Obc_GtmTimConfig ( Ifx_GTM *stp_gtm )
 {
	 IfxGtm_enable( stp_gtm );

	 IfxGtm_Tim_In_Config TimConfig;

	 IfxGtm_Tim_In_initConfig ( &TimConfig, stp_gtm );

	 TimConfig.capture.clock = IfxGtm_Cmu_Clk_0;
	 TimConfig.filter.inputPin 	  = &IfxGtm_TIM0_3_TIN21_P00_12_IN; /* select channel */
	 TimConfig.filter.inputPinMode = IfxPort_Mode_inputNoPullDevice; /* select mode */

	 if( IfxGtm_Tim_In_init ( &st_timDriver, &TimConfig ) == (boolean)( TRUE ) ){}
 }
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
