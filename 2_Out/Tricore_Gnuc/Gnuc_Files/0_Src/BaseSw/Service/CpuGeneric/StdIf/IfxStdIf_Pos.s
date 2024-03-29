	.file	"IfxStdIf_Pos.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStdIf_Pos_initConfig,"ax",@progbits
	.align 1
	.global	IfxStdIf_Pos_initConfig
	.type	IfxStdIf_Pos_initConfig, @function
IfxStdIf_Pos_initConfig:
.LFB42:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c"
	.loc 1 49 0
.LVL0:
	.loc 1 53 0
	mov	%d2, 1
	st.h	[%a4] 12, %d2
	.loc 1 54 0
	st.b	[%a4] 14, %d2
	.loc 1 55 0
	movh	%d2, 14979
	addi	%d2, %d2, 4719
	.loc 1 58 0
	movh	%d3, 17667
	.loc 1 50 0
	mov	%d15, 0
	.loc 1 55 0
	st.w	[%a4] 16, %d2
	.loc 1 58 0
	addi	%d3, %d3, -6573
	.loc 1 56 0
	mov	%d2, 0
	.loc 1 50 0
	st.w	[%a4]0, %d15
	.loc 1 51 0
	st.b	[%a4] 4, %d15
	.loc 1 52 0
	st.w	[%a4] 8, %d15
	.loc 1 56 0
	st.w	[%a4] 20, %d2
	.loc 1 57 0
	st.w	[%a4] 24, %d2
	.loc 1 58 0
	st.w	[%a4] 28, %d3
	.loc 1 59 0
	st.b	[%a4] 32, %d15
	.loc 1 60 0
	st.w	[%a4] 36, %d2
	ret
.LFE42:
	.size	IfxStdIf_Pos_initConfig, .-IfxStdIf_Pos_initConfig
.section .rodata,"a",@progbits
.LC0:
	.string	"DSADC RDC status:\r\n"
.LC1:
	.string	"- Communication error\r\n"
.LC2:
	.string	"- Synchronization error\r\n"
.LC3:
	.string	"- Signal degradation error\r\n"
.LC4:
	.string	"- Signal loss error\r\n"
.LC5:
	.string	"- Tracking error\r\n"
.LC6:
	.string	"- Ready\r\n"
.section .text.IfxStdIf_Pos_printStatus,"ax",@progbits
	.align 1
	.global	IfxStdIf_Pos_printStatus
	.type	IfxStdIf_Pos_printStatus, @function
IfxStdIf_Pos_printStatus:
.LFB43:
	.loc 1 65 0
.LVL1:
.LBB4:
.LBB5:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.loc 2 355 0
	ld.a	%a2, [%a4] 24
	ld.a	%a4, [%a4]0
.LVL2:
.LBE5:
.LBE4:
	.loc 1 65 0
	mov.aa	%a15, %a5
.LBB8:
.LBB6:
	.loc 2 355 0
	calli	%a2
.LVL3:
.LBE6:
.LBE8:
	.loc 1 69 0
	movh.a	%a5, hi:.LC0
.LBB9:
.LBB7:
	.loc 2 355 0
	mov	%d15, %d2
.LVL4:
.LBE7:
.LBE9:
	.loc 1 69 0
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC0
	call	IfxStdIf_DPipe_print
.LVL5:
	.loc 1 70 0
	jz	%d15, .L3
	.loc 1 72 0
	jnz.t	%d15, 4, .L22
	.loc 1 76 0
	jnz.t	%d15, 0, .L23
.L5:
	.loc 1 80 0
	jnz.t	%d15, 2, .L24
.L6:
	.loc 1 84 0
	jnz.t	%d15, 1, .L25
.L7:
	.loc 1 88 0
	jnz.t	%d15, 3, .L26
.L2:
	ret
.L25:
	.loc 1 86 0
	movh.a	%a5, hi:.LC4
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC4
	call	IfxStdIf_DPipe_print
