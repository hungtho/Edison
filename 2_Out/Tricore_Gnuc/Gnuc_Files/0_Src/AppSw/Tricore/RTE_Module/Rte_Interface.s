	.file	"Rte_Interface.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RTE_OBC_UPDATE_CAN_RX,"ax",@progbits
	.align 1
	.type	RTE_OBC_UPDATE_CAN_RX, @function
RTE_OBC_UPDATE_CAN_RX:
.LFB562:
	.file 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_Interface.c"
	.loc 1 423 0
	.loc 1 424 0
	call	Bsw_CANRxOBCData_100ms
.LVL0:
	.loc 1 426 0
	movh.a	%a15, hi:u16g_Obc_CanTimeoutCnt
	ld.hu	%d15, [%a15] lo:u16g_Obc_CanTimeoutCnt
	ge.u	%d2, %d15, 50
	jz	%d2, .L5
	.loc 1 433 0
	mov	%d15, 4
	movh.a	%a15, hi:u8g_Obc_CanTimeout
	st.b	[%a15] lo:u8g_Obc_CanTimeout, %d15
	ret
.L5:
	.loc 1 428 0
	add	%d15, 1
	st.h	[%a15] lo:u16g_Obc_CanTimeoutCnt, %d15
	.loc 1 429 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_Obc_CanTimeout
	st.b	[%a15] lo:u8g_Obc_CanTimeout, %d15
	ret
.LFE562:
	.size	RTE_OBC_UPDATE_CAN_RX, .-RTE_OBC_UPDATE_CAN_RX
.section .text.RTE_BSW_Init,"ax",@progbits
	.align 1
	.global	RTE_BSW_Init
	.type	RTE_BSW_Init, @function
RTE_BSW_Init:
.LFB546:
	.loc 1 125 0
	.loc 1 126 0
	call	Mcal_GpioInit
.LVL1:
	.loc 1 127 0
	call	Mcal_Obc_GtmTimInit
.LVL2:
	.loc 1 128 0
	call	Mcal_GtmTomInit
.LVL3:
	.loc 1 129 0
	call	Mcal_StmInit
.LVL4:
	.loc 1 131 0
	call	Mcal_MulticanInit
.LVL5:
	.loc 1 132 0
	call	Mcal_MulticanObjCfg
.LVL6:
	.loc 1 134 0
	call	Mcal_Ldc_VadcInit
.LVL7:
	.loc 1 135 0
	call	Mcal_Obc_VadcInit
.LVL8:
	.loc 1 136 0
	call	Mcal_DFlashInit
.LVL9:
	.loc 1 137 0
	call	Mcal_Smu_Init
.LVL10:
	.loc 1 139 0
	call	Bsw_CRC8_Init
.LVL11:
	.loc 1 140 0
	call	Bsw_AdcInit
.LVL12:
	.loc 1 141 0
	call	Bsw_UdsFunc_Init
.LVL13:
	.loc 1 142 0
	call	Bsw_TpFunc_Init
.LVL14:
	.loc 1 144 0
	j	Asw_Ldc_EepromInit
.LVL15:
.LFE546:
	.size	RTE_BSW_Init, .-RTE_BSW_Init
.section .text.RTE_LDC_ASW_Init,"ax",@progbits
	.align 1
	.global	RTE_LDC_ASW_Init
	.type	RTE_LDC_ASW_Init, @function
RTE_LDC_ASW_Init:
.LFB547:
	.loc 1 155 0
	.loc 1 156 0
	j	Asw_Ldc_Init
.LVL16:
.LFE547:
	.size	RTE_LDC_ASW_Init, .-RTE_LDC_ASW_Init
.section .text.RTE_OBC_ASW_Init,"ax",@progbits
	.align 1
	.global	RTE_OBC_ASW_Init
	.type	RTE_OBC_ASW_Init, @function
RTE_OBC_ASW_Init:
.LFB548:
	.loc 1 167 0
	.loc 1 168 0
	call	Asw_Obc_Init
.LVL17:
	.loc 1 169 0
	mov	%d4, 12
	mov	%d5, 1
	j	Bsw_Set_GpioWrite
.LVL18:
.LFE548:
	.size	RTE_OBC_ASW_Init, .-RTE_OBC_ASW_Init
.section .text.RTE_LDC_TASK_100us,"ax",@progbits
	.align 1
	.global	RTE_LDC_TASK_100us
	.type	RTE_LDC_TASK_100us, @function
RTE_LDC_TASK_100us:
.LFB550:
	.loc 1 207 0
.LBB20:
.LBB21:
	.loc 1 447 0
	movh.a	%a15, hi:st_rteLdcOut
	lea	%a15, [%a15] lo:st_rteLdcOut
.LBE21:
.LBE20:
	.loc 1 208 0
	call	Bsw_Ldc_Vadc0Start
.LVL19:
	.loc 1 209 0
	call	Bsw_Ldc_Vadc0Scan
.LVL20:
	.loc 1 211 0
	call	RTE_LDC_IN
.LVL21:
.LBB25:
.LBB22:
	.loc 1 447 0
	ld.bu	%d15, [%a15] 4
	jeq	%d15, 1, .L13
	.loc 1 462 0
	movh.a	%a2, hi:u8g_SoftStopEnd
	ld.bu	%d15, [%a2] lo:u8g_SoftStopEnd
	jeq	%d15, 1, .L14
	.loc 1 469 0
	ld.w	%d4, [%a15] 8
	call	Asw_Ldc_PhaseShiftLimit
.LVL22:
	.loc 1 470 0
	ld.w	%d4, [%a15] 8
	call	Bsw_Ldc_PwmEnable
.LVL23:
.LBE22:
.LBE25:
	.loc 1 213 0
	j	RTE_LDC_OUT
.LVL24:
.L14:
.LBB26:
.LBB23:
	.loc 1 464 0
	call	Bsw_Ldc_PwmDisable
.LVL25:
	.loc 1 465 0
	call	Asw_Ldc_EepromCtrl
.LVL26:
.LBE23:
.LBE26:
	.loc 1 213 0
	j	RTE_LDC_OUT
.LVL27:
.L13:
.LBB27:
.LBB24:
	.loc 1 452 0
	movh.a	%a2, hi:st_rteLdcIn
	lea	%a2, [%a2] lo:st_rteLdcIn
	movh.a	%a3, hi:f32g_cmdTargetCur_SS
	ld.w	%d4, [%a2] 28
	ld.w	%d5, [%a3] lo:f32g_cmdTargetCur_SS
	ld.w	%d6, [%a2] 12
	ld.w	%d7, [%a2] 8
	call	Asw_Ldc_PiCtrl
