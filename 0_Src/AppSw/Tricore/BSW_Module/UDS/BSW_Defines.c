/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : BSW_Defines         				                                **
**  Filename  : BSW_Defines.c				                                        **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2019.03.11                                                  **
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
Revised by  : Im, Hong Kyun
Description : Original version.

*/

#define BSW_DEFINES_C_SRC

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

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/

/*--------------------------------------------------------------------------*/
/* Function  | Count up                                                     */
/* Name      | U8_CountUp                                               		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u8_Count, u8_Max                                             */
/* Return    | u8_Count                                                     */
/*--------------------------------------------------------------------------*/
byte U8_CountUp ( byte u8_Count, byte u8_Max )
{
	if( u8_Count < u8_Max )
	{
		u8_Count++;
	}
	
	return ( u8_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Count down                                                   */
/* Name      | U8_CountDown                                             		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u8_Count                                                     */
/* Return    | u8_Count                                                     */
/*--------------------------------------------------------------------------*/
byte U8_CountDown ( byte u8_Count )
{
	if( u8_Count > u8g_CLR )
	{
		u8_Count--;
	}
	
	return ( u8_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Count up                                                     */
/* Name      | U16_CountUp                                              		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u16_Count, u16_Max                                           */
/* Return    | u16_Count                                                    */
/*--------------------------------------------------------------------------*/
word U16_CountUp ( word u16_Count, word u16_Max )
{
	if( u16_Count < u16_Max )
	{
		u16_Count++;
	}
	
	return ( u16_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Count down                                                   */
/* Name      | U16_CountDown                                            		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u16_Count, u16_Max                                           */
/* Return    | u16_Count                                                    */
/*--------------------------------------------------------------------------*/
word U16_CountDown ( word u16_Count )
{
	if( u16_Count > u16g_CLR )
	{
		u16_Count--;
	}
	
	return ( u16_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Count up                                                     */
/* Name      | U32_CountUp                                              		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u32_Count, u32_Max                                           */
/* Return    | u32_Count                                                    */
/*--------------------------------------------------------------------------*/
dword U32_CountUp ( dword u32_Count, dword u32_Max )
{
	if( u32_Count < u32_Max )
	{
		u32_Count++;
	}
	
	return ( u32_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Count down                                                   */
/* Name      | U32_CountDown                                            		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u32_Count, u32_Max                                           */
/* Return    | u32_Count                                                    */
/*--------------------------------------------------------------------------*/
dword U32_CountDown ( dword u32_Count )
{
	if( u32_Count > u32g_CLR )
	{
		u32_Count--;
	}
	
	return ( u32_Count );
}

/*--------------------------------------------------------------------------*/
/* Function  | Detect edge state                                            */
/* Name      | DetectEdgeState                                          		*/
/*--------------------------------------------------------------------------*/
/* Parameter | u8_NowValue, *u8p_LastValue                                  */
/* Return    | u8_EdgeSts                                                   */
/*--------------------------------------------------------------------------*/
byte DetectEdgeState ( byte u8_NowValue, byte *u8p_LastValue )
{
  byte u8_EdgeSts = NO_EDGE;
  
  if( u8_NowValue != ( *u8p_LastValue ) )
  {
    if( u8_NowValue != u8g_CLR )
    {
      u8_EdgeSts = HI_EDGE;
    }
    else
    {
      u8_EdgeSts = LO_EDGE;
    }
    
    *u8p_LastValue = u8_NowValue;
  }
  
  return ( u8_EdgeSts );
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
