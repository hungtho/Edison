/*
                             *******************
******************************* C SOURCE FILE ********************************
**                           *******************                            **
**                                                                          **
**  Project   : Edison                                                      **
**  Filename  : Rte_ApiIn.c                                                 **
**  Version   : -.- (PCB : )                                                **
**  Date      : 2020.07.29                                                  **
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

#define RTE_APIIN_C_SRC

/****************************************************************************/
/**                                                                        **/
/**                      MODULES USED                                      **/
/**                                                                        **/
/****************************************************************************/
#include "Rte_ApiIn.h"
#include "BSW_Adc.h"
#include "BSW_Can.h"

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
st_RteIn_Ldc st_rteLdcIn;
st_RteIn_Obc st_rteObcIn;

/****************************************************************************/
/**                                                                        **/
/**                      GLOBAL VARIABLES                                  **/
/**                                                                        **/
/****************************************************************************/
#if TEST_LDC_VARIABLE
single testIin = 0;
single testVin = 400;
single testIout = 0;
single testVout = 14;
single testTemp = 26 + 40;
single testBplus = 14;
#endif

#if TEST_OBC_VARIABLE
single testObcIin = 0;
single testObcVin = 200;
single testObcIout = 10.0;
single testObcVout = 300.0;
single testObcTemp = 26 + 40;
single testObcBplus = 14;
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
/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_LDC_IN ( void )
{
#if TEST_LDC_VARIABLE
	st_rteLdcIn.st_RealValue.f32_InputCurrent = testIin;
	st_rteLdcIn.st_RealValue.f32_InputVoltage = testVin;
	st_rteLdcIn.st_RealValue.f32_OutputCurrent = testIout;
	st_rteLdcIn.st_RealValue.f32_OutputVoltage = testVout;
	st_rteLdcIn.st_RealValue.f32_Temperature = testTemp;
	st_rteLdcIn.st_RealValue.f32_BatteryVoltage = testBplus;

	st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable = Bsw_GET_VcuCmdEnLdc ();
	st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt = Bsw_GET_VcuCmdLdcTargetVolt();
#else
	/* update Ldc Real values */
	st_rteLdcIn.st_RealValue.f32_BatteryVoltage = Bsw_GET_LDC_BattVolt ();
	st_rteLdcIn.st_RealValue.f32_InputCurrent = Bsw_GET_LDC_InputCurr ();
	st_rteLdcIn.st_RealValue.f32_InputVoltage = Bsw_GET_LDC_InputVolt ();
	st_rteLdcIn.st_RealValue.f32_OutputCurrent = Bsw_GET_LDC_DCOutputCurr ();
	st_rteLdcIn.st_RealValue.f32_OutputVoltage = Bsw_GET_LDC_DCOutputVolt ();
	st_rteLdcIn.st_RealValue.f32_Temperature = Bsw_GET_LDC_Temperature ();

	st_rteLdcIn.st_CANValue.u8_VcuCmdLdc_Enable = Bsw_GET_VcuCmdEnLdc ();
	st_rteLdcIn.st_CANValue.f32_VcuCmdLdc_TargetVolt = Bsw_GET_VcuCmdLdcTargetVolt();
	st_rteLdcIn.st_CANValue.u8_canBusoffStatus = Bsw_GET_CanBusOff ();
	st_rteLdcIn.st_CANValue.u8_canTimeoutStatus = Bsw_GET_Ldc_CanTimeout ();
#endif
}

