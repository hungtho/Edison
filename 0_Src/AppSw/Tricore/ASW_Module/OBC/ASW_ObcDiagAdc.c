/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_ObcDiagAdc.c                                              **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.03.20                                                  **
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

#define ASW_FAILSAFE_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_ObcConfig.h"
#include "ASW_ObcDiagAdc.h"
#include "ASW_LdcDiagAdc.h"


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
static en_STATE_DEF DiagAdc_ObcInputV ( en_STATE_DEF u8_HV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputV );
static en_STATE_DEF DiagAdc_ObcInputI ( en_STATE_DEF u8_HV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputI );
static en_STATE_DEF DiagAdc_ObcOutputV ( en_STATE_DEF u8_LV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputV );
static en_STATE_DEF DiagAdc_ObcOutputI ( en_STATE_DEF u8_LV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputI );

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
static st_AdcLimitValue st_ObcVinLimit;
static st_AdcLimitValue st_ObcIinLimit;
static st_AdcLimitValue st_ObcVoutLimit;
static st_AdcLimitValue st_ObcIoutLimit;

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
void Asw_Obc_AdcInit( void )
{
	st_ObcVinLimit.f32_limit [ NOR_LOWER ] = OBC_VIN_NOR_LOWER;
	st_ObcVinLimit.f32_limit [ NOR_UPPER ] = OBC_VIN_NOR_UPPER;
	st_ObcVinLimit.f32_limit [ NOR_RECOVER_LOWER] = OBC_VIN_NOR_RECOVER_LOWER;
	st_ObcVinLimit.f32_limit [ NOR_RECOVER_UPPER ] = OBC_VIN_NOR_RECOVER_UPPER;

	st_ObcIinLimit.f32_limit [ NOR_LOWER ] = OBC_IIN_NOR_LOWER;
	st_ObcIinLimit.f32_limit [ NOR_UPPER ] = OBC_IIN_NOR_UPPER;
	st_ObcIinLimit.f32_limit [ NOR_RECOVER_LOWER ] = OBC_IIN_NOR_RECOVER_LOWER;
	st_ObcIinLimit.f32_limit [ NOR_RECOVER_UPPER ] = OBC_IIN_NOR_RECOVER_UPPER;

	st_ObcVoutLimit.f32_limit [ NOR_LOWER ] = OBC_VOUT_NOR_LOWER;
	st_ObcVoutLimit.f32_limit [ NOR_UPPER ] = OBC_VOUT_NOR_UPPER;
	st_ObcVoutLimit.f32_limit [ NOR_RECOVER_LOWER ] = OBC_VOUT_NOR_RECOVER_LOWER;
	st_ObcVoutLimit.f32_limit [ NOR_RECOVER_UPPER ] = OBC_VOUT_NOR_RECOVER_UPPER;

	st_ObcIoutLimit.f32_limit [ NOR_LOWER ] = OBC_IOUT_NOR_LOWER;
	st_ObcIoutLimit.f32_limit [ NOR_UPPER ] = OBC_IOUT_NOR_UPPER;
	st_ObcIoutLimit.f32_limit [ NOR_RECOVER_LOWER ] = OBC_IOUT_NOR_RECOVER_LOWER;
	st_ObcIoutLimit.f32_limit [ NOR_RECOVER_UPPER ] = OBC_IOUT_NOR_RECOVER_UPPER;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Obc_DiagAdcValues( st_DiagnosisType *stp_DiagFlags, const st_RealValuesType *stp_adcValues )
{
	st_AdcLimitValue *pAdcObcVinLimit = &st_ObcVinLimit;
	st_AdcLimitValue *pAdcObcIinLimit = &st_ObcIinLimit;
	st_AdcLimitValue *pAdcObcVoutLimit = &st_ObcVoutLimit;
	st_AdcLimitValue *pAdcObcIoutLimit = &st_ObcIoutLimit;

	stp_DiagFlags->u8_HV_V = DiagAdc_ObcInputV ( stp_DiagFlags->u8_HV_V, pAdcObcVinLimit, stp_adcValues->f32_InputVoltage );
	stp_DiagFlags->u8_HV_I = DiagAdc_ObcInputI ( stp_DiagFlags->u8_HV_I, pAdcObcIinLimit,  stp_adcValues->f32_InputCurrent );
	stp_DiagFlags->u8_LV_V = DiagAdc_ObcOutputV ( stp_DiagFlags->u8_LV_V, pAdcObcVoutLimit, stp_adcValues->f32_OutputVoltage );
	stp_DiagFlags->u8_LV_I = DiagAdc_ObcOutputI ( stp_DiagFlags->u8_LV_I, pAdcObcIoutLimit, stp_adcValues->f32_OutputCurrent );
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
static en_STATE_DEF DiagAdc_ObcInputV ( en_STATE_DEF u8_HV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputV )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_OBC_INVOLT_ON
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
static en_STATE_DEF DiagAdc_ObcInputI ( en_STATE_DEF u8_HV_I, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealInputI )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;
#if DIAG_OBC_INCURR_ON
	switch( u8_HV_I )
	{
		case STATE_NORMAL:
			u8_rtn = Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealInputI );
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealInputI );
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
static en_STATE_DEF DiagAdc_ObcOutputV ( en_STATE_DEF u8_LV_V, st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputV )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_OBC_OUTVOLT_ON
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
static en_STATE_DEF DiagAdc_ObcOutputI ( en_STATE_DEF u8_LV_I , st_AdcLimitValue *stp_AdcLimit, single f32_adcRealOutputI )
{
	en_STATE_DEF u8_rtn = STATE_NORMAL;

#if DIAG_OBC_OUTCURR_ON
	switch( u8_LV_I )
	{
		case STATE_NORMAL:
			u8_rtn =  Asw_Adc_NormalMode ( stp_AdcLimit, f32_adcRealOutputI );
			break;
		case STATE_OVER:
			u8_rtn = Asw_Adc_OverMode ( stp_AdcLimit, f32_adcRealOutputI );
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

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
