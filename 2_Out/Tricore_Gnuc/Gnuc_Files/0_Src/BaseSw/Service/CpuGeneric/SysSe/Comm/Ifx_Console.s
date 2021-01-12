	.file	"Ifx_Console.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_Console_init,"ax",@progbits
	.align 1
	.global	Ifx_Console_init
	.type	Ifx_Console_init, @function
Ifx_Console_init:
.LFB183:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.c"
	.loc 1 60 0
.LVL0:
	.loc 1 61 0
	movh.a	%a2, hi:Ifx_g_console
	lea	%a15, [%a2] lo:Ifx_g_console
	.loc 1 62 0
	mov	%d15, 0
	.loc 1 61 0
	st.a	[%a2] lo:Ifx_g_console, %a4
	.loc 1 62 0
	st.h	[%a15] 4, %d15
	ret
.LFE183:
	.size	Ifx_Console_init, .-Ifx_Console_init
.section .text.Ifx_Console_print,"ax",@progbits
	.align 1
	.global	Ifx_Console_print
	.type	Ifx_Console_print, @function
Ifx_Console_print:
.LFB184:
	.loc 1 73 0
.LVL1:
	.loc 1 74 0
	movh.a	%a15, hi:Ifx_g_console
	ld.a	%a2, [%a15] lo:Ifx_g_console
	.loc 1 73 0
	lea	%SP, [%SP] -264
.LCFI0:
	.loc 1 89 0
	mov	%d2, 1
	.loc 1 74 0
	ld.bu	%d15, [%a2] 4
	jz	%d15, .L6
	.loc 1 91 0 discriminator 1
	ret
.L6:
	mov.aa	%a5, %a4
.LVL2:
.LBB13:
	.loc 1 80 0
	lea	%a6, [%SP] 264
.LVL3:
	lea	%a4, [%SP] 8
.LVL4:
	call	vsprintf
.LVL5:
	.loc 1 82 0
	lea	%a4, [%SP] 8
	call	strlen
.LVL6:
	.loc 1 85 0
	ld.a	%a15, [%a15] lo:Ifx_g_console
.LVL7:
.LBB14:
.LBB15:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.loc 2 264 0
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
.LBE15:
.LBE14:
	.loc 1 82 0
	lea	%a6, [%SP] 264
.LVL8:
.LBB18:
.LBB16:
	.loc 2 264 0
	mov	%d4, -1
.LBE16:
.LBE18:
	.loc 1 82 0
	st.h	[+%a6]-258, %d2
.LVL9:
.LBB19:
.LBB17:
	.loc 2 264 0
	lea	%a5, [%SP] 8
.LVL10:
	addih	%d5, %d4, 32768
	calli	%a2
.LVL11:
.LBE17:
.LBE19:
.LBE13:
	.loc 1 91 0
	ret
.LFE184:
	.size	Ifx_Console_print, .-Ifx_Console_print
.section .rodata,"a",@progbits
.LC0:
	.string	"                "
.section .text.Ifx_Console_printAlign,"ax",@progbits
	.align 1
	.global	Ifx_Console_printAlign
	.type	Ifx_Console_printAlign, @function
Ifx_Console_printAlign:
.LFB185:
	.loc 1 102 0
.LVL12:
	.loc 1 103 0
	movh.a	%a13, hi:Ifx_g_console
	ld.a	%a2, [%a13] lo:Ifx_g_console
	.loc 1 102 0
	lea	%SP, [%SP] -280
.LCFI1:
	.loc 1 103 0
	lea	%a15, [%a13] lo:Ifx_g_console
	ld.bu	%d15, [%a2] 4
	.loc 1 128 0
	mov	%d2, 1
	.loc 1 103 0
	jz	%d15, .L15
	.loc 1 130 0 discriminator 1
	ret
