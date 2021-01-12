	.file	"BSW_Defines.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.U8_CountUp,"ax",@progbits
	.align 1
	.global	U8_CountUp
	.type	U8_CountUp, @function
U8_CountUp:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
	.loc 1 81 0
.LVL0:
	.loc 1 81 0
	mov	%d2, %d4
	.loc 1 82 0
	jge.u	%d4, %d5, .L2
	.loc 1 84 0
	add	%d2, 1
	and	%d2, %d2, 255
.LVL1:
.L2:
	.loc 1 88 0
	ret
.LFE0:
	.size	U8_CountUp, .-U8_CountUp
.section .text.U8_CountDown,"ax",@progbits
	.align 1
	.global	U8_CountDown
	.type	U8_CountDown, @function
U8_CountDown:
.LFB1:
	.loc 1 98 0
.LVL2:
	.loc 1 98 0
	mov	%d2, %d4
	.loc 1 99 0
	jz	%d4, .L5
	.loc 1 101 0
	add	%d2, -1
	and	%d2, %d2, 255
.LVL3:
.L5:
	.loc 1 105 0
	ret
.LFE1:
	.size	U8_CountDown, .-U8_CountDown
.section .text.U16_CountUp,"ax",@progbits
	.align 1
	.global	U16_CountUp
	.type	U16_CountUp, @function
U16_CountUp:
.LFB2:
	.loc 1 115 0
.LVL4:
	.loc 1 115 0
	mov	%d2, %d4
	.loc 1 116 0
	jge.u	%d4, %d5, .L10
	.loc 1 118 0
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
.LVL5:
.L10:
	.loc 1 122 0
	ret
.LFE2:
	.size	U16_CountUp, .-U16_CountUp
.section .text.U16_CountDown,"ax",@progbits
	.align 1
	.global	U16_CountDown
	.type	U16_CountDown, @function
U16_CountDown:
.LFB3:
	.loc 1 132 0
.LVL6:
	.loc 1 132 0
	mov	%d2, %d4
	.loc 1 133 0
	jz	%d4, .L12
	.loc 1 135 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
.LVL7:
.L12:
	.loc 1 139 0
	ret
.LFE3:
	.size	U16_CountDown, .-U16_CountDown
.section .text.U32_CountUp,"ax",@progbits
	.align 1
	.global	U32_CountUp
	.type	U32_CountUp, @function
U32_CountUp:
.LFB4:
	.loc 1 149 0
.LVL8:
	.loc 1 152 0
	lt.u	%d2, %d4, %d5
.LVL9:
	.loc 1 156 0
	add	%d2, %d4
.LVL10:
	ret
.LFE4:
	.size	U32_CountUp, .-U32_CountUp
.section .text.U32_CountDown,"ax",@progbits
	.align 1
	.global	U32_CountDown
	.type	U32_CountDown, @function
U32_CountDown:
.LFB5:
	.loc 1 166 0
.LVL11:
	.loc 1 169 0
	cadd	%d2, %d4, %d4, -1
.LVL12:
	.loc 1 173 0
	ret
.LFE5:
	.size	U32_CountDown, .-U32_CountDown
.section .text.DetectEdgeState,"ax",@progbits
	.align 1
	.global	DetectEdgeState
	.type	DetectEdgeState, @function
DetectEdgeState:
.LFB6:
	.loc 1 183 0
.LVL13:
	.loc 1 186 0
	ld.bu	%d15, [%a4]0
	.loc 1 184 0
	mov	%d2, 0
	.loc 1 186 0
	jeq	%d15, %d4, .L23
	.loc 1 194 0
	mov	%d2, 2
	sel	%d2, %d4, %d2, 1
.LVL14:
	.loc 1 197 0
	st.b	[%a4]0, %d4
.LVL15:
.L23:
	.loc 1 201 0
	ret
.LFE6:
	.size	DetectEdgeState, .-DetectEdgeState
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x431
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
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
	.uaword	0x165
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x191
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1b5
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
	.uaword	0x176
	.uleb128 0x3
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x183
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1a7
	.uleb128 0x4
	.byte	0x1
	.string	"U8_CountUp"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x298
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x50
	.uaword	0x230
	.uaword	.LLST0
	.uleb128 0x6
	.string	"u8_Max"
	.byte	0x1
	.byte	0x50
	.uaword	0x230
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"U8_CountDown"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2cd
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x61
	.uaword	0x230
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"U16_CountUp"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x23c
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x312
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x72
	.uaword	0x23c
	.uaword	.LLST2
	.uleb128 0x6
	.string	"u16_Max"
	.byte	0x1
	.byte	0x72
	.uaword	0x23c
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"U16_CountDown"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	0x23c
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x348
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x1
	.byte	0x83
	.uaword	0x23c
	.uaword	.LLST3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"U32_CountUp"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x38d
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0x94
	.uaword	0x248
	.uaword	.LLST4
	.uleb128 0x6
	.string	"u32_Max"
	.byte	0x1
	.byte	0x94
	.uaword	0x248
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"U32_CountDown"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c3
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa5
	.uaword	0x248
	.uaword	.LLST5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"DetectEdgeState"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x42e
	.uleb128 0x6
	.string	"u8_NowValue"
	.byte	0x1
	.byte	0xb6
	.uaword	0x230
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.string	"u8p_LastValue"
	.byte	0x1
	.byte	0xb6
	.uaword	0x42e
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"u8_EdgeSts"
	.byte	0x1
	.byte	0xb8
	.uaword	0x230
	.uaword	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x230
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"u16_Count"
.LASF0:
	.string	"u8_Count"
.LASF2:
	.string	"u32_Count"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
