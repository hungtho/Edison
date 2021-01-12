	.file	"ASW_LdcEepromCtrl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Ldc_EepromInit,"ax",@progbits
	.align 1
	.global	Asw_Ldc_EepromInit
	.type	Asw_Ldc_EepromInit, @function
Asw_Ldc_EepromInit:
.LFB163:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcEepromCtrl.c"
	.loc 1 88 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
.LBB4:
.LBB5:
	.loc 1 195 0
	movh	%d4, 44800
	mov	%d5, 2
	mov.aa	%a4, %SP
	call	Mcal_DFlashRead
.LVL1:
	.loc 1 196 0
	ld.bu	%d3, [%SP] 15
.LVL2:
	ld.bu	%d15, [%SP] 14
.LVL3:
	sh	%d3, %d3, 24
.LVL4:
	ld.bu	%d2, [%SP] 12
	sh	%d15, %d15, 16
.LVL5:
	or	%d15, %d3
	or	%d3, %d15, %d2
	ld.bu	%d2, [%SP] 13
	sh	%d15, %d2, 8
	or	%d2, %d3, %d15
	.loc 1 192 0
	movh	%d15, 44800
	.loc 1 198 0
	jnz	%d2, .L5
	j	.L10
.LVL6:
.L11:
	.loc 1 231 0
	addi	%d15, %d15, 16
.LVL7:
.L5:
	.loc 1 222 0
	mov	%d4, %d15
	mov	%d5, 2
	mov.aa	%a4, %SP
	call	Mcal_DFlashRead
.LVL8:
	.loc 1 223 0
	ld.bu	%d4, [%SP] 15
.LVL9:
	ld.bu	%d2, [%SP] 14
.LVL10:
	sh	%d4, %d4, 24
.LVL11:
	sh	%d2, %d2, 16
.LVL12:
	or	%d2, %d4
	ld.bu	%d4, [%SP] 12
	or	%d4, %d2
	ld.bu	%d2, [%SP] 13
	sh	%d3, %d2, 8
	or	%d2, %d4, %d3
	.loc 1 225 0
	jnz	%d2, .L11
.LVL13:
	.loc 1 236 0
	movh.a	%a15, hi:u32s_EepromCurAddr
.LBE5:
.LBE4:
	.loc 1 95 0
	movh.a	%a12, hi:u8s_EepromData
.LBB8:
.LBB6:
	.loc 1 236 0
	st.w	[%a15] lo:u32s_EepromCurAddr, %d15
.LVL14:
.LBE6:
.LBE8:
	.loc 1 95 0
	lea	%a15, [%a12] lo:u8s_EepromData
	mov.aa	%a4, %a15
	addi	%d4, %d15, -16
.LVL15:
	mov	%d5, 2
	call	Mcal_DFlashRead
.LVL16:
	.loc 1 97 0
	mov	%d4, 0
	ld.bu	%d5, [%a12] lo:u8s_EepromData
	call	Asw_Write_DTC_Sts
.LVL17:
	.loc 1 98 0
	mov	%d4, 1
	ld.bu	%d5, [%a15] 1
	call	Asw_Write_DTC_Sts
.LVL18:
	.loc 1 99 0
	mov	%d4, 2
	ld.bu	%d5, [%a15] 2
	call	Asw_Write_DTC_Sts
.LVL19:
	.loc 1 100 0
	mov	%d4, 3
	ld.bu	%d5, [%a15] 3
	call	Asw_Write_DTC_Sts
.LVL20:
	.loc 1 102 0
	mov	%d4, 4
	ld.bu	%d5, [%a15] 4
	call	Asw_Write_DTC_Sts
.LVL21:
	.loc 1 103 0
	mov	%d4, 5
	ld.bu	%d5, [%a15] 5
	call	Asw_Write_DTC_Sts
.LVL22:
	.loc 1 104 0
	mov	%d4, 6
	ld.bu	%d5, [%a15] 6
	call	Asw_Write_DTC_Sts
.LVL23:
	.loc 1 105 0
	mov	%d4, 7
	ld.bu	%d5, [%a15] 7
	call	Asw_Write_DTC_Sts
