	.file	"ASW_LdcDiagAdc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Ldc_AdcInit,"ax",@progbits
	.align 1
	.global	Asw_Ldc_AdcInit
	.type	Asw_Ldc_AdcInit, @function
Asw_Ldc_AdcInit:
.LFB181:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.c"
	.loc 1 95 0
	.loc 1 96 0
	movh.a	%a2, hi:st_VinLimit
	movh	%d15, 17292
	lea	%a15, [%a2] lo:st_VinLimit
	st.w	[%a2] lo:st_VinLimit, %d15
	.loc 1 97 0
	movh	%d15, 17362
	st.w	[%a15] 4, %d15
	.loc 1 98 0
	movh	%d15, 17297
	st.w	[%a15] 8, %d15
	.loc 1 99 0
	movh	%d15, 17360
	addi	%d15, %d15, -32768
	st.w	[%a15] 12, %d15
	.loc 1 101 0
	movh.a	%a2, hi:st_IinLimit
	mov	%d15, 0
	lea	%a15, [%a2] lo:st_IinLimit
	st.w	[%a2] lo:st_IinLimit, %d15
	.loc 1 102 0
	movh	%d2, 16720
	.loc 1 106 0
	movh.a	%a2, hi:st_VoutLimit
	.loc 1 104 0
	movh	%d5, 16256
	.loc 1 102 0
	st.w	[%a15] 4, %d2
	.loc 1 103 0
	st.w	[%a15] 8, %d15
	.loc 1 104 0
	st.w	[%a15] 12, %d5
	.loc 1 106 0
	movh	%d3, 16656
	lea	%a15, [%a2] lo:st_VoutLimit
	.loc 1 107 0
	movh	%d2, 16768
	st.w	[%a15] 4, %d2
	.loc 1 109 0
	movh	%d4, 16752
	.loc 1 108 0
	movh	%d2, 16672
	.loc 1 106 0
	st.w	[%a2] lo:st_VoutLimit, %d3
	.loc 1 111 0
	movh.a	%a2, hi:st_IoutLimit
	.loc 1 108 0
	st.w	[%a15] 8, %d2
	.loc 1 109 0
	st.w	[%a15] 12, %d4
	.loc 1 111 0
	st.w	[%a2] lo:st_IoutLimit, %d15
	lea	%a15, [%a2] lo:st_IoutLimit
	.loc 1 112 0
	movh	%d6, 17244
	.loc 1 116 0
	movh.a	%a2, hi:st_TempLimit
	.loc 1 113 0
	st.w	[%a15] 8, %d15
	.loc 1 112 0
	st.w	[%a15] 4, %d6
	.loc 1 114 0
	st.w	[%a15] 12, %d5
	.loc 1 117 0
	movh	%d15, 17146
	.loc 1 116 0
	lea	%a15, [%a2] lo:st_TempLimit
	.loc 1 117 0
	st.w	[%a15] 4, %d15
	.loc 1 119 0
	movh	%d15, 17136
	st.w	[%a15] 12, %d15
	.loc 1 116 0
	st.w	[%a2] lo:st_TempLimit, %d2
	.loc 1 120 0
	movh	%d15, 17179
	.loc 1 122 0
	movh.a	%a2, hi:st_BattVoltLimit
	.loc 1 118 0
	st.w	[%a15] 8, %d4
	.loc 1 120 0
	st.w	[%a15] 20, %d15
	.loc 1 122 0
	lea	%a15, [%a2] lo:st_BattVoltLimit
	.loc 1 123 0
	movh	%d15, 16780
	st.w	[%a15] 4, %d15
	.loc 1 125 0
	movh	%d15, 16772
	.loc 1 122 0
	st.w	[%a2] lo:st_BattVoltLimit, %d3
	.loc 1 124 0
	st.w	[%a15] 8, %d2
	.loc 1 125 0
	st.w	[%a15] 12, %d15
	ret
.LFE181:
	.size	Asw_Ldc_AdcInit, .-Asw_Ldc_AdcInit
.section .text.Asw_Adc_NormalMode,"ax",@progbits
	.align 1
	.global	Asw_Adc_NormalMode
	.type	Asw_Adc_NormalMode, @function
Asw_Adc_NormalMode:
.LFB183:
	.loc 1 162 0
.LVL0:
	.loc 1 165 0
	ld.w	%d2, [%a4]0
	cmp.f	%d15, %d2, %d4
	extr.u	%d15, %d15, 2, 1
	jz	%d15, .L14
	.loc 1 167 0
	mov	%d15, 0
	st.h	[%a4] 28, %d15
	.loc 1 169 0
	ld.hu	%d15, [%a4] 26
	.loc 1 176 0
	mov	%d2, 1
	.loc 1 169 0
	ge.u	%d3, %d15, 500
	jnz	%d3, .L5
	.loc 1 171 0
	add	%d15, 1
	st.h	[%a4] 26, %d15
	.loc 1 172 0
	mov	%d2, 0
	ret
