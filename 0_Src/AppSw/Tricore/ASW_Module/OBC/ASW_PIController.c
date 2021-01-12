/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_PIController.c                                          **
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

#define ASW_PICONTROLLER_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_PIController.h"
#include "ASW_ObcConstantPower.h"

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
static single Asw_Picontroller ( single f32_ref, single f32_in, st_PID_ERRORS *stp_error, st_PID_GAINS st_K );
static single Asw_Limiter ( single f32_in, single f32_upper, single f32_lower );
static void Asw_ResetError ( st_PID_ERRORS *stp_error );

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
static st_PID_ERRORS sts_eVoObc, sts_eIoObc;
static st_PID_GAINS	sts_kVoObc, sts_kIoObc;

static st_PID_ERRORS sts_eVoLdc, sts_eIoLdc;
static st_PID_GAINS	sts_kVoLdc, sts_kIoLdc;
static dword u32s_appSStartCount = 0U ;

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
void Asw_Obc_PiCofficient ( void )
{
	sts_kVoObc.P = 1.1f;
	sts_kVoObc.I = 0.0094f;
	sts_kVoObc.D = 0.0f;
	sts_kVoObc.a = 1.0f/sts_kVoObc.P;

	sts_kIoObc.P = 5.0f;
	sts_kIoObc.I = 0.13f;
	sts_kIoObc.D = 0.0f;
	sts_kIoObc.a = 1.0f/sts_kIoObc.P;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_PiCofficient ( void )
{
	sts_kVoLdc.P = 35.1f;
	sts_kVoLdc.I = 4.1f;

	sts_kVoLdc.D = 0.0f;
	sts_kVoLdc.a = 1.0f/sts_kVoLdc.P;

	sts_kIoLdc.P = 0.10f;
	sts_kIoLdc.I = 0.00912f;//0.009
	sts_kIoLdc.D = 0.0f;
	sts_kIoLdc.a = 1.0f/sts_kIoLdc.P;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Obc_PiInit ( void )
{
	sts_eIoObc.f32_e = 0.0f;
	sts_eIoObc.f32_past = 0.0f;
	sts_eIoObc.f32_sum = 0.0f;
	sts_eIoObc.f32_w = 0.0f;

	sts_eVoObc.f32_e = 0.0f;
	sts_eVoObc.f32_past = 0.0f;
	sts_eVoObc.f32_sum = 0.0f;
	sts_eVoObc.f32_w = 0.0f;

	u32s_appSStartCount = 0U;

	Asw_ResetError ( &sts_eIoObc );
	Asw_ResetError ( &sts_eVoObc );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_PiInit ( void )
{
	sts_eIoLdc.f32_e = 0.0f;
	sts_eIoLdc.f32_past = 0.0f;
	sts_eIoLdc.f32_sum = 0.0f;
	sts_eIoLdc.f32_w = 0.0f;

	sts_eVoLdc.f32_e = 0.0f;
	sts_eVoLdc.f32_past = 0.0f;
	sts_eVoLdc.f32_sum = 0.0f;
	sts_eVoLdc.f32_w = 0.0f;

	Asw_ResetError ( &sts_eIoLdc );
	Asw_ResetError ( &sts_eVoLdc );
}


/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
dword Asw_Ldc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb )
{
	dword u32_ShiftLdc = 0U;
	single f32_vLdcPiSetpoint = 0.0f;
	single f32_iLdcPiSetpoint = 0.0f;
	single f32_eLdcVoLimiter = 0.0f;
	single f32_eLdcIoLimiter = 0.0f;
	single f32_vLdcFbValue = 0.0f;
	single f32_iLdcFbValue = 0.0f;
	single f32_vLdcPIconout = 0.0f;
	single f32_iLdcPIconout = 0.0f;

	f32_vLdcFbValue = f32_Vofb;
	f32_iLdcFbValue = f32_Iofb;
	f32_vLdcPiSetpoint = f32_Voref;

	f32_vLdcPIconout = Asw_Picontroller( f32_vLdcPiSetpoint, f32_vLdcFbValue, &sts_eVoLdc, sts_kVoLdc );		/* Voltage Controller*/
	f32_eLdcVoLimiter = Asw_Limiter( f32_vLdcPIconout, f32_Ioref, 1.0f );
	sts_eVoLdc.f32_past = f32_eLdcVoLimiter;
	sts_eVoLdc.f32_w = ( f32_vLdcPIconout - sts_eVoLdc.f32_past ) * sts_kVoLdc.a;									/* anti-windup*/

	f32_iLdcPiSetpoint = f32_eLdcVoLimiter;
	/*iLdcPiSetpoint = Io_ref;*/

	f32_iLdcPIconout  = Asw_Picontroller( f32_iLdcPiSetpoint, f32_iLdcFbValue , &sts_eIoLdc , sts_kIoLdc );		/* Current Controller*/

	f32_eLdcIoLimiter  = Asw_Limiter( f32_iLdcPIconout , LDC_SHIFT_MAX, LDC_SHIFT_MIN );
	sts_eIoLdc.f32_past = f32_eLdcIoLimiter;
	sts_eIoLdc.f32_w = ( f32_iLdcPIconout  - sts_eIoLdc.f32_past ) * sts_kIoLdc .a;									/* anti-windup*/

	u32_ShiftLdc =  ( dword )f32_eLdcIoLimiter;																/* Shift Value Limiter*/

	return ( dword )u32_ShiftLdc;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Asw_Ldc_SoftStart ( single f32_CmdTarget, single f32_RefTemp )
{
	static single f32_refValueTemp = 0.0f;

	if( f32_CmdTarget >= f32_RefTemp )
	{
		f32_refValueTemp = f32_RefTemp + ( f32_CmdTarget/2000.0f );
		if( f32_refValueTemp >= f32_CmdTarget )
		{
			f32_refValueTemp = f32_CmdTarget;
		}
	}
	else
	{
		f32_refValueTemp = f32_RefTemp - ( f32_CmdTarget/200.0f );
		if( f32_refValueTemp < f32_CmdTarget )
		{
			f32_refValueTemp = f32_CmdTarget;
		}
	}
	return ( single )f32_refValueTemp;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Asw_Obc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb )
{
	single f32_iObcPiSetpoint = 0.0f;
	single f32_vObcPiSetpoint = 0.0f;
	single f32_vObcPiFbValue = 0.0f;
	single f32_iObcPiFbValue = 0.0f;
	single f32_obcFreLimit = 0.0f;
	single f32_vObcPIconout = 0.0f;
	single f32_iObcPIconout = 0.0f;
	single f32_eVoObcLimiter = 0.0f;
	single f32_eIoObcLimiter =  0.0f;

	f32_vObcPiFbValue = f32_Vofb;
	f32_iObcPiFbValue = f32_Iofb;
	f32_vObcPiSetpoint = f32_Voref;

	f32_vObcPIconout = Asw_Picontroller ( f32_vObcPiSetpoint, f32_vObcPiFbValue, &sts_eVoObc, sts_kVoObc );
	f32_eVoObcLimiter = Asw_Limiter ( f32_vObcPIconout, f32_Ioref, 1.0f );
	sts_eVoObc.f32_past = f32_eVoObcLimiter;
	sts_eVoObc.f32_w = ( f32_vObcPIconout - sts_eVoObc.f32_past ) * sts_kVoObc.a;

	f32_iObcPiSetpoint = f32_Ioref;//eVoObcLimiter;
	f32_iObcPIconout = Asw_Picontroller ( f32_iObcPiSetpoint, f32_iObcPiFbValue, &sts_eIoObc, sts_kIoObc );

	f32_eIoObcLimiter = Asw_Limiter ( f32_iObcPIconout, OBC_DUTY_MAX, OBC_DUTY_MIN );
	sts_eIoObc.f32_past = f32_eIoObcLimiter;
	sts_eIoObc.f32_w = ( f32_iObcPIconout - sts_eIoObc.f32_past ) * sts_kIoObc.a;

	f32_obcFreLimit = Asw_Limiter ( ( SYS_FRE/f32_eIoObcLimiter ), OBC_FRE_MAX, OBC_FRE_MIN );

	return f32_obcFreLimit;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Asw_Obc_SoftStart ( single f32_cmdTarget, single f32_RefTemp )
{
	static single f32_Aswref = 0.0f;

	u32s_appSStartCount++;

	if( u32s_appSStartCount > 20u ) /* need to change later 20*1ms */
	{
		if( f32_cmdTarget >= f32_RefTemp )
		{
			f32_Aswref = f32_RefTemp + ( f32_cmdTarget / 100.0f );

			if( f32_Aswref >= f32_cmdTarget ){ f32_Aswref = f32_cmdTarget; }
		}
		else
		{
			f32_Aswref = f32_RefTemp - ( f32_cmdTarget / 100.0f);

			if(f32_Aswref  < f32_cmdTarget )
			{
				if( f32_Aswref > 2.5f ){ f32_Aswref = f32_cmdTarget; }
				else{	f32_Aswref = 2.5f; }
			}
		}

		u32s_appSStartCount = 0U;
	}

	return f32_Aswref;
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
static single Asw_Picontroller ( single f32_ref, single f32_in, st_PID_ERRORS *stp_error, st_PID_GAINS st_K )
{
	single f32_out;

	stp_error->f32_e = f32_ref - f32_in;
	stp_error->f32_sum += (stp_error->f32_e - stp_error->f32_w )*st_K.I; /*- error->w*/
	f32_out = ( st_K.P * stp_error->f32_e ) + stp_error->f32_sum;

	return f32_out;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static single Asw_Limiter ( single f32_in, single f32_upper, single f32_lower )
{
	single f32_limit;

	if( f32_in >= f32_upper )
	{
		f32_limit = f32_upper;
	}
	else if( f32_in <= f32_lower )
	{
		f32_limit = f32_lower;
	}
	else
	{
		f32_limit = f32_in;
	}

	return f32_limit;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Asw_ResetError ( st_PID_ERRORS *stp_error )
{
	stp_error->f32_e = 0.0f;
	stp_error->f32_sum = 0.0f;
	stp_error->f32_w = 0.0f;
	stp_error->f32_past = 0.0f;
}

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
