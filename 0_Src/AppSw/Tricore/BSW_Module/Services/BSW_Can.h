/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison_LDC                                                  **
**  Filename  : BSW_Can.h                                                   **
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

#ifndef BSW_CAN_INCLUDED
#define BSW_CAN_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "../Drivers/Mcal_Multican.h"
#include "BSW_Defines.h"
#include "Cpu0_main.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define DEF_OBC_Volt_Scaling ( 10.0F )
#define DEF_OBC_Curr_Scaling ( 100.0F )
#define DEF_OBC_Temp_Scaling ( 10.0F )

#define POLYNOMINAL		    ( 0x1DU )
#define INIT_VALUE		    ( 0xFFU )
#define XOR_VALUE					( 0xFFU )


/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	byte B0;
	byte B1;
	byte B2;
	byte B3;
	byte B4;
	byte B5;
	byte B6;
	byte B7;
}st_CANType;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef BSW_CAN_C_SRC
# endif

extern IfxMultican_Message stg_Rxmsg_VCU1_LDC;
extern IfxMultican_Message stg_Rxmsg_BMS1_OBC;
extern IfxMultican_Message stg_Rxmsg_BMS2_OBC;
extern IfxMultican_Message stg_Rxmsg_BMS10;
extern IfxMultican_Message stg_Rxmsg_BMS2;

extern en_STATE_DEF u8g_Ldc_CanTimeout;
extern en_STATE_DEF u8g_Obc_CanTimeout;
extern en_STATE_DEF u8g_Can_DiagRxFlag;
extern en_STATE_DEF u8g_CAN_BusoffSts;
#if OPEN_LOOP
extern single f32g_VcuCmdLdcPhaseshift;
#endif
/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Bsw_CRC8_Init ( void );

extern void Bsw_CANRxLDCData_100ms ( void );
extern void Bsw_CANTxLDCData_100ms ( void );

extern void Bsw_CANRxOBCData_100ms ( void );
extern void Bsw_CANTxOBCData_100ms ( void );

extern byte Bsw_GET_BMS_OBC_CmdEnable ( void );
extern byte Bsw_GET_BMS_OBC_CmdRelay ( void );
extern byte Bsw_GET_BMS_OBC_CmdPfc_Enable ( void );

extern byte Bsw_GET_Bms_ACChargingReady ( void );
extern byte Bsw_GET_Bms_HWTestMode ( void );
extern byte Bsw_GET_Bms_ACPP ( void );
extern byte Bsw_GET_Bms_ACCP( void );
extern byte Bsw_GET_Bms_ChargeEnd ( void );
extern byte Bsw_GET_Bms_ChargeMode ( void );
extern byte Bsw_GET_Bms_EnableOBCWakeup ( void );
extern byte Bsw_GET_Bms_ACPwmDuty ( void );
extern byte Bsw_GET_Bms_ACChargeCapacity ( void );

extern single Bsw_GET_Bms_ObcCmdVoltage ( void );
extern single Bsw_GET_Bms_ObcCmdCurr ( void );

extern byte Bsw_GET_VcuCmdEnLdc ( void );
extern single Bsw_GET_VcuCmdLdcTargetVolt ( void );

extern en_STATE_DEF Bsw_GET_CanBusOff ( void );
extern en_STATE_DEF Bsw_GET_Ldc_CanTimeout ( void );
extern en_STATE_DEF Bsw_GET_Obc_CanTimeout ( void );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
