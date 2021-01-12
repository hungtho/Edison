/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcDtcCodeMng.h                                         **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.28                                                  **
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

#ifndef ASW_LDCDTCCODEMNG_INCLUDED
#define ASW_LDCDTCCODEMNG_INCLUDED

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
#define DIAG_DTC_CTRL_ON							( 0U )
#define DIAG_DTC_CTRL_OFF							( 1U )

#define DTC_TEST_FAIL									( 0x01U )
#define DTC_COMFIRMED									( 0x08U )

#define DTC_MAX_NUM										( 10U )
#define DTC_U1102_BUS_TIMEOUT					( 9U )	/* CAN timeout */
#define DTC_U1101_BUS_OFF							( 8U )  /* CAN bus off */
#define DTC_P1109_OUTPUT_FAIL					( 7U )  /* Fail control*/
#define DTC_P1108_TEMP_115_OVER				( 6U )	/* Temp is over 115C */
#define DTC_P1107_BATT_FAILURE				( 5U )	/* Bplus != Vout > 8V */
#define DTC_P1106_TEMP_SENSOR_SHORT		( 4U )	/* Temp sensor is broken */
#define DTC_P1105_IOUT_SENSOR_SHORT		( 3U )	/* Short circuit Iout sensor */
#define DTC_P1104_IIN_SENSOR_SHORT		( 2U )	/* Short circuit Iin sensor */
#define DTC_P1103_IIN_OVER						( 1U )	/* Iin > 10A */
#define DTC_P1102_VOUT_OVER						( 0U )	/* Vout > 22V */

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

# ifndef ASW_LDCDTCCODEMNG_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/

#endif
extern void Asw_Ctrl_Init ( void );
extern byte Asw_Read_DTC_Sts ( byte u8_Diag_DTC_Idx );
extern void Asw_Write_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Data );
extern void Asw_Set_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts );
extern void Asw_Clr_DTC_Sts ( byte u8_Diag_DTC_Idx, byte u8_Diag_DTC_Sts );
extern void Asw_Clr_All_DTC_Sts ( void );
extern void Asw_Ldc_DtcStsUpdate ( void );

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
