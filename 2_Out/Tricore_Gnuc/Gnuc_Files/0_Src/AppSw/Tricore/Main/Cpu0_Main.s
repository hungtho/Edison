	.file	"Cpu0_Main.c"
.section .text,"ax",@progbits
.Ltext0:
.section .boot,"ax",@progbits
	.align 1
	.global	Boot
	.type	Boot, @function
Boot:
.LFB325:
	.file 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.c"
	.loc 1 85 0
	.loc 1 86 0
#APP
	# 86 "0_Src/AppSw/Tricore/Main/Cpu0_Main.c" 1
	ja 0x80100020
	# 0 "" 2
#NO_APP
	ret
.LFE325:
	.size	Boot, .-Boot
.section .text.core0_main,"ax",@progbits
	.align 1
	.global	core0_main
	.type	core0_main, @function
core0_main:
.LFB326:
	.loc 1 98 0
.LBB4:
.LBB5:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
	.loc 2 671 0
#APP
	# 671 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 101 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL0:
	mov	%d4, %d2
	call	IfxScuWdt_enableCpuWatchdog
.LVL1:
	.loc 1 102 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL2:
	mov	%d4, %d2
	call	IfxScuWdt_enableSafetyWatchdog
.LVL3:
	.loc 1 103 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL4:
	mov.u	%d5, 63705
	mov	%d4, %d2
	call	IfxScuWdt_changeCpuWatchdogReload
.LVL5:
	.loc 1 104 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL6:
	mov.u	%d5, 63705
	mov	%d4, %d2
	call	IfxScuWdt_changeSafetyWatchdogReload
.LVL7:
	.loc 1 105 0
	call	IfxScuWdt_enableWatchdogWithDebugger
.LVL8:
	.loc 1 108 0
	movh.a	%a15, hi:g_cpuSyncEvent
	lea	%a15, [%a15] lo:g_cpuSyncEvent
	mov.aa	%a4, %a15
	call	IfxCpu_emitEvent
.LVL9:
	.loc 1 109 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	IfxCpu_waitEvent
.LVL10:
	.loc 1 111 0
	call	RTE_BSW_Init
.LVL11:
	.loc 1 113 0
	call	RTE_OBC_ASW_Init
.LVL12:
	.loc 1 114 0
	call	RTE_LDC_ASW_Init
.LVL13:
	movh.a	%a15, hi:u8g_task_flag_100u
	lea	%a15, [%a15] lo:u8g_task_flag_100u
	.loc 1 118 0
	mov.aa	%a12, %a15
	.loc 1 119 0
	mov	%d8, 0
.L3:
	.loc 1 118 0 discriminator 1
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L3
	.loc 1 119 0
	st.b	[%a12]0, %d8
	.loc 1 121 0
	call	RTE_Task_Run
.LVL14:
	.loc 1 122 0
	j	.L3
.LFE326:
	.size	core0_main, .-core0_main
.section .bss.g_cpuSyncEvent,"aw",@nobits
	.align 2
	.type	g_cpuSyncEvent, @object
	.size	g_cpuSyncEvent, 4