.L14:
	.loc 1 179 0
	cmp.f	%d2, %d2, %d4
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L6
	.loc 1 179 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a4] 4
	cmp.f	%d4, %d4, %d2
.LVL1:
	or.t	%d4, %d4,0, %d4,1
	jnz	%d4, .L16
.L6:
.LVL2:
.LBB14:
.LBB15:
	.loc 1 187 0 is_stmt 1
	mov	%d15, 0
	st.h	[%a4] 26, %d15
	.loc 1 189 0
	ld.hu	%d15, [%a4] 28
	.loc 1 196 0
	mov	%d2, 2
	.loc 1 189 0
	ge.u	%d3, %d15, 500
	jnz	%d3, .L5
	.loc 1 191 0
	add	%d15, 1
	st.h	[%a4] 28, %d15
.LVL3:
	.loc 1 192 0
	mov	%d2, 0
.LVL4:
.L5:
.LBE15:
.LBE14:
	.loc 1 201 0
	ret
.LVL5:
.L16:
	.loc 1 182 0
	st.h	[%a4] 26, %d15
	.loc 1 183 0
	st.h	[%a4] 28, %d15
	.loc 1 181 0
	mov	%d2, 0
	.loc 1 183 0
	ret
.LFE183:
	.size	Asw_Adc_NormalMode, .-Asw_Adc_NormalMode
.section .text.Asw_Adc_UnderMode,"ax",@progbits
	.align 1
	.global	Asw_Adc_UnderMode
	.type	Asw_Adc_UnderMode, @function
Asw_Adc_UnderMode:
.LFB184:
	.loc 1 211 0
.LVL6:
	.loc 1 214 0
	ld.w	%d2, [%a4] 8
	cmp.f	%d15, %d2, %d4
	extr.u	%d15, %d15, 2, 1
	jnz	%d15, .L29
	.loc 1 219 0
	cmp.f	%d2, %d2, %d4
	or.t	%d2, %d2,0, %d2,1
	jz	%d2, .L21
	.loc 1 219 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a4] 12
	cmp.f	%d4, %d4, %d2
.LVL7:
	or.t	%d4, %d4,0, %d4,1
	jnz	%d4, .L30
.L21:
.LVL8:
.LBB18:
.LBB19:
	.loc 1 227 0 is_stmt 1
	mov	%d15, 0
	st.h	[%a4] 26, %d15
	.loc 1 229 0
	ld.hu	%d15, [%a4] 28
	.loc 1 236 0
	mov	%d2, 2
	.loc 1 229 0
	ge.u	%d3, %d15, 500
	jz	%d3, .L31
.LVL9:
.LBE19:
.LBE18:
	.loc 1 241 0
	ret
.LVL10:
.L29:
	.loc 1 216 0
	mov	%d15, 0
	st.h	[%a4] 28, %d15
.LVL11:
	.loc 1 217 0
	mov	%d2, 1
	ret
.LVL12:
.L31:
.LBB21:
.LBB20:
	.loc 1 231 0
	add	%d15, 1
	st.h	[%a4] 28, %d15
.LVL13:
	.loc 1 232 0
	mov	%d2, 1
.LVL14:
.LBE20:
.LBE21:
	.loc 1 241 0
	ret
.LVL15:
.L30:
	.loc 1 222 0
	st.h	[%a4] 26, %d15
	.loc 1 223 0
	st.h	[%a4] 28, %d15
	.loc 1 221 0
	mov	%d2, 0
	.loc 1 223 0
	ret
.LFE184:
	.size	Asw_Adc_UnderMode, .-Asw_Adc_UnderMode
.section .text.Asw_Adc_OverMode,"ax",@progbits
	.align 1
	.global	Asw_Adc_OverMode
	.type	Asw_Adc_OverMode, @function
Asw_Adc_OverMode:
.LFB185:
	.loc 1 251 0
.LVL16:
	.loc 1 254 0
	ld.w	%d3, [%a4] 12
	cmp.f	%d15, %d3, %d4
	extr.u	%d15, %d15, 0, 1
	jz	%d15, .L43
	.loc 1 256 0
	mov	%d15, 0
	st.h	[%a4] 26, %d15
.LVL17:
	.loc 1 257 0
	mov	%d2, 2
	ret
.LVL18:
.L43:
	.loc 1 259 0
	ld.w	%d2, [%a4] 8
	cmp.f	%d2, %d4, %d2
	or.t	%d2, %d2,2, %d2,1
	jz	%d2, .L36
	.loc 1 259 0 is_stmt 0 discriminator 1
	cmp.f	%d4, %d3, %d4
