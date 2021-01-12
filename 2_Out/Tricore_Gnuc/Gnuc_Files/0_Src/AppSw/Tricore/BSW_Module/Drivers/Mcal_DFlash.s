	.file	"Mcal_DFlash.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mcal_DFlashInit,"ax",@progbits
	.align 1
	.global	Mcal_DFlashInit
	.type	Mcal_DFlashInit, @function
Mcal_DFlashInit:
.LFB235:
	.file 1 "0_Src/AppSw/Tricore/BSW_Module/Drivers/Mcal_DFlash.c"
	.loc 1 84 0
	.loc 1 87 0
	movh.a	%a2, hi:sts_Dflash
	lea	%a15, [%a2] lo:sts_Dflash
	mov	%d15, 0
	st.w	[%a2] lo:sts_Dflash, %d15
	.loc 1 89 0
	st.w	[%a15] 4, %d15
	.loc 1 90 0
	mov	%d15, 16
	st.w	[%a15] 8, %d15
	.loc 1 91 0
	mov	%d15, 1
	st.b	[%a15] 12, %d15
	ret
.LFE235:
	.size	Mcal_DFlashInit, .-Mcal_DFlashInit
.section .text.Mcal_DFlashErase,"ax",@progbits
	.align 1
	.global	Mcal_DFlashErase
	.type	Mcal_DFlashErase, @function
Mcal_DFlashErase:
.LFB236:
	.loc 1 102 0
.LVL0:
	.loc 1 114 0
	movh.a	%a15, hi:IfxFlash_dFlashTableEepLog
	min.u	%d4, %d4, 16
.LVL1:
	lea	%a15, [%a15] lo:IfxFlash_dFlashTableEepLog
	addsc.a	%a15, %a15, %d4, 3
	ld.w	%d8, [%a15]0
.LVL2:
	.loc 1 116 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL3:
	.loc 1 119 0
	mov	%d4, %d2
	.loc 1 116 0
	mov	%d15, %d2
.LVL4:
	.loc 1 119 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL5:
.LBB46:
.LBB47:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Flash/Std/IfxFlash.h"
	.loc 2 588 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d8
	.loc 2 589 0
	movh.a	%a15, 44801
	mov	%d2, 1
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d2
	.loc 2 590 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	mov	%d2, 128
	st.w	[%a15]0, %d2
	.loc 2 591 0
	mov	%d2, 80
	st.w	[%a15]0, %d2
.LBB48:
.LBB49:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE49:
.LBE48:
.LBE47:
.LBE46:
	.loc 1 121 0
	mov	%d4, %d15
	call	IfxScuWdt_setSafetyEndinit
.LVL6:
	.loc 1 124 0
	movh.a	%a15, hi:sts_Dflash
	lea	%a15, [%a15] lo:sts_Dflash
	ld.bu	%d15, [%a15] 12
.LVL7:
	mov	%d2, 1
.LBB50:
.LBB51:
	.loc 2 712 0
	movh.a	%a15, 63488
	sh	%d2, %d2, %d15
	lea	%a15, [%a15] 8208
.L3:
	ld.w	%d15, [%a15]0
	and	%d15, %d2
	jnz	%d15, .L3
.LBB52:
.LBB53:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE53:
.LBE52:
.LBE51:
.LBE50:
.LFE236:
	.size	Mcal_DFlashErase, .-Mcal_DFlashErase
.section .text.Mcal_DFlashWrite,"ax",@progbits
	.align 1
	.global	Mcal_DFlashWrite
	.type	Mcal_DFlashWrite, @function
Mcal_DFlashWrite:
.LFB237:
	.loc 1 135 0
.LVL8:
	.loc 1 135 0
	mov	%d13, %d4
	mov	%d9, %d5
.LVL9:
	mov.aa	%a12, %a4
	.loc 1 146 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL10:
	.loc 1 149 0
	movh.a	%a13, hi:sts_Dflash
	lea	%a13, [%a13] lo:sts_Dflash
	ld.bu	%d15, [%a13] 12
	.loc 1 146 0
	mov	%d10, %d2
.LVL11:
.LBB54:
.LBB55:
	.loc 2 712 0
	movh.a	%a15, 63488
	mov	%d2, 1
