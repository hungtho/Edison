/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Rte_Typedef.h                                               **
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

#ifndef RTE_TYPEDEF_INCLUDED
#define RTE_TYPEDEF_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define uTRUE  														( 1U )
#define uFALSE 														( 0U )

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/

/****************************************************************************/
typedef enum
{
	EN_LDC_Off = 0U,
	EN_LDC_On
}en_LDC_STATE;

typedef enum
{
	NOR_LOWER = 0U,
	NOR_UPPER,
	NOR_RECOVER_LOWER,
	NOR_RECOVER_UPPER,
	FAULT_LOWER,
	FAULT_UPPER
}en_ADC_MODE_DEF;

typedef enum
{
	LDC_MODE_READY = 0U,
	LDC_MODE_NORMAL,
	LDC_MODE_DERATING,
	LDC_MODE_FAULT,
	LDC_MODE_FAILURE
}en_LDC_MODE_DEF;

typedef enum
{
	STATE_NORMAL,
	STATE_UNDER,
	STATE_OVER,
	STATE_DERATING,
	STATE_FAULT,
}en_STATE_DEF;

typedef enum
{
	DERATING_NOT_USE = 0U,
	DERATING_TEMP_LV01,	/* 95 degree */
	DERATING_TEMP_LV02,	/* 105 degree*/
	DERATING_TEMP_LV03,	/* 110 degree*/
}en_LDC_DERATING_STAT;

typedef struct
{
	en_STATE_DEF u8_14VBat; 		/* B+ - 12VBat (6V ~ 16V)*/
	en_STATE_DEF u8_Temp;		/* Temperature (-40 ~ 105)*/
	en_STATE_DEF u8_HV_V;		/* HV V - 입력전압	(250V ~ 420V) */
	en_STATE_DEF u8_HV_I;		/* HV I - 입력전류 (0A ~ 20A) */
	en_STATE_DEF u8_LV_V;		/* LV V(Battery)- 출력전압 (6V ~ 16V) */
	en_STATE_DEF u8_LV_I;		/* LV I(Battery)- 출력전류 (0A ~ 128A) */
	en_STATE_DEF u8_LV_I_over;   /* LV I(Battery)- 출력전류 (0A ~ 128A) */

	en_STATE_DEF u8_CanTimeoutSts;
	en_STATE_DEF u8_CanBusOffSts;
}st_DiagnosisType;

typedef struct
{
	single f32_limit[6];
	word u16_DeratingCnt;
	word u16_FaultUnderCnt;
	word u16_FaultOvertCnt;
	en_STATE_DEF u8_SensorState;
}st_AdcLimitValue;

typedef struct
{
	single f32_InputCurrent;
	single f32_InputVoltage;
	single f32_OutputCurrent;
	single f32_OutputVoltage;
	single f32_Temperature;
	single f32_BatteryVoltage;
}st_RealValuesType;

typedef struct
{
	/* LDC Rx signals */
	byte u8_VcuCmdLdc_Enable;
	single f32_VcuCmdLdc_TargetVolt;

	en_STATE_DEF u8_canBusoffStatus;
	en_STATE_DEF u8_canTimeoutStatus;

}st_CANRxValuesType_Ldc;

typedef struct
{
	/* OBC Rx signals */
	single f32_Bms_ObcCmdCurr;
	single f32_Bms_ObcCmdVoltage;
	byte u8_Bms_ACChargingReady;
	byte u8_BmsObcCmdEnOBC;
	byte u8_Bms_HWTestMode;
	byte u8_BmsObcCmdRelay;
	byte u8_BmsObcCmdPFC_Enable;
	byte u8_Bms_EnableOBCWakeup;

	byte u8_Bms_ACPP;
	byte u8_Bms_ACCP;
	byte u8_Bms_ACPwmDuty;
	byte u8_Bms_ACChargeCapacity;

	byte u8_Bms_ChargeEnd;
	byte u8_Bms_ChargeMode;

	en_STATE_DEF u8_canBusoffStatus;
	en_STATE_DEF u8_canTimeoutStatus;
}st_CANRxValuesType_Obc;

typedef struct
{
	en_LDC_MODE_DEF u8_ldc_mode;
}st_CANTxValuesType_Ldc;

typedef struct
{
	en_LDC_STATE u8_LdcPWMCtrl;
	dword u32_phaseshift;
}st_PWMType_Ldc;

typedef struct
{
	st_RealValuesType st_RealValue;
	st_CANRxValuesType_Ldc st_CANValue;
}st_RteIn_Ldc;

typedef struct
{
	st_CANTxValuesType_Ldc st_CANValue;
	st_PWMType_Ldc st_PwmValue;
}st_RteOut_Ldc;

/* -------OBC structure --------*/
typedef enum
{
	OBC_InitMode = 0U,
	OBC_NoChargingMode,
	OBC_ChargingMode,
	OBC_FaultMode,
	OBC_ChargedFinishMode,
}en_OBC_ModeState;

typedef struct
{
	byte u8_OBC_ReadySta;
	byte u8_OBC_ControllableSta;
	byte u8_OBC_ChargeFinishReq;
	byte u8_OBC_ACDetectSta;
	byte u8_OBC_HVILSta;
	byte u8_OBC_PowerDeratingSta;
	en_OBC_ModeState u8_OBC_OperatingMode;
}st_CANTxValuesType_Obc;

typedef struct
{
	byte u8_ObcPWMCtrl;
	single f32_frequency;
}st_PWMType_Obc;

typedef struct
{
	st_RealValuesType st_RealValue;
	st_CANRxValuesType_Obc st_CANValue;
}st_RteIn_Obc;

typedef struct
{
	st_CANTxValuesType_Obc st_CANValue;
	st_PWMType_Obc st_PwmValue;
}st_RteOut_Obc;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef RTE_TYPEDEF_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
