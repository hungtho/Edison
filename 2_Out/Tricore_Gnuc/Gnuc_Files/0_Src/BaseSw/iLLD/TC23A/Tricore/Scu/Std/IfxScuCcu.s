	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxScuCcu_getOscFrequency.part.0,"ax",@progbits
	.align 1
	.type	IfxScuCcu_getOscFrequency.part.0, @function
IfxScuCcu_getOscFrequency.part.0:
.LFB245:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.c"
	.loc 1 417 0
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 432 0
	mov	%d2, 0
	.loc 1 425 0
	extr.u	%d15, %d15, 28, 2
	jeq	%d15, 1, .L5
.LVL0:
	.loc 1 436 0
	ret
.LVL1:
.L5:
	.loc 1 427 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL2:
	.loc 1 436 0
	ret
.LFE245:
	.size	IfxScuCcu_getOscFrequency.part.0, .-IfxScuCcu_getOscFrequency.part.0
.section .text.IfxScuCcu_calculateSysPllDividers,"ax",@progbits
	.align 1
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB216:
	.loc 1 114 0
.LVL3:
.LBB26:
	.loc 1 153 0
	movh	%d3, 3662
	addi	%d3, %d3, 7169
	lt.u	%d14, %d4, %d3
	mov	%d15, 2
	sel	%d14, %d14, %d15, 1
	sh	%d5, %d14, 4
	.loc 1 146 0
	movh	%d6, 3052
	.loc 1 160 0
	movh.a	%a6, 244
	.loc 1 166 0
	movh	%d12, 59432
	movh.a	%a5, 6104
.LBE26:
	.loc 1 117 0
	ld.w	%d10, [%a4] 64
.LVL4:
	mov.a	%a3, %d5
.LBB29:
	.loc 1 146 0
	addi	%d6, %d6, -15872
	.loc 1 141 0
	mov	%e0, 0
	mov	%d7, 0
	.loc 1 156 0
	mov	%d9, 16
	.loc 1 160 0
	lea	%a6, [%a6] 9217
	.loc 1 166 0
	mov	%d13, -1
	addi	%d12, %d12, 31744
	lea	%a5, [%a5] -31743
	mov.a	%a2, 15
.LVL5:
.L14:
	.loc 1 158 0
	div.u	%e2, %d10, %d9
	.loc 1 160 0
	movh	%d5, 65414
	addi	%d5, %d5, -4608
	.loc 1 158 0
	mov	%d3, 0
	.loc 1 160 0
	addx	%d5, %d2, %d5
	addc	%d2, %d3, -1
	mov.d	%d3, %a6
	eq	%d15, %d2, 0
	and.ge.u	%d15, %d5, %d3
	or.ne	%d15, %d2, 0
	jnz	%d15, .L8
	mov	%d11, %d9
	mov	%d8, 1
.LVL6:
.L13:
	.loc 1 166 0
	madd.u	%e2, %e12, %d8, %d4
	mov.d	%d5, %a5
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d2, %d5
	or.ne	%d15, %d3, 0
	jnz	%d15, .L9
	mov	%d5, 1
	lea	%a15, 127
.LVL7:
.L12:
.LBB27:
	.loc 1 171 0
	div.u	%e2, %d5, %d11
	mul	%d2, %d10
	sub	%d2, %d4
.LVL8:
	.loc 1 173 0
	jz	%d2, .L17
	.loc 1 183 0
	mov	%d15, 1
	and.ge.u	%d15, %d2, %d6
	cmovn	%d0, %d15, %d5
.LVL9:
	cmovn	%d6, %d15, %d2
.LVL10:
	cmovn	%d1, %d15, %d9
.LVL11:
	cmovn	%d7, %d15, %d8
.LVL12:
.LBE27:
	.loc 1 168 0
	add	%d5, 1
.LVL13:
	loop	%a15, .L12
.LVL14:
.L9:
	mov.d	%d15, %a3
	.loc 1 162 0 discriminator 2
	add	%d8, %d14
.LVL15:
	add	%d11, %d15
	lt.u	%d15, %d8, 129
	jnz	%d15, .L13
.LVL16:
.L8:
	mov.a	%a15, %d14
	.loc 1 156 0 discriminator 2
	add	%d9, -1
.LVL17:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L14
	mov	%d9, %d1
.LVL18:
	mov	%d5, %d0
	mov	%d8, %d7
	j	.L10
.LVL19:
.L17:
.LBB28:
	.loc 1 175 0
	mov	%d6, 0
.LVL20:
.L10:
.LBE28:
	.loc 1 198 0
	movh	%d2, 20972
	sh	%d4, 1
.LVL21:
	addi	%d2, %d2, -31457
	mul.u	%e2, %d4, %d2
	mov	%d15, 1
	sh	%d2, %d3, -5
	and.ge.u	%d15, %d6, %d2
	.loc 1 208 0
	mov	%d2, 1
	.loc 1 198 0
	jnz	%d15, .L15
	.loc 1 203 0
	mov	%d2, 0
	.loc 1 200 0
	add	%d5, -1
.LVL22:
	.loc 1 201 0
	add	%d9, -1
.LVL23:
	.loc 1 202 0
	add	%d8, -1
.LVL24:
	.loc 1 203 0
	st.w	[%a4] 12, %d2
	.loc 1 200 0
	st.b	[%a4] 9, %d5
	.loc 1 201 0
	st.b	[%a4] 8, %d9
	.loc 1 202 0
	st.b	[%a4] 10, %d8
	.loc 1 204 0
	st.b	[%a4]0, %d15
.LBE29:
	.loc 1 115 0
	mov	%d2, 0
.LVL25:
.L15:
	.loc 1 212 0
	ret
.LFE216:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
.section .text.IfxScuCcu_getOsc0Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB224:
	.loc 1 412 0
	.loc 1 413 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 414 0
	utof	%d2, %d2
	ret
.LFE224:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
.section .text.IfxScuCcu_getOscFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB225:
	.loc 1 418 0
	.loc 1 421 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L24
	j	IfxScuCcu_getOscFrequency.part.0
.LVL26:
.L24:
	.loc 1 436 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	ret
.LFE225:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
	.global	__floatsidf
	.global	__divdf3
	.global	__truncdfsf2
.section .text.IfxScuCcu_getPllErayFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayFrequency
	.type	IfxScuCcu_getPllErayFrequency, @function
IfxScuCcu_getPllErayFrequency:
.LFB226:
	.loc 1 440 0
.LVL27:
.LBB30:
.LBB31:
	.loc 1 421 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 423 0
	movh	%d2, 19647
	.loc 1 421 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 423 0
	addi	%d2, %d2, -17376
	.loc 1 421 0
	jnz	%d15, .L32
.LVL28:
.LBE31:
.LBE30:
	.loc 1 447 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 0, .L33
.L27:
	.loc 1 452 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 3, .L34
	.loc 1 460 0
	ld.w	%d3, [%a15] 40
	ld.w	%d15, [%a15] 44
	extr.u	%d3, %d3, 9, 5
	and	%d15, %d15, 127
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL29:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL30:
	.loc 1 464 0
	ret
.LVL31:
.L32:
	.loc 1 447 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB33:
.LBB32:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL32:
.LBE32:
.LBE33:
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 0, .L27
.L33:
	.loc 1 450 0
	ld.w	%d15, [%a15] 44
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL33:
	ret
.LVL34:
.L34:
	.loc 1 455 0
	ld.w	%d4, [%a15] 44
	and	%d4, %d4, 127
	add	%d4, 1
	call	__floatsidf
.LVL35:
	movh	%d5, 16792
	mov	%e6, %d3, %d2
	mov	%d4, 0
	addi	%d5, %d5, -10364
	call	__divdf3
.LVL36:
	mov	%e4, %d3, %d2
	j	__truncdfsf2
.LVL37:
.LFE226:
	.size	IfxScuCcu_getPllErayFrequency, .-IfxScuCcu_getPllErayFrequency
.section .text.IfxScuCcu_getPllErayVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayVcoFrequency
	.type	IfxScuCcu_getPllErayVcoFrequency, @function
IfxScuCcu_getPllErayVcoFrequency:
.LFB227:
	.loc 1 468 0
	.loc 1 471 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 474 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 471 0
	jnz.t	%d15, 3, .L36
.LBB34:
.LBB35:
	.loc 1 421 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L42
.L37:
.LVL38:
.LBE35:
.LBE34:
	.loc 1 479 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 5
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL39:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL40:
.L36:
	.loc 1 483 0
	ret
.LVL41:
.L42:
.LBB37:
.LBB36:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL42:
	j	.L37
.LBE36:
.LBE37:
.LFE227:
	.size	IfxScuCcu_getPllErayVcoFrequency, .-IfxScuCcu_getPllErayVcoFrequency
.section .text.IfxScuCcu_getPllFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB228:
	.loc 1 487 0
.LVL43:
.LBB44:
.LBB45:
	.loc 1 421 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 423 0
	movh	%d2, 19647
	.loc 1 421 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 423 0
	addi	%d2, %d2, -17376
	.loc 1 421 0
	jnz	%d15, .L50
.LVL44:
.LBE45:
.LBE44:
	.loc 1 494 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L51
.L45:
	.loc 1 499 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L52
	.loc 1 507 0
	ld.w	%d4, [%a15] 24
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 127
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 4
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL45:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL46:
	.loc 1 511 0
	ret
.LVL47:
.L50:
	.loc 1 494 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB47:
.LBB46:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL48:
.LBE46:
.LBE47:
	ld.w	%d15, [%a15] 20
	jz.t	%d15, 0, .L45
.L51:
	.loc 1 497 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL49:
	ret
.LVL50:
.L52:
.LBB48:
.LBB49:
	.loc 1 502 0
	ld.w	%d4, [%a15] 28
	and	%d4, %d4, 127
	add	%d4, 1
	call	__floatsidf
.LVL51:
	movh	%d5, 16792
	mov	%e6, %d3, %d2
	mov	%d4, 0
	addi	%d5, %d5, -10364
	call	__divdf3
.LVL52:
	mov	%e4, %d3, %d2
	j	__truncdfsf2
.LVL53:
.LBE49:
.LBE48:
.LFE228:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
.section .text.IfxScuCcu_getPllVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB229:
	.loc 1 515 0
	.loc 1 518 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	.loc 1 521 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 518 0
	jnz.t	%d15, 3, .L54
.LBB50:
.LBB51:
	.loc 1 421 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L60
.L55:
.LVL54:
.LBE51:
.LBE50:
	.loc 1 526 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL55:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL56:
.L54:
	.loc 1 530 0
	ret
.LVL57:
.L60:
.LBB53:
.LBB52:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL58:
	j	.L55
.LBE52:
.LBE53:
.LFE229:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
.section .text.IfxScuCcu_getSourceFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB230:
	.loc 1 534 0
	.loc 1 537 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L65
	jne	%d15, 1, .L66
	.loc 1 543 0
	j	IfxScuCcu_getPllFrequency
.LVL59:
.L66:
	.loc 1 546 0
	mov	%d2, 0
	ret
.L65:
	.loc 1 540 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
.LVL60:
	.loc 1 551 0
	ret
.LFE230:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
.section .text.IfxScuCcu_wait,"ax",@progbits
	.align 1
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB244:
	.loc 1 1305 0
.LVL61:
	.loc 1 1305 0
	mov	%d15, %d4
.LBB54:
.LBB55:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1094 0
	call	IfxScuCcu_getSourceFrequency
.LVL62:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE55:
.LBE54:
	.loc 1 1306 0
	mul.f	%d4, %d15, %d2
	.loc 1 1307 0
	ld.w	%d2, 0xf0000010
	.loc 1 1306 0
	ftouz	%d4, %d4
.LVL63:
.L68:
	.loc 1 1309 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L68
	.loc 1 1318 0
	ret
.LFE244:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
.section .text.IfxScuCcu_getBbbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB218:
	.loc 1 234 0
	.loc 1 238 0
	call	IfxScuCcu_getSourceFrequency
.LVL64:
	.loc 1 240 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 238 0
	mov	%d15, %d2
.LVL65:
	.loc 1 240 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 267 0
	mov	%d2, 0
.LVL66:
	.loc 1 240 0
	jge.u	%d3, 5, .L71
	movh.a	%a15, hi:.L73
	lea	%a15, [%a15] lo:.L73
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L73:
	.code32
	j	.L72
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
	.code32
	j	.L77
.L77:
	.loc 1 264 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL67:
.L71:
	.loc 1 272 0
	ret
.LVL68:
.L76:
	.loc 1 261 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL69:
	.loc 1 262 0
	ret
.LVL70:
.L72:
	.loc 1 244 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d3, [%a15]0
	.loc 1 246 0
	mov	%d2, 0
	.loc 1 244 0
	and	%d3, %d3, 15
	jz	%d3, .L71
	.loc 1 250 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL71:
	ret
.LVL72:
.L74:
	.loc 1 255 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL73:
	.loc 1 256 0
	ret
.LVL74:
.L75:
	.loc 1 258 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL75:
	.loc 1 259 0
	ret
.LFE218:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
.section .text.IfxScuCcu_getMaxFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB222:
	.loc 1 346 0
	.loc 1 351 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	.loc 1 349 0
	call	IfxScuCcu_getSourceFrequency
.LVL76:
	.loc 1 351 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 12, 4
	jlt.u	%d15, 5, .L93
	.loc 1 378 0
	mov	%d2, 0
.LVL77:
.L82:
	.loc 1 383 0
	ret
.LVL78:
.L93:
	.loc 1 351 0
	movh.a	%a15, hi:.L84
	lea	%a15, [%a15] lo:.L84
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L84:
	.code32
	j	.L83
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
	.code32
	j	.L88
.L87:
	.loc 1 372 0
	movh	%d15, 17008
	div.f	%d2, %d2, %d15
.LVL79:
	.loc 1 373 0
	ret
.LVL80:
.L88:
	.loc 1 375 0
	movh	%d15, 17136
	div.f	%d2, %d2, %d15
.LVL81:
	.loc 1 376 0
	ret
.LVL82:
.L83:
	.loc 1 355 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	jz	%d15, .L82
	.loc 1 361 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL83:
	ret
.LVL84:
.L85:
	.loc 1 366 0
	movh	%d15, 16752
	div.f	%d2, %d2, %d15
.LVL85:
	.loc 1 367 0
	ret
.LVL86:
.L86:
	.loc 1 369 0
	movh	%d15, 16880
	div.f	%d2, %d2, %d15
.LVL87:
	.loc 1 370 0
	ret
.LFE222:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
.section .text.IfxScuCcu_getBaud2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB217:
	.loc 1 216 0
	.loc 1 218 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL88:
	.loc 1 222 0
	mov	%d2, 0
	.loc 1 218 0
	extr.u	%d8, %d15, 4, 4
.LVL89:
	.loc 1 220 0
	and	%d15, %d15, 240
.LVL90:
	jnz	%d15, .L98
.LVL91:
	.loc 1 230 0
	ret
.LVL92:
.L98:
	.loc 1 226 0
	call	IfxScuCcu_getMaxFrequency
.LVL93:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL94:
	.loc 1 230 0
	ret
.LFE217:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
.section .text.IfxScuCcu_getSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB231:
	.loc 1 555 0
	.loc 1 559 0
	call	IfxScuCcu_getSourceFrequency
.LVL95:
	.loc 1 561 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 559 0
	mov	%d15, %d2
.LVL96:
	.loc 1 561 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 588 0
	mov	%d2, 0