.LVL12:
	sh	%d2, %d2, %d15
	lea	%a15, [%a15] 8208
.L7:
	ld.w	%d15, [%a15]0
	and	%d15, %d2
	jnz	%d15, .L7
.LBB56:
.LBB57:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
.LBE55:
.LBE54:
	.loc 1 154 0
	ld.w	%d8, [%a13] 4
.LVL13:
	mov.d	%d15, %a12
	madd	%d13, %d13, %d8, 8
.LVL14:
.LBB58:
.LBB59:
	.loc 2 519 0
	movh.a	%a14, 44800
.LBE59:
.LBE58:
.LBB65:
.LBB66:
	.loc 2 712 0
	movh.a	%a15, 63488
.LBE66:
.LBE65:
	.loc 1 151 0
	st.w	[%a13] 8, %d9
	sub	%d13, %d15
.LBB71:
.LBB62:
	.loc 2 517 0
	movh	%d11, 40960
	.loc 2 519 0
	lea	%a14, [%a14] 21844
	mov	%d14, 80
	.loc 2 522 0
	movh	%d12, 44800
.LBE62:
.LBE71:
.LBB72:
.LBB69:
	.loc 2 712 0
	lea	%a15, [%a15] 8208
.LBE69:
.LBE72:
	.loc 1 154 0
	jge.u	%d8, %d9, .L6
.LVL15:
.L16:
	.loc 1 156 0
	ld.bu	%d15, [%a12] 7
	ld.bu	%d4, [%a12] 4
	sh	%d3, %d15, 24
	ld.bu	%d15, [%a12] 6
	.loc 1 157 0
	ld.bu	%d5, [%a12]0
	.loc 1 156 0
	sh	%d2, %d15, 16
	ld.bu	%d15, [%a12] 5
	add	%d2, %d3
	add	%d2, %d4
	sh	%d15, %d15, 8
	add	%d2, %d15
.LVL16:
	.loc 1 157 0
	ld.bu	%d15, [%a12] 3
	mov.d	%d9, %a12
	sh	%d4, %d15, 24
	ld.bu	%d15, [%a12] 2
	add	%d9, %d13
	sh	%d3, %d15, 16
	ld.bu	%d15, [%a12] 1
	add	%d4, %d3
	sh	%d15, %d15, 8
	add	%d4, %d5
	add	%d4, %d15
.LVL17:
.LBB73:
.LBB63:
	.loc 2 517 0
	insert	%d15, %d9, 0, 0, 24
	jeq	%d15, %d11, .L21
	.loc 2 522 0
	jeq	%d15, %d12, .L22
.LBB60:
.LBB61:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L10:
.LVL18:
	ld.bu	%d15, [%a13] 12
	mov	%d3, 1
	sh	%d3, %d3, %d15
.L12:
.LBE61:
.LBE60:
.LBE63:
.LBE73:
.LBB74:
.LBB70:
	.loc 2 712 0
	ld.w	%d15, [%a15]0
	and	%d15, %d3
	jnz	%d15, .L12
.LBB67:
.LBB68:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
.LVL19:
#NO_APP
.LBE68:
.LBE67:
.LBE70:
.LBE74:
.LBB75:
.LBB76:
	.loc 2 646 0
	movh.a	%a2, 44800
	lea	%a2, [%a2] 22000
	st.w	[%a2]0, %d4
.LVL20:
	.loc 2 648 0
	movh.a	%a2, 44800
	lea	%a2, [%a2] 22004
	st.w	[%a2]0, %d2
.LBB77:
.LBB78:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE78:
.LBE77:
.LBE76:
.LBE75:
	.loc 1 169 0
	mov	%d4, %d10
.LVL21:
	call	IfxScuWdt_clearSafetyEndinit
.LVL22:
.LBB79:
.LBB80:
	.loc 2 755 0
	movh.a	%a2, 44801
	lea	%a2, [%a2] -21936
	st.w	[%a2]0, %d9
	.loc 2 756 0
	movh.a	%a2, 44801
	lea	%a2, [%a2] -21928
	st.w	[%a2]0, %d15
	.loc 2 757 0
	movh.a	%a2, 44801
	lea	%a2, [%a2] -21848
	mov	%d15, 160
	st.w	[%a2]0, %d15
	.loc 2 758 0
	mov	%d15, 170
	st.w	[%a2]0, %d15
