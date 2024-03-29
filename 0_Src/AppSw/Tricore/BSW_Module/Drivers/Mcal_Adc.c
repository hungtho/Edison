/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Adc.c                                                  **
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

#define MCAL_ADC_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Adc.h"
#include "IfxVadc_Adc.h"

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
static word CpuInADC ( st_VadcScan st_adcScan, byte u8_AdcCh );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
word u16g_hisLdcVout[ HIS_BUFFER_SIZE ];
word u16g_hisLdcIout[ HIS_BUFFER_SIZE ];
word u16g_hisLdcIin[ HIS_BUFFER_SIZE ];
word u16g_hisLdcVin[ HIS_BUFFER_SIZE ];
word u16g_hisLdcTemp[ HIS_BUFFER_SIZE ];
word u16g_hisLdcBattSens[ HIS_BUFFER_SIZE ];
word u16g_hisObcBattSens[ HIS_BUFFER_SIZE ];


word u16g_hisObcVout[ HIS_BUFFER_SIZE ];
word u16g_hisObcIout[ HIS_BUFFER_SIZE ];
word u16g_hisObcVin[ HIS_BUFFER_SIZE ];
word u16g_hisObcIin[ HIS_BUFFER_SIZE ];
word u16g_hisObcTemp[ HIS_BUFFER_SIZE ];
word u16g_hisObcJ1772Vol[ HIS_BUFFER_SIZE ];
word u16g_hisObcBplusSense[ HIS_BUFFER_SIZE ];

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
/* ADC Interrupt Service Routine */

