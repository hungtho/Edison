	.file	"ASW_LdcStateTrans.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IsChangeModeFault,"ax",@progbits
	.align 1
	.type	IsChangeModeFault, @function
IsChangeModeFault:
.LFB5:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
	.loc 1 282 0
.LVL0:
	.loc 1 285 0
	ld.bu	%d15, [%a4] 2
	jeq	%d15, 2, .L2
	.loc 1 286 0
	ld.bu	%d2, [%a4] 3
	jeq	%d2, 2, .L2
	.loc 1 287 0
	ld.bu	%d2, [%a4] 4
	jeq	%d2, 2, .L2
	.loc 1 288 0
	ld.bu	%d3, [%a4] 5
	jeq	%d3, 2, .L2
	.loc 1 289 0
	ld.bu	%d3, [%a4] 1
	jeq	%d3, 2, .L2
	.loc 1 290 0
	ld.bu	%d5, [%a4]0
	eq	%d4, %d5, 2
	or.eq	%d4, %d15, 1
	mov	%d15, %d4
	or.eq	%d15, %d2, 1
	.loc 1 293 0
	or.eq	%d15, %d3, 1
	jnz	%d15, .L2
	.loc 1 294 0
	ld.bu	%d15, [%a4] 6
	.loc 1 283 0
	mov	%d2, 0
	.loc 1 294 0
	jeq	%d15, 4, .L2
.LVL1:
	.loc 1 301 0
	ret
.LVL2:
.L2:
	.loc 1 297 0
	mov	%d15, 0
	movh.a	%a15, hi:u16g_CheckReady_Cnt
	st.h	[%a15] lo:u16g_CheckReady_Cnt, %d15
	.loc 1 296 0
	mov	%d2, 1
.LVL3:
	.loc 1 301 0
	ret
.LFE5:
	.size	IsChangeModeFault, .-IsChangeModeFault
.section .text.IsChangeModeNormal,"ax",@progbits
	.align 1
	.type	IsChangeModeNormal, @function
IsChangeModeNormal:
.LFB3:
	.loc 1 237 0
.LVL4:
	.loc 1 240 0
	ld.hu	%d15, [%a4] 2
	.loc 1 238 0
	mov	%d2, 0
	.loc 1 240 0
	jnz	%d15, .L22
	.loc 1 243 0
	ld.hu	%d15, [%a4] 4
	jnz	%d15, .L22
	.loc 1 245 0
	ld.hu	%d15, [%a4]0
	jnz	%d15, .L22
.LVL5:
.LBB54:
.LBB55:
	.loc 1 246 0
	ld.bu	%d15, [%a4] 6
	jnz	%d15, .L22
	.loc 1 247 0
	ld.bu	%d2, [%a4] 8
.LBE55:
.LBE54:
	.loc 1 238 0
	eq	%d2, %d2, 0
.LVL6:
.L22:
	.loc 1 253 0
	ret
.LFE3:
	.size	IsChangeModeNormal, .-IsChangeModeNormal
.section .text.Asw_Ldc_ModeUpdate,"ax",@progbits
	.align 1
	.global	Asw_Ldc_ModeUpdate
	.type	Asw_Ldc_ModeUpdate, @function
Asw_Ldc_ModeUpdate:
.LFB0:
	.loc 1 91 0
.LVL7:
.LBB108:
.LBB109:
	.loc 1 195 0
	movh.a	%a15, hi:u8g_LdcMode
.LBE109:
.LBE108:
	.loc 1 92 0
	ld.bu	%d15, [%a15] lo:u8g_LdcMode
	jlt.u	%d15, 5, .L79
.LVL8:
.L28:
.LBB110:
.LBB111:
	.loc 1 336 0
	mov	%d15, 0
	st.b	[%a15] lo:u8g_LdcMode, %d15
	ret
.LVL9:
.L79:
.LBE111:
.LBE110:
	.loc 1 92 0
	movh.a	%a2, hi:.L30
	lea	%a2, [%a2] lo:.L30
	addsc.a	%a2, %a2, %d15, 2
	mov.aa	%a12, %a4
	ji	%a2
	.align 2
	.align 2
.L30:
	.code32
	j	.L29
	.code32
	j	.L31
	.code32
	j	.L32
	.code32
	j	.L33
	.code32
	j	.L73
.L33:
.LVL10:
.LBB112:
.LBB113:
	.loc 1 314 0
	ld.w	%d15, [%a5] 16
	movh	%d2, 50047
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 315 0
	ld.w	%d15, [%a5]0
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 316 0
	ld.w	%d15, [%a5] 4
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 317 0
	ld.w	%d15, [%a5] 8
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 318 0
	ld.w	%d15, [%a5] 12
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L35
.LVL11:
.L73:
.LBE113:
.LBE112:
	.loc 1 161 0
	mov.aa	%a4, %a12