.L15:
.LBB20:
	.loc 1 107 0
	lea	%a12, [%SP] 7
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
	mov.aa	%a3, %a12
	mov.aa	%a5, %a4
		# #chunks=17, chunksize=1, remains=0
	lea	%a4, 17-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
.LVL13:
	.loc 1 110 0
	lea	%a4, [%SP] 24
	lea	%a6, [%SP] 280
.LVL14:
	call	vsprintf
.LVL15:
	.loc 1 112 0
	lea	%a4, [%SP] 24
	call	strlen
.LVL16:
	.loc 1 114 0
	ld.h	%d15, [%a15] 4
.LVL17:
	.loc 1 112 0
	st.h	[%SP] 2, %d2
.LBB21:
.LBB22:
.LBB23:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 180 0
	mov	%d8, 10
.LBE23:
.LBE22:
.LBE21:
	.loc 1 116 0
	jlez	%d15, .L11
.LVL18:
.L13:
.LBB30:
.LBB25:
.LBB24:
	.loc 3 180 0
#APP
	# 180 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d2, %d15, %d8
	# 0 "" 2
.LVL19:
#NO_APP
.LBE24:
.LBE25:
	.loc 1 120 0
	ld.a	%a3, [%a15]0
.LVL20:
.LBB26:
.LBB27:
	.loc 2 264 0
	ld.a	%a2, [%a3] 8
	ld.a	%a4, [%a3]0
	mov	%d4, -1
.LBE27:
.LBE26:
	.loc 1 119 0
	st.h	[%SP] 4, %d2
.LBB29:
.LBB28:
	.loc 2 264 0
	mov.aa	%a5, %a12
	lea	%a6, [%SP] 4
.LVL21:
	addih	%d5, %d4, 32768
	calli	%a2
.LVL22:
.LBE28:
.LBE29:
	.loc 1 121 0
	ld.h	%d2, [%SP] 4
	sub	%d15, %d2
.LVL23:
	extr	%d15, %d15, 0, 16
.LVL24:
.LBE30:
	.loc 1 116 0
	jgtz	%d15, .L13
.LVL25:
.L11:
	.loc 1 124 0
	ld.a	%a15, [%a13] lo:Ifx_g_console
.LVL26:
.LBB31:
.LBB32:
	.loc 2 264 0
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	mov	%d4, -1
	lea	%a5, [%SP] 24
.LVL27:
	lea	%a6, [%SP] 2
.LVL28:
	addih	%d5, %d4, 32768
	ji	%a2
.LVL29:
.LBE32:
.LBE31:
.LBE20:
.LFE185:
	.size	Ifx_Console_printAlign, .-Ifx_Console_printAlign
	.global	Ifx_g_console
.section .bss.Ifx_g_console,"aw",@nobits
	.align 2
	.type	Ifx_g_console, @object
	.size	Ifx_g_console, 8