st_VadcScan st_Vadc0Ldc;
st_VadcScan st_Vadc1Obc;

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
void Mcal_Ldc_VadcInit ( void )
{
	/* Create and initialize the module configuration */
  IfxVadc_Adc_Config adcConf;                             	 /* Define a configuration structure for the VADC module */
  IfxVadc_Adc_GroupConfig adcGroupConf;    									 /* Define a configuration structure for the VADC group  */

  IfxVadc_Adc_initModuleConfig ( &adcConf, ADC_0 );   /* Fill it with default values                          */
  if( IfxVadc_Adc_initModule ( &st_Vadc0Ldc.vadc, &adcConf ) == IfxVadc_Status_noError ){};    /* Apply the configuration to the module                */

  /* Create and initialize the group configuration */
  IfxVadc_Adc_initGroupConfig ( &adcGroupConf, &st_Vadc0Ldc.vadc );    /* Fill it with default values                 */

  /* Configuration of the group */
  adcGroupConf.groupId = IfxVadc_GroupId_0;                  /* Select the group                                     */
  adcGroupConf.master = adcGroupConf.groupId;                /* Select the master group                              */

  adcGroupConf.arbiter.requestSlotScanEnabled = TRUE;        /* Enable scan source                                   */
  adcGroupConf.scanRequest.autoscanEnabled = FALSE;          /* Enable auto scan mode                                */

  /* Enable all gates in "always" mode (no edge detection) */
  adcGroupConf.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

  if( IfxVadc_Adc_initGroup ( &st_Vadc0Ldc.adcGroup, &adcGroupConf ) == IfxVadc_Status_noError ){};      /* Apply the configuration to the group        */

  /* Create and initialize the channels configuration */
  dword chnIx;

  /* Create channel configuration */
  IfxVadc_Adc_ChannelConfig adcChannelConf [ ADC_CHN_MAX ]; /* Define a configuration structure for the VADC channels */
  const IfxVadc_ChannelId adcLdcChannelNum[ ADC_CHN_MAX ] = { IfxVadc_ChannelId_0,
  																										  IfxVadc_ChannelId_1 ,
																											  IfxVadc_ChannelId_2,
																											  IfxVadc_ChannelId_3,
																											  IfxVadc_ChannelId_4,
																											  IfxVadc_ChannelId_5,
																											  IfxVadc_ChannelId_6 }; /*AN0, AN1, AN2, AN3, AN4, AN5,AN6 */

  for( chnIx = 0U; chnIx < ADC_CHN_MAX; ++chnIx )
  {
		IfxVadc_Adc_initChannelConfig ( &adcChannelConf[ chnIx ], &st_Vadc0Ldc.adcGroup );     				/* Fill it with default values      */

		adcChannelConf [ chnIx ].channelId = ( IfxVadc_ChannelId ) adcLdcChannelNum[ chnIx ];          /* Select the channel ID            */
		adcChannelConf [ chnIx ].resultRegister = ( IfxVadc_ChannelResult )adcLdcChannelNum[ chnIx ];  /* Use dedicated result register    */
		adcChannelConf [ ADC_CHN_MAX-1U ].resultPriority =  ISR_PRIORITY_VADC0;
		adcChannelConf [ ADC_CHN_MAX-1U ].resultServProvider = IfxSrc_Tos_cpu0;

		/* Initialize the channel */
		if( IfxVadc_Adc_initChannel ( &st_Vadc0Ldc.adcChannel[chnIx], &adcChannelConf[chnIx] ) == IfxVadc_Status_noError ){};

		/* Add the channel to the scan sequence */
		dword enableChnBit = ( 1 << adcChannelConf [ chnIx ].channelId );   /* Set the the corresponding input channel  */
		dword mask = enableChnBit;                                     		 /* of the respective group to take part in  */
		IfxVadc_Adc_setScan ( &st_Vadc0Ldc.adcGroup, enableChnBit, mask );    /* the background scan sequence.            */
  }

  /* Start the scan */
  IfxVadc_Adc_startScan ( &st_Vadc0Ldc.adcGroup );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_Obc_VadcInit ( void )
{
	/* Create and initialize the module configuration */
  IfxVadc_Adc_Config adcConf;                             	 /* Define a configuration structure for the VADC module */
  IfxVadc_Adc_GroupConfig adcGroupConf;                      /* Define a configuration structure for the VADC group  */

  IfxVadc_Adc_initModuleConfig ( &adcConf, ADC_0 );   /* Fill it with default values                          */
  if( IfxVadc_Adc_initModule ( &st_Vadc1Obc.vadc, &adcConf ) == IfxVadc_Status_noError ){};     /* Apply the configuration to the module                */

  /* Create and initialize the group configuration */
  IfxVadc_Adc_initGroupConfig ( &adcGroupConf, &st_Vadc1Obc.vadc );    /* Fill it with default values                 */

  /* Configuration of the group */
  adcGroupConf.groupId = IfxVadc_GroupId_1;                  /* Select the group                                     */
  adcGroupConf.master = adcGroupConf.groupId;                /* Select the master group                              */

  adcGroupConf.arbiter.requestSlotScanEnabled = TRUE;        /* Enable scan source                                   */
  adcGroupConf.scanRequest.autoscanEnabled = FALSE;          /* Enable auto scan mode                                */

  /* Enable all gates in "always" mode (no edge detection) */
  adcGroupConf.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

  if( IfxVadc_Adc_initGroup ( &st_Vadc1Obc.adcGroup, &adcGroupConf ) == IfxVadc_Status_noError ){};     /* Apply the configuration to the group        */

  /* Create and initialize the channels configuration */
  dword chnIx;

  /* Create channel configuration */
  IfxVadc_Adc_ChannelConfig adcChannelConf [ ADC_CHN_MAX ]; /* Define a configuration structure for the VADC channels */
  const IfxVadc_ChannelId adcLdcChannelNum[ ADC_CHN_MAX ] = { IfxVadc_ChannelId_0,
  																										  IfxVadc_ChannelId_1 ,
																											  IfxVadc_ChannelId_2,
																											  IfxVadc_ChannelId_3,
																											  IfxVadc_ChannelId_4,
																											  IfxVadc_ChannelId_5,
																											  IfxVadc_ChannelId_7 }; /*AN0, AN1, AN2, AN3, AN4, AN5, AN7 */

  for( chnIx = 0; chnIx < ADC_CHN_MAX; ++chnIx )
  {
      IfxVadc_Adc_initChannelConfig ( &adcChannelConf[ chnIx ], &st_Vadc1Obc.adcGroup );     				/* Fill it with default values      */

      adcChannelConf [ chnIx ].channelId = ( IfxVadc_ChannelId ) adcLdcChannelNum[ chnIx ];          /* Select the channel ID            */
      adcChannelConf [ chnIx ].resultRegister = ( IfxVadc_ChannelResult )adcLdcChannelNum[ chnIx ];  /* Use dedicated result register    */
      adcChannelConf [ ADC_CHN_MAX-1U ].resultPriority =  ISR_PRIORITY_VADC1;
      adcChannelConf [ ADC_CHN_MAX-1U ].resultServProvider = IfxSrc_Tos_cpu0;

      /* Initialize the channel */
      if( IfxVadc_Adc_initChannel ( &st_Vadc1Obc.adcChannel[chnIx], &adcChannelConf[chnIx] ) == IfxVadc_Status_noError ){};

      /* Add the channel to the scan sequence */
      dword enableChnBit = ( 1 << adcChannelConf [ chnIx ].channelId );   /* Set the the corresponding input channel  */
      dword mask = enableChnBit;                                     		 /* of the respective group to take part in  */
      IfxVadc_Adc_setScan ( &st_Vadc1Obc.adcGroup, enableChnBit, mask );    /* the background scan sequence.            */
  }

  /* Start the scan */
  IfxVadc_Adc_startScan ( &st_Vadc1Obc.adcGroup );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_AdcBuffer ( st_VadcScan st_adcScan, byte u8_chn, word u16_buffer[], word u16_Index[], byte u8_size)
{
	if( u8_chn < ADC_CHN_MAX )
	{
		u16_buffer[ u16_Index[ u8_chn ] ] = CpuInADC ( st_adcScan, u8_chn );	/* read AD conversion result  */

		u16_Index[ u8_chn ]++;
		if( u16_Index[ u8_chn ] >= u8_size ){ u16_Index[ u8_chn ] = 0U; }
	}
}
/****************************************************************************/
/**                                                                        **/
/**                      LOCAL FUNCTIONS                                   **/
/**                                                                        **/
/****************************************************************************/
/*--------------------------------------------------------------------------*/
/* Function  |            																					        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/

/*--------------------------------------------------------------------------*/
/* Function  |            																					        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static word CpuInADC ( st_VadcScan st_adcScan, byte u8_AdcCh )
{
	/* wait for valid result */
	volatile Ifx_VADC_RES converResult;
	word u16_ChkTimeOut = 0U;

	do
	{
		converResult = IfxVadc_Adc_getResult ( &st_adcScan.adcChannel[ u8_AdcCh ] );
		u16_ChkTimeOut++;
	} while ( ( ( byte )( converResult.B.VF) == 0U )
				 && ( u16_ChkTimeOut < 10U ) );

	return ( ( word )( converResult.B.RESULT & 0x0FFFU ) );
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
