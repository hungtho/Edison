	.file	"ASW_LdcState.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Seq_StatePowerOff,"ax",@progbits
	.align 1
	.type	Seq_StatePowerOff, @function
Seq_StatePowerOff:
.LFB11:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
	.loc 1 365 0
	.loc 1 366 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_LdcPWMCtrl
	st.b	[%a15] lo:u8s_LdcPWMCtrl, %d15
	.loc 1 368 0
	movh.a	%a15, hi:st_rteLdcOut
	lea	%a15, [%a15] lo:st_rteLdcOut
	ld.w	%d15, [%a15] 8
.LVL0:
.LBB80:
.LBB81:
	.loc 1 404 0
	jlt.u	%d15, 3, .L2
	.loc 1 406 0
	add	%d15, -2
.LVL1:
.LBB82:
.LBB83:
	.loc 1 167 0
	utof	%d2, %d15
	movh	%d3, 17362
	cmp.f	%d2, %d2, %d3
	jz.t	%d2, 2, .L7
	.loc 1 168 0
	mov	%d15, 420
.LVL2:
	st.w	[%a15] 8, %d15
.LVL3:
	ret
.LVL4:
.L2:
.LBE83:
.LBE82:
	.loc 1 402 0
	mov	%d15, 0
.LVL5:
.LBE81:
.LBE80:
	.loc 1 370 0
	mov	%d2, 0
.LBB90:
.LBB88:
.LBB86:
.LBB84:
	.loc 1 170 0
	st.w	[%a15] 8, %d15
.LVL6:
.LBE84:
.LBE86:
.LBE88:
.LBE90:
	.loc 1 370 0
	movh.a	%a15, hi:f32g_cmdTargetCur_SS
	st.w	[%a15] lo:f32g_cmdTargetCur_SS, %d2
	.loc 1 371 0
	movh.a	%a15, hi:u8g_SoftStartEnd
	st.b	[%a15] lo:u8g_SoftStartEnd, %d15
.LBB91:
.LBB92:
	.loc 1 106 0
	call	Asw_Ldc_PiInit
.LVL7:
	.loc 1 107 0
	call	Asw_Ldc_PiCofficient
.LVL8:
	.loc 1 108 0
	call	Asw_Ldc_AdcInit
.LVL9:
.LBE92:
.LBE91:
	.loc 1 374 0
	movh.a	%a15, hi:u8g_SoftStopEnd
	mov	%d2, 1
	st.b	[%a15] lo:u8g_SoftStopEnd, %d2
.LVL10:
.LBB93:
.LBB94:
	.loc 1 426 0
	movh.a	%a15, hi:u8s_LdcDeratingState
	st.b	[%a15] lo:u8s_LdcDeratingState, %d15
	ret
.LVL11:
.L7:
.LBE94:
.LBE93:
.LBB95:
.LBB89:
.LBB87:
.LBB85:
	.loc 1 170 0
	st.w	[%a15] 8, %d15
.LVL12:
	ret
.LBE85:
.LBE87:
.LBE89:
.LBE95:
.LFE11:
	.size	Seq_StatePowerOff, .-Seq_StatePowerOff
.section .text.Seq_Control_LdcRun.part.1,"ax",@progbits
	.align 1
	.type	Seq_Control_LdcRun.part.1, @function
Seq_Control_LdcRun.part.1:
.LFB16:
	.loc 1 288 0
.LVL13:
	.loc 1 292 0
	movh.a	%a15, hi:f32g_cmdTargetCur_SS
	ld.w	%d5, [%a15] lo:f32g_cmdTargetCur_SS
	.loc 1 288 0
	mov	%d15, %d4
	.loc 1 292 0
	call	Asw_Ldc_SoftStart
.LVL14:
	st.w	[%a15] lo:f32g_cmdTargetCur_SS, %d2
	.loc 1 293 0
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L10
	.loc 1 295 0
	mov	%d15, 1
.LVL15:
	movh.a	%a15, hi:u8g_SoftStartEnd
	st.b	[%a15] lo:u8g_SoftStartEnd, %d15
.L10:
.LBB96:
.LBB97:
	.loc 1 388 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_SoftStopEnd
	st.b	[%a15] lo:u8g_SoftStopEnd, %d15
	.loc 1 389 0
	mov	%d15, 1
	movh.a	%a15, hi:u8s_LdcPWMCtrl
	st.b	[%a15] lo:u8s_LdcPWMCtrl, %d15
	ret
