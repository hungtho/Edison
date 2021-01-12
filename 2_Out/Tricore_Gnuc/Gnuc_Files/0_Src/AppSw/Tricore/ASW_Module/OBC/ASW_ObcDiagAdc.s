	.file	"ASW_ObcDiagAdc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_AdcInit,"ax",@progbits
	.align 1
	.global	Asw_Obc_AdcInit
	.type	Asw_Obc_AdcInit, @function
Asw_Obc_AdcInit:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcDiagAdc.c"
	.loc 1 90 0
	.loc 1 91 0
	movh.a	%a2, hi:st_ObcVinLimit
	movh	%d15, 17066
	st.w	[%a2] lo:st_ObcVinLimit, %d15
	.loc 1 92 0
	movh	%d15, 17285
	.loc 1 91 0
	lea	%a15, [%a2] lo:st_ObcVinLimit
	.loc 1 92 0
	addi	%d15, %d15, -32768
	st.w	[%a15] 4, %d15
	.loc 1 93 0
	movh	%d15, 17076
	st.w	[%a15] 8, %d15
	.loc 1 96 0
	movh.a	%a2, hi:st_ObcIinLimit
	.loc 1 94 0
	movh	%d15, 17282
	st.w	[%a15] 12, %d15
	.loc 1 97 0
	movh	%d2, 16776
	.loc 1 96 0
	lea	%a15, [%a2] lo:st_ObcIinLimit
	mov	%d15, 0
	.loc 1 97 0
	st.w	[%a15] 4, %d2
	.loc 1 101 0
	movh	%d3, 17292
	.loc 1 99 0
	movh	%d2, 16256
	.loc 1 96 0
	st.w	[%a2] lo:st_ObcIinLimit, %d15
	.loc 1 101 0
	movh.a	%a2, hi:st_ObcVoutLimit
	.loc 1 98 0
	st.w	[%a15] 8, %d15
	.loc 1 99 0
	st.w	[%a15] 12, %d2
	.loc 1 101 0
	st.w	[%a2] lo:st_ObcVoutLimit, %d3
	lea	%a15, [%a2] lo:st_ObcVoutLimit
	.loc 1 102 0
	movh	%d3, 17362
	st.w	[%a15] 4, %d3
	.loc 1 103 0
	movh	%d3, 17295
	addi	%d3, %d3, -32768
	st.w	[%a15] 8, %d3
	.loc 1 106 0
	movh.a	%a2, hi:st_ObcIoutLimit
	.loc 1 104 0
	movh	%d3, 17357
	st.w	[%a15] 12, %d3
	.loc 1 106 0
	lea	%a15, [%a2] lo:st_ObcIoutLimit
	.loc 1 107 0
	movh	%d3, 16832
	.loc 1 106 0
	st.w	[%a2] lo:st_ObcIoutLimit, %d15
	.loc 1 107 0
	st.w	[%a15] 4, %d3
	.loc 1 108 0
	st.w	[%a15] 8, %d15
	.loc 1 109 0
	st.w	[%a15] 12, %d2
	ret
.LFE0:
	.size	Asw_Obc_AdcInit, .-Asw_Obc_AdcInit
.section .text.Asw_Obc_DiagAdcValues,"ax",@progbits
	.align 1
	.global	Asw_Obc_DiagAdcValues
	.type	Asw_Obc_DiagAdcValues, @function
Asw_Obc_DiagAdcValues:
.LFB1:
	.loc 1 120 0
.LVL0:
	.loc 1 126 0
	mov	%d15, 0
	st.b	[%a4] 2, %d15
.LVL1:
	.loc 1 127 0
	st.b	[%a4] 3, %d15
.LVL2:
	.loc 1 128 0
	st.b	[%a4] 4, %d15
.LVL3:
.LBB10:
.LBB11:
	.loc 1 250 0
	ld.bu	%d15, [%a4] 5
.LBE11:
.LBE10:
	.loc 1 120 0
	mov.aa	%a15, %a4
	.loc 1 129 0
	ld.w	%d4, [%a5] 8
.LVL4:
.LBB15:
.LBB12:
	.loc 1 250 0
	jz	%d15, .L4
	jeq	%d15, 2, .L5
	.loc 1 259 0
	mov	%d2, 0
.LVL5:
.LBE12:
.LBE15:
	.loc 1 129 0
	st.b	[%a15] 5, %d2
.LVL6:
	ret
.LVL7:
.L5:
.LBB16:
.LBB13:
	.loc 1 256 0
	movh.a	%a4, hi:st_ObcIoutLimit