.LVL97:
	.loc 1 561 0
	jge.u	%d3, 5, .L100
	movh.a	%a15, hi:.L102
	lea	%a15, [%a15] lo:.L102
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L102:
	.code32
	j	.L101
	.code32
	j	.L103
	.code32
	j	.L104
	.code32
	j	.L105
	.code32
	j	.L106
.L106:
	.loc 1 585 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL98:
.L100:
	.loc 1 593 0
	ret
.LVL99:
.L105:
	.loc 1 582 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL100:
	.loc 1 583 0
	ret
.LVL101:
.L101:
	.loc 1 565 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 567 0
	mov	%d2, 0
	.loc 1 565 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L100
	.loc 1 571 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL102:
	ret
.LVL103:
.L103:
	.loc 1 576 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL104:
	.loc 1 577 0
	ret
.LVL105:
.L104:
	.loc 1 579 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL106:
	.loc 1 580 0
	ret
.LFE231:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
.section .text.IfxScuCcu_getModuleFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB223:
	.loc 1 387 0
	.loc 1 391 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d15, [%a15]0
.LVL107:
	.loc 1 392 0
	call	IfxScuCcu_getSpbFrequency
.LVL108:
	mov	%d3, %d2
	.loc 1 394 0
	mov.u	%d2, 49152
	.loc 1 391 0
	insert	%d8, %d15, 0, 10, 22
.LVL109:
	.loc 1 394 0
	and	%d15, %d2
.LVL110:
	mov	%d2, 16384
	jeq	%d15, %d2, .L114
	.loc 1 398 0
	mov.u	%d4, 32768
	.loc 1 404 0
	mov	%d2, 0
	.loc 1 398 0
	jeq	%d15, %d4, .L115
.LVL111:
	.loc 1 408 0
	ret
.LVL112:
.L115:
	.loc 1 400 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL113:
	.loc 1 408 0
	ret
.LVL114:
.L114:
	.loc 1 396 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL115:
	ret
.LFE223:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
.section .text.IfxScuCcu_getSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB232:
	.loc 1 597 0
	.loc 1 601 0
	call	IfxScuCcu_getSourceFrequency
.LVL116:
	.loc 1 603 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 601 0
	mov	%d15, %d2
.LVL117:
	.loc 1 603 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 630 0
	mov	%d2, 0
.LVL118:
	.loc 1 603 0
	jge.u	%d3, 5, .L117
	movh.a	%a15, hi:.L119
	lea	%a15, [%a15] lo:.L119
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L119:
	.code32
	j	.L118
	.code32
	j	.L120
	.code32
	j	.L121
	.code32
	j	.L122
	.code32
	j	.L123
.L123:
	.loc 1 627 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL119:
.L117:
	.loc 1 635 0
	ret
.LVL120:
.L122:
	.loc 1 624 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL121:
	.loc 1 625 0
	ret
.LVL122:
.L118:
	.loc 1 607 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 609 0
	mov	%d2, 0
	.loc 1 607 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L117
	.loc 1 613 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL123:
	ret
.LVL124:
.L120:
	.loc 1 618 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL125:
	.loc 1 619 0
	ret
.LVL126:
.L121:
	.loc 1 621 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL127:
	.loc 1 622 0
	ret
.LFE232:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
.section .text.IfxScuCcu_getCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB219:
	.loc 1 276 0
.LVL128:
	.loc 1 276 0
	mov	%d15, %d4
	.loc 1 277 0
	call	IfxScuCcu_getSriFrequency
.LVL129:
	.loc 1 280 0
	jnz	%d15, .L134
	.loc 1 283 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d15, [%a15]0
.LVL130:
	.loc 1 290 0
	jz	%d15, .L128
	.loc 1 292 0
	utof	%d15, %d15
.LVL131:
	movh	%d3, 15488
	mul.f	%d15, %d15, %d3
	mul.f	%d2, %d2, %d15
.LVL132:
	ret
.LVL133:
.L134:
	.loc 1 286 0
	mov	%d2, 0
.LVL134:
.L128:
	.loc 1 296 0
	ret
.LFE219:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
.section .text.IfxScuCcu_getFsi2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB220:
	.loc 1 300 0
	.loc 1 302 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL135:
	.loc 1 304 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 302 0
	extr.u	%d8, %d15, 20, 2
.LVL136:
	.loc 1 306 0
	mov	%d2, 0
	.loc 1 304 0
	jnz	%d3, .L139
.LVL137:
.L136:
	.loc 1 319 0
	ret
.LVL138:
.L139:
	.loc 1 310 0
	call	IfxScuCcu_getSriFrequency
.LVL139:
	.loc 1 312 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL140:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L136
	.loc 1 314 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL141:
	.loc 1 319 0
	ret
.LFE220:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
.section .text.IfxScuCcu_getFsiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB221:
	.loc 1 323 0
	.loc 1 325 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL142:
	.loc 1 327 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 325 0
	extr.u	%d8, %d15, 24, 2
.LVL143:
	.loc 1 329 0
	mov	%d2, 0
	.loc 1 327 0
	jnz	%d3, .L144
.LVL144:
.L141:
	.loc 1 342 0
	ret
.LVL145:
.L144:
	.loc 1 333 0
	call	IfxScuCcu_getSriFrequency
.LVL146:
	.loc 1 335 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL147:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L141
	.loc 1 337 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL148:
	.loc 1 342 0
	ret
.LFE221:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
.section .text.IfxScuCcu_init,"ax",@progbits
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB233:
	.loc 1 639 0
.LVL149:
	.loc 1 644 0
	ld.w	%d2, [%a4] 64
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 639 0
	mov.aa	%a12, %a4
	.loc 1 644 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d2
	.loc 1 646 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL150:
	mov	%d10, %d2
.LVL151:
	.loc 1 647 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL152:
	.loc 1 651 0
	mov	%d4, %d10
	.loc 1 647 0
	mov	%d8, %d2
.LVL153:
	.loc 1 651 0
	call	IfxScuWdt_clearCpuEndinit
.LVL154:
	.loc 1 652 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d12, [%a15]0
	.loc 1 653 0
	ld.w	%d15, [%a15]0
	.loc 1 654 0
	mov	%d4, %d10
	.loc 1 653 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 654 0
	call	IfxScuWdt_setCpuEndinit
.LVL155:
	.loc 1 659 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL156:
	.loc 1 652 0
	extr.u	%d12, %d12, 3, 1
.LVL157:
	.loc 1 661 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L146:
	.loc 1 661 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L146
	.loc 1 667 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 668 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 671 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 675 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L147:
	.loc 1 675 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L147
	.loc 1 681 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 682 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.LVL158:
.LBB65:
.LBB66:
	.loc 1 1003 0
	movh.a	%a15, 61443
	.loc 1 998 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL159:
	.loc 1 1003 0
	lea	%a15, [%a15] 24592
	ld.w	%d15, [%a15]0
	.loc 1 998 0
	mov	%d9, %d2
.LVL160:
	.loc 1 1003 0
	andn	%d15, %d15, ~(-97)
	st.w	[%a15]0, %d15
	.loc 1 1009 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d2, [%a15]0
.LVL161:
	.loc 1 1015 0
	mov.aa	%a2, %a15
	.loc 1 1009 0
	sh	%d15, %d7, -20
	add	%d15, -1
	insert	%d15, %d2, %d15, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 1012 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 1015 0
	lea	%a15, 639
.LVL162:
.L148:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L150
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L191
.L150:
	loop	%a15, .L148
.LVL163:
	.loc 1 1029 0
	movh.a	%a15, 61443
	.loc 1 1028 0
	mov	%d4, %d9
	.loc 1 1029 0
	lea	%a15, [%a15] 24876
	.loc 1 1028 0
	call	IfxScuWdt_clearCpuEndinit
.LVL164:
	.loc 1 1029 0
	ld.w	%d15, [%a15]0
	.loc 1 1031 0
	mov	%d4, %d9
	.loc 1 1029 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1030 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 1021 0
	mov	%d9, 1
.LVL165:
	.loc 1 1030 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1031 0
	call	IfxScuWdt_setCpuEndinit
.LVL166:
.LBE66:
.LBE65:
	.loc 1 686 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL167:
	j	.L160
.LVL168:
.L191:
.LBB69:
.LBB67:
	.loc 1 1029 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1028 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
.LVL169:
	.loc 1 1029 0
	ld.w	%d15, [%a15]0
	.loc 1 1031 0
	mov	%d4, %d9
	.loc 1 1029 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1030 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1031 0
	call	IfxScuWdt_setCpuEndinit
.LVL170:
.LBE67:
.LBE69:
	.loc 1 686 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL171:
.LBB70:
	.loc 1 698 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL172:
	.loc 1 700 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L152:
	.loc 1 700 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L152
	.loc 1 706 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 10
	.loc 1 725 0
	movh	%d4, 14418
	.loc 1 706 0
	insert	%d15, %d2, %d15, 0, 7
	.loc 1 725 0
	addi	%d4, %d4, -18665
	.loc 1 706 0
	st.w	[%a15]0, %d15
	.loc 1 710 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 8
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 711 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 9
	insert	%d15, %d2, %d15, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 715 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 64
	st.w	[%a15]0, %d15
	.loc 1 717 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 719 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 720 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 723 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 725 0
	call	IfxScuCcu_wait
.LVL173:
	.loc 1 727 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L153:
	.loc 1 727 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L153
	.loc 1 733 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 735 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L154:
	.loc 1 735 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L154
	.loc 1 741 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 744 0
	mov.aa	%a15, %a2
	.loc 1 741 0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a2]0, %d15
.L155:
	.loc 1 744 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, 61443
	lea	%a13, [%a13] 24624
	jltz	%d15, .L155
	.loc 1 751 0
	ld.w	%d4, [%a12] 12
	call	IfxScuCcu_wait
.LVL174:
.LBB71:
	.loc 1 755 0
	ld.w	%d15, [%a12] 20
	ld.w	%d2, [%a13]0
	.loc 1 757 0
	ld.w	%d3, [%a12] 16
	.loc 1 755 0
	andn	%d2, %d2, %d15
	.loc 1 757 0
	and	%d15, %d3
	or	%d15, %d2
.LVL175:
	.loc 1 758 0
	insert	%d15, %d15, 1, 28, 2
.LVL176:
	.loc 1 759 0
	insert	%d15, %d15, 1, 30, 1
.LBE71:
	.loc 1 763 0
	movh.a	%a15, 61443
.LBB72:
	.loc 1 760 0
	st.w	[%a13]0, %d15
.LBE72:
	.loc 1 763 0
	lea	%a15, [%a15] 24628
.L156:
	.loc 1 763 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL177:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	jltz	%d15, .L156
.LBB73:
	.loc 1 772 0 is_stmt 1
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 774 0
	ld.w	%d3, [%a12] 24
	.loc 1 772 0
	andn	%d2, %d2, %d15
	.loc 1 774 0
	and	%d15, %d3
	or	%d15, %d2
.LVL178:
	.loc 1 775 0
	insert	%d15, %d15, 1, 28, 2
.LVL179:
	.loc 1 776 0
	insert	%d15, %d15, 1, 30, 1
.LBE73:
	.loc 1 780 0
	movh.a	%a15, 61443
.LBB74:
	.loc 1 777 0
	st.w	[%a2]0, %d15
.LBE74:
	.loc 1 780 0
	lea	%a15, [%a15] 24640
.L157:
	.loc 1 780 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL180:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	jltz	%d15, .L157
.LBB75:
	.loc 1 789 0 is_stmt 1
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 791 0
	ld.w	%d3, [%a12] 32
	.loc 1 789 0
	andn	%d2, %d2, %d15
	.loc 1 791 0
	and	%d15, %d3
	or	%d15, %d2
.LVL181:
	.loc 1 792 0
	insert	%d15, %d15, 1, 30, 1
.LVL182:
.LBE75:
	.loc 1 796 0
	movh.a	%a15, 61443
.LBB76:
	.loc 1 793 0
	st.w	[%a2]0, %d15
.LBE76:
	.loc 1 796 0
	lea	%a15, [%a15] 24652
.L158:
	.loc 1 796 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL183:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24652
	jltz	%d15, .L158
.LBB77:
	.loc 1 803 0 is_stmt 1
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 805 0
	ld.w	%d3, [%a12] 40
	.loc 1 803 0
	andn	%d2, %d2, %d15
	.loc 1 805 0
	and	%d15, %d3
	or	%d15, %d2
.LVL184:
	.loc 1 806 0
	insert	%d15, %d15, 1, 30, 1
.LVL185:
.LBE77:
.LBB78:
	.loc 1 812 0
	movh.a	%a15, 61443
.LBE78:
.LBB79:
	.loc 1 807 0
	st.w	[%a2]0, %d15
.LBE79:
.LBB80:
	.loc 1 812 0
	lea	%a15, [%a15] 24704
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL186:
	.loc 1 814 0
	ld.w	%d3, [%a12] 48
	.loc 1 812 0
	andn	%d2, %d2, %d15
.LVL187:
	.loc 1 814 0
	and	%d15, %d3
	or	%d15, %d2
.LVL188:
	.loc 1 815 0
	st.w	[%a15]0, %d15
.LBE80:
	.loc 1 819 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL189:
.LBB81:
	.loc 1 825 0
	movh.a	%a15, 63488
	lea	%a15, [%a15] 8212
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 60
.LVL190:
	.loc 1 829 0
	ld.w	%d3, [%a12] 56
	.loc 1 828 0
	andn	%d2, %d2, %d15
.LVL191:
	.loc 1 831 0
	mov	%d4, %d10
	.loc 1 829 0
	and	%d15, %d3
	or	%d15, %d2
.LVL192:
	.loc 1 831 0
	call	IfxScuWdt_clearCpuEndinit
.LVL193:
	.loc 1 832 0
	st.w	[%a15]0, %d15
	.loc 1 833 0
	mov	%d4, %d10
	call	IfxScuWdt_setCpuEndinit
.LVL194:
.LBE81:
	.loc 1 838 0
	ld.bu	%d15, [%a12]0
.LVL195:
	.loc 1 844 0
	movh.a	%a15, 61443
	.loc 1 851 0
	movh.a	%a13, 61443
	.loc 1 838 0
	mov	%d9, 0
.LVL196:
	.loc 1 844 0
	lea	%a15, [%a15] 24596
	.loc 1 851 0
	lea	%a13, [%a13] 24604
	.loc 1 838 0
	jz	%d15, .L163
.LVL197:
.L172:
	.loc 1 841 0
	mov	%d4, %d8
	and	%d11, %d9, 255
.LVL198:
	call	IfxScuWdt_clearSafetyEndinit
.LVL199:
.L161:
	.loc 1 844 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L161
	.loc 1 851 0
	and	%d15, %d9, 255
	ld.a	%a3, [%a12] 4
	mul	%d15, %d15, 12
	ld.w	%d3, [%a13]0
	.loc 1 852 0
	mov	%d4, %d8
	.loc 1 851 0
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	insert	%d2, %d3, %d2, 0, 7
	st.w	[%a13]0, %d2
	.loc 1 852 0
	call	IfxScuWdt_setSafetyEndinit
.LVL200:
	.loc 1 856 0
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L162
	.loc 1 858 0
	calli	%a3
.LVL201:
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
.L162:
	.loc 1 862 0 discriminator 2
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL202:
	addi	%d2, %d11, 1
	.loc 1 838 0 discriminator 2
	ld.bu	%d15, [%a12]0
	and	%d2, %d2, 255
	add	%d9, 1
	jlt.u	%d2, %d15, .L172
