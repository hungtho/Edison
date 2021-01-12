/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison_LDC                                                  **
**  Filename  : BSW_CAN.c                                                   **
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

#define BSW_CAN_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "Rte_ApiOut.h"
#include "BSW_ServiceCfg.h"
#include "BSW_Can.h"
#include "BSW_Defines.h"
#include "BSW_Adc.h"

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
static byte Bsw_CRC8_Calc ( byte *u8p_Data, byte u8_Size );
static void Bsw_Crc8TableGenerator ( byte u8_Polynomial, byte u8_CrcTable[ 256 ] );
static byte Bsw_CalculateCRC8 ( byte u8_CrcTable[ 256 ], const byte *u8p_Crc_DataPtr, byte u8_Crc_Len, byte u8_Crc_InitialValue, byte u8_Crc_XorValue );

static void Bsw_CANRxData100ms_BMS1_OBC ( void );
static void Bsw_CANRxData100ms_BMS2_OBC ( void );
static void Bsw_CANRxData100ms_BMS2 ( void );
static void Bsw_CANRxData100ms_BMS10 ( void );
static void Bsw_CANTxOBCData_100ms_OBC_1 ( void );
static void Bsw_CANTxOBCData_100ms_OBC_2 ( void );
static void Bsw_CANTxLDCData_100ms_LDC_1 ( void );
static void Bsw_CANTxLDCData_100ms_LDC_2 ( void );

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/
IfxMultican_Message stg_Rxmsg_VCU1_LDC;
IfxMultican_Message stg_Rxmsg_BMS1_OBC;
IfxMultican_Message stg_Rxmsg_BMS2_OBC;
IfxMultican_Message stg_Rxmsg_BMS10;
IfxMultican_Message stg_Rxmsg_BMS2;

en_STATE_DEF u8g_Ldc_CanTimeout = STATE_NORMAL;
en_STATE_DEF u8g_Obc_CanTimeout = STATE_NORMAL;
en_STATE_DEF u8g_Can_DiagRxFlag = STATE_NORMAL;
en_STATE_DEF u8g_CAN_BusoffSts = STATE_NORMAL;

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
static byte u8s_BmsObcCmdRelay = 0U  ;
static byte u8s_BmsObcCmdPFC_Enable = 0U ;
static byte u8s_BmsObcCmdEnOBC= 0U;

static byte u8s_Bms_ACPwmDuty = 0U;
static byte u8s_Bms_ACChargeCapacity = 0U;

static byte u8s_Bms_ACPP = 0U;
static byte u8s_Bms_ACCP = 0U;
static byte u8s_Bms_ChargeMode = 0U;
static byte u8s_Bms_ChargeEnd = 0U;
static byte u8s_Bms_ACChargingReady = 0U;
static byte u8s_Bms_HWTestMode = 0U;
static byte u8s_Bms_EnableOBCPWM = 0U;

static word u16s_Bms_ObcCmdCurr = 0U;
static word u16s_Bms_ObcCmdVoltage = 0U;

