	.file	"ASW_ObcChargeMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_OperationMode,"ax",@progbits
	.align 1
	.global	Asw_Obc_OperationMode
	.type	Asw_Obc_OperationMode, @function
Asw_Obc_OperationMode:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeMode.c"
	.loc 1 93 0
	.loc 1 94 0
	movh.a	%a15, hi:u8g_OBC_OperateState
	ld.bu	%d15, [%a15] lo:u8g_OBC_OperateState
	jlt.u	%d15, 5, .L32
	.loc 1 112 0
	mov	%d15, 0
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
.L1:
	ret
.L32:
	.loc 1 94 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
.L7:
.LBB14:
.LBB15:
	.loc 1 214 0
	mov	%d15, 3
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	.loc 1 216 0
	call	Asw_SET_ACRly_PFC_PWM_OFF
.LVL0:
	jeq	%d2, 1, .L33
.L16:
.LBE15:
.LBE14:
.LBB17:
.LBB18:
	.loc 1 200 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_OBC_ChargeFinishReq
	st.b	[%a15] lo:u8g_OBC_ChargeFinishReq, %d15
	ret
.L8:
.LBE18:
.LBE17:
.LBB21:
.LBB22:
	.loc 1 240 0
	mov	%d15, 4
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	.loc 1 242 0
	call	Asw_SET_ACRly_PFC_PWM_OFF
.LVL1:
	jne	%d2, 1, .L1
	.loc 1 244 0
	movh.a	%a15, hi:u8g_Tot_ChargingReady
	ld.bu	%d15, [%a15] lo:u8g_Tot_ChargingReady
	jnz	%d15, .L1
	.loc 1 246 0
	movh.a	%a15, hi:u8g_OBC_OperateState
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	ret
.L3:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 1 131 0
	mov	%d15, 0
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	.loc 1 134 0
	mov	%d15, 1
	.loc 1 132 0
	call	Asw_Obc_Init
.LVL2:
	.loc 1 134 0
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	ret
.L5:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 1 146 0
	mov	%d15, 1
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	.loc 1 148 0
	movh.a	%a15, hi:u8g_Tot_ChargingReady
	ld.bu	%d15, [%a15] lo:u8g_Tot_ChargingReady
	jne	%d15, 1, .L1
	.loc 1 149 0
	movh.a	%a15, hi:st_rteObcIn
	lea	%a15, [%a15] lo:st_rteObcIn
	ld.w	%d15, [%a15] 24
	movh	%d2, 16576
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 2, .L1
	.loc 1 151 0
	call	Asw_SET_ACRly_PFC_PWM_ON
.LVL3:
	jne	%d2, 1, .L1
	.loc 1 153 0
	mov	%d15, 2
	movh.a	%a15, hi:u8g_OBC_OperateState
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	ret
.L6:
.LBE26:
.LBE25:
.LBB27:
.LBB19:
	.loc 1 167 0
	mov	%d15, 2
	.loc 1 169 0
	movh.a	%a2, hi:u8g_Tot_ChargingReady
	.loc 1 167 0
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	.loc 1 169 0
	ld.bu	%d15, [%a2] lo:u8g_Tot_ChargingReady
	jnz	%d15, .L13
	.loc 1 171 0
	mov	%d15, 3
	movh.a	%a15, hi:u8g_OBC_OperateState
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	ret
.L13:
	.loc 1 175 0
	call	Asw_Obc_ConstPwr
.LVL4:
	.loc 1 177 0
	movh.a	%a2, hi:st_rteObcIn
	lea	%a2, [%a2] lo:st_rteObcIn
	ld.w	%d2, [%a2] 24
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L34
	.loc 1 189 0
	movh	%d15, 16808
	cmp.f	%d2, %d2, %d15
	jz.t	%d2, 0, .L16
	.loc 1 191 0
	movh.a	%a15, hi:f32g_ObcRefCurr_CP
	ld.w	%d4, [%a15] lo:f32g_ObcRefCurr_CP
	.loc 1 192 0
	movh.a	%a15, hi:f32g_RteIoref
	.loc 1 191 0
	cmp.f	%d2, %d4, %d15
	jz.t	%d2, 2, .L29
	.loc 1 192 0
	movh	%d4, 16808
	ld.w	%d5, [%a15] lo:f32g_RteIoref
	call	Asw_Obc_SoftStart
