/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Spi.h                                                  **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.06.10                                                  **
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

#ifndef MCAL_SPI_INCLUDED
#define MCAL_SPI_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include <Ifx_Types.h>
#include "IfxQspi_SpiMaster.h"
#include "IfxQspi_SpiSlave.h"
#include "BSW_Defines.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define SPI_BUFFER_SIZE 2   /**< \brief Tx/Rx Buffer size */

#define QSPI3_			((Ifx_QSPI *)(void *)&MODULE_QSPI3)

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/
typedef struct
{
	byte spi3TxBuffer[ SPI_BUFFER_SIZE ];                   /**< \brief Qspi0 Transmit buffer */
	byte spi3RxBuffer[ SPI_BUFFER_SIZE ];                   /**< \brief Qspi0 receive buffer */
} st_QspiBuffer;

typedef struct
{
	st_QspiBuffer qspiBuffer;                       /**< \brief Qspi buffer */
	struct
	{
		IfxQspi_SpiMaster         spiMaster;        	/**< \brief Spi Master handle */
		IfxQspi_SpiMaster_Channel spiMasterChannel; 	/**< \brief Spi Master Channel handle */
		IfxQspi_SpiSlave          spiSlave;         	/**< \brief Spi Slave handle */
	}drivers;
} st_Qspi;

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef MCAL_SPI_C_SRC
# endif
extern st_Qspi stg_Qspi; /**< \brief Qspi global data */

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_Qspi_Init ( void );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