.LBE97:
.LBE96:
.LFE16:
	.size	Seq_Control_LdcRun.part.1, .-Seq_Control_LdcRun.part.1
.section .text.Asw_Ldc_Init,"ax",@progbits
	.align 1
	.global	Asw_Ldc_Init
	.type	Asw_Ldc_Init, @function
Asw_Ldc_Init:
.LFB0:
	.loc 1 105 0
	.loc 1 106 0
	call	Asw_Ldc_PiInit
.LVL16:
	.loc 1 107 0
	call	Asw_Ldc_PiCofficient
.LVL17:
	.loc 1 108 0
	j	Asw_Ldc_AdcInit
.LVL18:
.LFE0:
	.size	Asw_Ldc_Init, .-Asw_Ldc_Init
.section .text.Asw_Ldc_Mode,"ax",@progbits
	.align 1
	.global	Asw_Ldc_Mode
	.type	Asw_Ldc_Mode, @function
Asw_Ldc_Mode:
.LFB1:
	.loc 1 119 0
	.loc 1 120 0
	call	Asw_GET_Ldc_Mode
.LVL19:
	.loc 1 126 0
	movh.a	%a15, hi:st_rteLdcIn
	lea	%a15, [%a15] lo:st_rteLdcIn
	ld.bu	%d3, [%a15] 24
.LVL20:
	.loc 1 127 0
	ld.w	%d15, [%a15] 28
.LVL21:
	.loc 1 130 0
	jge.u	%d2, 5, .L15
	movh.a	%a2, hi:.L17
	lea	%a2, [%a2] lo:.L17
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L17:
	.code32
	j	.L15
	.code32
	j	.L18
	.code32
	j	.L19
	.code32
	j	.L15
	.code32
	j	.L15
.LVL22:
.L56:
.LBB134:
.LBB135:
.LBB136:
.LBB137:
	.loc 1 320 0
	ld.w	%d2, [%a15] 16
	movh	%d4, 17146
	cmp.f	%d4, %d2, %d4
	jz.t	%d4, 2, .L28
	movh	%d4, 17154
	cmp.f	%d4, %d2, %d4
	or.t	%d4, %d4,0, %d4,1
	jz	%d4, .L28
	addi	%d2, %d5, -1
	.loc 1 322 0
	addi	%d4, %d5, -2
	and	%d2, %d2, 255
	jlt.u	%d4, 2, .L41
.LVL23:
.LBB138:
.LBB139:
	.loc 1 426 0
	mov	%d2, 1
	st.b	[%a2] lo:u8s_LdcDeratingState, %d2
.LVL24:
	mov	%d2, 0
.LVL25:
.L41:
	movh.a	%a15, hi:CSWTCH.14
.LVL26:
	lea	%a15, [%a15] lo:CSWTCH.14
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d4, [%a15]0
.L38:
.LVL27:
.LBE139:
.LBE138:
.LBE137:
.LBE136:
.LBB148:
.LBB149:
	.loc 1 290 0
	jne	%d3, 1, .L15
	movh	%d2, 16656
	cmp.f	%d15, %d15, %d2
.LVL28:
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L54
.LVL29:
.L15:
.LBE149:
.LBE148:
.LBE135:
.LBE134:
.LBB156:
.LBB157:
.LBB158:
	.loc 1 302 0
	j	Seq_StatePowerOff
.LVL30:
.L18:
.LBE158:
.LBE157:
.LBE156:
.LBB159:
.LBB160:
	.loc 1 212 0
	mov	%d2, 0
.LVL31:
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L22
.LVL32:
.LBB161:
.LBB162:
	.loc 1 290 0
	jne	%d3, 1, .L22
	movh	%d2, 16656
	cmp.f	%d15, %d15, %d2
.LVL33:
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L55
.LVL34:
.L22:
	.loc 1 302 0
	call	Seq_StatePowerOff
.LVL35:
.L25:
.LBE162:
.LBE161:
.LBB164:
.LBB165:
	.loc 1 426 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_LdcDeratingState
	st.b	[%a15] lo:u8s_LdcDeratingState, %d15
	ret
.LVL36:
.L19:
	movh.a	%a3, hi:st_AswLdcDiagFlag
	lea	%a3, [%a3] lo:st_AswLdcDiagFlag