.LVL203:
.L163:
.LBE70:
.LBB82:
.LBB68:
	.loc 1 996 0
	mov	%d9, 0
.LVL204:
.L160:
.LBE68:
.LBE82:
	.loc 1 867 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL205:
	.loc 1 868 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 869 0
	mov	%d4, %d8
	.loc 1 868 0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 869 0
	call	IfxScuWdt_setSafetyEndinit
.LVL206:
	.loc 1 874 0
	movh.a	%a15, 61443
	.loc 1 873 0
	mov	%d4, %d10
	.loc 1 874 0
	lea	%a15, [%a15] 24876
	.loc 1 873 0
	call	IfxScuWdt_clearCpuEndinit
.LVL207:
	.loc 1 874 0
	ld.w	%d15, [%a15]0
	.loc 1 875 0
	sh	%d12, 3
.LVL208:
	.loc 1 874 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 875 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 876 0
	mov	%d4, %d10
	.loc 1 875 0
	andn	%d15, %d15, ~(-9)
	or	%d12, %d15
	st.w	[%a15]0, %d12
	.loc 1 876 0
	call	IfxScuWdt_setCpuEndinit
.LVL209:
	.loc 1 879 0
	mov	%d2, %d9
	ret
.LFE233:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
.section .text.IfxScuCcu_initConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB234:
	.loc 1 883 0
.LVL210:
	.loc 1 884 0
	movh	%d2, hi:IfxScuCcu_defaultClockConfig
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:IfxScuCcu_defaultClockConfig
		# #chunks=8, chunksize=8, remains=4
	lea	%a2, 8-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL211:
	ret
.LFE234:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
.section .text.IfxScuCcu_initErayPll,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPll
	.type	IfxScuCcu_initErayPll, @function
IfxScuCcu_initErayPll:
.LFB235:
	.loc 1 889 0
.LVL212:
	.loc 1 889 0
	mov.aa	%a12, %a4
	.loc 1 894 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL213:
	mov	%d8, %d2
.LVL214:
	.loc 1 895 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL215:
	.loc 1 898 0
	mov	%d4, %d8
	.loc 1 895 0
	mov	%d9, %d2
.LVL216:
	.loc 1 898 0
	call	IfxScuWdt_clearCpuEndinit
.LVL217:
	.loc 1 899 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 900 0
	ld.w	%d15, [%a15]0
	.loc 1 901 0
	mov	%d4, %d8
	.loc 1 900 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 899 0
	extr.u	%d11, %d2, 3, 1
.LVL218:
	.loc 1 901 0
	call	IfxScuWdt_setCpuEndinit
.LVL219:
	.loc 1 906 0
	movh.a	%a15, 61443
	.loc 1 903 0
	mov	%d4, %d9
	.loc 1 906 0
	lea	%a15, [%a15] 24616
	.loc 1 903 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL220:
	.loc 1 906 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 16, .L194
	.loc 1 906 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L221
.L194:
	.loc 1 909 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 910 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 912 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L196:
	.loc 1 912 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L196
	.loc 1 916 0 is_stmt 1
	ld.w	%d4, [%a12] 4
	call	IfxScuCcu_wait
.LVL221:
.L195:
	.loc 1 921 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L198
.L197:
	.loc 1 932 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L199:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L199
	.loc 1 935 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 2
	.loc 1 948 0
	mov	%d4, %d9
	.loc 1 935 0
	insert	%d15, %d2, %d15, 0, 7
	st.w	[%a15]0, %d15
	.loc 1 936 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12]0
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 937 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 1
	insert	%d15, %d2, %d15, 9, 5
	st.w	[%a15]0, %d15
	.loc 1 945 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 946 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 948 0
	call	IfxScuWdt_setSafetyEndinit
.LVL222:
	.loc 1 953 0
	movh.a	%a15, 1
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24612
	lea	%a15, [%a15] -15538
.LVL223:
.L200:
	.loc 1 953 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 2, .L222
	loop	%a15, .L200
	.loc 1 959 0 is_stmt 1
	mov	%d10, 1
	j	.L201
.L198:
	.loc 1 923 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L198
	.loc 1 926 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 7
	st.w	[%a15]0, %d15
	.loc 1 929 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	j	.L197
.L222:
	.loc 1 892 0
	mov	%d10, 0
.L201:
.LVL224:
	.loc 1 964 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	.loc 1 962 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL225:
	.loc 1 964 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 967 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L203:
	.loc 1 967 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L203
	.loc 1 970 0 is_stmt 1
	movh.a	%a15, 61443
	.loc 1 975 0
	mov	%d4, %d9
	.loc 1 970 0
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 975 0
	call	IfxScuWdt_setSafetyEndinit
.LVL226:
	.loc 1 970 0
	extr.u	%d15, %d15, 2, 1
	.loc 1 979 0
	movh.a	%a15, 61443
	.loc 1 978 0
	mov	%d4, %d8
	.loc 1 979 0
	lea	%a15, [%a15] 24876
	.loc 1 978 0
	call	IfxScuWdt_clearCpuEndinit
.LVL227:
	.loc 1 972 0
	cmovn	%d10, %d15, 1
.LVL228:
	.loc 1 979 0
	ld.w	%d15, [%a15]0
	.loc 1 980 0
	sh	%d2, %d11, 3
	.loc 1 979 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 980 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 981 0
	mov	%d4, %d8
	.loc 1 980 0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 981 0
	call	IfxScuWdt_setCpuEndinit
.LVL229:
	.loc 1 984 0
	mov	%d2, %d10
	ret
.LVL230:
.L221:
	.loc 1 906 0 discriminator 2
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L195
	j	.L194
.LFE235:
	.size	IfxScuCcu_initErayPll, .-IfxScuCcu_initErayPll
.section .text.IfxScuCcu_initErayPllConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPllConfig
	.type	IfxScuCcu_initErayPllConfig, @function
IfxScuCcu_initErayPllConfig:
.LFB236:
	.loc 1 988 0
.LVL231:
	.loc 1 989 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	mov	%d15, 23
	st.b	[%a4] 1, %d15
	mov	%d15, 5
	st.b	[%a4] 2, %d15
	mov	%d15, 0
	st.w	[%a4] 4, %d15
	ret
.LFE236:
	.size	IfxScuCcu_initErayPllConfig, .-IfxScuCcu_initErayPllConfig
.section .text.IfxScuCcu_setCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB238:
	.loc 1 1039 0
.LVL232:
	.loc 1 1039 0
	mov	%d8, %d5
	mov	%d10, %d4
	.loc 1 1044 0
	call	IfxScuCcu_getSriFrequency
.LVL233:
	mov	%d15, %d2
.LVL234:
	.loc 1 1046 0
	cmp.f	%d2, %d2, %d8
.LVL235:
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L225
	.loc 1 1052 0
	movh	%d9, 17024
	mul.f	%d9, %d8, %d9
	div.f	%d9, %d9, %d15
	ftouz	%d9, %d9
.LVL236:
	.loc 1 1055 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL237:
	.loc 1 1058 0
	mov	%d4, %d2
	.loc 1 1055 0
	mov	%d8, %d2
.LVL238:
	.loc 1 1058 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL239:
	.loc 1 1060 0
	jz	%d10, .L227
.LVL240:
.L226:
	.loc 1 1070 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL241:
	.loc 1 1073 0
	jz	%d9, .L233
	.loc 1 1075 0
	utof	%d9, %d9
	movh	%d2, 15488
	mul.f	%d9, %d9, %d2
	mul.f	%d15, %d15, %d9
.LVL242:
.L233:
	.loc 1 1079 0
	mov	%d2, %d15
	ret
.LVL243:
.L225:
	.loc 1 1055 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL244:
	.loc 1 1058 0
	mov	%d4, %d2
	.loc 1 1055 0
	mov	%d8, %d2
.LVL245:
	.loc 1 1058 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL246:
	.loc 1 1060 0
	jnz	%d10, .L240
	.loc 1 1048 0
	mov	%d9, 0
.LVL247:
.L227:
	.loc 1 1063 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	st.w	[%a15]0, %d9
	.loc 1 1064 0
	j	.L226
.LVL248:
.L240:
	.loc 1 1070 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL249:
	j	.L233
.LFE238:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
.section .text.IfxScuCcu_setGtmFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB239:
	.loc 1 1083 0
.LVL250:
	.loc 1 1085 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	.loc 1 1083 0
	mov	%d15, %d4
	.loc 1 1085 0
	ld.w	%d8, [%a15]0
.LVL251:
	.loc 1 1087 0
	call	IfxScuCcu_getSourceFrequency
.LVL252:
	.loc 1 1088 0
	div.f	%d2, %d2, %d15
.LVL253:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL254:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB83:
.LBB84:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 171 0
	mov	%d2, 1
.LBE84:
.LBE83:
	.loc 1 1088 0
	add	%d15, %d3
.LVL255:
.LBB86:
.LBB85:
	.loc 3 171 0
#APP
	# 171 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL256:
#NO_APP
.LBE85:
.LBE86:
	.loc 1 1092 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L245
	.loc 1 1094 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL257:
.L249:
	and	%d10, %d15, 15
.L247:
.LVL258:
	.loc 1 1102 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL259:
	.loc 1 1103 0
	mov	%d4, %d2
	.loc 1 1102 0
	mov	%d9, %d2
.LVL260:
	.loc 1 1103 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL261:
	.loc 1 1105 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
.L248:
	.loc 1 1105 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a12, 61443
	lea	%a12, [%a12] 24628
	jltz	%d15, .L248
	.loc 1 1108 0 is_stmt 1
	insert	%d8, %d8, %d10, 12, 4
	.loc 1 1109 0
	insert	%d8, %d8, 1, 30, 1
	.loc 1 1112 0
	mov	%d4, %d9
	.loc 1 1110 0
	st.w	[%a12]0, %d8
	.loc 1 1112 0
	call	IfxScuWdt_setSafetyEndinit
.LVL262:
.LBB87:
.LBB88:
	.loc 2 1073 0
	call	IfxScuCcu_getSourceFrequency
.LVL263:
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE88:
.LBE87:
	.loc 1 1115 0
	div.f	%d2, %d2, %d15
	ret
.LVL264:
.L245:
	.loc 1 1097 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L247
	j	.L249
.LFE239:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
.section .text.IfxScuCcu_setPll2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB240:
	.loc 1 1119 0
.LVL265:
	.loc 1 1119 0
	mov	%d8, %d4
	.loc 1 1120 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL266:
	mov	%d15, %d2
.LVL267:
	.loc 1 1121 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL268:
	.loc 1 1123 0
	mov	%d4, %d15
	.loc 1 1121 0
	mov	%d9, %d2
.LVL269:
	.loc 1 1123 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL270:
	.loc 1 1121 0
	div.f	%d8, %d9, %d8
.LVL271:
	.loc 1 1124 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	.loc 1 1121 0
	movh	%d3, 16256
	.loc 1 1125 0
	mov	%d4, %d15
	.loc 1 1121 0
	sub.f	%d8, %d8, %d3
	ftouz	%d8, %d8
.LVL272:
	.loc 1 1124 0
	insert	%d8, %d2, %d8, 8, 7
.LVL273:
	st.w	[%a15]0, %d8
	.loc 1 1125 0
	call	IfxScuWdt_setSafetyEndinit
.LVL274:
.LBB89:
.LBB90:
	.loc 2 1080 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL275:
	ld.w	%d15, [%a15]0
.LVL276:
	extr.u	%d15, %d15, 8, 7
.LVL277:
	add	%d15, 1
.LVL278:
	itof	%d15, %d15
.LVL279:
.LBE90:
.LBE89:
	.loc 1 1128 0
	div.f	%d2, %d2, %d15
	ret
.LFE240:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
.section .text.IfxScuCcu_setSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB241:
	.loc 1 1132 0
.LVL280:
	.loc 1 1132 0
	mov	%d15, %d4
	.loc 1 1137 0
	call	IfxScuCcu_getSourceFrequency
.LVL281:
	.loc 1 1138 0
	div.f	%d2, %d2, %d15
.LVL282:
.LBB91:
.LBB92:
	.loc 3 171 0
	mov	%d15, 2
.LVL283:
.LBE92:
.LBE91:
	.loc 1 1138 0
	ftouz	%d2, %d2
.LVL284:
.LBB94:
.LBB93:
	.loc 3 171 0
#APP
	# 171 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL285:
#NO_APP
.LBE93:
.LBE94:
	.loc 1 1141 0
	add	%d2, %d15, -7
.LVL286:
	jge.u	%d2, 7, .L258
	.loc 1 1143 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL287:
.L263:
	and	%d10, %d15, 15
.L260:
.LVL288:
	.loc 1 1151 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL289:
	mov	%d8, %d2
.LVL290:
	.loc 1 1152 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL291:
	.loc 1 1154 0
	mov	%d4, %d8
	.loc 1 1152 0
	mov	%d9, %d2
.LVL292:
	.loc 1 1154 0
	call	IfxScuWdt_clearCpuEndinit
.LVL293:
	.loc 1 1155 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1156 0
	mov	%d4, %d8
	call	IfxScuWdt_setCpuEndinit
.LVL294:
	.loc 1 1158 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL295:
	.loc 1 1160 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L261:
	.loc 1 1160 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L261
	.loc 1 1163 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 1167 0
	mov	%d4, %d9
	.loc 1 1164 0
	insert	%d15, %d15, %d10, 16, 4
.LVL296:
	.loc 1 1165 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1170 0
	movh.a	%a15, 61443
	.loc 1 1166 0
	st.w	[%a2]0, %d15
	.loc 1 1167 0
	call	IfxScuWdt_setSafetyEndinit
.LVL297:
	.loc 1 1169 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL298:
	.loc 1 1170 0
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
.LVL299:
	.loc 1 1171 0
	mov	%d4, %d8
	.loc 1 1170 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 1171 0
	call	IfxScuWdt_setCpuEndinit
.LVL300:
	.loc 1 1173 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L262:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L262
	.loc 1 1176 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL301:
.L258:
	.loc 1 1146 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L260
	j	.L263
.LFE241:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
.section .text.IfxScuCcu_setSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB242:
	.loc 1 1181 0
.LVL302:
	.loc 1 1181 0
	mov	%d15, %d4
	.loc 1 1183 0
	call	IfxScuCcu_getSourceFrequency
.LVL303:
	.loc 1 1186 0
	div.f	%d2, %d2, %d15
.LVL304:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL305:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB95:
.LBB96:
	.loc 3 171 0
	mov	%d2, 1
.LBE96:
.LBE95:
	.loc 1 1186 0
	add	%d15, %d3
.LVL306:
.LBB98:
.LBB97:
	.loc 3 171 0
#APP
	# 171 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL307:
#NO_APP
.LBE97:
.LBE98:
	.loc 1 1189 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L274
	.loc 1 1191 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL308:
.L279:
	and	%d9, %d15, 15
.L276:
.LVL309:
	.loc 1 1199 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL310:
	.loc 1 1200 0
	mov	%d4, %d2
	.loc 1 1199 0
	mov	%d8, %d2
.LVL311:
	.loc 1 1200 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL312:
	.loc 1 1202 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L277:
	.loc 1 1202 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L277
	.loc 1 1205 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 1210 0
	mov	%d4, %d8
	.loc 1 1206 0
	insert	%d15, %d15, %d9, 8, 4
