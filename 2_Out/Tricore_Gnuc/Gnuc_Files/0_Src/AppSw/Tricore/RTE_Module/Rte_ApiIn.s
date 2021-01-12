	.file	"Rte_ApiIn.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RTE_LDC_IN,"ax",@progbits
	.align 1
	.global	RTE_LDC_IN
	.type	RTE_LDC_IN, @function
RTE_LDC_IN:
.LFB454:
	.file 1 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.c"
	.loc 1 108 0
	.loc 1 121 0
	call	Bsw_GET_LDC_BattVolt
.LVL0:
	movh.a	%a12, hi:st_rteLdcIn
	lea	%a15, [%a12] lo:st_rteLdcIn
	st.w	[%a15] 20, %d2
	.loc 1 122 0
	call	Bsw_GET_LDC_InputCurr
.LVL1:
	st.w	[%a12] lo:st_rteLdcIn, %d2
	.loc 1 123 0
	call	Bsw_GET_LDC_InputVolt
.LVL2:
	st.w	[%a15] 4, %d2
	.loc 1 124 0
	call	Bsw_GET_LDC_DCOutputCurr
.LVL3:
	st.w	[%a15] 8, %d2
	.loc 1 125 0
	call	Bsw_GET_LDC_DCOutputVolt
.LVL4:
	st.w	[%a15] 12, %d2
	.loc 1 126 0
	call	Bsw_GET_LDC_Temperature
.LVL5:
	st.w	[%a15] 16, %d2
	.loc 1 128 0
	call	Bsw_GET_VcuCmdEnLdc
.LVL6:
	st.b	[%a15] 24, %d2
	.loc 1 129 0
	call	Bsw_GET_VcuCmdLdcTargetVolt
.LVL7:
	st.w	[%a15] 28, %d2
	.loc 1 130 0
	call	Bsw_GET_CanBusOff
.LVL8:
	st.b	[%a15] 32, %d2
	.loc 1 131 0
	call	Bsw_GET_Ldc_CanTimeout
.LVL9:
	st.b	[%a15] 33, %d2
	ret
.LFE454:
	.size	RTE_LDC_IN, .-RTE_LDC_IN
.section .text.RTE_OBC_IN,"ax",@progbits
	.align 1
	.global	RTE_OBC_IN
	.type	RTE_OBC_IN, @function
RTE_OBC_IN:
.LFB455:
	.loc 1 143 0
	.loc 1 176 0
	call	Bsw_GET_OBC_AuxInVolt
.LVL10:
	movh.a	%a12, hi:st_rteObcIn
	lea	%a15, [%a12] lo:st_rteObcIn
	st.w	[%a15] 20, %d2
	.loc 1 177 0
	call	Bsw_GET_OBC_ACInputCurr
.LVL11:
	st.w	[%a12] lo:st_rteObcIn, %d2
	.loc 1 178 0
	call	Bsw_GET_OBC_ACInputVolt
.LVL12:
	st.w	[%a15] 4, %d2
	.loc 1 179 0
	call	Bsw_GET_OBC_DCOutputCurr
.LVL13:
	st.w	[%a15] 8, %d2
	.loc 1 180 0
	call	Bsw_GET_OBC_DCOutputVolt
.LVL14:
	st.w	[%a15] 12, %d2
	.loc 1 181 0
	call	Bsw_GET_OBC_Temperature
.LVL15:
	st.w	[%a15] 16, %d2
	.loc 1 184 0
	call	Bsw_GET_Bms_ObcCmdCurr
.LVL16:
	st.w	[%a15] 24, %d2
	.loc 1 185 0
	call	Bsw_GET_Bms_ObcCmdVoltage
.LVL17:
	st.w	[%a15] 28, %d2
	.loc 1 186 0
	call	Bsw_GET_Bms_ACChargingReady
.LVL18:
	st.b	[%a15] 41, %d2
	.loc 1 187 0
	call	Bsw_GET_BMS_OBC_CmdEnable
.LVL19:
	st.b	[%a15] 33, %d2
	.loc 1 188 0
	call	Bsw_GET_Bms_HWTestMode
.LVL20:
	st.b	[%a15] 34, %d2
	.loc 1 189 0
	call	Bsw_GET_BMS_OBC_CmdPfc_Enable
.LVL21:
	st.b	[%a15] 36, %d2
	.loc 1 190 0
	call	Bsw_GET_BMS_OBC_CmdRelay
.LVL22:
	st.b	[%a15] 35, %d2
	.loc 1 193 0
	call	Bsw_GET_Bms_ACPP
