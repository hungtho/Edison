	.file	"IfxQspi.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxQspi_calcRealBaudrate,"ax",@progbits
	.align 1
	.global	IfxQspi_calcRealBaudrate
	.type	IfxQspi_calcRealBaudrate, @function
IfxQspi_calcRealBaudrate:
.LFB286:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.c"
	.loc 1 56 0
.LVL0:
	sub.a	%SP, 32
.LCFI0:
	.loc 1 57 0
	and	%d8, %d4, 7
.LVL1:
	.loc 1 56 0
	mov.aa	%a15, %a4
	.loc 1 58 0
	call	IfxScuCcu_getMaxFrequency
.LVL2:
	.loc 1 60 0
	addi	%d15, %d8, 8
	addsc.a	%a2, %a15, %d15, 2
	lea	%a3, [%SP] 32
	ld.w	%d15, [%a2]0
	addsc.a	%a2, %a3, %d8, 2
	st.w	[%a2] -32, %d15
	.loc 1 61 0
	ld.w	%d3, [%a15] 16
	and	%d3, %d3, 255
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL3:
	.loc 1 62 0
	and	%d3, %d15, 63
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL4:
	.loc 1 63 0
	extr.u	%d3, %d15, 6, 2
	addi	%d4, %d3, 1
	extr.u	%d3, %d15, 8, 2
	extr.u	%d15, %d15, 10, 2
	add	%d3, %d4
	add	%d15, %d3
	itof	%d15, %d15
.LVL5:
	.loc 1 65 0
	div.f	%d2, %d2, %d15
.LVL6:
	ret
.LFE286:
	.size	IfxQspi_calcRealBaudrate, .-IfxQspi_calcRealBaudrate
	.global	__extendsfdf2
	.global	__adddf3
	.global	__fixdfsi
.section .text.IfxQspi_calculateExtendedConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateExtendedConfigurationValue
	.type	IfxQspi_calculateExtendedConfigurationValue, @function
IfxQspi_calculateExtendedConfigurationValue:
.LFB288:
	.loc 1 98 0
.LVL7:
	.loc 1 98 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
.LBB19:
.LBB20:
.LBB21:
.LBB22:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
	.loc 2 981 0
	ld.w	%d15, [%a4]0
	.loc 2 983 0
	call	IfxScuCcu_getMaxFrequency
.LVL8:
.LBE22:
.LBE21:
	.loc 2 1014 0
	ld.w	%d15, [%a15] 16
.LBE20:
.LBE19:
	.loc 1 105 0
	movh	%d10, 16256
.LBB25:
.LBB23:
	.loc 2 1014 0
	and	%d15, 255
	add	%d15, 1
	itof	%d15, %d15
.LBE23:
.LBE25:
	.loc 1 102 0
	mov	%d9, 0
.LVL9:
.LBB26:
.LBB24:
	.loc 2 1014 0
	div.f	%d2, %d2, %d15
.LBE24:
.LBE26:
	.loc 1 106 0
	ld.w	%d15, [%a12] 4
	.loc 1 105 0
	div.f	%d2, %d10, %d2
	mov.a	%a15, %d2
.LVL10:
	.loc 1 115 0
	mov	%d2, 0
.LVL11:
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 1, .L3
	div.f	%d10, %d10, %d15
.L3:
.LVL12:
	.loc 1 123 0
	movh	%d11, 18804
	addi	%d11, %d11, 9216
	.loc 1 125 0
	mov	%d8, 8
	mov	%d14, 8
	.loc 1 146 0
	mov	%e12, 1
.LVL13:
.L11:
	.loc 1 127 0
	itof	%d15, %d8
	mov.d	%d2, %a15
	mul.f	%d15, %d15, %d2
.LVL14:
	.loc 1 128 0
	div.f	%d4, %d10, %d15
	call	__extendsfdf2
.LVL15:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL16:
	mov	%e4, %d3, %d2
	call	__fixdfsi
.LVL17:
	.loc 1 130 0
	ge	%d3, %d2, 65
	jnz	%d3, .L14
	.loc 1 135 0
	mul	%d3, %d2, %d8
	jlt	%d3, 4, .L15
	.loc 1 140 0
	jlez	%d2, .L16
	itof	%d3, %d2
.LVL18:
.L4:
	.loc 1 145 0
	mul.f	%d15, %d15, %d3
.LVL19:
	.loc 1 146 0
	sub.f	%d15, %d15, %d10
.LVL20:
	cmp.f	%d3, %d15, %d13
.LVL21:
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
.LVL22:
	.loc 1 148 0
	cmp.f	%d3, %d15, %d11
	jnz.t	%d3, 2, .L7
	.loc 1 151 0
	cmp.f	%d3, %d11, %d15
	or.t	%d3, %d3,0, %d3,2
	jnz	%d3, .L8
	.loc 1 151 0 is_stmt 0 discriminator 1
	jnz.t	%d14, 0, .L7
.L8:
.LVL23:
	.loc 1 159 0 is_stmt 1
	jnz.t	%d8, 0, .L17
.LVL24:
	.loc 1 163 0
	cmp.f	%d3, %d15, %d13
	or.t	%d3, %d3,0, %d3,2
	jz	%d3, .L27
.LVL25:
.L17:
	mov	%d11, %d15
	mov	%d14, %d8
	mov	%d12, %d2
.LVL26:
.L7:
	.loc 1 125 0 discriminator 2
	add	%d8, -1
.LVL27:
	jne	%d8, 1, .L11
	.loc 1 175 0
	ge	%d15, %d12, 9
.LVL28:
	mov	%d8, %d14
.LVL29:
	mov	%d2, %d12
.LVL30:
	jnz	%d15, .L9
	.loc 1 176 0
	jz.t	%d14, 0, .L9
	.loc 1 177 0
	and	%d15, %d12, 1
	cmovn	%d12, %d15, %d14
	cmovn	%d8, %d15, %d2
.LVL31:
.L9:
	.loc 1 194 0
	sh	%d15, %d8, -31
	add	%d15, %d8
	.loc 1 195 0
	extr.u	%d15, %d15, 1, 8
	.loc 1 198 0
	sh	%d3, %d8, -31
	xor.t	%d8, %d8,31, %d8,0
.LVL32:
	.loc 1 195 0
	add	%d2, %d15, -3
	.loc 1 198 0
	sub	%d3, %d8, %d3
	.loc 1 195 0
	extr	%d2, %d2, 0, 8
.LVL33:
	.loc 1 197 0
	add	%d12, -1
.LVL34:
	.loc 1 198 0
	add	%d3, %d15
	.loc 1 197 0
	insert	%d9, %d9, %d12, 0, 6
.LVL35:
	.loc 1 198 0
	add	%d3, -1
	insert	%d9, %d9, %d3, 6, 2
	.loc 1 200 0
	and	%d15, %d15, 3
	.loc 1 199 0
	max	%d3, %d2, 0
	.loc 1 200 0
	lt	%d2, %d2, 1
.LVL36:
	.loc 1 199 0
	insert	%d9, %d9, %d3, 10, 2
	.loc 1 200 0
	sel	%d3, %d2, %d15, 3
	insert	%d9, %d9, %d3, 8, 2
	.loc 1 202 0
	ld.w	%d15, [%a12] 8
	insn.t	%d9, %d9,12, %d15,4
	.loc 1 203 0
	ins.t	%d9, %d9,13, %d15,3
	.loc 1 204 0
	ins.t	%d9, %d9,14, %d15,13
	.loc 1 207 0
	mov	%d2, %d9
	ret
.LVL37:
.L14:
	movh	%d3, 17024
	.loc 1 132 0
	mov	%d2, 64
.LVL38:
	j	.L4
.LVL39:
.L15:
	movh	%d3, 16384
	.loc 1 137 0
	mov	%d2, 2
.LVL40:
	j	.L4
.LVL41:
.L16:
	movh	%d3, 16256
	.loc 1 142 0
	mov	%d2, 1
.LVL42:
	j	.L4
.LVL43:
.L27:
	mov	%d12, %d2
	j	.L9
.LFE288:
	.size	IfxQspi_calculateExtendedConfigurationValue, .-IfxQspi_calculateExtendedConfigurationValue
.section .text.IfxQspi_calculatePrescaler,"ax",@progbits
	.align 1
	.global	IfxQspi_calculatePrescaler
	.type	IfxQspi_calculatePrescaler, @function
IfxQspi_calculatePrescaler:
.LFB289:
	.loc 1 211 0
.LVL44:
	.loc 1 213 0
	movh	%d8, 16128
	mul.f	%d8, %d4, %d8
.LVL45:
.LBB27:
.LBB28:
	.loc 2 981 0
	ld.w	%d15, [%a4]0
	.loc 2 983 0
	call	IfxScuCcu_getMaxFrequency
.LVL46:
.LBE28:
.LBE27:
	.loc 1 215 0
	movh	%d5, 19225
.LBB30:
.LBB29:
	.loc 2 983 0
	mov	%d0, %d2
.LVL47:
.LBE29:
.LBE30:
	.loc 1 218 0
	mov	%d6, 0
	.loc 1 216 0
	mov	%d2, 0
	.loc 1 215 0
	addi	%d5, %d5, -27008
.LBB31:
	.loc 1 221 0
	mov	%d1, 0
	mov.a	%a15, 7
.LVL48:
.L33:
	sh	%d3, %d6, 2
	.loc 1 220 0
	mov	%d15, 1
	sh	%d15, %d15, %d3
	itof	%d15, %d15
	div.f	%d15, %d0, %d15
.LVL49:
	.loc 1 221 0
	sub.f	%d15, %d15, %d8
.LVL50:
	cmp.f	%d3, %d15, %d1
	extr.u	%d3, %d3, 0, 1
	addih	%d7, %d15, 0x8000
	sel	%d15, %d3, %d7, %d15