.LVL313:
	.loc 1 1207 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1212 0
	movh.a	%a15, 61443
	.loc 1 1208 0
	st.w	[%a2]0, %d15
	.loc 1 1210 0
	call	IfxScuWdt_setSafetyEndinit
.LVL314:
	.loc 1 1212 0
	lea	%a15, [%a15] 24624
.L278:
	.loc 1 1212 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL315:
	jltz	%d15, .L278
	.loc 1 1215 0 is_stmt 1
	j	IfxScuCcu_getSriFrequency
.LVL316:
.L274:
	.loc 1 1194 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L276
	j	.L279
.LFE242:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
.section .text.IfxScuCcu_switchToBackupClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB243:
	.loc 1 1221 0
.LVL317:
	.loc 1 1226 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L301
	ret
.L301:
	mov.aa	%a12, %a4
	.loc 1 1231 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL318:
	mov	%d8, %d2
.LVL319:
	.loc 1 1232 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL320:
	.loc 1 1235 0
	ld.bu	%d9, [%a12]0
	.loc 1 1248 0
	movh.a	%a14, 61443
	mul	%d15, %d9, 12
	.loc 1 1232 0
	mov	%d10, %d2
.LVL321:
	.loc 1 1248 0
	lea	%a14, [%a14] 24604
	mov.a	%a15, %d15
	lea	%a13, [%a15] -12
	.loc 1 1241 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 1235 0
	jz	%d9, .L293
.LVL322:
.L296:
	.loc 1 1238 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL323:
.L291:
	.loc 1 1241 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L291
	.loc 1 1248 0 discriminator 2
	ld.a	%a2, [%a12] 4
	ld.w	%d3, [%a14]0
	.loc 1 1250 0 discriminator 2
	mov	%d4, %d8
	.loc 1 1248 0 discriminator 2
	add.a	%a2, %a13
	ld.bu	%d15, [%a2]0
	.loc 1 1235 0 discriminator 2
	add	%d9, -1
.LVL324:
	.loc 1 1248 0 discriminator 2
	insert	%d15, %d3, %d15, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1250 0 discriminator 2
	call	IfxScuWdt_setSafetyEndinit
.LVL325:
	.loc 1 1253 0 discriminator 2
	ld.a	%a2, [%a12] 4
	add.a	%a2, %a13
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL326:
	lea	%a13, [%a13] -12
	.loc 1 1235 0 discriminator 2
	jnz	%d9, .L296
.L293:
	.loc 1 1259 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL327:
	.loc 1 1261 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 1262 0
	ld.w	%d15, [%a15]0
	.loc 1 1264 0
	mov	%d4, %d10
	.loc 1 1262 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1261 0
	extr.u	%d9, %d2, 3, 1
.LVL328:
	.loc 1 1264 0
	call	IfxScuWdt_setCpuEndinit
.LVL329:
	.loc 1 1269 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL330:
	.loc 1 1271 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L290:
	.loc 1 1271 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L290
	.loc 1 1277 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1278 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.L294:
	.loc 1 1280 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L294
	.loc 1 1287 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 1291 0
	mov	%d4, %d8
	.loc 1 1287 0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1290 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1291 0
	call	IfxScuWdt_setSafetyEndinit
.LVL331:
	.loc 1 1296 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1295 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL332:
	.loc 1 1296 0
	ld.w	%d15, [%a15]0
	.loc 1 1298 0
	sh	%d2, %d9, 3
	.loc 1 1296 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1298 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 1299 0
	mov	%d4, %d10
	.loc 1 1298 0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1299 0
	j	IfxScuWdt_setCpuEndinit
.LVL333:
.LFE243:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultErayPllConfig
.section .rodata.IfxScuCcu_defaultErayPllConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultErayPllConfig, @object
	.size	IfxScuCcu_defaultErayPllConfig, 8
IfxScuCcu_defaultErayPllConfig:
	.byte	0
	.byte	23
	.byte	5
	.zero	1
	.word	0
	.global	IfxScuCcu_defaultClockConfig
.section .rodata.IfxScuCcu_defaultClockConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 68
IfxScuCcu_defaultClockConfig:
	.byte	3
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	5
	.zero	1
	.word	961656599
	.word	34734352
	.word	54464496
	.word	34873874
	.word	268435455
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	5333
	.word	32767
	.word	20000000
