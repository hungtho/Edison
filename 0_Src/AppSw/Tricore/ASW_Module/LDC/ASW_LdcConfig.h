/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcConfig.h                                             **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.14                                                  **
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

#ifndef ASW_LDCCONFIG_INCLUDED
#define ASW_LDCCONFIG_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Cpu0_Main.h"
#include "Rte_ApiIn.h"
#include "Rte_ApiOut.h"
#include "BSW_ServiceCfg.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/

/*------------------------------------------------------------*/

#define LDC_BATVOLT_NOR_LOWER 						( 9.0f )
#define LDC_BATVOLT_NOR_UPPER  						( 17.5f )
#define LDC_BATVOLT_NOR_RECOVER_LOWER  		( 10.0f )
#define LDC_BATVOLT_NOR_RECOVER_UPPER  		( 16.5f )

#define LDC_VIN_NOR_LOWER			    				( 280.0f )
#define LDC_VIN_NOR_UPPER	  		  				( 420.0f )
#define LDC_VIN_NOR_RECOVER_LOWER 		    ( 290.0f )
#define LDC_VIN_NOR_RECOVER_UPPER 		    ( 415.0f )

#define LDC_IIN_NOR_LOWER									( 0.0f )
#define LDC_IIN_NOR_UPPER	  							( 13.0f )
#define LDC_IIN_NOR_RECOVER_LOWER					( 0.0f )
#define LDC_IIN_NOR_RECOVER_UPPER					( 1.0f )

#define LDC_VOUT_NOR_LOWER								( 9.0f )
#define LDC_VOUT_NOR_UPPER	  						( 16.0f )
#define LDC_VOUT_NOR_RECOVER_LOWER				( 10.0f )
#define LDC_VOUT_NOR_RECOVER_UPPER	  		( 15.0f )

#define LDC_IOUT_NOR_LOWER								( 0.0f )
#define LDC_IOUT_NOR_UPPER	  						( 220.0f )
#define LDC_IOUT_NOR_RECOVER_LOWER				( 0.0f )
#define LDC_IOUT_NOR_RECOVER_UPPER	  		( 1.0f )

#define LDC_TEMP_DRT_LV3   								( 140.0f ) /* 95C DERATING LEVEL 3 ENTRY CONDITION*/
#define LDC_TEMP_DRT_LV2   								( 130.0f ) /* 90C DERATING LEVEL 2 ENTRY CONDITION*/
#define LDC_TEMP_DRT_LV1 									( 125.0f ) /* 85C DERATING LEVEL 1 ENTRY CONDITION*/

#define LDC_TEMP_NOR_LOWER 								( 10.0f ) /* -30C LOW LEVEL NORMAL RECOVERY */
#define LDC_TEMP_NOR_UPPER								( 125.0f ) /* 85 HIGH LEVEL NORMAL RECOVERY */
#define LDC_TEMP_NOR_RECOVER_LOWER 				( 15.0f ) /* -25C Degree*/
#define LDC_TEMP_NOR_RECOVER_UPPER 				( 120.0f ) /* 80C Degree*/
#define LDC_TEMP_FAULT_UPPER   						( 155.0f ) /* 115C HIGH LEVEL FAULT  */

#define LDC_CUR_MAX 				   						( 215.0f )
#define LDC_CUR_DRT_TEMP_LV01		    			( 160.0f )
#define LDC_CUR_DRT_TEMP_LV02		    			( 128.0f )
#define LDC_CUR_DRT_TEMP_LV03		    			( 50.0f )

#define LDC_CMD_REFVOLT_MIN								( 9.0f )

#define LDC_READY_DELAY_TIME		    			( 500U ) /* ms */

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

# ifndef ASW_LDCCONFIG_C_SRC
# endif
/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
