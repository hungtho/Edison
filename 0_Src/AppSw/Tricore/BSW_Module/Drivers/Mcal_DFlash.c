/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_DFlash.c                                               **
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

#define MCAL_DFLASH_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "IfxCpu.h"
#include "../Drivers/Mcal_DFlash.h"
#include "IfxFlash.h"

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
st_DFlash sts_Dflash;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/

/*--------------------------------------------------------------------------*/
/* Function  | DataFlash_init                                               */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_DFlashInit ( void )
{
	/* Initialise the D Flash global data */
	/* Sector is 0 ~ 15 / Sector Size is 8Kbyte*/
	sts_Dflash.sector        = DFLASH_SECTOR_NO;
	/* Page is 0 ~ 15 Page Page is 1024byte*/
	sts_Dflash.startPage     = DFLASH_START_PAGE;
	sts_Dflash.numberOfPages = DFLASH_NO_OF_PAGES;
	sts_Dflash.flashType     = IfxFlash_FlashType_D0;
}

/*--------------------------------------------------------------------------*/
/* Function  | DFlashErase                                                  */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | dword u32_sector_num                                        */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void Mcal_DFlashErase ( dword u32_sector_num )
{
	word u16_endinitSfty_pw = 0U;
	dword u32_sector_addr = 0U;
	dword u32_flash       = 0;

	dword u32_tmp = u32_sector_num;

	if( u32_tmp > (dword) DFLASH_NO_OF_PAGES )
	{
		u32_tmp = (dword) DFLASH_NO_OF_PAGES;
	}

	u32_sector_addr = IfxFlash_dFlashTableEepLog[ u32_tmp ].start;

	u16_endinitSfty_pw = IfxScuWdt_getSafetyWatchdogPassword ();

/* erase program flash */
	IfxScuWdt_clearSafetyEndinit ( u16_endinitSfty_pw );
	IfxFlash_eraseSector ( u32_sector_addr );
	IfxScuWdt_setSafetyEndinit ( u16_endinitSfty_pw );

	/* wait until unbusy */
	if( IfxFlash_waitUnbusy ( u32_flash, sts_Dflash.flashType ) == 0U ){};
}

/*-----------------------------------------------------------------------------------------------------*/
/* Function  | DFlashWrite                                                                             */
/* Name      |                                                                                         */
/*-----------------------------------------------------------------------------------------------------*/
/* Parameter | dword u32_sector_num, dword u32_start_page, dword u32_no_of_pages, byte_t *u8p_data */
/* Return    | Nothing                                                                                 */
/*-----------------------------------------------------------------------------------------------------*/
void Mcal_DFlashWrite ( dword u32_curAddr, dword u32_no_of_pages, const byte *u8p_data )
{
	dword u32_flash = 0U;
	dword u32_page = 0U;
	dword u32_wordL = 0U;
	dword u32_wordH = 0U;
	word u16_endinitSfty_pw = 0U;
	dword u32_dataLength = 0U;
	dword u32_pageAddr;

	byte u8_tmp;

	u16_endinitSfty_pw = IfxScuWdt_getSafetyWatchdogPassword ();

	/* wait until unbusy */
	u8_tmp = IfxFlash_waitUnbusy ( u32_flash, sts_Dflash.flashType );

	sts_Dflash.numberOfPages = u32_no_of_pages;

	/* program the given no of pages */
	for( u32_page = sts_Dflash.startPage; u32_page < sts_Dflash.numberOfPages; ++u32_page )
	{
		u32_wordH = ( ( dword )u8p_data[ u32_dataLength + 7U ] << 24U ) + ( ( dword )u8p_data[ u32_dataLength + 6U ] << 16U ) + ( ( dword )u8p_data[ u32_dataLength+5U ] << 8U ) + ( ( dword )u8p_data[ u32_dataLength + 4U ] );
		u32_wordL = ( ( dword )u8p_data[ u32_dataLength + 3U ] << 24U ) + ( ( dword)u8p_data[ u32_dataLength + 2U ] << 16U ) + ( ( dword )u8p_data[ u32_dataLength+1U ] << 8U ) + (( dword )u8p_data[ u32_dataLength ] );

		u32_pageAddr = u32_curAddr + ( u32_page * IFXFLASH_DFLASH_PAGE_LENGTH);

    /* Enter in page mode */
    IfxFlash_enterPageMode ( u32_pageAddr );
		/* wait until unbusy */
		u8_tmp = IfxFlash_waitUnbusy ( u32_flash, sts_Dflash.flashType );
		if( u8_tmp == 0U ){}

		/* write page */
		IfxFlash_loadPage2X32 ( u32_pageAddr, u32_wordL, u32_wordH );
		IfxScuWdt_clearSafetyEndinit ( u16_endinitSfty_pw );
		IfxFlash_writePage ( u32_pageAddr );
		IfxScuWdt_setSafetyEndinit ( u16_endinitSfty_pw );

		u32_dataLength += IFXFLASH_DFLASH_PAGE_LENGTH;

		/* wait until unbusy */
		u8_tmp = IfxFlash_waitUnbusy ( u32_flash, sts_Dflash.flashType );
		if( u8_tmp == 0U ){}
	}
}

/*-----------------------------------------------------------------------------------------------------*/
/* Function  | DFlashRead                                                                              */
/* Name      |                                                                                         */
/*-----------------------------------------------------------------------------------------------------*/
/* Parameter | dword u32_sector_num, dword u32_start_page, dword u32_no_of_pages, byte_t *u8p_data */
/* Return    | Nothing                                                                                 */
/*-----------------------------------------------------------------------------------------------------*/
void Mcal_DFlashRead ( dword u32_Addr, dword u32_no_of_pages, byte *u8p_data )
{
	dword u32_index = 0U;
	dword u32_page = 0U;
	dword u32_sector_addr = 0U;

	u32_sector_addr = u32_Addr;

	sts_Dflash.numberOfPages = u32_no_of_pages;

	for (u32_page = sts_Dflash.startPage; u32_page < sts_Dflash.numberOfPages; ++u32_page)
	{
		dword u32_pageAddr = u32_sector_addr + ( u32_page * IFXFLASH_DFLASH_PAGE_LENGTH );

		const volatile byte *u8p_DFlashdata     = ( byte *)u32_pageAddr;
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 0 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 1 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 2 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 3 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 4 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 5 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 6 ];
		u8p_data[ u32_index++ ] = u8p_DFlashdata[ 7 ];
	}
}

/****************************************************************************/
/**                                                                        **/
/**                      LOCAL FUNCTIONS                                   **/
/**                                                                        **/
/****************************************************************************/
/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