.LVL19:
	or.t	%d4, %d4,2, %d4,1
	jz	%d4, .L36
	.loc 1 262 0 is_stmt 1
	st.h	[%a4] 26, %d15
	.loc 1 263 0
	st.h	[%a4] 28, %d15
	.loc 1 261 0
	mov	%d2, 0
	.loc 1 263 0
	ret
.L36:
.LVL20:
.LBB24:
.LBB25:
	.loc 1 267 0
	mov	%d15, 0
	st.h	[%a4] 28, %d15
	.loc 1 269 0
	ld.hu	%d15, [%a4] 26
	.loc 1 276 0
	mov	%d2, 1
	.loc 1 269 0
	ge.u	%d3, %d15, 500
	jnz	%d3, .L35
	.loc 1 271 0
	add	%d15, 1
	st.h	[%a4] 26, %d15
.LVL21:
	.loc 1 272 0
	mov	%d2, 2
.LVL22:
.L35:
.LBE25:
.LBE24:
	.loc 1 281 0
	ret
.LFE185:
	.size	Asw_Adc_OverMode, .-Asw_Adc_OverMode
.section .text.Asw_Ldc_DiagAdcValues,"ax",@progbits
	.align 1
	.global	Asw_Ldc_DiagAdcValues
	.type	Asw_Ldc_DiagAdcValues, @function
Asw_Ldc_DiagAdcValues:
.LFB182:
	.loc 1 136 0
.LVL23:
.LBB30:
.LBB31:
	.loc 1 412 0
	ld.bu	%d15, [%a4] 2
.LBE31:
.LBE30:
	.loc 1 136 0
	mov.aa	%a15, %a4
.LVL24:
	mov.aa	%a12, %a5
	.loc 1 144 0
	ld.w	%d4, [%a5] 4
.LVL25:
.LBB35:
.LBB32:
	.loc 1 412 0
	jeq	%d15, 1, .L46
	jz	%d15, .L47
	jeq	%d15, 2, .L48
	.loc 1 424 0
	mov	%d2, 0
.LVL26:
.L45:
.LBE32:
.LBE35:
	.loc 1 147 0
	ld.w	%d4, [%a12] 8
.LBB36:
.LBB37:
	.loc 1 513 0
	movh.a	%a12, hi:u8_OverCnt.4691
.LVL27:
.LBE37:
.LBE36:
	.loc 1 145 0
	mov	%d15, 0
.LVL28:
.LBB44:
.LBB38:
	.loc 1 513 0
	ld.bu	%d8, [%a12] lo:u8_OverCnt.4691
.LBE38:
.LBE44:
	.loc 1 144 0
	st.b	[%a15] 2, %d2
.LVL29:
	.loc 1 145 0
	st.b	[%a15] 3, %d15
.LVL30:
	.loc 1 146 0
	st.b	[%a15] 4, %d15
.LVL31:
.LBB45:
.LBB39:
	.loc 1 536 0
	mov	%d2, 2
.LVL32:
.LBE39:
.LBE45:
	.loc 1 147 0
	ld.bu	%d15, [%a15] 5
.LVL33:
.LBB46:
.LBB40:
	.loc 1 513 0
	jlt.u	%d8, 3, .L59
.LVL34:
.L49:
.LBE40:
.LBE46:
	.loc 1 148 0
	mov	%d15, 0
	.loc 1 147 0
	st.b	[%a15] 5, %d2
.LVL35:
	.loc 1 148 0
	st.b	[%a15] 1, %d15
.LVL36:
	.loc 1 149 0
	st.b	[%a15]0, %d15
.LVL37:
	.loc 1 151 0
	mov	%d4, 5
	call	Bsw_Get_GpioRead
.LVL38:
	st.b	[%a15] 6, %d15
	ret
.LVL39:
.L48:
.LBB47:
.LBB33:
	.loc 1 421 0
	movh.a	%a4, hi:st_VinLimit
.LVL40:
	lea	%a4, [%a4] lo:st_VinLimit
	call	Asw_Adc_OverMode
.LVL41:
	j	.L45
.LVL42:
.L59:
.LBE33:
.LBE47:
.LBB48:
.LBB41:
	.loc 1 515 0
	jz	%d15, .L50
	jne	%d15, 2, .L60
	.loc 1 522 0
	movh.a	%a4, hi:st_IoutLimit
	lea	%a4, [%a4] lo:st_IoutLimit
	call	Asw_Adc_OverMode
.LVL43:
	.loc 1 523 0
	movh.a	%a2, hi:u8_Flag.4692
	ld.bu	%d15, [%a2] lo:u8_Flag.4692
.LVL44:
	jnz	%d15, .L49
	.loc 1 525 0
	add	%d8, 1
	.loc 1 526 0
	mov	%d15, 1
	.loc 1 525 0
	st.b	[%a12] lo:u8_OverCnt.4691, %d8
	.loc 1 526 0
	st.b	[%a2] lo:u8_Flag.4692, %d15
	j	.L49