.LBE165:
.LBE164:
.LBE160:
.LBE159:
.LBB168:
.LBB154:
.LBB151:
.LBB146:
	.loc 1 318 0
	ld.bu	%d2, [%a3] 1
.LVL37:
	.loc 1 316 0
	movh.a	%a2, hi:u8s_LdcDeratingState
	ld.bu	%d5, [%a2] lo:u8s_LdcDeratingState
.LVL38:
	.loc 1 318 0
	jeq	%d2, 3, .L56
.L27:
.LVL39:
.LBB140:
.LBB141:
	.loc 1 426 0
	mov	%d2, 0
	st.b	[%a2] lo:u8s_LdcDeratingState, %d2
.LVL40:
	movh	%d4, 17239
	j	.L38
.LVL41:
.L55:
.LBE141:
.LBE140:
.LBE146:
.LBE151:
.LBE154:
.LBE168:
.LBB169:
.LBB167:
.LBB166:
.LBB163:
	movh	%d4, 17239
	call	Seq_Control_LdcRun.part.1
.LVL42:
	j	.L25
.LVL43:
.L54:
.LBE163:
.LBE166:
.LBE167:
.LBE169:
.LBB170:
.LBB155:
.LBB152:
.LBB150:
	j	Seq_Control_LdcRun.part.1
.LVL44:
.L28:
.LBE150:
.LBE152:
.LBB153:
.LBB147:
	.loc 1 331 0
	movh	%d4, 17154
	cmp.f	%d4, %d2, %d4
	jz.t	%d4, 2, .L33
	movh	%d4, 17164
	cmp.f	%d4, %d2, %d4
	or.t	%d4, %d4,0, %d4,1
	jz	%d4, .L33
	.loc 1 333 0
	mov	%d2, 2
	jeq	%d5, 3, .L41
.LVL45:
.LBB142:
.LBB143:
	.loc 1 426 0
	st.b	[%a2] lo:u8s_LdcDeratingState, %d2
.LVL46:
	mov	%d2, 1
	j	.L41
.LVL47:
.L33:
.LBE143:
.LBE142:
	.loc 1 342 0
	movh	%d4, 17164
	cmp.f	%d4, %d2, %d4
	jz.t	%d4, 2, .L27
	movh	%d4, 17179
	cmp.f	%d2, %d2, %d4
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L27
.LVL48:
.LBB144:
.LBB145:
	.loc 1 426 0
	mov	%d2, 3
	st.b	[%a2] lo:u8s_LdcDeratingState, %d2
.LVL49:
	mov	%d2, 2
	j	.L41
.LBE145:
.LBE144:
.LBE147:
.LBE153:
.LBE155:
.LBE170:
.LFE1:
	.size	Asw_Ldc_Mode, .-Asw_Ldc_Mode
.section .text.Asw_Ldc_PhaseShiftLimit,"ax",@progbits
	.align 1
	.global	Asw_Ldc_PhaseShiftLimit
	.type	Asw_Ldc_PhaseShiftLimit, @function
Asw_Ldc_PhaseShiftLimit:
.LFB2:
	.loc 1 166 0
.LVL50:
	.loc 1 167 0
	utof	%d15, %d4
	movh	%d2, 17362
	cmp.f	%d15, %d15, %d2
	jnz.t	%d15, 2, .L63
	.loc 1 170 0
	movh.a	%a15, hi:st_rteLdcOut
	lea	%a15, [%a15] lo:st_rteLdcOut
	st.w	[%a15] 8, %d4
	ret
.L63:
	.loc 1 168 0
	movh.a	%a15, hi:st_rteLdcOut
	mov	%d15, 420
	lea	%a15, [%a15] lo:st_rteLdcOut
	st.w	[%a15] 8, %d15
	ret
.LFE2:
	.size	Asw_Ldc_PhaseShiftLimit, .-Asw_Ldc_PhaseShiftLimit
.section .text.Asw_GET_Ldc_PwmCtrl,"ax",@progbits
	.align 1
	.global	Asw_GET_Ldc_PwmCtrl
	.type	Asw_GET_Ldc_PwmCtrl, @function
Asw_GET_Ldc_PwmCtrl:
.LFB3:
	.loc 1 182 0
	.loc 1 184 0
	movh.a	%a15, hi:u8s_LdcPWMCtrl
	ld.bu	%d2, [%a15] lo:u8s_LdcPWMCtrl
	ret
