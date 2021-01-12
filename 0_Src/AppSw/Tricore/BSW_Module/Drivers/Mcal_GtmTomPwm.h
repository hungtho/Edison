/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_GtmTomPwm.h                                            **
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

#ifndef MCAL_GTMTOMPWM_INCLUDED
#define MCAL_GTMTOMPWM_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_GtmTim.h"
#include "IfxGtm_Tom_PwmHl.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define LDC_PWM_FRE						( 100000.0F ) 	/* 100 kHz*/
#define LDC_PWM_PERIOD 				( 1000U ) 			/* SYSFRE/100 kHz*/
#define LDC_PWM_DEADTIME 			( 60U ) /* 600ns */

#define OBC_PWM_FRE						( 200000.0F ) 	/* 200 kHz*/
#define OBC_PWM_DEADTIME 			( 60U ) /* 600ns */

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef enum
{
	DISABLE = 0U,
	ENABLE
}en_PWM_STATE;

typedef enum
{
	GtmTomPwmHl_State_init = 0,
	GtmTomPwmHl_State_off,
	GtmTomPwmHl_State_duty0,
	GtmTomPwmHl_State_duty50,
	GtmTomPwmHl_State_duty100,
	GtmTomPwmHl_State_count
}GtmTomPwmHl_State;

/** \brief Application information */
typedef struct
{
	struct
	{
		single           gtmFreq;
		single           gtmGclkFreq;
		single           gtmCmuClk0Freq; /**< \brief CMU CLK 0 frequency*/
		GtmTomPwmHl_State state;
		Ifx_TickTime      stateDeadline;
	}info;
	struct
	{
		IfxGtm_Tom_Timer timer;        /**< \brief Timer driver */
		IfxGtm_Tom_PwmHl pwm;
	}drivers;
}sts_GtmTomPwmHl;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef MCAL_GTMTOMPWM_C_SRC
# endif
/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_GtmTomInit ( void );
extern void Mcal_LDC_PWMAB_updateShift ( dword u32_shift, en_PWM_STATE u8_pwmON );
extern void Mcal_LDC_PWMCD_updateShift ( dword u32_shift, en_PWM_STATE u8_pwmON );
extern void Mcal_OBC_PWMAB_updatefrequency ( single f32_freq, en_PWM_STATE u8_pwmON );
extern void Mcal_OBC_PWMCD_updatefrequency ( single f32_freq, en_PWM_STATE u8_pwmON );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