Ifx_g_console:
	.zero	8
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
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.byte	0x4
	.uaword	.LCFI0-.LFB184
	.byte	0xe
	.uleb128 0x108
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.byte	0x4
	.uaword	.LCFI1-.LFB185
	.byte	0xe
	.uleb128 0x118
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 8 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 9 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 10 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h"
	.file 11 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc74
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x227
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x235
	.uleb128 0x5
	.uaword	0x227
	.uleb128 0x6
	.string	"size_t"
	.byte	0x4
	.byte	0xd4
	.uaword	0x20c
	.uleb128 0x6
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x28
	.uaword	0x25e
	.uleb128 0x7
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x6
	.string	"va_list"
	.byte	0x5
	.byte	0x62
	.uaword	0x248
	.uleb128 0x6
	.string	"boolean"
	.byte	0x6
	.byte	0x65
	.uaword	0x17c
	.uleb128 0x6
	.string	"uint32"
	.byte	0x6
	.byte	0x71
	.uaword	0x20c
	.uleb128 0x6
	.string	"sint16"
	.byte	0x6
	.byte	0x7e
	.uaword	0x18d
	.uleb128 0x6
	.string	"sint32"
	.byte	0x6
	.byte	0x83
	.uaword	0x1f2
	.uleb128 0x6
	.string	"sint64"
	.byte	0x6
	.byte	0x8a
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x6
	.string	"pchar"
	.byte	0x7
	.byte	0x38
	.uaword	0x22f
	.uleb128 0x6
	.string	"Ifx_TickTime"
	.byte	0x7
	.byte	0x4f
	.uaword	0x2ba
	.uleb128 0x6
	.string	"Ifx_SizeT"
	.byte	0x7
	.byte	0x5c
	.uaword	0x29e
	.uleb128 0x6
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x8
	.byte	0x76
	.uaword	0x20a
	.uleb128 0x6
	.string	"IfxStdIf_DPipe"
	.byte	0x2
	.byte	0x47
	.uaword	0x343
	.uleb128 0x8
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x2
	.byte	0xe9
	.uaword	0x4c3
	.uleb128 0x9
	.string	"driver"
	.byte	0x2
	.byte	0xeb
	.uaword	0x30d
	.byte	0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x2
	.byte	0xec
	.uaword	0x281
	.byte	0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x2
	.byte	0xef
	.uaword	0x50f
	.byte	0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x2
	.byte	0xf0
	.uaword	0x556
	.byte	0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x2
	.byte	0xf1
	.uaword	0x571
	.byte	0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x2
	.byte	0xf2
	.uaword	0x5aa
	.byte	0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x2
	.byte	0xf3
	.uaword	0x657
	.byte	0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x2
	.byte	0xf4
	.uaword	0x67b
	.byte	0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x2
	.byte	0xf5
	.uaword	0x6b5
	.byte	0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x2
	.byte	0xf6
	.uaword	0x6f8
	.byte	0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x2
	.byte	0xf7
	.uaword	0x71c
	.byte	0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x2
	.byte	0xf8
	.uaword	0x785
	.byte	0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x2
	.byte	0xf9
	.uaword	0x755
	.byte	0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x2
	.byte	0xfa
	.uaword	0x7a3
	.byte	0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x2
	.byte	0xfb
	.uaword	0x7c3
	.byte	0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x2
	.byte	0xfc
	.uaword	0x7e4
	.byte	0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x2
	.byte	0xfe
	.uaword	0x5e3
	.byte	0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x2
	.byte	0xff
	.uaword	0x61c
	.byte	0x44
	.uleb128 0xa
	.string	"resetSendCount"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x802
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x2
	.byte	0x49
	.uaword	0x4e4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ea
	.uleb128 0xb
	.uaword	0x281
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x2
	.byte	0x4a
	.uaword	0x4e4
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x2
	.byte	0x5c
	.uaword	0x52b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x531
	.uleb128 0xc
	.byte	0x1
	.uaword	0x281
	.uaword	0x550
	.uleb128 0xd
	.uaword	0x30d
	.uleb128 0xd
	.uaword	0x20a
	.uleb128 0xd
	.uaword	0x550
	.uleb128 0xd
	.uaword	0x2e8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2fc
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x2
	.byte	0x6b
	.uaword	0x52b
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x2
	.byte	0x73
	.uaword	0x594
	.uleb128 0x4
	.byte	0x4
	.uaword	0x59a
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x5aa
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x2
	.byte	0x7b
	.uaword	0x5cd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5d3
	.uleb128 0xc
	.byte	0x1
	.uaword	0x4ef
	.uaword	0x5e3
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x2
	.byte	0x83
	.uaword	0x606
	.uleb128 0x4
	.byte	0x4
	.uaword	0x60c
	.uleb128 0xc
	.byte	0x1
	.uaword	0x290
	.uaword	0x61c
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x2
	.byte	0x8b
	.uaword	0x641
	.uleb128 0x4
	.byte	0x4
	.uaword	0x647
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2e8
	.uaword	0x657
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x2
	.byte	0x93
	.uaword	0x594
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x2
	.byte	0x9b
	.uaword	0x69f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6a5
	.uleb128 0xc
	.byte	0x1
	.uaword	0x4c3
	.uaword	0x6b5
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x2
	.byte	0xa6
	.uaword	0x6d8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6de
	.uleb128 0xc
	.byte	0x1
	.uaword	0x281
	.uaword	0x6f8
	.uleb128 0xd
	.uaword	0x30d
	.uleb128 0xd
	.uaword	0x2fc
	.uleb128 0xd
	.uaword	0x2e8
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x2
	.byte	0xb1
	.uaword	0x6d8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x2
	.byte	0xba
	.uaword	0x73a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x740
	.uleb128 0xc
	.byte	0x1
	.uaword	0x281
	.uaword	0x755
	.uleb128 0xd
	.uaword	0x30d
	.uleb128 0xd
	.uaword	0x2e8
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x2
	.byte	0xc1
	.uaword	0x773
	.uleb128 0x4
	.byte	0x4
	.uaword	0x779
	.uleb128 0xe
	.byte	0x1
	.uaword	0x785
	.uleb128 0xd
	.uaword	0x30d
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x2
	.byte	0xc8
	.uaword	0x773
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x2
	.byte	0xd0
	.uaword	0x773
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x2
	.byte	0xd7
	.uaword	0x773
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x2
	.byte	0xde
	.uaword	0x773
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x2
	.byte	0xe5
	.uaword	0x773
	.uleb128 0xf
	.byte	0x8
	.byte	0x9
	.byte	0x3a
	.uaword	0x84a
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x9
	.byte	0x3c
	.uaword	0x84a
	.byte	0
	.uleb128 0x9
	.string	"align"
	.byte	0x9
	.byte	0x3d
	.uaword	0x29e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x32d
	.uleb128 0x6
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x3e
	.uaword	0x827
	.uleb128 0x11
	.string	"IfxStdIf_DPipe_write"
	.byte	0x2
	.uahalf	0x106
	.byte	0x1
	.uaword	0x281
	.byte	0x3
	.uaword	0x8c0
	.uleb128 0x12
	.string	"stdIf"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x84a
	.uleb128 0x12
	.string	"data"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x20a
	.uleb128 0x12
	.string	"count"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x550
	.uleb128 0x12
	.string	"timeout"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x2e8
	.byte	0
	.uleb128 0x13
	.string	"Ifx__min"
	.byte	0x3
	.byte	0xb1
	.byte	0x1
	.uaword	0x2ac
	.byte	0x3
	.uaword	0x8f4
	.uleb128 0x14
	.string	"a"
	.byte	0x3
	.byte	0xb1
	.uaword	0x2ac
	.uleb128 0x14
	.string	"b"
	.byte	0x3
	.byte	0xb1
	.uaword	0x2ac
	.uleb128 0x15
	.string	"res"
	.byte	0x3
	.byte	0xb3
	.uaword	0x2ac
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Ifx_Console_init"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x927
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x84a
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Ifx_Console_print"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x281
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa2b
	.uleb128 0x19
	.string	"format"
	.byte	0x1
	.byte	0x48
	.uaword	0x2db
	.uaword	.LLST0
	.uleb128 0x1a
	.uleb128 0x1b
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1c
	.string	"message"
	.byte	0x1
	.byte	0x4c
	.uaword	0xa2b
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2fc
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x1d
	.string	"args"
	.byte	0x1
	.byte	0x4e
	.uaword	0x272
	.uaword	.LLST1
	.uleb128 0x1e
	.uaword	0x863
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x55
	.uaword	0x9f6
	.uleb128 0x1f
	.uaword	0x886
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.uaword	0x886
	.byte	0x1
	.byte	0x6f
	.uleb128 0x20
	.uaword	0x8af
	.uaxword	0x7fffffffffffffff
	.uleb128 0x21
	.uaword	0x8a1
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0x894
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	.LVL11
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL5
	.uaword	0xc39
	.uaword	0xa18
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x25
	.uaword	.LVL6
	.uaword	0xc60
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x227
	.uaword	0xa3b
	.uleb128 0x27
	.uaword	0x1fe
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Ifx_Console_printAlign"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	0x281
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc0d
	.uleb128 0x19
	.string	"format"
	.byte	0x1
	.byte	0x65
	.uaword	0x2db
	.uaword	.LLST4
	.uleb128 0x1a
	.uleb128 0x28
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0xbf7
	.uleb128 0x1c
	.string	"message"
	.byte	0x1
	.byte	0x69
	.uaword	0xa2b
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1d
	.string	"align"
	.byte	0x1
	.byte	0x6a
	.uaword	0x2fc
	.uaword	.LLST5
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.byte	0x6a
	.uaword	0x2fc
	.byte	0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x1c
	.string	"spaces"
	.byte	0x1
	.byte	0x6b
	.uaword	0xc0d
	.byte	0x3
	.byte	0x91
	.sleb128 -273
	.uleb128 0x1d
	.string	"args"
	.byte	0x1
	.byte	0x6c
	.uaword	0x272
	.uaword	.LLST6
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0xb82
	.uleb128 0x1c
	.string	"scount"
	.byte	0x1
	.byte	0x76
	.uaword	0x2fc
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1e
	.uaword	0x8c0
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x77
	.uaword	0xb31
	.uleb128 0x21
	.uaword	0x8df
	.uaword	.LLST7
	.uleb128 0x21
	.uaword	0x8d6
	.uaword	.LLST8
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x2b
	.uaword	0x8e8
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x863
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x78
	.uleb128 0x21
	.uaword	0x886
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0x886
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0x8af
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	0x8a1
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	0x894
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	.LVL22
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x863
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.byte	0x7c
	.uaword	0xbc3
	.uleb128 0x1f
	.uaword	0x886
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.uaword	0x886
	.byte	0x1
	.byte	0x6f
	.uleb128 0x20
	.uaword	0x8af
	.uaxword	0x7fffffffffffffff
	.uleb128 0x21
	.uaword	0x8a1
	.uaword	.LLST15
	.uleb128 0x21
	.uaword	0x894
	.uaword	.LLST16
	.byte	0
	.uleb128 0x24
	.uaword	.LVL15
	.uaword	0xc39
	.uaword	0xbe5
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x25
	.uaword	.LVL16
	.uaword	0xc60
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL29
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x227
	.uaword	0xc1d
	.uleb128 0x27
	.uaword	0x1fe
	.byte	0x10
	.byte	0
	.uleb128 0x2f
	.string	"Ifx_g_console"
	.byte	0x1
	.byte	0x35
	.uaword	0x850
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uleb128 0x30
	.byte	0x1
	.string	"vsprintf"
	.byte	0xa
	.byte	0xc4
	.byte	0x1
	.uaword	0x1b0
	.byte	0x1
	.uaword	0xc60
	.uleb128 0xd
	.uaword	0x221
	.uleb128 0xd
	.uaword	0x22f
	.uleb128 0xd
	.uaword	0x20a
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"strlen"
	.byte	0xb
	.byte	0x22
	.byte	0x1
	.uaword	0x23a
	.byte	0x1
	.uleb128 0xd
	.uaword	0x22f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5-1
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x4
	.byte	0x86
	.sleb128 258
	.byte	0x9f
	.uaword	.LVL11-1
	.uaword	.LFE184
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0x86
	.sleb128 -258
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0x86
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x86
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x5
	.byte	0x3
	.uaword	Ifx_g_console+4
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL15-1
	.uaword	.LFE185
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x7fffffffffffffff
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0x91
	.sleb128 -276
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL22-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0x91
	.sleb128 -276
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0x91
	.sleb128 -278
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL29-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0x91
	.sleb128 -278
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL29-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"standardIo"
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