.LVL24:
	.loc 1 107 0
	mov	%d4, 8
	ld.bu	%d5, [%a15] 8
	call	Asw_Write_DTC_Sts
.LVL25:
	.loc 1 108 0
	mov	%d4, 9
	ld.bu	%d5, [%a15] 9
	j	Asw_Write_DTC_Sts
.LVL26:
.L10:
.LBB9:
.LBB7:
	.loc 1 201 0
	addi	%d4, %d15, 8192
	mov	%d5, 2
	mov.aa	%a4, %SP
	call	Mcal_DFlashRead
.LVL27:
	.loc 1 202 0
	ld.bu	%d3, [%SP] 15
.LVL28:
	ld.bu	%d15, [%SP] 14
.LVL29:
	sh	%d3, %d3, 24
.LVL30:
	ld.bu	%d2, [%SP] 12
	sh	%d15, %d15, 16
.LVL31:
	or	%d15, %d3
	or	%d3, %d15, %d2
	ld.bu	%d2, [%SP] 13
	sh	%d15, %d2, 8
	or	%d2, %d3, %d15
	.loc 1 200 0
	movh	%d15, 44800
	addi	%d15, %d15, 8192
	.loc 1 204 0
	jnz	%d2, .L5
.LVL32:
	.loc 1 207 0
	addi	%d4, %d15, 8192
	mov	%d5, 2
	mov.aa	%a4, %SP
	call	Mcal_DFlashRead
.LVL33:
	.loc 1 208 0
	ld.bu	%d2, [%SP] 15
.LVL34:
	ld.bu	%d15, [%SP] 14
.LVL35:
	sh	%d2, %d2, 24
.LVL36:
	sh	%d15, %d15, 16
.LVL37:
	or	%d15, %d2
	ld.bu	%d2, [%SP] 12
	or	%d2, %d15
	ld.bu	%d15, [%SP] 13
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 210 0
	jnz	%d15, .L12
.LVL38:
	.loc 1 236 0
	movh	%d15, 44800
	movh.a	%a15, hi:u32s_EepromCurAddr
	st.w	[%a15] lo:u32s_EepromCurAddr, %d15
	ret
.LVL39:
.L12:
	.loc 1 206 0
	movh	%d15, 44800
	addi	%d15, %d15, 16384
.LVL40:
	j	.L5
.LBE7:
.LBE9:
.LFE163:
	.size	Asw_Ldc_EepromInit, .-Asw_Ldc_EepromInit
.section .text.Asw_Ldc_EepromCtrl,"ax",@progbits
	.align 1
	.global	Asw_Ldc_EepromCtrl
	.type	Asw_Ldc_EepromCtrl, @function
Asw_Ldc_EepromCtrl:
.LFB164:
	.loc 1 120 0
.LVL41:
	sub.a	%SP, 16
.LCFI1:
	.loc 1 126 0
	mov	%d4, 0
	call	Asw_Read_DTC_Sts
.LVL42:
	.loc 1 127 0
	mov	%d4, 1
	.loc 1 126 0
	mov	%d15, %d2
	st.b	[%SP]0, %d2
	.loc 1 127 0
	call	Asw_Read_DTC_Sts
.LVL43:
	.loc 1 128 0
	mov	%d4, 2
	.loc 1 127 0
	st.b	[%SP] 1, %d2
	.loc 1 128 0
	call	Asw_Read_DTC_Sts
.LVL44:
	.loc 1 129 0
	mov	%d4, 3
	.loc 1 128 0
	st.b	[%SP] 2, %d2
	.loc 1 129 0
	call	Asw_Read_DTC_Sts
.LVL45:
	.loc 1 130 0
	mov	%d4, 4
	.loc 1 129 0
	st.b	[%SP] 3, %d2
	.loc 1 130 0
	call	Asw_Read_DTC_Sts
.LVL46:
	.loc 1 131 0
	mov	%d4, 5
	.loc 1 130 0
	st.b	[%SP] 4, %d2
	.loc 1 131 0
	call	Asw_Read_DTC_Sts
