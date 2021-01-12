	.file	"Rte_ApiOut.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RTE_LDC_OUT,"ax",@progbits
	.align 1
	.global	RTE_LDC_OUT
	.type	RTE_LDC_OUT, @function
RTE_LDC_OUT:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.c"
	.loc 1 86 0
	.loc 1 87 0
	call	Asw_GET_Ldc_Mode
.LVL0:
	movh.a	%a2, hi:st_rteLdcOut
	lea	%a15, [%a2] lo:st_rteLdcOut
	st.b	[%a2] lo:st_rteLdcOut, %d2
	.loc 1 88 0
	call	Asw_GET_Ldc_PwmCtrl
.LVL1:
	st.b	[%a15] 4, %d2
	ret
.LFE0:
	.size	RTE_LDC_OUT, .-RTE_LDC_OUT
.section .text.RTE_OBC_OUT,"ax",@progbits
	.align 1
	.global	RTE_OBC_OUT
	.type	RTE_OBC_OUT, @function
RTE_OBC_OUT:
.LFB1:
	.loc 1 99 0
	.loc 1 100 0
	call	Asw_GET_OBC_ReadySta
.LVL2:
	movh.a	%a2, hi:st_rteObcOut
	lea	%a15, [%a2] lo:st_rteObcOut
	st.b	[%a2] lo:st_rteObcOut, %d2
	.loc 1 101 0
	call	Asw_GET_OBC_ACDetectSta
.LVL3:
	st.b	[%a15] 3, %d2
	.loc 1 102 0
	call	Asw_GET_OBC_ChargeFinishReq
.LVL4:
	st.b	[%a15] 2, %d2
	.loc 1 103 0
	call	Asw_GET_OBC_ControllableSta
.LVL5:
	st.b	[%a15] 1, %d2
	.loc 1 104 0
	call	Asw_GET_OBC_HVILSta
.LVL6:
	st.b	[%a15] 4, %d2
	.loc 1 105 0
	call	Asw_GET_OBC_OperatingMode
.LVL7:
	st.b	[%a15] 6, %d2
	.loc 1 106 0
	call	Asw_GET_OBC_PowerDeratingSta
.LVL8:
	st.b	[%a15] 5, %d2
	.loc 1 108 0
	call	Asw_GET_ObcPWMEnable
.LVL9:
	st.b	[%a15] 8, %d2
	ret
.LFE1:
	.size	RTE_OBC_OUT, .-RTE_OBC_OUT
	.global	st_rteObcOut
.section .bss.st_rteObcOut,"aw",@nobits
	.align 2
	.type	st_rteObcOut, @object
	.size	st_rteObcOut, 16
st_rteObcOut:
	.zero	16
	.global	st_rteLdcOut
.section .bss.st_rteLdcOut,"aw",@nobits
	.align 2
	.type	st_rteLdcOut, @object
	.size	st_rteLdcOut, 12
