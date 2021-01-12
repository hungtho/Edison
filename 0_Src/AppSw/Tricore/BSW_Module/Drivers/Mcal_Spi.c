/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Spi.c                                                  **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.06.10                                                  **
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

#define MCAL_SPI_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Spi.h"

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
st_Qspi stg_Qspi; /**< \brief Qspi global data */

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
void Mcal_Qspi_Init ( void )
{
	IfxQspi_SpiMaster_Config        spiMasterConfig;
	IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;

	/* create module config */
	IfxQspi_SpiMaster_initModuleConfig(&spiMasterConfig, QSPI3_);

	/* set the maximum baudrate */
	spiMasterConfig.base.maximumBaudrate = 10000000.0f;

	/* pin configuration */
	const IfxQspi_SpiMaster_Pins pins = { &IfxQspi3_SCLK_P33_11_OUT,             /* SCLK */
										 	 	 	 	 	 	 	 	 	 	IfxPort_OutputMode_pushPull,
										                    &IfxQspi3_MTSR_P33_12_OUT,  IfxPort_OutputMode_pushPull, /* MTSR */
										                    &IfxQspi3_MRSTE_P22_1_IN,  IfxPort_InputMode_pullDown,   /* MRST */
										                    IfxPort_PadDriver_cmosAutomotiveSpeed3                   /* pad driver mode */
	};
	spiMasterConfig.pins = &pins;


	/* initialize module */
	IfxQspi_SpiMaster_initModule ( &stg_Qspi.drivers.spiMaster, &spiMasterConfig );

	/* create channel config */
	IfxQspi_SpiMaster_initChannelConfig ( &spiMasterChannelConfig, &stg_Qspi.drivers.spiMaster );

	/* set the baudrate for this channel */
	spiMasterChannelConfig.base.baudrate = 2000000.0f;		//2MHz
	//spiMasterChannelConfig.base.baudrate = 100000;
	spiMasterChannelConfig.base.mode.dataHeading = 0; /* LSB first */
	spiMasterChannelConfig.base.mode.shiftClock = 0;
	spiMasterChannelConfig.base.mode.dataWidth = 8;
	spiMasterChannelConfig.base.mode.enabled = 1;
#if 0
	spiMasterChannelConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleLow;

	/* Really conservative timings to cope with any SPI device */
	spiMasterChannelConfig.base.mode.csTrailDelay = SpiIf_SlsoTiming_2;
	spiMasterChannelConfig.base.mode.csLeadDelay = SpiIf_SlsoTiming_1;
#else //misra

	spiMasterChannelConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleLow;

	/* Really conservative timings to cope with any SPI device */
	spiMasterChannelConfig.base.mode.csTrailDelay = SpiIf_SlsoTiming_2;
	spiMasterChannelConfig.base.mode.csLeadDelay = SpiIf_SlsoTiming_1;
#endif
	spiMasterChannelConfig.base.mode.autoCS = 1; /* Automatic Chip select */

	const IfxQspi_SpiMaster_Output slsOutput = { &IfxQspi3_SLSO11_P33_10_OUT,
																							 IfxPort_OutputMode_pushPull,
																							 IfxPort_PadDriver_cmosAutomotiveSpeed1 };

	spiMasterChannelConfig.sls.output.pin    = slsOutput.pin;
	spiMasterChannelConfig.sls.output.mode   = slsOutput.mode;
	spiMasterChannelConfig.sls.output.driver = slsOutput.driver;

	/* initialize channel */
	if( IfxQspi_SpiMaster_initChannel ( &stg_Qspi.drivers.spiMasterChannel, &spiMasterChannelConfig) == SpiIf_Status_ok ){}
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