.LVL6:
	.loc 1 88 0
	jz.t	%d15, 3, .L2
.L26:
	.loc 1 90 0
	movh.a	%a5, hi:.LC5
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC5
	j	IfxStdIf_DPipe_print
.LVL7:
.L24:
	.loc 1 82 0
	movh.a	%a5, hi:.LC3
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC3
	call	IfxStdIf_DPipe_print
.LVL8:
	.loc 1 84 0
	jz.t	%d15, 1, .L7
	j	.L25
.L23:
	.loc 1 78 0
	movh.a	%a5, hi:.LC2
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC2
	call	IfxStdIf_DPipe_print
.LVL9:
	.loc 1 80 0
	jz.t	%d15, 2, .L6
	j	.L24
.L22:
	.loc 1 74 0
	movh.a	%a5, hi:.LC1
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC1
	call	IfxStdIf_DPipe_print
.LVL10:
	.loc 1 76 0
	jz.t	%d15, 0, .L5
	j	.L23
.LVL11:
.L3:
	.loc 1 95 0
	movh.a	%a5, hi:.LC6
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC6
	j	IfxStdIf_DPipe_print
.LVL12:
.LFE43:
	.size	IfxStdIf_Pos_printStatus, .-IfxStdIf_Pos_printStatus
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
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 6 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1327
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x20
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
	.byte	0x3
	.byte	0x65
	.uaword	0x1a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x6d
	.uaword	0x1bf
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x71
	.uaword	0x175
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x7e
	.uaword	0x21a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x83
	.uaword	0x169
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x8a
	.uaword	0x243
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0xa7
	.uaword	0x263
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x4
	.byte	0x38
	.uaword	0x283
	.uleb128 0x4
	.byte	0x4
	.uaword	0x289
	.uleb128 0x5
	.uaword	0x28e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x4
	.byte	0x4f
	.uaword	0x235
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x4
	.byte	0x5c
	.uaword	0x20c
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x5
	.byte	0x76
	.uaword	0x296
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x6
	.byte	0x47
	.uaword	0x2f3
	.uleb128 0x7
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x6
	.byte	0xe9
	.uaword	0x470
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xeb
	.uaword	0x2bd
	.byte	0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x6
	.byte	0xec
	.uaword	0x191
	.byte	0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x6
	.byte	0xef
	.uaword	0x4bc
	.byte	0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x6
	.byte	0xf0
	.uaword	0x503
	.byte	0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x6
	.byte	0xf1
	.uaword	0x51e
	.byte	0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x6
	.byte	0xf2
	.uaword	0x557
	.byte	0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x6
	.byte	0xf3
	.uaword	0x604
	.byte	0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x6
	.byte	0xf4
	.uaword	0x628
	.byte	0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x6
	.byte	0xf5
	.uaword	0x662
	.byte	0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x6
	.byte	0xf6
	.uaword	0x6a5
	.byte	0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x6
	.byte	0xf7
	.uaword	0x6c9
	.byte	0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x6
	.byte	0xf8
	.uaword	0x732
	.byte	0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x6
	.byte	0xf9
	.uaword	0x702
	.byte	0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x6
	.byte	0xfa
	.uaword	0x750
	.byte	0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x6
	.byte	0xfb
	.uaword	0x770
	.byte	0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x6
	.byte	0xfc
	.uaword	0x791
	.byte	0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x6
	.byte	0xfe
	.uaword	0x590
	.byte	0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x6
	.byte	0xff
	.uaword	0x5c9
	.byte	0x44
	.uleb128 0xa
	.string	"resetSendCount"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x7af
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x6
	.byte	0x49
	.uaword	0x491
	.uleb128 0x4
	.byte	0x4
	.uaword	0x497
	.uleb128 0xb
	.uaword	0x191
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x6
	.byte	0x4a
	.uaword	0x491
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x6
	.byte	0x5c
	.uaword	0x4d8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4de
	.uleb128 0xc
	.byte	0x1
	.uaword	0x191
	.uaword	0x4fd
	.uleb128 0xd
	.uaword	0x2bd
	.uleb128 0xd
	.uaword	0x296
	.uleb128 0xd
	.uaword	0x4fd
	.uleb128 0xd
	.uaword	0x298
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ac
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x6
	.byte	0x6b
	.uaword	0x4d8
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x6
	.byte	0x73
	.uaword	0x541
	.uleb128 0x4
	.byte	0x4
	.uaword	0x547
	.uleb128 0xc
	.byte	0x1
	.uaword	0x227
	.uaword	0x557
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x6
	.byte	0x7b
	.uaword	0x57a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x580
	.uleb128 0xc
	.byte	0x1
	.uaword	0x49c
	.uaword	0x590
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x6
	.byte	0x83
	.uaword	0x5b3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b9
	.uleb128 0xc
	.byte	0x1
	.uaword	0x1d5
	.uaword	0x5c9
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x6
	.byte	0x8b
	.uaword	0x5ee
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5f4
	.uleb128 0xc
	.byte	0x1
	.uaword	0x298
	.uaword	0x604
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x6
	.byte	0x93
	.uaword	0x541
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x6
	.byte	0x9b
	.uaword	0x64c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x652
	.uleb128 0xc
	.byte	0x1
	.uaword	0x470
	.uaword	0x662
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x6
	.byte	0xa6
	.uaword	0x685
	.uleb128 0x4
	.byte	0x4
	.uaword	0x68b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x191
	.uaword	0x6a5
	.uleb128 0xd
	.uaword	0x2bd
	.uleb128 0xd
	.uaword	0x2ac
	.uleb128 0xd
	.uaword	0x298
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x6
	.byte	0xb1
	.uaword	0x685
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x6
	.byte	0xba
	.uaword	0x6e7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6ed
	.uleb128 0xc
	.byte	0x1
	.uaword	0x191
	.uaword	0x702
	.uleb128 0xd
	.uaword	0x2bd
	.uleb128 0xd
	.uaword	0x298
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x6
	.byte	0xc1
	.uaword	0x720
	.uleb128 0x4
	.byte	0x4
	.uaword	0x726
	.uleb128 0xe
	.byte	0x1
	.uaword	0x732
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x6
	.byte	0xc8
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x6
	.byte	0xd0
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x6
	.byte	0xd7
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x6
	.byte	0xde
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x6
	.byte	0xe5
	.uaword	0x720
	.uleb128 0xf
	.byte	0x1
	.byte	0x2
	.byte	0x4d
	.uaword	0x856
	.uleb128 0x10
	.string	"IfxStdIf_Pos_ResolutionFactor_oneFold"
	.sleb128 1
	.uleb128 0x10
	.string	"IfxStdIf_Pos_ResolutionFactor_twoFold"
	.sleb128 2
	.uleb128 0x10
	.string	"IfxStdIf_Pos_ResolutionFactor_fourFold"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResolutionFactor"
	.byte	0x2
	.byte	0x51
	.uaword	0x7d4
	.uleb128 0xf
	.byte	0x1
	.byte	0x2
	.byte	0x55
	.uaword	0x94c
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_encoder"
	.sleb128 0
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_hall"
	.sleb128 1
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_resolver"
	.sleb128 2
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_angletrk"
	.sleb128 3
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_igmr"
	.sleb128 4
	.uleb128 0x10
	.string	"IfxStdIf_Pos_SensorType_virtual"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SensorType"
	.byte	0x2
	.byte	0x5c
	.uaword	0x87b
	.uleb128 0xf
	.byte	0x1
	.byte	0x2
	.byte	0x60
	.uaword	0x9c6
	.uleb128 0x10
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0x10
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0x10
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x2
	.byte	0x64
	.uaword	0x96b
	.uleb128 0x11
	.byte	0x1
	.byte	0x2
	.byte	0x6a
	.uaword	0xa62
	.uleb128 0x12
	.string	"notSynchronised"
	.byte	0x2
	.byte	0x6c
	.uaword	0x1d5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"signalLoss"
	.byte	0x2
	.byte	0x6d
	.uaword	0x1d5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"signalDegradation"
	.byte	0x2
	.byte	0x6e
	.uaword	0x1d5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"trackingLoss"
	.byte	0x2
	.byte	0x6f
	.uaword	0x1d5
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"commError"
	.byte	0x2
	.byte	0x70
	.uaword	0x1d5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.byte	0x67
	.uaword	0xa82
	.uleb128 0x14
	.string	"status"
	.byte	0x2
	.byte	0x69
	.uaword	0x1d5
	.uleb128 0x14
	.string	"B"
	.byte	0x2
	.byte	0x71
	.uaword	0x9de
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Status"
	.byte	0x2
	.byte	0x72
	.uaword	0xa62
	.uleb128 0x3
	.string	"IfxStdIf_Pos"
	.byte	0x2
	.byte	0x77
	.uaword	0xab1
	.uleb128 0x15
	.string	"IfxStdIf_Pos_"
	.byte	0x5c
	.byte	0x2
	.uahalf	0x11e
	.uaword	0xca9
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x120
	.uaword	0x2bd
	.byte	0
	.uleb128 0xa
	.string	"onZeroIrq"
	.byte	0x2
	.uahalf	0x121
	.uaword	0xce7
	.byte	0x4
	.uleb128 0xa
	.string	"getAbsolutePosition"
	.byte	0x2
	.uahalf	0x122
	.uaword	0xca9
	.byte	0x8
	.uleb128 0xa
	.string	"getOffset"
	.byte	0x2
	.uahalf	0x123
	.uaword	0xd05
	.byte	0xc
	.uleb128 0xa
	.string	"getPosition"
	.byte	0x2
	.uahalf	0x124
	.uaword	0xd23
	.byte	0x10
	.uleb128 0xa
	.string	"getDirection"
	.byte	0x2
	.uahalf	0x125
	.uaword	0xd43
	.byte	0x14
	.uleb128 0xa
	.string	"getFault"
	.byte	0x2
	.uahalf	0x126
	.uaword	0xd7a
	.byte	0x18
	.uleb128 0xa
	.string	"getRawPosition"
	.byte	0x2
	.uahalf	0x127
	.uaword	0xdec
	.byte	0x1c
	.uleb128 0xa
	.string	"getPeriodPerRotation"
	.byte	0x2
	.uahalf	0x128
	.uaword	0xdad
	.byte	0x20
	.uleb128 0xa
	.string	"getRefreshPeriod"
	.byte	0x2
	.uahalf	0x129
	.uaword	0xe0f
	.byte	0x24
	.uleb128 0xa
	.string	"getResolution"
	.byte	0x2
	.uahalf	0x12a
	.uaword	0xe34
	.byte	0x28
	.uleb128 0xa
	.string	"getSensorType"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0xe56
	.byte	0x2c
	.uleb128 0xa
	.string	"getTurn"
	.byte	0x2
	.uahalf	0x12c
	.uaword	0xeab
	.byte	0x30
	.uleb128 0xa
	.string	"onEventA"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0xec7
	.byte	0x34
	.uleb128 0xa
	.string	"reset"
	.byte	0x2
	.uahalf	0x12e
	.uaword	0xeff
	.byte	0x38
	.uleb128 0xa
	.string	"resetFaults"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0xf19
	.byte	0x3c
	.uleb128 0xa
	.string	"getSpeed"
	.byte	0x2
	.uahalf	0x130
	.uaword	0xe8e
	.byte	0x40
	.uleb128 0xa
	.string	"update"
	.byte	0x2
	.uahalf	0x131
	.uaword	0xee4
	.byte	0x44
	.uleb128 0xa
	.string	"setOffset"
	.byte	0x2
	.uahalf	0x132
	.uaword	0xf39
	.byte	0x48
	.uleb128 0xa
	.string	"setPosition"
	.byte	0x2
	.uahalf	0x133
	.uaword	0xf6e
	.byte	0x4c
	.uleb128 0xa
	.string	"setRawPosition"
	.byte	0x2
	.uahalf	0x134
	.uaword	0xfa6
	.byte	0x50
	.uleb128 0xa
	.string	"setSpeed"
	.byte	0x2
	.uahalf	0x135
	.uaword	0xfca
	.byte	0x54
	.uleb128 0xa
	.string	"setRefreshPeriod"
	.byte	0x2
	.uahalf	0x136
	.uaword	0xfe8
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetAbsolutePosition"
	.byte	0x2
	.byte	0x81
	.uaword	0xcd1
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcd7
	.uleb128 0xc
	.byte	0x1
	.uaword	0x254
	.uaword	0xce7
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnZeroIrq"
	.byte	0x2
	.byte	0x87
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetOffset"
	.byte	0x2
	.byte	0x8e
	.uaword	0x541
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPosition"
	.byte	0x2
	.byte	0x98
	.uaword	0xcd1
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetDirection"
	.byte	0x2
	.byte	0xa1
	.uaword	0xd64
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd6a
	.uleb128 0xc
	.byte	0x1
	.uaword	0x9c6
	.uaword	0xd7a
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetFault"
	.byte	0x2
	.byte	0xa8
	.uaword	0xd97
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd9d
	.uleb128 0xc
	.byte	0x1
	.uaword	0xa82
	.uaword	0xdad
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPeriodPerRotation"
	.byte	0x2
	.byte	0xaf
	.uaword	0xdd6
	.uleb128 0x4
	.byte	0x4
	.uaword	0xddc
	.uleb128 0xc
	.byte	0x1
	.uaword	0x1b1
	.uaword	0xdec
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRawPosition"
	.byte	0x2
	.byte	0xb8
	.uaword	0x541
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRefreshPeriod"
	.byte	0x2
	.byte	0xbe
	.uaword	0xcd1
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetResolution"
	.byte	0x2
	.byte	0xc4
	.uaword	0x541
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSensorType"
	.byte	0x2
	.byte	0xca
	.uaword	0xe78
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe7e
	.uleb128 0xc
	.byte	0x1
	.uaword	0x94c
	.uaword	0xe8e
	.uleb128 0xd
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSpeed"
	.byte	0x2
	.byte	0xd0
	.uaword	0xcd1
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetTurn"
	.byte	0x2
	.byte	0xd6
	.uaword	0x541
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnEventA"
	.byte	0x2
	.byte	0xdd
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Update"
	.byte	0x2
	.byte	0xe6
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Reset"
	.byte	0x2
	.byte	0xef
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResetFaults"
	.byte	0x2
	.byte	0xf8
	.uaword	0x720
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetOffset"
	.byte	0x2
	.byte	0xff
	.uaword	0xf57
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf5d
	.uleb128 0xe
	.byte	0x1
	.uaword	0xf6e
	.uleb128 0xd
	.uaword	0x2bd
	.uleb128 0xd
	.uaword	0x227
	.byte	0
	.uleb128 0x17
	.string	"IfxStdIf_Pos_SetPosition"
	.byte	0x2
	.uahalf	0x106
	.uaword	0xf8f
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf95
	.uleb128 0xe
	.byte	0x1
	.uaword	0xfa6
	.uleb128 0xd
	.uaword	0x2bd
	.uleb128 0xd
	.uaword	0x254
	.byte	0
	.uleb128 0x17
	.string	"IfxStdIf_Pos_SetRawPosition"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0xf57
	.uleb128 0x17
	.string	"IfxStdIf_Pos_SetSpeed"
	.byte	0x2
	.uahalf	0x113
	.uaword	0xf8f
	.uleb128 0x17
	.string	"IfxStdIf_Pos_SetRefreshPeriod"
	.byte	0x2
	.uahalf	0x11a
	.uaword	0xf8f
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.uahalf	0x13a
	.uaword	0x1118
	.uleb128 0xa
	.string	"offset"
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x227
	.byte	0
	.uleb128 0xa
	.string	"reversed"
	.byte	0x2
	.uahalf	0x13d
	.uaword	0x191
	.byte	0x4
	.uleb128 0xa
	.string	"resolution"
	.byte	0x2
	.uahalf	0x13e
	.uaword	0x227
	.byte	0x8
	.uleb128 0xa
	.string	"periodPerRotation"
	.byte	0x2
	.uahalf	0x13f
	.uaword	0x1b1
	.byte	0xc
	.uleb128 0xa
	.string	"resolutionFactor"
	.byte	0x2
	.uahalf	0x140
	.uaword	0x856
	.byte	0xe
	.uleb128 0xa
	.string	"updatePeriod"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x254
	.byte	0x10
	.uleb128 0xa
	.string	"speedModeThreshold"
	.byte	0x2
	.uahalf	0x142
	.uaword	0x254
	.byte	0x14
	.uleb128 0xa
	.string	"minSpeed"
	.byte	0x2
	.uahalf	0x143
	.uaword	0x254
	.byte	0x18
	.uleb128 0xa
	.string	"maxSpeed"
	.byte	0x2
	.uahalf	0x144
	.uaword	0x254
	.byte	0x1c
	.uleb128 0xa
	.string	"speedFilterEnabled"
	.byte	0x2
	.uahalf	0x145
	.uaword	0x191
	.byte	0x20
	.uleb128 0xa
	.string	"speedFilerCutOffFrequency"
	.byte	0x2
	.uahalf	0x146
	.uaword	0x254
	.byte	0x24
	.byte	0
	.uleb128 0x17
	.string	"IfxStdIf_Pos_Config"
	.byte	0x2
	.uahalf	0x147
	.uaword	0x100e
	.uleb128 0x19
	.string	"IfxStdIf_Pos_getFault"
	.byte	0x2
	.uahalf	0x161
	.byte	0x1
	.uaword	0xa82
	.byte	0x3
	.uaword	0x1167
	.uleb128 0x1a
	.string	"stdIf"
	.byte	0x2
	.uahalf	0x161
	.uaword	0x1167
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa9d
	.uleb128 0x1b
	.byte	0x1
	.string	"IfxStdIf_Pos_initConfig"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11aa
	.uleb128 0x1c
	.string	"config"
	.byte	0x1
	.byte	0x30
	.uaword	0x11aa
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1118
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxStdIf_Pos_printStatus"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12fc
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.byte	0x40
	.uaword	0x1167
	.uaword	.LLST0
	.uleb128 0x1f
	.string	"io"
	.byte	0x1
	.byte	0x40
	.uaword	0x12fc
	.uaword	.LLST1
	.uleb128 0x20
	.string	"status"
	.byte	0x1
	.byte	0x42
	.uaword	0xa82
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0x1134
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x43
	.uaword	0x1232
	.uleb128 0x22
	.uaword	0x1158
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	0x1158
	.uaword	.LLST0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL5
	.uaword	0x1302
	.uaword	0x124f
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL6
	.uaword	0x1302
	.uaword	0x126c
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x1302
	.uaword	0x128a
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL8
	.uaword	0x1302
	.uaword	0x12a7
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL9
	.uaword	0x1302
	.uaword	0x12c4
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL10
	.uaword	0x1302
	.uaword	0x12e1
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x1302
	.uleb128 0x24
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2dd
	.uleb128 0x27
	.byte	0x1
	.string	"IfxStdIf_DPipe_print"
	.byte	0x6
	.uahalf	0x18c
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x12fc
	.uleb128 0xd
	.uaword	0x276
	.uleb128 0x28
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL5-1
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
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
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"driver"
	.extern	IfxStdIf_DPipe_print,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