.LFE3:
	.size	Asw_GET_Ldc_PwmCtrl, .-Asw_GET_Ldc_PwmCtrl
.section .rodata.CSWTCH.14,"a",@progbits
	.align 2
	.type	CSWTCH.14, @object
	.size	CSWTCH.14, 12
CSWTCH.14:
	.word	1126170624
	.word	1124073472
	.word	1112014848
.section .bss.u8s_LdcDeratingState,"aw",@nobits
	.type	u8s_LdcDeratingState, @object
	.size	u8s_LdcDeratingState, 1
u8s_LdcDeratingState:
	.zero	1
.section .bss.u8s_LdcPWMCtrl,"aw",@nobits
	.type	u8s_LdcPWMCtrl, @object
	.size	u8s_LdcPWMCtrl, 1
u8s_LdcPWMCtrl:
	.zero	1
	.global	st_AswLdcDiagFlag
.section .bss.st_AswLdcDiagFlag,"aw",@nobits
	.align 1
	.type	st_AswLdcDiagFlag, @object
	.size	st_AswLdcDiagFlag, 10
st_AswLdcDiagFlag:
	.zero	10
	.global	f32g_cmdTargetCur_SS
.section .bss.f32g_cmdTargetCur_SS,"aw",@nobits
	.align 2
	.type	f32g_cmdTargetCur_SS, @object
	.size	f32g_cmdTargetCur_SS, 4
f32g_cmdTargetCur_SS:
	.zero	4
	.global	u8g_SoftStopEnd
.section .bss.u8g_SoftStopEnd,"aw",@nobits
	.type	u8g_SoftStopEnd, @object
	.size	u8g_SoftStopEnd, 1
u8g_SoftStopEnd:
	.zero	1
	.global	u8g_SoftStartEnd
.section .bss.u8g_SoftStartEnd,"aw",@nobits
	.type	u8g_SoftStartEnd, @object
	.size	u8g_SoftStartEnd, 1