.LVL28:
	.loc 1 456 0
	mov	%d4, %d2
	call	Asw_Ldc_PhaseShiftLimit
.LVL29:
	.loc 1 457 0
	ld.w	%d4, [%a15] 8
	call	Bsw_Ldc_PwmEnable
.LVL30:
.LBE24:
.LBE27:
	.loc 1 213 0
	j	RTE_LDC_OUT
.LVL31:
.LFE550:
	.size	RTE_LDC_TASK_100us, .-RTE_LDC_TASK_100us
.section .text.RTE_LDC_TASK_1ms,"ax",@progbits
	.align 1
	.global	RTE_LDC_TASK_1ms
	.type	RTE_LDC_TASK_1ms, @function
RTE_LDC_TASK_1ms:
.LFB551:
	.loc 1 224 0
	.loc 1 225 0
	movh.a	%a15, hi:st_AswLdcDiagFlag
	movh.a	%a12, hi:st_rteLdcIn
	lea	%a15, [%a15] lo:st_AswLdcDiagFlag
	lea	%a12, [%a12] lo:st_rteLdcIn
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	Asw_Ldc_DiagAdcValues
.LVL32:
	.loc 1 226 0
	mov.aa	%a4, %a15
	lea	%a5, [%a12] 24
	call	Asw_Ldc_DiagCanState
.LVL33:
	.loc 1 228 0
	call	Asw_Ldc_DtcStsUpdate
.LVL34:
	.loc 1 229 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	Asw_Ldc_ModeUpdate
.LVL35:
	.loc 1 230 0
	call	Asw_Ldc_Mode
.LVL36:
	.loc 1 232 0
	call	Bsw_UdsFunc
.LVL37:
	.loc 1 233 0
	j	Bsw_TpFunc
.LVL38:
.LFE551:
	.size	RTE_LDC_TASK_1ms, .-RTE_LDC_TASK_1ms
.section .text.RTE_LDC_TASK_100ms,"ax",@progbits
	.align 1
	.global	RTE_LDC_TASK_100ms
	.type	RTE_LDC_TASK_100ms, @function
RTE_LDC_TASK_100ms:
.LFB552:
	.loc 1 244 0
.LBB32:
.LBB33:
	.loc 1 373 0
	movh.a	%a15, hi:u8g_UDS_CommTx_CtrlSts
	ld.bu	%d15, [%a15] lo:u8g_UDS_CommTx_CtrlSts
	jnz	%d15, .L17
	.loc 1 375 0
	call	Bsw_CANTxLDCData_100ms
.LVL39:
.L17:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 388 0
	movh.a	%a15, hi:u8g_UDS_CommRx_CtrlSts
	ld.bu	%d15, [%a15] lo:u8g_UDS_CommRx_CtrlSts
	jz	%d15, .L20
	ret
.L20:
	.loc 1 392 0
	movh.a	%a15, hi:u16g_Ldc_CanTimeoutCnt
	.loc 1 390 0
	call	Bsw_CANRxLDCData_100ms
.LVL40:
	.loc 1 392 0
	ld.hu	%d15, [%a15] lo:u16g_Ldc_CanTimeoutCnt
	jlt.u	%d15, 5, .L21
	.loc 1 398 0
	mov	%d15, 4
	movh.a	%a15, hi:u8g_Ldc_CanTimeout
	st.b	[%a15] lo:u8g_Ldc_CanTimeout, %d15
	ret
.L21:
	.loc 1 394 0
	add	%d15, 1
	st.h	[%a15] lo:u16g_Ldc_CanTimeoutCnt, %d15
	ret
.LBE35:
.LBE34:
.LFE552:
	.size	RTE_LDC_TASK_100ms, .-RTE_LDC_TASK_100ms
.section .text.RTE_OBC_TASK_100us,"ax",@progbits
	.align 1
	.global	RTE_OBC_TASK_100us
	.type	RTE_OBC_TASK_100us, @function
RTE_OBC_TASK_100us:
.LFB553:
	.loc 1 257 0
.LBB38:
.LBB39:
	.loc 1 485 0
	movh.a	%a15, hi:st_rteObcOut
	lea	%a15, [%a15] lo:st_rteObcOut
.LBE39:
.LBE38:
	.loc 1 258 0
	call	Bsw_Obc_Vadc1Start
.LVL41:
	.loc 1 259 0
	call	Bsw_Obc_Vadc1Scan
.LVL42:
	.loc 1 261 0
	call	RTE_OBC_IN
.LVL43:
.LBB42:
.LBB40:
	.loc 1 485 0
	ld.bu	%d15, [%a15] 8
	jeq	%d15, 1, .L25
	.loc 1 496 0
	call	Bsw_Obc_PwmDisable
.LVL44:
.LBE40:
.LBE42:
	.loc 1 263 0
	j	RTE_OBC_OUT
.LVL45:
.L25:
.LBB43:
.LBB41:
	.loc 1 487 0
	movh.a	%a2, hi:st_rteObcIn
	lea	%a2, [%a2] lo:st_rteObcIn
	movh.a	%a3, hi:f32g_RteIoref
	ld.w	%d4, [%a2] 28
	ld.w	%d5, [%a3] lo:f32g_RteIoref
	ld.w	%d6, [%a2] 12
	ld.w	%d7, [%a2] 8
	call	Asw_Obc_PiCtrl
.LVL46:
	.loc 1 492 0
	mov	%d4, %d2
	.loc 1 487 0
	st.w	[%a15] 12, %d2
	.loc 1 492 0
	call	Bsw_Obc_PwmEnable
.LVL47:
.LBE41:
.LBE43:
	.loc 1 263 0
	j	RTE_OBC_OUT
.LVL48:
.LFE553:
	.size	RTE_OBC_TASK_100us, .-RTE_OBC_TASK_100us
.section .text.RTE_OBC_TASK_1ms,"ax",@progbits
	.align 1
	.global	RTE_OBC_TASK_1ms
	.type	RTE_OBC_TASK_1ms, @function
RTE_OBC_TASK_1ms:
.LFB554:
	.loc 1 274 0
	.loc 1 291 0
	call	Bsw_Obc_AdcScan_20ms
.LVL49:
	.loc 1 292 0
	movh.a	%a15, hi:st_AswObcDiagFlag
	movh.a	%a12, hi:st_rteObcIn
	lea	%a15, [%a15] lo:st_AswObcDiagFlag
	lea	%a12, [%a12] lo:st_rteObcIn
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	Asw_Obc_DiagAdcValues
.LVL50:
	.loc 1 293 0
	mov.aa	%a4, %a15
	lea	%a5, [%a12] 24
	call	Asw_Obc_DiagCanState