.LBB81:
.LBB82:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE82:
.LBE81:
.LBE80:
.LBE79:
	.loc 1 171 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL23:
	ld.bu	%d15, [%a13] 12
	mov	%d3, 1
	sh	%d3, %d3, %d15
.L13:
.LBB83:
.LBB84:
	.loc 2 712 0
	ld.w	%d15, [%a15]0
	and	%d15, %d3
	jnz	%d15, .L13
.LBB85:
.LBB86:
	.loc 3 1437 0
#APP
	# 1437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE86:
.LBE85:
.LBE84:
.LBE83:
	.loc 1 154 0
	ld.w	%d15, [%a13] 8
	add	%d8, 1
.LVL24:
	lea	%a12, [%a12] 8
.LVL25:
	jlt.u	%d8, %d15, .L16
.LVL26:
.L6:
	ret
.LVL27:
.L21:
.LBB87:
.LBB64:
	.loc 2 519 0
	st.w	[%a14]0, %d14
	j	.L10
.L22:
	.loc 2 524 0
	mov	%d15, 93
	st.w	[%a14]0, %d15
	j	.L10
.LBE64:
.LBE87:
.LFE237:
	.size	Mcal_DFlashWrite, .-Mcal_DFlashWrite
.section .text.Mcal_DFlashRead,"ax",@progbits
	.align 1
	.global	Mcal_DFlashRead
	.type	Mcal_DFlashRead, @function
Mcal_DFlashRead:
.LFB238:
	.loc 1 189 0
.LVL28:
	.loc 1 196 0
	movh.a	%a2, hi:sts_Dflash
	lea	%a2, [%a2] lo:sts_Dflash
	.loc 1 198 0
	ld.w	%d15, [%a2] 4
.LVL29:
	mov.d	%d2, %a4
	madd	%d4, %d4, %d15, 8
.LVL30:
	.loc 1 196 0
	st.w	[%a2] 8, %d5
	sub	%d4, %d2
	.loc 1 198 0
	jge.u	%d15, %d5, .L23
.LVL31:
.L27:
	addsc.a	%a15, %a4, %d4, 0
.LVL32:
	.loc 1 198 0 is_stmt 0 discriminator 3
	add	%d15, 1
.LVL33:
.LBB88:
	.loc 1 203 0 is_stmt 1 discriminator 3
	ld.bu	%d2, [%a15]0
	st.b	[%a4]0, %d2
.LVL34:
	.loc 1 204 0 discriminator 3
	ld.bu	%d2, [%a15] 1
	st.b	[%a4] 1, %d2
.LVL35:
	.loc 1 205 0 discriminator 3
	ld.bu	%d2, [%a15] 2
	st.b	[%a4] 2, %d2
.LVL36:
	.loc 1 206 0 discriminator 3
	ld.bu	%d2, [%a15] 3
	st.b	[%a4] 3, %d2
.LVL37:
	.loc 1 207 0 discriminator 3
	ld.bu	%d2, [%a15] 4
	st.b	[%a4] 4, %d2
.LVL38:
	.loc 1 208 0 discriminator 3
	ld.bu	%d2, [%a15] 5
	st.b	[%a4] 5, %d2
.LVL39:
	.loc 1 209 0 discriminator 3
	ld.bu	%d2, [%a15] 6
	st.b	[%a4] 6, %d2
.LVL40:
	.loc 1 210 0 discriminator 3
	ld.bu	%d2, [%a15] 7
	st.b	[%a4] 7, %d2
.LBE88:
	.loc 1 198 0 discriminator 3
	ld.w	%d2, [%a2] 8
	lea	%a4, [%a4] 8
.LVL41:
	jlt.u	%d15, %d2, .L27
.LVL42:
.L23:
	ret
.LFE238:
	.size	Mcal_DFlashRead, .-Mcal_DFlashRead
	.global	sts_Dflash
.section .bss.sts_Dflash,"aw",@nobits
	.align 2
	.type	sts_Dflash, @object
	.size	sts_Dflash, 16