u8g_SoftStartEnd:
	.zero	1
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
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
	.file 6 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiOut.h"
	.file 7 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PiController.h"
	.file 8 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.h"
	.file 9 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcStateTrans.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xef0
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0xc8
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x16f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1b1
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
	.uaword	0x166
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x180
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1a3
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x219
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x35
	.uaword	0x27b
	.uleb128 0x5
	.string	"EN_LDC_Off"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_LDC_On"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"en_LDC_STATE"
	.byte	0x4
	.byte	0x38
	.uaword	0x259
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x45
	.uaword	0x2f3
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
	.uaword	0x28f
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x35c
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
	.uaword	0x30a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x57
	.uaword	0x3cb
	.uleb128 0x5
	.string	"DERATING_NOT_USE"
	.sleb128 0
	.uleb128 0x5
	.string	"DERATING_TEMP_LV01"
	.sleb128 1
	.uleb128 0x5
	.string	"DERATING_TEMP_LV02"
	.sleb128 2
	.uleb128 0x5
	.string	"DERATING_TEMP_LV03"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"en_LDC_DERATING_STAT"
	.byte	0x4
	.byte	0x5c
	.uaword	0x370
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x498
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x35c
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x35c
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x35c
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x35c
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x35c
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x35c
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x35c
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x35c
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x35c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x3e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x55e
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x24b
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x24b
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x24b
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x24b
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x24b
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x24b
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x4bc
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x7f
	.uaword	0x5f4
	.uleb128 0x7
	.string	"u8_VcuCmdLdc_Enable"
	.byte	0x4
	.byte	0x82
	.uaword	0x232
	.byte	0
	.uleb128 0x7
	.string	"f32_VcuCmdLdc_TargetVolt"
	.byte	0x4
	.byte	0x83
	.uaword	0x24b
	.byte	0x4
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x85
	.uaword	0x35c
	.byte	0x8
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x86
	.uaword	0x35c
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Ldc"
	.byte	0x4
	.byte	0x88
	.uaword	0x577
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0xa2
	.uaword	0x62f
	.uleb128 0x7
	.string	"u8_ldc_mode"
	.byte	0x4
	.byte	0xa4
	.uaword	0x2f3
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"st_CANTxValuesType_Ldc"
	.byte	0x4
	.byte	0xa5
	.uaword	0x612
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xa7
	.uaword	0x683
	.uleb128 0x7
	.string	"u8_LdcPWMCtrl"
	.byte	0x4
	.byte	0xa9
	.uaword	0x27b
	.byte	0
	.uleb128 0x7
	.string	"u32_phaseshift"
	.byte	0x4
	.byte	0xaa
	.uaword	0x23e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_PWMType_Ldc"
	.byte	0x4
	.byte	0xab
	.uaword	0x64d
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.byte	0xad
	.uaword	0x6c3
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xaf
	.uaword	0x55e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb0
	.uaword	0x5f4
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Ldc"
	.byte	0x4
	.byte	0xb1
	.uaword	0x699
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0xb3
	.uaword	0x700
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb5
	.uaword	0x62f
	.byte	0
	.uleb128 0x7
	.string	"st_PwmValue"
	.byte	0x4
	.byte	0xb6
	.uaword	0x683
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"st_RteOut_Ldc"
	.byte	0x4
	.byte	0xb7
	.uaword	0x6d7
	.uleb128 0x9
	.string	"Ldc_SET_DeratingState"
	.byte	0x1
	.uahalf	0x1a8
	.byte	0x1
	.byte	0x1
	.uaword	0x745
	.uleb128 0xa
	.string	"u8_val"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x3cb
	.byte	0
	.uleb128 0x9
	.string	"Seq_Control_LdcDerating"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.byte	0x1
	.uaword	0x79b
	.uleb128 0xa
	.string	"st_DetectedFlag"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x79b
	.uleb128 0xb
	.string	"u8_ldcDeratingStat"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x3cb
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x7a1
	.uleb128 0xd
	.uaword	0x498
	.uleb128 0xe
	.byte	0x1
	.string	"Asw_Ldc_PhaseShiftLimit"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.uaword	0x7d8
	.uleb128 0xf
	.string	"u32_val"
	.byte	0x1
	.byte	0xa5
	.uaword	0x23e
	.byte	0
	.uleb128 0x10
	.string	"Ldc_SoftStop"
	.byte	0x1
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x232
	.byte	0x1
	.uaword	0x82a
	.uleb128 0xa
	.string	"u32_rteshift"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x23e
	.uleb128 0xb
	.string	"u8_Ret"
	.byte	0x1
	.uahalf	0x191
	.uaword	0x232
	.uleb128 0xb
	.string	"u32_shift"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x23e
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Asw_Ldc_Init"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"Seq_StatePowerOn"
	.byte	0x1
	.uahalf	0x182
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"Seq_Control_LdcRun"
	.byte	0x1
	.uahalf	0x120
	.byte	0x1
	.byte	0x1
	.uaword	0x896
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x120
	.uaword	0x232
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x120
	.uaword	0x24b
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x120
	.uaword	0x24b
	.byte	0
	.uleb128 0x14
	.string	"Seq_RunReady"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"Seq_RunFault"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"Seq_RunFailure"
	.byte	0x1
	.uahalf	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"Seq_RunNormal"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.byte	0x1
	.uaword	0x909
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd2
	.uaword	0x232
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd2
	.uaword	0x24b
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd2
	.uaword	0x24b
	.byte	0
	.uleb128 0x17
	.string	"Seq_StatePowerOff"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9ca
	.uleb128 0x18
	.uaword	0x7d8
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x170
	.uaword	0x97f
	.uleb128 0x19
	.uaword	0x7f3
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x808
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	0x817
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	0x7a6
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x19c
	.uleb128 0x19
	.uaword	0x7c8
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x82a
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.uahalf	0x174
	.uaword	0x9af
	.uleb128 0x1e
	.uaword	.LVL7
	.uaword	0xe67
	.uleb128 0x1e
	.uaword	.LVL8
	.uaword	0xe7c
	.uleb128 0x1e
	.uaword	.LVL9
	.uaword	0xe97
	.byte	0
	.uleb128 0x1f
	.uaword	0x715
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.uahalf	0x177
	.uleb128 0x19
	.uaword	0x735
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x854
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa22
	.uleb128 0x19
	.uaword	0x889
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	0x87d
	.byte	0x6
	.byte	0xfa
	.uaword	0x87d
	.byte	0x9f
	.uleb128 0x21
	.uaword	0x871
	.byte	0x6
	.byte	0xfa
	.uaword	0x871
	.byte	0x9f
	.uleb128 0x22
	.uaword	0x83d
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.uahalf	0x12a
	.uleb128 0x23
	.uaword	.LVL14
	.uaword	0xead
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x166
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x82a
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa53
	.uleb128 0x1e
	.uaword	.LVL16
	.uaword	0xe67
	.uleb128 0x1e
	.uaword	.LVL17
	.uaword	0xe7c
	.uleb128 0x25
	.uaword	.LVL18
	.byte	0x1
	.uaword	0xe97
	.byte	0
	.uleb128 0x15
	.string	"Seq_RunDerating"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.byte	0x1
	.uaword	0xaa9
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe7
	.uaword	0x232
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0xe7
	.uaword	0x24b
	.uleb128 0x26
	.string	"f32_refVolt"
	.byte	0x1
	.byte	0xe9
	.uaword	0x24b
	.uleb128 0x26
	.string	"f32_refCurr"
	.byte	0x1
	.byte	0xea
	.uaword	0x24b
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"Asw_Ldc_Mode"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd3a
	.uleb128 0x28
	.string	"u8_ldcModeState"
	.byte	0x1
	.byte	0x78
	.uaword	0x2f3
	.uaword	.LLST6
	.uleb128 0x28
	.string	"u8_ldcEnableSig"
	.byte	0x1
	.byte	0x7a
	.uaword	0x232
	.uaword	.LLST7
	.uleb128 0x28
	.string	"f32_refVolVal"
	.byte	0x1
	.byte	0x7b
	.uaword	0x24b
	.uaword	.LLST8
	.uleb128 0x28
	.string	"f32_refCurVal"
	.byte	0x1
	.byte	0x7c
	.uaword	0x24b
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	0xa53
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x8d
	.uaword	0xc4a
	.uleb128 0x19
	.uaword	0xa77
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	0xa6c
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x1b
	.uaword	0xa82
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	0xa95
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	0x745
	.uaword	.LBB136
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xec
	.uaword	0xc0b
	.uleb128 0x19
	.uaword	0x767
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x1b
	.uaword	0x77f
	.uaword	.LLST15
	.uleb128 0x1d
	.uaword	0x715
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x144
	.uaword	0xbb6
	.uleb128 0x19
	.uaword	0x735
	.uaword	.LLST16
	.byte	0
	.uleb128 0x1d
	.uaword	0x715
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.uahalf	0x15c
	.uaword	0xbd4
	.uleb128 0x19
	.uaword	0x735
	.uaword	.LLST17
	.byte	0
	.uleb128 0x1d
	.uaword	0x715
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x14f
	.uaword	0xbf2
	.uleb128 0x19
	.uaword	0x735
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1f
	.uaword	0x715
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.uahalf	0x158
	.uleb128 0x2a
	.uaword	0x735
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x854
	.uaword	.LBB148
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xfe
	.uleb128 0x19
	.uaword	0x889
	.uaword	.LLST19
	.uleb128 0x19
	.uaword	0x87d
	.uaword	.LLST20
	.uleb128 0x19
	.uaword	0x871
	.uaword	.LLST21
	.uleb128 0x2c
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x9ca
	.uleb128 0x2d
	.uaword	0x871
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x896
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.byte	0x99
	.uaword	0xc93
	.uleb128 0x2f
	.uaword	0x854
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x1
	.byte	0xc8
	.uleb128 0x19
	.uaword	0x889
	.uaword	.LLST22
	.uleb128 0x19
	.uaword	0x87d
	.uaword	.LLST22
	.uleb128 0x19
	.uaword	0x871
	.uaword	.LLST24
	.uleb128 0x25
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x909
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x8d0
	.uaword	.LBB159
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x89
	.uaword	0xd30
	.uleb128 0x19
	.uaword	0x8fd
	.uaword	.LLST25
	.uleb128 0x19
	.uaword	0x8f2
	.uaword	.LLST26
	.uleb128 0x19
	.uaword	0x8e7
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0x854
	.uaword	.LBB161
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xd6
	.uaword	0xd16
	.uleb128 0x19
	.uaword	0x889
	.uaword	.LLST28
	.uleb128 0x19
	.uaword	0x87d
	.uaword	.LLST29
	.uleb128 0x19
	.uaword	0x871
	.uaword	.LLST30
	.uleb128 0x1e
	.uaword	.LVL35
	.uaword	0x909
	.uleb128 0x23
	.uaword	.LVL42
	.uaword	0x9ca
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x166
	.byte	0x4
	.uaword	0x43570000
	.uleb128 0x2d
	.uaword	0x871
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x715
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.byte	0xdd
	.uleb128 0x19
	.uaword	0x735
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL19
	.uaword	0xed8
	.byte	0
	.uleb128 0x20
	.uaword	0x7a6
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd56
	.uleb128 0x21
	.uaword	0x7c8
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Asw_GET_Ldc_PwmCtrl"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x27b
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x31
	.string	"u8s_LdcPWMCtrl"
	.byte	0x1
	.byte	0x59
	.uaword	0x27b
	.byte	0x5
	.byte	0x3
	.uaword	u8s_LdcPWMCtrl
	.uleb128 0x31
	.string	"u8s_LdcDeratingState"
	.byte	0x1
	.byte	0x5a
	.uaword	0x3cb
	.byte	0x5
	.byte	0x3
	.uaword	u8s_LdcDeratingState
	.uleb128 0x32
	.string	"u8g_SoftStartEnd"
	.byte	0x1
	.byte	0x4f
	.uaword	0x232
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_SoftStartEnd
	.uleb128 0x32
	.string	"u8g_SoftStopEnd"
	.byte	0x1
	.byte	0x50
	.uaword	0x232
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_SoftStopEnd
	.uleb128 0x32
	.string	"f32g_cmdTargetCur_SS"
	.byte	0x1
	.byte	0x51
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	f32g_cmdTargetCur_SS
	.uleb128 0x32
	.string	"st_AswLdcDiagFlag"
	.byte	0x1
	.byte	0x52
	.uaword	0x498
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_AswLdcDiagFlag
	.uleb128 0x33
	.string	"st_rteLdcIn"
	.byte	0x5
	.byte	0x3b
	.uaword	0x6c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"st_rteLdcOut"
	.byte	0x6
	.byte	0x3a
	.uaword	0x700
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"Asw_Ldc_PiInit"
	.byte	0x7
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"Asw_Ldc_PiCofficient"
	.byte	0x7
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"Asw_Ldc_AdcInit"
	.byte	0x8
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Asw_Ldc_SoftStart"
	.byte	0x7
	.byte	0x5d
	.byte	0x1
	.uaword	0x24b
	.byte	0x1
	.uaword	0xed8
	.uleb128 0x36
	.uaword	0x24b
	.uleb128 0x36
	.uaword	0x24b
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Asw_GET_Ldc_Mode"
	.byte	0x9
	.byte	0x41
	.byte	0x1
	.uaword	0x2f3
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0x5f
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL12
	.uaword	.LFE11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LFE16
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x166
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL30
	.uaword	.LVL35-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL36
	.uaword	.LVL42-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL44
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL44
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL21
	.uaword	.LFE1
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43570000
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL44
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE1
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL29
	.uahalf	0x6
	.byte	0x3
	.uaword	st_AswLdcDiagFlag
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0x3
	.uaword	st_AswLdcDiagFlag
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE1
	.uahalf	0x6
	.byte	0x3
	.uaword	st_AswLdcDiagFlag
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x5
	.byte	0x3
	.uaword	u8s_LdcDeratingState
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x5
	.byte	0x3
	.uaword	u8s_LdcDeratingState
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x5
	.byte	0x3
	.uaword	u8s_LdcDeratingState
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x5
	.byte	0x3
	.uaword	u8s_LdcDeratingState
	.uaword	.LVL49
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL30
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43570000
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43570000
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL30
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43570000
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43570000
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	0
	.uaword	0
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	0
	.uaword	0
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	0
	.uaword	0
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	0
	.uaword	0
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"u8_cmdTargetVolt"
.LASF3:
	.string	"u8_cmdTargetCur"
.LASF1:
	.string	"u8_cmdLdcEnable"
.LASF0:
	.string	"st_CANValue"
	.extern	st_rteLdcIn,STT_OBJECT,36
	.extern	Asw_GET_Ldc_Mode,STT_FUNC,0
	.extern	Asw_Ldc_SoftStart,STT_FUNC,0
	.extern	Asw_Ldc_AdcInit,STT_FUNC,0
	.extern	Asw_Ldc_PiCofficient,STT_FUNC,0
	.extern	Asw_Ldc_PiInit,STT_FUNC,0
	.extern	st_rteLdcOut,STT_OBJECT,12
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