.LVL8:
	lea	%a4, [%a4] lo:st_ObcIoutLimit
	call	Asw_Adc_OverMode
.LVL9:
.LBE13:
.LBE16:
	.loc 1 129 0
	st.b	[%a15] 5, %d2
	ret
.LVL10:
.L4:
.LBB17:
.LBB14:
	.loc 1 253 0
	movh.a	%a4, hi:st_ObcIoutLimit
.LVL11:
	lea	%a4, [%a4] lo:st_ObcIoutLimit
	call	Asw_Adc_NormalMode
.LVL12:
.LBE14:
.LBE17:
	.loc 1 129 0
	st.b	[%a15] 5, %d2
	ret
.LFE1:
	.size	Asw_Obc_DiagAdcValues, .-Asw_Obc_DiagAdcValues
.section .bss.st_ObcIoutLimit,"aw",@nobits
	.align 2
	.type	st_ObcIoutLimit, @object
	.size	st_ObcIoutLimit, 32
st_ObcIoutLimit:
	.zero	32
.section .bss.st_ObcVoutLimit,"aw",@nobits
	.align 2
	.type	st_ObcVoutLimit, @object
	.size	st_ObcVoutLimit, 32
st_ObcVoutLimit:
	.zero	32
.section .bss.st_ObcIinLimit,"aw",@nobits
	.align 2
	.type	st_ObcIinLimit, @object
	.size	st_ObcIinLimit, 32
st_ObcIinLimit:
	.zero	32
.section .bss.st_ObcVinLimit,"aw",@nobits
	.align 2
	.type	st_ObcVinLimit, @object
	.size	st_ObcVinLimit, 32