.LVL12:
	call	IsChangeModeNormal
.LVL13:
	jeq	%d2, 1, .L28
	ret
.LVL14:
.L29:
.LBB114:
.LBB115:
	.loc 1 314 0
	ld.w	%d15, [%a5] 16
	movh	%d2, 50047
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 315 0
	ld.w	%d15, [%a5]0
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 316 0
	ld.w	%d15, [%a5] 4
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 317 0
	ld.w	%d15, [%a5] 8
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 318 0
	ld.w	%d15, [%a5] 12
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L35
.LVL15:
.LBE115:
.LBE114:
.LBB117:
.LBB118:
	.loc 1 213 0
	ld.bu	%d15, [%a4] 4
	jnz	%d15, .L39
	.loc 1 214 0
	ld.bu	%d15, [%a12] 1
	jnz	%d15, .L39
	.loc 1 215 0
	ld.bu	%d15, [%a12] 8
	jnz	%d15, .L39
	.loc 1 216 0
	ld.bu	%d15, [%a12] 7
	jnz	%d15, .L39
	.loc 1 218 0
	movh.a	%a2, hi:u16g_CheckReady_Cnt
	ld.hu	%d15, [%a2] lo:u16g_CheckReady_Cnt
	ge.u	%d2, %d15, 500
	jnz	%d2, .L40
	.loc 1 219 0
	add	%d15, 1
	st.h	[%a2] lo:u16g_CheckReady_Cnt, %d15
	j	.L28
.LVL16:
.L31:
.LBE118:
.LBE117:
.LBB120:
.LBB121:
	.loc 1 314 0
	ld.w	%d15, [%a5] 16
	movh	%d2, 50047
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 315 0
	ld.w	%d15, [%a5]0
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 316 0
	ld.w	%d15, [%a5] 4
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 317 0
	ld.w	%d15, [%a5] 8
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 318 0
	ld.w	%d15, [%a5] 12
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L35
.LBE121:
.LBE120:
	.loc 1 113 0
	call	IsChangeModeFault
.LVL17:
	jeq	%d2, 1, .L49
	.loc 1 118 0
	ld.bu	%d15, [%a12] 2
	add	%d15, -1
	.loc 1 117 0
	and	%d15, 255
	jlt.u	%d15, 2, .L80
.L43:
.LVL18:
.LBB122:
.LBB123:
	.loc 1 266 0
	ld.bu	%d15, [%a12] 1
	jeq	%d15, 3, .L44
.LVL19:
.L40:
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	.loc 1 336 0
	mov	%d15, 1
	st.b	[%a15] lo:u8g_LdcMode, %d15
	ret
.LVL20:
.L32:
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	.loc 1 314 0
	ld.w	%d15, [%a5] 16
	movh	%d2, 50047
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 315 0
	ld.w	%d15, [%a5]0
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 316 0
	ld.w	%d15, [%a5] 4
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 317 0
	ld.w	%d15, [%a5] 8
	cmp.f	%d15, %d15, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L35
	.loc 1 318 0
	ld.w	%d15, [%a5] 12
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L35
.LBE127:
.LBE126:
	.loc 1 137 0
	call	IsChangeModeFault
.LVL21:
	jeq	%d2, 1, .L49
	.loc 1 142 0
	ld.bu	%d15, [%a12] 2
	add	%d15, -1
	.loc 1 141 0
	and	%d15, 255
	jlt.u	%d15, 2, .L81
.L46:
	.loc 1 147 0
	mov.aa	%a4, %a12
	call	IsChangeModeNormal
.LVL22:
	jeq	%d2, 1, .L40
.LVL23:
.L44:
.LBB128:
.LBB129:
	.loc 1 336 0
	mov	%d15, 2
	st.b	[%a15] lo:u8g_LdcMode, %d15
	ret
.LVL24:
.L35:
.LBE129:
.LBE128:
.LBB130:
.LBB116:
	.loc 1 321 0
	mov	%d15, 0
	movh.a	%a2, hi:u16g_CheckReady_Cnt
	st.h	[%a2] lo:u16g_CheckReady_Cnt, %d15
.LVL25:
.LBE116:
.LBE130:
.LBB131:
.LBB132:
	.loc 1 336 0
	mov	%d15, 4
	st.b	[%a15] lo:u8g_LdcMode, %d15
	ret
.LVL26:
.L39:
.LBE132:
.LBE131:
.LBB133:
.LBB119:
	.loc 1 223 0
	mov	%d15, 0
	movh.a	%a2, hi:u16g_CheckReady_Cnt
	st.h	[%a2] lo:u16g_CheckReady_Cnt, %d15
	j	.L28
.LVL27:
.L49:
.LBE119:
.LBE133:
.LBB134:
.LBB135:
	.loc 1 336 0
	mov	%d15, 3
	st.b	[%a15] lo:u8g_LdcMode, %d15
	ret
