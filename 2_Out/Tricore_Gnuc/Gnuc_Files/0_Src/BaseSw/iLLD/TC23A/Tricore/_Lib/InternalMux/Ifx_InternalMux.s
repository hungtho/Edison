	.file	"Ifx_InternalMux.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_InternalMux_init,"ax",@progbits
	.align 1
	.global	Ifx_InternalMux_init
	.type	Ifx_InternalMux_init, @function
Ifx_InternalMux_init:
.LFB163:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/InternalMux/Ifx_InternalMux.c"
	.loc 1 57 0
.LVL0:
	.loc 1 60 0
	ld.a	%a2, [%a4]0
	jz.a	%a2, .L1
	ld.a	%a15, [%a4] 4
	add.a	%a2, -1
.LVL1:
.L3:
.LBB5:
.LBB6:
.LBB7:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1451 0 discriminator 3
	ld.a	%a3, [%a15]0
	ld.w	%d15, [%a15] 4
	.loc 2 1453 0 discriminator 3
	ld.w	%d2, [%a15] 8
	mov	%d3, 0
	.loc 2 1451 0 discriminator 3
#APP
	# 1451 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov %d3,%d15 
                  ldmst [%a3]0,%e2
	# 0 "" 2
#NO_APP
	lea	%a15, [%a15] 12
.LVL2:
	loop	%a2, .L3
.LVL3:
.L1:
	ret
.LBE7:
.LBE6:
.LBE5:
.LFE163:
	.size	Ifx_InternalMux_init, .-Ifx_InternalMux_init
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/InternalMux/Ifx_InternalMux.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3b2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/InternalMux/Ifx_InternalMux.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x71
	.uaword	0x183
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
	.byte	0x4
	.uaword	0x23c
	.uleb128 0x5
	.uleb128 0x6
	.byte	0xc
	.byte	0x3
	.byte	0x41
	.uaword	0x271
	.uleb128 0x7
	.string	"regAddr"
	.byte	0x3
	.byte	0x43
	.uaword	0x236
	.byte	0
	.uleb128 0x7
	.string	"mask"
	.byte	0x3
	.byte	0x44
	.uaword	0x1c6
	.byte	0x4
	.uleb128 0x7
	.string	"value"
	.byte	0x3
	.byte	0x45
	.uaword	0x1c6
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_InternalMux_MuxConfig"
	.byte	0x3
	.byte	0x46
	.uaword	0x23d
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x4b
	.uaword	0x2ba
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x4d
	.uaword	0x1c6
	.byte	0
	.uleb128 0x7
	.string	"muxConfig"
	.byte	0x3
	.byte	0x4e
	.uaword	0x2ba
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x271
	.uleb128 0x3
	.string	"Ifx_InternalMux_Config"
	.byte	0x3
	.byte	0x4f
	.uaword	0x292
	.uleb128 0x8
	.string	"Ifx__ldmst"
	.byte	0x2
	.uahalf	0x5a9
	.byte	0x1
	.byte	0x3
	.uaword	0x31f
	.uleb128 0x9
	.string	"address"
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x236
	.uleb128 0x9
	.string	"mask"
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x1c6
	.uleb128 0x9
	.string	"value"
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x1c6
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Ifx_InternalMux_init"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3aa
	.uleb128 0xb
	.string	"cfg"
	.byte	0x1
	.byte	0x38
	.uaword	0x3aa
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1c6
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0xc
	.string	"muxCfg"
	.byte	0x1
	.byte	0x3e
	.uaword	0x271
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x2de
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x41
	.uleb128 0xf
	.uaword	0x310
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x303
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x2f3
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3b0
	.uleb128 0x10
	.uaword	0x2c0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
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
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xc
	.byte	0x8f
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x9
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