/*--------------------------------------------------------------------------*/
/* Function  |                                                              */
/* Name      |                                                              */
/*--------------------------------------------------------------------------*/
/* Parameter | Nothing                                                      */
/* Return    | Nothing                                                      */
/*--------------------------------------------------------------------------*/
void RTE_OBC_IN ( void )
{
#if TEST_OBC_VARIABLE
	st_rteObcIn.st_RealValue.f32_InputCurrent = testObcIin;
	st_rteObcIn.st_RealValue.f32_InputVoltage = testObcVin;
	st_rteObcIn.st_RealValue.f32_OutputCurrent = testObcIout;
	st_rteObcIn.st_RealValue.f32_OutputVoltage = testObcVout;
	st_rteObcIn.st_RealValue.f32_Temperature = testObcTemp;
	st_rteObcIn.st_RealValue.f32_BatteryVoltage = testObcBplus;

	/* CANRxData100ms_BMS1_OBC */
	st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr = Bsw_GET_Bms_ObcCmdCurr ();
	st_rteObcIn.st_CANValue.f32_Bms_ObcCmdVoltage = Bsw_GET_Bms_ObcCmdVoltage ();
	st_rteObcIn.st_CANValue.u8_Bms_ACChargeCapacity = Bsw_GET_Bms_ACChargingReady ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdEnOBC = Bsw_GET_BMS_OBC_CmdEnable ();
	st_rteObcIn.st_CANValue.u8_Bms_HWTestMode = Bsw_GET_Bms_HWTestMode ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdPFC_Enable = Bsw_GET_BMS_OBC_CmdPfc_Enable ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdRelay = Bsw_GET_BMS_OBC_CmdRelay ();

	/* CANRxData100ms_BMS2_OBC */
	st_rteObcIn.st_CANValue.u8_Bms_ACPP = Bsw_GET_Bms_ACPP ();
	st_rteObcIn.st_CANValue.u8_Bms_ACCP = Bsw_GET_Bms_ACCP ();

	/* CANRxData100ms_BMS2 */
	st_rteObcIn.st_CANValue.u8_Bms_ChargeEnd = Bsw_GET_Bms_ChargeEnd ();

	/* CANRxData100ms_BMS10 */
	st_rteObcIn.st_CANValue.u8_Bms_ChargeMode = Bsw_GET_Bms_ChargeMode ();

	st_rteObcIn.st_CANValue.u8_canBusoffStatus = Bsw_GET_CanBusOff ();
	st_rteObcIn.st_CANValue.u8_canTimeoutStatus = Bsw_GET_Obc_CanTimeout ();

#else
	/* update Ldc Real values */
	st_rteObcIn.st_RealValue.f32_BatteryVoltage = Bsw_GET_OBC_AuxInVolt ();
	st_rteObcIn.st_RealValue.f32_InputCurrent = Bsw_GET_OBC_ACInputCurr ();
	st_rteObcIn.st_RealValue.f32_InputVoltage = Bsw_GET_OBC_ACInputVolt ();
	st_rteObcIn.st_RealValue.f32_OutputCurrent = Bsw_GET_OBC_DCOutputCurr ();
	st_rteObcIn.st_RealValue.f32_OutputVoltage = Bsw_GET_OBC_DCOutputVolt ();
	st_rteObcIn.st_RealValue.f32_Temperature = Bsw_GET_OBC_Temperature ();

	/* CANRxData100ms_BMS1_OBC */
	st_rteObcIn.st_CANValue.f32_Bms_ObcCmdCurr = Bsw_GET_Bms_ObcCmdCurr ();
	st_rteObcIn.st_CANValue.f32_Bms_ObcCmdVoltage = Bsw_GET_Bms_ObcCmdVoltage ();
	st_rteObcIn.st_CANValue.u8_Bms_ACChargeCapacity = Bsw_GET_Bms_ACChargingReady ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdEnOBC = Bsw_GET_BMS_OBC_CmdEnable ();
	st_rteObcIn.st_CANValue.u8_Bms_HWTestMode = Bsw_GET_Bms_HWTestMode ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdPFC_Enable = Bsw_GET_BMS_OBC_CmdPfc_Enable ();
	st_rteObcIn.st_CANValue.u8_BmsObcCmdRelay = Bsw_GET_BMS_OBC_CmdRelay ();

	/* CANRxData100ms_BMS2_OBC */
	st_rteObcIn.st_CANValue.u8_Bms_ACPP = Bsw_GET_Bms_ACPP ();
	st_rteObcIn.st_CANValue.u8_Bms_ACCP = Bsw_GET_Bms_ACCP ();

	/* CANRxData100ms_BMS2 */
	st_rteObcIn.st_CANValue.u8_Bms_ChargeEnd = Bsw_GET_Bms_ChargeEnd ();

	/* CANRxData100ms_BMS10 */
	st_rteObcIn.st_CANValue.u8_Bms_ChargeMode = Bsw_GET_Bms_ChargeMode ();

	st_rteObcIn.st_CANValue.u8_canBusoffStatus = Bsw_GET_CanBusOff ();
	st_rteObcIn.st_CANValue.u8_canTimeoutStatus = Bsw_GET_Obc_CanTimeout ();
#endif
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