.LVL51:
	.loc 1 294 0
	call	Asw_Obc_ChargingSeqRun
.LVL52:
	.loc 1 295 0
	j	Asw_Obc_OperationMode
.LVL53:
.LFE554:
	.size	RTE_OBC_TASK_1ms, .-RTE_OBC_TASK_1ms
.section .text.RTE_Task_Run,"ax",@progbits
	.align 1
	.global	RTE_Task_Run
	.type	RTE_Task_Run, @function
RTE_Task_Run:
.LFB549:
	.loc 1 180 0
	.loc 1 183 0
	movh.a	%a15, hi:u8g_task_flag_1m
.LBB54:
.LBB55:
	.loc 1 327 0
	call	RTE_LDC_TASK_100us
.LVL54:
	.loc 1 328 0
	call	RTE_OBC_TASK_100us
.LVL55:
.LBE55:
.LBE54:
	.loc 1 183 0
	ld.bu	%d15, [%a15] lo:u8g_task_flag_1m
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15] lo:u8g_task_flag_1m, %d15
	jz	%d15, .L31
.L28:
	.loc 1 190 0
	movh.a	%a15, hi:u16g_task_flag_100m
	ld.h	%d15, [%a15] lo:u16g_task_flag_100m
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:u16g_task_flag_100m, %d15
	jz	%d15, .L32
	ret
.L32:
	.loc 1 194 0
	mov	%d15, 1000
.LBB56:
.LBB57:
	.loc 1 360 0
	call	RTE_LDC_TASK_100ms
.LVL56:
.LBB58:
.LBB59:
.LBB60:
.LBB61:
	.loc 1 412 0
	call	Bsw_CANTxOBCData_100ms
.LVL57:
.LBE61:
.LBE60:
	.loc 1 310 0
	call	RTE_OBC_UPDATE_CAN_RX
.LVL58:
.LBE59:
.LBE58:
.LBE57:
.LBE56:
	.loc 1 194 0
	st.h	[%a15] lo:u16g_task_flag_100m, %d15
	ret
.L31:
.LBB62:
.LBB63:
	.loc 1 340 0
	call	BSW_CAN_ReleasTx
.LVL59:
	.loc 1 341 0
	call	RTE_LDC_TASK_1ms
.LVL60:
	.loc 1 342 0
	call	RTE_OBC_TASK_1ms
.LVL61:
	.loc 1 344 0
	movh.a	%a2, hi:u8g_UDS_ResetReq
	ld.bu	%d15, [%a2] lo:u8g_UDS_ResetReq
	jz	%d15, .L33
.LBE63:
.LBE62:
	.loc 1 187 0
	mov	%d15, 10
	st.b	[%a15] lo:u8g_task_flag_1m, %d15
	j	.L28
.L33:
.LBB66:
.LBB64:
	.loc 1 346 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL62:
	mov	%d4, %d2
	call	IfxScuWdt_serviceCpuWatchdog
.LVL63:
	.loc 1 347 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL64:
.LBE64:
.LBE66:
	.loc 1 187 0
	mov	%d15, 10
.LBB67:
.LBB65:
	.loc 1 347 0
	mov	%d4, %d2
	call	IfxScuWdt_serviceSafetyWatchdog
.LVL65:
.LBE65:
.LBE67:
	.loc 1 187 0
	st.b	[%a15] lo:u8g_task_flag_1m, %d15
	j	.L28
.LFE549:
	.size	RTE_Task_Run, .-RTE_Task_Run
.section .text.RTE_OBC_TASK_100ms,"ax",@progbits
	.align 1
	.global	RTE_OBC_TASK_100ms
	.type	RTE_OBC_TASK_100ms, @function
RTE_OBC_TASK_100ms:
.LFB555:
	.loc 1 308 0
.LBB68:
.LBB69:
	.loc 1 412 0
	call	Bsw_CANTxOBCData_100ms
.LVL66:
.LBE69:
.LBE68:
	.loc 1 310 0
	j	RTE_OBC_UPDATE_CAN_RX
