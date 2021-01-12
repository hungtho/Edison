/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcDiagAdc.c                                            **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.14                                                  **
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

#define ASW_LDCDIAGADC_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_LdcDiagAdc.h"
#include "BSW_Gpio.h"

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
static en_STATE_DEF DiagAdc_LdcInputV ( en_STATE_DEF u8_HV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputV );
static en_STATE_DEF DiagAdc_LdcInputI ( en_STATE_DEF u8_HV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealinputI );
static en_STATE_DEF DiagAdc_LdcOutputV ( en_STATE_DEF u8_LV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputV );
static en_STATE_DEF DiagAdc_LdcOutputI ( en_STATE_DEF u8_LV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputI );
static en_STATE_DEF DiagAdc_LdcTemp ( en_STATE_DEF u8_Temp, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealTemp );
static en_STATE_DEF DiagAdc_Ldc14VBat ( en_STATE_DEF u8_14VBat, st_AdcLimitValue *stp_AdcLimit, single f32_adcReal14Bat );

static en_STATE_DEF DiagAdc_OutputI_Over ( en_STATE_DEF u8_LV_I_over, byte u8_overcurrent_state );

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
static st_AdcLimitValue st_VinLimit;
static st_AdcLimitValue st_IinLimit;
static st_AdcLimitValue st_VoutLimit;
static st_AdcLimitValue st_IoutLimit;
static st_AdcLimitValue st_TempLimit;
static st_AdcLimitValue st_BattVoltLimit;

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
void Asw_Ldc_AdcInit ( void )
{
	st_VinLimit.f32_limit [ NOR_LOWER ] = LDC_VIN_NOR_LOWER;
	st_VinLimit.f32_limit [ NOR_UPPER ] = LDC_VIN_NOR_UPPER;
	st_VinLimit.f32_limit [ NOR_RECOVER_LOWER ] = LDC_VIN_NOR_RECOVER_LOWER;
	st_VinLimit.f32_limit [ NOR_RECOVER_UPPER ] = LDC_VIN_NOR_RECOVER_UPPER;

	st_IinLimit.f32_limit [ NOR_LOWER ] = LDC_IIN_NOR_LOWER;
	st_IinLimit.f32_limit [ NOR_UPPER ] = LDC_IIN_NOR_UPPER;
	st_IinLimit.f32_limit [ NOR_RECOVER_LOWER ] = LDC_IIN_NOR_RECOVER_LOWER;
	st_IinLimit.f32_limit [ NOR_RECOVER_UPPER ] = LDC_IIN_NOR_RECOVER_UPPER;

	st_VoutLimit.f32_limit [ NOR_LOWER ] = LDC_VOUT_NOR_LOWER;
	st_VoutLimit.f32_limit [ NOR_UPPER ] = LDC_VOUT_NOR_UPPER;
	st_VoutLimit.f32_limit [ NOR_RECOVER_LOWER ] = LDC_VOUT_NOR_RECOVER_LOWER;
	st_VoutLimit.f32_limit [ NOR_RECOVER_UPPER ] = LDC_VOUT_NOR_RECOVER_UPPER;

	st_IoutLimit.f32_limit [ NOR_LOWER ] = LDC_IOUT_NOR_LOWER;
	st_IoutLimit.f32_limit [ NOR_UPPER ] = LDC_IOUT_NOR_UPPER;
	st_IoutLimit.f32_limit [ NOR_RECOVER_LOWER ] = LDC_IOUT_NOR_RECOVER_LOWER;
	st_IoutLimit.f32_limit [ NOR_RECOVER_UPPER ] = LDC_IOUT_NOR_RECOVER_UPPER;

	st_TempLimit.f32_limit [ NOR_LOWER ] = LDC_TEMP_NOR_LOWER;
	st_TempLimit.f32_limit [ NOR_UPPER ] = LDC_TEMP_NOR_UPPER;
	st_TempLimit.f32_limit [ NOR_RECOVER_LOWER ] = LDC_TEMP_NOR_RECOVER_LOWER;
	st_TempLimit.f32_limit [ NOR_RECOVER_UPPER ] = LDC_TEMP_NOR_RECOVER_UPPER;
	st_TempLimit.f32_limit [ FAULT_UPPER ] = LDC_TEMP_FAULT_UPPER;

	st_BattVoltLimit.f32_limit[ NOR_LOWER ] = LDC_BATVOLT_NOR_LOWER;
	st_BattVoltLimit.f32_limit[ NOR_UPPER ] = LDC_BATVOLT_NOR_UPPER;
	st_BattVoltLimit.f32_limit[ NOR_RECOVER_LOWER ] = LDC_BATVOLT_NOR_RECOVER_LOWER;
	st_BattVoltLimit.f32_limit[ NOR_RECOVER_UPPER ] = LDC_BATVOLT_NOR_RECOVER_UPPER;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_DiagAdcValues ( st_DiagnosisType *stp_DiagFlags, const st_RealValuesType *stp_adcValues )
{
  st_AdcLimitValue *stp_AdcVinLimit = &st_VinLimit;
	st_AdcLimitValue *stp_AdcIinLimit = &st_IinLimit;
	st_AdcLimitValue *stp_AdcVoutLimit = &st_VoutLimit;
	st_AdcLimitValue *stp_AdcIoutLimit = &st_IoutLimit;
	st_AdcLimitValue *stp_AdcTempLimit = &st_TempLimit;
	st_AdcLimitValue *stp_AdcBattLimit = &st_BattVoltLimit;

	stp_DiagFlags->u8_HV_V = DiagAdc_LdcInputV ( stp_DiagFlags->u8_HV_V,  stp_AdcVinLimit, stp_adcValues->f32_InputVoltage );
	stp_DiagFlags->u8_HV_I = DiagAdc_LdcInputI ( stp_DiagFlags->u8_HV_I, stp_AdcIinLimit,  stp_adcValues->f32_InputCurrent );
	stp_DiagFlags->u8_LV_V = DiagAdc_LdcOutputV ( stp_DiagFlags->u8_LV_V, stp_AdcVoutLimit, stp_adcValues->f32_OutputVoltage );
	stp_DiagFlags->u8_LV_I = DiagAdc_LdcOutputI ( stp_DiagFlags->u8_LV_I, stp_AdcIoutLimit, stp_adcValues->f32_OutputCurrent );
	stp_DiagFlags->u8_Temp = DiagAdc_LdcTemp ( stp_DiagFlags->u8_Temp, stp_AdcTempLimit, stp_adcValues->f32_Temperature );
	stp_DiagFlags->u8_14VBat = DiagAdc_Ldc14VBat (  stp_DiagFlags->u8_14VBat, stp_AdcBattLimit, stp_adcValues->f32_BatteryVoltage );

	stp_DiagFlags->u8_LV_I_over = DiagAdc_OutputI_Over ( stp_DiagFlags->u8_LV_I_over, Bsw_Get_GpioRead ( LDC_OVER_CURRENT_IN ) );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Asw_Adc_NormalMode( st_AdcLimitValue *stp_Limit, single f32_adcRealValue )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

	if( f32_adcRealValue < stp_Limit->f32_limit[ NOR_LOWER ] )
	{
		stp_Limit->u16_FaultOvertCnt = 0U;

		if( stp_Limit->u16_FaultUnderCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultUnderCnt++;
			u8_rtn = STATE_NORMAL;
		}
		else
		{
			u8_rtn = STATE_UNDER; /* exist problem */
		}
	}
	else if( ( stp_Limit->f32_limit[ NOR_LOWER ] <= f32_adcRealValue ) && ( f32_adcRealValue <= stp_Limit->f32_limit[ NOR_UPPER ] ) )
	{
		u8_rtn = STATE_NORMAL; /* no problem */
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
	}
	else
	{
		stp_Limit->u16_FaultUnderCnt = 0U;

		if( stp_Limit->u16_FaultOvertCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultOvertCnt++;
			u8_rtn = STATE_NORMAL;
		}
		else
		{
			u8_rtn = STATE_OVER; /* exist problem */
		}
	}

	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Asw_Adc_UnderMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

	if( f32_adcRealValue < stp_Limit->f32_limit[ NOR_RECOVER_LOWER ] )
	{
		stp_Limit->u16_FaultOvertCnt = 0U;
		u8_rtn = STATE_UNDER; /* exist problem */
	}
	else if( ( stp_Limit->f32_limit[ NOR_RECOVER_LOWER ] <= f32_adcRealValue ) && ( f32_adcRealValue <= stp_Limit->f32_limit[ NOR_RECOVER_UPPER ] ) )
	{
		u8_rtn = STATE_NORMAL; /* no problem */
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
	}
	else
	{
		stp_Limit->u16_FaultUnderCnt = 0U;

		if( stp_Limit->u16_FaultOvertCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultOvertCnt++;
			u8_rtn = STATE_UNDER;
		}
		else
		{
			u8_rtn = STATE_OVER; /* exist problem */
		}
	}

	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Asw_Adc_OverMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

	if( f32_adcRealValue > stp_Limit->f32_limit[ NOR_RECOVER_UPPER ] )
	{
		stp_Limit->u16_FaultUnderCnt = 0U;
		u8_rtn = STATE_OVER; /* exist problem */
	}
	else if( ( stp_Limit->f32_limit[ NOR_RECOVER_LOWER ] <= f32_adcRealValue ) && ( f32_adcRealValue <= stp_Limit->f32_limit[ NOR_RECOVER_UPPER ] ) )
	{
		u8_rtn = STATE_NORMAL; /* no problem */
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
	}
	else
	{
		stp_Limit->u16_FaultOvertCnt = 0U;

		if( stp_Limit->u16_FaultUnderCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultUnderCnt++;
			u8_rtn = STATE_OVER;
		}
		else
		{
			u8_rtn = STATE_UNDER; /* exist problem */
		}
	}

	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Asw_Adc_TempNormalMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

	if( ( stp_Limit->f32_limit[ NOR_LOWER ] <= f32_adcRealTemp ) && ( f32_adcRealTemp <= stp_Limit->f32_limit[ NOR_UPPER ] ) )
	{
		u8_rtn = STATE_NORMAL; /* no problem */
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;
	}
	else if( f32_adcRealTemp < stp_Limit->f32_limit[ NOR_LOWER ] )
	{
		stp_Limit->u16_FaultOvertCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;

		if( stp_Limit->u16_FaultUnderCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultUnderCnt++;
		}
		else
		{
			u8_rtn = STATE_UNDER; /* exist problem */
		}
	}
	else if( f32_adcRealTemp > stp_Limit->f32_limit[ FAULT_UPPER ] )
	{
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;

		if( stp_Limit->u16_FaultOvertCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultOvertCnt++;
		}
		else
		{
			u8_rtn = STATE_OVER; /* exist problem */
		}
	}
	else
	{
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
		if( stp_Limit->u16_DeratingCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_DeratingCnt++;
		}
		else
		{
			u8_rtn = STATE_DERATING;
		}
	}
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Asw_Adc_TempFaultMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

	if( ( stp_Limit->f32_limit[ NOR_RECOVER_LOWER ] <= f32_adcRealTemp ) && ( f32_adcRealTemp <= stp_Limit->f32_limit[ NOR_RECOVER_UPPER ] ) )
	{
		u8_rtn = STATE_NORMAL; /* no problem */
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_FaultOvertCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;
	}
	else if( f32_adcRealTemp < stp_Limit->f32_limit[ NOR_RECOVER_LOWER ] )
	{
		stp_Limit->u16_FaultOvertCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;

		if( stp_Limit->u16_FaultUnderCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultUnderCnt++;
		}
		else
		{
			u8_rtn = STATE_UNDER; /* exist problem */
		}
	}
	else
	{
		stp_Limit->u16_FaultUnderCnt = 0U;
		stp_Limit->u16_DeratingCnt = 0U;

		if( stp_Limit->u16_FaultOvertCnt < MAX_FLT_CNT )
		{
			stp_Limit->u16_FaultOvertCnt++;
		}
		else
		{
			u8_rtn = STATE_OVER; /* exist problem */
		}
	}
	return u8_rtn;
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
static en_STATE_DEF DiagAdc_LdcInputV ( en_STATE_DEF u8_HV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputV )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_LDC_INVOLT_ON
	switch( u8_HV_V )
	{
		case STATE_NORMAL:
			u8_rtn = Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealInputV );
			break;
		case STATE_UNDER:
			u8_rtn = Asw_Adc_UnderMode ( stp_AdcLimit, f32_adcRealInputV );
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealInputV );
			break;
		default:
			u8_rtn = STATE_NORMAL;
		break;
	}

