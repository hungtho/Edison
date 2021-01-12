/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edion_LDC                                                   **
**  Filename  : BSW_ADC.c                                                   **
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

#define BSW_ADC_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_ServiceCfg.h"
#include "BSW_Adc.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define TABLE_SIZE_MAX				( 19U )

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
static single BSW_MaxValueDetect_20ms ( const single f32_AdcValue[ HIS_BUFFER_SIZE_20ms ] );
static single BSW_MovingAvg ( const word u16_ptrArrNumbers[] );
static single BSW_GET_REALVALUE ( single f32_AdcVal, st_AdcValuesType *stp_AdcValue, const st_LookupTable *stp_Table, byte u8_Size );
static single LookupTableCalc ( single f32_AdcVal, const st_LookupTable *stp_Table, byte u8_Size );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      STATIC VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static single f32s_ObcAdcAverIn = 0.0F;

static single f32s_realLdcIoutLPF = 0.0F;
static single f32s_realLdcVoutLPF = 0.0F;
static single f32s_realLdcIinLPF = 0.0F;
static single f32s_realLdcVinLPF = 0.0F;
static single f32s_realLdcTempLPF = 0.0F;	/* Average ADC feedback values */
static single f32s_realLdc14BattLPF = 0.0F;

static single f32s_realObcVoutLPF = 0.0F;
static single f32s_realObcIoutLPF = 0.0F;
static single f32s_realObcVinLPF = 0.0F;
static single f32s_realObcIinLPF = 0.0F;
static single f32s_realObcTempLPF = 0.0F;
static single f32s_realObc14BattLPF = 0.0F;

static st_AdcValuesType sts_LdcIout;
static st_AdcValuesType sts_LdcVout;
static st_AdcValuesType sts_LdcIin;
static st_AdcValuesType sts_LdcVin;
static st_AdcValuesType sts_LdcTemp;
static st_AdcValuesType sts_LdcBatt;