.LVL45:
.L47:
.LBE41:
.LBE48:
.LBB49:
.LBB34:
	.loc 1 415 0
	movh.a	%a4, hi:st_VinLimit
.LVL46:
	lea	%a4, [%a4] lo:st_VinLimit
	call	Asw_Adc_NormalMode
.LVL47:
	j	.L45
.LVL48:
.L46:
	.loc 1 418 0
	movh.a	%a4, hi:st_VinLimit
.LVL49:
	lea	%a4, [%a4] lo:st_VinLimit
	call	Asw_Adc_UnderMode
.LVL50:
	j	.L45
.LVL51:
.L60:
.LBE34:
.LBE49:
	.loc 1 148 0
	mov	%d15, 0
.LBB50:
.LBB42:
	.loc 1 530 0
	mov	%d2, 0
.LVL52:
.LBE42:
.LBE50:
	.loc 1 147 0
	st.b	[%a15] 5, %d2
.LVL53:
	.loc 1 148 0
	st.b	[%a15] 1, %d15
.LVL54:
	.loc 1 149 0
	st.b	[%a15]0, %d15
.LVL55:
	.loc 1 151 0
	mov	%d4, 5
.LVL56:
	call	Bsw_Get_GpioRead
.LVL57:
	st.b	[%a15] 6, %d15
	ret
.LVL58:
.L50:
.LBB51:
.LBB43:
	.loc 1 518 0
	movh.a	%a4, hi:st_IoutLimit
	lea	%a4, [%a4] lo:st_IoutLimit
	call	Asw_Adc_NormalMode
.LVL59:
	.loc 1 519 0
	movh.a	%a2, hi:u8_Flag.4692
	st.b	[%a2] lo:u8_Flag.4692, %d15
.LBE43:
.LBE51:
	.loc 1 148 0
	mov	%d15, 0
.LVL60:
	.loc 1 147 0
	st.b	[%a15] 5, %d2
.LVL61:
	.loc 1 148 0
	st.b	[%a15] 1, %d15
.LVL62:
	.loc 1 149 0
	st.b	[%a15]0, %d15
.LVL63:
	.loc 1 151 0
	mov	%d4, 5
	call	Bsw_Get_GpioRead
.LVL64:
	st.b	[%a15] 6, %d15
	ret
.LFE182:
	.size	Asw_Ldc_DiagAdcValues, .-Asw_Ldc_DiagAdcValues
.section .text.Asw_Adc_TempNormalMode,"ax",@progbits
	.align 1
	.global	Asw_Adc_TempNormalMode
	.type	Asw_Adc_TempNormalMode, @function
Asw_Adc_TempNormalMode:
.LFB186:
	.loc 1 291 0
.LVL65:
	.loc 1 294 0
	ld.w	%d3, [%a4]0
	cmp.f	%d15, %d3, %d4
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L62
	.loc 1 294 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a4] 4
	cmp.f	%d2, %d4, %d2
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L79
.L62:
	.loc 1 301 0 is_stmt 1
	cmp.f	%d15, %d3, %d4
	extr.u	%d15, %d15, 2, 1
	jz	%d15, .L77
	.loc 1 303 0
	mov	%d15, 0
	st.h	[%a4] 28, %d15
	.loc 1 304 0
	st.h	[%a4] 24, %d15
	.loc 1 306 0
	ld.hu	%d15, [%a4] 26
	.loc 1 312 0
	mov	%d2, 1
	.loc 1 306 0
	ge.u	%d3, %d15, 500
	jnz	%d3, .L65
	.loc 1 308 0
	add	%d15, 1
	st.h	[%a4] 26, %d15
	.loc 1 292 0
	mov	%d2, 0
	ret
.L77:
	.loc 1 315 0
	ld.w	%d2, [%a4] 20
	cmp.f	%d4, %d4, %d2
.LVL66:
	extr.u	%d4, %d4, 2, 1
	jz	%d4, .L78
	.loc 1 317 0
	st.h	[%a4] 26, %d15
	.loc 1 318 0
	st.h	[%a4] 24, %d15
	.loc 1 320 0
	ld.hu	%d15, [%a4] 28
	.loc 1 326 0
	mov	%d2, 2
	.loc 1 320 0
	ge.u	%d3, %d15, 500
	jz	%d3, .L80
.L65:
.LVL67:
	.loc 1 343 0
	ret
.LVL68:
.L78:
	.loc 1 333 0
	ld.hu	%d15, [%a4] 24
	.loc 1 331 0
	st.h	[%a4] 26, %d4
	.loc 1 332 0
	st.h	[%a4] 28, %d4
	.loc 1 333 0
	ge.u	%d3, %d15, 500
	.loc 1 339 0
	mov	%d2, 3
	.loc 1 333 0
	jnz	%d3, .L65
	.loc 1 335 0
	add	%d15, 1
	st.h	[%a4] 24, %d15
	.loc 1 292 0
	mov	%d2, 0