.LVL47:
	.loc 1 132 0
	mov	%d4, 6
	.loc 1 131 0
	st.b	[%SP] 5, %d2
	.loc 1 132 0
	call	Asw_Read_DTC_Sts
.LVL48:
	.loc 1 133 0
	mov	%d4, 7
	.loc 1 132 0
	st.b	[%SP] 6, %d2
	.loc 1 133 0
	call	Asw_Read_DTC_Sts
.LVL49:
	.loc 1 134 0
	mov	%d4, 8
	.loc 1 133 0
	st.b	[%SP] 7, %d2
	.loc 1 134 0
	call	Asw_Read_DTC_Sts
.LVL50:
	.loc 1 135 0
	mov	%d4, 9
	.loc 1 134 0
	st.b	[%SP] 8, %d2
	.loc 1 135 0
	call	Asw_Read_DTC_Sts
.LVL51:
	movh.a	%a4, hi:u8s_EepromData
	st.b	[%SP] 9, %d2
.LVL52:
	mov.a	%a2, 0
	.loc 1 123 0
	mov	%d3, 0
	lea	%a4, [%a4] lo:u8s_EepromData
	mov.a	%a15, 9
.LVL53:
.L16:
	.loc 1 139 0
	add.a	%a3, %a4, %a2
	ld.bu	%d2, [%a3]0
	jeq	%d2, %d15, .L14
	.loc 1 141 0
	st.b	[%a3]0, %d15
.LVL54:
	.loc 1 143 0
	mov	%d3, 1
.LVL55:
.L14:
	add.a	%a2, 1
.LVL56:
	.loc 1 137 0 discriminator 2
	loop	%a15, .L22
	.loc 1 147 0
	jeq	%d3, 1, .L25
.LVL57:
.L13:
	ret
.LVL58:
.L22:
	mov.aa	%a3, %SP
	add.a	%a3, %a2
	ld.bu	%d15, [%a3]0
	j	.L16
.LVL59:
.L25:
	.loc 1 149 0
	movh.a	%a15, hi:u8s_EepromWriteCnt.2303
	ld.bu	%d15, [%a15] lo:u8s_EepromWriteCnt.2303
	add	%d15, 1
	and	%d15, 255
	st.b	[%a15] lo:u8s_EepromWriteCnt.2303, %d15
	.loc 1 153 0
	movh.a	%a15, hi:u32s_EepromCurAddr
	.loc 1 151 0
	st.b	[%a4] 15, %d15
	.loc 1 153 0
	ld.w	%d4, [%a15] lo:u32s_EepromCurAddr
	movh	%d15, 44800
	addi	%d15, %d15, 24575
	jlt.u	%d15, %d4, .L26
.L18:
	.loc 1 155 0
	mov	%d5, 2
	call	Mcal_DFlashWrite
.LVL60:
	.loc 1 156 0
	ld.w	%d2, [%a15] lo:u32s_EepromCurAddr
	addi	%d15, %d2, 16
	.loc 1 158 0
	movh	%d2, 44800
	.loc 1 156 0
	st.w	[%a15] lo:u32s_EepromCurAddr, %d15
	.loc 1 158 0
	addi	%d2, %d2, 8208
	jeq	%d15, %d2, .L19
	addi	%d2, %d2, 8192
	jeq	%d15, %d2, .L20
	addi	%d2, %d2, -16384
	jne	%d15, %d2, .L13
	.loc 1 173 0
	.loc 1 161 0
	mov	%d4, 2
	.loc 1 173 0
	lea	%SP, [%SP] 16
	.loc 1 161 0
	j	Mcal_DFlashErase
.LVL61:
.L26:
	.loc 1 153 0 discriminator 1
	movh	%d15, 44800
	st.w	[%a15] lo:u32s_EepromCurAddr, %d15
	mov	%d4, %d15
	j	.L18
.LVL62:
.L20:
	.loc 1 173 0
	.loc 1 167 0
	mov	%d4, 1
	.loc 1 173 0
	lea	%SP, [%SP] 16
	.loc 1 167 0
	j	Mcal_DFlashErase