.LVL23:
	st.b	[%a15] 38, %d2
	.loc 1 194 0
	call	Bsw_GET_Bms_ACCP
.LVL24:
	st.b	[%a15] 39, %d2
	.loc 1 197 0
	call	Bsw_GET_Bms_ChargeEnd
.LVL25:
	st.b	[%a15] 42, %d2
	.loc 1 200 0
	call	Bsw_GET_Bms_ChargeMode
.LVL26:
	st.b	[%a15] 43, %d2
	.loc 1 202 0
	call	Bsw_GET_CanBusOff
.LVL27:
	st.b	[%a15] 44, %d2
	.loc 1 203 0
	call	Bsw_GET_Obc_CanTimeout
.LVL28:
	st.b	[%a15] 45, %d2
	ret
.LFE455:
	.size	RTE_OBC_IN, .-RTE_OBC_IN
	.global	st_rteObcIn
.section .bss.st_rteObcIn,"aw",@nobits
	.align 2
	.type	st_rteObcIn, @object
	.size	st_rteObcIn, 48
st_rteObcIn:
	.zero	48
	.global	st_rteLdcIn
.section .bss.st_rteLdcIn,"aw",@nobits
	.align 2
	.type	st_rteLdcIn, @object
	.size	st_rteLdcIn, 36
