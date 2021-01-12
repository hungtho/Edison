/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_ObcConfig.h                                             **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.25                                                  **
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

#ifndef ASW_OBCCONFIG_INCLUDED
#define ASW_OBCCONFIG_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Cpu0_Main.h"
#include "Rte_ApiIn.h"
#include "Rte_ApiOut.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
/*Protection end*/

#define OBC_VIN_NOR_LOWER			    				( 85.0f )
#define OBC_VIN_NOR_UPPER	  		  				( 265.0f )
#define OBC_VIN_NOR_RECOVER_LOWER			    ( 90.0f )
#define OBC_VIN_NOR_RECOVER_UPPER		    	( 260.0f )

#define OBC_IIN_NOR_LOWER									( 0.0f )
#define OBC_IIN_NOR_UPPER	  							( 17.0f )
#define OBC_IIN_NOR_RECOVER_LOWER					( 0.0f )
#define OBC_IIN_NOR_RECOVER_UPPER					( 1.0f )

#define OBC_VOUT_NOR_LOWER								( 280.0f )
#define OBC_VOUT_NOR_UPPER	  						( 420.0f )
#define OBC_VOUT_NOR_RECOVER_LOWER				( 285.0f )
#define OBC_VOUT_NOR_RECOVER_UPPER		  	( 410.0f )

#define OBC_IOUT_NOR_LOWER								( 0.0f )
#define OBC_IOUT_NOR_UPPER	  						( 24.0f )
#define OBC_IOUT_NOR_RECOVER_LOWER				( 0.0f )
#define OBC_IOUT_NOR_RECOVER_UPPER	  		( 1.0f )

#define OBC_VAUX_READY						   			( 10.0F )
#define OBC_VAC_DETECTION				     			( 85.0F )
#define OBC_FINISHCHARGE_CURRENT		 			( 5.0F ) /*ChargingFinish Level*/
#define OBC_STARTCHARGE_REFCURRENT  		 	( 6.0F ) /*ChargingFinish Level*/

#define OBC_VREF_MAX											( 451.0f )
#define OBC_IREF_MAX											( 21.0f )
#define OBC_POWER_MAX											( 6600.0f )

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

# ifndef ASW_OBCCONFIG_C_SRC
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