.LVL28:
.L80:
.LBE135:
.LBE134:
	.loc 1 119 0
	movh.a	%a2, hi:st_rteLdcIn
	lea	%a2, [%a2] lo:st_rteLdcIn
	ld.bu	%d15, [%a2] 24
	jnz	%d15, .L43
	j	.L28
.LVL29:
.L81:
	.loc 1 143 0
	movh.a	%a2, hi:st_rteLdcIn
	lea	%a2, [%a2] lo:st_rteLdcIn
	ld.bu	%d15, [%a2] 24
	jnz	%d15, .L46
	j	.L28
.LFE0:
	.size	Asw_Ldc_ModeUpdate, .-Asw_Ldc_ModeUpdate
.section .text.Asw_GET_Ldc_Mode,"ax",@progbits
	.align 1
	.global	Asw_GET_Ldc_Mode
	.type	Asw_GET_Ldc_Mode, @function
Asw_GET_Ldc_Mode:
.LFB1:
	.loc 1 194 0
	.loc 1 196 0
	movh.a	%a15, hi:u8g_LdcMode
	ld.bu	%d2, [%a15] lo:u8g_LdcMode
	ret
.LFE1:
	.size	Asw_GET_Ldc_Mode, .-Asw_GET_Ldc_Mode
.section .bss.u8g_LdcMode,"aw",@nobits
	.type	u8g_LdcMode, @object
	.size	u8g_LdcMode, 1
u8g_LdcMode:
	.zero	1
.section .bss.u16g_CheckReady_Cnt,"aw",@nobits
	.align 1
	.type	u16g_CheckReady_Cnt, @object
	.size	u16g_CheckReady_Cnt, 2
