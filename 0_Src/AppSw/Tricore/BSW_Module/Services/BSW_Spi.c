/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : BSW_Spi.c                                                   **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.10                                                  **
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

#define BSW_SPI_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_Spi.h"

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
static void Bsw_Qspi_NormalMode_Config ( dword u32_value );

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
static byte u8s_updated = 0U;
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
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void BSW_Qspi_Run ( void )
{
	static dword	step = 0;
	static byte u8s_cmd = 0;
	static byte u8s_Bms_EnableOBCWakeup = 0U;

#if 0
	/* 250ms */
	if( step > 25 ){ step = 0; }
	else{ step++; }

	if ( RTE_LDC_GET_CMD_ENABLE() == 1 )
	{
		step = 250;
	}
#endif
	step++;

	/* if ( Mcal_LdcVcuCmdSleepMode == 1u ) by hk.im */
	if( u8s_Bms_EnableOBCWakeup == 2u )
	{
		if( u8s_cmd != u8s_Bms_EnableOBCWakeup )
		{
			step = 250;
			u8s_cmd = u8s_Bms_EnableOBCWakeup;
		}
	}
	else
	{
		if( step >= 3u ){ step = 3; }
	}

	Bsw_Qspi_NormalMode_Config ( step );

	if( u8s_updated == 1u )
	{
		if( IfxQspi_SpiMaster_getStatus( &stg_Qspi.drivers.spiMasterChannel ) == SpiIf_Status_busy ){}
		if( IfxQspi_SpiMaster_exchange( &stg_Qspi.drivers.spiMasterChannel,
										&stg_Qspi.qspiBuffer.spi3TxBuffer[ 0 ],
										&stg_Qspi.qspiBuffer.spi3RxBuffer[ 0 ],
										SPI_BUFFER_SIZE ) == SpiIf_Status_ok ){}

		u8s_updated = 0;
	}
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
static void Bsw_Qspi_NormalMode_Config ( dword u32_value )
{
	switch( u32_value )
	{
	case 1:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0x81u);		/* M_S_CTR address */
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x18u);		/* data: VCC2 on */
		u8s_updated = 1U;
		break;
	case 2:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0x84u);		/* BUS_CTRL_0 */
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x03u);		/* data: CAN TRCV Nornal  mode */
		u8s_updated = 1U;
		break;
	case 3:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0x83u);		/* WD_CTRL address */
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x17u);		/* data: 500msec watchdog timer window */
		u8s_updated = 1U;
		break;
	case 250:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0xC6u);		/* clear WK_STAT_0 */
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x00u);
		u8s_updated = 1U;
		break;
	case 251:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0xC7u);		/* clear WK_STAT_0 */
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x00u);
		u8s_updated = 1U;
		break;
	case 252:
		stg_Qspi.qspiBuffer.spi3TxBuffer[0] = ( byte )(0x81u);		//M_S_CTRL
		stg_Qspi.qspiBuffer.spi3TxBuffer[1] = ( byte )(0x58u);		//data: sleep mode
		u8s_updated = 1U;
		break;
	default:
		break;
	}
}
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
