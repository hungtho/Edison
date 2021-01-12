	.file	"ASW_ObcConstantPower.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_ConstPwr,"ax",@progbits
	.align 1
	.global	Asw_Obc_ConstPwr
	.type	Asw_Obc_ConstPwr, @function
Asw_Obc_ConstPwr:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
	.loc 1 84 0
.LVL0:
	.loc 1 90 0
	movh.a	%a15, hi:st_rteObcIn
	lea	%a15, [%a15] lo:st_rteObcIn
	ld.w	%d2, [%a15] 12
.LVL1:
	.loc 1 92 0
	ld.w	%d15, [%a15] 8
	.loc 1 94 0
	movh	%d3, 17870
	.loc 1 92 0
	mul.f	%d15, %d2, %d15
	.loc 1 94 0
	addi	%d3, %d3, 16384
	cmp.f	%d15, %d15, %d3
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L10
	.loc 1 96 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	jz.t	%d15, 2, .L12
	.loc 1 98 0
	div.f	%d2, %d3, %d2
.LVL2:
	movh.a	%a2, hi:f32g_ObcRefCurr_CP
	st.w	[%a2] lo:f32g_ObcRefCurr_CP, %d2
.L5:
	.loc 1 101 0
	ld.w	%d15, [%a15] 24
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 0, .L1
	.loc 1 103 0
	st.w	[%a2] lo:f32g_ObcRefCurr_CP, %d15
	ret
.LVL3:
.L10:
	.loc 1 108 0
	ld.w	%d15, [%a15] 24
	movh.a	%a15, hi:f32g_ObcRefCurr_CP
	st.w	[%a15] lo:f32g_ObcRefCurr_CP, %d15
.LVL4:
.L1:
	ret
.LVL5:
.L12:
	movh.a	%a2, hi:f32g_ObcRefCurr_CP
	ld.w	%d2, [%a2] lo:f32g_ObcRefCurr_CP
.LVL6:
	j	.L5
.LFE0:
	.size	Asw_Obc_ConstPwr, .-Asw_Obc_ConstPwr
.section .text.Asw_Obc_ConstPwrInit,"ax",@progbits
	.align 1
	.global	Asw_Obc_ConstPwrInit
	.type	Asw_Obc_ConstPwrInit, @function
Asw_Obc_ConstPwrInit:
.LFB1:
	.loc 1 120 0
	.loc 1 121 0
	mov	%d15, 0
	movh.a	%a15, hi:f32g_ObcRefCurr_CP
	st.w	[%a15] lo:f32g_ObcRefCurr_CP, %d15
	ret
.LFE1:
	.size	Asw_Obc_ConstPwrInit, .-Asw_Obc_ConstPwrInit
	.global	f32g_ObcRefCurr_CP
.section .bss.f32g_ObcRefCurr_CP,"aw",@nobits
	.align 2
	.type	f32g_ObcRefCurr_CP, @object
	.size	f32g_ObcRefCurr_CP, 4
f32g_ObcRefCurr_CP:
	.zero	4
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
	.file 5 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x652
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.c"
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
	.uaword	0x16e
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
	.uaword	0x17f
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x20a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x298
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
	.uaword	0x246
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x35a
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x238
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x238
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x238
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x238
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x238
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x238
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x2b8
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x8a
	.uaword	0x52b
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdCurr"
	.byte	0x4
	.byte	0x8d
	.uaword	0x238
	.byte	0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdVoltage"
	.byte	0x4
	.byte	0x8e
	.uaword	0x238
	.byte	0x4
	.uleb128 0x7
	.string	"u8_Bms_ACChargingReady"
	.byte	0x4
	.byte	0x8f
	.uaword	0x22c
	.byte	0x8
	.uleb128 0x7
	.string	"u8_BmsObcCmdEnOBC"
	.byte	0x4
	.byte	0x90
	.uaword	0x22c
	.byte	0x9
	.uleb128 0x7
	.string	"u8_Bms_HWTestMode"
	.byte	0x4
	.byte	0x91
	.uaword	0x22c
	.byte	0xa
	.uleb128 0x7
	.string	"u8_BmsObcCmdRelay"
	.byte	0x4
	.byte	0x92
	.uaword	0x22c
	.byte	0xb
	.uleb128 0x7
	.string	"u8_BmsObcCmdPFC_Enable"
	.byte	0x4
	.byte	0x93
	.uaword	0x22c
	.byte	0xc
	.uleb128 0x7
	.string	"u8_Bms_EnableOBCWakeup"
	.byte	0x4
	.byte	0x94
	.uaword	0x22c
	.byte	0xd
	.uleb128 0x7
	.string	"u8_Bms_ACPP"
	.byte	0x4
	.byte	0x96
	.uaword	0x22c
	.byte	0xe
	.uleb128 0x7
	.string	"u8_Bms_ACCP"
	.byte	0x4
	.byte	0x97
	.uaword	0x22c
	.byte	0xf
	.uleb128 0x7
	.string	"u8_Bms_ACPwmDuty"
	.byte	0x4
	.byte	0x98
	.uaword	0x22c
	.byte	0x10
	.uleb128 0x7
	.string	"u8_Bms_ACChargeCapacity"
	.byte	0x4
	.byte	0x99
	.uaword	0x22c
	.byte	0x11
	.uleb128 0x7
	.string	"u8_Bms_ChargeEnd"
	.byte	0x4
	.byte	0x9b
	.uaword	0x22c
	.byte	0x12
	.uleb128 0x7
	.string	"u8_Bms_ChargeMode"
	.byte	0x4
	.byte	0x9c
	.uaword	0x22c
	.byte	0x13
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x9e
	.uaword	0x298
	.byte	0x14
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x9f
	.uaword	0x298
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Obc"
	.byte	0x4
	.byte	0xa0
	.uaword	0x373
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0xd4
	.uaword	0x57b
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xd6
	.uaword	0x35a
	.byte	0
	.uleb128 0x7
	.string	"st_CANValue"
	.byte	0x4
	.byte	0xd7
	.uaword	0x52b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Obc"
	.byte	0x4
	.byte	0xd8
	.uaword	0x549
	.uleb128 0x8
	.byte	0x1
	.string	"Asw_Obc_ConstPwr"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5fa
	.uleb128 0x9
	.string	"f32_DCOutCurr"
	.byte	0x1
	.byte	0x55
	.uaword	0x238
	.uleb128 0xa
	.string	"f32_DCOutVolt"
	.byte	0x1
	.byte	0x56
	.uaword	0x238
	.uaword	.LLST0
	.uleb128 0xa
	.string	"f32_DCOutKw"
	.byte	0x1
	.byte	0x57
	.uaword	0x238
	.uaword	.LLST1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Asw_Obc_ConstPwrInit"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.string	"st_rteObcIn"
	.byte	0x5
	.byte	0x3c
	.uaword	0x57b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"f32g_ObcRefCurr_CP"
	.byte	0x1
	.byte	0x3e
	.uaword	0x238
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	f32g_ObcRefCurr_CP
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
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
	.extern	st_rteObcIn,STT_OBJECT,48
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