static byte u8s_CrcTable8bit[ 256 ];
static byte u8s_VcuCmdEnLdc = 0U;
static single f32s_VcuCmdLdcTargetVolt = 0.0F;
#if OPEN_LOOP
single f32g_VcuCmdLdcPhaseshift = 0.0F;
#endif
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
void Bsw_CRC8_Init ( void )
{
	Bsw_Crc8TableGenerator ( POLYNOMINAL, u8s_CrcTable8bit );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_CANRxLDCData_100ms ( void )
{
	u8s_VcuCmdEnLdc = ( byte )( Get32BitLoLoByte( stg_Rxmsg_VCU1_LDC.data[ 0 ] ) ) >> 6U;
	f32s_VcuCmdLdcTargetVolt = ( single )( Get32BitHiLoByte( stg_Rxmsg_VCU1_LDC.data[ 0 ] ) );
#if OPEN_LOOP
	f32g_VcuCmdLdcPhaseshift = ( single )Make16Bit( Get32BitLoLoByte( stg_Rxmsg_VCU1_LDC.data[ 1 ] ), Get32BitHiHiByte( stg_Rxmsg_VCU1_LDC.data[ 0 ] ) );
#endif
}


/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_CANTxLDCData_100ms ( void )
{
	if( Bsw_GET_CanBusOff () == STATE_NORMAL )
	{
		Bsw_CANTxLDCData_100ms_LDC_1 ();
		Bsw_CANTxLDCData_100ms_LDC_2 ();
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_CANRxOBCData_100ms ( void )
{
	Bsw_CANRxData100ms_BMS1_OBC ();
	Bsw_CANRxData100ms_BMS2_OBC ();
	Bsw_CANRxData100ms_BMS2 ();
	Bsw_CANRxData100ms_BMS10 ();
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Bsw_CANTxOBCData_100ms ( void )
{
	if( Bsw_GET_CanBusOff () == STATE_NORMAL )
	{
		Bsw_CANTxOBCData_100ms_OBC_1 ();
		Bsw_CANTxOBCData_100ms_OBC_2 ();
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_BMS_OBC_CmdEnable ( void )
{
	return u8s_BmsObcCmdEnOBC;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_BMS_OBC_CmdRelay ( void )
{
	return u8s_BmsObcCmdRelay;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_BMS_OBC_CmdPfc_Enable ( void )
{
	return u8s_BmsObcCmdPFC_Enable;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ACChargingReady ( void )
{
	return u8s_Bms_ACChargingReady;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_HWTestMode ( void )
{
	return u8s_Bms_HWTestMode;
}


/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ACPP ( void )
{
	return u8s_Bms_ACPP;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ACCP ( void )
{
	return u8s_Bms_ACCP;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ChargeEnd ( void )
{
	return u8s_Bms_ChargeEnd;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ChargeMode ( void )
{
	return u8s_Bms_ChargeMode;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_EnableOBCWakeup ( void )
{
	return u8s_Bms_EnableOBCPWM;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ACPwmDuty ( void )
{
	return u8s_Bms_ACPwmDuty;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_Bms_ACChargeCapacity ( void )
{
	return u8s_Bms_ACChargeCapacity;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_Bms_ObcCmdVoltage ( void )
{
	return ( single )u16s_Bms_ObcCmdVoltage/10.0F;
}


/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_Bms_ObcCmdCurr ( void )
{
	return ( single )u16s_Bms_ObcCmdCurr/100.0F;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
byte Bsw_GET_VcuCmdEnLdc ( void )
{
	return u8s_VcuCmdEnLdc;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
single Bsw_GET_VcuCmdLdcTargetVolt ( void )
{
	return f32s_VcuCmdLdcTargetVolt/10.0F;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Bsw_GET_CanBusOff ( void )
{
	return u8g_CAN_BusoffSts; /* 1 : bus off / 0 : no bus off */
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Bsw_GET_Ldc_CanTimeout ( void )
{
	return u8g_Ldc_CanTimeout; /* 1 : ok / 0 : false */
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
en_STATE_DEF Bsw_GET_Obc_CanTimeout ( void )
{
	return u8g_Obc_CanTimeout; /* 1 : ok / 0 : false */
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
static byte Bsw_CRC8_Calc ( byte *u8p_Data, byte u8_Size )
{
	byte u8_CalcRet;

	/* CRC8 (SAE-J1850) */
	u8_CalcRet = Bsw_CalculateCRC8 ( u8s_CrcTable8bit, u8p_Data, u8_Size, INIT_VALUE, XOR_VALUE );

	return ( u8_CalcRet );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_Crc8TableGenerator ( byte u8_Polynomial, byte u8_CrcTable[ 256 ] )
{
	byte u8_Remainder;
	byte u8_TopBit = 0x80U;
	byte u8_Bit;
	byte u8_Dividend;

	for( u8_Dividend = 0U; u8_Dividend < 255U; u8_Dividend++ )
	{
		u8_Remainder = u8_Dividend;

		for( u8_Bit = 0U; u8_Bit < 8U; u8_Bit++ )
		{
			if( ( u8_Remainder & u8_TopBit ) == 0U )
			{
				u8_Remainder <<= 1U;
			}
			else
			{
				u8_Remainder = ( byte )( u8_Remainder << 1U ) ^ u8_Polynomial;
			}
		}

		u8_CrcTable[ u8_Dividend ] = u8_Remainder;
	}

	return;
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static byte Bsw_CalculateCRC8 ( byte u8_CrcTable[ 256 ], const byte *u8p_Crc_DataPtr, byte u8_Crc_Len, byte u8_Crc_InitialValue, byte u8_Crc_XorValue )
{
	byte u8_Temp;
	byte u8_Crc = u8_Crc_InitialValue;
	byte u8_Counter;

	for( u8_Counter = 0U; u8_Counter < u8_Crc_Len; u8_Counter++ )
	{
		u8_Temp = *u8p_Crc_DataPtr;

		u8_Crc = u8_Crc ^ u8_Temp;
		u8_Crc = u8_CrcTable[ u8_Crc ];
		u8p_Crc_DataPtr++;
	}

	u8_Crc ^= u8_Crc_XorValue;

	return ( u8_Crc );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANRxData100ms_BMS1_OBC ( void )
{
//	word u16s_Bms_CRC = 0U;
//	word u16s_Bms_MesCounter = 0U;

	u16s_Bms_ObcCmdCurr = Make16Bit( Get32BitLoHiByte( stg_Rxmsg_BMS1_OBC.data[ 0 ] ), Get32BitLoLoByte( stg_Rxmsg_BMS1_OBC.data[ 0 ] ) );
	u16s_Bms_ObcCmdVoltage = Make16Bit( Get32BitHiHiByte( stg_Rxmsg_BMS1_OBC.data[ 0 ] ), Get32BitHiLoByte( stg_Rxmsg_BMS1_OBC.data[ 0 ] ) );

	u8s_Bms_ACChargingReady = ( byte )( Get32BitLoLoByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) & ( 0x3U ) );
	u8s_BmsObcCmdEnOBC = ( byte )( ( Get32BitLoLoByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) ) >> 2U );

	u8s_Bms_HWTestMode = ( byte )( Get32BitLoHiByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) & ( 0x1U ) );
	u8s_BmsObcCmdRelay =  ( byte )( ( Get32BitLoHiByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) & ( 0x2U ) ) >> 1U );
	u8s_BmsObcCmdPFC_Enable = ( byte )( ( Get32BitLoHiByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) & ( 0x4U ) ) >> 2U );
	u8s_Bms_EnableOBCPWM = ( byte )( ( Get32BitLoHiByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) & ( 0x8U ) ) >> 3U );

//	u16s_Bms_MesCounter = ( word )Get32BitHiLoByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] ) >> 4U;
//	u16s_Bms_CRC = ( word )Get32BitHiHiByte( stg_Rxmsg_BMS1_OBC.data[ 1 ] );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANRxData100ms_BMS2_OBC ( void )
{
	u8s_Bms_ACPP = ( byte )Get32BitHiLoByte( stg_Rxmsg_BMS2_OBC.data[ 0 ] );
	u8s_Bms_ACCP = ( byte )Get32BitHiHiByte( stg_Rxmsg_BMS2_OBC.data[ 0 ] );

	u8s_Bms_ACPwmDuty = ( byte )Get32BitLoLoByte( stg_Rxmsg_BMS2_OBC.data[ 1 ] );
	u8s_Bms_ACChargeCapacity = ( byte )Get32BitLoHiByte( stg_Rxmsg_BMS2_OBC.data[ 1 ] );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANRxData100ms_BMS2 ( void )
{
	u8s_Bms_ChargeEnd = ( byte )( Get32BitLoHiByte( stg_Rxmsg_BMS2.data[ 1 ] ) >> 4U  );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANRxData100ms_BMS10 ( void )
{
	u8s_Bms_ChargeMode = ( byte )Get32BitHiHiByte( stg_Rxmsg_BMS10.data[ 1 ] ) & ( 0x3U );
}
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANTxOBCData_100ms_OBC_1 ( void )
{
	IfxMultican_Message st_CAN_Tx_OBC_1;
	byte u8_Checksum_OBC1_Data[ 5 ];
	byte u8g_OBC_CRC = 0U;
	st_CANType st_TxOBC_1 = { 0, };

	single f32_realObcTemp = ( Bsw_GET_OBC_Temperature() * DEF_OBC_Temp_Scaling );
	word u16_realObcTemp = ( word )f32_realObcTemp;

	st_TxOBC_1.B0 = ( byte )( ( ( st_rteObcOut.st_CANValue.u8_OBC_ReadySta & 0x1U ) << 7U )
									   	 	 |( ( st_rteObcOut.st_CANValue.u8_OBC_ControllableSta & 0x1U ) << 4U )
							           |( ( st_rteObcOut.st_CANValue.u8_OBC_ChargeFinishReq & 0x1U ) << 3U )
							           |( ( st_rteObcOut.st_CANValue.u8_OBC_ACDetectSta & 0x1U ) << 2U  )
							           |( ( st_rteObcOut.st_CANValue.u8_OBC_HVILSta & 0x3U ) ) );

	st_TxOBC_1.B1 = ( byte )( ( ( st_rteObcOut.st_CANValue.u8_OBC_PowerDeratingSta & 0x7U ) << 3U )
							 	 	 	 	 	 |( st_rteObcOut.st_CANValue.u8_OBC_OperatingMode & 0x7U ) );

	st_TxOBC_1.B2 = Get16BitLoByte( u16_realObcTemp );
	st_TxOBC_1.B3 = Get16BitHiByte( u16_realObcTemp );
	st_TxOBC_1.B4 = 0U;
	st_TxOBC_1.B5 = 0U;
	st_TxOBC_1.B6 = 0U;
	st_TxOBC_1.B7 = ( byte )( u8g_OBC_CRC );

	st_CAN_Tx_OBC_1.data[ 0 ] = Make32Bit( st_TxOBC_1.B3, st_TxOBC_1.B2, st_TxOBC_1.B1, st_TxOBC_1.B0 );
	st_CAN_Tx_OBC_1.data[ 1 ] = Make32Bit( st_TxOBC_1.B7, st_TxOBC_1.B6, st_TxOBC_1.B5, st_TxOBC_1.B4 );

	u8_Checksum_OBC1_Data[ 0 ] = Get32BitLoLoByte(  st_CAN_Tx_OBC_1.data[ 0 ] );
	u8_Checksum_OBC1_Data[ 1 ] = Get32BitLoHiByte(  st_CAN_Tx_OBC_1.data[ 0 ] );
	u8_Checksum_OBC1_Data[ 2 ] = Get32BitHiLoByte(  st_CAN_Tx_OBC_1.data[ 0 ] );
	u8_Checksum_OBC1_Data[ 3 ] = Get32BitHiHiByte(  st_CAN_Tx_OBC_1.data[ 0 ] );
	u8_Checksum_OBC1_Data[ 4 ] = Get32BitHiHiByte(  st_CAN_Tx_OBC_1.data[ 1 ] );

	u8g_OBC_CRC = Bsw_CRC8_Calc ( u8_Checksum_OBC1_Data, 5U );

	/*--------------------------------------------------------------------------*/
	Mcal_CanTransmit( OBC_1, &st_CAN_Tx_OBC_1, &stg_MulticanBasic.can0TxMsgObj_OBC_1 );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANTxOBCData_100ms_OBC_2( void )
{
	IfxMultican_Message st_CAN_Tx_OBC_2;
	st_CANType st_TxOBC_2 = { 0, };

	single f32_realObcAcInCur = ( Bsw_GET_OBC_ACInputCurr() * DEF_OBC_Curr_Scaling );
	word u16_realObcAcInCur = ( word )f32_realObcAcInCur;

	single f32_realObcAcInVol = ( Bsw_GET_OBC_ACInputVolt() * DEF_OBC_Volt_Scaling );
	word u16_realObcAcInVol = ( word )f32_realObcAcInVol;

	single f32_realObcOutCur = ( Bsw_GET_OBC_DCOutputCurr() * DEF_OBC_Curr_Scaling );
	word u16_realObcOutCur = ( word )f32_realObcOutCur;

	single f32_realObcOutVol = ( Bsw_GET_OBC_DCOutputVolt() * DEF_OBC_Volt_Scaling );
	word u16_realObcOutVol = ( word )f32_realObcOutVol;


	st_TxOBC_2.B0 = Get16BitLoByte( u16_realObcAcInCur );
	st_TxOBC_2.B1 = Get16BitHiByte( u16_realObcAcInCur );
	st_TxOBC_2.B2 = Get16BitLoByte( u16_realObcAcInVol );
	st_TxOBC_2.B3 = Get16BitHiByte( u16_realObcAcInVol );

	st_TxOBC_2.B4 = Get16BitLoByte( u16_realObcOutCur );
	st_TxOBC_2.B5 = Get16BitHiByte( u16_realObcOutCur );
	st_TxOBC_2.B6 = Get16BitLoByte( u16_realObcOutVol );
	st_TxOBC_2.B7 = Get16BitHiByte( u16_realObcOutVol );

	st_CAN_Tx_OBC_2.data[ 0 ] = Make32Bit ( st_TxOBC_2.B3, st_TxOBC_2.B2 , st_TxOBC_2.B1 , st_TxOBC_2.B0 );
	st_CAN_Tx_OBC_2.data[ 1 ] = Make32Bit ( st_TxOBC_2.B7, st_TxOBC_2.B6,  st_TxOBC_2.B5 , st_TxOBC_2.B4 );

	/*--------------------------------------------------------------------------*/
	Mcal_CanTransmit( OBC_2, &st_CAN_Tx_OBC_2, &stg_MulticanBasic.can0TxMsgObj_OBC_2 );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANTxLDCData_100ms_LDC_1( void )
{
	IfxMultican_Message st_CAN_Tx_LDC_1;
	st_CANType st_TxLDC_1 = { 0, };
	byte u8s_LdcOutputControlMode = 0U;
	byte u8s_LdcOperatingModeStatus = 0U;
	byte u8s_LdcReadyStatus = 0U;
	byte u8s_LdcProtecStatus = 0U;

	single f32_realLdcTempLPF_x10 = ( Bsw_GET_LDC_Temperature() * 10.0f );
	word u16_realLdcTempLPF_x10 = ( word )f32_realLdcTempLPF_x10;

	single f32_realLdcVoutLPF_x1 = ( Bsw_GET_LDC_DCOutputVolt() * 1.0f );
	single f32_realLdcIoutLPF_x1 = ( Bsw_GET_LDC_DCOutputCurr() * 1.0f );
	word u16_realLdcVoutLPF_x1 = ( word )f32_realLdcVoutLPF_x1;
	word u16_realLdcIoutLPF_x1 = ( word )f32_realLdcIoutLPF_x1;

	word u16_realLdcPowerLPF = ( word )( u16_realLdcVoutLPF_x1*u16_realLdcIoutLPF_x1 );
	byte u8_realLdcPowerLPF = ( byte )( u16_realLdcPowerLPF/50U );

	en_LDC_MODE_DEF canTxLdcModeStatus = st_rteLdcOut.st_CANValue.u8_ldc_mode;

	switch( canTxLdcModeStatus )
	{
	case LDC_MODE_READY :
		u8s_LdcProtecStatus = ( 0x1U ); /* HV not detected mode */
		u8s_LdcReadyStatus = ( 0x0U ); /* LDC not ready */
		break;

	case LDC_MODE_NORMAL :
		u8s_LdcProtecStatus = ( 0x3U ); /* LDC operating mode */
		u8s_LdcReadyStatus = ( 0x1U ); /* LDC ready */
		u8s_LdcOutputControlMode = ( 0x0U );
		break;

	case LDC_MODE_FAILURE :
		u8s_LdcProtecStatus = ( 0x4U );  /* LDC Error Mode */
		u8s_LdcReadyStatus = ( 0x0U ); /* LDC not ready */
		break;

	case LDC_MODE_FAULT :
		u8s_LdcProtecStatus = ( 0x4U ); /* LDC Error Mode */
		u8s_LdcReadyStatus = ( 0x0U ); /* LDC not ready */
		break;

	case LDC_MODE_DERATING :
		u8s_LdcProtecStatus = ( 0x3U);  /* LDC operating mode */
		u8s_LdcReadyStatus = ( 0x1U ); /* LDC ready */
		break;

	default :
		u8s_LdcProtecStatus = ( 0x0U ); /* Standby */
		u8s_LdcReadyStatus = ( 0x0U ); /* LDC not ready */
		break;
	}

	if( ( Bsw_GET_LDC_DCOutputCurr() > DIAG_FAIL_VALUE )
	 && ( Bsw_GET_LDC_DCOutputVolt() > DIAG_FAIL_VALUE ) )
	{
		st_TxLDC_1.B0 = ( byte )( u8_realLdcPowerLPF );
	}

	if( Bsw_GET_LDC_Temperature() > DIAG_FAIL_VALUE )
	{
		st_TxLDC_1.B1 = Get16BitLoByte( u16_realLdcTempLPF_x10 );
		st_TxLDC_1.B2 = Get16BitHiByte( u16_realLdcTempLPF_x10 );
	}

	st_TxLDC_1.B3 = ( byte )( ( u8s_LdcOperatingModeStatus & ( 0xFU ) ) << 4U );
	st_TxLDC_1.B4 = ( byte )u8s_LdcReadyStatus ;
	st_TxLDC_1.B5 = ( byte )u8s_LdcOutputControlMode;
	st_TxLDC_1.B6 = ( byte )u8s_LdcProtecStatus;
	st_TxLDC_1.B7 = ( byte )0U;

	st_CAN_Tx_LDC_1.data[ 0 ] = Make32Bit ( st_TxLDC_1.B3, st_TxLDC_1.B2, st_TxLDC_1.B1, st_TxLDC_1.B0 );
	st_CAN_Tx_LDC_1.data[ 1 ] = Make32Bit ( st_TxLDC_1.B7, st_TxLDC_1.B6, st_TxLDC_1.B5, st_TxLDC_1.B4 );

	/*--------------------------------------------------------------------------*/
	Mcal_CanTransmit ( LDC_1, &st_CAN_Tx_LDC_1, &stg_MulticanBasic.can0TxMsgObj_LDC_1 );
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
static void Bsw_CANTxLDCData_100ms_LDC_2( void )
{
	IfxMultican_Message st_CAN_Tx_LDC_2;
	st_CANType st_TxLDC_2 = { 0, };

	single f32_realLdcVinLPF_x10 = ( Bsw_GET_LDC_InputVolt() * 10.0f );

	single f32_realLdcIinLPF_x10 = ( Bsw_GET_LDC_InputCurr() * 10.0f );

	single f32_realLdcVoutLPF_x10 = ( Bsw_GET_LDC_DCOutputVolt() * 10.0f );
	single f32_realLdcIoutLPF_x10 = ( Bsw_GET_LDC_DCOutputCurr() * 10.0f );

  word u16_realLdcVinLPF_x10 = ( word )f32_realLdcVinLPF_x10;
	word u16_realLdcIinLPF_x10 = ( word )f32_realLdcIinLPF_x10;

	word u16_realLdcVoutLPF_x10 = ( word )f32_realLdcVoutLPF_x10;
	word u16_realLdcIoutLPF_x10 = ( word )f32_realLdcIoutLPF_x10;

	if( Bsw_GET_LDC_InputVolt() > DIAG_FAIL_VALUE )
	{
		st_TxLDC_2.B0 = Get16BitLoByte ( u16_realLdcVinLPF_x10 );
		st_TxLDC_2.B1 = Get16BitHiByte ( u16_realLdcVinLPF_x10 );

//		st_TxLDC_2.B0 = Get16BitLoByte ( (word)Iout_adc_test  );
//		st_TxLDC_2.B1 = Get16BitHiByte ( (word)Iout_adc_test  );
	}

	if( Bsw_GET_LDC_DCOutputVolt() > DIAG_FAIL_VALUE )
	{
		st_TxLDC_2.B2 = ( byte )( u16_realLdcVoutLPF_x10 ) & ( 0xFFU );
	}

	if( Bsw_GET_LDC_InputCurr() > DIAG_FAIL_VALUE )
	{
		st_TxLDC_2.B3 = ( byte )( u16_realLdcIinLPF_x10 ) & ( 0xFFU );
	}

	if( Bsw_GET_LDC_DCOutputCurr() > DIAG_FAIL_VALUE )
	{
		st_TxLDC_2.B4 = Get16BitLoByte ( u16_realLdcIoutLPF_x10 );
		st_TxLDC_2.B5 = Get16BitHiByte ( u16_realLdcIoutLPF_x10 );
	}

	st_CAN_Tx_LDC_2.data[ 0 ] = Make32Bit ( st_TxLDC_2.B3, st_TxLDC_2.B2, st_TxLDC_2.B1, st_TxLDC_2.B0 );
	st_CAN_Tx_LDC_2.data[ 1 ] = Make32Bit ( st_TxLDC_2.B7, st_TxLDC_2.B6, st_TxLDC_2.B5, st_TxLDC_2.B4 );

	/*--------------------------------------------------------------------------*/
	Mcal_CanTransmit ( LDC_2, &st_CAN_Tx_LDC_2, &stg_MulticanBasic.can0TxMsgObj_LDC_2 );
}
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