.section .data.IfxScuCcu_xtalFrequency,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
.section .rodata.IfxScuCcu_aDefaultPllConfigSteps,"a",@progbits
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 36
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	4
	.zero	3
	.word	953267991
	.word	0
	.byte	3
	.zero	3
	.word	953267991
	.word	0
	.byte	2
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE56:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h"
	.file 10 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7ed0
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x170
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x4
	.uahalf	0x521
	.uaword	0x1e7
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x4
	.uahalf	0x528
	.uaword	0x22b
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x65
	.uaword	0x25b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x69
	.uaword	0x25b
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x6d
	.uaword	0x287
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x71
	.uaword	0x237
	.uleb128 0x5
	.string	"uint64"
	.byte	0x5
	.byte	0x76
	.uaword	0x181
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x83
	.uaword	0x22b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0xa7
	.uaword	0x168
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x31b
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.uaword	0x322
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x8f
	.uaword	0x34a
	.uleb128 0xa
	.string	"module"
	.byte	0x6
	.byte	0x91
	.uaword	0x315
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x6
	.byte	0x92
	.uaword	0x2d5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x93
	.uaword	0x324
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x578
	.uleb128 0xc
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x364
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x5c0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x171
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x593
	.uleb128 0xb
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x642
	.uleb128 0xc
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x171
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x5db
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x747
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x7
	.byte	0x63
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x65e
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x837
	.uleb128 0xc
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x763
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x8b0
	.uleb128 0xc
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0x84
	.uaword	0x171
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x853
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x98b
	.uleb128 0xc
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x7
	.byte	0x92
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0x93
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0x94
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x95
	.uaword	0x8cc
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x98
	.uaword	0xa5e
	.uleb128 0xc
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9a
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9c
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9d
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9e
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"STMSEL"
	.byte	0x7
	.byte	0x9f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa0
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0xa1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0xa2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0x9a7
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xad7
	.uleb128 0xc
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xa8
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa9
	.uaword	0x171
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"UP"
	.byte	0x7
	.byte	0xaa
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x7
	.byte	0xab
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xac
	.uaword	0xa7a
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xaf
	.uaword	0xb34
	.uleb128 0xc
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb1
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x7
	.byte	0xb2
	.uaword	0x171
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb3
	.uaword	0xaf3
	.uleb128 0xb
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb6
	.uaword	0xbfd
	.uleb128 0xc
	.string	"CHREV"
	.byte	0x7
	.byte	0xb8
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"CHTEC"
	.byte	0x7
	.byte	0xb9
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"CHID"
	.byte	0x7
	.byte	0xba
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EEA"
	.byte	0x7
	.byte	0xbb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"UCODE"
	.byte	0x7
	.byte	0xbc
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"FSIZE"
	.byte	0x7
	.byte	0xbd
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"SP"
	.byte	0x7
	.byte	0xbe
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"SEC"
	.byte	0x7
	.byte	0xbf
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xc1
	.uaword	0xb50
	.uleb128 0xb
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc4
	.uaword	0xc92
	.uleb128 0xc
	.string	"PWD"
	.byte	0x7
	.byte	0xc6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"START"
	.byte	0x7
	.byte	0xc7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc8
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"CAL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x171
	.byte	0x4
	.byte	0x16
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.byte	0xca
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x7
	.byte	0xcb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xcc
	.uaword	0xc18
	.uleb128 0xb
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xcf
	.uaword	0xd38
	.uleb128 0xc
	.string	"LOWER"
	.byte	0x7
	.byte	0xd1
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x7
	.byte	0xd2
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"LLU"
	.byte	0x7
	.byte	0xd3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"UPPER"
	.byte	0x7
	.byte	0xd4
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x7
	.byte	0xd5
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x7
	.byte	0xd6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"UOF"
	.byte	0x7
	.byte	0xd7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xd8
	.uaword	0xcad
	.uleb128 0xb
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdb
	.uaword	0xdc1
	.uleb128 0xc
	.string	"RESULT"
	.byte	0x7
	.byte	0xdd
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x7
	.byte	0xde
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"RDY"
	.byte	0x7
	.byte	0xdf
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"BUSY"
	.byte	0x7
	.byte	0xe0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x7
	.byte	0xe1
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xe2
	.uaword	0xd53
	.uleb128 0xb
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe5
	.uaword	0xf0a
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x7
	.byte	0xe7
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EXIS0"
	.byte	0x7
	.byte	0xe8
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x7
	.byte	0xe9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"FEN0"
	.byte	0x7
	.byte	0xea
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"REN0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"LDEN0"
	.byte	0x7
	.byte	0xec
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EIEN0"
	.byte	0x7
	.byte	0xed
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"INP0"
	.byte	0x7
	.byte	0xee
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x7
	.byte	0xef
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EXIS1"
	.byte	0x7
	.byte	0xf0
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0x7
	.byte	0xf1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"FEN1"
	.byte	0x7
	.byte	0xf2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"REN1"
	.byte	0x7
	.byte	0xf3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"LDEN1"
	.byte	0x7
	.byte	0xf4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EIEN1"
	.byte	0x7
	.byte	0xf5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"INP1"
	.byte	0x7
	.byte	0xf6
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x7
	.byte	0xf7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.byte	0xf8
	.uaword	0xddd
	.uleb128 0xb
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0xfdc
	.uleb128 0xc
	.string	"INTF0"
	.byte	0x7
	.byte	0xfd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"INTF1"
	.byte	0x7
	.byte	0xfe
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"INTF2"
	.byte	0x7
	.byte	0xff
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x105
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x106
	.uaword	0xf23
	.uleb128 0x11
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x109
	.uaword	0x10ce
	.uleb128 0xe
	.string	"POL"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ENON"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x171
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x112
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x115
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x116
	.uaword	0xff6
	.uleb128 0x11
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x119
	.uaword	0x1139
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x171
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x10e8
	.uleb128 0x11
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x121
	.uaword	0x11a5
	.uleb128 0xe
	.string	"ARI"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"ARC"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x125
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x1155
	.uleb128 0x11
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x123f
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x11c2
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x133
	.uaword	0x12d7
	.uleb128 0xe
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x136
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x138
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VAL"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x125d
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x13d2
	.uleb128 0xe
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x140
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x142
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x144
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x146
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x147
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x148
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x12f7
	.uleb128 0x11
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x147f
	.uleb128 0xe
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x151
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x152
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x13f2
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x157
	.uaword	0x151d
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x159
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x149d
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x161
	.uaword	0x15b4
	.uleb128 0xe
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x164
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x166
	.uaword	0x171
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x153c
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1677
	.uleb128 0xe
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"TON"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TOFF"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x15d5
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x177
	.uaword	0x1797
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x179
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"STBS"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"STSP"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"NS"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"OL"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PIAD"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ADCMODE"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"ADCLPF"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"ADCLSB"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x182
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x184
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x1697
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x189
	.uaword	0x1870
	.uleb128 0xe
	.string	"SDOLCON"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"MODSEL"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODLOW"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"MODMAN"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"MODHIGH"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x17b7
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x196
	.uaword	0x197d
	.uleb128 0xe
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"OV13"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"UV13"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"SCMOD"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x171
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x1890
	.uleb128 0x11
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x1a27
	.uleb128 0xe
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x199a
	.uleb128 0x11
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x1af8
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x1a45
	.uleb128 0x11
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x1b96
	.uleb128 0xe
	.string	"STEP"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"DM"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x1b14
	.uleb128 0x11
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x1ceb
	.uleb128 0xe
	.string	"FS0"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"FS1"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"FS2"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"FS3"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"FS4"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"FS5"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"FS6"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"FS7"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"FC0"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"FC1"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"FC2"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"FC3"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"FC4"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"FC5"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"FC6"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"FC7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x1baf
	.uleb128 0x11
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x1d5c
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x1d04
	.uleb128 0x11
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x1f27
	.uleb128 0xe
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x1d74
	.uleb128 0x11
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x205
	.uaword	0x1f8a
	.uleb128 0xe
	.string	"P0"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x209
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x1f41
	.uleb128 0x11
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x200f
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x211
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x213
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1fa2
	.uleb128 0x11
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x217
	.uaword	0x209c
	.uleb128 0xe
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x2029
	.uleb128 0x11
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x220
	.uaword	0x213c
	.uleb128 0xe
	.string	"SEED"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x171
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x223
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"BODY"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x20bc
	.uleb128 0x11
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x21bb
	.uleb128 0xe
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x215c
	.uleb128 0x11
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x232
	.uaword	0x223b
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x234
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"LS"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x236
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x21db
	.uleb128 0x11
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x22ac
	.uleb128 0xe
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x2258
	.uleb128 0x11
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x231a
	.uleb128 0xe
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x171
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x247
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x22c9
	.uleb128 0x11
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x23b3
	.uleb128 0xe
	.string	"PS0"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x252
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x2335
	.uleb128 0x11
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x256
	.uaword	0x24ef
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x258
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"X1D"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x262
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x264
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"APREN"
	.byte	0x7
	.uahalf	0x265
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x266
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x23cc
	.uleb128 0x11
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x2555
	.uleb128 0xe
	.string	"P0"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x250b
	.uleb128 0x11
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x272
	.uaword	0x2653
	.uleb128 0xe
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x274
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x277
	.uaword	0x171
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x256e
	.uleb128 0x11
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x282
	.uaword	0x26d7
	.uleb128 0xe
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x285
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x287
	.uaword	0x171
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x266f
	.uleb128 0x11
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x2748
	.uleb128 0xe
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x26f6
	.uleb128 0x11
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x293
	.uaword	0x27cf
	.uleb128 0xe
	.string	"PD0"
	.byte	0x7
	.uahalf	0x295
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PL0"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PD1"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PL1"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x299
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x2763
	.uleb128 0x11
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x289d
	.uleb128 0xe
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x27e8
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x29d6
	.uleb128 0xe
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x28b7
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x2a79
	.uleb128 0xe
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x171
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x29f3
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x2ad9
	.uleb128 0xe
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x2a96
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x2c17
	.uleb128 0xe
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x2af6
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x2cc2
	.uleb128 0xe
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x171
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x2c38
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x2d8a
	.uleb128 0xe
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x171
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2ce3
	.uleb128 0x11
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2e6d
	.uleb128 0xe
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x304
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x306
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x2dab
	.uleb128 0x11
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x2eff
	.uleb128 0xe
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x171
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PMST"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x310
	.uaword	0x171
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x2e8a
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x30fa
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x316
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x317
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x318
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x319
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x322
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x324
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x326
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x328
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x32a
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x2f1a
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x331
	.uaword	0x31aa
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x333
	.uaword	0x171
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x335
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x338
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x3117
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWCR3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x3253
	.uleb128 0xe
	.string	"WUTREL"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"WUTDIV"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR3_Bits"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x31c7
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x347
	.uaword	0x3461
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x349
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x350
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x354
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"WUTWKP"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"WUTOVRUN"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x357
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x359
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"WUTRUN"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x3270
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x365
	.uaword	0x3591
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x367
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"WUTWKPCLR"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"WUTOVRUNCLR"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x371
	.uaword	0x171
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x347f
	.uleb128 0x11
	.string	"_Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x375
	.uaword	0x3607
	.uleb128 0xe
	.string	"WUTCNT"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x171
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x378
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VAL"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x35b2
	.uleb128 0x11
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x36ce
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x381
	.uaword	0x171
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x385
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x3626
	.uleb128 0x11
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x379e
	.uleb128 0xe
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"SMU"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"SW"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"STM0"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"STM1"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"STM2"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x394
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x36eb
	.uleb128 0x11
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x398
	.uaword	0x393e
	.uleb128 0xe
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SMU"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SW"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"STM0"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PORST"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"CB0"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"CB1"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CB3"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"SWD"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"reserved_29"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x37ba
	.uleb128 0x11
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x399b
	.uleb128 0xe
	.string	"HBT"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x171
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x395b
	.uleb128 0x11
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x3a9d
	.uleb128 0xe
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x171
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"FTM"
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"FCBAE"
	.byte	0x7
	.uahalf	0x3be
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x3c0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x39b8
	.uleb128 0x11
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x3b0f
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x171
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x3ab9
	.uleb128 0x11
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x3bd1
	.uleb128 0xe
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x3d6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"DATM"
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3d9
	.uaword	0x171
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x3da
	.uaword	0x3b2d
	.uleb128 0x11
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x3c5e
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x3bed
	.uleb128 0x11
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x3cec
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x3c7b
	.uleb128 0x11
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x3d7a
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x3d09
	.uleb128 0x11
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x3e09
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x400
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x401
	.uaword	0x171
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x402
	.uaword	0x3d97
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x405
	.uaword	0x3e8e
	.uleb128 0xe
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PW"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x3e8e
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"REL"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x171
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x3e27
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x3f77
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x410
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x7
	.uahalf	0x411
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"DR"
	.byte	0x7
	.uahalf	0x412
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x413
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"UR"
	.byte	0x7
	.uahalf	0x415
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PAR"
	.byte	0x7
	.uahalf	0x416
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"TCR"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x418
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x419
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x41a
	.uaword	0x3eb4
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x4065
	.uleb128 0xe
	.string	"AE"
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"OE"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x7
	.uahalf	0x421
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"DS"
	.byte	0x7
	.uahalf	0x422
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"TO"
	.byte	0x7
	.uahalf	0x423
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x7
	.uahalf	0x424
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"US"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PAS"
	.byte	0x7
	.uahalf	0x426
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"TCS"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TCT"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x7
	.uahalf	0x429
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x3f98
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x42d
	.uaword	0x40e9
	.uleb128 0xe
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x7
	.uahalf	0x430
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PW"
	.byte	0x7
	.uahalf	0x431
	.uaword	0x3e8e
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"REL"
	.byte	0x7
	.uahalf	0x432
	.uaword	0x3e8e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x433
	.uaword	0x4084
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x436
	.uaword	0x41dc
	.uleb128 0xe
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x438
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x439
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x7
	.uahalf	0x43a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"DR"
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"UR"
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PAR"
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"TCR"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x441
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x442
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x443
	.uaword	0x4108
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x446
	.uaword	0x42c6
	.uleb128 0xe
	.string	"AE"
	.byte	0x7
	.uahalf	0x448
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"OE"
	.byte	0x7
	.uahalf	0x449
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"DS"
	.byte	0x7
	.uahalf	0x44b
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"TO"
	.byte	0x7
	.uahalf	0x44c
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"US"
	.byte	0x7
	.uahalf	0x44e
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PAS"
	.byte	0x7
	.uahalf	0x44f
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"TCS"
	.byte	0x7
	.uahalf	0x450
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TCT"
	.byte	0x7
	.uahalf	0x451
	.uaword	0x171
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x7
	.uahalf	0x452
	.uaword	0x171
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x453
	.uaword	0x41fb
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x430b
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x578
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x460
	.uaword	0x42e3
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x463
	.uaword	0x434a
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x465
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x466
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x5c0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x468
	.uaword	0x4322
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x4389
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x46d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x46e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x642
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x470
	.uaword	0x4361
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x473
	.uaword	0x43c9
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x476
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x477
	.uaword	0x747
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x478
	.uaword	0x43a1
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x4409
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x837
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x43e1
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x483
	.uaword	0x4449
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x485
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x486
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x487
	.uaword	0x8b0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x488
	.uaword	0x4421
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x4489
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x98b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x4461
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x493
	.uaword	0x44c9
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x495
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x496
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x497
	.uaword	0xa5e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x498
	.uaword	0x44a1
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x4509
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x49d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x49e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x49f
	.uaword	0xad7
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x4a0
	.uaword	0x44e1
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x4549
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4a6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4a7
	.uaword	0xb34
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x4a8
	.uaword	0x4521
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4ab
	.uaword	0x4589
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4ad
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4ae
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4af
	.uaword	0xbfd
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x4b0
	.uaword	0x4561
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4b3
	.uaword	0x45c8
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4b6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0xc92
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x45a0
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4bb
	.uaword	0x4607
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4bd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4be
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4bf
	.uaword	0xd38
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x4c0
	.uaword	0x45df
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c3
	.uaword	0x4646
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4c5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4c6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4c7
	.uaword	0xdc1
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x4c8
	.uaword	0x461e
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4cb
	.uaword	0x4686
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4cd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4ce
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4cf
	.uaword	0xf0a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x4d0
	.uaword	0x465e
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4d3
	.uaword	0x46c3
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4d5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4d6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0xfdc
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x469b
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4db
	.uaword	0x4700
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4dd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4de
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4df
	.uaword	0x10ce
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x4e0
	.uaword	0x46d8
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e3
	.uaword	0x473d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4e5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4e6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4e7
	.uaword	0x1139
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x4e8
	.uaword	0x4715
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4eb
	.uaword	0x477c
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4ee
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4ef
	.uaword	0x11a5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x4f0
	.uaword	0x4754
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f3
	.uaword	0x47bc
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4f5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4f6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4f7
	.uaword	0x123f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x4794
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fb
	.uaword	0x47fd
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x4fd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x4fe
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x4ff
	.uaword	0x12d7
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x500
	.uaword	0x47d5
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x503
	.uaword	0x4840
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x505
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x506
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x507
	.uaword	0x13d2
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x508
	.uaword	0x4818
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x50b
	.uaword	0x4883
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x50d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x50e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x50f
	.uaword	0x147f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x510
	.uaword	0x485b
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x513
	.uaword	0x48c4
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x515
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x516
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x517
	.uaword	0x151d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x518
	.uaword	0x489c
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x51b
	.uaword	0x4906
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x51d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x51e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x15b4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x520
	.uaword	0x48de
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x523
	.uaword	0x494a
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x525
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x526
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x527
	.uaword	0x1677
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x528
	.uaword	0x4922
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x52b
	.uaword	0x498d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x52e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0x1797
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x530
	.uaword	0x4965
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x533
	.uaword	0x49d0
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x535
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x536
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x537
	.uaword	0x1870
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x538
	.uaword	0x49a8
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x53b
	.uaword	0x4a13
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x53d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x53e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x53f
	.uaword	0x197d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x540
	.uaword	0x49eb
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x543
	.uaword	0x4a53
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x545
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x546
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x547
	.uaword	0x1a27
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x548
	.uaword	0x4a2b
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x54b
	.uaword	0x4a94
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x54d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x54e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x54f
	.uaword	0x1af8
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x4a6c
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x553
	.uaword	0x4ad3
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x555
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x556
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x557
	.uaword	0x1b96
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x558
	.uaword	0x4aab
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x55b
	.uaword	0x4b0f
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x55d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x55e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x55f
	.uaword	0x1ceb
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x560
	.uaword	0x4ae7
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x563
	.uaword	0x4b4b
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x565
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x566
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x567
	.uaword	0x1d5c
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x568
	.uaword	0x4b23
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x56b
	.uaword	0x4b86
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x56e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x56f
	.uaword	0x1f27
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x570
	.uaword	0x4b5e
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x573
	.uaword	0x4bc3
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x575
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x576
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x577
	.uaword	0x1f8a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x578
	.uaword	0x4b9b
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x57b
	.uaword	0x4bfe
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x57e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x57f
	.uaword	0x200f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x580
	.uaword	0x4bd6
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x583
	.uaword	0x4c3b
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x585
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x586
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x209c
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x588
	.uaword	0x4c13
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x58b
	.uaword	0x4c7e
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x58d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x58e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x58f
	.uaword	0x213c
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x590
	.uaword	0x4c56
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x593
	.uaword	0x4cc1
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x595
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x596
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x597
	.uaword	0x21bb
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x598
	.uaword	0x4c99
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x59b
	.uaword	0x4d04
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x59e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x59f
	.uaword	0x223b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x7
	.uahalf	0x5a0
	.uaword	0x4cdc
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a3
	.uaword	0x4d44
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5a6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5a7
	.uaword	0x22ac
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x4d1c
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ab
	.uaword	0x4d84
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5ad
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5ae
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x231a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x5b0
	.uaword	0x4d5c
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b3
	.uaword	0x4dc2
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5b5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5b6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5b7
	.uaword	0x23b3
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x5b8
	.uaword	0x4d9a
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5bb
	.uaword	0x4dfe
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5bd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5be
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5bf
	.uaword	0x24ef
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x5c0
	.uaword	0x4dd6
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c3
	.uaword	0x4e3d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5c5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5c6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5c7
	.uaword	0x2555
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x5c8
	.uaword	0x4e15
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cb
	.uaword	0x4e79
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5ce
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5cf
	.uaword	0x2653
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x5d0
	.uaword	0x4e51
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d3
	.uaword	0x4eb8
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5d5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5d6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x26d7
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x5d8
	.uaword	0x4e90
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5db
	.uaword	0x4efa
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5dd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5de
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x2748
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x5e0
	.uaword	0x4ed2
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e3
	.uaword	0x4f38
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5e5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5e6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5e7
	.uaword	0x27cf
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x5e8
	.uaword	0x4f10
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5eb
	.uaword	0x4f74
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5ed
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5ee
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5ef
	.uaword	0x289d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x5f0
	.uaword	0x4f4c
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f3
	.uaword	0x4fb1
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5f6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5f7
	.uaword	0x29d6
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x5f8
	.uaword	0x4f89
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x5fb
	.uaword	0x4ff1
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x5fd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x5fe
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x2a79
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x4fc9
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x603
	.uaword	0x5031
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x605
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x606
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x607
	.uaword	0x2ad9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x608
	.uaword	0x5009
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x60b
	.uaword	0x5071
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x60d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x60e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x60f
	.uaword	0x2c17
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x610
	.uaword	0x5049
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x613
	.uaword	0x50b5
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x615
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x616
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x617
	.uaword	0x2cc2
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x618
	.uaword	0x508d
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x61b
	.uaword	0x50f9
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x61e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x61f
	.uaword	0x2d8a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x620
	.uaword	0x50d1
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x623
	.uaword	0x513d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x625
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x626
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x2e6d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x628
	.uaword	0x5115
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x62b
	.uaword	0x517d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x62d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x62e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x62f
	.uaword	0x2eff
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x630
	.uaword	0x5155
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x633
	.uaword	0x51bb
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x635
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x636
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x30fa
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x638
	.uaword	0x5193
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x63b
	.uaword	0x51fb
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x63d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x63e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x63f
	.uaword	0x31aa
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x640
	.uaword	0x51d3
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x643
	.uaword	0x523b
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x645
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x646
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x647
	.uaword	0x3253
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWCR3"
	.byte	0x7
	.uahalf	0x648
	.uaword	0x5213
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x64b
	.uaword	0x527b
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x64e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x64f
	.uaword	0x3461
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x650
	.uaword	0x5253
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x653
	.uaword	0x52bc
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x655
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x656
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x657
	.uaword	0x3591
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x5294
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x65b
	.uaword	0x5300
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x65d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x65e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x65f
	.uaword	0x3607
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_PMSWUTCNT"
	.byte	0x7
	.uahalf	0x660
	.uaword	0x52d8
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x663
	.uaword	0x5342
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x665
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x666
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x667
	.uaword	0x379e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x668
	.uaword	0x531a
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x66b
	.uaword	0x5381
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x66d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x66e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x66f
	.uaword	0x36ce
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x670
	.uaword	0x5359
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x673
	.uaword	0x53c1
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x675
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x676
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x393e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x5399
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x67b
	.uaword	0x5401
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x67d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x67e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x67f
	.uaword	0x399b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x680
	.uaword	0x53d9
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x683
	.uaword	0x5441
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x685
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x686
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x687
	.uaword	0x3a9d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x688
	.uaword	0x5419
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x68b
	.uaword	0x5480
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x68d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x68e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x3b0f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x690
	.uaword	0x5458
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x693
	.uaword	0x54c1
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x695
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x696
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x697
	.uaword	0x3bd1
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x698
	.uaword	0x5499
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x69b
	.uaword	0x5500
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x69d
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x69e
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x69f
	.uaword	0x3c5e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x6a0
	.uaword	0x54d8
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x5540
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6a6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6a7
	.uaword	0x3cec
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x6a8
	.uaword	0x5518
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ab
	.uaword	0x5580
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6ae
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6af
	.uaword	0x3d7a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x5558
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b3
	.uaword	0x55c0
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6b5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6b6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x3e09
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x6b8
	.uaword	0x5598
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6bb
	.uaword	0x5601
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6bd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6be
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6bf
	.uaword	0x3e93
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x6c0
	.uaword	0x55d9
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6c3
	.uaword	0x5645
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6c5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6c6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6c7
	.uaword	0x3f77
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x6c8
	.uaword	0x561d
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6cb
	.uaword	0x5689
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6cd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6ce
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6cf
	.uaword	0x4065
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x6d0
	.uaword	0x5661
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d3
	.uaword	0x56cb
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6d5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6d6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6d7
	.uaword	0x40e9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x56a3
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6db
	.uaword	0x570d
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6dd
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6de
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6df
	.uaword	0x41dc
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x6e0
	.uaword	0x56e5
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x6e3
	.uaword	0x574f
	.uleb128 0x14
	.string	"U"
	.byte	0x7
	.uahalf	0x6e5
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x7
	.uahalf	0x6e6
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x42c6
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x6e8
	.uaword	0x5727
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6f3
	.uaword	0x57a9
	.uleb128 0x15
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6f5
	.uaword	0x5601
	.byte	0
	.uleb128 0x15
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6f6
	.uaword	0x5645
	.byte	0x4
	.uleb128 0x15
	.string	"SR"
	.byte	0x7
	.uahalf	0x6f7
	.uaword	0x5689
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x7
	.uahalf	0x6f8
	.uaword	0x57c0
	.uleb128 0x12
	.uaword	0x5767
	.uleb128 0x11
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6fb
	.uaword	0x5805
	.uleb128 0x15
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x56cb
	.byte	0
	.uleb128 0x15
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6fe
	.uaword	0x570d
	.byte	0x4
	.uleb128 0x15
	.string	"SR"
	.byte	0x7
	.uahalf	0x6ff
	.uaword	0x574f
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU_WDTS"
	.byte	0x7
	.uahalf	0x700
	.uaword	0x581a
	.uleb128 0x12
	.uaword	0x57c5
	.uleb128 0x16
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x70d
	.uaword	0x5f69
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x70f
	.uaword	0x5f69
	.byte	0
	.uleb128 0x15
	.string	"ID"
	.byte	0x7
	.uahalf	0x710
	.uaword	0x4b4b
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x711
	.uaword	0x5f85
	.byte	0xc
	.uleb128 0x15
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x712
	.uaword	0x4dfe
	.byte	0x10
	.uleb128 0x15
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x713
	.uaword	0x513d
	.byte	0x14
	.uleb128 0x15
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x714
	.uaword	0x4fb1
	.byte	0x18
	.uleb128 0x15
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x715
	.uaword	0x4ff1
	.byte	0x1c
	.uleb128 0x15
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x716
	.uaword	0x5031
	.byte	0x20
	.uleb128 0x15
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x717
	.uaword	0x50f9
	.byte	0x24
	.uleb128 0x15
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x718
	.uaword	0x5071
	.byte	0x28
	.uleb128 0x15
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x719
	.uaword	0x50b5
	.byte	0x2c
	.uleb128 0x15
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x71a
	.uaword	0x43c9
	.byte	0x30
	.uleb128 0x15
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x71b
	.uaword	0x4409
	.byte	0x34
	.uleb128 0x15
	.string	"FDR"
	.byte	0x7
	.uahalf	0x71c
	.uaword	0x4ad3
	.byte	0x38
	.uleb128 0x15
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x71d
	.uaword	0x4a94
	.byte	0x3c
	.uleb128 0x15
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x71e
	.uaword	0x4449
	.byte	0x40
	.uleb128 0x15
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x4489
	.byte	0x44
	.uleb128 0x15
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x720
	.uaword	0x44c9
	.byte	0x48
	.uleb128 0x15
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x721
	.uaword	0x4509
	.byte	0x4c
	.uleb128 0x15
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x722
	.uaword	0x53c1
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x723
	.uaword	0x5f85
	.byte	0x54
	.uleb128 0x15
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x724
	.uaword	0x5342
	.byte	0x58
	.uleb128 0x15
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x725
	.uaword	0x4389
	.byte	0x5c
	.uleb128 0x15
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x726
	.uaword	0x5480
	.byte	0x60
	.uleb128 0x15
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x727
	.uaword	0x5381
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x728
	.uaword	0x5f85
	.byte	0x68
	.uleb128 0x15
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x48c4
	.byte	0x6c
	.uleb128 0x15
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x5f95
	.byte	0x70
	.uleb128 0x15
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x72b
	.uaword	0x477c
	.byte	0x78
	.uleb128 0x15
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x72c
	.uaword	0x54c1
	.byte	0x7c
	.uleb128 0x15
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x72d
	.uaword	0x4549
	.byte	0x80
	.uleb128 0x15
	.string	"reserved_84"
	.byte	0x7
	.uahalf	0x72e
	.uaword	0x5fa5
	.byte	0x84
	.uleb128 0x15
	.string	"PDR"
	.byte	0x7
	.uahalf	0x72f
	.uaword	0x4f38
	.byte	0x9c
	.uleb128 0x15
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x730
	.uaword	0x4bfe
	.byte	0xa0
	.uleb128 0x15
	.string	"OUT"
	.byte	0x7
	.uahalf	0x731
	.uaword	0x4e3d
	.byte	0xa4
	.uleb128 0x15
	.string	"OMR"
	.byte	0x7
	.uahalf	0x732
	.uaword	0x4dc2
	.byte	0xa8
	.uleb128 0x15
	.string	"IN"
	.byte	0x7
	.uahalf	0x733
	.uaword	0x4bc3
	.byte	0xac
	.uleb128 0x15
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x734
	.uaword	0x4a13
	.byte	0xb0
	.uleb128 0x15
	.string	"reserved_B4"
	.byte	0x7
	.uahalf	0x735
	.uaword	0x5f85
	.byte	0xb4
	.uleb128 0x15
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x736
	.uaword	0x47bc
	.byte	0xb8
	.uleb128 0x15
	.string	"reserved_BC"
	.byte	0x7
	.uahalf	0x737
	.uaword	0x5f85
	.byte	0xbc
	.uleb128 0x15
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x738
	.uaword	0x5441
	.byte	0xc0
	.uleb128 0x15
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x739
	.uaword	0x5f85
	.byte	0xc4
	.uleb128 0x15
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x73a
	.uaword	0x51bb
	.byte	0xc8
	.uleb128 0x15
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x73b
	.uaword	0x527b
	.byte	0xcc
	.uleb128 0x15
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x73c
	.uaword	0x52bc
	.byte	0xd0
	.uleb128 0x15
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x73d
	.uaword	0x5fb5
	.byte	0xd4
	.uleb128 0x15
	.string	"reserved_D8"
	.byte	0x7
	.uahalf	0x73e
	.uaword	0x5f69
	.byte	0xd8
	.uleb128 0x15
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x4646
	.byte	0xe0
	.uleb128 0x15
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x740
	.uaword	0x45c8
	.byte	0xe4
	.uleb128 0x15
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x741
	.uaword	0x51fb
	.byte	0xe8
	.uleb128 0x15
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x742
	.uaword	0x5f85
	.byte	0xec
	.uleb128 0x15
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x743
	.uaword	0x5805
	.byte	0xf0
	.uleb128 0x15
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x744
	.uaword	0x4700
	.byte	0xfc
	.uleb128 0x18
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x745
	.uaword	0x5fd5
	.uahalf	0x100
	.uleb128 0x18
	.string	"reserved_10C"
	.byte	0x7
	.uahalf	0x746
	.uaword	0x5fa5
	.uahalf	0x10c
	.uleb128 0x18
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x747
	.uaword	0x55c0
	.uahalf	0x124
	.uleb128 0x18
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x748
	.uaword	0x5580
	.uahalf	0x128
	.uleb128 0x18
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x749
	.uaword	0x5500
	.uahalf	0x12c
	.uleb128 0x18
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x5540
	.uahalf	0x130
	.uleb128 0x18
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x74b
	.uaword	0x4d04
	.uahalf	0x134
	.uleb128 0x18
	.string	"reserved_138"
	.byte	0x7
	.uahalf	0x74c
	.uaword	0x5f85
	.uahalf	0x138
	.uleb128 0x18
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x74d
	.uaword	0x4d44
	.uahalf	0x13c
	.uleb128 0x18
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x74e
	.uaword	0x4589
	.uahalf	0x140
	.uleb128 0x18
	.string	"MANID"
	.byte	0x7
	.uahalf	0x74f
	.uaword	0x4d84
	.uahalf	0x144
	.uleb128 0x18
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x750
	.uaword	0x5f69
	.uahalf	0x148
	.uleb128 0x18
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x751
	.uaword	0x5401
	.uahalf	0x150
	.uleb128 0x18
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x752
	.uaword	0x5fda
	.uahalf	0x154
	.uleb128 0x18
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x753
	.uaword	0x4c3b
	.uahalf	0x164
	.uleb128 0x18
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x754
	.uaword	0x4c7e
	.uahalf	0x168
	.uleb128 0x18
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x755
	.uaword	0x4cc1
	.uahalf	0x16c
	.uleb128 0x18
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x756
	.uaword	0x5fea
	.uahalf	0x170
	.uleb128 0x18
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x757
	.uaword	0x4efa
	.uahalf	0x18c
	.uleb128 0x18
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x758
	.uaword	0x5ffa
	.uahalf	0x190
	.uleb128 0x18
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x759
	.uaword	0x47fd
	.uahalf	0x19c
	.uleb128 0x18
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x75a
	.uaword	0x4a53
	.uahalf	0x1a0
	.uleb128 0x18
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x75b
	.uaword	0x4883
	.uahalf	0x1a4
	.uleb128 0x18
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x75c
	.uaword	0x4840
	.uahalf	0x1a8
	.uleb128 0x18
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x75d
	.uaword	0x5f85
	.uahalf	0x1ac
	.uleb128 0x18
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x75e
	.uaword	0x494a
	.uahalf	0x1b0
	.uleb128 0x18
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x75f
	.uaword	0x498d
	.uahalf	0x1b4
	.uleb128 0x18
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x49d0
	.uahalf	0x1b8
	.uleb128 0x18
	.string	"reserved_1BC"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x5f69
	.uahalf	0x1bc
	.uleb128 0x18
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x762
	.uaword	0x4906
	.uahalf	0x1c4
	.uleb128 0x18
	.string	"reserved_1C8"
	.byte	0x7
	.uahalf	0x763
	.uaword	0x600a
	.uahalf	0x1c8
	.uleb128 0x18
	.string	"PMSWUTCNT"
	.byte	0x7
	.uahalf	0x764
	.uaword	0x5300
	.uahalf	0x1dc
	.uleb128 0x18
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x765
	.uaword	0x4eb8
	.uahalf	0x1e0
	.uleb128 0x18
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x766
	.uaword	0x4e79
	.uahalf	0x1e4
	.uleb128 0x18
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x767
	.uaword	0x601a
	.uahalf	0x1e8
	.uleb128 0x18
	.string	"EICR"
	.byte	0x7
	.uahalf	0x768
	.uaword	0x602a
	.uahalf	0x210
	.uleb128 0x18
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x769
	.uaword	0x46c3
	.uahalf	0x220
	.uleb128 0x18
	.string	"FMR"
	.byte	0x7
	.uahalf	0x76a
	.uaword	0x4b0f
	.uahalf	0x224
	.uleb128 0x18
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x4f74
	.uahalf	0x228
	.uleb128 0x18
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x76c
	.uaword	0x603a
	.uahalf	0x22c
	.uleb128 0x18
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x76d
	.uaword	0x5f85
	.uahalf	0x23c
	.uleb128 0x18
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x76e
	.uaword	0x4607
	.uahalf	0x240
	.uleb128 0x18
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x76f
	.uaword	0x604a
	.uahalf	0x244
	.uleb128 0x18
	.string	"PMSWCR3"
	.byte	0x7
	.uahalf	0x770
	.uaword	0x523b
	.uahalf	0x300
	.uleb128 0x18
	.string	"reserved_304"
	.byte	0x7
	.uahalf	0x771
	.uaword	0x605a
	.uahalf	0x304
	.uleb128 0x18
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x772
	.uaword	0x434a
	.uahalf	0x3f8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x773
	.uaword	0x430b
	.uahalf	0x3fc
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x5f79
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x5f95
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.uaword	0x473d
	.uaword	0x5fa5
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x5fb5
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x17
	.byte	0
	.uleb128 0x19
	.uaword	0x517d
	.uaword	0x5fc5
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x57a9
	.uaword	0x5fd5
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x5fc5
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x5fea
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x5ffa
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x1b
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x600a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0xb
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x601a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x13
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x602a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x27
	.byte	0
	.uleb128 0x19
	.uaword	0x4686
	.uaword	0x603a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.uaword	0x4b86
	.uaword	0x604a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x605a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0xbb
	.byte	0
	.uleb128 0x19
	.uaword	0x25b
	.uaword	0x606a
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0xf3
	.byte	0
	.uleb128 0x10
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x774
	.uaword	0x607a
	.uleb128 0x12
	.uaword	0x581f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0x60ad
	.uleb128 0x4
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x8
	.byte	0x9b
	.uaword	0x60e7
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x9e
	.uaword	0x60ad
	.uleb128 0xb
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x6130
	.uleb128 0xc
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x171
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x6101
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x165
	.uaword	0x6171
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x6130
	.byte	0
	.uleb128 0x10
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x6149
	.uleb128 0xb
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x62d5
	.uleb128 0xc
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x171
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x171
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x171
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x171
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x171
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x6186
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.uahalf	0x2be
	.uaword	0x6318
	.uleb128 0x14
	.string	"U"
	.byte	0xa
	.uahalf	0x2c0
	.uaword	0x171
	.uleb128 0x14
	.string	"I"
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x19b
	.uleb128 0x14
	.string	"B"
	.byte	0xa
	.uahalf	0x2c2
	.uaword	0x62d5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x2c3
	.uaword	0x62f0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x606a
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x94
	.uaword	0x31c
	.uleb128 0x1c
	.byte	0x8
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x6382
	.uleb128 0x15
	.string	"value"
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x29d
	.byte	0
	.uleb128 0x15
	.string	"mask"
	.byte	0x2
	.uahalf	0x2d7
	.uaword	0x29d
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x635b
	.uleb128 0x1c
	.byte	0x8
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x63f2
	.uleb128 0x15
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2df
	.uaword	0x26c
	.byte	0
	.uleb128 0x15
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2e0
	.uaword	0x26c
	.byte	0x1
	.uleb128 0x15
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2e1
	.uaword	0x26c
	.byte	0x2
	.uleb128 0x17
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2e2
	.uaword	0x2f4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2e3
	.uaword	0x63a4
	.uleb128 0x1c
	.byte	0xc
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x6453
	.uleb128 0x15
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x26c
	.byte	0
	.uleb128 0x17
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0x2f4
	.byte	0x4
	.uleb128 0x15
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x6335
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x6416
	.uleb128 0x1c
	.byte	0x28
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x64cb
	.uleb128 0x17
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2f6
	.uaword	0x6382
	.byte	0
	.uleb128 0x17
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x6382
	.byte	0x8
	.uleb128 0x15
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2f8
	.uaword	0x6382
	.byte	0x10
	.uleb128 0x15
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2f9
	.uaword	0x6382
	.byte	0x18
	.uleb128 0x15
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2fa
	.uaword	0x6382
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x6474
	.uleb128 0x1c
	.byte	0x8
	.byte	0x2
	.uahalf	0x2ff
	.uaword	0x651c
	.uleb128 0x15
	.string	"value"
	.byte	0x2
	.uahalf	0x301
	.uaword	0x29d
	.byte	0
	.uleb128 0x15
	.string	"mask"
	.byte	0x2
	.uahalf	0x302
	.uaword	0x29d
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x303
	.uaword	0x64f5
	.uleb128 0x1c
	.byte	0x10
	.byte	0x2
	.uahalf	0x308
	.uaword	0x6590
	.uleb128 0x15
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x26c
	.byte	0
	.uleb128 0x15
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x30b
	.uaword	0x6590
	.byte	0x4
	.uleb128 0x17
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x30c
	.uaword	0x63f2
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6453
	.uleb128 0x10
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x30d
	.uaword	0x6543
	.uleb128 0x1c
	.byte	0x44
	.byte	0x2
	.uahalf	0x315
	.uaword	0x6623
	.uleb128 0x15
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x317
	.uaword	0x6596
	.byte	0
	.uleb128 0x15
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x318
	.uaword	0x64cb
	.byte	0x10
	.uleb128 0x15
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x319
	.uaword	0x651c
	.byte	0x38
	.uleb128 0x15
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x31a
	.uaword	0x29d
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x31b
	.uaword	0x65b5
	.uleb128 0x1c
	.byte	0x8
	.byte	0x2
	.uahalf	0x31f
	.uaword	0x6653
	.uleb128 0x17
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x321
	.uaword	0x63f2
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"IfxScuCcu_ErayPllConfig"
	.byte	0x2
	.uahalf	0x322
	.uaword	0x663c
	.uleb128 0x1d
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x444
	.byte	0x1
	.uaword	0x2f4
	.byte	0x3
	.uleb128 0x1e
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x1a1
	.byte	0x1
	.uaword	0x2f4
	.byte	0x1
	.uaword	0x66ce
	.uleb128 0x1f
	.string	"freq"
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x2f4
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x1e6
	.byte	0x1
	.uaword	0x2f4
	.byte	0x1
	.uaword	0x6721
	.uleb128 0x1f
	.string	"scu"
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x632f
	.uleb128 0x1f
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x2f4
	.uleb128 0x1f
	.string	"freq"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x2f4
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x429
	.byte	0x1
	.uaword	0x2f4
	.byte	0x3
	.uleb128 0x20
	.string	"Ifx__maxu"
	.byte	0x3
	.byte	0xa8
	.byte	0x1
	.uaword	0x29d
	.byte	0x3
	.uaword	0x677a
	.uleb128 0x21
	.string	"a"
	.byte	0x3
	.byte	0xa8
	.uaword	0x29d
	.uleb128 0x21
	.string	"b"
	.byte	0x3
	.byte	0xa8
	.uaword	0x29d
	.uleb128 0x22
	.string	"res"
	.byte	0x3
	.byte	0xaa
	.uaword	0x29d
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x42f
	.byte	0x1
	.uaword	0x2f4
	.byte	0x3
	.uleb128 0x23
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x435
	.byte	0x1
	.uaword	0x2f4
	.byte	0x3
	.uaword	0x67de
	.uleb128 0x1f
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x437
	.uaword	0x2f4
	.byte	0
	.uleb128 0x24
	.uaword	0x6697
	.uaword	.LFB245
	.uaword	.LFE245
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67fc
	.uleb128 0x25
	.uaword	0x66c0
	.uaword	.LLST0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x24c
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6a1b
	.uleb128 0x27
	.string	"cfg"
	.byte	0x1
	.byte	0x71
	.uaword	0x6a1b
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.string	"fPll"
	.byte	0x1
	.byte	0x71
	.uaword	0x29d
	.uaword	.LLST1
	.uleb128 0x29
	.string	"retVal"
	.byte	0x1
	.byte	0x73
	.uaword	0x24c
	.uaword	.LLST2
	.uleb128 0x2a
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x74
	.uaword	0x26c
	.byte	0x2
	.uleb128 0x2b
	.string	"fOsc"
	.byte	0x1
	.byte	0x75
	.uaword	0x29d
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2c
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xc4
	.uaword	.L10
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2e
	.string	"fPllMax"
	.byte	0x1
	.byte	0x7d
	.uaword	0x6a21
	.uaword	0xbebc200
	.uleb128 0x2e
	.string	"fRefMax"
	.byte	0x1
	.byte	0x7e
	.uaword	0x6a21
	.uaword	0x16e3600
	.uleb128 0x2e
	.string	"fRefMin"
	.byte	0x1
	.byte	0x7f
	.uaword	0x6a21
	.uaword	0x7a1200
	.uleb128 0x2e
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x80
	.uaword	0x6a21
	.uaword	0x17d78400
	.uleb128 0x2e
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x81
	.uaword	0x6a21
	.uaword	0x2faf0800
	.uleb128 0x2a
	.string	"pMin"
	.byte	0x1
	.byte	0x82
	.uaword	0x6a26
	.byte	0x1
	.uleb128 0x2a
	.string	"pMax"
	.byte	0x1
	.byte	0x83
	.uaword	0x6a26
	.byte	0x10
	.uleb128 0x2a
	.string	"k2Min"
	.byte	0x1
	.byte	0x84
	.uaword	0x6a26
	.byte	0x1
	.uleb128 0x2f
	.string	"k2Max"
	.byte	0x1
	.byte	0x85
	.uaword	0x6a26
	.sleb128 -128
	.uleb128 0x2a
	.string	"nMin"
	.byte	0x1
	.byte	0x86
	.uaword	0x6a26
	.byte	0x1
	.uleb128 0x2f
	.string	"nMax"
	.byte	0x1
	.byte	0x87
	.uaword	0x6a26
	.sleb128 -128
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.byte	0x89
	.uaword	0x29d
	.uaword	.LLST3
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.byte	0x8a
	.uaword	0x29d
	.uaword	.LLST4
	.uleb128 0x29
	.string	"k2"
	.byte	0x1
	.byte	0x8b
	.uaword	0x29d
	.uaword	.LLST5
	.uleb128 0x2b
	.string	"k2Steps"
	.byte	0x1
	.byte	0x8c
	.uaword	0x29d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.string	"bestK2"
	.byte	0x1
	.byte	0x8d
	.uaword	0x29d
	.uaword	.LLST6
	.uleb128 0x29
	.string	"bestN"
	.byte	0x1
	.byte	0x8d
	.uaword	0x29d
	.uaword	.LLST7
	.uleb128 0x29
	.string	"bestP"
	.byte	0x1
	.byte	0x8d
	.uaword	0x29d
	.uaword	.LLST8
	.uleb128 0x29
	.string	"fRef"
	.byte	0x1
	.byte	0x8f
	.uaword	0x2ab
	.uaword	.LLST9
	.uleb128 0x29
	.string	"fVco"
	.byte	0x1
	.byte	0x8f
	.uaword	0x2ab
	.uaword	.LLST10
	.uleb128 0x29
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x90
	.uaword	0x2ab
	.uaword	.LLST11
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.string	"fPllError"
	.byte	0x1
	.byte	0xaa
	.uaword	0x2ab
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6623
	.uleb128 0x30
	.uaword	0x29d
	.uleb128 0x30
	.uaword	0x26c
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.uaword	0x6697
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6a84
	.uleb128 0x32
	.uaword	0x66c0
	.byte	0x4
	.uaword	0x4cbebc20
	.uleb128 0x33
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x67de
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.uaword	0x6b18
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x632f
	.sleb128 -268214272
	.uleb128 0x36
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x2f4
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.string	"freq"
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x2f4
	.uaword	.LLST13
	.uleb128 0x38
	.uaword	0x6697
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1bd
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x25
	.uaword	0x66c0
	.uaword	.LLST14
	.uleb128 0x39
	.uaword	.LVL32
	.uaword	0x67de
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getPllErayVcoFrequency"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6b90
	.uleb128 0x37
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x2f4
	.uaword	.LLST15
	.uleb128 0x38
	.uaword	0x6697
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1df
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x25
	.uaword	0x66c0
	.uaword	.LLST16
	.uleb128 0x39
	.uaword	.LVL42
	.uaword	0x67de
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x66ce
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.uaword	0x6c04
	.uleb128 0x3c
	.uaword	0x66f7
	.sleb128 -268214272
	.uleb128 0x3d
	.uaword	0x6703
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	0x6713
	.uaword	.LLST17
	.uleb128 0x3e
	.uaword	0x6697
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x6bea
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x25
	.uaword	0x66c0
	.uaword	.LLST18
	.uleb128 0x39
	.uaword	.LVL48
	.uaword	0x67de
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x40
	.uaword	0x66f7
	.uleb128 0x40
	.uaword	0x6703
	.uleb128 0x40
	.uaword	0x6713
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x202
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6c78
	.uleb128 0x37
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x204
	.uaword	0x2f4
	.uaword	.LLST19
	.uleb128 0x38
	.uaword	0x6697
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x20e
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x25
	.uaword	0x66c0
	.uaword	.LLST20
	.uleb128 0x39
	.uaword	.LVL58
	.uaword	0x67de
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x215
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6cce
	.uleb128 0x36
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x2f4
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x66ce
	.byte	0
	.uleb128 0x41
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x518
	.byte	0x1
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d4b
	.uleb128 0x42
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x518
	.uaword	0x2f4
	.uaword	.LLST21
	.uleb128 0x36
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x51a
	.uaword	0x29d
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x51b
	.uaword	0x29d
	.byte	0x1
	.byte	0x52
	.uleb128 0x43
	.uaword	0x6673
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x51a
	.uleb128 0x39
	.uaword	.LVL62
	.uaword	0x6c78
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6dae
	.uleb128 0x29
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0xeb
	.uaword	0x2f4
	.uaword	.LLST22
	.uleb128 0x44
	.uaword	.LASF40
	.byte	0x1
	.byte	0xec
	.uaword	0x2f4
	.uaword	.LLST23
	.uleb128 0x39
	.uaword	.LVL64
	.uaword	0x6c78
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e14
	.uleb128 0x37
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x2f4
	.uaword	.LLST24
	.uleb128 0x45
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x2f4
	.uaword	.LLST25
	.uleb128 0x39
	.uaword	.LVL76
	.uaword	0x6c78
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e70
	.uleb128 0x44
	.uaword	.LASF41
	.byte	0x1
	.byte	0xd9
	.uaword	0x2f4
	.uaword	.LLST26
	.uleb128 0x44
	.uaword	.LASF37
	.byte	0x1
	.byte	0xda
	.uaword	0x43c9
	.uaword	.LLST27
	.uleb128 0x39
	.uaword	.LVL93
	.uaword	0x6dae
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x22a
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ed6
	.uleb128 0x37
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x2f4
	.uaword	.LLST28
	.uleb128 0x45
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x2f4
	.uaword	.LLST29
	.uleb128 0x39
	.uaword	.LVL95
	.uaword	0x6c78
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x182
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f52
	.uleb128 0x36
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x184
	.uaword	0x2f4
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x2f4
	.uaword	.LLST30
	.uleb128 0x37
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x4ad3
	.uaword	.LLST31
	.uleb128 0x39
	.uaword	.LVL108
	.uaword	0x6e70
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fb8
	.uleb128 0x37
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x2f4
	.uaword	.LLST32
	.uleb128 0x45
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x257
	.uaword	0x2f4
	.uaword	.LLST33
	.uleb128 0x39
	.uaword	.LVL116
	.uaword	0x6c78
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7026
	.uleb128 0x42
	.string	"cpu"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x7026
	.uaword	.LLST34
	.uleb128 0x46
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x115
	.uaword	0x2f4
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x29d
	.uaword	.LLST35
	.uleb128 0x39
	.uaword	.LVL129
	.uaword	0x6f52
	.byte	0
	.uleb128 0x30
	.uaword	0x60e7
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7089
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x2f4
	.uaword	.LLST36
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x43c9
	.uaword	.LLST37
	.uleb128 0x39
	.uaword	.LVL139
	.uaword	0x6f52
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70e6
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x144
	.uaword	0x2f4
	.uaword	.LLST38
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x145
	.uaword	0x43c9
	.uaword	.LLST39
	.uleb128 0x39
	.uaword	.LVL146
	.uaword	0x6f52
	.byte	0
	.uleb128 0x23
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x3e1
	.byte	0x1
	.uaword	0x24c
	.byte	0x1
	.uaword	0x7143
	.uleb128 0x1f
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x2d5
	.uleb128 0x47
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x3e4
	.uaword	0x24c
	.uleb128 0x1f
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0x279
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x27e
	.byte	0x1
	.uaword	0x24c
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7458
	.uleb128 0x42
	.string	"cfg"
	.byte	0x1
	.uahalf	0x27e
	.uaword	0x7458
	.uaword	.LLST40
	.uleb128 0x45
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x280
	.uaword	0x26c
	.uaword	.LLST41
	.uleb128 0x45
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x281
	.uaword	0x279
	.uaword	.LLST42
	.uleb128 0x45
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x281
	.uaword	0x279
	.uaword	.LLST43
	.uleb128 0x45
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x282
	.uaword	0x24c
	.uaword	.LLST44
	.uleb128 0x3e
	.uaword	0x70e6
	.uaword	.LBB65
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x2ac
	.uaword	0x723b
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x25
	.uaword	0x7111
	.uaword	.LLST45
	.uleb128 0x25
	.uaword	0x7124
	.uaword	.LLST46
	.uleb128 0x25
	.uaword	0x7130
	.uaword	.LLST47
	.uleb128 0x39
	.uaword	.LVL159
	.uaword	0x7dce
	.uleb128 0x49
	.uaword	.LVL164
	.uaword	0x7dfa
	.uaword	0x720c
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL166
	.uaword	0x7e24
	.uleb128 0x49
	.uaword	.LVL169
	.uaword	0x7dfa
	.uaword	0x7229
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL170
	.uaword	0x7e24
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0x7395
	.uleb128 0x45
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0x26c
	.uaword	.LLST48
	.uleb128 0x4d
	.uaword	.Ldebug_ranges0+0xb0
	.uaword	0x7272
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x43c9
	.uaword	.LLST49
	.byte	0
	.uleb128 0x4d
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0x728c
	.uleb128 0x45
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x303
	.uaword	0x4409
	.uaword	.LLST50
	.byte	0
	.uleb128 0x4d
	.uaword	.Ldebug_ranges0+0xe0
	.uaword	0x72aa
	.uleb128 0x37
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x314
	.uaword	0x4449
	.uaword	.LLST51
	.byte	0
	.uleb128 0x4d
	.uaword	.Ldebug_ranges0+0xf8
	.uaword	0x72c8
	.uleb128 0x37
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x4509
	.uaword	.LLST52
	.byte	0
	.uleb128 0x4d
	.uaword	.Ldebug_ranges0+0x110
	.uaword	0x72e6
	.uleb128 0x37
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x32b
	.uaword	0x4549
	.uaword	.LLST53
	.byte	0
	.uleb128 0x4c
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0x7329
	.uleb128 0x37
	.string	"fcon"
	.byte	0x1
	.uahalf	0x338
	.uaword	0x6318
	.uaword	.LLST54
	.uleb128 0x49
	.uaword	.LVL193
	.uaword	0x7dfa
	.uaword	0x7318
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL194
	.uaword	0x7e24
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL172
	.uaword	0x7e4c
	.uaword	0x733d
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL173
	.uaword	0x6cce
	.uleb128 0x39
	.uaword	.LVL174
	.uaword	0x6cce
	.uleb128 0x49
	.uaword	.LVL189
	.uaword	0x7e79
	.uaword	0x7363
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL199
	.uaword	0x7e4c
	.uaword	0x7377
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL200
	.uaword	0x7e79
	.uaword	0x738b
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL202
	.uaword	0x6cce
	.byte	0
	.uleb128 0x39
	.uaword	.LVL150
	.uaword	0x7dce
	.uleb128 0x39
	.uaword	.LVL152
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL154
	.uaword	0x7dfa
	.uaword	0x73bb
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL155
	.uaword	0x7e24
	.uaword	0x73cf
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL156
	.uaword	0x7e4c
	.uaword	0x73e3
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL167
	.uaword	0x7e79
	.uaword	0x73f7
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL171
	.uaword	0x7e79
	.uaword	0x740b
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL205
	.uaword	0x7e4c
	.uaword	0x741f
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL206
	.uaword	0x7e79
	.uaword	0x7433
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL207
	.uaword	0x7dfa
	.uaword	0x7447
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL209
	.uaword	0x7e24
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x745e
	.uleb128 0x30
	.uaword	0x6623
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x372
	.byte	0x1
	.uaword	.LFB234
	.uaword	.LFE234
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x749e
	.uleb128 0x42
	.string	"cfg"
	.byte	0x1
	.uahalf	0x372
	.uaword	0x6a1b
	.uaword	.LLST55
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_initErayPll"
	.byte	0x1
	.uahalf	0x378
	.byte	0x1
	.uaword	0x24c
	.uaword	.LFB235
	.uaword	.LFE235
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75ec
	.uleb128 0x42
	.string	"cfg"
	.byte	0x1
	.uahalf	0x378
	.uaword	0x75ec
	.uaword	.LLST56
	.uleb128 0x46
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x37a
	.uaword	0x26c
	.byte	0x1
	.byte	0x5b
	.uleb128 0x45
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x37b
	.uaword	0x279
	.uaword	.LLST57
	.uleb128 0x45
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x37b
	.uaword	0x279
	.uaword	.LLST58
	.uleb128 0x45
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x37c
	.uaword	0x24c
	.uaword	.LLST59
	.uleb128 0x37
	.string	"time_out_ctr"
	.byte	0x1
	.uahalf	0x3b7
	.uaword	0x29d
	.uaword	.LLST60
	.uleb128 0x39
	.uaword	.LVL213
	.uaword	0x7dce
	.uleb128 0x39
	.uaword	.LVL215
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL217
	.uaword	0x7dfa
	.uaword	0x755a
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL219
	.uaword	0x7e24
	.uaword	0x756e
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL220
	.uaword	0x7e4c
	.uaword	0x7582
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL221
	.uaword	0x6cce
	.uleb128 0x49
	.uaword	.LVL222
	.uaword	0x7e79
	.uaword	0x759f
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL225
	.uaword	0x7e4c
	.uaword	0x75b3
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL226
	.uaword	0x7e79
	.uaword	0x75c7
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL227
	.uaword	0x7dfa
	.uaword	0x75db
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL229
	.uaword	0x7e24
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x75f2
	.uleb128 0x30
	.uaword	0x6653
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxScuCcu_initErayPllConfig"
	.byte	0x1
	.uahalf	0x3db
	.byte	0x1
	.uaword	.LFB236
	.uaword	.LFE236
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7637
	.uleb128 0x4f
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3db
	.uaword	0x7637
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6653
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x40e
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7733
	.uleb128 0x42
	.string	"cpu"
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x60e7
	.uaword	.LLST61
	.uleb128 0x42
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x2f4
	.uaword	.LLST62
	.uleb128 0x45
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x410
	.uaword	0x279
	.uaword	.LLST63
	.uleb128 0x37
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x411
	.uaword	0x2f4
	.uaword	.LLST64
	.uleb128 0x37
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x412
	.uaword	0x29d
	.uaword	.LLST65
	.uleb128 0x39
	.uaword	.LVL233
	.uaword	0x6f52
	.uleb128 0x39
	.uaword	.LVL237
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL239
	.uaword	0x7e4c
	.uaword	0x76f1
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL241
	.uaword	0x7e79
	.uaword	0x7705
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL244
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL246
	.uaword	0x7e4c
	.uaword	0x7722
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL249
	.uaword	0x7e79
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x43a
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7843
	.uleb128 0x42
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x43a
	.uaword	0x2f4
	.uaword	.LLST66
	.uleb128 0x45
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x279
	.uaword	.LLST67
	.uleb128 0x46
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x43d
	.uaword	0x4409
	.byte	0x1
	.byte	0x58
	.uleb128 0x45
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x43f
	.uaword	0x2f4
	.uaword	.LLST68
	.uleb128 0x37
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x440
	.uaword	0x29d
	.uaword	.LLST69
	.uleb128 0x3e
	.uaword	0x6745
	.uaword	.LBB83
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x441
	.uaword	0x77ee
	.uleb128 0x50
	.uaword	0x6765
	.byte	0x1
	.uleb128 0x51
	.uaword	0x675c
	.uaword	.LLST70
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x128
	.uleb128 0x25
	.uaword	0x676e
	.uaword	.LLST71
	.byte	0
	.byte	0
	.uleb128 0x52
	.uaword	0x677a
	.uaword	.LBB87
	.uaword	.LBE87
	.byte	0x1
	.uahalf	0x45a
	.uaword	0x780c
	.uleb128 0x39
	.uaword	.LVL263
	.uaword	0x6c78
	.byte	0
	.uleb128 0x39
	.uaword	.LVL252
	.uaword	0x6c78
	.uleb128 0x39
	.uaword	.LVL259
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL261
	.uaword	0x7e4c
	.uaword	0x7832
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL262
	.uaword	0x7e79
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x45e
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7918
	.uleb128 0x42
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x45e
	.uaword	0x2f4
	.uaword	.LLST72
	.uleb128 0x45
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x460
	.uaword	0x279
	.uaword	.LLST73
	.uleb128 0x37
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x461
	.uaword	0x29d
	.uaword	.LLST74
	.uleb128 0x52
	.uaword	0x679e
	.uaword	.LBB89
	.uaword	.LBE89
	.byte	0x1
	.uahalf	0x467
	.uaword	0x78e1
	.uleb128 0x3f
	.uaword	.LBB90
	.uaword	.LBE90
	.uleb128 0x25
	.uaword	0x67c7
	.uaword	.LLST75
	.uleb128 0x39
	.uaword	.LVL275
	.uaword	0x6c04
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL266
	.uaword	0x7ea4
	.uleb128 0x39
	.uaword	.LVL268
	.uaword	0x6c04
	.uleb128 0x49
	.uaword	.LVL270
	.uaword	0x7e4c
	.uaword	0x7907
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x4b
	.uaword	.LVL274
	.uaword	0x7e79
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x46b
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a8b
	.uleb128 0x42
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x46b
	.uaword	0x2f4
	.uaword	.LLST76
	.uleb128 0x37
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x46e
	.uaword	0x279
	.uaword	.LLST77
	.uleb128 0x45
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x46f
	.uaword	0x279
	.uaword	.LLST78
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x470
	.uaword	0x43c9
	.uaword	.LLST79
	.uleb128 0x45
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x471
	.uaword	0x2f4
	.uaword	.LLST80
	.uleb128 0x37
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x472
	.uaword	0x29d
	.uaword	.LLST81
	.uleb128 0x3e
	.uaword	0x6745
	.uaword	.LBB91
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x473
	.uaword	0x79ed
	.uleb128 0x50
	.uaword	0x6765
	.byte	0x2
	.uleb128 0x51
	.uaword	0x675c
	.uaword	.LLST82
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x140
	.uleb128 0x25
	.uaword	0x676e
	.uaword	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL281
	.uaword	0x6c78
	.uleb128 0x39
	.uaword	.LVL289
	.uaword	0x7dce
	.uleb128 0x39
	.uaword	.LVL291
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL293
	.uaword	0x7dfa
	.uaword	0x7a1c
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL294
	.uaword	0x7e24
	.uaword	0x7a30
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL295
	.uaword	0x7e4c
	.uaword	0x7a44
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL297
	.uaword	0x7e79
	.uaword	0x7a58
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL298
	.uaword	0x7dfa
	.uaword	0x7a6c
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL300
	.uaword	0x7e24
	.uaword	0x7a80
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL301
	.byte	0x1
	.uaword	0x6e70
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x49c
	.byte	0x1
	.uaword	0x2f4
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7ba2
	.uleb128 0x42
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x49c
	.uaword	0x2f4
	.uaword	.LLST84
	.uleb128 0x53
	.string	"freq"
	.byte	0x1
	.uahalf	0x49e
	.uaword	0x2f4
	.byte	0x4
	.uaword	0
	.uleb128 0x37
	.string	"source"
	.byte	0x1
	.uahalf	0x49f
	.uaword	0x2f4
	.uaword	.LLST85
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x4a0
	.uaword	0x43c9
	.uaword	.LLST86
	.uleb128 0x45
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x4a1
	.uaword	0x279
	.uaword	.LLST87
	.uleb128 0x37
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x4a2
	.uaword	0x29d
	.uaword	.LLST88
	.uleb128 0x3e
	.uaword	0x6745
	.uaword	.LBB95
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.uahalf	0x4a3
	.uaword	0x7b5d
	.uleb128 0x50
	.uaword	0x6765
	.byte	0x1
	.uleb128 0x51
	.uaword	0x675c
	.uaword	.LLST89
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x25
	.uaword	0x676e
	.uaword	.LLST90
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL303
	.uaword	0x6c78
	.uleb128 0x39
	.uaword	.LVL310
	.uaword	0x7ea4
	.uleb128 0x49
	.uaword	.LVL312
	.uaword	0x7e4c
	.uaword	0x7b83
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL314
	.uaword	0x7e79
	.uaword	0x7b97
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL316
	.byte	0x1
	.uaword	0x6f52
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x4c4
	.byte	0x1
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7cdc
	.uleb128 0x42
	.string	"cfg"
	.byte	0x1
	.uahalf	0x4c4
	.uaword	0x7458
	.uaword	.LLST91
	.uleb128 0x45
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x4c6
	.uaword	0x279
	.uaword	.LLST92
	.uleb128 0x45
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x4c6
	.uaword	0x279
	.uaword	.LLST93
	.uleb128 0x45
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x4c7
	.uaword	0x19b
	.uaword	.LLST94
	.uleb128 0x46
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x4c8
	.uaword	0x26c
	.byte	0x1
	.byte	0x59
	.uleb128 0x39
	.uaword	.LVL318
	.uaword	0x7ea4
	.uleb128 0x39
	.uaword	.LVL320
	.uaword	0x7dce
	.uleb128 0x49
	.uaword	.LVL323
	.uaword	0x7e4c
	.uaword	0x7c49
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL325
	.uaword	0x7e79
	.uaword	0x7c5d
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL326
	.uaword	0x6cce
	.uleb128 0x49
	.uaword	.LVL327
	.uaword	0x7dfa
	.uaword	0x7c7a
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL329
	.uaword	0x7e24
	.uaword	0x7c8e
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL330
	.uaword	0x7e4c
	.uaword	0x7ca2
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL331
	.uaword	0x7e79
	.uaword	0x7cb6
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.uaword	.LVL332
	.uaword	0x7dfa
	.uaword	0x7cca
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL333
	.byte	0x1
	.uaword	0x7e24
	.uleb128 0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x6453
	.uaword	0x7cec
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x51
	.uaword	0x7d1a
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x30
	.uaword	0x7cdc
	.uleb128 0x2b
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x57
	.uaword	0x29d
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x19
	.uaword	0x34a
	.uaword	0x7d54
	.uleb128 0x1a
	.uaword	0x5f79
	.byte	0
	.byte	0
	.uleb128 0x55
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa4
	.uaword	0x7d71
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x7d44
	.uleb128 0x56
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x5d
	.uaword	0x745e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x56
	.string	"IfxScuCcu_defaultErayPllConfig"
	.byte	0x1
	.byte	0x68
	.uaword	0x75f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultErayPllConfig
	.uleb128 0x57
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x181
	.byte	0x1
	.uaword	0x279
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0x7e24
	.uleb128 0x59
	.uaword	0x279
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0x7e4c
	.uleb128 0x59
	.uaword	0x279
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0xb
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.uaword	0x7e79
	.uleb128 0x59
	.uaword	0x279
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0xb
	.byte	0xf9
	.byte	0x1
	.byte	0x1
	.uaword	0x7ea4
	.uleb128 0x59
	.uaword	0x279
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0xb
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x279
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
	.uleb128 0x4
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LFE245
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE216
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE216
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL17
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0x79
	.sleb128 1
	.byte	0xf7
	.uleb128 0x171
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x171
	.byte	0xf7
	.uleb128 0x181
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LFE244
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LFE218
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LFE218
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LFE222
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL94
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0xe
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115
	.uaword	.LFE223
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL128
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL129-1
	.uaword	.LFE219
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL139
	.uaword	.LFE220
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL146
	.uaword	.LFE221
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL149
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL150-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL157
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL152-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL153
	.uaword	.LVL154-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL154-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL149
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL158
	.uaword	.LVL162
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL161
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL165
	.uaword	.LVL166-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL168
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL194
	.uaword	.LVL197
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL202
	.uaword	.LVL203
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL188
	.uaword	.LVL190
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL212
	.uaword	.LVL213-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL213-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL214
	.uaword	.LVL215-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL215-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL217-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL212
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL230
	.uaword	.LFE235
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc34f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL232
	.uaword	.LVL233-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL233-1
	.uaword	.LFE238
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL232
	.uaword	.LVL233-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL233-1
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL238
	.uaword	.LVL243
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x168
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL245
	.uaword	.LFE238
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL238
	.uaword	.LVL239-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL239-1
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL245
	.uaword	.LVL246-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246-1
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL248
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL236
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL243
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL248
	.uaword	.LFE238
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL250
	.uaword	.LVL252-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL252-1
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL254
	.uaword	.LFE239
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL260
	.uaword	.LVL261-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL261-1
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL255
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL264
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL255
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL264
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL265
	.uaword	.LVL266-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL266-1
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL271
	.uaword	.LFE240
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL267
	.uaword	.LVL268-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL268-1
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL269
	.uaword	.LVL270-1
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x168
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x168
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x168
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x171
	.byte	0x9f
	.uaword	.LVL270-1
	.uaword	.LVL271
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x168
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x168
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x168
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x171
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL272
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x168
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x168
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x171
	.byte	0x9f
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL273
	.uaword	.LFE240
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x168
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x168
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x171
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL277
	.uaword	.LVL278
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x168
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x19b
	.byte	0xf7
	.uleb128 0x168
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x168
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x19b
	.byte	0xf7
	.uleb128 0x168
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL280
	.uaword	.LVL281-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL281-1
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL283
	.uaword	.LFE241
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL290
	.uaword	.LVL291-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL291-1
	.uaword	.LVL301
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL293-1
	.uaword	.LVL301
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL296
	.uaword	.LVL299
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL281
	.uaword	.LVL282
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL301
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL284
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL301
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL302
	.uaword	.LVL303-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL303-1
	.uaword	.LVL305
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL305
	.uaword	.LFE242
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x168
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL313
	.uaword	.LVL315
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL311
	.uaword	.LVL312-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL312-1
	.uaword	.LVL316
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL316
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL316
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL317
	.uaword	.LVL318-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL318-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL321
	.uaword	.LVL322
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL322
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL319
	.uaword	.LVL320-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL320-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL321
	.uaword	.LVL324
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL324
	.uaword	.LVL326
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LVL328
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xfc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0
	.uaword	0
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	0
	.uaword	0
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0
	.uaword	0
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	0
	.uaword	0
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LFB245
	.uaword	.LFE245
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB228
	.uaword	.LFE228
	.uaword	.LFB229
	.uaword	.LFE229
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB244
	.uaword	.LFE244
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB232
	.uaword	.LFE232
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB233
	.uaword	.LFE233
	.uaword	.LFB234
	.uaword	.LFE234
	.uaword	.LFB235
	.uaword	.LFE235
	.uaword	.LFB236
	.uaword	.LFE236
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	.LFB241
	.uaword	.LFE241
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF32:
	.string	"PINBWKEN"