.LVL5:
	st.w	[%a15] lo:f32g_RteIoref, %d2
	j	.L16
.L34:
	.loc 1 180 0
	mov	%d15, 1
	movh.a	%a3, hi:u8g_OBC_ChargeFinishReq
	st.b	[%a3] lo:u8g_OBC_ChargeFinishReq, %d15
	.loc 1 182 0
	ld.bu	%d15, [%a2] 42
	jne	%d15, 1, .L1
.L20:
	.loc 1 184 0
	mov	%d15, 4
	st.b	[%a15] lo:u8g_OBC_OperateState, %d15
	ret
.L33:
.LBE19:
.LBE27:
.LBB28:
.LBB16:
	.loc 1 218 0
	movh.a	%a2, hi:u8g_OBC_ChargeFinishReq
	st.b	[%a2] lo:u8g_OBC_ChargeFinishReq, %d2
	.loc 1 220 0
	movh.a	%a2, hi:st_rteObcIn
	lea	%a2, [%a2] lo:st_rteObcIn
	ld.bu	%d15, [%a2] 42
	jeq	%d15, 1, .L20
	ret
.L29:
.LBE16:
.LBE28:
.LBB29:
.LBB20:
	.loc 1 196 0
	ld.w	%d5, [%a15] lo:f32g_RteIoref
	call	Asw_Obc_SoftStart
.LVL6:
	st.w	[%a15] lo:f32g_RteIoref, %d2
	j	.L16
.LBE20:
.LBE29:
.LFE0:
	.size	Asw_Obc_OperationMode, .-Asw_Obc_OperationMode
	.global	f32g_RteIoref
.section .bss.f32g_RteIoref,"aw",@nobits
	.align 2
	.type	f32g_RteIoref, @object
	.size	f32g_RteIoref, 4
f32g_RteIoref:
	.zero	4
	.global	u8g_OBC_OperateState
.section .bss.u8g_OBC_OperateState,"aw",@nobits
	.type	u8g_OBC_OperateState, @object
	.size	u8g_OBC_OperateState, 1