g_cpuSyncEvent:
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
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 7 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_ISR.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
	.file 9 "0_Src/AppSw/Tricore/RTE_Module/Rte_Interface.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x693
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/Main/Cpu0_Main.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x65
	.uaword	0x168
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x3
	.byte	0x69
	.uaword	0x168
	.uleb128 0x2
	.string	"uint16"
	.byte	0x3
	.byte	0x6d
	.uaword	0x194
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x3
	.byte	0x71
	.uaword	0x1b8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x3
	.byte	0x83
	.uaword	0x211
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"byte"
	.byte	0x4
	.byte	0x56
	.uaword	0x179
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26e
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x295
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x268
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x203
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x26f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x88
	.uaword	0x2ed
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"IfxCpu_syncEvent"
	.byte	0x2
	.byte	0x7a
	.uaword	0x2af
	.uleb128 0xa
	.string	"IfxCpu_enableInterrupts"
	.byte	0x2
	.uahalf	0x29d
	.byte	0x1
	.byte	0x3
	.uleb128 0xb
	.byte	0x1
	.string	"Boot"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"core0_main"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x259
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x425
	.uleb128 0xd
	.uaword	0x305
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x63
	.uleb128 0xe
	.uaword	.LVL0
	.uaword	0x494
	.uleb128 0xe
	.uaword	.LVL1
	.uaword	0x4c0
	.uleb128 0xe
	.uaword	.LVL2
	.uaword	0x4ed
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x51c
	.uleb128 0xe
	.uaword	.LVL4
	.uaword	0x494
	.uleb128 0xf
	.uaword	.LVL5
	.uaword	0x54c
	.uaword	0x3ac
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xb
	.uahalf	0xf8d9
	.byte	0
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0x4ed
	.uleb128 0xf
	.uaword	.LVL7
	.uaword	0x584
	.uaword	0x3ca
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xb
	.uahalf	0xf8d9
	.byte	0
	.uleb128 0xe
	.uaword	.LVL8
	.uaword	0x5bf
	.uleb128 0xf
	.uaword	.LVL9
	.uaword	0x5ef
	.uaword	0x3e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL10
	.uaword	0x617
	.uaword	0x400
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL11
	.uaword	0x642
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0x655
	.uleb128 0xe
	.uaword	.LVL13
	.uaword	0x66c
	.uleb128 0xe
	.uaword	.LVL14
	.uaword	0x683
	.byte	0
	.uleb128 0x11
	.string	"g_cpuSyncEvent"
	.byte	0x1
	.byte	0x44
	.uaword	0x2ed
	.byte	0x5
	.byte	0x3
	.uaword	g_cpuSyncEvent
	.uleb128 0x12
	.uaword	0x295
	.uaword	0x451
	.uleb128 0x13
	.uaword	0x24d
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xa4
	.uaword	0x46e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x441
	.uleb128 0x14
	.string	"u8g_task_flag_100u"
	.byte	0x7
	.byte	0x42
	.uaword	0x48f
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0x241
	.uleb128 0x17
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x8
	.uahalf	0x181
	.byte	0x1
	.uaword	0x186
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_enableCpuWatchdog"
	.byte	0x8
	.uahalf	0x16e
	.byte	0x1
	.byte	0x1
	.uaword	0x4ed
	.uleb128 0x19
	.uaword	0x186
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x8
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x186
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_enableSafetyWatchdog"
	.byte	0x8
	.uahalf	0x178
	.byte	0x1
	.byte	0x1
	.uaword	0x54c
	.uleb128 0x19
	.uaword	0x186
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_changeCpuWatchdogReload"
	.byte	0x8
	.uahalf	0x13b
	.byte	0x1
	.byte	0x1
	.uaword	0x584
	.uleb128 0x19
	.uaword	0x186
	.uleb128 0x19
	.uaword	0x186
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxScuWdt_changeSafetyWatchdogReload"
	.byte	0x8
	.uahalf	0x150
	.byte	0x1
	.byte	0x1
	.uaword	0x5bf
	.uleb128 0x19
	.uaword	0x186
	.uleb128 0x19
	.uaword	0x186
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxScuWdt_enableWatchdogWithDebugger"
	.byte	0x8
	.uahalf	0x1af
	.byte	0x1
	.uaword	0x159
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_emitEvent"
	.byte	0x2
	.uahalf	0x283
	.byte	0x1
	.byte	0x1
	.uaword	0x611
	.uleb128 0x19
	.uaword	0x611
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ed
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxCpu_waitEvent"
	.byte	0x2
	.uahalf	0x27a
	.byte	0x1
	.uaword	0x159
	.byte	0x1
	.uaword	0x642
	.uleb128 0x19
	.uaword	0x611
	.uleb128 0x19
	.uaword	0x1aa
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_BSW_Init"
	.byte	0x9
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_OBC_ASW_Init"
	.byte	0x9
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_LDC_ASW_Init"
	.byte	0x9
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"RTE_Task_Run"
	.byte	0x9
	.byte	0x44
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
	.uleb128 0x3
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB325
	.uaword	.LFE325
	.uaword	.LFB326
	.uaword	.LFE326
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	RTE_Task_Run,STT_FUNC,0
	.extern	u8g_task_flag_100u,STT_OBJECT,1
	.extern	RTE_LDC_ASW_Init,STT_FUNC,0
	.extern	RTE_OBC_ASW_Init,STT_FUNC,0
	.extern	RTE_BSW_Init,STT_FUNC,0
	.extern	IfxCpu_waitEvent,STT_FUNC,0
	.extern	IfxCpu_emitEvent,STT_FUNC,0
	.extern	IfxScuWdt_enableWatchdogWithDebugger,STT_FUNC,0
	.extern	IfxScuWdt_changeSafetyWatchdogReload,STT_FUNC,0
	.extern	IfxScuWdt_changeCpuWatchdogReload,STT_FUNC,0
	.extern	IfxScuWdt_enableSafetyWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_enableCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