.LVL69:
	.loc 1 343 0
	ret
.LVL70:
.L79:
	.loc 1 297 0
	mov	%d15, 0
	st.h	[%a4] 26, %d15
	.loc 1 298 0
	st.h	[%a4] 28, %d15
	.loc 1 299 0
	st.h	[%a4] 24, %d15
	.loc 1 296 0
	mov	%d2, 0
	.loc 1 299 0
	ret
.LVL71:
.L80:
	.loc 1 322 0
	add	%d15, 1
	st.h	[%a4] 28, %d15
	.loc 1 292 0
	mov	%d2, 0
	ret
.LFE186:
	.size	Asw_Adc_TempNormalMode, .-Asw_Adc_TempNormalMode
.section .text.Asw_Adc_TempFaultMode,"ax",@progbits
	.align 1
	.global	Asw_Adc_TempFaultMode
	.type	Asw_Adc_TempFaultMode, @function
Asw_Adc_TempFaultMode:
.LFB187:
	.loc 1 353 0
.LVL72:
	.loc 1 356 0
	ld.w	%d2, [%a4] 8
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L82
	.loc 1 356 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a4] 12
	cmp.f	%d15, %d4, %d15
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L94
.L82:
	.loc 1 363 0 is_stmt 1
	cmp.f	%d4, %d2, %d4
.LVL73:
	extr.u	%d4, %d4, 2, 1
	jz	%d4, .L93
	.loc 1 365 0
	mov	%d15, 0
	st.h	[%a4] 28, %d15
	.loc 1 366 0
	st.h	[%a4] 24, %d15
	.loc 1 368 0
	ld.hu	%d15, [%a4] 26
	.loc 1 374 0
	mov	%d2, 1
	.loc 1 368 0
	ge.u	%d3, %d15, 500
	jnz	%d3, .L85
	.loc 1 370 0
	add	%d15, 1
	st.h	[%a4] 26, %d15
	.loc 1 354 0
	mov	%d2, 0
	ret
.L93:
	.loc 1 382 0
	ld.hu	%d15, [%a4] 28
	.loc 1 379 0
	st.h	[%a4] 26, %d4
	.loc 1 380 0
	st.h	[%a4] 24, %d4
	.loc 1 382 0
	ge.u	%d3, %d15, 500
	.loc 1 388 0
	mov	%d2, 2
	.loc 1 382 0
	jz	%d3, .L95
.L85:
.LVL74:
	.loc 1 392 0
	ret
.LVL75:
.L94:
	.loc 1 359 0
	mov	%d15, 0
	st.h	[%a4] 26, %d15
	.loc 1 360 0
	st.h	[%a4] 28, %d15
	.loc 1 361 0
	st.h	[%a4] 24, %d15
	.loc 1 358 0
	mov	%d2, 0
	.loc 1 361 0
	ret
.LVL76:
.L95:
	.loc 1 384 0
	add	%d15, 1
	st.h	[%a4] 28, %d15
	.loc 1 354 0
	mov	%d2, 0
.LVL77:
	.loc 1 392 0
	ret
.LFE187:
	.size	Asw_Adc_TempFaultMode, .-Asw_Adc_TempFaultMode
.section .bss.u8_Flag.4692,"aw",@nobits
	.type	u8_Flag.4692, @object
	.size	u8_Flag.4692, 1
u8_Flag.4692:
	.zero	1
.section .bss.u8_OverCnt.4691,"aw",@nobits
	.type	u8_OverCnt.4691, @object
	.size	u8_OverCnt.4691, 1
u8_OverCnt.4691:
	.zero	1
.section .bss.st_BattVoltLimit,"aw",@nobits
	.align 2
	.type	st_BattVoltLimit, @object
	.size	st_BattVoltLimit, 32
st_BattVoltLimit:
	.zero	32
.section .bss.st_TempLimit,"aw",@nobits
	.align 2
	.type	st_TempLimit, @object
	.size	st_TempLimit, 32
st_TempLimit:
	.zero	32
.section .bss.st_IoutLimit,"aw",@nobits
	.align 2
	.type	st_IoutLimit, @object
	.size	st_IoutLimit, 32
st_IoutLimit:
	.zero	32
.section .bss.st_VoutLimit,"aw",@nobits
	.align 2
	.type	st_VoutLimit, @object
	.size	st_VoutLimit, 32
st_VoutLimit:
	.zero	32
.section .bss.st_IinLimit,"aw",@nobits
	.align 2
	.type	st_IinLimit, @object
	.size	st_IinLimit, 32
st_IinLimit:
	.zero	32
.section .bss.st_VinLimit,"aw",@nobits
	.align 2
	.type	st_VinLimit, @object
	.size	st_VinLimit, 32
