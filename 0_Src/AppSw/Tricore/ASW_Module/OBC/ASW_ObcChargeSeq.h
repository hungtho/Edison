/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_ChargingSeq.h                                           **
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

#ifndef ASW_CHARGINGSEQ_INCLUDED
#define ASW_CHARGINGSEQ_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define DEF_ACRly_ON_MAX_Cnt      		   ( 20U )
#define DEF_PFC_ON_MAX_Cnt 	      		   ( 40U )
#define DEF_PWM_ON_MAX_Cnt 	      		   ( 60U )

#define DEF_PWM_OFF_MAX_Cnt       		   ( 20U )
#define DEF_PFC_OFF_MAX_Cnt       		   ( 40U )
#define DEF_ACRly_OFF_MAX_Cnt     		   ( 60U )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
enum {
	EN_OBC_Off = 0U,
	EN_OBC_On
};

enum {
	EN_OBCReady_NotReady = 0U,
	EN_OBCReady_Ready
};

enum {
	EN_ACCharge_NotReady = 0U,
	EN_ACCharge_Ready,
	EN_ACCharge_Finish
};

enum {
	EN_CP_StateA = 0,
	EN_CP_StateB,
	EN_CP_StateC,
	EN_CP_StateD,
	EN_CP_StateE,
	EN_CP_StateF
};

enum {
	EN_PP_NotDetected = 0,
	EN_PP_Detected,
	EN_PP_Open_SwitchPushed
};
enum {
	EN_BMS_Discharge_Init = 0,
	EN_BMS_Discharge_NotActive,
	EN_BMS_Discharge_Active
};

enum {
	EN_HVIL_Closed = 0,
	EN_HVIL_Open,
	EN_HVIL_Init
};
/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef ASW_CHARGINGSEQ_C_SRC
# endif

extern byte u8g_OBC_ChargeFinishReq;
extern byte u8g_Tot_ChargingReady; 		 /* BMS + OBC Charging Ready */
extern st_DiagnosisType st_AswObcDiagFlag;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Asw_Obc_RunInit ( void );
extern void Asw_Obc_ChargingSeqRun ( void );
extern byte Asw_SET_ACRly_PFC_PWM_ON ( void );
extern byte Asw_SET_ACRly_PFC_PWM_OFF ( void );

extern byte Asw_GET_OBC_ReadySta ( void );
extern byte Asw_GET_OBC_ACDetectSta ( void );
extern byte Asw_GET_OBC_ChargeFinishReq ( void );
extern byte Asw_GET_OBC_ControllableSta ( void );
extern byte Asw_GET_OBC_HVILSta ( void );
extern byte Asw_GET_OBC_OperatingMode ( void );
extern byte Asw_GET_OBC_PowerDeratingSta ( void );
extern byte Asw_GET_ObcPWMEnable ( void );
#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
