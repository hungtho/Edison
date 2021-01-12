	.file	"BSW_Pwm.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Bsw_Ldc_PwmEnable,"ax",@progbits
	.align 1
	.global	Bsw_Ldc_PwmEnable
	.type	Bsw_Ldc_PwmEnable, @function
Bsw_Ldc_PwmEnable:
.LFB282:
	.file 1 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Pwm.c"
	.loc 1 82 0
.LVL0:
	.loc 1 82 0
	mov	%d15, %d4
	.loc 1 83 0
	mov	%d5, 1
	mov	%d4, 0
.LVL1:
	call	Mcal_LDC_PWMAB_updateShift
.LVL2:
	.loc 1 84 0
	mov	%d4, %d15
	mov	%d5, 1
	j	Mcal_LDC_PWMCD_updateShift
.LVL3:
.LFE282:
	.size	Bsw_Ldc_PwmEnable, .-Bsw_Ldc_PwmEnable
.section .text.Bsw_Ldc_PwmDisable,"ax",@progbits
	.align 1
	.global	Bsw_Ldc_PwmDisable
	.type	Bsw_Ldc_PwmDisable, @function
Bsw_Ldc_PwmDisable:
.LFB283:
	.loc 1 95 0
	.loc 1 96 0
	mov	%e4, 0
	call	Mcal_LDC_PWMAB_updateShift
.LVL4:
	.loc 1 97 0
	mov	%e4, 0
	j	Mcal_LDC_PWMCD_updateShift
.LVL5:
.LFE283:
	.size	Bsw_Ldc_PwmDisable, .-Bsw_Ldc_PwmDisable
.section .text.Bsw_Obc_PwmEnable,"ax",@progbits
	.align 1
	.global	Bsw_Obc_PwmEnable
	.type	Bsw_Obc_PwmEnable, @function
Bsw_Obc_PwmEnable:
.LFB284:
	.loc 1 108 0
.LVL6:
	.loc 1 109 0
	mov	%d5, 1
	.loc 1 108 0
	mov	%d15, %d4
	.loc 1 109 0
	call	Mcal_OBC_PWMAB_updatefrequency
.LVL7:
	.loc 1 110 0
	mov	%d4, %d15
	mov	%d5, 1
	j	Mcal_OBC_PWMCD_updatefrequency
.LVL8:
.LFE284:
	.size	Bsw_Obc_PwmEnable, .-Bsw_Obc_PwmEnable
.section .text.Bsw_Obc_PwmDisable,"ax",@progbits
	.align 1
	.global	Bsw_Obc_PwmDisable
	.type	Bsw_Obc_PwmDisable, @function
Bsw_Obc_PwmDisable:
.LFB285:
	.loc 1 121 0
	.loc 1 122 0
	movh	%d15, 18499
	addi	%d15, %d15, 20480
	mov	%d4, %d15
	mov	%d5, 0
	call	Mcal_OBC_PWMAB_updatefrequency
.LVL9:
	.loc 1 123 0
	mov	%d4, %d15
	mov	%d5, 0
	j	Mcal_OBC_PWMCD_updatefrequency
.LVL10:
.LFE285:
	.size	Bsw_Obc_PwmDisable, .-Bsw_Obc_PwmDisable
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
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "0_Src/AppSw/Tricore/BSW_Module/Services/../Drivers/Mcal_GtmTomPwm.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x578
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Pwm.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.byte	0x2
	.byte	0x71
	.uaword	0x1a4
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
	.uaword	0x1fd
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
	.uaword	0x166
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x196
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x21a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x27f
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x8f
	.uaword	0x2a6
	.uleb128 0x7
	.string	"module"
	.byte	0x4
	.byte	0x91
	.uaword	0x279
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x4
	.byte	0x92
	.uaword	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x93
	.uaword	0x280
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x3a
	.uaword	0x2dc
	.uleb128 0x9
	.string	"DISABLE"
	.sleb128 0
	.uleb128 0x9
	.string	"ENABLE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"en_PWM_STATE"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2c0
	.uleb128 0xa
	.byte	0x1
	.string	"Bsw_Ldc_PwmEnable"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	.LFB282
	.uaword	.LFE282
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x362
	.uleb128 0xb
	.string	"u32_cmdPhaseShift"
	.byte	0x1
	.byte	0x51
	.uaword	0x233
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LVL2
	.uaword	0x4b7
	.uaword	0x34b
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x4e7
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Bsw_Ldc_PwmDisable"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB283
	.uaword	.LFE283
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b7
	.uleb128 0xc
	.uaword	.LVL4
	.uaword	0x4b7
	.uaword	0x3a1
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x4e7
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Bsw_Obc_PwmEnable"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB284
	.uaword	.LFE284
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x42a
	.uleb128 0xb
	.string	"f32_frequency"
	.byte	0x1
	.byte	0x6b
	.uaword	0x240
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LVL7
	.uaword	0x517
	.uaword	0x411
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x166
	.byte	0
	.uleb128 0xe
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x54b
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x166
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Bsw_Obc_PwmDisable"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB285
	.uaword	.LFE285
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x485
	.uleb128 0xc
	.uaword	.LVL9
	.uaword	0x517
	.uaword	0x46c
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x166
	.byte	0
	.uleb128 0xe
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x54b
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x166
	.byte	0
	.byte	0
	.uleb128 0xf
	.uaword	0x2a6
	.uaword	0x495
	.uleb128 0x10
	.uaword	0x265
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xa4
	.uaword	0x4b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x485
	.uleb128 0x13
	.byte	0x1
	.string	"Mcal_LDC_PWMAB_updateShift"
	.byte	0x5
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uaword	0x4e7
	.uleb128 0x14
	.uaword	0x233
	.uleb128 0x14
	.uaword	0x2dc
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Mcal_LDC_PWMCD_updateShift"
	.byte	0x5
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.uaword	0x517
	.uleb128 0x14
	.uaword	0x233
	.uleb128 0x14
	.uaword	0x2dc
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Mcal_OBC_PWMAB_updatefrequency"
	.byte	0x5
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x54b
	.uleb128 0x14
	.uaword	0x240
	.uleb128 0x14
	.uaword	0x2dc
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Mcal_OBC_PWMCD_updatefrequency"
	.byte	0x5
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x240
	.uleb128 0x14
	.uaword	0x2dc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LFE282
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-1
	.uaword	.LFE284
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB282
	.uaword	.LFE282
	.uaword	.LFB283
	.uaword	.LFE283
	.uaword	.LFB284
	.uaword	.LFE284
	.uaword	.LFB285
	.uaword	.LFE285
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Mcal_OBC_PWMCD_updatefrequency,STT_FUNC,0
	.extern	Mcal_OBC_PWMAB_updatefrequency,STT_FUNC,0
	.extern	Mcal_LDC_PWMCD_updateShift,STT_FUNC,0
	.extern	Mcal_LDC_PWMAB_updateShift,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