.LVL67:
.LFE555:
	.size	RTE_OBC_TASK_100ms, .-RTE_OBC_TASK_100ms
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB562
	.uaword	.LFE562-.LFB562
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB546
	.uaword	.LFE546-.LFB546
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB547
	.uaword	.LFE547-.LFB547
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB548
	.uaword	.LFE548-.LFB548
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB550
	.uaword	.LFE550-.LFB550
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB551
	.uaword	.LFE551-.LFB551
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB552
	.uaword	.LFE552-.LFB552
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB553
	.uaword	.LFE553-.LFB553
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB554
	.uaword	.LFE554-.LFB554
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB549
	.uaword	.LFE549-.LFB549
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB555
	.uaword	.LFE555-.LFB555
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
	.file 7 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Gpio.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Can.h"
	.file 10 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_ISR.h"
	.file 11 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
	.file 12 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h"
	.file 13 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
	.file 14 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeMode.h"
	.file 15 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h"
	.file 16 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_Gpio.h"
	.file 17 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_GtmTim.h"
	.file 18 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_GtmTomPwm.h"
	.file 19 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_Stm.h"
	.file 20 "0_Src/AppSw/Tricore/BSW_Module/Services/../Drivers/Mcal_Multican.h"
	.file 21 "0_Src/AppSw/Tricore/BSW_Module/Services/../Drivers/Mcal_Adc.h"
	.file 22 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_DFlash.h"
	.file 23 "0_Src/AppSw/Tricore/RTE_Module/../BSW_Module/Drivers/Mcal_Smu.h"
	.file 24 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Adc.h"
	.file 25 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_TpFunc.h"
	.file 26 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcEepromCtrl.h"
	.file 27 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcUtility.h"
	.file 28 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Pwm.h"
	.file 29 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h"
	.file 30 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagCan.h"
	.file 31 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.h"
	.file 32 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
	.file 33 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
	.file 34 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcDiagAdc.h"
	.file 35 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcDiagCan.h"
	.file 36 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a65
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/RTE_Module/Rte_Interface.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x163
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x18f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x83
	.uaword	0x20c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0xa7
	.uaword	0x238
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x174
	.uleb128 0x3
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x181
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1a5
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x229
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x35
	.uaword	0x2a0
	.uleb128 0x5
	.string	"EN_LDC_Off"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_LDC_On"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"en_LDC_STATE"
	.byte	0x4
	.byte	0x38
	.uaword	0x27e
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x45
	.uaword	0x318
	.uleb128 0x5
	.string	"LDC_MODE_READY"
	.sleb128 0
	.uleb128 0x5
	.string	"LDC_MODE_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"LDC_MODE_DERATING"
	.sleb128 2
	.uleb128 0x5
	.string	"LDC_MODE_FAULT"
	.sleb128 3
	.uleb128 0x5
	.string	"LDC_MODE_FAILURE"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_LDC_MODE_DEF"
	.byte	0x4
	.byte	0x4b
	.uaword	0x2b4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x381
	.uleb128 0x5
	.string	"STATE_NORMAL"
	.sleb128 0
	.uleb128 0x5
	.string	"STATE_UNDER"
	.sleb128 1
	.uleb128 0x5
	.string	"STATE_OVER"
	.sleb128 2
	.uleb128 0x5
	.string	"STATE_DERATING"
	.sleb128 3
	.uleb128 0x5
	.string	"STATE_FAULT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_STATE_DEF"
	.byte	0x4
	.byte	0x54
	.uaword	0x32f
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x446
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x381
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x381
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x381
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x381
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x381
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x381
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x381
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x381
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x381
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x395
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x50c
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x270
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x270
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x270
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x270
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x270
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x270
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x46a
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x7f
	.uaword	0x583
	.uleb128 0x7
	.string	"u8_VcuCmdLdc_Enable"
	.byte	0x4
	.byte	0x82
	.uaword	0x24b
	.byte	0
	.uleb128 0x7
	.string	"f32_VcuCmdLdc_TargetVolt"
	.byte	0x4
	.byte	0x83
	.uaword	0x270
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x85
	.uaword	0x381
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x86
	.uaword	0x381
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Ldc"
	.byte	0x4
	.byte	0x88
	.uaword	0x525
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x8a
	.uaword	0x73a
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdCurr"
	.byte	0x4
	.byte	0x8d
	.uaword	0x270
	.byte	0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdVoltage"
	.byte	0x4
	.byte	0x8e
	.uaword	0x270
	.byte	0x4
	.uleb128 0x7
	.string	"u8_Bms_ACChargingReady"
	.byte	0x4
	.byte	0x8f
	.uaword	0x24b
	.byte	0x8
	.uleb128 0x7
	.string	"u8_BmsObcCmdEnOBC"
	.byte	0x4
	.byte	0x90
	.uaword	0x24b
	.byte	0x9
	.uleb128 0x7
	.string	"u8_Bms_HWTestMode"
	.byte	0x4
	.byte	0x91
	.uaword	0x24b
	.byte	0xa
	.uleb128 0x7
	.string	"u8_BmsObcCmdRelay"
	.byte	0x4
	.byte	0x92
	.uaword	0x24b
	.byte	0xb
	.uleb128 0x7
	.string	"u8_BmsObcCmdPFC_Enable"
	.byte	0x4
	.byte	0x93
	.uaword	0x24b
	.byte	0xc
	.uleb128 0x7
	.string	"u8_Bms_EnableOBCWakeup"
	.byte	0x4
	.byte	0x94
	.uaword	0x24b
	.byte	0xd
	.uleb128 0x7
	.string	"u8_Bms_ACPP"
	.byte	0x4
	.byte	0x96
	.uaword	0x24b
	.byte	0xe
	.uleb128 0x7
	.string	"u8_Bms_ACCP"
	.byte	0x4
	.byte	0x97
	.uaword	0x24b
	.byte	0xf
	.uleb128 0x7
	.string	"u8_Bms_ACPwmDuty"
	.byte	0x4
	.byte	0x98
	.uaword	0x24b
	.byte	0x10
	.uleb128 0x7
	.string	"u8_Bms_ACChargeCapacity"
	.byte	0x4
	.byte	0x99
	.uaword	0x24b
	.byte	0x11
	.uleb128 0x7
	.string	"u8_Bms_ChargeEnd"
	.byte	0x4
	.byte	0x9b
	.uaword	0x24b
	.byte	0x12
	.uleb128 0x7
	.string	"u8_Bms_ChargeMode"
	.byte	0x4
	.byte	0x9c
	.uaword	0x24b
	.byte	0x13
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x9e
	.uaword	0x381
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9f
	.uaword	0x381
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Obc"
	.byte	0x4
	.byte	0xa0
	.uaword	0x5a1
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0xa2
	.uaword	0x775
	.uleb128 0x7
	.string	"u8_ldc_mode"
	.byte	0x4
	.byte	0xa4
	.uaword	0x318
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"st_CANTxValuesType_Ldc"
	.byte	0x4
	.byte	0xa5
	.uaword	0x758
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xa7
	.uaword	0x7be
	.uleb128 0x7
	.string	"u8_LdcPWMCtrl"
	.byte	0x4
	.byte	0xa9
	.uaword	0x2a0
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xaa
	.uaword	0x263
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_PWMType_Ldc"
	.byte	0x4
	.byte	0xab
	.uaword	0x793
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.byte	0xad
	.uaword	0x7f5
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xaf
	.uaword	0x50c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xb0
	.uaword	0x583
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Ldc"
	.byte	0x4
	.byte	0xb1
	.uaword	0x7d4
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0xb3
	.uaword	0x82a
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xb5
	.uaword	0x775
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x4
	.byte	0xb6
	.uaword	0x7be
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_RteOut_Ldc"
	.byte	0x4
	.byte	0xb7
	.uaword	0x809
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xbb
	.uaword	0x8a7
	.uleb128 0x5
	.string	"OBC_InitMode"
	.sleb128 0
	.uleb128 0x5
	.string	"OBC_NoChargingMode"
	.sleb128 1
	.uleb128 0x5
	.string	"OBC_ChargingMode"
	.sleb128 2
	.uleb128 0x5
	.string	"OBC_FaultMode"
	.sleb128 3
	.uleb128 0x5
	.string	"OBC_ChargedFinishMode"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_OBC_ModeState"
	.byte	0x4
	.byte	0xc1
	.uaword	0x83f
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xc3
	.uaword	0x98d
	.uleb128 0x7
	.string	"u8_OBC_ReadySta"
	.byte	0x4
	.byte	0xc5
	.uaword	0x24b
	.byte	0
	.uleb128 0x7
	.string	"u8_OBC_ControllableSta"
	.byte	0x4
	.byte	0xc6
	.uaword	0x24b
	.byte	0x1
	.uleb128 0x7
	.string	"u8_OBC_ChargeFinishReq"
	.byte	0x4
	.byte	0xc7
	.uaword	0x24b
	.byte	0x2
	.uleb128 0x7
	.string	"u8_OBC_ACDetectSta"
	.byte	0x4
	.byte	0xc8
	.uaword	0x24b
	.byte	0x3
	.uleb128 0x7
	.string	"u8_OBC_HVILSta"
	.byte	0x4
	.byte	0xc9
	.uaword	0x24b
	.byte	0x4
	.uleb128 0x7
	.string	"u8_OBC_PowerDeratingSta"
	.byte	0x4
	.byte	0xca
	.uaword	0x24b
	.byte	0x5
	.uleb128 0x7
	.string	"u8_OBC_OperatingMode"
	.byte	0x4
	.byte	0xcb
	.uaword	0x8a7
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"st_CANTxValuesType_Obc"
	.byte	0x4
	.byte	0xcc
	.uaword	0x8bf
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xce
	.uaword	0x9e0
	.uleb128 0x7
	.string	"u8_ObcPWMCtrl"
	.byte	0x4
	.byte	0xd0
	.uaword	0x24b
	.byte	0
	.uleb128 0x7
	.string	"f32_frequency"
	.byte	0x4
	.byte	0xd1
	.uaword	0x270
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_PWMType_Obc"
	.byte	0x4
	.byte	0xd2
	.uaword	0x9ab
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0xd4
	.uaword	0xa17
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xd6
	.uaword	0x50c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xd7
	.uaword	0x73a
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Obc"
	.byte	0x4
	.byte	0xd8
	.uaword	0x9f6
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.byte	0xda
	.uaword	0xa4c
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xdc
	.uaword	0x98d
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x4
	.byte	0xdd
	.uaword	0x9e0
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_RteOut_Obc"
	.byte	0x4
	.byte	0xde
	.uaword	0xa2b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x4
	.uaword	0xa76
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0xa9d
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0xa70
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x1fe
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0xa77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0x39
	.uaword	0xae9
	.uleb128 0x5
	.string	"EN_OBC_Off"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_OBC_On"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x39
	.uaword	0xbdd
	.uleb128 0x5
	.string	"PFC_ERROR_IN"
	.sleb128 0
	.uleb128 0x5
	.string	"TEST_PIN_OUT"
	.sleb128 1
	.uleb128 0x5
	.string	"TEST_PIN1"
	.sleb128 2
	.uleb128 0x5
	.string	"AC_CONNECTOR_INTERLOCK_IN"
	.sleb128 3
	.uleb128 0x5
	.string	"OBC_OUTPUT_INTERLOCK_IN"
	.sleb128 4
	.uleb128 0x5
	.string	"LDC_OVER_CURRENT_IN"
	.sleb128 5
	.uleb128 0x5
	.string	"OBC_ENABLE_IN"
	.sleb128 6
	.uleb128 0x5
	.string	"RELAY_OUT"
	.sleb128 7
	.uleb128 0x5
	.string	"PFC_ENABLE_OUT"
	.sleb128 8
	.uleb128 0x5
	.string	"S2_ERROR_OUT"
	.sleb128 9
	.uleb128 0x5
	.string	"S2_SWITCH_OUT"
	.sleb128 10
	.uleb128 0x5
	.string	"OBC_DISCHARGE_OUT"
	.sleb128 11
	.uleb128 0x5
	.string	"OBC_AUX_ENABLE_OUT"
	.sleb128 12
	.byte	0
	.uleb128 0x3
	.string	"en_GPIOTYPE"
	.byte	0x7
	.byte	0x49
	.uaword	0xae9
	.uleb128 0xb
	.string	"RTE_LDC_UPDATE_CAN_TX"
	.byte	0x1
	.uahalf	0x173
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"RTE_OBC_UPDATE_CAN_TX"
	.byte	0x1
	.uahalf	0x19a
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"RTE_OBC_TASK_100ms"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"RTE_Task_100us"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"RTE_Task_100ms"
	.byte	0x1
	.uahalf	0x166
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"RTE_OBC_UPDATE_CAN_RX"
	.byte	0x1
	.uahalf	0x1a6
	.byte	0x1
	.uaword	.LFB562
	.uaword	.LFE562
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xca0
	.uleb128 0xe
	.uaword	.LVL0
	.uaword	0x141f
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_BSW_Init"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	.LFB546
	.uaword	.LFE546
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd4a
	.uleb128 0xe
	.uaword	.LVL1
	.uaword	0x143c
	.uleb128 0xe
	.uaword	.LVL2
	.uaword	0x1450
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x146a
	.uleb128 0xe
	.uaword	.LVL4
	.uaword	0x1480
	.uleb128 0xe
	.uaword	.LVL5
	.uaword	0x1493
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0x14ab
	.uleb128 0xe
	.uaword	.LVL7
	.uaword	0x14c5
	.uleb128 0xe
	.uaword	.LVL8
	.uaword	0x14dd
	.uleb128 0xe
	.uaword	.LVL9
	.uaword	0x14f5
	.uleb128 0xe
	.uaword	.LVL10
	.uaword	0x150b
	.uleb128 0xe
	.uaword	.LVL11
	.uaword	0x151f
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0x1533
	.uleb128 0xe
	.uaword	.LVL13
	.uaword	0x1545
	.uleb128 0xe
	.uaword	.LVL14
	.uaword	0x155c
	.uleb128 0x10
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x1572
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_LDC_ASW_Init"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB547
	.uaword	.LFE547
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd7a
	.uleb128 0x10
	.uaword	.LVL16
	.byte	0x1
	.uaword	0x158b
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_OBC_ASW_Init"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	.LFB548
	.uaword	.LFE548
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdbe
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0x159e
	.uleb128 0x11
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x15b1
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"RTE_LDC_CTRL"
	.byte	0x1
	.uahalf	0x1bc
	.byte	0x1
	.byte	0x1
	.uaword	0xde2
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x263
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_LDC_TASK_100us"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.uaword	.LFB550
	.uaword	.LFE550
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xea5
	.uleb128 0x15
	.uaword	0xdbe
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd4
	.uaword	0xe6b
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0xdd5
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LVL22
	.uaword	0x15d8
	.uleb128 0xe
	.uaword	.LVL23
	.uaword	0x1600
	.uleb128 0xe
	.uaword	.LVL25
	.uaword	0x1622
	.uleb128 0xe
	.uaword	.LVL26
	.uaword	0x163b
	.uleb128 0xe
	.uaword	.LVL28
	.uaword	0x1654
	.uleb128 0xe
	.uaword	.LVL29
	.uaword	0x15d8
	.uleb128 0xe
	.uaword	.LVL30
	.uaword	0x1600
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL19
	.uaword	0x1686
	.uleb128 0xe
	.uaword	.LVL20
	.uaword	0x169f
	.uleb128 0xe
	.uaword	.LVL21
	.uaword	0x16b7
	.uleb128 0x10
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x16c8
	.uleb128 0x10
	.uaword	.LVL27
	.byte	0x1
	.uaword	0x16c8
	.uleb128 0x10
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x16c8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_LDC_TASK_1ms"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB551
	.uaword	.LFE551
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf3e
	.uleb128 0x18
	.uaword	.LVL32
	.uaword	0x16da
	.uaword	0xee4
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL33
	.uaword	0x1716
	.uaword	0xefe
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL34
	.uaword	0x174b
	.uleb128 0x18
	.uaword	.LVL35
	.uaword	0x1766
	.uaword	0xf21
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL36
	.uaword	0x1799
	.uleb128 0xe
	.uaword	.LVL37
	.uaword	0x17ac
	.uleb128 0x10
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x17be
	.byte	0
	.uleb128 0xb
	.string	"RTE_LDC_UPDATE_CAN_RX"
	.byte	0x1
	.uahalf	0x182
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_LDC_TASK_100ms"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.uaword	.LFB552
	.uaword	.LFE552
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfb8
	.uleb128 0x19
	.uaword	0xbf0
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0xf5
	.uaword	0xf9e
	.uleb128 0xe
	.uaword	.LVL39
	.uaword	0x17cf
	.byte	0
	.uleb128 0x1a
	.uaword	0xf3e
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xf6
	.uleb128 0xe
	.uaword	.LVL40
	.uaword	0x17ec
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"RTE_OBC_CTRL"
	.byte	0x1
	.uahalf	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_OBC_TASK_100us"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	.LFB553
	.uaword	.LFE553
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1053
	.uleb128 0x1c
	.uaword	0xfb8
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.uahalf	0x106
	.uaword	0x1023
	.uleb128 0xe
	.uaword	.LVL44
	.uaword	0x1809
	.uleb128 0xe
	.uaword	.LVL46
	.uaword	0x1822
	.uleb128 0xe
	.uaword	.LVL47
	.uaword	0x1854
	.byte	0
	.uleb128 0xe
	.uaword	.LVL41
	.uaword	0x1876
	.uleb128 0xe
	.uaword	.LVL42
	.uaword	0x188f
	.uleb128 0xe
	.uaword	.LVL43
	.uaword	0x18a7
	.uleb128 0x10
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x18b8
	.uleb128 0x10
	.uaword	.LVL48
	.byte	0x1
	.uaword	0x18b8
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_OBC_TASK_1ms"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB554
	.uaword	.LFE554
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10ca
	.uleb128 0xe
	.uaword	.LVL49
	.uaword	0x18ca
	.uleb128 0x18
	.uaword	.LVL50
	.uaword	0x18e5
	.uaword	0x109c
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL51
	.uaword	0x1910
	.uaword	0x10b6
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL52
	.uaword	0x1945
	.uleb128 0x10
	.uaword	.LVL53
	.byte	0x1
	.uaword	0x1962
	.byte	0
	.uleb128 0xb
	.string	"RTE_Task_1ms"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"RTE_Task_Run"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	.LFB549
	.uaword	.LFE549
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11cd
	.uleb128 0x19
	.uaword	0xc42
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xb5
	.uaword	0x1124
	.uleb128 0xe
	.uaword	.LVL54
	.uaword	0xde2
	.uleb128 0xe
	.uaword	.LVL55
	.uaword	0xfcb
	.byte	0
	.uleb128 0x19
	.uaword	0xc57
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xc0
	.uaword	0x117d
	.uleb128 0x1d
	.uaword	0xc28
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x169
	.uaword	0x1173
	.uleb128 0x1d
	.uaword	0xc0c
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0x135
	.uaword	0x1169
	.uleb128 0xe
	.uaword	.LVL57
	.uaword	0x197e
	.byte	0
	.uleb128 0xe
	.uaword	.LVL58
	.uaword	0xc6c
	.byte	0
	.uleb128 0xe
	.uaword	.LVL56
	.uaword	0xf5a
	.byte	0
	.uleb128 0x1e
	.uaword	0x10ca
	.uaword	.LBB62
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xb9
	.uleb128 0xe
	.uaword	.LVL59
	.uaword	0x199b
	.uleb128 0xe
	.uaword	.LVL60
	.uaword	0xea5
	.uleb128 0xe
	.uaword	.LVL61
	.uaword	0x1053
	.uleb128 0xe
	.uaword	.LVL62
	.uaword	0x19b2
	.uleb128 0xe
	.uaword	.LVL63
	.uaword	0x19de
	.uleb128 0xe
	.uaword	.LVL64
	.uaword	0x1a0c
	.uleb128 0xe
	.uaword	.LVL65
	.uaword	0x1a3b
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xc28
	.uaword	.LFB555
	.uaword	.LFE555
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x120a
	.uleb128 0x1d
	.uaword	0xc0c
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x135
	.uaword	0x11ff
	.uleb128 0xe
	.uaword	.LVL66
	.uaword	0x197e
	.byte	0
	.uleb128 0x10
	.uaword	.LVL67
	.byte	0x1
	.uaword	0xc6c
	.byte	0
	.uleb128 0x20
	.uaword	0xa9d
	.uaword	0x121a
	.uleb128 0x21
	.uaword	0x45e
	.byte	0
	.byte	0
	.uleb128 0x22
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa4
	.uaword	0x1237
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.uaword	0x120a
	.uleb128 0x22
	.string	"u8g_Ldc_CanTimeout"
	.byte	0x9
	.byte	0x56
	.uaword	0x381
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_Obc_CanTimeout"
	.byte	0x9
	.byte	0x57
	.uaword	0x381
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_task_flag_1m"
	.byte	0xa
	.byte	0x43
	.uaword	0x24b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u16g_task_flag_100m"
	.byte	0xa
	.byte	0x44
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u16g_Ldc_CanTimeoutCnt"
	.byte	0xa
	.byte	0x46
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u16g_Obc_CanTimeoutCnt"
	.byte	0xa
	.byte	0x47
	.uaword	0x257
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_rteLdcIn"
	.byte	0xb
	.byte	0x3b
	.uaword	0x7f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_rteObcIn"
	.byte	0xb
	.byte	0x3c
	.uaword	0xa17
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_rteLdcOut"
	.byte	0xc
	.byte	0x3a
	.uaword	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_rteObcOut"
	.byte	0xc
	.byte	0x3b
	.uaword	0xa4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_SoftStopEnd"
	.byte	0xd
	.byte	0x3c
	.uaword	0x24b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"f32g_cmdTargetCur_SS"
	.byte	0xd
	.byte	0x3d
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_AswLdcDiagFlag"
	.byte	0xd
	.byte	0x3e
	.uaword	0x446
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"f32g_RteIoref"
	.byte	0xe
	.byte	0x3b
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"st_AswObcDiagFlag"
	.byte	0x6
	.byte	0x6d
	.uaword	0x446
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_UDS_ResetReq"
	.byte	0xf
	.byte	0x9a
	.uaword	0x24b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_UDS_CommRx_CtrlSts"
	.byte	0xf
	.byte	0x9b
	.uaword	0x24b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"u8g_UDS_CommTx_CtrlSts"
	.byte	0xf
	.byte	0x9c
	.uaword	0x24b
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_CANRxOBCData_100ms"
	.byte	0x9
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_GpioInit"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_Obc_GtmTimInit"
	.byte	0x11
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_GtmTomInit"
	.byte	0x12
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_StmInit"
	.byte	0x13
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_MulticanInit"
	.byte	0x14
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_MulticanObjCfg"
	.byte	0x14
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_Ldc_VadcInit"
	.byte	0x15
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_Obc_VadcInit"
	.byte	0x15
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_DFlashInit"
	.byte	0x16
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Mcal_Smu_Init"
	.byte	0x17
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_CRC8_Init"
	.byte	0x9
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_AdcInit"
	.byte	0x18
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_UdsFunc_Init"
	.byte	0xf
	.byte	0xa4
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_TpFunc_Init"
	.byte	0x19
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Ldc_EepromInit"
	.byte	0x1a
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Ldc_Init"
	.byte	0xd
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Obc_Init"
	.byte	0x1b
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Bsw_Set_GpioWrite"
	.byte	0x7
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uaword	0x15d8
	.uleb128 0x26
	.uaword	0xbdd
	.uleb128 0x26
	.uaword	0x24b
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Ldc_PhaseShiftLimit"
	.byte	0xd
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uaword	0x1600
	.uleb128 0x26
	.uaword	0x263
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Bsw_Ldc_PwmEnable"
	.byte	0x1c
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x1622
	.uleb128 0x26
	.uaword	0x263
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Ldc_PwmDisable"
	.byte	0x1c
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Ldc_EepromCtrl"
	.byte	0x1a
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Asw_Ldc_PiCtrl"
	.byte	0x21
	.byte	0x5c
	.byte	0x1
	.uaword	0x263
	.byte	0x1
	.uaword	0x1686
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Ldc_Vadc0Start"
	.byte	0x18
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Ldc_Vadc0Scan"
	.byte	0x18
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"RTE_LDC_IN"
	.byte	0xb
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"RTE_LDC_OUT"
	.byte	0xc
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Ldc_DiagAdcValues"
	.byte	0x1d
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x1705
	.uleb128 0x26
	.uaword	0x1705
	.uleb128 0x26
	.uaword	0x170b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x446
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1711
	.uleb128 0x23
	.uaword	0x50c
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Ldc_DiagCanState"
	.byte	0x1e
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x1740
	.uleb128 0x26
	.uaword	0x1705
	.uleb128 0x26
	.uaword	0x1740
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1746
	.uleb128 0x23
	.uaword	0x583
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Ldc_DtcStsUpdate"
	.byte	0x1f
	.byte	0x59
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Ldc_ModeUpdate"
	.byte	0x20
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x178e
	.uleb128 0x26
	.uaword	0x178e
	.uleb128 0x26
	.uaword	0x170b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1794
	.uleb128 0x23
	.uaword	0x446
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Ldc_Mode"
	.byte	0xd
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_UdsFunc"
	.byte	0xf
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_TpFunc"
	.byte	0x19
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_CANTxLDCData_100ms"
	.byte	0x9
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_CANRxLDCData_100ms"
	.byte	0x9
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Obc_PwmDisable"
	.byte	0x1c
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Asw_Obc_PiCtrl"
	.byte	0x21
	.byte	0x5e
	.byte	0x1
	.uaword	0x270
	.byte	0x1
	.uaword	0x1854
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.uleb128 0x26
	.uaword	0x270
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Bsw_Obc_PwmEnable"
	.byte	0x1c
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x1876
	.uleb128 0x26
	.uaword	0x270
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Obc_Vadc1Start"
	.byte	0x18
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Obc_Vadc1Scan"
	.byte	0x18
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"RTE_OBC_IN"
	.byte	0xb
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"RTE_OBC_OUT"
	.byte	0xc
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Obc_AdcScan_20ms"
	.byte	0x18
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Obc_DiagAdcValues"
	.byte	0x22
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x1910
	.uleb128 0x26
	.uaword	0x1705
	.uleb128 0x26
	.uaword	0x170b
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Asw_Obc_DiagCanState"
	.byte	0x23
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0x193a
	.uleb128 0x26
	.uaword	0x1705
	.uleb128 0x26
	.uaword	0x193a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1940
	.uleb128 0x23
	.uaword	0x73a
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Obc_ChargingSeqRun"
	.byte	0x6
	.byte	0x75
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Obc_OperationMode"
	.byte	0xe
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_CANTxOBCData_100ms"
	.byte	0x9
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"BSW_CAN_ReleasTx"
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x24
	.uahalf	0x181
	.byte	0x1
	.uaword	0x181
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"IfxScuWdt_serviceCpuWatchdog"
	.byte	0x24
	.uahalf	0x199
	.byte	0x1
	.byte	0x1
	.uaword	0x1a0c
	.uleb128 0x26
	.uaword	0x181
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x24
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x181
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"IfxScuWdt_serviceSafetyWatchdog"
	.byte	0x24
	.uahalf	0x1a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x181
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB562
	.uaword	.LFE562-.LFB562
	.uaword	.LFB546
	.uaword	.LFE546-.LFB546
	.uaword	.LFB547
	.uaword	.LFE547-.LFB547
	.uaword	.LFB548
	.uaword	.LFE548-.LFB548
	.uaword	.LFB550
	.uaword	.LFE550-.LFB550
	.uaword	.LFB551
	.uaword	.LFE551-.LFB551
	.uaword	.LFB552
	.uaword	.LFE552-.LFB552
	.uaword	.LFB553
	.uaword	.LFE553-.LFB553
	.uaword	.LFB554
	.uaword	.LFE554-.LFB554
	.uaword	.LFB549
	.uaword	.LFE549-.LFB549
	.uaword	.LFB555
	.uaword	.LFE555-.LFB555
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LFB562
	.uaword	.LFE562
	.uaword	.LFB546
	.uaword	.LFE546
	.uaword	.LFB547
	.uaword	.LFE547
	.uaword	.LFB548
	.uaword	.LFE548
	.uaword	.LFB550
	.uaword	.LFE550
	.uaword	.LFB551
	.uaword	.LFE551
	.uaword	.LFB552
	.uaword	.LFE552
	.uaword	.LFB553
	.uaword	.LFE553
	.uaword	.LFB554
	.uaword	.LFE554
	.uaword	.LFB549
	.uaword	.LFE549
	.uaword	.LFB555
	.uaword	.LFE555
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u8_canBusoffStatus"
.LASF5:
	.string	"st_PwmValue"
