/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_Gpio.h                                                  **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2019.11.06                                                  **
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

#ifndef BSW_GPIO_INCLUDED
#define BSW_GPIO_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "IfxPort.h"
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
	byte  u8_Index;
	IfxPort_Pin *stp_portpin;
} st_Port_Pin;

typedef enum
{
	PFC_ERROR_IN,
	TEST_PIN_OUT,
	TEST_PIN1,
	AC_CONNECTOR_INTERLOCK_IN,
	OBC_OUTPUT_INTERLOCK_IN,
	LDC_OVER_CURRENT_IN,
	OBC_ENABLE_IN,

	RELAY_OUT,
	PFC_ENABLE_OUT,
	S2_ERROR_OUT,
	S2_SWITCH_OUT,
	OBC_DISCHARGE_OUT,
	OBC_AUX_ENABLE_OUT

} en_GPIOTYPE;

enum {
	GPIO_LOW = 0U,
	GPIO_HIGH
};

typedef struct
{
  byte u8_mFilter_tm;
  byte u8_mFilter_level;
}st_IO_Filter;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef BSW_GPIO_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern byte Bsw_Get_GpioRead ( en_GPIOTYPE en_type );
extern void Bsw_Set_GpioWrite ( en_GPIOTYPE en_type, byte u8_state );
extern void Bsw_Set_GpioToggle ( en_GPIOTYPE en_type  );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