u16g_CheckReady_Cnt:
	.zero	2
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa3a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x30
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x197
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0xa7
	.uaword	0x224
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
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x189
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x215
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x45
	.uaword	0x2c1
	.uleb128 0x5
	.string	"LDC_MODE_READY"
	.sleb128 0
	.uleb128 0x5
	.string	"LDC_MODE_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"LDC_MODE_DERATING"
	.sleb128 2
	.uleb128 0x5
	.string	"LDC_MODE_FAULT"
	.sleb128 3
	.uleb128 0x5
	.string	"LDC_MODE_FAILURE"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_LDC_MODE_DEF"
	.byte	0x4
	.byte	0x4b
	.uaword	0x25d
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x32a
	.uleb128 0x5
	.string	"STATE_NORMAL"
	.sleb128 0
	.uleb128 0x5
	.string	"STATE_UNDER"
	.sleb128 1
	.uleb128 0x5
	.string	"STATE_OVER"
	.sleb128 2
	.uleb128 0x5
	.string	"STATE_DERATING"
	.sleb128 3
	.uleb128 0x5
	.string	"STATE_FAULT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_STATE_DEF"
	.byte	0x4
	.byte	0x54
	.uaword	0x2d8
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x3ef
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x32a
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x32a
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x32a
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x32a
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x32a
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x32a
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x32a
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x32a
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x32a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x33e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x4b5
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x24f
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x24f
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x24f
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x24f
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x24f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x413
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x7f
	.uaword	0x54b
	.uleb128 0x7
	.string	"u8_VcuCmdLdc_Enable"
	.byte	0x4
	.byte	0x82
	.uaword	0x237
	.byte	0
	.uleb128 0x7
	.string	"f32_VcuCmdLdc_TargetVolt"
	.byte	0x4
	.byte	0x83
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x85
	.uaword	0x32a
	.byte	0x8
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x86
	.uaword	0x32a
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Ldc"
	.byte	0x4
	.byte	0x88
	.uaword	0x4ce
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.byte	0xad
	.uaword	0x59b
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xaf
	.uaword	0x4b5
	.byte	0
	.uleb128 0x7
	.string	"st_CANValue"
	.byte	0x4
	.byte	0xb0
	.uaword	0x54b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Ldc"
	.byte	0x4
	.byte	0xb1
	.uaword	0x569
	.uleb128 0x8
	.string	"IsChangeModeNormal"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x5e6
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xec
	.uaword	0x5e6
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xee
	.uaword	0x237
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5ec
	.uleb128 0xc
	.uaword	0x3ef
	.uleb128 0xd
	.string	"IsChangeModeDerating"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x62d
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x106
	.uaword	0x5e6
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x108
	.uaword	0x237
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Asw_GET_Ldc_Mode"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	0x2c1
	.byte	0x1
	.uleb128 0xd
	.string	"IsChangeModeFailure"
	.byte	0x1
	.uahalf	0x136
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x68e
	.uleb128 0x11
	.string	"stp_RealValues"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x68e
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x138
	.uaword	0x237
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x694
	.uleb128 0xc
	.uaword	0x4b5
	.uleb128 0x12
	.string	"Ldc_SET_ModeStatus"
	.byte	0x1
	.uahalf	0x14e
	.byte	0x1
	.byte	0x1
	.uaword	0x6c6
	.uleb128 0x11
	.string	"u8_val"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2c1
	.byte	0
	.uleb128 0x13
	.string	"IsChangeModeFault"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	0x237
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70f
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x119
	.uaword	0x5e6
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x237
	.uaword	.LLST0
	.byte	0
	.uleb128 0x16
	.uaword	0x5af
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x756
	.uleb128 0x17
	.uaword	0x5cf
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	0x5da
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x1a
	.uaword	0x5cf
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x1b
	.uaword	0x5da
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"IsChangeModeReady"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	0x237
	.byte	0x1
	.uaword	0x78c
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd1
	.uaword	0x5e6
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd3
	.uaword	0x237
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Asw_Ldc_ModeUpdate"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9de
	.uleb128 0x1d
	.string	"stp_faultDetectedResult"
	.byte	0x1
	.byte	0x5a
	.uaword	0x5e6
	.uaword	.LLST3
	.uleb128 0x1d
	.string	"stp_adcValues"
	.byte	0x1
	.byte	0x5a
	.uaword	0x68e
	.uaword	.LLST4
	.uleb128 0x1e
	.uaword	0x62d
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.uaword	0x699
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xb5
	.uaword	0x81b
	.uleb128 0x1a
	.uaword	0x6b6
	.uaword	.LLST5
	.byte	0
	.uleb128 0x1f
	.uaword	0x648
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0x9d
	.uaword	0x84b
	.uleb128 0x1a
	.uaword	0x66a
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x18
	.uaword	0x681
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x648
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5f
	.uaword	0x877
	.uleb128 0x1a
	.uaword	0x66a
	.uaword	.LLST8
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	0x681
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x756
	.uaword	.LBB117
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x63
	.uaword	0x8a3
	.uleb128 0x1a
	.uaword	0x775
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.uaword	0x780
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x648
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.byte	0x6d
	.uaword	0x8d3
	.uleb128 0x1a
	.uaword	0x66a
	.uaword	.LLST12
	.uleb128 0x19
	.uaword	.LBB121
	.uaword	.LBE121
	.uleb128 0x18
	.uaword	0x681
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x5f1
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.byte	0x7b
	.uaword	0x903
	.uleb128 0x1a
	.uaword	0x614
	.uaword	.LLST14
	.uleb128 0x19
	.uaword	.LBB123
	.uaword	.LBE123
	.uleb128 0x18
	.uaword	0x620
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x699
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0x1
	.byte	0x95
	.uaword	0x920
	.uleb128 0x1a
	.uaword	0x6b6
	.uaword	.LLST16
	.byte	0
	.uleb128 0x1f
	.uaword	0x648
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.byte	0x85
	.uaword	0x950
	.uleb128 0x1a
	.uaword	0x66a
	.uaword	.LLST17
	.uleb128 0x19
	.uaword	.LBB127
	.uaword	.LBE127
	.uleb128 0x18
	.uaword	0x681
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x699
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x1
	.byte	0x99
	.uaword	0x96d
	.uleb128 0x1a
	.uaword	0x6b6
	.uaword	.LLST19
	.byte	0
	.uleb128 0x1f
	.uaword	0x699
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.byte	0x61
	.uaword	0x98a
	.uleb128 0x1a
	.uaword	0x6b6
	.uaword	.LLST20
	.byte	0
	.uleb128 0x1f
	.uaword	0x699
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0x73
	.uaword	0x9a7
	.uleb128 0x1a
	.uaword	0x6b6
	.uaword	.LLST21
	.byte	0
	.uleb128 0x22
	.uaword	.LVL13
	.uaword	0x5af
	.uaword	0x9bb
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL17
	.uaword	0x6c6
	.uleb128 0x24
	.uaword	.LVL21
	.uaword	0x6c6
	.uleb128 0x25
	.uaword	.LVL22
	.uaword	0x5af
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x62d
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.string	"u16g_CheckReady_Cnt"
	.byte	0x1
	.byte	0x4b
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	u16g_CheckReady_Cnt
	.uleb128 0x27
	.string	"u8g_LdcMode"
	.byte	0x1
	.byte	0x4c
	.uaword	0x2c1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_LdcMode
	.uleb128 0x28
	.string	"st_rteLdcIn"
	.byte	0x5
	.byte	0x3b
	.uaword	0x59b
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL14
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-1
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-1
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-1
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	0
	.uaword	0
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	0
	.uaword	0
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"rtnVal"
.LASF0:
	.string	"stp_DetectedFlag"
	.extern	st_rteLdcIn,STT_OBJECT,36
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
