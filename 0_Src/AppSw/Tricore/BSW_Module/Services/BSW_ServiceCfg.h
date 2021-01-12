/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_ServiceCfg.h                                            **
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

#ifndef BSW_SERVICECFG_INCLUDED
#define BSW_SERVICECFG_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define OBC_MAX_FREQUENCY									( 200000.0F ) /* 200kW */
#define DIAG_FAIL_VALUE               		( -255.0F )

#define DIAG_FAIL_VALUE_LDC_HVCURR        ( 0.0F )
#define DIAG_FAIL_VALUE_LDC_LVCURR        ( 0.0F )
#define DIAG_FAIL_VALUE_LDC_HVVOLT        ( 0.0F )
#define DIAG_FAIL_VALUE_LDC_LVVOLT        ( 0.0F )
#define DIAG_FAIL_VALUE_LDC_TEMP          ( 0.0F )
#define DIAG_FAIL_VALUE_LDC_BATT		    	( 0.0F )

#define DIAG_FAIL_VALUE_OBC_HVCURR    		( 0.0F )
#define DIAG_FAIL_VALUE_OBC_LVCURR    		( 0.0F )
#define DIAG_FAIL_VALUE_OBC_HVVOLT    		( 0.0F )
#define DIAG_FAIL_VALUE_OBC_LVVOLT    		( 0.0F )
#define DIAG_FAIL_VALUE_OBC_TEMP      		( 0.0F )

#define DIAG_FAILURE_FILTER					    	( 500U ) /* 500 ms */

#define DIAG_GPIO_FILTER   								( 250U )

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

# ifndef BSW_SERVICECFG_C_SRC
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