st_rteLdcIn:
	.zero	36
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
	.uaword	.LFB454
	.uaword	.LFE454-.LFB454
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB455
	.uaword	.LFE455-.LFB455
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 7 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Adc.h"
	.file 8 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Can.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xbf2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.c"
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
	.uaword	0x15f
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
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x83
	.uaword	0x1ec
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
	.uaword	0x218
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
	.uaword	0x170
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x209
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x297
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
	.uaword	0x245
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x359
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x237
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x237
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x237
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x237
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x237
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x237
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x2b7
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x7f
	.uaword	0x3d0
	.uleb128 0x7
	.string	"u8_VcuCmdLdc_Enable"
	.byte	0x4
	.byte	0x82
	.uaword	0x22b
	.byte	0
	.uleb128 0x7
	.string	"f32_VcuCmdLdc_TargetVolt"
	.byte	0x4
	.byte	0x83
	.uaword	0x237
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x85
	.uaword	0x297
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x86
	.uaword	0x297
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Ldc"
	.byte	0x4
	.byte	0x88
	.uaword	0x372
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x8a
	.uaword	0x587
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdCurr"
	.byte	0x4
	.byte	0x8d
	.uaword	0x237
	.byte	0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdVoltage"
	.byte	0x4
	.byte	0x8e
	.uaword	0x237
	.byte	0x4
	.uleb128 0x7
	.string	"u8_Bms_ACChargingReady"
	.byte	0x4
	.byte	0x8f
	.uaword	0x22b
	.byte	0x8
	.uleb128 0x7
	.string	"u8_BmsObcCmdEnOBC"
	.byte	0x4
	.byte	0x90
	.uaword	0x22b
	.byte	0x9
	.uleb128 0x7
	.string	"u8_Bms_HWTestMode"
	.byte	0x4
	.byte	0x91
	.uaword	0x22b
	.byte	0xa
	.uleb128 0x7
	.string	"u8_BmsObcCmdRelay"
	.byte	0x4
	.byte	0x92
	.uaword	0x22b
	.byte	0xb
	.uleb128 0x7
	.string	"u8_BmsObcCmdPFC_Enable"
	.byte	0x4
	.byte	0x93
	.uaword	0x22b
	.byte	0xc
	.uleb128 0x7
	.string	"u8_Bms_EnableOBCWakeup"
	.byte	0x4
	.byte	0x94
	.uaword	0x22b
	.byte	0xd
	.uleb128 0x7
	.string	"u8_Bms_ACPP"
	.byte	0x4
	.byte	0x96
	.uaword	0x22b
	.byte	0xe
	.uleb128 0x7
	.string	"u8_Bms_ACCP"
	.byte	0x4
	.byte	0x97
	.uaword	0x22b
	.byte	0xf
	.uleb128 0x7
	.string	"u8_Bms_ACPwmDuty"
	.byte	0x4
	.byte	0x98
	.uaword	0x22b
	.byte	0x10
	.uleb128 0x7
	.string	"u8_Bms_ACChargeCapacity"
	.byte	0x4
	.byte	0x99
	.uaword	0x22b
	.byte	0x11
	.uleb128 0x7
	.string	"u8_Bms_ChargeEnd"
	.byte	0x4
	.byte	0x9b
	.uaword	0x22b
	.byte	0x12
	.uleb128 0x7
	.string	"u8_Bms_ChargeMode"
	.byte	0x4
	.byte	0x9c
	.uaword	0x22b
	.byte	0x13
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x9e
	.uaword	0x297
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9f
	.uaword	0x297
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Obc"
	.byte	0x4
	.byte	0xa0
	.uaword	0x3ee
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.byte	0xad
	.uaword	0x5c6
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xaf
	.uaword	0x359
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xb0
	.uaword	0x3d0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Ldc"
	.byte	0x4
	.byte	0xb1
	.uaword	0x5a5
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0xd4
	.uaword	0x5fb
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xd6
	.uaword	0x359
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xd7
	.uaword	0x587
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Obc"
	.byte	0x4
	.byte	0xd8
	.uaword	0x5da
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
	.uaword	0x624
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x64b
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x61e
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x1de
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x625
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0x88
	.uaword	0x6a3
	.uleb128 0x5
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"RTE_LDC_IN"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB454
	.uaword	.LFE454
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x71d
	.uleb128 0xc
	.uaword	.LVL0
	.uaword	0x84e
	.uleb128 0xc
	.uaword	.LVL1
	.uaword	0x86d
	.uleb128 0xc
	.uaword	.LVL2
	.uaword	0x88d
	.uleb128 0xc
	.uaword	.LVL3
	.uaword	0x8ad
	.uleb128 0xc
	.uaword	.LVL4
	.uaword	0x8d0
	.uleb128 0xc
	.uaword	.LVL5
	.uaword	0x8f3
	.uleb128 0xc
	.uaword	.LVL6
	.uaword	0x915
	.uleb128 0xc
	.uaword	.LVL7
	.uaword	0x933
	.uleb128 0xc
	.uaword	.LVL8
	.uaword	0x959
	.uleb128 0xc
	.uaword	.LVL9
	.uaword	0x975
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"RTE_OBC_IN"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	.LFB455
	.uaword	.LFE455
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7e8
	.uleb128 0xc
	.uaword	.LVL10
	.uaword	0x996
	.uleb128 0xc
	.uaword	.LVL11
	.uaword	0x9b6
	.uleb128 0xc
	.uaword	.LVL12
	.uaword	0x9d8
	.uleb128 0xc
	.uaword	.LVL13
	.uaword	0x9fa
	.uleb128 0xc
	.uaword	.LVL14
	.uaword	0xa1d
	.uleb128 0xc
	.uaword	.LVL15
	.uaword	0xa40
	.uleb128 0xc
	.uaword	.LVL16
	.uaword	0xa62
	.uleb128 0xc
	.uaword	.LVL17
	.uaword	0xa83
	.uleb128 0xc
	.uaword	.LVL18
	.uaword	0xaa7
	.uleb128 0xc
	.uaword	.LVL19
	.uaword	0xacd
	.uleb128 0xc
	.uaword	.LVL20
	.uaword	0xaf1
	.uleb128 0xc
	.uaword	.LVL21
	.uaword	0xb12
	.uleb128 0xc
	.uaword	.LVL22
	.uaword	0xb3a
	.uleb128 0xc
	.uaword	.LVL23
	.uaword	0xb5d
	.uleb128 0xc
	.uaword	.LVL24
	.uaword	0xb78
	.uleb128 0xc
	.uaword	.LVL25
	.uaword	0xb93
	.uleb128 0xc
	.uaword	.LVL26
	.uaword	0xbb3
	.uleb128 0xc
	.uaword	.LVL27
	.uaword	0x959
	.uleb128 0xc
	.uaword	.LVL28
	.uaword	0xbd4
	.byte	0
	.uleb128 0xd
	.string	"st_rteLdcIn"
	.byte	0x1
	.byte	0x3e
	.uaword	0x5c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_rteLdcIn
	.uleb128 0xd
	.string	"st_rteObcIn"
	.byte	0x1
	.byte	0x3f
	.uaword	0x5fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_rteObcIn
	.uleb128 0xe
	.uaword	0x64b
	.uaword	0x82c
	.uleb128 0xf
	.uaword	0x2ab
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xa4
	.uaword	0x849
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x81c
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_BattVolt"
	.byte	0x7
	.byte	0x58
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_InputCurr"
	.byte	0x7
	.byte	0x54
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_InputVolt"
	.byte	0x7
	.byte	0x55
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_DCOutputCurr"
	.byte	0x7
	.byte	0x56
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_DCOutputVolt"
	.byte	0x7
	.byte	0x57
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_LDC_Temperature"
	.byte	0x7
	.byte	0x59
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_VcuCmdEnLdc"
	.byte	0x8
	.byte	0x7b
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_VcuCmdLdcTargetVolt"
	.byte	0x8
	.byte	0x7c
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_CanBusOff"
	.byte	0x8
	.byte	0x7e
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Ldc_CanTimeout"
	.byte	0x8
	.byte	0x7f
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_AuxInVolt"
	.byte	0x7
	.byte	0x5e
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_ACInputCurr"
	.byte	0x7
	.byte	0x5a
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_ACInputVolt"
	.byte	0x7
	.byte	0x5b
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_DCOutputCurr"
	.byte	0x7
	.byte	0x5c
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_DCOutputVolt"
	.byte	0x7
	.byte	0x5d
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_OBC_Temperature"
	.byte	0x7
	.byte	0x5f
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ObcCmdCurr"
	.byte	0x8
	.byte	0x79
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ObcCmdVoltage"
	.byte	0x8
	.byte	0x78
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ACChargingReady"
	.byte	0x8
	.byte	0x6e
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_BMS_OBC_CmdEnable"
	.byte	0x8
	.byte	0x6a
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_HWTestMode"
	.byte	0x8
	.byte	0x6f
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_BMS_OBC_CmdPfc_Enable"
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_BMS_OBC_CmdRelay"
	.byte	0x8
	.byte	0x6b
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ACPP"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ACCP"
	.byte	0x8
	.byte	0x71
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ChargeEnd"
	.byte	0x8
	.byte	0x72
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Bms_ChargeMode"
	.byte	0x8
	.byte	0x73
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Bsw_GET_Obc_CanTimeout"
	.byte	0x8
	.byte	0x80
	.byte	0x1
	.uaword	0x297
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB454
	.uaword	.LFE454-.LFB454
	.uaword	.LFB455
	.uaword	.LFE455-.LFB455
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB454
	.uaword	.LFE454
	.uaword	.LFB455
	.uaword	.LFE455
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u8_canBusoffStatus"
.LASF2:
	.string	"st_RealValue"
