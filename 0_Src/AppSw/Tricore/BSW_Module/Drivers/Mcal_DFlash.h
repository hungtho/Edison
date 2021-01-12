/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_DFlash.h                                               **
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

#ifndef MCAL_DFLASH_INCLUDED
#define MCAL_DFLASH_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Ifx_Types.h"
#include "IfxFlash_cfg.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define DFLASH_SECTOR_NO   					( 0 )             /*  \brief D Flash Sector to be erased & Programmed */
#define DFLASH_START_PAGE  					( 0 )             /*  \brief D Flash Programming starts from this page */
#define DFLASH_NO_OF_PAGES 					( 16 )            /*  \brief D Flash - No of pages to be programmed */

#define DFLASH_STARTING_ADDRESS     ( 0xAF000000U )               /* Address of the DFLASH where the data is written  */

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	dword             sector;              /**< \brief Flash sector to be erased & programmed */
	dword             startPage;           /**< \brief Page from which programming starts */
	dword             numberOfPages;       /**< \brief No of pages to be programmed */
	IfxFlash_FlashType flashType;           /**< \brief Flash type ussed for the erase/program */
} st_DFlash;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef MCAL_DFLASH_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_DFlashInit ( void );
extern void Mcal_DFlashErase ( dword u32_sector_num );
extern void Mcal_DFlashWrite ( dword u32_pageAddr, dword u32_no_of_pages, const byte *u8p_data );
extern void Mcal_DFlashRead ( dword u32_Addr, dword u32_no_of_pages, byte *u8p_data );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
