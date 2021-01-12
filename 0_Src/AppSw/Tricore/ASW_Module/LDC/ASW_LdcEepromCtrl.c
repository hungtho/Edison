/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcEepromCtrl.c                                         **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.05.29                                                  **
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

#define ASW_LDCEEPROMCTRL_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_Typedef.h"
#include "ASW_LdcEepromCtrl.h"
#include "ASW_LdcDtcCodeMng.h"
#include "BSW_Defines.h"
#include "../../BSW_Module/Drivers/Mcal_DFlash.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define EEPROM_WRITE_BYTE_SIZE		( 0x10U )

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
static byte FindLastAddr ( void );

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
static byte u8s_EepromData[ 16 ];
static dword u32s_EepromCurAddr;

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
void Asw_Ldc_EepromInit ( void )
{
	dword u32_ReadAddr;

	if( FindLastAddr () != 1U ) /* not All erased */
	{
		u32_ReadAddr = u32s_EepromCurAddr - EEPROM_WRITE_BYTE_SIZE;

		Mcal_DFlashRead ( u32_ReadAddr, 2U,  u8s_EepromData );

		Asw_Write_DTC_Sts ( 0U, u8s_EepromData[ 0 ] );
		Asw_Write_DTC_Sts ( 1U, u8s_EepromData[ 1 ] );
		Asw_Write_DTC_Sts ( 2U, u8s_EepromData[ 2 ] );
		Asw_Write_DTC_Sts ( 3U, u8s_EepromData[ 3 ] );

		Asw_Write_DTC_Sts ( 4U, u8s_EepromData[ 4 ] );
		Asw_Write_DTC_Sts ( 5U, u8s_EepromData[ 5 ] );
		Asw_Write_DTC_Sts ( 6U, u8s_EepromData[ 6 ] );
		Asw_Write_DTC_Sts ( 7U, u8s_EepromData[ 7 ] );

		Asw_Write_DTC_Sts ( 8U, u8s_EepromData[ 8 ] );
		Asw_Write_DTC_Sts ( 9U, u8s_EepromData[ 9 ] );
	}
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Asw_Ldc_EepromCtrl ( void )
{
	static byte u8s_EepromWriteCnt = 0U;
	byte u8_Cnt;
	byte u8_EepromWriteFlag = 0U;
	byte u8_EepromBuf[ 16 ];

	u8_EepromBuf[ 0 ] = Asw_Read_DTC_Sts ( 0U );
	u8_EepromBuf[ 1 ] = Asw_Read_DTC_Sts ( 1U );
	u8_EepromBuf[ 2 ] = Asw_Read_DTC_Sts ( 2U );
	u8_EepromBuf[ 3 ] = Asw_Read_DTC_Sts ( 3U );
	u8_EepromBuf[ 4 ] = Asw_Read_DTC_Sts ( 4U );
	u8_EepromBuf[ 5 ] = Asw_Read_DTC_Sts ( 5U );
	u8_EepromBuf[ 6 ] = Asw_Read_DTC_Sts ( 6U );
	u8_EepromBuf[ 7 ] = Asw_Read_DTC_Sts ( 7U );
	u8_EepromBuf[ 8 ] = Asw_Read_DTC_Sts ( 8U );
	u8_EepromBuf[ 9 ] = Asw_Read_DTC_Sts ( 9U );

	for( u8_Cnt = 0U; u8_Cnt < DTC_MAX_NUM; u8_Cnt++ )
	{
		if( u8s_EepromData[ u8_Cnt ] != u8_EepromBuf[ u8_Cnt ] )
		{
			u8s_EepromData[ u8_Cnt ] = u8_EepromBuf[ u8_Cnt ];

			u8_EepromWriteFlag = 1U;
		}
	}

	if( u8_EepromWriteFlag == 1U )
	{
		u8s_EepromWriteCnt++;

		u8s_EepromData[ 15 ] = u8s_EepromWriteCnt;

		if( u32s_EepromCurAddr >= DATA_FLASH_SEC_3 ){ u32s_EepromCurAddr = DATA_FLASH_SEC_0; }

		( void )Mcal_DFlashWrite ( u32s_EepromCurAddr, 2U, u8s_EepromData );
		u32s_EepromCurAddr += EEPROM_WRITE_BYTE_SIZE;

		switch( u32s_EepromCurAddr )
		{
			case 0xAF000010U:
				( void )Mcal_DFlashErase ( 2U );
				break;
			case 0xAF002010U:
				( void )Mcal_DFlashErase ( 0U );
				break;
			case 0xAF004010U:
				( void )Mcal_DFlashErase ( 1U );
				break;
			default:
				break;
		}
	}
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
static byte FindLastAddr ( void )
{
	byte u8_FindCurAddr = 0U;
	byte u8_AllErased = 0U;
	byte u8_readbuffer[16];
	dword u32_CurAddr = DATA_FLASH_SEC_0;
	dword u32_readdata = 1U;

	Mcal_DFlashRead ( u32_CurAddr, 2U, u8_readbuffer );
	u32_readdata = Make32Bit( u8_readbuffer[15], u8_readbuffer[14], u8_readbuffer[13], u8_readbuffer[12] );

	if( u32_readdata == 0x00000000U )
	{
		u32_CurAddr = DATA_FLASH_SEC_1;
		Mcal_DFlashRead ( u32_CurAddr, 2U, u8_readbuffer );
		u32_readdata = Make32Bit( u8_readbuffer[15], u8_readbuffer[14], u8_readbuffer[13], u8_readbuffer[12] );

		if( u32_readdata == 0x00000000U )
		{
			u32_CurAddr = DATA_FLASH_SEC_2;
			Mcal_DFlashRead ( u32_CurAddr, 2U, u8_readbuffer );
			u32_readdata = Make32Bit( u8_readbuffer[15], u8_readbuffer[14], u8_readbuffer[13], u8_readbuffer[12] );

			if( u32_readdata == 0x00000000U )
			{
				u32_CurAddr = DATA_FLASH_SEC_0; /* Data-Flash all erased */
				u8_AllErased = TRUE;
			}
		}
	}

	if( u8_AllErased == uFALSE )
	{
		do
		{
			Mcal_DFlashRead ( u32_CurAddr, 2U, u8_readbuffer );
			u32_readdata = Make32Bit( u8_readbuffer[15], u8_readbuffer[14], u8_readbuffer[13], u8_readbuffer[12] );

			if( u32_readdata == 0x00000000U )
			{
				u8_FindCurAddr = TRUE;
			}
			else
			{
				u32_CurAddr += 0x10U;
			}
		}while( u8_FindCurAddr == uFALSE );
	}

	u32s_EepromCurAddr = u32_CurAddr;


	return ( u8_AllErased );
}
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