#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_LdcInputI ( en_STATE_DEF u8_HV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealinputI )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_LDC_INCURR_ON
	switch( u8_HV_I )
	{
		case STATE_NORMAL:
			u8_rtn = Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealinputI );
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealinputI );
			break;
		default:
			u8_rtn = STATE_NORMAL;
			break;
	}

#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_LdcOutputV ( en_STATE_DEF u8_LV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputV )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_LDC_OUTVOLT_ON
	switch( u8_LV_V )
	{
		case STATE_NORMAL:
			u8_rtn = Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealOutputV );
			break;
		case STATE_UNDER:
			u8_rtn = Asw_Adc_UnderMode ( stp_AdcLimit, f32_adcRealOutputV );
		  break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealOutputV );
		  break;
		default:
			u8_rtn = STATE_NORMAL;
		  break;
	}

#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_LdcOutputI ( en_STATE_DEF u8_LV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputI )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;
	static byte u8_OverCnt = 0U;
	static byte u8_Flag = 0U;

#if DIAG_LDC_OUTCURR_ON
	if( u8_OverCnt < 3U )
	{
		switch( u8_LV_I )
		{
		case STATE_NORMAL:
			u8_rtn = Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealOutputI );
			u8_Flag = 0U;
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealOutputI );
			if( u8_Flag == 0U )
			{
				u8_OverCnt++;
				u8_Flag = 1U;
			}
			break;
		default:
			u8_rtn = STATE_NORMAL;
			break;
		}
	}
	else
	{
		u8_rtn = STATE_OVER;
	}