static st_AdcValuesType sts_ObcIout;
static st_AdcValuesType sts_ObcVout;
static st_AdcValuesType sts_ObcIin;
static st_AdcValuesType sts_ObcVin;
static st_AdcValuesType sts_ObcTemp;

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
void Bsw_AdcInit ( void )
{
	sts_LdcIout.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_LVCURR;
	sts_LdcIout.u16_failureCnt = 0U;
	sts_LdcVout.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_LVVOLT;
	sts_LdcVout.u16_failureCnt = 0U;
	sts_LdcIin.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_HVCURR;
	sts_LdcIin.u16_failureCnt = 0U;
	sts_LdcVin.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_HVVOLT;
	sts_LdcVin.u16_failureCnt = 0U;
	sts_LdcTemp.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_TEMP;
	sts_LdcTemp.u16_failureCnt = 0U;
	sts_LdcBatt.f32_AdcFailureValue = DIAG_FAIL_VALUE_LDC_BATT;
	sts_LdcBatt.u16_failureCnt = 0U;

	sts_ObcIout.f32_AdcFailureValue = DIAG_FAIL_VALUE_OBC_LVCURR;
	sts_ObcIout.u16_failureCnt = 0U;
	sts_ObcVout.f32_AdcFailureValue = DIAG_FAIL_VALUE_OBC_LVVOLT;
	sts_ObcVout.u16_failureCnt = 0U;
	sts_ObcIin.f32_AdcFailureValue = DIAG_FAIL_VALUE_OBC_HVCURR;
	sts_ObcIin.u16_failureCnt = 0U;
	sts_ObcVin.f32_AdcFailureValue = DIAG_FAIL_VALUE_OBC_HVVOLT;
	sts_ObcVin.u16_failureCnt = 0U;
	sts_ObcTemp.f32_AdcFailureValue = DIAG_FAIL_VALUE_OBC_TEMP;
	sts_ObcTemp.u16_failureCnt = 0U;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Obc_AdcScan_20ms ( void )
{
	static byte u8s_hisPtr_20ms = 0u ;
	static single f32_ObcAdcAverIin_20ms;
	static single f32_hisObcIin_20ms[ HIS_BUFFER_SIZE_20ms ];

	const st_LookupTable st_ObcIin_Table[ TABLE_SIZE_MAX ] =
	{
		{ 1574.0F, 0.0F }, { 1635.0F, 2.0F }, { 1683.0F, 4.0F }, { 1733.0F, 6.0F }, { 1785.0F, 8.0F },
		{ 1832.0F, 10.0F }, { 1887.0F, 12.0F }, { 1937.0F, 14.0F }, { 1985.0F, 16.0F }, { 2038.0F, 18.0F },
		{ 2086.0F, 20.0F }, { 2123.0F, 22.0F }, { 2176.0F, 24.0F }, { 2225.0F, 26.0F }, { 2263.0F, 28.0F },
		{ 2298.0F, 31.0F }, { 2312.0F, 34.0F }, { 2320.0F, 37.0F }, { 2330.0F, 38.0F }
	};

	if (u8s_hisPtr_20ms >= HIS_BUFFER_SIZE_20ms)
	{
		f32_ObcAdcAverIin_20ms = ( single )BSW_MaxValueDetect_20ms ( f32_hisObcIin_20ms );				/* Calculate average values of output voltage */

		u8s_hisPtr_20ms = 0U;
	}
	else
	{
		u8s_hisPtr_20ms++;
		f32_hisObcIin_20ms[ u8s_hisPtr_20ms ] = f32s_ObcAdcAverIn;
	}

	f32s_realObcIinLPF = BSW_GET_REALVALUE ( f32_ObcAdcAverIin_20ms, &sts_ObcIin, st_ObcIin_Table, TABLE_SIZE_MAX );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Iout_adc_test = 0.0;
void Bsw_Ldc_Vadc0Scan ( void )
{
	const st_LookupTable st_LdcIout_Table[ TABLE_SIZE_MAX ] =
	{
		{ 425.0F, 0.0F },	{ 698.0F, 20.0F }, { 961.0F, 40.0F }, { 1241.0F, 60.0F }, { 1523.0F, 80.0F },
		{ 1818.0F, 100.0F }, { 2076.0F, 120.0F }, { 2361.0F, 140.0F }, { 2530.0F, 150.0F }, { 2660.0F, 160.0F },
		{ 2779.0F, 170.0F }, { 2911.0F, 180.0F }, { 3025.0F, 190.0F }, { 3164.0F, 200.0F }, { 3296.0F, 210.0F },
		{ 3430.0F, 220.0F }, { 3553.0F, 230.0F }, { 3685.0F, 240.0F }, { 3820.0F, 250.0F }
	};

	const st_LookupTable st_LdcVout_Table[ TABLE_SIZE_MAX ] =
	{
		{ 2.0F, 0.0F }, { 166.0F, 1.0F }, { 329.0F, 2.0F }, { 491.0F, 3.0F }, { 656.0F, 4.0F },
		{ 817.0F, 5.0F }, { 981.0F, 6.0F }, { 1143.0F, 7.0F }, { 1306.0F, 8.0F }, { 1470.0F, 9.0F },
		{ 1633.0F, 10.0F }, { 1795.0F, 11.0F }, { 1959.0F, 12.0F }, { 2120.0F, 13.0F }, { 2285.0F, 14.0F },
		{ 2447.0F, 15.0F }, { 2610.0F, 16.0F }, { 2937.0F, 18.0F }, { 3262.0F, 20.0F }
	};

	const st_LookupTable st_LdcIin_Table[ TABLE_SIZE_MAX ] =
	{
		{ 622.0F, 0.0F }, { 866.0F, 1.0F }, { 1019.0F, 2.0F }, { 1177.0F, 3.0F }, { 1297.0F, 4.0F },
		{ 1457.0F, 5.0F }, { 1611.0F, 6.0F }, { 1774.0F, 7.0F }, { 1961.0F, 8.0F }, { 2673.0F, 9.0F },
		{ 3922.0F, 10.0F }, { 4004.0F, 11.0F }, { 4086.0F, 12.0F }, { 4127.0F, 12.5F }, { 4168.0F, 13.0F },
		{ 4209.0F, 13.5F }, { 4209.0F, 14.0F }, { 4291.0F, 14.5F }, { 4332.0F, 15.0F }
	};

	const st_LookupTable st_LdcVin_Table[ TABLE_SIZE_MAX ] =
	{
		{ 70.0F, 0.0F }, { 186.0F, 25.0F }, { 348.0F, 50.0F }, { 520.0F, 75.0F }, { 693.0F, 100.0F },
		{ 864.0F, 125.0F }, { 1037.0F, 150.0F }, { 1210.0F, 175.0F }, { 1380.0F, 200.0F }, { 1551.0F, 225.0F },
		{ 1724.0F, 250.0F }, { 1893.0F, 275.0F }, { 2067.0F, 300.0F }, { 2240.0F, 325.0F }, { 2409.0F, 350.0F },
		{ 2581.0F, 375.0F }, { 2748.0F, 400.0F }, { 2916.0F, 425.0F }, { 3085.0F, 450.0F }
	};

	const st_LookupTable st_LdcTemp_Table[ TABLE_SIZE_MAX ] =
	{
		{ 177.0F, 190.0F }, { 231.0F, 177.0F }, { 275.0F, 170.0F }, { 335.0F, 160.0F }, { 417.0F, 150.0F },
		{ 507.0F, 140.0F }, { 632.0F, 130.0F }, { 772.0F, 120.0F }, { 943.0F, 110.0F }, { 1141.0F, 100.0F },
		{ 1351.0F, 90.0F }, { 1568.0F, 80.0F }, { 1763.0F, 71.0F }, { 1945.0F, 61.0F }, { 2090.0F, 50.0F },
		{ 2190.0F, 40.0F }, { 2260.0F, 30.0F }, { 2306.0F, 20.0F }, { 2353.0F, 0.0F }
	};

	const st_LookupTable st_Ldc14VBat_Table[ TABLE_SIZE_MAX ] =
	{
		{ 4.0F, 0.0F }, { 168.0F, 1.0F }, { 331.0F, 2.0F }, { 493.0F, 3.0F }, { 656.0F, 4.0F },
		{ 819.0F, 5.0F }, { 980.0F, 6.0F }, { 1145.0F, 7.0F }, { 1309.0F, 8.0F }, { 1473.0F, 9.0F },
		{ 1636.0F, 10.0F }, { 1797.0F, 11.0F }, { 1960.0F, 12.0F }, { 2122.0F, 13.0F }, { 2284.0F, 14.0F },
		{ 2442.0F, 15.0F }, { 2600.0F, 16.0F }, { 2755.0F, 18.0F }, { 3182.0F, 20.0F }
	};

	single f32_LdcAdcAverIout ;
	single f32_LdcAdcAverVout ;
	single f32_LdcAdcAverIin;
	single f32_LdcAdcAverVin ;
	single f32_LdcAdcAverTemp;
	single f32_LdcAdcAver14VBat ;

	single f32_ObcAdcAver14VBat ;

	f32_LdcAdcAverIout = BSW_MovingAvg ( u16g_hisLdcIout );
	f32_LdcAdcAverVout = BSW_MovingAvg ( u16g_hisLdcVout );
	f32_LdcAdcAverIin = BSW_MovingAvg ( u16g_hisLdcIin );
	f32_LdcAdcAverVin = BSW_MovingAvg ( u16g_hisLdcVin );
	f32_LdcAdcAverTemp = BSW_MovingAvg ( u16g_hisLdcTemp );

	f32_ObcAdcAver14VBat = BSW_MovingAvg ( u16g_hisObcBattSens );
	f32_LdcAdcAver14VBat = BSW_MovingAvg ( u16g_hisLdcBattSens );
	Iout_adc_test = f32_LdcAdcAverIin;

	f32s_realLdcIoutLPF = BSW_GET_REALVALUE ( f32_LdcAdcAverIout, &sts_LdcIout, st_LdcIout_Table, TABLE_SIZE_MAX );
	f32s_realLdcVoutLPF = BSW_GET_REALVALUE ( f32_LdcAdcAverVout, &sts_LdcVout, st_LdcVout_Table, TABLE_SIZE_MAX );
	f32s_realLdcIinLPF = BSW_GET_REALVALUE ( f32_LdcAdcAverIin, &sts_LdcIin, st_LdcIin_Table, TABLE_SIZE_MAX );
	f32s_realLdcVinLPF = BSW_GET_REALVALUE ( f32_LdcAdcAverVin, &sts_LdcVin, st_LdcVin_Table, TABLE_SIZE_MAX );
	f32s_realLdcTempLPF = BSW_GET_REALVALUE ( f32_LdcAdcAverTemp, &sts_LdcTemp, st_LdcTemp_Table, TABLE_SIZE_MAX );
	f32s_realLdc14BattLPF = BSW_GET_REALVALUE ( f32_LdcAdcAver14VBat, &sts_LdcBatt, st_Ldc14VBat_Table, TABLE_SIZE_MAX );

	f32s_realObc14BattLPF = ( f32_ObcAdcAver14VBat * ( 3.4f / 4095.0f ) ) * 5.3f;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Obc_Vadc1Scan ( void )
{
	const st_LookupTable st_ObcIout_Table[ TABLE_SIZE_MAX ] =
	{
		{ 472.0F, 0.0F }, { 545.0F, 1.0F }, { 616.0F, 2.0F }, { 693.0F, 3.0F }, { 768.0F, 4.0F },
		{ 840.0F, 5.0F }, { 917.0F, 6.0F }, { 992.0F, 7.0F }, { 1069.0F, 8.0F }, { 1143.0F, 9.0F },
		{ 1219.0F, 10.0F }, { 1296.0F, 11.0F }, { 1446.0F, 13.0F }, { 1598.0F, 15.0F }, { 1750.0F, 17.0F },
		{ 1900.0F, 19.0F }, { 2052.0F, 21.0F }, { 2202.0F, 23.0F }, { 2354.0F, 25.0F }
	};

	const st_LookupTable st_ObcVout_Table[ TABLE_SIZE_MAX ] =
	{
		{ 100.0F, 0.0F }, { 172.0F, 25.0F }, { 330.0F, 50.0F }, { 498.0F, 75.0F }, { 663.0F, 100.0F },
		{ 829.0F, 125.0F }, { 993.0F, 150.0F }, { 1156.0F, 175.0F }, { 1319.0F, 200.0F }, { 1482.0F, 225.0F },
		{ 1645.0F, 250.0F }, { 1806.0F, 275.0F }, { 1966.0F, 300.0F }, { 2117.0F, 325.0F }, { 2260.0F, 350.0F },
		{ 2392.0F, 375.0F }, { 2513.0F, 400.0F }, { 2634.0F, 425.0F }, { 2755.0F, 450.0F }
	};

	const st_LookupTable st_ObcVin_Table[ TABLE_SIZE_MAX ] =
	{
		{ 576.0F, 0.0F }, { 710.0F, 20.0F }, { 930.0F, 40.0F }, { 1150.0F, 60.0F }, { 1410.0F, 80.0F },
		{ 1600.0F, 100.0F }, { 1800.0F, 120.0F }, { 2000.0F, 140.0F }, { 2200.0F, 160.0F }, { 2400.0F, 180.0F },
		{ 2600.0F, 200.0F }, { 2700.0F, 210.0F }, { 2750.0F, 220.0F }, { 2800.0F, 230.0F }, { 2850.0F, 240.0F },
		{ 2900.0F, 250.0F }, { 2950.0F, 260.0F }, { 3000.0F, 270.0F }, { 3050.0F, 280.0F }
	};

	const st_LookupTable st_ObcTemp_Table[ TABLE_SIZE_MAX ] =
	{
		{ 177.0F, 190.0F }, { 231.0F, 177.0F }, { 275.0F, 170.0F }, { 335.0F, 160.0F }, { 417.0F, 150.0F },
		{ 507.0F, 140.0F }, { 632.0F, 130.0F }, { 772.0F, 120.0F }, { 943.0F, 110.0F }, { 1141.0F, 100.0F },
		{ 1351.0F, 90.0F }, { 1568.0F, 80.0F }, { 1763.0F, 71.0F }, { 1945.0F, 61.0F }, { 2090.0F, 50.0F },
		{ 2190.0F, 40.0F }, { 2260.0F, 30.0F }, { 2306.0F, 20.0F }, { 2353.0F, 0.0F }
	};

	single f32_ObcAdcAverIout ;
	single f32_ObcAdcAverVout;
	single f32_ObcAdcAverVin ;
	single f32_ObcAdcAverTemp ;	/* Average ADC feedback values */

	f32_ObcAdcAverIout = ( single )BSW_MovingAvg ( u16g_hisObcIout );
	f32_ObcAdcAverVout = ( single )BSW_MovingAvg ( u16g_hisObcVout );
	f32_ObcAdcAverVin = ( single )BSW_MovingAvg ( u16g_hisObcVin );
	f32_ObcAdcAverTemp = ( single )BSW_MovingAvg ( u16g_hisObcTemp );
	f32s_ObcAdcAverIn = ( single )BSW_MovingAvg ( u16g_hisObcIin );

	/*Real value conversion */
	f32s_realObcIoutLPF = BSW_GET_REALVALUE ( f32_ObcAdcAverIout, &sts_ObcIout, st_ObcIout_Table, TABLE_SIZE_MAX );
	f32s_realObcVoutLPF =  BSW_GET_REALVALUE ( f32_ObcAdcAverVout, &sts_ObcVout, st_ObcVout_Table, TABLE_SIZE_MAX );
	f32s_realObcVinLPF =  BSW_GET_REALVALUE ( f32_ObcAdcAverVin, &sts_ObcVin, st_ObcVin_Table, TABLE_SIZE_MAX );
	f32s_realObcTempLPF =  BSW_GET_REALVALUE ( f32_ObcAdcAverTemp, &sts_ObcTemp, st_ObcTemp_Table, TABLE_SIZE_MAX );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Ldc_Vadc0Start ( void )
{
	IfxVadc_Adc_startScan ( &st_Vadc0Ldc.adcGroup );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_Obc_Vadc1Start ( void )
{
	IfxVadc_Adc_startScan ( &st_Vadc1Obc.adcGroup );
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_InputCurr ( void )
{
	return f32s_realLdcIinLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_InputVolt ( void )
{
	return f32s_realLdcVinLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_DCOutputCurr ( void )
{
	return f32s_realLdcIoutLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_DCOutputVolt ( void )
{
	return f32s_realLdcVoutLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_BattVolt ( void )
{
	return f32s_realLdc14BattLPF;
}


/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_LDC_Temperature ( void )
{
	return f32s_realLdcTempLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_ACInputCurr ( void )
{
	return f32s_realObcIinLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_ACInputVolt ( void )
{
	return f32s_realObcVinLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_DCOutputCurr ( void )
{
	return f32s_realObcIoutLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_DCOutputVolt ( void )
{
	return f32s_realObcVoutLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_AuxInVolt ( void )
{
	return f32s_realObc14BattLPF;
}

/*--------------------------------------------------------------------------*/
/* Function  |            											        */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_OBC_Temperature ( void )
{
	return f32s_realObcTempLPF;
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
static single BSW_MaxValueDetect_20ms ( const single f32_AdcValue[ HIS_BUFFER_SIZE_20ms ] )
{
	byte u8_idx = 0;
	single f32_max = f32_AdcValue[0];

	for( u8_idx = 0; u8_idx < HIS_BUFFER_SIZE_20ms; u8_idx++ )
	{
		if( f32_AdcValue[ u8_idx ] > f32_max )
		{
			f32_max = f32_AdcValue[ u8_idx ];
		}
	}

	return f32_max;
}

/*--------------------------------------------------------------------------*/
/* Function  |            																						      */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static single BSW_MovingAvg ( const word u16_ptrArrNumbers[] )
{
  byte u8_cnt = 0U;
  single f32_AvgRet;
  word u16_Sum = 0U;

  for( u8_cnt = 0U; u8_cnt < HIS_BUFFER_SIZE; u8_cnt++ )
  {
  	u16_Sum += u16_ptrArrNumbers[ u8_cnt ];
  }

  f32_AvgRet = ( single )( ( single )u16_Sum / ( HIS_BUFFER_SIZE ) );

  /*return the average*/
  return ( f32_AvgRet );
}

/*--------------------------------------------------------------------------*/
/* Function  |            																						      */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static single BSW_GET_REALVALUE ( single f32_AdcVal, st_AdcValuesType *stp_AdcValue, const st_LookupTable *stp_Table, byte u8_Size)
{
	if( f32_AdcVal >= stp_AdcValue->f32_AdcFailureValue )
	{
		stp_AdcValue->u16_failureCnt = 0U;
		stp_AdcValue->f32_realValue = LookupTableCalc ( f32_AdcVal, stp_Table, u8_Size );
	}
	else
	{
		if( stp_AdcValue->u16_failureCnt > DIAG_FAILURE_FILTER )
		{
			stp_AdcValue->f32_realValue = DIAG_FAIL_VALUE;
		}
		else
		{
			stp_AdcValue->u16_failureCnt++;
		}
	}

	return stp_AdcValue->f32_realValue;
}

/*--------------------------------------------------------------------------*/
/* Function  |            																						      */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static single LookupTableCalc ( single f32_AdcVal, const st_LookupTable *stp_Table, byte u8_Size )
{
	byte u8_Idx = 0U;
	single f32_PhysCalc;
	single f32_RawCalc;
	single f32_Rate;
	single f32_Ret;
	single f32_Calc;

	while( ( u8_Idx < u8_Size ) && ( f32_AdcVal > stp_Table[ u8_Idx ].f32_Raw ) )
	{
		u8_Idx++;
	}

	if( u8_Idx == 0U ){ f32_Ret = stp_Table[ 0 ].f32_Phys; }
	else if( u8_Idx == u8_Size ){ f32_Ret = stp_Table[ u8_Size - 1U ].f32_Phys; }
	else
	{
		f32_PhysCalc = stp_Table[ u8_Idx ].f32_Phys - stp_Table[ u8_Idx - 1U ].f32_Phys;
		f32_RawCalc = stp_Table[ u8_Idx ].f32_Raw - stp_Table[ u8_Idx - 1U ].f32_Raw;
		f32_Rate = ( ( f32_PhysCalc * 1000.0f ) / f32_RawCalc );
		f32_Calc = f32_Rate * ( f32_AdcVal - stp_Table[ u8_Idx ].f32_Raw );

		f32_Ret = ( f32_Calc / 1000.0f ) + stp_Table[ u8_Idx ].f32_Phys;
	}

	return ( f32_Ret );
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