.LVL63:
.L19:
	.loc 1 173 0
	.loc 1 164 0
	mov	%d4, 0
	.loc 1 173 0
	lea	%SP, [%SP] 16
	.loc 1 164 0
	j	Mcal_DFlashErase
.LVL64:
.LFE164:
	.size	Asw_Ldc_EepromCtrl, .-Asw_Ldc_EepromCtrl
.section .bss.u8s_EepromWriteCnt.2303,"aw",@nobits
	.type	u8s_EepromWriteCnt.2303, @object
	.size	u8s_EepromWriteCnt.2303, 1
u8s_EepromWriteCnt.2303:
	.zero	1
.section .bss.u32s_EepromCurAddr,"aw",@nobits
	.align 2
	.type	u32s_EepromCurAddr, @object
	.size	u32s_EepromCurAddr, 4
u32s_EepromCurAddr:
	.zero	4
.section .bss.u8s_EepromData,"aw",@nobits
	.type	u8s_EepromData, @object
	.size	u8s_EepromData, 16
u8s_EepromData:
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.byte	0x4
	.uaword	.LCFI0-.LFB163
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.byte	0x4
	.uaword	.LCFI1-.LFB164
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/ASW_Module/LDC/../../BSW_Module/Drivers/Mcal_DFlash.h"
	.file 5 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x76c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcEepromCtrl.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	0x16b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1ad
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
	.uaword	0x17c
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x19f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"FindLastAddr"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x2dd
	.uleb128 0x5
	.string	"u8_FindCurAddr"
	.byte	0x1
	.byte	0xbd
	.uaword	0x228
	.uleb128 0x5
	.string	"u8_AllErased"
	.byte	0x1
	.byte	0xbe
	.uaword	0x228
	.uleb128 0x5
	.string	"u8_readbuffer"
	.byte	0x1
	.byte	0xbf
	.uaword	0x2dd
	.uleb128 0x5
	.string	"u32_CurAddr"
	.byte	0x1
	.byte	0xc0
	.uaword	0x234
	.uleb128 0x5
	.string	"u32_readdata"
	.byte	0x1
	.byte	0xc1
	.uaword	0x234
	.byte	0
	.uleb128 0x6
	.uaword	0x228
	.uaword	0x2ed
	.uleb128 0x7
	.uaword	0x241
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Asw_Ldc_EepromInit"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4cc
	.uleb128 0x9
	.string	"u32_ReadAddr"
	.byte	0x1
	.byte	0x59
	.uaword	0x234
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	0x25c
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5b
	.uaword	0x3f1
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x276
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	0x28c
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	0x2a0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.uaword	0x2b5
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	0x2c8
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	.LVL1
	.uaword	0x6a0
	.uaword	0x392
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x8
	.byte	0xa2
	.byte	0x47
	.byte	0x24
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LVL8
	.uaword	0x6a0
	.uaword	0x3b1
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL27
	.uaword	0x6a0
	.uaword	0x3d2
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 8192
	.byte	0
	.uleb128 0x10
	.uaword	.LVL33
	.uaword	0x6a0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 8192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL16
	.uaword	0x6a0
	.uaword	0x410
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0x6d0
	.uaword	0x423
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL18
	.uaword	0x6d0
	.uaword	0x436
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.uaword	.LVL19
	.uaword	0x6d0
	.uaword	0x449
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.uaword	.LVL20
	.uaword	0x6d0
	.uaword	0x45c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL21
	.uaword	0x6d0
	.uaword	0x46f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.uaword	.LVL22
	.uaword	0x6d0
	.uaword	0x482
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0xe
	.uaword	.LVL23
	.uaword	0x6d0
	.uaword	0x495
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xe
	.uaword	.LVL24
	.uaword	0x6d0
	.uaword	0x4a8
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.uaword	.LVL25
	.uaword	0x6d0
	.uaword	0x4bb
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x6d0
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Asw_Ldc_EepromCtrl"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB164
	.uaword	.LFE164
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x664
	.uleb128 0x12
	.string	"u8s_EepromWriteCnt"
	.byte	0x1
	.byte	0x79
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_EepromWriteCnt.2303
	.uleb128 0x9
	.string	"u8_Cnt"
	.byte	0x1
	.byte	0x7a
	.uaword	0x228
	.uaword	.LLST5
	.uleb128 0x9
	.string	"u8_EepromWriteFlag"
	.byte	0x1
	.byte	0x7b
	.uaword	0x228
	.uaword	.LLST6
	.uleb128 0x12
	.string	"u8_EepromBuf"
	.byte	0x1
	.byte	0x7c
	.uaword	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xe
	.uaword	.LVL42
	.uaword	0x6f7
	.uaword	0x56d
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.uaword	.LVL43
	.uaword	0x6f7
	.uaword	0x580
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.uaword	.LVL44
	.uaword	0x6f7
	.uaword	0x593
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.uaword	.LVL45
	.uaword	0x6f7
	.uaword	0x5a6
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL46
	.uaword	0x6f7
	.uaword	0x5b9
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.uaword	.LVL47
	.uaword	0x6f7
	.uaword	0x5cc
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0xe
	.uaword	.LVL48
	.uaword	0x6f7
	.uaword	0x5df
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xe
	.uaword	.LVL49
	.uaword	0x6f7
	.uaword	0x5f2
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.uaword	.LVL50
	.uaword	0x6f7
	.uaword	0x605
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.uaword	.LVL51
	.uaword	0x6f7
	.uaword	0x618
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0xe
	.uaword	.LVL60
	.uaword	0x71c
	.uaword	0x62b
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL61
	.byte	0x1
	.uaword	0x752
	.uaword	0x63f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL63
	.byte	0x1
	.uaword	0x752
	.uaword	0x653
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.uaword	.LVL64
	.byte	0x1
	.uaword	0x752
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"u8s_EepromData"
	.byte	0x1
	.byte	0x48
	.uaword	0x2dd
	.byte	0x5
	.byte	0x3
	.uaword	u8s_EepromData
	.uleb128 0x12
	.string	"u32s_EepromCurAddr"
	.byte	0x1
	.byte	0x49
	.uaword	0x234
	.byte	0x5
	.byte	0x3
	.uaword	u32s_EepromCurAddr
	.uleb128 0x14
	.byte	0x1
	.string	"Mcal_DFlashRead"
	.byte	0x4
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uaword	0x6ca
	.uleb128 0x15
	.uaword	0x234
	.uleb128 0x15
	.uaword	0x234
	.uleb128 0x15
	.uaword	0x6ca
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x228
	.uleb128 0x14
	.byte	0x1
	.string	"Asw_Write_DTC_Sts"
	.byte	0x5
	.byte	0x55
	.byte	0x1
	.byte	0x1
	.uaword	0x6f7
	.uleb128 0x15
	.uaword	0x228
	.uleb128 0x15
	.uaword	0x228
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Asw_Read_DTC_Sts"
	.byte	0x5
	.byte	0x54
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x71c
	.uleb128 0x15
	.uaword	0x228
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Mcal_DFlashWrite"
	.byte	0x4
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uaword	0x747
	.uleb128 0x15
	.uaword	0x234
	.uleb128 0x15
	.uaword	0x234
	.uleb128 0x15
	.uaword	0x747
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x74d
	.uleb128 0x18
	.uaword	0x228
	.uleb128 0x19
	.byte	0x1
	.string	"Mcal_DFlashErase"
	.byte	0x4
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x234
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x8
	.byte	0xa2
	.byte	0x47
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf002000
	.uaword	.LVL32
	.uaword	.LVL38
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf004000
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x6
	.byte	0x8
	.byte	0xa2
	.byte	0x47
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf004000
	.uaword	.LVL40
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x21
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x21
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL16-1
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x21
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33-1
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x21
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE163
	.uahalf	0x26
	.byte	0x91
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x91
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x82
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x3
	.byte	0x82
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x82
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL41
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
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
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	.LFB164
	.uaword	.LFE164
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Mcal_DFlashErase,STT_FUNC,0
	.extern	Mcal_DFlashWrite,STT_FUNC,0
	.extern	Asw_Read_DTC_Sts,STT_FUNC,0
	.extern	Asw_Write_DTC_Sts,STT_FUNC,0
	.extern	Mcal_DFlashRead,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
