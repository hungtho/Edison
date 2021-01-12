/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Mcal_Gpio.h                                                 **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.03.26                                                  **
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

#ifndef MCAL_GPIO_INCLUDED
#define MCAL_GPIO_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "IfxPort_reg.h"
#include "IfxPort.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
/* Generic port I/O configuration */

#define IFXCFG_P00_0_IO_CONFIG            { &IfxPort_P00_0, IfxPort_Mode_inputNoPullDevice, IfxPort_PadDriver_cmosAutomotiveSpeed1 }
#define IFXCFG_P02_0_IO_CONFIG            { &IfxPort_P02_0, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P02_1_IO_CONFIG            { &IfxPort_P02_1, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P02_2_IO_CONFIG            { &IfxPort_P02_2, IfxPort_Mode_inputNoPullDevice, IfxPort_PadDriver_cmosAutomotiveSpeed1 }
#define IFXCFG_P02_6_IO_CONFIG            { &IfxPort_P02_6, IfxPort_Mode_inputNoPullDevice, IfxPort_PadDriver_cmosAutomotiveSpeed1 }
#define IFXCFG_P02_7_IO_CONFIG            { &IfxPort_P02_7, IfxPort_Mode_inputNoPullDevice, IfxPort_PadDriver_cmosAutomotiveSpeed1 }
#define IFXCFG_P15_7_IO_CONFIG            { &IfxPort_P15_7, IfxPort_Mode_inputNoPullDevice, IfxPort_PadDriver_cmosAutomotiveSpeed1 }
#define IFXCFG_P00_1_IO_CONFIG            { &IfxPort_P00_1, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P00_2_IO_CONFIG            { &IfxPort_P00_2, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P00_3_IO_CONFIG            { &IfxPort_P00_3, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P00_4_IO_CONFIG            { &IfxPort_P00_4, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P00_5_IO_CONFIG            { &IfxPort_P00_5, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }
#define IFXCFG_P00_6_IO_CONFIG            { &IfxPort_P00_6, IfxPort_Mode_outputPushPullGeneral, IfxPort_PadDriver_cmosAutomotiveSpeed4 }

/****************************************************************************/
/**                                                                        **/
/**                      TYPEDEFS AND STRUCTURES                           **/
/**                                                                        **/
/****************************************************************************/

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED VARIABLES                                **/
/**                                                                        **/
/****************************************************************************/

# ifndef MCAL_GPIO_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Mcal_GpioInit ( void );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
