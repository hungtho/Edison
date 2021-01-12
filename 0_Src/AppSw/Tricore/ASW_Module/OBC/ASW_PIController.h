/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_PIController.h                                          **
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

#ifndef ASW_PICONTROLLER_INCLUDED
#define ASW_PICONTROLLER_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_LdcConfig.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define LDC_SHIFT_MAX			( 420.0F )
#define LDC_SHIFT_MIN			( 0.0F )

#define OBC_DUTY_MAX			( 2000.0F ) /* MinFre = 50 kHz*/
#define OBC_DUTY_MIN			( 500.0F ) /* MaxFre = 200 kHz*/

#define OBC_FRE_MAX				( 200000.0F ) /* MinFre = 50 kHz*/
#define OBC_FRE_MIN				( 50000.0F ) /* MaxFre = 200 kHz*/
#define SYS_FRE						( 100000000.0F ) /* SysFre = 100000000 Hz*/
/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	float32 P;
	float32 I;
	float32 D;
	float32 a;	/* anti windup gain*/
}st_PID_GAINS;

typedef struct
{
	float32 f32_e;
	float32 f32_sum;
	float32 f32_past;
	float32 f32_w;
}st_PID_ERRORS;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef ASW_PICONTROLLER_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Asw_Obc_PiInit ( void );
extern void Asw_Ldc_PiInit ( void );
extern void Asw_Obc_PiCofficient ( void );
extern void Asw_Ldc_PiCofficient ( void );

extern dword Asw_Ldc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Ldc_SoftStart ( single f32_CmdTarget, single f32_RefTemp );
extern single Asw_Obc_PiCtrl ( single f32_Voref, single f32_Ioref, single f32_Vofb, single f32_Iofb );
extern single Asw_Obc_SoftStart ( single f32_cmdTarget, single f32_RefTemp );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
