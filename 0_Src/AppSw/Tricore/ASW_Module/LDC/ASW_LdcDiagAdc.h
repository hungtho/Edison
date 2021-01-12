/*
                             *******************
******************************* C HEADER FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : ASW_LdcDiagAdc.h                                            **
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

#ifndef ASW_LDCDIAGADC_INCLUDED
#define ASW_LDCDIAGADC_INCLUDED

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "ASW_LdcDiagAdc.h"
#include "ASW_LdcConfig.h"
#include "Rte_Typedef.h"

/****************************************************************************/
/**                                                                        **/
/**                      DEFINITIONS AND MACROS                            **/
/**                                                                        **/
/****************************************************************************/
#define MAX_FLT_CNT		( 500U )
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

# ifndef ASW_LDCDIAGADC_C_SRC
# endif

/****************************************************************************/
/**                                                                        **/
/**                      EXPORTED FUNCTIONS                                **/
/**                                                                        **/
/****************************************************************************/
extern void Asw_Ldc_AdcInit ( void );
extern void Asw_Ldc_DiagAdcValues ( st_DiagnosisType *stp_DiagFlags, const st_RealValuesType *stp_adcValues );
extern en_STATE_DEF Asw_Adc_NormalMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_UnderMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_OverMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealValue );
extern en_STATE_DEF Asw_Adc_TempNormalMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp );
extern en_STATE_DEF Asw_Adc_TempFaultMode ( st_AdcLimitValue *stp_Limit, single f32_adcRealTemp );

#endif

/****************************************************************************/
/**                                                                        **/
/**                      EOF                                               **/
/**                                                                        **/
/****************************************************************************/
