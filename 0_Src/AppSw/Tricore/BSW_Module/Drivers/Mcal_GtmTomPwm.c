/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_GtmTomPwm.c                                            **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.22                                                  **
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

#define MCAL_GTMTOMPWM_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_GtmTomPwm.h"
#include "Ifx_Types.h"

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
static void GtmTomInit_Ldc ( void );
static void GtmTomInit_Obc ( void );

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
static sts_GtmTomPwmHl st_GtmPwmHlLdc;
static sts_GtmTomPwmHl st_GtmPwmHlObc;

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
void Mcal_GtmTomInit ( void )
{
	/* disable interrupts */
	/** - GTM clocks */
	Ifx_GTM *stp_gtm = GTM_0;
	IfxGtm_enable ( stp_gtm );

	/* Set the global clock frequencies */
	st_GtmPwmHlLdc.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency ( stp_gtm );
	st_GtmPwmHlLdc.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency ( stp_gtm );
	st_GtmPwmHlLdc.info.gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency( stp_gtm, IfxGtm_Cmu_Clk_0, TRUE );
	st_GtmPwmHlLdc.info.state          = GtmTomPwmHl_State_init;

	st_GtmPwmHlObc.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency ( stp_gtm );
	st_GtmPwmHlObc.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency ( stp_gtm );
	st_GtmPwmHlObc.info.gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency ( stp_gtm, IfxGtm_Cmu_Clk_0, TRUE );
	st_GtmPwmHlObc.info.state          = GtmTomPwmHl_State_init;

	GtmTomInit_Ldc ();
	GtmTomInit_Obc ();

	IfxGtm_Cmu_enableClocks ( stp_gtm, ( dword )IFXGTM_CMU_CLKEN_FXCLK | (dword )IFXGTM_CMU_CLKEN_CLK0 );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_LDC_PWMAB_updateShift ( dword u32_shift, en_PWM_STATE u8_pwmON )
{
	dword u32_period = LDC_PWM_PERIOD; /* period */
	dword u32_deadtime = LDC_PWM_DEADTIME;
	dword u32_cm0, u32_cm1, u32_cmTemp;

  IfxGtm_Tom_PwmHl *pdriver = &st_GtmPwmHlLdc.drivers.pwm;
  IfxGtm_Tom_Timer *ptimer = &st_GtmPwmHlLdc.drivers.timer;

	IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_leftAligned );
	IfxGtm_Tom_Timer_disableUpdate ( &st_GtmPwmHlLdc.drivers.timer );

	if( u8_pwmON == ENABLE )
	{
		u32_cm1 = ( dword )( u32_shift );
		u32_cm0 = ( dword )( u32_shift + ( u32_period / 2u ) );
		u32_cmTemp = ( dword )( u32_cm0 + u32_deadtime ) ;

		if( u32_cmTemp < u32_period )
		{
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_7, u32_cm0, u32_cm1 + u32_deadtime );
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_4, u32_cmTemp, u32_cm1 );
		}
	}
	else
	{
		IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_7, 2u, u32_period + 2u );
		IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_4, u32_period + 1u, 2u );
	}

	IfxGtm_Tom_Timer_applyUpdate ( ptimer );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_LDC_PWMCD_updateShift ( dword u32_shift, en_PWM_STATE u8_pwmON )
{
	dword u32_period = LDC_PWM_PERIOD; /* period */
	dword u32_deadtime = LDC_PWM_DEADTIME;
	dword u32_cm0, u32_cm1, u32_cmTemp;

  IfxGtm_Tom_PwmHl *pdriver = &st_GtmPwmHlLdc.drivers.pwm;
  IfxGtm_Tom_Timer *ptimer = &st_GtmPwmHlLdc.drivers.timer;

	IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_leftAligned );
	IfxGtm_Tom_Timer_disableUpdate ( &st_GtmPwmHlLdc.drivers.timer );

	if( u8_pwmON == ENABLE )
	{
		u32_cm1 = ( dword )( u32_shift );
		u32_cm0 = ( dword )( u32_shift + ( u32_period / 2U ) );
		u32_cmTemp = ( dword )( u32_cm0 + u32_deadtime ) ;

		if( u32_cmTemp < u32_period )
		{
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_5, u32_cm0, u32_cm1 + u32_deadtime );
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_3, u32_cmTemp, u32_cm1 );
		}
	}
	else
	{
		IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_5, 2u, u32_period + 2u );
		IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_3, u32_period + 1u, 2u );
	}

	IfxGtm_Tom_Timer_applyUpdate ( ptimer );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_OBC_PWMAB_updatefrequency ( single f32_freq, en_PWM_STATE u8_pwmON )
{
	dword u32_period = 0U;
	dword u32_deadtime = OBC_PWM_DEADTIME;
	dword u32_cm0 = 0U;
	dword u32_cm1 = 0U;
	dword u32_cmTemp = 0U;

	Ifx_GTM *pgtm = GTM_0;
  IfxGtm_Tom_PwmHl *pdriver = &st_GtmPwmHlObc.drivers.pwm;
  IfxGtm_Tom_Timer *ptimer = &st_GtmPwmHlObc.drivers.timer;

	if( u8_pwmON == ENABLE )
	{
		IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_centerAligned );
		if( IfxGtm_Tom_Timer_setFrequency ( ptimer, f32_freq ) == ( boolean )1U ){}
		u32_period = ( dword )IfxGtm_Cmu_getClkFrequency ( pgtm, IfxGtm_Cmu_Clk_0, TRUE ) / f32_freq;

		IfxGtm_Tom_Timer_disableUpdate ( ptimer );
		u32_cm1 = ( u32_period - ( u32_period / 2U ) ) / 2U;
		u32_cm0 = ( u32_period + ( u32_period / 2U ) ) / 2U;
		u32_cmTemp = ( dword )( u32_cm0 + u32_deadtime ) ;

		if( u32_cmTemp < u32_period )
		{
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_12, u32_cm0, u32_cm1 + u32_deadtime );
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_13, u32_cmTemp, u32_cm1 );
		}
	}
	else
	{
		if( IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_off ) == ( boolean )1U ){}
		IfxGtm_Tom_Timer_disableUpdate ( ptimer );
		IfxGtm_Tom_PwmHl_setOnTime ( pdriver, NULL_PTR );
	}

	IfxGtm_Tom_Timer_applyUpdate ( ptimer );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_OBC_PWMCD_updatefrequency ( single f32_freq, en_PWM_STATE u8_pwmON )
{
	dword u32_period = 0U;
	dword u32_deadtime = OBC_PWM_DEADTIME;
	dword u32_cm0 = 0U;
	dword u32_cm1 = 0U;
	dword u32_cmTemp = 0U;

	Ifx_GTM *pgtm = GTM_0;
  IfxGtm_Tom_PwmHl *pdriver = &st_GtmPwmHlObc.drivers.pwm;
  IfxGtm_Tom_Timer *ptimer = &st_GtmPwmHlObc.drivers.timer;

	if( u8_pwmON == ENABLE )
	{
		if( IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_centerAligned ) == (boolean)TRUE ){};
		if( IfxGtm_Tom_Timer_setFrequency ( ptimer, f32_freq ) == ( boolean )1U ){}
		u32_period = ( dword )( IfxGtm_Cmu_getClkFrequency ( pgtm, IfxGtm_Cmu_Clk_0, TRUE ) / f32_freq );

		IfxGtm_Tom_Timer_disableUpdate ( ptimer );
		u32_cm1 = ( u32_period - ( u32_period / 2U ) ) / 2U;
		u32_cm0 = ( u32_period + ( u32_period / 2U ) ) / 2U;

		u32_cmTemp = ( dword )( u32_cm0 + u32_deadtime ) ;

		if( u32_cmTemp < u32_period )
		{
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_15, u32_cm0, u32_cm1 + u32_deadtime );
			IfxGtm_Tom_Ch_setCompareShadow ( pdriver->tom, IfxGtm_Tom_Ch_14, u32_cm0 + u32_deadtime, u32_cm1 );
		}
	}
	else
	{
		if( IfxGtm_Tom_PwmHl_setMode ( pdriver, Ifx_Pwm_Mode_off ) == ( boolean )1U ){}
		IfxGtm_Tom_Timer_disableUpdate ( ptimer );
		IfxGtm_Tom_PwmHl_setOnTime ( pdriver, NULL_PTR );
	}

	IfxGtm_Tom_Timer_applyUpdate ( ptimer );
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
static void GtmTomInit_Ldc( void )
{
	IfxGtm_Tom_Timer_Config timerConfig;
	IfxGtm_Tom_PwmHl_Config pwmHlConfig;

  IfxGtm_Tom_Timer_initConfig ( &timerConfig, GTM_0 );

  timerConfig.base.frequency                  = LDC_PWM_FRE;
  timerConfig.base.minResolution              = ( 1.0f / timerConfig.base.frequency ) / 1000.0f;
  timerConfig.base.trigger.enabled            = FALSE;
  timerConfig.tom                             = IfxGtm_Tom_1;
  timerConfig.timerChannel                    = IfxGtm_Tom_Ch_0;
  timerConfig.clock                           = IfxGtm_Cmu_Clk_0;

  timerConfig.triggerOut                      = NULL_PTR;
  timerConfig.base.trigger.outputEnabled      = TRUE;
  timerConfig.base.trigger.enabled            = FALSE;
  timerConfig.base.trigger.triggerPoint       = 500;
  timerConfig.base.trigger.risingEdgeAtPeriod = TRUE;

  if( IfxGtm_Tom_Timer_init ( &st_GtmPwmHlLdc.drivers.timer, &timerConfig) == ( boolean )1U ){}
	IfxGtm_Tom_PwmHl_initConfig ( &pwmHlConfig );

	IfxGtm_Tom_ToutMapP ldc_ccx[2];
	IfxGtm_Tom_ToutMapP ldc_coutx[2] ;

	ldc_ccx[0]  = &IfxGtm_TOM1_7_TOUT64_P20_8_OUT; /* Epwm1 */
	ldc_coutx[0] =  &IfxGtm_TOM1_4_TOUT65_P20_9_OUT; /* Epwm2 */
	ldc_ccx[1] =  &IfxGtm_TOM1_5_TOUT66_P20_10_OUT; /* Epwm3 */
	ldc_coutx[1] = &IfxGtm_TOM1_3_TOUT71_P15_0_OUT; /* Epwm4 */

	pwmHlConfig.timer                 = &st_GtmPwmHlLdc.drivers.timer;
	pwmHlConfig.tom                   = timerConfig.tom;

	pwmHlConfig.base.deadtime         = 60e-8f;
	pwmHlConfig.base.minPulse         = 1e-8f;

	pwmHlConfig.base.channelCount     = 2U;
	pwmHlConfig.base.emergencyEnabled = FALSE;

	pwmHlConfig.base.outputMode       = IfxPort_OutputMode_pushPull;
	pwmHlConfig.base.outputDriver     = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	pwmHlConfig.base.ccxActiveState   = Ifx_ActiveState_high;
	pwmHlConfig.base.coutxActiveState = Ifx_ActiveState_high;
	pwmHlConfig.ccx                   = ldc_ccx;
	pwmHlConfig.coutx                 = ldc_coutx;

	if( IfxGtm_Tom_PwmHl_init ( &st_GtmPwmHlLdc.drivers.pwm, &pwmHlConfig ) == ( boolean )1U ){}
	IfxGtm_Tom_Timer_run ( &st_GtmPwmHlLdc.drivers.timer );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void GtmTomInit_Obc( void )
{
	IfxGtm_Tom_Timer_Config timerConfig;
	IfxGtm_Tom_PwmHl_Config pwmHlConfig;

  IfxGtm_Tom_Timer_initConfig ( &timerConfig, GTM_0 );

  timerConfig.base.frequency                  = OBC_PWM_FRE;
  timerConfig.base.minResolution              = (1.0f / timerConfig.base.frequency) / 1000.0f;
  timerConfig.base.trigger.enabled            = FALSE;
  timerConfig.tom                             = IfxGtm_Tom_0;
  timerConfig.timerChannel                    = IfxGtm_Tom_Ch_0;
  timerConfig.clock                           = IfxGtm_Cmu_Clk_0;

  timerConfig.triggerOut                      = NULL_PTR;
  timerConfig.base.trigger.outputEnabled      = TRUE;
  timerConfig.base.trigger.enabled            = FALSE;
  timerConfig.base.trigger.triggerPoint       = 500;
  timerConfig.base.trigger.risingEdgeAtPeriod = TRUE;

  if( IfxGtm_Tom_Timer_init ( &st_GtmPwmHlObc.drivers.timer, &timerConfig) == ( boolean )1U ){}
	IfxGtm_Tom_PwmHl_initConfig ( &pwmHlConfig );

	IfxGtm_Tom_ToutMapP obc_ccx[2];
	IfxGtm_Tom_ToutMapP obc_coutx[2] ;

	obc_ccx[0]  = &IfxGtm_TOM0_12_TOUT98_P11_9_OUT; /* Epwm1 */
	obc_coutx[0] =  &IfxGtm_TOM0_13_TOUT99_P11_10_OUT; /* Epwm2 */
	obc_ccx[1] =  &IfxGtm_TOM0_15_TOUT101_P11_12_OUT; /* Epwm3 */
	obc_coutx[1] = &IfxGtm_TOM0_14_TOUT100_P11_11_OUT; /* Epwm4 */

	pwmHlConfig.timer                 = &st_GtmPwmHlObc.drivers.timer;
	pwmHlConfig.tom                   = timerConfig.tom;

	pwmHlConfig.base.deadtime         = 60e-8f;
	pwmHlConfig.base.minPulse         = 1e-7f;

	pwmHlConfig.base.channelCount     = 2U;
	pwmHlConfig.base.emergencyEnabled = FALSE;

	pwmHlConfig.base.outputMode       = IfxPort_OutputMode_pushPull;
	pwmHlConfig.base.outputDriver     = IfxPort_PadDriver_cmosAutomotiveSpeed1;
	pwmHlConfig.base.ccxActiveState   = Ifx_ActiveState_high;
	pwmHlConfig.base.coutxActiveState = Ifx_ActiveState_high;
	pwmHlConfig.ccx                   = obc_ccx;
	pwmHlConfig.coutx                 = obc_coutx;

	if( IfxGtm_Tom_PwmHl_init ( &st_GtmPwmHlObc.drivers.pwm, &pwmHlConfig ) == ( boolean )1U ){}
	IfxGtm_Tom_Timer_run ( &st_GtmPwmHlObc.drivers.timer );
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