u8g_OBC_OperateState:
	.zero	1
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
	.file 6 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
	.file 7 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h"
	.file 8 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcUtility.h"
	.file 9 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x88c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeMode.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x174
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.uaword	0x16b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x185
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x210
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x295
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
	.uaword	0x243
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x357
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x235
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x235
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x235
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x235
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x235
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x235
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x2b5
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x8a
	.uaword	0x528
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdCurr"
	.byte	0x4
	.byte	0x8d
	.uaword	0x235
	.byte	0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdVoltage"
	.byte	0x4
	.byte	0x8e
	.uaword	0x235
	.byte	0x4
	.uleb128 0x7
	.string	"u8_Bms_ACChargingReady"
	.byte	0x4
	.byte	0x8f
	.uaword	0x229
	.byte	0x8
	.uleb128 0x7
	.string	"u8_BmsObcCmdEnOBC"
	.byte	0x4
	.byte	0x90
	.uaword	0x229
	.byte	0x9
	.uleb128 0x7
	.string	"u8_Bms_HWTestMode"
	.byte	0x4
	.byte	0x91
	.uaword	0x229
	.byte	0xa
	.uleb128 0x7
	.string	"u8_BmsObcCmdRelay"
	.byte	0x4
	.byte	0x92
	.uaword	0x229
	.byte	0xb
	.uleb128 0x7
	.string	"u8_BmsObcCmdPFC_Enable"
	.byte	0x4
	.byte	0x93
	.uaword	0x229
	.byte	0xc
	.uleb128 0x7
	.string	"u8_Bms_EnableOBCWakeup"
	.byte	0x4
	.byte	0x94
	.uaword	0x229
	.byte	0xd
	.uleb128 0x7
	.string	"u8_Bms_ACPP"
	.byte	0x4
	.byte	0x96
	.uaword	0x229
	.byte	0xe
	.uleb128 0x7
	.string	"u8_Bms_ACCP"
	.byte	0x4
	.byte	0x97
	.uaword	0x229
	.byte	0xf
	.uleb128 0x7
	.string	"u8_Bms_ACPwmDuty"
	.byte	0x4
	.byte	0x98
	.uaword	0x229
	.byte	0x10
	.uleb128 0x7
	.string	"u8_Bms_ACChargeCapacity"
	.byte	0x4
	.byte	0x99
	.uaword	0x229
	.byte	0x11
	.uleb128 0x7
	.string	"u8_Bms_ChargeEnd"
	.byte	0x4
	.byte	0x9b
	.uaword	0x229
	.byte	0x12
	.uleb128 0x7
	.string	"u8_Bms_ChargeMode"
	.byte	0x4
	.byte	0x9c
	.uaword	0x229
	.byte	0x13
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x9e
	.uaword	0x295
	.byte	0x14
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x9f
	.uaword	0x295
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Obc"
	.byte	0x4
	.byte	0xa0
	.uaword	0x370
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xbb
	.uaword	0x5ae
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
	.uaword	0x546
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0xd4
	.uaword	0x5f8
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xd6
	.uaword	0x357
	.byte	0
	.uleb128 0x7
	.string	"st_CANValue"
	.byte	0x4
	.byte	0xd7
	.uaword	0x528
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Obc"
	.byte	0x4
	.byte	0xd8
	.uaword	0x5c6
	.uleb128 0x8
	.string	"StateInit"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"StateNoCharging"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"StateCharging"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"StateFault"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"StateChargingFinish"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"Asw_Obc_OperationMode"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x743
	.uleb128 0xa
	.uaword	0x643
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6a
	.uaword	0x6b3
	.uleb128 0xb
	.uaword	.LVL0
	.uaword	0x7f3
	.byte	0
	.uleb128 0xa
	.uaword	0x630
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x67
	.uaword	0x6ef
	.uleb128 0xb
	.uaword	.LVL4
	.uaword	0x817
	.uleb128 0xc
	.uaword	.LVL5
	.uaword	0x82e
	.uaword	0x6e5
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x16b
	.byte	0
	.uleb128 0xb
	.uaword	.LVL6
	.uaword	0x82e
	.byte	0
	.uleb128 0xe
	.uaword	0x653
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.byte	0x6d
	.uaword	0x70c
	.uleb128 0xb
	.uaword	.LVL1
	.uaword	0x7f3
	.byte	0
	.uleb128 0xe
	.uaword	0x60c
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x61
	.uaword	0x729
	.uleb128 0xb
	.uaword	.LVL2
	.uaword	0x859
	.byte	0
	.uleb128 0xf
	.uaword	0x61b
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.uaword	.LVL3
	.uaword	0x86c
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"st_rteObcIn"
	.byte	0x5
	.byte	0x3c
	.uaword	0x5f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"u8g_OBC_OperateState"
	.byte	0x1
	.byte	0x42
	.uaword	0x5ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_OperateState
	.uleb128 0x11
	.string	"f32g_RteIoref"
	.byte	0x1
	.byte	0x43
	.uaword	0x235
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	f32g_RteIoref
	.uleb128 0x10
	.string	"u8g_OBC_ChargeFinishReq"
	.byte	0x6
	.byte	0x6b
	.uaword	0x229
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"u8g_Tot_ChargingReady"
	.byte	0x6
	.byte	0x6c
	.uaword	0x229
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"f32g_ObcRefCurr_CP"
	.byte	0x7
	.byte	0x3a
	.uaword	0x235
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_SET_ACRly_PFC_PWM_OFF"
	.byte	0x6
	.byte	0x77
	.byte	0x1
	.uaword	0x229
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Asw_Obc_ConstPwr"
	.byte	0x7
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"Asw_Obc_SoftStart"
	.byte	0x9
	.byte	0x5f
	.byte	0x1
	.uaword	0x235
	.byte	0x1
	.uaword	0x859
	.uleb128 0x15
	.uaword	0x235
	.uleb128 0x15
	.uaword	0x235
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Asw_Obc_Init"
	.byte	0x8
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_SET_ACRly_PFC_PWM_ON"
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.uaword	0x229
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Asw_Obc_SoftStart,STT_FUNC,0
	.extern	f32g_ObcRefCurr_CP,STT_OBJECT,4
	.extern	Asw_Obc_ConstPwr,STT_FUNC,0
	.extern	Asw_SET_ACRly_PFC_PWM_ON,STT_FUNC,0
	.extern	st_rteObcIn,STT_OBJECT,48
	.extern	Asw_Obc_Init,STT_FUNC,0
	.extern	u8g_Tot_ChargingReady,STT_OBJECT,1
	.extern	u8g_OBC_ChargeFinishReq,STT_OBJECT,1
	.extern	Asw_SET_ACRly_PFC_PWM_OFF,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