st_rteLdcOut:
	.zero	12
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
	.file 6 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
	.file 7 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7d7
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x160
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1a2
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
	.uaword	0x219
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
	.uaword	0x171
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x194
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x20a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x35
	.uaword	0x275
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
	.uaword	0x253
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x45
	.uaword	0x2ed
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
	.uaword	0x289
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0xa2
	.uaword	0x32d
	.uleb128 0x7
	.string	"u8_ldc_mode"
	.byte	0x4
	.byte	0xa4
	.uaword	0x2ed
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"st_CANTxValuesType_Ldc"
	.byte	0x4
	.byte	0xa5
	.uaword	0x310
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xa7
	.uaword	0x381
	.uleb128 0x7
	.string	"u8_LdcPWMCtrl"
	.byte	0x4
	.byte	0xa9
	.uaword	0x275
	.byte	0
	.uleb128 0x7
	.string	"u32_phaseshift"
	.byte	0x4
	.byte	0xaa
	.uaword	0x238
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_PWMType_Ldc"
	.byte	0x4
	.byte	0xab
	.uaword	0x34b
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0xb3
	.uaword	0x3b8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb5
	.uaword	0x32d
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb6
	.uaword	0x381
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_RteOut_Ldc"
	.byte	0x4
	.byte	0xb7
	.uaword	0x397
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xbb
	.uaword	0x435
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
	.uaword	0x3cd
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xc3
	.uaword	0x51b
	.uleb128 0x7
	.string	"u8_OBC_ReadySta"
	.byte	0x4
	.byte	0xc5
	.uaword	0x22c
	.byte	0
	.uleb128 0x7
	.string	"u8_OBC_ControllableSta"
	.byte	0x4
	.byte	0xc6
	.uaword	0x22c
	.byte	0x1
	.uleb128 0x7
	.string	"u8_OBC_ChargeFinishReq"
	.byte	0x4
	.byte	0xc7
	.uaword	0x22c
	.byte	0x2
	.uleb128 0x7
	.string	"u8_OBC_ACDetectSta"
	.byte	0x4
	.byte	0xc8
	.uaword	0x22c
	.byte	0x3
	.uleb128 0x7
	.string	"u8_OBC_HVILSta"
	.byte	0x4
	.byte	0xc9
	.uaword	0x22c
	.byte	0x4
	.uleb128 0x7
	.string	"u8_OBC_PowerDeratingSta"
	.byte	0x4
	.byte	0xca
	.uaword	0x22c
	.byte	0x5
	.uleb128 0x7
	.string	"u8_OBC_OperatingMode"
	.byte	0x4
	.byte	0xcb
	.uaword	0x435
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"st_CANTxValuesType_Obc"
	.byte	0x4
	.byte	0xcc
	.uaword	0x44d
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xce
	.uaword	0x56e
	.uleb128 0x7
	.string	"u8_ObcPWMCtrl"
	.byte	0x4
	.byte	0xd0
	.uaword	0x22c
	.byte	0
	.uleb128 0x7
	.string	"f32_frequency"
	.byte	0x4
	.byte	0xd1
	.uaword	0x245
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_PWMType_Obc"
	.byte	0x4
	.byte	0xd2
	.uaword	0x539
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.byte	0xda
	.uaword	0x5a5
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xdc
	.uaword	0x51b
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0xdd
	.uaword	0x56e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_RteOut_Obc"
	.byte	0x4
	.byte	0xde
	.uaword	0x584
	.uleb128 0x9
	.byte	0x1
	.string	"RTE_LDC_OUT"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ed
	.uleb128 0xa
	.uaword	.LVL0
	.uaword	0x68c
	.uleb128 0xa
	.uaword	.LVL1
	.uaword	0x6a7
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"RTE_OBC_OUT"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x656
	.uleb128 0xa
	.uaword	.LVL2
	.uaword	0x6c5
	.uleb128 0xa
	.uaword	.LVL3
	.uaword	0x6e4
	.uleb128 0xa
	.uaword	.LVL4
	.uaword	0x706
	.uleb128 0xa
	.uaword	.LVL5
	.uaword	0x72c
	.uleb128 0xa
	.uaword	.LVL6
	.uaword	0x752
	.uleb128 0xa
	.uaword	.LVL7
	.uaword	0x770
	.uleb128 0xa
	.uaword	.LVL8
	.uaword	0x794
	.uleb128 0xa
	.uaword	.LVL9
	.uaword	0x7bb
	.byte	0
	.uleb128 0xb
	.string	"st_rteLdcOut"
	.byte	0x1
	.byte	0x40
	.uaword	0x3b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_rteLdcOut
	.uleb128 0xb
	.string	"st_rteObcOut"
	.byte	0x1
	.byte	0x41
	.uaword	0x5a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_rteObcOut
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_Ldc_Mode"
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.uaword	0x2ed
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_Ldc_PwmCtrl"
	.byte	0x6
	.byte	0x48
	.byte	0x1
	.uaword	0x275
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_ReadySta"
	.byte	0x7
	.byte	0x79
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_ACDetectSta"
	.byte	0x7
	.byte	0x7a
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_ChargeFinishReq"
	.byte	0x7
	.byte	0x7b
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_ControllableSta"
	.byte	0x7
	.byte	0x7c
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_HVILSta"
	.byte	0x7
	.byte	0x7d
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_OperatingMode"
	.byte	0x7
	.byte	0x7e
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_OBC_PowerDeratingSta"
	.byte	0x7
	.byte	0x7f
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_GET_ObcPWMEnable"
	.byte	0x7
	.byte	0x80
	.byte	0x1
	.uaword	0x22c
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"st_PwmValue"
.LASF0:
	.string	"st_CANValue"
	.extern	Asw_GET_ObcPWMEnable,STT_FUNC,0
	.extern	Asw_GET_OBC_PowerDeratingSta,STT_FUNC,0
	.extern	Asw_GET_OBC_OperatingMode,STT_FUNC,0
	.extern	Asw_GET_OBC_HVILSta,STT_FUNC,0
	.extern	Asw_GET_OBC_ControllableSta,STT_FUNC,0
	.extern	Asw_GET_OBC_ChargeFinishReq,STT_FUNC,0
	.extern	Asw_GET_OBC_ACDetectSta,STT_FUNC,0
	.extern	Asw_GET_OBC_ReadySta,STT_FUNC,0
	.extern	Asw_GET_Ldc_PwmCtrl,STT_FUNC,0
	.extern	Asw_GET_Ldc_Mode,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
