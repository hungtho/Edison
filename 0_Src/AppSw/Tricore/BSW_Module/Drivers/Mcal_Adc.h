/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Adc.h                                                  **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.15                                                  **
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

#ifndef MCAL_ADC_INCLUDED
#define MCAL_ADC_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Ifx_Types.h"
#include "IfxVadc_Adc.h"
#include "BSW_ISR.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define ADC_CHN_MAX 	  								( 7U )
#define HIS_BUFFER_SIZE	 								( 10U )
#define HIS_BUFFER_SIZE_20ms						( 20U )
#define ADC_0     ( ( Ifx_VADC *)( void *)&MODULE_VADC )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	IfxVadc_Adc vadc;   /* VADC handle*/
	IfxVadc_Adc_Group adcGroup;
	IfxVadc_Adc_Channel adcChannel[ ADC_CHN_MAX ];
} st_VadcScan;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef MCAL_ADC_C_SRC
# endif
extern st_VadcScan st_Vadc0Ldc;
extern st_VadcScan st_Vadc1Obc;

extern word u16g_hisLdcVout[ HIS_BUFFER_SIZE ];
extern word u16g_hisLdcIout[ HIS_BUFFER_SIZE ];
extern word u16g_hisLdcIin[ HIS_BUFFER_SIZE ];
extern word u16g_hisLdcVin[ HIS_BUFFER_SIZE ];
extern word u16g_hisLdcTemp[ HIS_BUFFER_SIZE ];
extern word u16g_hisLdcBattSens[ HIS_BUFFER_SIZE ];
extern word u16g_hisObcBattSens[ HIS_BUFFER_SIZE ];

extern word	u16g_hisObcVout[ HIS_BUFFER_SIZE ];
extern word	u16g_hisObcIout[ HIS_BUFFER_SIZE ];
extern word	u16g_hisObcVin[ HIS_BUFFER_SIZE ];
extern word u16g_hisObcIin[ HIS_BUFFER_SIZE ];
extern word u16g_hisObcTemp[ HIS_BUFFER_SIZE ];
extern word	u16g_hisObcJ1772Vol[ HIS_BUFFER_SIZE ];
extern word	u16g_hisObcBplusSense[ HIS_BUFFER_SIZE ];

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_Ldc_VadcInit ( void );
extern void Mcal_Obc_VadcInit ( void );

extern void Mcal_AdcBuffer ( st_VadcScan st_VadcScan, byte u8_chn, word u16_buffer[], word u16_Index[], byte u8_size );


#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