.LASF3:
	.string	"st_CANValue"
.LASF1:
	.string	"u8_canTimeoutStatus"
	.extern	Bsw_GET_Obc_CanTimeout,STT_FUNC,0
	.extern	Bsw_GET_Bms_ChargeMode,STT_FUNC,0
	.extern	Bsw_GET_Bms_ChargeEnd,STT_FUNC,0
	.extern	Bsw_GET_Bms_ACCP,STT_FUNC,0
	.extern	Bsw_GET_Bms_ACPP,STT_FUNC,0
	.extern	Bsw_GET_BMS_OBC_CmdRelay,STT_FUNC,0
	.extern	Bsw_GET_BMS_OBC_CmdPfc_Enable,STT_FUNC,0
	.extern	Bsw_GET_Bms_HWTestMode,STT_FUNC,0
	.extern	Bsw_GET_BMS_OBC_CmdEnable,STT_FUNC,0
	.extern	Bsw_GET_Bms_ACChargingReady,STT_FUNC,0
	.extern	Bsw_GET_Bms_ObcCmdVoltage,STT_FUNC,0
	.extern	Bsw_GET_Bms_ObcCmdCurr,STT_FUNC,0
	.extern	Bsw_GET_OBC_Temperature,STT_FUNC,0
	.extern	Bsw_GET_OBC_DCOutputVolt,STT_FUNC,0
	.extern	Bsw_GET_OBC_DCOutputCurr,STT_FUNC,0
	.extern	Bsw_GET_OBC_ACInputVolt,STT_FUNC,0
	.extern	Bsw_GET_OBC_ACInputCurr,STT_FUNC,0
	.extern	Bsw_GET_OBC_AuxInVolt,STT_FUNC,0
	.extern	Bsw_GET_Ldc_CanTimeout,STT_FUNC,0
	.extern	Bsw_GET_CanBusOff,STT_FUNC,0
	.extern	Bsw_GET_VcuCmdLdcTargetVolt,STT_FUNC,0
	.extern	Bsw_GET_VcuCmdEnLdc,STT_FUNC,0
	.extern	Bsw_GET_LDC_Temperature,STT_FUNC,0
	.extern	Bsw_GET_LDC_DCOutputVolt,STT_FUNC,0
	.extern	Bsw_GET_LDC_DCOutputCurr,STT_FUNC,0
	.extern	Bsw_GET_LDC_InputVolt,STT_FUNC,0
	.extern	Bsw_GET_LDC_InputCurr,STT_FUNC,0
	.extern	Bsw_GET_LDC_BattVolt,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
