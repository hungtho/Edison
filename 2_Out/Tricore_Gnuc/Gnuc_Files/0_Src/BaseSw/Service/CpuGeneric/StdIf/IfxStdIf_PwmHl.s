	.file	"IfxStdIf_PwmHl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStdIf_PwmHl_initConfig,"ax",@progbits
	.align 1
	.global	IfxStdIf_PwmHl_initConfig
	.type	IfxStdIf_PwmHl_initConfig, @function
IfxStdIf_PwmHl_initConfig:
.LFB220:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.c"
	.loc 1 49 0
.LVL0:
	.loc 1 50 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
	.loc 1 51 0
	st.w	[%a4] 4, %d15
	.loc 1 52 0
	mov	%d15, 0
	st.b	[%a4] 8, %d15
	.loc 1 53 0
	st.b	[%a4] 9, %d15
	.loc 1 54 0
	mov	%d2, -128
	.loc 1 55 0
	st.b	[%a4] 11, %d15
	.loc 1 56 0
	mov	%d15, 1
	.loc 1 54 0
	st.b	[%a4] 10, %d2
	.loc 1 56 0
	st.b	[%a4] 12, %d15
	.loc 1 57 0
	st.b	[%a4] 13, %d15
	ret
.LFE220:
	.size	IfxStdIf_PwmHl_initConfig, .-IfxStdIf_PwmHl_initConfig
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
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
	.file 5 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x560
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x1a2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x1a2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0xa7
	.uaword	0x22c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x75
	.uaword	0x27d
	.uleb128 0x5
	.string	"Ifx_ActiveState_low"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_ActiveState_high"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ActiveState"
	.byte	0x3
	.byte	0x78
	.uaword	0x247
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x7e
	.uaword	0x2f8
	.uleb128 0x5
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x4
	.byte	0x81
	.uaword	0x2b0
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x88
	.uaword	0x437
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x4
	.byte	0x91
	.uaword	0x312
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.byte	0xc3
	.uaword	0x501
	.uleb128 0x7
	.string	"deadtime"
	.byte	0x5
	.byte	0xc5
	.uaword	0x21d
	.byte	0
	.uleb128 0x7
	.string	"minPulse"
	.byte	0x5
	.byte	0xc6
	.uaword	0x21d
	.byte	0x4
	.uleb128 0x7
	.string	"channelCount"
	.byte	0x5
	.byte	0xc7
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x7
	.string	"emergencyEnabled"
	.byte	0x5
	.byte	0xc8
	.uaword	0x193
	.byte	0x9
	.uleb128 0x7
	.string	"outputMode"
	.byte	0x5
	.byte	0xca
	.uaword	0x2f8
	.byte	0xa
	.uleb128 0x7
	.string	"outputDriver"
	.byte	0x5
	.byte	0xcb
	.uaword	0x437
	.byte	0xb
	.uleb128 0x7
	.string	"ccxActiveState"
	.byte	0x5
	.byte	0xcd
	.uaword	0x27d
	.byte	0xc
	.uleb128 0x7
	.string	"coutxActiveState"
	.byte	0x5
	.byte	0xce
	.uaword	0x27d
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_PwmHl_Config"
	.byte	0x5
	.byte	0xcf
	.uaword	0x450
	.uleb128 0x8
	.byte	0x1
	.string	"IfxStdIf_PwmHl_initConfig"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x55d
	.uleb128 0x9
	.string	"config"
	.byte	0x1
	.byte	0x30
	.uaword	0x55d
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x501
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"