.LVL51:
	.loc 1 223 0
	cmp.f	%d3, %d15, %d5
	extr.u	%d3, %d3, 2, 1
	sel	%d2, %d3, %d2, %d6
.LVL52:
	sel	%d5, %d3, %d5, %d15
.LVL53:
.LBE31:
	.loc 1 218 0
	add	%d6, 1
.LVL54:
	loop	%a15, .L33
	.loc 1 231 0
	ret
.LFE289:
	.size	IfxQspi_calculatePrescaler, .-IfxQspi_calculatePrescaler
	.global	__muldf3
	.global	__divdf3
	.global	__truncdfsf2
	.global	__fixunsdfsi
.section .text.IfxQspi_calculateTimeQuantumLength,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateTimeQuantumLength
	.type	IfxQspi_calculateTimeQuantumLength, @function
IfxQspi_calculateTimeQuantumLength:
.LFB290:
	.loc 1 235 0
.LVL55:
	.loc 1 235 0
	mov	%d10, %d4
	.loc 1 243 0
	call	IfxScuCcu_getMaxFrequency
.LVL56:
	.loc 1 250 0
	mov	%d4, %d2
	.loc 1 243 0
	mov	%d11, %d2
.LVL57:
	.loc 1 250 0
	call	__extendsfdf2
.LVL58:
	mov	%d4, %d10
	mov	%e8, %d3, %d2
	call	__extendsfdf2
.LVL59:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16400
	call	__muldf3
.LVL60:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	.loc 1 251 0
	mov	%d14, 1
	.loc 1 250 0
	call	__divdf3
.LVL61:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL62:
	.loc 1 251 0
	ftoiz	%d15, %d2
	itof	%d3, %d15
	sub.f	%d2, %d2, %d3
.LVL63:
	movh	%d3, 16128
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	cadd	%d15, %d2, %d15, 1
.LVL64:
#APP
	# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d14, %d15, %d14
	# 0 "" 2
.LVL65:
	.loc 1 252 0
#NO_APP
	utof	%d9, %d14
	mov	%d12, 0
	div.f	%d9, %d11, %d9
	.loc 1 235 0
	mov	%d8, 4
	.loc 1 254 0
	mov	%d13, 505
	.loc 1 252 0
	sub.f	%d9, %d10, %d9
	cmp.f	%d15, %d9, %d12
.LVL66:
	extr.u	%d15, %d15, 0, 1
	addih	%d2, %d9, 0x8000
	cmov	%d9, %d15, %d2
.LVL67:
.L46:
	.loc 1 256 0
	itof	%d4, %d8
	mul.f	%d4, %d4, %d10
	.loc 1 257 0
	div.f	%d4, %d11, %d4
.LVL68:
	call	__extendsfdf2
.LVL69:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL70:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL71:
	.loc 1 258 0
	mul	%d15, %d2, %d8
	utof	%d15, %d15
	div.f	%d15, %d11, %d15
.LVL72:
	.loc 1 259 0
	sub.f	%d15, %d10, %d15
.LVL73:
	cmp.f	%d3, %d15, %d12
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
.LVL74:
	.loc 1 261 0
	cmp.f	%d3, %d15, %d9
	jnz.t	%d3, 2, .L43
	.loc 1 261 0 is_stmt 0 discriminator 1
	jnz	%d2, .L54
.LVL75:
.L44:
	.loc 1 273 0 is_stmt 1
	add	%d14, -1
.LVL76:
	.loc 1 274 0
	mov	%d2, 0
.LVL77:
#APP
	# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d2, %d14, %d2
	# 0 "" 2
#NO_APP
	ret
.LVL78:
.L54:
	.loc 1 263 0
	mov	%d9, %d15
.LVL79:
	mov	%d14, %d2
.L43:
.LVL80:
	.loc 1 267 0
	cmp.f	%d15, %d9, %d12
.LVL81:
	extr.u	%d15, %d15, 1, 1
	or.eq	%d15, %d2, 0
	jnz.t	%d15, 0, .L44
	.loc 1 254 0 discriminator 2
	add	%d8, 1
.LVL82:
	jne	%d8, %d13, .L46
.LVL83:
	.loc 1 273 0
	add	%d14, -1
.LVL84:
	.loc 1 274 0
	mov	%d2, 0
.LVL85:
#APP
	# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d2, %d14, %d2
	# 0 "" 2
#NO_APP
	ret
.LFE290:
	.size	IfxQspi_calculateTimeQuantumLength, .-IfxQspi_calculateTimeQuantumLength
.section .text.IfxQspi_getAddress,"ax",@progbits
	.align 1
	.global	IfxQspi_getAddress
	.type	IfxQspi_getAddress, @function
IfxQspi_getAddress:
.LFB291:
	.loc 1 278 0
.LVL86:
	.loc 1 287 0
	mov.a	%a2, 0
	.loc 1 281 0
	jge	%d4, 4, .L56
	.loc 1 283 0
	movh.a	%a15, hi:IfxQspi_cfg_indexMap
	lea	%a15, [%a15] lo:IfxQspi_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL87:
.L56:
	.loc 1 291 0
	ret
.LFE291:
	.size	IfxQspi_getAddress, .-IfxQspi_getAddress
.section .text.IfxQspi_getIndex,"ax",@progbits
	.align 1
	.global	IfxQspi_getIndex
	.type	IfxQspi_getIndex, @function
IfxQspi_getIndex:
.LFB292:
	.loc 1 295 0
.LVL88:
	movh.a	%a3, hi:IfxQspi_cfg_indexMap
	.loc 1 301 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxQspi_cfg_indexMap
	mov.a	%a15, 3
.LVL89:
.L61:
	.loc 1 303 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a5, %a4, .L63
	.loc 1 301 0 discriminator 2
	add	%d15, 1
.LVL90:
	loop	%a15, .L61
	.loc 1 299 0
	mov	%d2, -1
.LVL91:
	.loc 1 311 0
	ret
.LVL92:
.L63:
	.loc 1 305 0
	ld.b	%d2, [%a2] 4
.LVL93:
	.loc 1 306 0
	ret
.LFE292:
	.size	IfxQspi_getIndex, .-IfxQspi_getIndex
.section .text.IfxQspi_read16,"ax",@progbits
	.align 1
	.global	IfxQspi_read16
	.type	IfxQspi_read16, @function
IfxQspi_read16:
.LFB293:
	.loc 1 315 0
.LVL94:
	.loc 1 318 0
	jlez	%d4, .L64
	add	%d4, -1
.LVL95:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L71
.LVL96:
.L68:
	.loc 1 320 0
	ld.w	%d15, [%a4] 144
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL97:
	.loc 1 318 0
	loop	%a15, .L68
.L64:
	ret
.LVL98:
.L71:
	mov.a	%a15, 0
	j	.L68
.LFE293:
	.size	IfxQspi_read16, .-IfxQspi_read16
.section .text.IfxQspi_read32,"ax",@progbits
	.align 1
	.global	IfxQspi_read32
	.type	IfxQspi_read32, @function
IfxQspi_read32:
.LFB294:
	.loc 1 327 0
.LVL99:
	.loc 1 330 0
	jlez	%d4, .L72
	add	%d4, -1
.LVL100:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L79
.LVL101:
.L76:
	.loc 1 332 0
	ld.w	%d15, [%a4] 144
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL102:
	.loc 1 330 0
	loop	%a15, .L76
.L72:
	ret
.LVL103:
.L79:
	mov.a	%a15, 0
	j	.L76
.LFE294:
	.size	IfxQspi_read32, .-IfxQspi_read32
.section .text.IfxQspi_read8,"ax",@progbits
	.align 1
	.global	IfxQspi_read8
	.type	IfxQspi_read8, @function
IfxQspi_read8:
.LFB295:
	.loc 1 339 0
.LVL104:
	addsc.a	%a15, %a5, %d4, 0
	.loc 1 342 0
	jlez	%d4, .L80
	mov.d	%d15, %a5
	mov.d	%d2, %a15
	not	%d15
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	mov.a	%a15, %d2
	mov.d	%d2, %a5
	add	%d15, %d2
	add	%d4, %d15
.LVL105:
	jnz.t	%d4, 15, .L87
.LVL106:
.L84:
	.loc 1 344 0
	ld.w	%d15, [%a4] 144
	st.b	[%a5]0, %d15
	add.a	%a5, 1
.LVL107:
	.loc 1 342 0
	loop	%a15, .L84
.LVL108:
.L80:
	ret
.LVL109:
.L87:
	mov.a	%a15, 0
	j	.L84
.LFE295:
	.size	IfxQspi_read8, .-IfxQspi_read8
.section .text.IfxQspi_recalcBasicConfiguration,"ax",@progbits
	.align 1
	.global	IfxQspi_recalcBasicConfiguration
	.type	IfxQspi_recalcBasicConfiguration, @function
IfxQspi_recalcBasicConfiguration:
.LFB296:
	.loc 1 351 0
.LVL110:
	.loc 1 355 0
	jnz	%d6, .L89
	.loc 1 357 0
	insert	%d4, %d4, %d5, 23, 5
.LVL111:
	.loc 1 358 0
	insert	%d4, %d4, 1, 22, 1
.L89:
	.loc 1 363 0
	insert	%d2, %d4, %d7, 0, 1
	ret
.LFE296:
	.size	IfxQspi_recalcBasicConfiguration, .-IfxQspi_recalcBasicConfiguration
.section .text.IfxQspi_resetModule,"ax",@progbits
	.align 1
	.global	IfxQspi_resetModule
	.type	IfxQspi_resetModule, @function
IfxQspi_resetModule:
.LFB297:
	.loc 1 367 0
.LVL112:
	.loc 1 367 0
	mov.aa	%a15, %a4
	.loc 1 368 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL113:
	.loc 1 369 0
	mov	%d4, %d2
	.loc 1 368 0
	mov	%d8, %d2