.LASF41:
	.string	"frequency"
.LASF37:
	.string	"ccucon0"
.LASF45:
	.string	"endinitSfty_pw"
.LASF30:
	.string	"ESR1WKEN"
.LASF34:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF21:
	.string	"reserved_11"
.LASF20:
	.string	"reserved_12"
.LASF36:
	.string	"waitTime"
.LASF22:
	.string	"reserved_14"
.LASF13:
	.string	"reserved_15"
.LASF11:
	.string	"reserved_16"
.LASF24:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF26:
	.string	"reserved_19"
.LASF31:
	.string	"PINAWKEN"
.LASF38:
	.string	"ccucon1"
.LASF43:
	.string	"smuTrapEnable"
.LASF35:
	.string	"ESR1T"
.LASF25:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF14:
	.string	"reserved_23"
.LASF5:
	.string	"reserved_24"
.LASF3:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF40:
	.string	"sourceFrequency"
.LASF29:
	.string	"OSCDISCDIS"
.LASF48:
	.string	"inputFreq"
.LASF39:
	.string	"pllInitialStep"
.LASF9:
	.string	"SLCK"
.LASF46:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF23:
	.string	"reserved_1"
.LASF8:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF4:
	.string	"reserved_4"
.LASF6:
	.string	"reserved_6"
.LASF12:
	.string	"reserved_7"
.LASF15:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF28:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF7:
	.string	"reserved_31"
.LASF44:
	.string	"endinit_pw"
.LASF27:
	.string	"SETFINDIS"
.LASF33:
	.string	"ESR0TRIST"
.LASF42:
	.string	"status"
.LASF47:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
