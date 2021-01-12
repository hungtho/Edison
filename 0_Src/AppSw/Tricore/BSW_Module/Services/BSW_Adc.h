/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edion_LDC                                                   **
**  Filename  : BSW_ADC.h                                                   **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2019.11.04                                                  **
**                                                                          **
******************************************************************************
**                                                                          **
**  (c) 2019 YOUNG HWA TECH Co., Ltd. All Rights Reserved                   **
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

#ifndef BSW_ADC_INCLUDED
#define BSW_ADC_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Adc.h"
#include "BSW_Defines.h"

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
typedef struct
{
	word u16_failureCnt;
	single f32_realValue;
	single f32_AdcFailureValue;
}st_AdcValuesType;

typedef struct
{
	single f32_Raw;
	single f32_Phys;
}st_LookupTable;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef BSW_ADC_C_SRC
# endif
extern single Iout_adc_test;
/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Bsw_AdcInit ( void );
extern void Bsw_Obc_AdcScan_20ms ( void );
extern void Bsw_Ldc_Vadc0Scan ( void );
extern void Bsw_Obc_Vadc1Scan ( void );
extern void Bsw_Ldc_Vadc0Start ( void );
extern void Bsw_Obc_Vadc1Start ( void );

extern single Bsw_GET_LDC_InputCurr ( void );
extern single Bsw_GET_LDC_InputVolt ( void );
extern single Bsw_GET_LDC_DCOutputCurr ( void );
extern single Bsw_GET_LDC_DCOutputVolt ( void );
extern single Bsw_GET_LDC_BattVolt ( void );
extern single Bsw_GET_LDC_Temperature ( void );
extern single Bsw_GET_OBC_ACInputCurr ( void );
extern single Bsw_GET_OBC_ACInputVolt ( void );
extern single Bsw_GET_OBC_DCOutputCurr ( void );
extern single Bsw_GET_OBC_DCOutputVolt ( void );
extern single Bsw_GET_OBC_AuxInVolt ( void );
extern single Bsw_GET_OBC_Temperature ( void );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