.LVL114:
	.loc 1 369 0
	call	IfxScuWdt_clearCpuEndinit
.LVL115:
	.loc 1 370 0
	ld.w	%d15, [%a15] 244
	.loc 1 372 0
	mov	%d4, %d8
	.loc 1 370 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 371 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 372 0
	call	IfxScuWdt_setCpuEndinit
.LVL116:
.L91:
	.loc 1 374 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L91
	.loc 1 378 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL117:
	.loc 1 379 0
	ld.w	%d15, [%a15] 236
	.loc 1 380 0
	mov	%d4, %d8
	.loc 1 379 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 380 0
	j	IfxScuWdt_setCpuEndinit
.LVL118:
.LFE297:
	.size	IfxQspi_resetModule, .-IfxQspi_resetModule
.section .text.IfxQspi_setSlaveSelectOutputControl,"ax",@progbits
	.align 1
	.global	IfxQspi_setSlaveSelectOutputControl
	.type	IfxQspi_setSlaveSelectOutputControl, @function
IfxQspi_setSlaveSelectOutputControl:
.LFB298:
	.loc 1 385 0
.LVL119:
	.loc 1 386 0
	mov	%d15, 1
	sh	%d4, %d15, %d4
.LVL120:
	.loc 1 389 0
	ld.w	%d15, [%a4] 72
.LVL121:
	.loc 1 386 0
	extr.u	%d2, %d4, 0, 16
.LVL122:
	.loc 1 393 0
	extr.u	%d3, %d15, 16, 16
	.loc 1 391 0
	jz	%d5, .L95
	.loc 1 393 0
	or	%d3, %d2
	insert	%d15, %d15, %d3, 16, 32-16
.LVL123:
	.loc 1 400 0
	jnz	%d6, .L99
.L97:
.LVL124:
	.loc 1 406 0
	andn	%d4, %d15, %d4
.LVL125:
	insert	%d15, %d15, %d4, 0, 16
.LVL126:
	.loc 1 409 0
	st.w	[%a4] 72, %d15
	ret
.LVL127:
.L95:
	.loc 1 397 0
	andn	%d3, %d3, %d4
	insert	%d15, %d15, %d3, 16, 32-16
.LVL128:
	.loc 1 400 0
	jz	%d6, .L97
.L99:
.LVL129:
	.loc 1 402 0
	or	%d2, %d15
	insert	%d15, %d15, %d2, 0, 16
.LVL130:
	.loc 1 409 0
	st.w	[%a4] 72, %d15
	ret
.LFE298:
	.size	IfxQspi_setSlaveSelectOutputControl, .-IfxQspi_setSlaveSelectOutputControl
.section .text.IfxQspi_write16,"ax",@progbits
	.align 1
	.global	IfxQspi_write16
	.type	IfxQspi_write16, @function
IfxQspi_write16:
.LFB299:
	.loc 1 414 0
.LVL131:
	.loc 1 415 0
	and	%d4, %d4, 7
.LVL132:
	addi	%d4, %d4, 25
.LVL133:
	.loc 1 418 0
	jlez	%d5, .L100
	.loc 1 420 0
	add	%d5, -1
.LVL134:
	extr.u	%d15, %d5, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL135:
	mov.a	%a15, %d15
	jnz.t	%d5, 15, .L107
.LVL136:
.L104:
	ld.hu	%d15, [%a5]0
	add.a	%a5, 2
.LVL137:
	st.w	[%a4]0, %d15
.LVL138:
	.loc 1 418 0
	loop	%a15, .L104
.L100:
	ret
.LVL139:
.L107:
	mov.a	%a15, 0
	j	.L104
.LFE299:
	.size	IfxQspi_write16, .-IfxQspi_write16
.section .text.IfxQspi_write32,"ax",@progbits
	.align 1
	.global	IfxQspi_write32
	.type	IfxQspi_write32, @function
IfxQspi_write32:
.LFB300:
	.loc 1 427 0
.LVL140:
	.loc 1 428 0
	and	%d4, %d4, 7
.LVL141:
	addi	%d4, %d4, 25
.LVL142:
	.loc 1 431 0
	jlez	%d5, .L108
	.loc 1 433 0
	add	%d5, -1
.LVL143:
	extr.u	%d15, %d5, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL144:
	mov.a	%a15, %d15
	jnz.t	%d5, 15, .L115
.LVL145:
.L112:
	ld.w	%d15, [%a5]0
	add.a	%a5, 4
.LVL146:
	st.w	[%a4]0, %d15
.LVL147:
	.loc 1 431 0
	loop	%a15, .L112
.L108:
	ret
.LVL148:
.L115:
	mov.a	%a15, 0
	j	.L112
.LFE300:
	.size	IfxQspi_write32, .-IfxQspi_write32
.section .text.IfxQspi_write8,"ax",@progbits
	.align 1
	.global	IfxQspi_write8
	.type	IfxQspi_write8, @function
IfxQspi_write8:
.LFB301:
	.loc 1 440 0
.LVL149:
	.loc 1 441 0
	and	%d4, %d4, 7
.LVL150:
	addi	%d4, %d4, 25
.LVL151:
	addsc.a	%a15, %a5, %d5, 0
	.loc 1 444 0
	jlez	%d5, .L116
	.loc 1 446 0
	mov.d	%d15, %a5
	mov.d	%d2, %a15
	not	%d15
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL152:
	mov.a	%a15, %d2
	mov.d	%d2, %a5
	add	%d15, %d2
	add	%d5, %d15
.LVL153:
	jnz.t	%d5, 15, .L123
.LVL154:
.L120:
	ld.bu	%d15, [%a5]0
	add.a	%a5, 1
.LVL155:
	st.w	[%a4]0, %d15
.LVL156:
	.loc 1 444 0
	loop	%a15, .L120
.L116:
	ret
.LVL157:
.L123:
	mov.a	%a15, 0
	j	.L120
.LFE301:
	.size	IfxQspi_write8, .-IfxQspi_write8
.section .text.IfxQspi_calculateDelayConstants,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateDelayConstants
	.type	IfxQspi_calculateDelayConstants, @function
IfxQspi_calculateDelayConstants:
.LFB302:
	.loc 1 453 0
.LVL158:
	.loc 1 466 0
	and	%d4, %d4, 7
.LVL159:
	addi	%d4, %d4, 8
	ld.w	%d15, [%a4] 16
	addsc.a	%a4, %a4, %d4, 2
.LVL160:
	and	%d5, %d15, 255
	ld.w	%d15, [%a4]0
	ld.w	%d4, [%a4]0
	ld.w	%d3, [%a4]0
	extr.u	%d4, %d4, 6, 2
	ld.w	%d12, [%a4]0
	extr.u	%d3, %d3, 8, 2
	extr.u	%d2, %d12, 10, 2
	and	%d15, %d15, 63
	addi	%d12, %d4, 1
	add	%d15, 1
	add	%d12, %d3
	madd	%d15, %d15, %d5, %d15
	add	%d12, %d2
	mul	%d12, %d15
.LVL161:
	.loc 1 469 0
	lea	%a15, [%a5] 4
.LVL162:
	mov.aa	%a12, %a6
	lea	%a13, [%a5] 16
	.loc 1 474 0
	movh	%d11, 16128
	mov	%d13, 0
.LVL163:
.L130:
	ld.w	%d9, [%a15]0
	mov	%d15, 0
	mul	%d9, %d12
	utof	%d9, %d9
	mul.f	%d9, %d9, %d11
.LVL164:
.L129:
	sh	%d8, %d15, 1
	.loc 1 481 0
	mov	%d4, 1
	sh	%d4, %d4, %d8
	itof	%d4, %d4
	and	%d10, %d15, 255
.LVL165:
	div.f	%d4, %d9, %d4
	call	__extendsfdf2
.LVL166:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL167:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL168:
	and	%d2, %d2, 255
.LVL169:
	.loc 1 483 0
	jge.u	%d2, 9, .L125
	.loc 1 485 0
	sh	%d3, %d2, %d8
	itof	%d3, %d3
	cmp.f	%d3, %d9, %d3
	or.t	%d3, %d3,0, %d3,1
	jnz	%d3, .L139
	.loc 1 492 0
	eq	%d4, %d2, 8
	jz	%d4, .L140
.L125:
.LVL170:
	add	%d15, 1
.LVL171:
	.loc 1 479 0 discriminator 2
	ne	%d2, %d15, 8
.LVL172:
	jnz	%d2, .L129
	.loc 1 510 0
	mov	%d3, 7
	.loc 1 511 0
	mov	%d10, 7
.LVL173:
.L131:
	.loc 1 515 0 discriminator 2
	st.b	[%a12] 1, %d3
	.loc 1 516 0 discriminator 2
	st.b	[%a12+]2, %d10
	add.a	%a15, 4
	.loc 1 471 0 discriminator 2
	jne.a	%a15, %a13, .L130
	.loc 1 518 0
	ret
.LVL174:
.L139:
	.loc 1 487 0
	addi	%d3, %d2, -1
.LVL175:
.LBB32:
.LBB33:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 154 0
#APP
	# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d3, %d3, %d13
	# 0 "" 2
.LVL176:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 487 0
	and	%d3, %d3, 255
.LVL177:
	.loc 1 490 0
	j	.L131
.LVL178:
.L140:
	.loc 1 494 0
	add	%d15, %d2, 1
.LVL179:
	.loc 1 495 0
	and	%d15, 255
	add	%d15, -1
.LBB34:
.LBB35:
	.loc 3 154 0
#APP
	# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d3, %d15, %d3
	# 0 "" 2
.LVL180:
#NO_APP
.LBE35:
.LBE34:
	.loc 1 495 0
	and	%d3, %d3, 255
.LVL181:
	.loc 1 498 0
	j	.L131