sts_Dflash:
	.zero	16
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
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxFlash_cfg.h"
	.file 9 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 10 "0_Src/AppSw/Tricore/BSW_Module/Drivers/../Drivers/Mcal_DFlash.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe8f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/BSW_Module/Drivers/Mcal_DFlash.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x48
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x69
	.uaword	0x191
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x6d
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x83
	.uaword	0x169
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
	.uaword	0x257
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x27e
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x251
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x217
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x258
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x88
	.uaword	0x2e2
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_FLASH_FSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xdd
	.uaword	0x524
	.uleb128 0xb
	.string	"FABUSY"
	.byte	0x6
	.byte	0xdf
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"D0BUSY"
	.byte	0x6
	.byte	0xe0
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"RES1"
	.byte	0x6
	.byte	0xe1
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"P0BUSY"
	.byte	0x6
	.byte	0xe2
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"RES4"
	.byte	0x6
	.byte	0xe3
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"RES5"
	.byte	0x6
	.byte	0xe4
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"RES6"
	.byte	0x6
	.byte	0xe5
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PROG"
	.byte	0x6
	.byte	0xe6
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ERASE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"PFPAGE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"DFPAGE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"OPER"
	.byte	0x6
	.byte	0xea
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"SQER"
	.byte	0x6
	.byte	0xeb
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"PROER"
	.byte	0x6
	.byte	0xec
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"PFSBER"
	.byte	0x6
	.byte	0xed
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"PFDBER"
	.byte	0x6
	.byte	0xee
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PFMBER"
	.byte	0x6
	.byte	0xef
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"RES17"
	.byte	0x6
	.byte	0xf0
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"DFSBER"
	.byte	0x6
	.byte	0xf1
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"DFDBER"
	.byte	0x6
	.byte	0xf2
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"DFTBER"
	.byte	0x6
	.byte	0xf3
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"DFMBER"
	.byte	0x6
	.byte	0xf4
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"SRIADDERR"
	.byte	0x6
	.byte	0xf5
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"reserved_23"
	.byte	0x6
	.byte	0xf6
	.uaword	0x298
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"PVER"
	.byte	0x6
	.byte	0xf7
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"EVER"
	.byte	0x6
	.byte	0xf8
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x6
	.byte	0xf9
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SLM"
	.byte	0x6
	.byte	0xfa
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"reserved_29"
	.byte	0x6
	.byte	0xfb
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"ORIER"
	.byte	0x6
	.byte	0xfc
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"reserved_31"
	.byte	0x6
	.byte	0xfd
	.uaword	0x298
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FSR_Bits"
	.byte	0x6
	.byte	0xfe
	.uaword	0x2e2
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.uahalf	0x2ce
	.uaword	0x566
	.uleb128 0xd
	.string	"U"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x298
	.uleb128 0xd
	.string	"I"
	.byte	0x6
	.uahalf	0x2d1
	.uaword	0x18a
	.uleb128 0xd
	.string	"B"
	.byte	0x6
	.uahalf	0x2d2
	.uaword	0x524
	.byte	0
	.uleb128 0xe
	.string	"Ifx_FLASH_FSR"
	.byte	0x6
	.uahalf	0x2d3
	.uaword	0x53e
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.byte	0x97
	.uaword	0x62d
	.uleb128 0x9
	.string	"IfxFlash_FlashType_Fa"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxFlash_FlashType_D0"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxFlash_FlashType_D1"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxFlash_FlashType_P0"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxFlash_FlashType_P1"
	.sleb128 4
	.uleb128 0x9
	.string	"IfxFlash_FlashType_P2"
	.sleb128 5
	.uleb128 0x9
	.string	"IfxFlash_FlashType_P3"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_FlashType"
	.byte	0x8
	.byte	0x9f
	.uaword	0x57c
	.uleb128 0x6
	.byte	0x8
	.byte	0x8
	.byte	0xb0
	.uaword	0x66a
	.uleb128 0x7
	.string	"start"
	.byte	0x8
	.byte	0xb2
	.uaword	0x1d3
	.byte	0
	.uleb128 0x7
	.string	"end"
	.byte	0x8
	.byte	0xb3
	.uaword	0x1d3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_flashSector"
	.byte	0x8
	.byte	0xb4
	.uaword	0x647
	.uleb128 0x3
	.string	"byte"
	.byte	0x9
	.byte	0x56
	.uaword	0x1a2
	.uleb128 0x3
	.string	"word"
	.byte	0x9
	.byte	0x59
	.uaword	0x1af
	.uleb128 0x3
	.string	"dword"
	.byte	0x9
	.byte	0x5c
	.uaword	0x1d3
	.uleb128 0x6
	.byte	0x10
	.byte	0xa
	.byte	0x38
	.uaword	0x6f7
	.uleb128 0x7
	.string	"sector"
	.byte	0xa
	.byte	0x3a
	.uaword	0x69e
	.byte	0
	.uleb128 0x7
	.string	"startPage"
	.byte	0xa
	.byte	0x3b
	.uaword	0x69e
	.byte	0x4
	.uleb128 0x7
	.string	"numberOfPages"
	.byte	0xa
	.byte	0x3c
	.uaword	0x69e
	.byte	0x8
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0xa
	.byte	0x3d
	.uaword	0x62d
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"st_DFlash"
	.byte	0xa
	.byte	0x3e
	.uaword	0x6ab
	.uleb128 0x10
	.string	"Ifx__dsync"
	.byte	0x3
	.uahalf	0x59b
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"IfxFlash_loadPage2X32"
	.byte	0x2
	.uahalf	0x280
	.byte	0x1
	.byte	0x3
	.uaword	0x76e
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x280
	.uaword	0x1d3
	.uleb128 0x13
	.string	"wordL"
	.byte	0x2
	.uahalf	0x280
	.uaword	0x1d3
	.uleb128 0x13
	.string	"wordU"
	.byte	0x2
	.uahalf	0x280
	.uaword	0x1d3
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x284
	.uaword	0x76e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x774
	.uleb128 0x15
	.uaword	0x1d3
	.uleb128 0x11
	.string	"IfxFlash_eraseSector"
	.byte	0x2
	.uahalf	0x245
	.byte	0x1
	.byte	0x3
	.uaword	0x7e2
	.uleb128 0x13
	.string	"sectorAddr"
	.byte	0x2
	.uahalf	0x245
	.uaword	0x1d3
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x247
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr2"
	.byte	0x2
	.uahalf	0x248
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr3"
	.byte	0x2
	.uahalf	0x249
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr4"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x76e
	.byte	0
	.uleb128 0x17
	.string	"IfxFlash_waitUnbusy"
	.byte	0x2
	.uahalf	0x2c4
	.byte	0x1
	.uaword	0x1a2
	.byte	0x3
	.uaword	0x81f
	.uleb128 0x13
	.string	"flash"
	.byte	0x2
	.uahalf	0x2c4
	.uaword	0x1d3
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2c4
	.uaword	0x62d
	.byte	0
	.uleb128 0x17
	.string	"IfxFlash_enterPageMode"
	.byte	0x2
	.uahalf	0x201
	.byte	0x1
	.uaword	0x1a2
	.byte	0x3
	.uaword	0x85d
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x201
	.uaword	0x1d3
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x203
	.uaword	0x76e
	.byte	0
	.uleb128 0x11
	.string	"IfxFlash_writePage"
	.byte	0x2
	.uahalf	0x2ec
	.byte	0x1
	.byte	0x3
	.uaword	0x8bd
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x1d3
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x2ee
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr2"
	.byte	0x2
	.uahalf	0x2ef
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr3"
	.byte	0x2
	.uahalf	0x2f0
	.uaword	0x76e
	.uleb128 0x16
	.string	"addr4"
	.byte	0x2
	.uahalf	0x2f1
	.uaword	0x76e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Mcal_DFlashInit"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	.LFB235
	.uaword	.LFE235
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"Mcal_DFlashErase"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	.LFB236
	.uaword	.LFE236
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa19
	.uleb128 0x1a
	.string	"u32_sector_num"
	.byte	0x1
	.byte	0x65
	.uaword	0x69e
	.uaword	.LLST0
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0x67
	.uaword	0x692
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.byte	0x68
	.uaword	0x69e
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x69
	.uaword	0x69e
	.byte	0
	.uleb128 0x1d
	.string	"u32_tmp"
	.byte	0x1
	.byte	0x6b
	.uaword	0x69e
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x779
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x78
	.uaword	0x9b6
	.uleb128 0x1f
	.uaword	0x798
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.uaword	.LBB47
	.uaword	.LBE47
	.uleb128 0x21
	.uaword	0x7ab
	.sleb128 -1358910896
	.uleb128 0x21
	.uaword	0x7b7
	.sleb128 -1358910888
	.uleb128 0x21
	.uaword	0x7c5
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x7d3
	.sleb128 -1358910808
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x2
	.uahalf	0x251
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x7e2
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x7c
	.uaword	0x9eb
	.uleb128 0x1f
	.uaword	0x812
	.byte	0x5
	.byte	0x3
	.uaword	sts_Dflash+12
	.uleb128 0x23
	.uaword	0x804
	.byte	0
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x2
	.uahalf	0x2d7
	.byte	0
	.uleb128 0x24
	.uaword	.LVL3
	.uaword	0xe0f
	.uleb128 0x25
	.uaword	.LVL5
	.uaword	0xe3e
	.uaword	0xa08
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL6
	.uaword	0xe6b
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Mcal_DFlashWrite"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	.LFB237
	.uaword	.LFE237
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcb4
	.uleb128 0x1a
	.string	"u32_curAddr"
	.byte	0x1
	.byte	0x86
	.uaword	0x69e
	.uaword	.LLST4
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.byte	0x86
	.uaword	0x69e
	.uaword	.LLST5
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x1
	.byte	0x86
	.uaword	0xcb4
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x88
	.uaword	0x69e
	.byte	0
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0x89
	.uaword	0x69e
	.uaword	.LLST7
	.uleb128 0x1d
	.string	"u32_wordL"
	.byte	0x1
	.byte	0x8a
	.uaword	0x69e
	.uaword	.LLST8
	.uleb128 0x1d
	.string	"u32_wordH"
	.byte	0x1
	.byte	0x8b
	.uaword	0x69e
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8c
	.uaword	0x692
	.uaword	.LLST10
	.uleb128 0x1d
	.string	"u32_dataLength"
	.byte	0x1
	.byte	0x8d
	.uaword	0x69e
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0x8e
	.uaword	0x69e
	.uaword	.LLST12
	.uleb128 0x29
	.string	"u8_tmp"
	.byte	0x1
	.byte	0x90
	.uaword	0x686
	.uleb128 0x1e
	.uaword	0x7e2
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0x95
	.uaword	0xb31
	.uleb128 0x2a
	.uaword	0x812
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	0x804
	.byte	0
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x2
	.uahalf	0x2d7
	.byte	0
	.uleb128 0x2b
	.uaword	0x81f
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa2
	.uaword	0xb6d
	.uleb128 0x2a
	.uaword	0x844
	.uaword	.LLST12
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2d
	.uaword	0x850
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x2
	.uahalf	0x210
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x7e2
	.uaword	.LBB65
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xa4
	.uaword	0xba3
	.uleb128 0x2a
	.uaword	0x812
	.uaword	.LLST16
	.uleb128 0x2a
	.uaword	0x804
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x2
	.uahalf	0x2d7
	.byte	0
	.uleb128 0x1e
	.uaword	0x719
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.byte	0xa8
	.uaword	0xbf5
	.uleb128 0x2a
	.uaword	0x739
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	0x753
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	0x745
	.uaword	.LLST20
	.uleb128 0x20
	.uaword	.LBB76
	.uaword	.LBE76
	.uleb128 0x2d
	.uaword	0x761
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x2
	.uahalf	0x28a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x85d
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.byte	0xaa
	.uaword	0xc50
	.uleb128 0x2a
	.uaword	0x87a
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	.LBB80
	.uaword	.LBE80
	.uleb128 0x2d
	.uaword	0x886
	.uaword	.LLST23
	.uleb128 0x2d
	.uaword	0x892
	.uaword	.LLST24
	.uleb128 0x2d
	.uaword	0x8a0
	.uaword	.LLST25
	.uleb128 0x2d
	.uaword	0x8ae
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x2
	.uahalf	0x2f8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x7e2
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.byte	0xb0
	.uaword	0xc86
	.uleb128 0x2a
	.uaword	0x812
	.uaword	.LLST27
	.uleb128 0x2a
	.uaword	0x804
	.uaword	.LLST28
	.uleb128 0x22
	.uaword	0x708
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x2
	.uahalf	0x2d7
	.byte	0
	.uleb128 0x24
	.uaword	.LVL10
	.uaword	0xe0f
	.uleb128 0x25
	.uaword	.LVL22
	.uaword	0xe3e
	.uaword	0xca3
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL23
	.uaword	0xe6b
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcba
	.uleb128 0x2e
	.uaword	0x686
	.uleb128 0x19
	.byte	0x1
	.string	"Mcal_DFlashRead"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd7a
	.uleb128 0x1a
	.string	"u32_Addr"
	.byte	0x1
	.byte	0xbc
	.uaword	0x69e
	.uaword	.LLST29
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0xbc
	.uaword	0x69e
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x1
	.byte	0xbc
	.uaword	0xd7a
	.uaword	.LLST30
	.uleb128 0x1d
	.string	"u32_index"
	.byte	0x1
	.byte	0xbe
	.uaword	0x69e
	.uaword	.LLST31
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0xbf
	.uaword	0x69e
	.uaword	.LLST32
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.byte	0xc0
	.uaword	0x69e
	.uaword	.LLST29
	.uleb128 0x20
	.uaword	.LBB88
	.uaword	.LBE88
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0xc8
	.uaword	0x69e
	.uaword	.LLST34
	.uleb128 0x1d
	.string	"u8p_DFlashdata"
	.byte	0x1
	.byte	0xca
	.uaword	0xd80
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x686
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd86
	.uleb128 0x15
	.uaword	0xcba
	.uleb128 0x30
	.uaword	0x27e
	.uaword	0xd9b
	.uleb128 0x31
	.uaword	0x2a8
	.byte	0
	.byte	0
	.uleb128 0x32
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0xa4
	.uaword	0xdb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0xd8b
	.uleb128 0x30
	.uaword	0x66a
	.uaword	0xdcd
	.uleb128 0x31
	.uaword	0x2a8
	.byte	0xf
	.byte	0
	.uleb128 0x32
	.string	"IfxFlash_dFlashTableEepLog"
	.byte	0x8
	.byte	0xba
	.uaword	0xdf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0xdbd
	.uleb128 0x33
	.string	"sts_Dflash"
	.byte	0x1
	.byte	0x44
	.uaword	0x6f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	sts_Dflash
	.uleb128 0x34
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0xb
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x1af
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0xb
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.uaword	0xe6b
	.uleb128 0x36
	.uaword	0x1af
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0xb
	.byte	0xf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.uaword	0x1af
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uaword	.LFE236
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE236
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE236
	.uahalf	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL14
	.uaword	.LFE237
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15
	.uaword	.LFE237
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL15
	.uaword	.LFE237
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL23
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE237
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL27
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_Dflash+12
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf005554
	.uaword	.LVL27
	.uaword	.LFE237
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf005554
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18
	.uaword	.LVL22-1
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_Dflash+12
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f0
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f4
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf00aa50
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf00aa58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf00aaa8
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_Dflash+12
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LFE238
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE238
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x10
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL41
	.uahalf	0x10
	.byte	0x7f
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x12
	.byte	0x7f
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL32
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LFB235
	.uaword	.LFE235
	.uaword	.LFB236
	.uaword	.LFE236
	.uaword	.LFB237
	.uaword	.LFE237
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"u32_sector_addr"
.LASF9:
	.string	"u32_pageAddr"
.LASF1:
	.string	"pageAddr"
.LASF6:
	.string	"u32_no_of_pages"
.LASF5:
	.string	"u32_flash"
.LASF7:
	.string	"u8p_data"
.LASF8:
	.string	"u32_page"
.LASF3:
	.string	"u16_endinitSfty_pw"
.LASF2:
	.string	"addr1"
.LASF0:
	.string	"flashType"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxFlash_dFlashTableEepLog,STT_OBJECT,128
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