st_ObcVinLimit:
	.zero	32
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
	.file 5 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8f4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcDiagAdc.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x28
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x187
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
	.uaword	0x214
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x179
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x205
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3b
	.uaword	0x2a6
	.uleb128 0x5
	.string	"NOR_LOWER"
	.sleb128 0
	.uleb128 0x5
	.string	"NOR_UPPER"
	.sleb128 1
	.uleb128 0x5
	.string	"NOR_RECOVER_LOWER"
	.sleb128 2
	.uleb128 0x5
	.string	"NOR_RECOVER_UPPER"
	.sleb128 3
	.uleb128 0x5
	.string	"FAULT_LOWER"
	.sleb128 4
	.uleb128 0x5
	.string	"FAULT_UPPER"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x2f8
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
	.uaword	0x2a6
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x3bd
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x2f8
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x2f8
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x2f8
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x2f8
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x2f8
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x2f8
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x2f8
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x2f8
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x2f8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x30c
	.uleb128 0x6
	.byte	0x20
	.byte	0x4
	.byte	0x6c
	.uaword	0x453
	.uleb128 0x7
	.string	"f32_limit"
	.byte	0x4
	.byte	0x6e
	.uaword	0x453
	.byte	0
	.uleb128 0x7
	.string	"u16_DeratingCnt"
	.byte	0x4
	.byte	0x6f
	.uaword	0x227
	.byte	0x18
	.uleb128 0x7
	.string	"u16_FaultUnderCnt"
	.byte	0x4
	.byte	0x70
	.uaword	0x227
	.byte	0x1a
	.uleb128 0x7
	.string	"u16_FaultOvertCnt"
	.byte	0x4
	.byte	0x71
	.uaword	0x227
	.byte	0x1c
	.uleb128 0x7
	.string	"u8_SensorState"
	.byte	0x4
	.byte	0x72
	.uaword	0x2f8
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	0x233
	.uaword	0x463
	.uleb128 0x9
	.uaword	0x463
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"st_AdcLimitValue"
	.byte	0x4
	.byte	0x73
	.uaword	0x3d5
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x529
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x233
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x233
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x233
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x233
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x233
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x233
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x487
	.uleb128 0xa
	.string	"DiagAdc_ObcInputV"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uaword	0x5a0
	.uleb128 0xb
	.string	"u8_HV_V"
	.byte	0x1
	.byte	0x91
	.uaword	0x2f8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x91
	.uaword	0x5a0
	.uleb128 0xb
	.string	"f32_adcRealInputV"
	.byte	0x1
	.byte	0x91
	.uaword	0x233
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x93
	.uaword	0x2f8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x46f
	.uleb128 0xa
	.string	"DiagAdc_ObcInputI"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uaword	0x604
	.uleb128 0xb
	.string	"u8_HV_I"
	.byte	0x1
	.byte	0xb3
	.uaword	0x2f8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb3
	.uaword	0x5a0
	.uleb128 0xb
	.string	"f32_adcRealInputI"
	.byte	0x1
	.byte	0xb3
	.uaword	0x233
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb5
	.uaword	0x2f8
	.byte	0
	.uleb128 0xa
	.string	"DiagAdc_ObcOutputV"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uaword	0x664
	.uleb128 0xb
	.string	"u8_LV_V"
	.byte	0x1
	.byte	0xd3
	.uaword	0x2f8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd3
	.uaword	0x5a0
	.uleb128 0xb
	.string	"f32_adcRealOutputV"
	.byte	0x1
	.byte	0xd3
	.uaword	0x233
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd5
	.uaword	0x2f8
	.byte	0
	.uleb128 0xa
	.string	"DiagAdc_ObcOutputI"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uaword	0x6c4
	.uleb128 0xb
	.string	"u8_LV_I"
	.byte	0x1
	.byte	0xf5
	.uaword	0x2f8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf5
	.uaword	0x5a0
	.uleb128 0xb
	.string	"f32_adcRealOutputI"
	.byte	0x1
	.byte	0xf5
	.uaword	0x233
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf7
	.uaword	0x2f8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Asw_Obc_AdcInit"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"Asw_Obc_DiagAdcValues"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x822
	.uleb128 0x11
	.string	"stp_DiagFlags"
	.byte	0x1
	.byte	0x77
	.uaword	0x822
	.uaword	.LLST0
	.uleb128 0x11
	.string	"stp_adcValues"
	.byte	0x1
	.byte	0x77
	.uaword	0x828
	.uaword	.LLST1
	.uleb128 0x12
	.string	"pAdcObcVinLimit"
	.byte	0x1
	.byte	0x79
	.uaword	0x5a0
	.byte	0x6
	.byte	0x3
	.uaword	st_ObcVinLimit
	.byte	0x9f
	.uleb128 0x12
	.string	"pAdcObcIinLimit"
	.byte	0x1
	.byte	0x7a
	.uaword	0x5a0
	.byte	0x6
	.byte	0x3
	.uaword	st_ObcIinLimit
	.byte	0x9f
	.uleb128 0x12
	.string	"pAdcObcVoutLimit"
	.byte	0x1
	.byte	0x7b
	.uaword	0x5a0
	.byte	0x6
	.byte	0x3
	.uaword	st_ObcVoutLimit
	.byte	0x9f
	.uleb128 0x12
	.string	"pAdcObcIoutLimit"
	.byte	0x1
	.byte	0x7c
	.uaword	0x5a0
	.byte	0x6
	.byte	0x3
	.uaword	st_ObcIoutLimit
	.byte	0x9f
	.uleb128 0x13
	.uaword	0x664
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x81
	.uleb128 0x14
	.uaword	0x693
	.byte	0x6
	.byte	0x3
	.uaword	st_ObcIoutLimit
	.byte	0x9f
	.uleb128 0x15
	.uaword	0x69e
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	0x684
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0x6b8
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.LVL9
	.uaword	0x8a5
	.uaword	0x80c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcIoutLimit
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL12
	.uaword	0x8cf
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcIoutLimit
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x3bd
	.uleb128 0xe
	.byte	0x4
	.uaword	0x82e
	.uleb128 0x1b
	.uaword	0x529
	.uleb128 0x12
	.string	"st_ObcVinLimit"
	.byte	0x1
	.byte	0x48
	.uaword	0x46f
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcVinLimit
	.uleb128 0x12
	.string	"st_ObcIinLimit"
	.byte	0x1
	.byte	0x49
	.uaword	0x46f
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcIinLimit
	.uleb128 0x12
	.string	"st_ObcVoutLimit"
	.byte	0x1
	.byte	0x4a
	.uaword	0x46f
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcVoutLimit
	.uleb128 0x12
	.string	"st_ObcIoutLimit"
	.byte	0x1
	.byte	0x4b
	.uaword	0x46f
	.byte	0x5
	.byte	0x3
	.uaword	st_ObcIoutLimit
	.uleb128 0x1c
	.byte	0x1
	.string	"Asw_Adc_OverMode"
	.byte	0x5
	.byte	0x46
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uaword	0x8cf
	.uleb128 0x1d
	.uaword	0x5a0
	.uleb128 0x1d
	.uaword	0x233
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Asw_Adc_NormalMode"
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.uaword	0x2f8
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x5a0
	.uleb128 0x1d
	.uaword	0x233
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x84
	.sleb128 5
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 5
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x84
	.sleb128 5
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL12-1
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"stp_AdcLimit"
.LASF1:
	.string	"u8_rtn"
	.extern	Asw_Adc_NormalMode,STT_FUNC,0
	.extern	Asw_Adc_OverMode,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