.LFE302:
	.size	IfxQspi_calculateDelayConstants, .-IfxQspi_calculateDelayConstants
.section .text.IfxQspi_calculateBasicConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateBasicConfigurationValue
	.type	IfxQspi_calculateBasicConfigurationValue, @function
IfxQspi_calculateBasicConfigurationValue:
.LFB287:
	.loc 1 69 0
.LVL182:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 76 0
	lea	%a6, [%SP] 2
	.loc 1 69 0
	mov	%d8, %d4
	mov.aa	%a15, %a5
	.loc 1 76 0
	call	IfxQspi_calculateDelayConstants
.LVL183:
	.loc 1 80 0
	ld.bu	%d2, [%SP] 2
	.loc 1 78 0
	mov	%d15, 0
.LVL184:
	.loc 1 80 0
	insert	%d15, %d15, %d2, 1, 3
.LVL185:
	.loc 1 81 0
	ld.bu	%d2, [%SP] 3
	.loc 1 86 0
	ld.w	%d3, [%a15]0
	.loc 1 81 0
	insert	%d15, %d15, %d2, 4, 3
	.loc 1 82 0
	ld.bu	%d2, [%SP] 4
	insert	%d15, %d15, %d2, 7, 3
	.loc 1 83 0
	ld.bu	%d2, [%SP] 5
	insert	%d15, %d15, %d2, 10, 3
	.loc 1 84 0
	ld.bu	%d2, [%SP] 6
	insert	%d15, %d15, %d2, 13, 3
	.loc 1 85 0
	ld.bu	%d2, [%SP] 7
	insert	%d15, %d15, %d2, 16, 3
	.loc 1 86 0
	ins.t	%d15, %d15,19, %d3,14
	.loc 1 87 0
	insert	%d15, %d15, 0, 20, 1
.LVL186:
	.loc 1 88 0
	ins.t	%d15, %d15,21, %d3,5
.LVL187:
	.loc 1 90 0
	extr.u	%d3, %d3, 6, 6
	.loc 1 89 0
	insert	%d15, %d15, 0, 22, 1
.LVL188:
	.loc 1 90 0
	add	%d3, -1
	insert	%d15, %d15, %d3, 23, 5
.LVL189:
	.loc 1 94 0
	insert	%d2, %d15, %d8, 28, 32-28
	ret