st_VinLimit:
	.zero	32
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
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Gpio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf00
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDiagAdc.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x80
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
	.uaword	0x171
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x19d
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
	.uaword	0x168
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x182
	.uleb128 0x3
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x18f
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x21b
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3b
	.uaword	0x2bf
	.uleb128 0x5
	.string	"NOR_LOWER"
	.sleb128 0
	.uleb128 0x5
	.string	"NOR_UPPER"
	.sleb128 1
	.uleb128 0x5
	.string	"NOR_RECOVER_LOWER"
	.sleb128 2
	.uleb128 0x5
	.string	"NOR_RECOVER_UPPER"
	.sleb128 3
	.uleb128 0x5
	.string	"FAULT_LOWER"
	.sleb128 4
	.uleb128 0x5
	.string	"FAULT_UPPER"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x311
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
	.uaword	0x2bf
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x3c7
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x4
	.byte	0x60
	.uaword	0x311
	.byte	0
	.uleb128 0x8
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x311
	.byte	0x1
	.uleb128 0x8
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x311
	.byte	0x2
	.uleb128 0x8
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x311
	.byte	0x3
	.uleb128 0x8
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x311
	.byte	0x4
	.uleb128 0x8
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x311
	.byte	0x5
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x4
	.byte	0x66
	.uaword	0x311
	.byte	0x6
	.uleb128 0x8
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x311
	.byte	0x7
	.uleb128 0x8
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x311
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x325
	.uleb128 0x6
	.byte	0x20
	.byte	0x4
	.byte	0x6c
	.uaword	0x45d
	.uleb128 0x8
	.string	"f32_limit"
	.byte	0x4
	.byte	0x6e
	.uaword	0x45d
	.byte	0
	.uleb128 0x8
	.string	"u16_DeratingCnt"
	.byte	0x4
	.byte	0x6f
	.uaword	0x240
	.byte	0x18
	.uleb128 0x8
	.string	"u16_FaultUnderCnt"
	.byte	0x4
	.byte	0x70
	.uaword	0x240
	.byte	0x1a
	.uleb128 0x8
	.string	"u16_FaultOvertCnt"
	.byte	0x4
	.byte	0x71
	.uaword	0x240
	.byte	0x1c
	.uleb128 0x8
	.string	"u8_SensorState"
	.byte	0x4
	.byte	0x72
	.uaword	0x311
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.uaword	0x24c
	.uaword	0x46d
	.uleb128 0xa
	.uaword	0x46d
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"st_AdcLimitValue"
	.byte	0x4
	.byte	0x73
	.uaword	0x3df
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x533
	.uleb128 0x8
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x24c
	.byte	0
	.uleb128 0x8
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x24c
	.byte	0x4
	.uleb128 0x8
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x24c
	.byte	0x8
	.uleb128 0x8
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x24c
	.byte	0xc
	.uleb128 0x8
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x24c
	.byte	0x10
	.uleb128 0x8
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x24c
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x491
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x39
	.uaword	0x65f
	.uleb128 0x5
	.string	"PFC_ERROR_IN"
	.sleb128 0
	.uleb128 0x5
	.string	"TEST_PIN_OUT"
	.sleb128 1
	.uleb128 0x5
	.string	"TEST_PIN1"
	.sleb128 2
	.uleb128 0x5
	.string	"AC_CONNECTOR_INTERLOCK_IN"
	.sleb128 3
	.uleb128 0x5
	.string	"OBC_OUTPUT_INTERLOCK_IN"
	.sleb128 4
	.uleb128 0x5
	.string	"LDC_OVER_CURRENT_IN"
	.sleb128 5
	.uleb128 0x5
	.string	"OBC_ENABLE_IN"
	.sleb128 6
	.uleb128 0x5
	.string	"RELAY_OUT"
	.sleb128 7
	.uleb128 0x5
	.string	"PFC_ENABLE_OUT"
	.sleb128 8
	.uleb128 0x5
	.string	"S2_ERROR_OUT"
	.sleb128 9
	.uleb128 0x5
	.string	"S2_SWITCH_OUT"
	.sleb128 10
	.uleb128 0x5
	.string	"OBC_DISCHARGE_OUT"
	.sleb128 11
	.uleb128 0x5
	.string	"OBC_AUX_ENABLE_OUT"
	.sleb128 12
	.byte	0
	.uleb128 0x3
	.string	"en_GPIOTYPE"
	.byte	0x5
	.byte	0x49
	.uaword	0x56b
	.uleb128 0xb
	.string	"DiagAdc_LdcInputI"
	.byte	0x1
	.uahalf	0x1b9
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x6d5
	.uleb128 0xc
	.string	"u8_HV_I"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x6d5
	.uleb128 0xc
	.string	"f32_adcRealinputI"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x311
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x479
	.uleb128 0xb
	.string	"DiagAdc_LdcOutputV"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x740
	.uleb128 0xc
	.string	"u8_LV_V"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x6d5
	.uleb128 0xc
	.string	"f32_adcRealOutputV"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x311
	.byte	0
	.uleb128 0xb
	.string	"DiagAdc_LdcTemp"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x793
	.uleb128 0xc
	.string	"u8_Temp"
	.byte	0x1
	.uahalf	0x228
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x228
	.uaword	0x6d5
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x228
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x311
	.byte	0
	.uleb128 0xb
	.string	"DiagAdc_Ldc14VBat"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x7f1
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x244
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x244
	.uaword	0x6d5
	.uleb128 0xc
	.string	"f32_adcReal14Bat"
	.byte	0x1
	.uahalf	0x244
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x246
	.uaword	0x311
	.byte	0
	.uleb128 0xb
	.string	"DiagAdc_OutputI_Over"
	.byte	0x1
	.uahalf	0x266
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x84a
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x266
	.uaword	0x311
	.uleb128 0xc
	.string	"u8_overcurrent_state"
	.byte	0x1
	.uahalf	0x266
	.uaword	0x234
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x268
	.uaword	0x311
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Asw_Adc_NormalMode"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x88d
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0xa1
	.uaword	0x6d5
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa1
	.uaword	0x24c
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa3
	.uaword	0x311
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Asw_Adc_UnderMode"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x8cf
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0xd2
	.uaword	0x6d5
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0xd2
	.uaword	0x24c
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd4
	.uaword	0x311
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Asw_Adc_OverMode"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x910
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0xfa
	.uaword	0x6d5
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfa
	.uaword	0x24c
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfc
	.uaword	0x311
	.byte	0
	.uleb128 0xb
	.string	"DiagAdc_LdcOutputI"
	.byte	0x1
	.uahalf	0x1fa
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x998
	.uleb128 0xc
	.string	"u8_LV_I"
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x6d5
	.uleb128 0xc
	.string	"f32_adcRealOutputI"
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x311
	.uleb128 0x13
	.string	"u8_OverCnt"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x234
	.uleb128 0x13
	.string	"u8_Flag"
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0x234
	.byte	0
	.uleb128 0xb
	.string	"DiagAdc_LdcInputV"
	.byte	0x1
	.uahalf	0x197
	.byte	0x1
	.uaword	0x311
	.byte	0x1
	.uaword	0x9fb
	.uleb128 0xc
	.string	"u8_HV_V"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x311
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x197
	.uaword	0x6d5
	.uleb128 0xc
	.string	"f32_adcRealInputV"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x24c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x199
	.uaword	0x311
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Asw_Ldc_AdcInit"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB181
	.uaword	.LFE181
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.uaword	0x84a
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa78
	.uleb128 0x16
	.uaword	0x86b
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.uaword	0x876
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	0x881
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LBB14
	.uaword	.LBE14
	.uleb128 0x17
	.uaword	0x876
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	0x86b
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x18
	.uaword	0x881
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x88d
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xacd
	.uleb128 0x16
	.uaword	0x8ad
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.uaword	0x8b8
	.uaword	.LLST5
	.uleb128 0x18
	.uaword	0x8c3
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0x8b8
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	0x8ad
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	0x8c3
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x8cf
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb2c
	.uleb128 0x16
	.uaword	0x8ee
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.uaword	0x8f9
	.uaword	.LLST10
	.uleb128 0x18
	.uaword	0x904
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x16
	.uaword	0x8f9
	.byte	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uleb128 0x16
	.uaword	0x8ee
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x18
	.uaword	0x904
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Asw_Ldc_DiagAdcValues"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	.LFB182
	.uaword	.LFE182
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd76
	.uleb128 0x1c
	.string	"stp_DiagFlags"
	.byte	0x1
	.byte	0x87
	.uaword	0xd76
	.uaword	.LLST13
	.uleb128 0x1c
	.string	"stp_adcValues"
	.byte	0x1
	.byte	0x87
	.uaword	0xd7c
	.uaword	.LLST14
	.uleb128 0x1d
	.string	"stp_AdcVinLimit"
	.byte	0x1
	.byte	0x89
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_VinLimit
	.byte	0x9f
	.uleb128 0x1d
	.string	"stp_AdcIinLimit"
	.byte	0x1
	.byte	0x8a
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_IinLimit
	.byte	0x9f
	.uleb128 0x1d
	.string	"stp_AdcVoutLimit"
	.byte	0x1
	.byte	0x8b
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_VoutLimit
	.byte	0x9f
	.uleb128 0x1d
	.string	"stp_AdcIoutLimit"
	.byte	0x1
	.byte	0x8c
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0x9f
	.uleb128 0x1d
	.string	"stp_AdcTempLimit"
	.byte	0x1
	.byte	0x8d
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_TempLimit
	.byte	0x9f
	.uleb128 0x1d
	.string	"stp_AdcBattLimit"
	.byte	0x1
	.byte	0x8e
	.uaword	0x6d5
	.byte	0x6
	.byte	0x3
	.uaword	st_BattVoltLimit
	.byte	0x9f
	.uleb128 0x1e
	.uaword	0x998
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x90
	.uaword	0xcc2
	.uleb128 0x16
	.uaword	0x9c8
	.byte	0x6
	.byte	0x3
	.uaword	st_VinLimit
	.byte	0x9f
	.uleb128 0x17
	.uaword	0x9d4
	.uaword	.LLST15
	.uleb128 0x17
	.uaword	0x9b8
	.uaword	.LLST16
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.uaword	0x9ee
	.uaword	.LLST17
	.uleb128 0x1f
	.uaword	.LVL41
	.uaword	0x8cf
	.uaword	0xc96
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_VinLimit
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL47
	.uaword	0x84a
	.uaword	0xcad
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_VinLimit
	.byte	0
	.uleb128 0x21
	.uaword	.LVL50
	.uaword	0x88d
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_VinLimit
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x910
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x93
	.uaword	0xd40
	.uleb128 0x17
	.uaword	0x941
	.uaword	.LLST18
	.uleb128 0x17
	.uaword	0x94d
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	0x931
	.uaword	.LLST20
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x18
	.uaword	0x968
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	0x974
	.byte	0x5
	.byte	0x3
	.uaword	u8_OverCnt.4691
	.uleb128 0x22
	.uaword	0x987
	.byte	0x5
	.byte	0x3
	.uaword	u8_Flag.4692
	.uleb128 0x1f
	.uaword	.LVL43
	.uaword	0x8cf
	.uaword	0xd2b
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0
	.uleb128 0x21
	.uaword	.LVL59
	.uaword	0x84a
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL38
	.uaword	0xee2
	.uaword	0xd53
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL57
	.uaword	0xee2
	.uaword	0xd66
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.uaword	.LVL64
	.uaword	0xee2
	.uleb128 0x20
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x3c7
	.uleb128 0xf
	.byte	0x4
	.uaword	0xd82
	.uleb128 0x23
	.uaword	0x533
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Adc_TempNormalMode"
	.byte	0x1
	.uahalf	0x122
	.byte	0x1
	.uaword	0x311
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xde6
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x122
	.uaword	0x6d5
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x122
	.uaword	0x24c
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x124
	.uaword	0x311
	.uaword	.LLST23
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Asw_Adc_TempFaultMode"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	0x311
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe44
	.uleb128 0x25
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x160
	.uaword	0x6d5
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x160
	.uaword	0x24c
	.uaword	.LLST24
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x162
	.uaword	0x311
	.uaword	.LLST25
	.byte	0
	.uleb128 0x1d
	.string	"st_VinLimit"
	.byte	0x1
	.byte	0x4b
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_VinLimit
	.uleb128 0x1d
	.string	"st_IinLimit"
	.byte	0x1
	.byte	0x4c
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_IinLimit
	.uleb128 0x1d
	.string	"st_VoutLimit"
	.byte	0x1
	.byte	0x4d
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_VoutLimit
	.uleb128 0x1d
	.string	"st_IoutLimit"
	.byte	0x1
	.byte	0x4e
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_IoutLimit
	.uleb128 0x1d
	.string	"st_TempLimit"
	.byte	0x1
	.byte	0x4f
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_TempLimit
	.uleb128 0x1d
	.string	"st_BattVoltLimit"
	.byte	0x1
	.byte	0x50
	.uaword	0x479
	.byte	0x5
	.byte	0x3
	.uaword	st_BattVoltLimit
	.uleb128 0x28
	.byte	0x1
	.string	"Bsw_Get_GpioRead"
	.byte	0x5
	.byte	0x64
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uleb128 0x29
	.uaword	0x65f
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE183
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LFE183
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LFE184
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LFE184
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE185
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49
	.uaword	.LFE182
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL27
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL41-1
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL47-1
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL51
	.uaword	.LFE182
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL41-1
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL47-1
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL33
	.uaword	.LVL39
	.uahalf	0x6
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL45
	.uahalf	0x6
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE182
	.uahalf	0x6
	.byte	0x3
	.uaword	st_IoutLimit
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL43-1
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL59-1
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57-1
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LFE186
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL70
	.uaword	.LFE186
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LFE187
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LFB181
	.uaword	.LFE181
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB182
	.uaword	.LFE182
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	.LFB187
	.uaword	.LFE187
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"u8_LV_I_over"
.LASF6:
	.string	"f32_adcRealValue"
.LASF5:
	.string	"stp_Limit"
.LASF0:
	.string	"u8_14VBat"
.LASF4:
	.string	"f32_adcRealTemp"
.LASF3:
	.string	"u8_rtn"
.LASF2:
	.string	"stp_AdcLimit"
	.extern	Bsw_Get_GpioRead,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
