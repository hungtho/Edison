	.file	"ASW_ObcUtility.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_Init,"ax",@progbits
	.align 1
	.global	Asw_Obc_Init
	.type	Asw_Obc_Init, @function
Asw_Obc_Init:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcUtility.c"
	.loc 1 84 0
	.loc 1 85 0
	call	Asw_Obc_PiInit
.LVL0:
	.loc 1 86 0
	call	Asw_Obc_PiCofficient
.LVL1:
	.loc 1 87 0
	call	Asw_Obc_AdcInit
.LVL2:
	.loc 1 88 0
	call	Asw_Obc_RunInit
.LVL3:
	.loc 1 89 0
	j	Asw_Obc_ConstPwrInit
.LVL4:
.LFE0:
	.size	Asw_Obc_Init, .-Asw_Obc_Init
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
	.file 2 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
	.file 3 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcDiagAdc.h"
	.file 4 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
	.file 5 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcConstantPower.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2da
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcUtility.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x1
	.string	"Asw_Obc_Init"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x266
	.uleb128 0x4
	.uaword	.LVL0
	.uaword	0x266
	.uleb128 0x4
	.uaword	.LVL1
	.uaword	0x27b
	.uleb128 0x4
	.uaword	.LVL2
	.uaword	0x296
	.uleb128 0x4
	.uaword	.LVL3
	.uaword	0x2ac
	.uleb128 0x5
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x2c2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Asw_Obc_PiInit"
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"Asw_Obc_PiCofficient"
	.byte	0x2
	.byte	0x59
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"Asw_Obc_AdcInit"
	.byte	0x3
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"Asw_Obc_RunInit"
	.byte	0x4
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"Asw_Obc_ConstPwrInit"
	.byte	0x5
	.byte	0x41
	.byte	0x1
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
	.uleb128 0x4
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Asw_Obc_ConstPwrInit,STT_FUNC,0
	.extern	Asw_Obc_RunInit,STT_FUNC,0
	.extern	Asw_Obc_AdcInit,STT_FUNC,0
	.extern	Asw_Obc_PiCofficient,STT_FUNC,0
	.extern	Asw_Obc_PiInit,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