.LFE287:
	.size	IfxQspi_calculateBasicConfigurationValue, .-IfxQspi_calculateBasicConfigurationValue
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
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.byte	0x4
	.uaword	.LCFI0-.LFB286
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.byte	0x4
	.uaword	.LCFI1-.LFB287
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE32:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxQspi_cfg.h"
	.file 8 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3283
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x65
	.uaword	0x1b7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x69
	.uaword	0x1b7
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x6d
	.uaword	0x1e3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x71
	.uaword	0x193
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x4
	.byte	0x7a
	.uaword	0x22e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x7e
	.uaword	0x24b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x83
	.uaword	0x187
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0xa7
	.uaword	0x167
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"pvoid"
	.byte	0x5
	.byte	0x39
	.uaword	0x2a5
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ad
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x5
	.byte	0x5c
	.uaword	0x23d
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x7b
	.uaword	0x2f3
	.uleb128 0x8
	.string	"Ifx_ParityMode_even"
	.sleb128 0
	.uleb128 0x8
	.string	"Ifx_ParityMode_odd"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x319
	.uleb128 0xa
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x2a7
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x258
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x2f3
	.uleb128 0xb
	.string	"_Ifx_QSPI_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x548
	.uleb128 0xc
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x333
	.uleb128 0xb
	.string	"_Ifx_QSPI_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x592
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x564
	.uleb128 0xb
	.string	"_Ifx_QSPI_BACON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x69a
	.uleb128 0xc
	.string	"LAST"
	.byte	0x6
	.byte	0x5a
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"IPRE"
	.byte	0x6
	.byte	0x5b
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"IDLE"
	.byte	0x6
	.byte	0x5c
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"LPRE"
	.byte	0x6
	.byte	0x5d
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"LEAD"
	.byte	0x6
	.byte	0x5e
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"TPRE"
	.byte	0x6
	.byte	0x5f
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TRAIL"
	.byte	0x6
	.byte	0x60
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PARTYP"
	.byte	0x6
	.byte	0x61
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"UINT"
	.byte	0x6
	.byte	0x62
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"MSB"
	.byte	0x6
	.byte	0x63
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"BYTE"
	.byte	0x6
	.byte	0x64
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"DL"
	.byte	0x6
	.byte	0x65
	.uaword	0x177
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"CS"
	.byte	0x6
	.byte	0x66
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACON_Bits"
	.byte	0x6
	.byte	0x67
	.uaword	0x5ae
	.uleb128 0xb
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6a
	.uaword	0x6e5
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0x6c
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x6
	.byte	0x6d
	.uaword	0x6b5
	.uleb128 0xb
	.string	"_Ifx_QSPI_CAPCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x70
	.uaword	0x7cb
	.uleb128 0xc
	.string	"CAP"
	.byte	0x6
	.byte	0x72
	.uaword	0x177
	.byte	0x4
	.byte	0xf
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"OVF"
	.byte	0x6
	.byte	0x73
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EDGECON"
	.byte	0x6
	.byte	0x74
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"INS"
	.byte	0x6
	.byte	0x75
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN"
	.byte	0x6
	.byte	0x76
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"reserved_21"
	.byte	0x6
	.byte	0x77
	.uaword	0x177
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"CAPC"
	.byte	0x6
	.byte	0x78
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"CAPS"
	.byte	0x6
	.byte	0x79
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"CAPF"
	.byte	0x6
	.byte	0x7a
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"CAPSEL"
	.byte	0x6
	.byte	0x7b
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CAPCON_Bits"
	.byte	0x6
	.byte	0x7c
	.uaword	0x705
	.uleb128 0xb
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x7f
	.uaword	0x858
	.uleb128 0xc
	.string	"DISR"
	.byte	0x6
	.byte	0x81
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"DISS"
	.byte	0x6
	.byte	0x82
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.byte	0x83
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EDIS"
	.byte	0x6
	.byte	0x84
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"reserved_4"
	.byte	0x6
	.byte	0x85
	.uaword	0x177
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x6
	.byte	0x86
	.uaword	0x7e7
	.uleb128 0xb
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x89
	.uaword	0x8a0
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0x8b
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x6
	.byte	0x8c
	.uaword	0x871
	.uleb128 0xb
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8f
	.uaword	0x95d
	.uleb128 0xc
	.string	"Q"
	.byte	0x6
	.byte	0x91
	.uaword	0x177
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"A"
	.byte	0x6
	.byte	0x92
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.byte	0x93
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"C"
	.byte	0x6
	.byte	0x94
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"CPH"
	.byte	0x6
	.byte	0x95
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"CPOL"
	.byte	0x6
	.byte	0x96
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"PAREN"
	.byte	0x6
	.byte	0x97
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.byte	0x98
	.uaword	0x177
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"BE"
	.byte	0x6
	.byte	0x99
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x6
	.byte	0x9a
	.uaword	0x8bf
	.uleb128 0xb
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x9d
	.uaword	0xa25
	.uleb128 0xc
	.string	"ERRORCLEARS"
	.byte	0x6
	.byte	0x9f
	.uaword	0x177
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"TXC"
	.byte	0x6
	.byte	0xa0
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"RXC"
	.byte	0x6
	.byte	0xa1
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PT1C"
	.byte	0x6
	.byte	0xa2
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"PT2C"
	.byte	0x6
	.byte	0xa3
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.byte	0xa4
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"USRC"
	.byte	0x6
	.byte	0xa5
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"reserved_16"
	.byte	0x6
	.byte	0xa6
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xa7
	.uaword	0x977
	.uleb128 0xb
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xaa
	.uaword	0xb55
	.uleb128 0xc
	.string	"ERRORENS"
	.byte	0x6
	.byte	0xac
	.uaword	0x177
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"TXEN"
	.byte	0x6
	.byte	0xad
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"RXEN"
	.byte	0x6
	.byte	0xae
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PT1EN"
	.byte	0x6
	.byte	0xaf
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"PT2EN"
	.byte	0x6
	.byte	0xb0
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.byte	0xb1
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"USREN"
	.byte	0x6
	.byte	0xb2
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TXFIFOINT"
	.byte	0x6
	.byte	0xb3
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"RXFIFOINT"
	.byte	0x6
	.byte	0xb4
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"PT1"
	.byte	0x6
	.byte	0xb5
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"PT2"
	.byte	0x6
	.byte	0xb6
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"TXFM"
	.byte	0x6
	.byte	0xb7
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RXFM"
	.byte	0x6
	.byte	0xb8
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x6
	.byte	0xb9
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x6
	.byte	0xba
	.uaword	0xa45
	.uleb128 0xb
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xbd
	.uaword	0xc78
	.uleb128 0xc
	.string	"TQ"
	.byte	0x6
	.byte	0xbf
	.uaword	0x177
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x6
	.byte	0xc0
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"SI"
	.byte	0x6
	.byte	0xc1
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EXPECT"
	.byte	0x6
	.byte	0xc2
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"LB"
	.byte	0x6
	.byte	0xc3
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"DEL0"
	.byte	0x6
	.byte	0xc4
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"STROBE"
	.byte	0x6
	.byte	0xc5
	.uaword	0x177
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"SRF"
	.byte	0x6
	.byte	0xc6
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"STIP"
	.byte	0x6
	.byte	0xc7
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"reserved_23"
	.byte	0x6
	.byte	0xc8
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN"
	.byte	0x6
	.byte	0xc9
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"MS"
	.byte	0x6
	.byte	0xca
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"AREN"
	.byte	0x6
	.byte	0xcb
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RESETS"
	.byte	0x6
	.byte	0xcc
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x6
	.byte	0xcd
	.uaword	0xb75
	.uleb128 0xb
	.string	"_Ifx_QSPI_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd0
	.uaword	0xcec
	.uleb128 0xc
	.string	"MODREV"
	.byte	0x6
	.byte	0xd2
	.uaword	0x177
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0x6
	.byte	0xd3
	.uaword	0x177
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"MODNUMBER"
	.byte	0x6
	.byte	0xd4
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ID_Bits"
	.byte	0x6
	.byte	0xd5
	.uaword	0xc97
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd8
	.uaword	0xd53
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.byte	0xda
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RSTSTAT"
	.byte	0x6
	.byte	0xdb
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.byte	0xdc
	.uaword	0x177
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST0_Bits"
	.byte	0x6
	.byte	0xdd
	.uaword	0xd04
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe0
	.uaword	0xdaa
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.byte	0xe2
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x6
	.byte	0xe3
	.uaword	0x177
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST1_Bits"
	.byte	0x6
	.byte	0xe4
	.uaword	0xd6e
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe7
	.uaword	0xe03
	.uleb128 0xc
	.string	"CLR"
	.byte	0x6
	.byte	0xe9
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x6
	.byte	0xea
	.uaword	0x177
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x6
	.byte	0xeb
	.uaword	0xdc5
	.uleb128 0xb
	.string	"_Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xee
	.uaword	0xe4e
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0xf0
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x6
	.byte	0xf1
	.uaword	0xe20
	.uleb128 0xb
	.string	"_Ifx_QSPI_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf4
	.uaword	0xed8
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.byte	0xf6
	.uaword	0x177
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SUS"
	.byte	0x6
	.byte	0xf7
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"SUS_P"
	.byte	0x6
	.byte	0xf8
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"SUSSTA"
	.byte	0x6
	.byte	0xf9
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x6
	.byte	0xfa
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_OCS_Bits"
	.byte	0x6
	.byte	0xfb
	.uaword	0xe6c
	.uleb128 0xb
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xfe
	.uaword	0xfaa
	.uleb128 0xe
	.string	"MRIS"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SRIS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"reserved_7"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"SCIS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"reserved_11"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"SLSIS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x107
	.uaword	0x177
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x6
	.uahalf	0x108
	.uaword	0xef1
	.uleb128 0x11
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x10b
	.uaword	0xff4
	.uleb128 0xe
	.string	"E"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xfc6
	.uleb128 0x11
	.string	"_Ifx_QSPI_RXEXITD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1040
	.uleb128 0xe
	.string	"E"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x177
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXITD_Bits"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x1011
	.uleb128 0x11
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x117
	.uaword	0x109c
	.uleb128 0xe
	.string	"AOL"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"OEN"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x105e
	.uleb128 0x11
	.string	"_Ifx_QSPI_STATUS1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1141
	.uleb128 0xe
	.string	"BITCOUNT"
	.byte	0x6
	.uahalf	0x120
	.uaword	0x177
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x121
	.uaword	0x177
	.byte	0x4
	.byte	0x14
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"BRDEN"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"BRD"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"SPDEN"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SPD"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS1_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x10b7
	.uleb128 0x11
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x1270
	.uleb128 0xe
	.string	"ERRORFLAGS"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x177
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TXF"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"RXF"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PT1F"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PT2F"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x130
	.uaword	0x177
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"USRF"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"RXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x177
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"SLAVESEL"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"RPV"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"TPV"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x177
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PHASE"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x177
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x115f
	.uleb128 0x11
	.string	"_Ifx_QSPI_XXLCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x12d3
	.uleb128 0xe
	.string	"XDL"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"BYTECOUNT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x177
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_XXLCON_Bits"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x128d
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x147
	.uaword	0x1318
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x548
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ACCEN0"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x12f0
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1358
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x592
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ACCEN1"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x1330
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x157
	.uaword	0x1398
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x159
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x69a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_BACON"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x1370
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x13d7
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x6e5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x13af
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x167
	.uaword	0x141b
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x7cb
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_CAPCON"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x13f3
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x145b
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x858
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_CLC"
	.byte	0x6
	.uahalf	0x174
	.uaword	0x1433
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x177
	.uaword	0x1498
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x179
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x17a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x8a0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x1470
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x14db
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x95d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ECON"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x14b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x187
	.uaword	0x1519
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0xa25
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x14f1
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x155d
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x193
	.uaword	0xc78
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x1535
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x197
	.uaword	0x15a0
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x199
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x19b
	.uaword	0xb55
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x1578
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x15e4
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0xcec
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ID"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0x15bc
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x1620
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0xd53
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRST0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x15f8
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x165f
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0xdaa
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRST1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x1637
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x169e
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0xe03
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRSTCLR"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x1676
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x16df
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0xe4e
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_MIXENTRY"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x16b7
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1721
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0xed8
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_OCS"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x16f9
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x175e
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0xfaa
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_PISEL"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1736
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x179d
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0xff4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1775
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x17dd
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x1040
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXITD"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x17b5
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x181e
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x109c
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_SSOC"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x17f6
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x185c
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x1270
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1834
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x189c
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x1141
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS1"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1874
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x18dd
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x177
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x170
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x12d3
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_XXLCON"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x18b5
	.uleb128 0x14
	.string	"_Ifx_QSPI"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1b0c
	.uleb128 0x15
	.string	"CLC"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x145b
	.byte	0
	.uleb128 0x15
	.string	"PISEL"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x175e
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x15e4
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1b0c
	.byte	0xc
	.uleb128 0x15
	.string	"GLOBALCON"
	.byte	0x6
	.uahalf	0x215
	.uaword	0x155d
	.byte	0x10
	.uleb128 0x15
	.string	"GLOBALCON1"
	.byte	0x6
	.uahalf	0x216
	.uaword	0x15a0
	.byte	0x14
	.uleb128 0x15
	.string	"BACON"
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1398
	.byte	0x18
	.uleb128 0x15
	.string	"reserved_1C"
	.byte	0x6
	.uahalf	0x218
	.uaword	0x1b0c
	.byte	0x1c
	.uleb128 0x15
	.string	"ECON"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1b28
	.byte	0x20
	.uleb128 0x15
	.string	"STATUS"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x185c
	.byte	0x40
	.uleb128 0x15
	.string	"STATUS1"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x189c
	.byte	0x44
	.uleb128 0x15
	.string	"SSOC"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x181e
	.byte	0x48
	.uleb128 0x15
	.string	"reserved_4C"
	.byte	0x6
	.uahalf	0x21d
	.uaword	0x1b38
	.byte	0x4c
	.uleb128 0x15
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x21e
	.uaword	0x1519
	.byte	0x54
	.uleb128 0x15
	.string	"XXLCON"
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x18dd
	.byte	0x58
	.uleb128 0x15
	.string	"MIXENTRY"
	.byte	0x6
	.uahalf	0x220
	.uaword	0x16df
	.byte	0x5c
	.uleb128 0x15
	.string	"BACONENTRY"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x13d7
	.byte	0x60
	.uleb128 0x15
	.string	"DATAENTRY"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1b48
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_84"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x1b58
	.byte	0x84
	.uleb128 0x15
	.string	"RXEXIT"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x179d
	.byte	0x90
	.uleb128 0x15
	.string	"RXEXITD"
	.byte	0x6
	.uahalf	0x225
	.uaword	0x17dd
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0x6
	.uahalf	0x226
	.uaword	0x1b38
	.byte	0x98
	.uleb128 0x15
	.string	"CAPCON"
	.byte	0x6
	.uahalf	0x227
	.uaword	0x141b
	.byte	0xa0
	.uleb128 0x15
	.string	"reserved_A4"
	.byte	0x6
	.uahalf	0x228
	.uaword	0x1b68
	.byte	0xa4
	.uleb128 0x15
	.string	"OCS"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1721
	.byte	0xe8
	.uleb128 0x15
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x169e
	.byte	0xec
	.uleb128 0x15
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x165f
	.byte	0xf0
	.uleb128 0x15
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1620
	.byte	0xf4
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x1358
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x1318
	.byte	0xfc
	.byte	0
	.uleb128 0x16
	.uaword	0x1b7
	.uaword	0x1b1c
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x16
	.uaword	0x14db
	.uaword	0x1b38
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x1b7
	.uaword	0x1b48
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x1498
	.uaword	0x1b58
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x1b7
	.uaword	0x1b68
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0xb
	.byte	0
	.uleb128 0x16
	.uaword	0x1b7
	.uaword	0x1b78
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x43
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1b89
	.uleb128 0x18
	.uaword	0x18f5
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x51
	.uaword	0x1bf4
	.uleb128 0x8
	.string	"IfxQspi_Index_none"
	.sleb128 -1
	.uleb128 0x8
	.string	"IfxQspi_Index_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxQspi_Index_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxQspi_Index_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxQspi_Index_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxQspi_Index"
	.byte	0x7
	.byte	0x57
	.uaword	0x1b8e
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x46
	.uaword	0x1c4f
	.uleb128 0x8
	.string	"SpiIf_Status_ok"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_Status_busy"
	.sleb128 1
	.uleb128 0x8
	.string	"SpiIf_Status_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Status"
	.byte	0x8
	.byte	0x4a
	.uaword	0x1c09
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x5b
	.uaword	0x1ca6
	.uleb128 0x8
	.string	"SpiIf_DataHeading_lsbFirst"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_DataHeading_msbFirst"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.uaword	0x1d14
	.uleb128 0x8
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x69
	.uaword	0x1d5a
	.uleb128 0x8
	.string	"SpiIf_ClockPolarity_idleLow"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_ClockPolarity_idleHigh"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Ch"
	.byte	0x8
	.byte	0x72
	.uaword	0x1d6a
	.uleb128 0xb
	.string	"SpiIf_Ch_"
	.byte	0x30
	.byte	0x8
	.byte	0xd6
	.uaword	0x1e14
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0xd8
	.uaword	0x2016
	.byte	0
	.uleb128 0xa
	.string	"flags"
	.byte	0x8
	.byte	0xd9
	.uaword	0x1f2a
	.byte	0x4
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x8
	.byte	0xda
	.uaword	0x210b
	.byte	0x8
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x8
	.byte	0xdb
	.uaword	0x258
	.byte	0xc
	.uleb128 0xa
	.string	"tx"
	.byte	0x8
	.byte	0xdc
	.uaword	0x1f69
	.byte	0x10
	.uleb128 0xa
	.string	"rx"
	.byte	0x8
	.byte	0xdd
	.uaword	0x1f69
	.byte	0x18
	.uleb128 0xa
	.string	"onExchangeEnd"
	.byte	0x8
	.byte	0xde
	.uaword	0x225a
	.byte	0x20
	.uleb128 0xa
	.string	"callbackData"
	.byte	0x8
	.byte	0xdf
	.uaword	0x2a5
	.byte	0x24
	.uleb128 0xa
	.string	"txHandler"
	.byte	0x8
	.byte	0xe0
	.uaword	0x227d
	.byte	0x28
	.uleb128 0xa
	.string	"rxHandler"
	.byte	0x8
	.byte	0xe1
	.uaword	0x227d
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChConfig"
	.byte	0x8
	.byte	0x73
	.uaword	0x1e2a
	.uleb128 0xb
	.string	"SpiIf_ChConfig_"
	.byte	0x1c
	.byte	0x8
	.byte	0xe4
	.uaword	0x1e74
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0xe6
	.uaword	0x2016
	.byte	0
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x8
	.byte	0xe7
	.uaword	0x277
	.byte	0x4
	.uleb128 0xa
	.string	"mode"
	.byte	0x8
	.byte	0xe8
	.uaword	0x2246
	.byte	0x8
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x8
	.byte	0xe9
	.uaword	0x210b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"SpiIf"
	.byte	0x8
	.byte	0x74
	.uaword	0x1e81
	.uleb128 0xb
	.string	"SpiIf_"
	.byte	0x28
	.byte	0x8
	.byte	0x99
	.uaword	0x1ef5
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0x9b
	.uaword	0x298
	.byte	0
	.uleb128 0xa
	.string	"sending"
	.byte	0x8
	.byte	0x9c
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0xa
	.string	"activeChannel"
	.byte	0x8
	.byte	0x9d
	.uaword	0x1fb5
	.byte	0x8
	.uleb128 0xa
	.string	"txCount"
	.byte	0x8
	.byte	0x9e
	.uaword	0x1f9
	.byte	0xc
	.uleb128 0xa
	.string	"rxCount"
	.byte	0x8
	.byte	0x9f
	.uaword	0x1f9
	.byte	0x10
	.uleb128 0xa
	.string	"functions"
	.byte	0x8
	.byte	0xa0
	.uaword	0x2094
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x76
	.uaword	0x1f2a
	.uleb128 0xc
	.string	"onTransfer"
	.byte	0x8
	.byte	0x78
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"byteAccess"
	.byte	0x8
	.byte	0x79
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Flags"
	.byte	0x8
	.byte	0x7a
	.uaword	0x1f3d
	.uleb128 0x18
	.uaword	0x1ef5
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x7c
	.uaword	0x1f69
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0x8
	.byte	0x7e
	.uaword	0x2a5
	.byte	0
	.uleb128 0xa
	.string	"remaining"
	.byte	0x8
	.byte	0x7f
	.uaword	0x2ae
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Job"
	.byte	0x8
	.byte	0x80
	.uaword	0x1f42
	.uleb128 0x3
	.string	"SpiIf_Exchange"
	.byte	0x8
	.byte	0x8a
	.uaword	0x1f90
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f96
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x1c4f
	.uaword	0x1fb5
	.uleb128 0x1b
	.uaword	0x1fb5
	.uleb128 0x1b
	.uaword	0x1fbb
	.uleb128 0x1b
	.uaword	0x2a5
	.uleb128 0x1b
	.uaword	0x2ae
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1d5a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fc1
	.uleb128 0x1c
	.uleb128 0x3
	.string	"SpiIf_GetStatus"
	.byte	0x8
	.byte	0x8b
	.uaword	0x1fd9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fdf
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x1c4f
	.uaword	0x1fef
	.uleb128 0x1b
	.uaword	0x1fb5
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_OnEvent"
	.byte	0x8
	.byte	0x8c
	.uaword	0x2004
	.uleb128 0x5
	.byte	0x4
	.uaword	0x200a
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x2016
	.uleb128 0x1b
	.uaword	0x2016
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e74
	.uleb128 0x3
	.string	"SpiIf_SlsoTiming_HalfTsclk"
	.byte	0x8
	.byte	0x8d
	.uaword	0x1f9
	.uleb128 0x9
	.byte	0x14
	.byte	0x8
	.byte	0x90
	.uaword	0x2094
	.uleb128 0xa
	.string	"exchange"
	.byte	0x8
	.byte	0x92
	.uaword	0x1f7a
	.byte	0
	.uleb128 0xa
	.string	"getStatus"
	.byte	0x8
	.byte	0x93
	.uaword	0x1fc2
	.byte	0x4
	.uleb128 0xa
	.string	"onTx"
	.byte	0x8
	.byte	0x94
	.uaword	0x1fef
	.byte	0x8
	.uleb128 0xa
	.string	"onRx"
	.byte	0x8
	.byte	0x95
	.uaword	0x1fef
	.byte	0xc
	.uleb128 0xa
	.string	"onError"
	.byte	0x8
	.byte	0x96
	.uaword	0x1fef
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_funcs"
	.byte	0x8
	.byte	0x97
	.uaword	0x203e
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0xb3
	.uaword	0x210b
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x8
	.byte	0xb5
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"phase"
	.byte	0x8
	.byte	0xb6
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"receive"
	.byte	0x8
	.byte	0xb7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"transmit"
	.byte	0x8
	.byte	0xb8
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"reserved"
	.byte	0x8
	.byte	0xb9
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Spi_ErrorChecks"
	.byte	0x8
	.byte	0xba
	.uaword	0x20a7
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0xbd
	.uaword	0x2246
	.uleb128 0xc
	.string	"enabled"
	.byte	0x8
	.byte	0xbf
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"autoCS"
	.byte	0x8
	.byte	0xc0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"loopback"
	.byte	0x8
	.byte	0xc1
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"clockPolarity"
	.byte	0x8
	.byte	0xc2
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"shiftClock"
	.byte	0x8
	.byte	0xc3
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"dataHeading"
	.byte	0x8
	.byte	0xc4
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"dataWidth"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1f9
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"csActiveLevel"
	.byte	0x8
	.byte	0xc7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"parityCheck"
	.byte	0x8
	.byte	0xc9
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"parityMode"
	.byte	0x8
	.byte	0xca
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"csInactiveDelay"
	.byte	0x8
	.byte	0xcc
	.uaword	0x201c
	.byte	0x4
	.uleb128 0xa
	.string	"csLeadDelay"
	.byte	0x8
	.byte	0xcd
	.uaword	0x201c
	.byte	0x8
	.uleb128 0xa
	.string	"csTrailDelay"
	.byte	0x8
	.byte	0xce
	.uaword	0x201c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChMode"
	.byte	0x8
	.byte	0xd0
	.uaword	0x2122
	.uleb128 0x3
	.string	"SpiIf_Cbk"
	.byte	0x8
	.byte	0xd3
	.uaword	0x226b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2271
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x227d
	.uleb128 0x1b
	.uaword	0x2a5
	.byte	0
	.uleb128 0x3
	.string	"TxRxHandler"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2290
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2296
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x22a2
	.uleb128 0x1b
	.uaword	0x1fb5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1b78
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x60
	.uaword	0x2400
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_7"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_8"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_9"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_10"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_11"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_12"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_13"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_14"
	.sleb128 14
	.byte	0
	.uleb128 0x3
	.string	"IfxQspi_ChannelId"
	.byte	0x2
	.byte	0x70
	.uaword	0x22a8
	.uleb128 0x1e
	.byte	0x2
	.byte	0x2
	.uahalf	0x135
	.uaword	0x243f
	.uleb128 0x15
	.string	"pre"
	.byte	0x2
	.uahalf	0x137
	.uaword	0x1c8
	.byte	0
	.uleb128 0x15
	.string	"delay"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x1c8
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"IfxQspi_DelayConst"
	.byte	0x2
	.uahalf	0x139
	.uaword	0x2419
	.uleb128 0x1f
	.string	"IfxQspi_getModuleFrequency"
	.byte	0x2
	.uahalf	0x3d3
	.byte	0x1
	.uaword	0x167
	.byte	0x3
	.uaword	0x2490
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3d3
	.uaword	0x22a2
	.byte	0
	.uleb128 0x1f
	.string	"IfxQspi_getTimeQuantaFrequency"
	.byte	0x2
	.uahalf	0x3f4
	.byte	0x1
	.uaword	0x167
	.byte	0x3
	.uaword	0x24ca
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3f4
	.uaword	0x22a2
	.byte	0
	.uleb128 0x21
	.string	"Ifx__max"
	.byte	0x3
	.byte	0x97
	.byte	0x1
	.uaword	0x258
	.byte	0x3
	.uaword	0x24fe
	.uleb128 0x22
	.string	"a"
	.byte	0x3
	.byte	0x97
	.uaword	0x258
	.uleb128 0x22
	.string	"b"
	.byte	0x3
	.byte	0x97
	.uaword	0x258
	.uleb128 0x23
	.string	"res"
	.byte	0x3
	.byte	0x99
	.uaword	0x258
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calcRealBaudrate"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x167
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2583
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x37
	.uaword	0x22a2
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x37
	.uaword	0x2400
	.uaword	.LLST1
	.uleb128 0x26
	.string	"cs"
	.byte	0x1
	.byte	0x39
	.uaword	0x170
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.string	"fQspi"
	.byte	0x1
	.byte	0x3a
	.uaword	0x167
	.uaword	.LLST2
	.uleb128 0x26
	.string	"econ"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1b28
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.uaword	.LVL2
	.uaword	0x31e7
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxQspi_calculateExtendedConfigurationValue"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x274d
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x61
	.uaword	0x22a2
	.uaword	.LLST3
	.uleb128 0x2a
	.string	"cs"
	.byte	0x1
	.byte	0x61
	.uaword	0x274d
	.uaword	.LLST4
	.uleb128 0x2a
	.string	"chConfig"
	.byte	0x1
	.byte	0x61
	.uaword	0x2752
	.uaword	.LLST5
	.uleb128 0x27
	.string	"econ"
	.byte	0x1
	.byte	0x65
	.uaword	0x14db
	.uaword	.LLST6
	.uleb128 0x2b
	.string	"maxB"
	.byte	0x1
	.byte	0x68
	.uaword	0x275d
	.byte	0x3
	.uleb128 0x27
	.string	"tQspi"
	.byte	0x1
	.byte	0x69
	.uaword	0x277
	.uaword	.LLST7
	.uleb128 0x27
	.string	"fBaud"
	.byte	0x1
	.byte	0x6a
	.uaword	0x277
	.uaword	.LLST8
	.uleb128 0x2b
	.string	"abcMin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x170
	.byte	0x2
	.uleb128 0x2b
	.string	"abcMax"
	.byte	0x1
	.byte	0x6c
	.uaword	0x170
	.byte	0x8
	.uleb128 0x27
	.string	"q"
	.byte	0x1
	.byte	0x6d
	.uaword	0x170
	.uaword	.LLST9
	.uleb128 0x27
	.string	"bestQ"
	.byte	0x1
	.byte	0x6d
	.uaword	0x170
	.uaword	.LLST10
	.uleb128 0x27
	.string	"abc"
	.byte	0x1
	.byte	0x6d
	.uaword	0x170
	.uaword	.LLST11
	.uleb128 0x27
	.string	"bestAbc"
	.byte	0x1
	.byte	0x6d
	.uaword	0x170
	.uaword	.LLST12
	.uleb128 0x2c
	.uaword	.LASF13
	.byte	0x1
	.byte	0x6d
	.uaword	0x170
	.uaword	.LLST13
	.uleb128 0x27
	.string	"diffB"
	.byte	0x1
	.byte	0x6e
	.uaword	0x221
	.uaword	.LLST14
	.uleb128 0x27
	.string	"error"
	.byte	0x1
	.byte	0x6f
	.uaword	0x277
	.uaword	.LLST15
	.uleb128 0x2c
	.uaword	.LASF14
	.byte	0x1
	.byte	0x6f
	.uaword	0x277
	.uaword	.LLST16
	.uleb128 0x27
	.string	"tTmp"
	.byte	0x1
	.byte	0x70
	.uaword	0x277
	.uaword	.LLST17
	.uleb128 0x27
	.string	"tBaudTmp"
	.byte	0x1
	.byte	0x70
	.uaword	0x277
	.uaword	.LLST18
	.uleb128 0x27
	.string	"done"
	.byte	0x1
	.byte	0x71
	.uaword	0x1a8
	.uaword	.LLST19
	.uleb128 0x26
	.string	"tBaud"
	.byte	0x1
	.byte	0x79
	.uaword	0x277
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2d
	.uaword	0x2490
	.uaword	.LBB19
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x69
	.uleb128 0x2e
	.uaword	0x24bd
	.uleb128 0x2f
	.uaword	0x245a
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x2
	.uahalf	0x3f6
	.uleb128 0x2e
	.uaword	0x2483
	.uleb128 0x28
	.uaword	.LVL8
	.uaword	0x31e7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1c8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2758
	.uleb128 0x30
	.uaword	0x1e14
	.uleb128 0x30
	.uaword	0x170
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calculatePrescaler"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2856
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0xd2
	.uaword	0x22a2
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0xd2
	.uaword	0x167
	.uaword	.LLST21
	.uleb128 0x26
	.string	"error"
	.byte	0x1
	.byte	0xd4
	.uaword	0x167
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.uaword	.LASF14
	.byte	0x1
	.byte	0xd4
	.uaword	0x167
	.uaword	.LLST22
	.uleb128 0x31
	.uaword	.LASF13
	.byte	0x1
	.byte	0xd5
	.uaword	0x167
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.string	"fQspiIn"
	.byte	0x1
	.byte	0xd6
	.uaword	0x167
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0xd8
	.uaword	0x1f9
	.uaword	.LLST23
	.uleb128 0x27
	.string	"bestPre"
	.byte	0x1
	.byte	0xd8
	.uaword	0x1f9
	.uaword	.LLST24
	.uleb128 0x32
	.uaword	0x245a
	.uaword	.LBB27
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xd6
	.uaword	0x2833
	.uleb128 0x33
	.uaword	0x2483
	.uaword	.LLST25
	.uleb128 0x28
	.uaword	.LVL46
	.uaword	0x31e7
	.byte	0
	.uleb128 0x34
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x27
	.string	"tempHalfBaud"
	.byte	0x1
	.byte	0xdc
	.uaword	0x167
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxQspi_calculateTimeQuantumLength"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB290
	.uaword	.LFE290
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2954
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0xea
	.uaword	0x22a2
	.uaword	.LLST27
	.uleb128 0x2a
	.string	"maxBaudrate"
	.byte	0x1
	.byte	0xea
	.uaword	0x167
	.uaword	.LLST28
	.uleb128 0x27
	.string	"abcq"
	.byte	0x1
	.byte	0xf1
	.uaword	0x1f9
	.uaword	.LLST29
	.uleb128 0x27
	.string	"tq"
	.byte	0x1
	.byte	0xf1
	.uaword	0x1f9
	.uaword	.LLST30
	.uleb128 0x27
	.string	"bestTq"
	.byte	0x1
	.byte	0xf1
	.uaword	0x1f9
	.uaword	.LLST31
	.uleb128 0x27
	.string	"realTQ"
	.byte	0x1
	.byte	0xf2
	.uaword	0x167
	.uaword	.LLST32
	.uleb128 0x27
	.string	"deltaMax"
	.byte	0x1
	.byte	0xf2
	.uaword	0x167
	.uaword	.LLST33
	.uleb128 0x27
	.string	"bestDelta"
	.byte	0x1
	.byte	0xf2
	.uaword	0x167
	.uaword	.LLST34
	.uleb128 0x27
	.string	"achievedMax"
	.byte	0x1
	.byte	0xf2
	.uaword	0x167
	.uaword	.LLST35
	.uleb128 0x27
	.string	"fQspi"
	.byte	0x1
	.byte	0xf3
	.uaword	0x167
	.uaword	.LLST36
	.uleb128 0x28
	.uaword	.LVL56
	.uaword	0x31e7
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"IfxQspi_getAddress"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	0x22a2
	.uaword	.LFB291
	.uaword	.LFE291
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x29a0
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x115
	.uaword	0x1bf4
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"module"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x22a2
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"IfxQspi_getIndex"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	0x1bf4
	.uaword	.LFB292
	.uaword	.LFE292
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x29fe
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x126
	.uaword	0x22a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x38
	.string	"index"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x1f9
	.uaword	.LLST37
	.uleb128 0x38
	.string	"result"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x1bf4
	.uaword	.LLST38
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_read16"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a62
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x22a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x2a62
	.uaword	.LLST39
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x2ae
	.uaword	.LLST40
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x2a68
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1d5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a6e
	.uleb128 0x18
	.uaword	0x179d
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_read32"
	.byte	0x1
	.uahalf	0x146
	.byte	0x1
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ad7
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x146
	.uaword	0x22a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x146
	.uaword	0x2ad7
	.uaword	.LLST41
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x146
	.uaword	0x2ae
	.uaword	.LLST42
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x148
	.uaword	0x2a68
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f9
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_read8"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b40
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x152
	.uaword	0x22a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x152
	.uaword	0x2b40
	.uaword	.LLST43
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x152
	.uaword	0x2ae
	.uaword	.LLST44
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x154
	.uaword	0x2a68
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c8
	.uleb128 0x35
	.byte	0x1
	.string	"IfxQspi_recalcBasicConfiguration"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2be1
	.uleb128 0x3c
	.string	"oldBACON"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1f9
	.uaword	.LLST45
	.uleb128 0x3d
	.string	"numOfData"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x2ae
	.byte	0x1
	.byte	0x55
	.uleb128 0x3d
	.string	"shortData"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1a8
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.string	"lastData"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x1a8
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"bacon"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x1398
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_resetModule"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c84
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x22a2
	.uaword	.LLST46
	.uleb128 0x38
	.string	"passwd"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1d5
	.uaword	.LLST47
	.uleb128 0x28
	.uaword	.LVL113
	.uaword	0x320c
	.uleb128 0x3e
	.uaword	.LVL115
	.uaword	0x3238
	.uaword	0x2c4a
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.uaword	.LVL116
	.uaword	0x3262
	.uaword	0x2c5e
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.uaword	.LVL117
	.uaword	0x3238
	.uaword	0x2c72
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL118
	.byte	0x1
	.uaword	0x3262
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_setSlaveSelectOutputControl"
	.byte	0x1
	.uahalf	0x180
	.byte	0x1
	.uaword	.LFB298
	.uaword	.LFE298
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d2b
	.uleb128 0x36
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x180
	.uaword	0x22a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x180
	.uaword	0x2400
	.uaword	.LLST48
	.uleb128 0x3d
	.string	"outputEnable"
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1a8
	.byte	0x1
	.byte	0x55
	.uleb128 0x3d
	.string	"activeLevel"
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1a8
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.string	"mask"
	.byte	0x1
	.uahalf	0x182
	.uaword	0x1d5
	.uaword	.LLST49
	.uleb128 0x38
	.string	"ssoc"
	.byte	0x1
	.uahalf	0x184
	.uaword	0x181e
	.uaword	.LLST50
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_write16"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2db0
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x22a2
	.uaword	.LLST51
	.uleb128 0x3a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x2400
	.uaword	.LLST52
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x2a62
	.uaword	.LLST53
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x2ae
	.uaword	.LLST54
	.uleb128 0x38
	.string	"cs"
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x170
	.uaword	.LLST55
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x2db0
	.uaword	.LLST56
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2db6
	.uleb128 0x18
	.uaword	0x1498
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_write32"
	.byte	0x1
	.uahalf	0x1aa
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e40
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x22a2
	.uaword	.LLST57
	.uleb128 0x3a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x2400
	.uaword	.LLST58
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x2ad7
	.uaword	.LLST59
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x2ae
	.uaword	.LLST60
	.uleb128 0x38
	.string	"cs"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x170
	.uaword	.LLST61
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x2db0
	.uaword	.LLST62
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_write8"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.uaword	.LFB301
	.uaword	.LFE301
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ec4
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x22a2
	.uaword	.LLST63
	.uleb128 0x3a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x2400
	.uaword	.LLST64
	.uleb128 0x3a
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x2b40
	.uaword	.LLST65
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x2ae
	.uaword	.LLST66
	.uleb128 0x38
	.string	"cs"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x170
	.uaword	.LLST67
	.uleb128 0x41
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x2db0
	.uaword	.LLST68
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"IfxQspi_calculateDelayConstants"
	.byte	0x1
	.uahalf	0x1c4
	.byte	0x1
	.uaword	.LFB302
	.uaword	.LFE302
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x307e
	.uleb128 0x3a
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x307e
	.uaword	.LLST69
	.uleb128 0x3a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x3089
	.uaword	.LLST70
	.uleb128 0x3c
	.string	"chMode"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x308e
	.uaword	.LLST71
	.uleb128 0x3a
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x3099
	.uaword	.LLST72
	.uleb128 0x37
	.string	"divFactor"
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x1f9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.string	"dlyFactorPtr"
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x309f
	.uaword	.LLST73
	.uleb128 0x37
	.string	"scaleTemp"
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x277
	.byte	0x1
	.byte	0x59
	.uleb128 0x38
	.string	"preTemp"
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x1c8
	.uaword	.LLST74
	.uleb128 0x38
	.string	"preFinal"
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x1c8
	.uaword	.LLST75
	.uleb128 0x38
	.string	"delayTemp"
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x1c8
	.uaword	.LLST76
	.uleb128 0x38
	.string	"delayFinal"
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x1c8
	.uaword	.LLST77
	.uleb128 0x38
	.string	"matchFound"
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x1a8
	.uaword	.LLST78
	.uleb128 0x38
	.string	"index"
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x1c8
	.uaword	.LLST79
	.uleb128 0x38
	.string	"cs"
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x1c8
	.uaword	.LLST80
	.uleb128 0x43
	.uaword	0x24ca
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x3045
	.uleb128 0x33
	.uaword	0x24e9
	.uaword	.LLST81
	.uleb128 0x33
	.uaword	0x24e0
	.uaword	.LLST82
	.uleb128 0x34
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x44
	.uaword	0x24f2
	.uaword	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x24ca
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x1ef
	.uleb128 0x45
	.uaword	0x24e9
	.byte	0
	.uleb128 0x46
	.uaword	0x24e0
	.byte	0x8
	.byte	0x72
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uleb128 0x34
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x44
	.uaword	0x24f2
	.uaword	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3084
	.uleb128 0x30
	.uaword	0x1b78
	.uleb128 0x30
	.uaword	0x2400
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3094
	.uleb128 0x30
	.uaword	0x2246
	.uleb128 0x5
	.byte	0x4
	.uaword	0x243f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x30a5
	.uleb128 0x30
	.uaword	0x201c
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calculateBasicConfigurationValue"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x1f9
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x316d
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x44
	.uaword	0x22a2
	.uaword	.LLST85
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x44
	.uaword	0x3089
	.uaword	.LLST86
	.uleb128 0x2a
	.string	"chMode"
	.byte	0x1
	.byte	0x44
	.uaword	0x308e
	.uaword	.LLST87
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0x44
	.uaword	0x316d
	.uaword	.LLST88
	.uleb128 0x27
	.string	"bacon"
	.byte	0x1
	.byte	0x48
	.uaword	0x1398
	.uaword	.LLST89
	.uleb128 0x31
	.uaword	.LASF18
	.byte	0x1
	.byte	0x49
	.uaword	0x3172
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x47
	.uaword	.LVL183
	.uaword	0x2ec4
	.uleb128 0x3f
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x3f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x167
	.uleb128 0x16
	.uaword	0x243f
	.uaword	0x3182
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.uaword	0x319
	.uaword	0x3192
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0x3
	.byte	0
	.uleb128 0x48
	.string	"IfxQspi_cfg_indexMap"
	.byte	0x7
	.byte	0x5d
	.uaword	0x31b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x3182
	.uleb128 0x16
	.uaword	0x319
	.uaword	0x31c5
	.uleb128 0x17
	.uaword	0x1b1c
	.byte	0
	.byte	0
	.uleb128 0x48
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xa4
	.uaword	0x31e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x31b5
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0xa
	.uahalf	0x370
	.byte	0x1
	.uaword	0x277
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x181
	.byte	0x1
	.uaword	0x1d5
	.byte	0x1
	.uleb128 0x4a
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0x3262
	.uleb128 0x1b
	.uaword	0x1d5
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x1d5
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x36
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE286
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LFE288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LFE288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL37
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL10
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE288
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL10
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LFE288
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x49742400
	.uaword	.LVL13
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0xe
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x167
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0xe
	.byte	0x78
	.sleb128 1
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x167
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LFE288
	.uahalf	0xe
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x167
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x167
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x13
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0x1f
	.uleb128 0x167
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x167
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE289
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1
	.uaword	.LFE289
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x167
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x4b189680
	.uaword	.LVL48
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE289
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x167
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x167
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE289
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x167
	.byte	0x31
	.byte	0x76
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL55
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1
	.uaword	.LFE290
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL55
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56-1
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL55
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL71
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL84
	.uaword	.LFE290
	.uahalf	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x167
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1
	.uaword	.LVL82
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x167
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LFE290
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x78
	.sleb128 -1
	.byte	0xf7
	.uleb128 0x170
	.byte	0xf7
	.uleb128 0x167
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x167
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL67
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL80
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x177
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x177
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL82
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x177
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x167
	.byte	0x78
	.sleb128 -1
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x177
	.byte	0xf7
	.uleb128 0x167
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58-1
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LFE292
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL88
	.uaword	.LVL91
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LFE292
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LFE293
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE294
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LFE294
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL109
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111
	.uaword	.LFE296
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL112
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL113-1
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL114
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115-1
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL120
	.uaword	.LFE298
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL122
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL129
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL131
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL135
	.uaword	.LFE299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL132
	.uaword	.LFE299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL131
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL139
	.uaword	.LFE299
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL131
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LFE299
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133
	.uaword	.LFE299
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE299
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL140
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL144
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL141
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL140
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL148
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL140
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LFE300
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL142
	.uaword	.LFE300
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL144
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL144
	.uaword	.LFE300
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL149
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL152
	.uaword	.LFE301
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL150
	.uaword	.LFE301
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL149
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL157
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL149
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151
	.uaword	.LFE301
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LFE301
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL160
	.uaword	.LFE302
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL159
	.uaword	.LFE302
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL163
	.uaword	.LFE302
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL163
	.uaword	.LFE302
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL163
	.uaword	.LFE302
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL165
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL169
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL174
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL178
	.uaword	.LFE302
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL164
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LFE302
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LFE302
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL174
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL176
	.uaword	.LVL178
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL183-1
	.uaword	.LFE287
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL183-1
	.uaword	.LFE287
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL183-1
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL183-1
	.uaword	.LFE287
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x167
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL189
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x9c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	.LFB290
	.uaword	.LFE290
	.uaword	.LFB291
	.uaword	.LFE291
	.uaword	.LFB292
	.uaword	.LFE292
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	.LFB294
	.uaword	.LFE294
	.uaword	.LFB295
	.uaword	.LFE295
	.uaword	.LFB296
	.uaword	.LFE296
	.uaword	.LFB297
	.uaword	.LFE297
	.uaword	.LFB298
	.uaword	.LFE298
	.uaword	.LFB299
	.uaword	.LFE299
	.uaword	.LFB300
	.uaword	.LFE300
	.uaword	.LFB301
	.uaword	.LFE301
	.uaword	.LFB302
	.uaword	.LFE302
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"qspi"
.LASF15:
	.string	"count"
.LASF10:
	.string	"data"
.LASF9:
	.string	"baudrate"
.LASF16:
	.string	"rxFifo"
.LASF0:
	.string	"reserved_0"
.LASF6:
	.string	"reserved_1"
.LASF1:
	.string	"reserved_2"
.LASF14:
	.string	"bestError"
.LASF5:
	.string	"reserved_8"
.LASF17:
	.string	"dataEntry"
.LASF13:
	.string	"halfBaud"
.LASF12:
	.string	"channelId"
.LASF18:
	.string	"delayConst"
.LASF7:
	.string	"driver"
.LASF3:
	.string	"reserved_13"
.LASF2:
	.string	"reserved_15"
.LASF4:
	.string	"reserved_30"
.LASF8:
	.string	"errorChecks"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxQspi_cfg_indexMap,STT_OBJECT,32
	.extern	IfxScuCcu_getMaxFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
