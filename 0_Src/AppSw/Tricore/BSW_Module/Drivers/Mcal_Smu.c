/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Smu.c                                                  **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.06.05                                                  **
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

#define MCAL_SMU_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Smu.h"
#include "IfxSmu.h"

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
void Mcal_Smu_Init ( void )
{
	/* Clear Safety ENDINIT protection to allow register modification */
	IfxScuWdt_clearSafetyEndinitInline ( IfxScuWdt_getSafetyWatchdogPasswordInline() );
	SCU_RSTCON.B.SMU = 0x1; /* Enable the SMU system reset request */
	/* Set Safety ENDINIT protection to allow register modification */
	IfxScuWdt_setSafetyEndinitInline ( IfxScuWdt_getSafetyWatchdogPasswordInline() );

	/* Enable the SMU register configuration by setting the CFGLCK field of the SMU_KEYS register to 0xBC */
	IfxSmu_unlock ( SMU_0 );
	/* SMU alarm configuration: select Software Alarm 0 (alarm group 5) and send a reset request to the SCU */
	IfxSmu_setAlarmConfig ( SMU_0, IfxSmu_Alarm_ScuWdtWatchdogTimeOut, IfxSmu_AlarmConfig_scuReset );
	IfxSmu_lock ( SMU_0 ); /* After configuration set temporary lock of SMU configuration */

	IfxSmu_cmd ( SMU_0, IfxSmu_Cmd_start, 0U ); /* Start the SMU state machine (SSM) */
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
