/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_Gpio.c                                                  **
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

#define BSW_GPIO_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_ServiceCfg.h"
#include "BSW_Gpio.h"
#include "BSW_Can.h"

#include "../Drivers/Mcal_Gpio.h"
#include "IfxPort_PinMap.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define INPUT_PIN_NUMBER ( 7U )

#define P00_0_IO	{ OBC_ENABLE_IN, &IfxPort_P00_0 }
#define P02_0_IO	{ TEST_PIN_OUT, &IfxPort_P02_0 }
#define P02_1_IO	{ TEST_PIN1, &IfxPort_P02_1 }
#define P02_2_IO	{ AC_CONNECTOR_INTERLOCK_IN, &IfxPort_P02_2 }
#define P02_6_IO	{ PFC_ERROR_IN, &IfxPort_P02_6 }
#define P02_7_IO	{ OBC_OUTPUT_INTERLOCK_IN, &IfxPort_P02_7 }
#define P15_7_IO	{ LDC_OVER_CURRENT_IN, &IfxPort_P15_7 }

#define P00_1_IO	{ RELAY_OUT, &IfxPort_P00_1 }
#define P00_2_IO	{ PFC_ENABLE_OUT, &IfxPort_P00_2 }
#define P00_3_IO	{ S2_ERROR_OUT, &IfxPort_P00_3 }
#define P00_4_IO	{ S2_SWITCH_OUT, &IfxPort_P00_4 }
#define P00_5_IO	{ OBC_DISCHARGE_OUT, &IfxPort_P00_5 }
#define P00_6_IO	{ OBC_AUX_ENABLE_OUT, &IfxPort_P00_6 }

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
static byte GpioInFilter ( st_IO_Filter *stp_IoFltBuf, byte u8_NewState );

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
static const st_Port_Pin sts_Gpio_table[] =
{
	P00_0_IO,		/* OBC_ENABLE_IN*/
	P02_0_IO,		/* TEST_PIN_OUT */
	P02_1_IO,		/* TEST_PIN1_IN */
	P02_2_IO,		/* AC_CONNECTOR_INTERLOCK_IN */
	P02_6_IO,		/* PFC_ERROR_IN */
	P02_7_IO,		/* OBC_OUTPUT_INTERLOCK_IN */
	P15_7_IO,		/* OBC_OUTPUT_INTERLOCK_IN */

	P00_1_IO,		/* RELAY_OUT */
	P00_2_IO,		/* PFC_ENABLE_OUT */
	P00_3_IO,		/* S2_ERROR_OUT */
	P00_4_IO,		/* S2_SWITCH_OUT */
	P00_5_IO,		/* OBC_DISCHARGE_OUT */
	P00_6_IO,		/* OBC_AUX_ENABLE_OUT */
};

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
/*--------------------------------------------------------------------------*/
/* Function  | Get_GpioRead                                                 */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | GPIOTYPE en_type                                          */
/* Return    | byte_t                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_Get_GpioRead ( en_GPIOTYPE en_type )
{
	static st_IO_Filter sts_IO_filter[ INPUT_PIN_NUMBER ];

	byte u8_ret = 0U;
	byte u8_temp = 0U;

	u8_temp = IfxPort_getPinState ( sts_Gpio_table[en_type].stp_portpin->port, sts_Gpio_table[en_type].stp_portpin->pinIndex );
	u8_ret = GpioInFilter ( &sts_IO_filter[ en_type ], u8_temp );

	return u8_ret;
}

/*--------------------------------------------------------------------------*/
/* Function  | Set_GpioWrite                                                */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | GPIOTYPE en_type, byte u8_state                        */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Set_GpioWrite ( en_GPIOTYPE en_type, byte u8_state )
{
	if( u8_state == 1U )
	{
		IfxPort_setPinState ( sts_Gpio_table[en_type].stp_portpin->port, sts_Gpio_table[en_type].stp_portpin->pinIndex, IfxPort_State_high );
	}
	else
	{
		IfxPort_setPinState ( sts_Gpio_table[en_type].stp_portpin->port, sts_Gpio_table[en_type].stp_portpin->pinIndex, IfxPort_State_low );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  | Set_GpioWrite                                                */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | GPIOTYPE en_type, byte u8_state                        */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Set_GpioToggle ( en_GPIOTYPE en_type  )
{
	IfxPort_togglePin ( sts_Gpio_table[en_type].stp_portpin->port, sts_Gpio_table[en_type].stp_portpin->pinIndex );
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
static byte GpioInFilter ( st_IO_Filter *stp_IoFltBuf, byte u8_NewState )
{
	if( u8_NewState != 0U )
	{
		stp_IoFltBuf->u8_mFilter_level = u8_NewState;
		stp_IoFltBuf->u8_mFilter_tm = 0U;
	}
	else
	{
	  if( stp_IoFltBuf->u8_mFilter_tm < DIAG_GPIO_FILTER )
	  {
	  	stp_IoFltBuf->u8_mFilter_tm++;
	  }
	  else
	  {
	  	stp_IoFltBuf->u8_mFilter_level = 0U;
	  }
	}

	return stp_IoFltBuf->u8_mFilter_level;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