.LASF2:
	.string	"u32_phaseshift"
.LASF3:
	.string	"st_RealValue"
.LASF4:
	.string	"st_CANValue"
.LASF1:
	.string	"u8_canTimeoutStatus"
	.extern	IfxScuWdt_serviceSafetyWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_serviceCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	u8g_UDS_ResetReq,STT_OBJECT,1
	.extern	BSW_CAN_ReleasTx,STT_FUNC,0
	.extern	Bsw_CANTxOBCData_100ms,STT_FUNC,0
	.extern	u16g_task_flag_100m,STT_OBJECT,2
	.extern	u8g_task_flag_1m,STT_OBJECT,1
	.extern	Asw_Obc_OperationMode,STT_FUNC,0
	.extern	Asw_Obc_ChargingSeqRun,STT_FUNC,0
	.extern	Asw_Obc_DiagCanState,STT_FUNC,0
	.extern	Asw_Obc_DiagAdcValues,STT_FUNC,0
	.extern	st_AswObcDiagFlag,STT_OBJECT,10
	.extern	Bsw_Obc_AdcScan_20ms,STT_FUNC,0
	.extern	Bsw_Obc_PwmEnable,STT_FUNC,0
	.extern	Asw_Obc_PiCtrl,STT_FUNC,0
	.extern	f32g_RteIoref,STT_OBJECT,4
	.extern	st_rteObcIn,STT_OBJECT,48
	.extern	RTE_OBC_OUT,STT_FUNC,0
	.extern	Bsw_Obc_PwmDisable,STT_FUNC,0
	.extern	RTE_OBC_IN,STT_FUNC,0
	.extern	Bsw_Obc_Vadc1Scan,STT_FUNC,0
	.extern	Bsw_Obc_Vadc1Start,STT_FUNC,0
	.extern	st_rteObcOut,STT_OBJECT,16
	.extern	u8g_Ldc_CanTimeout,STT_OBJECT,1
	.extern	Bsw_CANRxLDCData_100ms,STT_FUNC,0
	.extern	u16g_Ldc_CanTimeoutCnt,STT_OBJECT,2
	.extern	u8g_UDS_CommRx_CtrlSts,STT_OBJECT,1
	.extern	Bsw_CANTxLDCData_100ms,STT_FUNC,0
	.extern	u8g_UDS_CommTx_CtrlSts,STT_OBJECT,1
	.extern	Bsw_TpFunc,STT_FUNC,0
	.extern	Bsw_UdsFunc,STT_FUNC,0
	.extern	Asw_Ldc_Mode,STT_FUNC,0
	.extern	Asw_Ldc_ModeUpdate,STT_FUNC,0
	.extern	Asw_Ldc_DtcStsUpdate,STT_FUNC,0
	.extern	Asw_Ldc_DiagCanState,STT_FUNC,0
	.extern	Asw_Ldc_DiagAdcValues,STT_FUNC,0
	.extern	st_AswLdcDiagFlag,STT_OBJECT,10
	.extern	Asw_Ldc_PiCtrl,STT_FUNC,0
	.extern	f32g_cmdTargetCur_SS,STT_OBJECT,4
	.extern	st_rteLdcIn,STT_OBJECT,36
	.extern	Asw_Ldc_EepromCtrl,STT_FUNC,0
	.extern	Bsw_Ldc_PwmDisable,STT_FUNC,0
	.extern	RTE_LDC_OUT,STT_FUNC,0
	.extern	Bsw_Ldc_PwmEnable,STT_FUNC,0
	.extern	Asw_Ldc_PhaseShiftLimit,STT_FUNC,0
	.extern	u8g_SoftStopEnd,STT_OBJECT,1
	.extern	RTE_LDC_IN,STT_FUNC,0
	.extern	Bsw_Ldc_Vadc0Scan,STT_FUNC,0
	.extern	Bsw_Ldc_Vadc0Start,STT_FUNC,0
	.extern	st_rteLdcOut,STT_OBJECT,12
	.extern	Bsw_Set_GpioWrite,STT_FUNC,0
	.extern	Asw_Obc_Init,STT_FUNC,0
	.extern	Asw_Ldc_Init,STT_FUNC,0
	.extern	Asw_Ldc_EepromInit,STT_FUNC,0
	.extern	Bsw_TpFunc_Init,STT_FUNC,0
	.extern	Bsw_UdsFunc_Init,STT_FUNC,0
	.extern	Bsw_AdcInit,STT_FUNC,0
	.extern	Bsw_CRC8_Init,STT_FUNC,0
	.extern	Mcal_Smu_Init,STT_FUNC,0
	.extern	Mcal_DFlashInit,STT_FUNC,0
	.extern	Mcal_Obc_VadcInit,STT_FUNC,0
	.extern	Mcal_Ldc_VadcInit,STT_FUNC,0
	.extern	Mcal_MulticanObjCfg,STT_FUNC,0
	.extern	Mcal_MulticanInit,STT_FUNC,0
	.extern	Mcal_StmInit,STT_FUNC,0
	.extern	Mcal_GtmTomInit,STT_FUNC,0
	.extern	Mcal_Obc_GtmTimInit,STT_FUNC,0
	.extern	Mcal_GpioInit,STT_FUNC,0
	.extern	u8g_Obc_CanTimeout,STT_OBJECT,1
	.extern	u16g_Obc_CanTimeoutCnt,STT_OBJECT,2
	.extern	Bsw_CANRxOBCData_100ms,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