#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_LdcTemp ( en_STATE_DEF u8_Temp, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealTemp )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_LDC_TEMP_ON
	if( ( u8_Temp == STATE_NORMAL )
	 || ( u8_Temp == STATE_DERATING ) )
	{
		u8_rtn = Asw_Adc_TempNormalMode ( stp_AdcLimit, f32_adcRealTemp );
	}
	else
	{
		u8_rtn = Asw_Adc_TempFaultMode ( stp_AdcLimit, f32_adcRealTemp );
	}

#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_Ldc14VBat ( en_STATE_DEF u8_14VBat, st_AdcLimitValue *stp_AdcLimit, single f32_adcReal14Bat )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_LDC_14VBAT_ON
	switch( u8_14VBat )
	{
		case STATE_NORMAL:
			u8_rtn =  Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcReal14Bat );
			break;
		case STATE_UNDER:
			u8_rtn = Asw_Adc_UnderMode ( stp_AdcLimit, f32_adcReal14Bat );
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcReal14Bat );
			break;
		default:
			u8_rtn = STATE_NORMAL;
			break;
	}
#else

	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static en_STATE_DEF DiagAdc_OutputI_Over ( en_STATE_DEF u8_LV_I_over, byte u8_overcurrent_state )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;
#if DIAG_LDC_CURR_PEAK_ON
	static word u16s_IoutPeakCnt = 0U;
	switch( u8_LV_I_over )
	{
		case STATE_NORMAL:
			if( u8_overcurrent_state == uTRUE )
			{
				u8_rtn = STATE_NORMAL; /* no problem */
				u16s_IoutPeakCnt = 0U;
			}
			else
			{
				if( u16s_IoutPeakCnt < MAX_FLT_CNT )
				{
					u16s_IoutPeakCnt++;
					u8_rtn = STATE_NORMAL;
				}
				else
				{
					u8_rtn = STATE_FAULT; /* exist problem */
				}
			}
		break;
		case STATE_FAULT:
			if( u8_overcurrent_state == uTRUE )
			{
				u8_rtn = STATE_NORMAL; /* no problem */
			}
			else
			{
				u8_rtn = STATE_FAULT; /* exist problem */
			}
		break;
		default:

		break;
	}
#else
	u8_rtn = STATE_NORMAL; /* no problem */
#endif
	return u8_rtn;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
