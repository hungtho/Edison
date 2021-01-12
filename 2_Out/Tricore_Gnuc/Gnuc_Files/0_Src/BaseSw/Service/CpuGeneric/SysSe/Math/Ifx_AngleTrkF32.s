	.file	"Ifx_AngleTrkF32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_AngleTrkF32_setOffset,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_setOffset
	.type	Ifx_AngleTrkF32_setOffset, @function
Ifx_AngleTrkF32_setOffset:
.LFB215:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
	.loc 1 275 0
.LVL0:
	.loc 1 277 0
	st.w	[%a4] 16, %d4
	ret
.LFE215:
	.size	Ifx_AngleTrkF32_setOffset, .-Ifx_AngleTrkF32_setOffset
.section .text.Ifx_AngleTrkF32_getRawPosition,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getRawPosition
	.type	Ifx_AngleTrkF32_getRawPosition, @function
Ifx_AngleTrkF32_getRawPosition:
.LFB218:
	.loc 1 318 0
.LVL1:
	.loc 1 321 0
	ld.w	%d2, [%a4]0
	ret
.LFE218:
	.size	Ifx_AngleTrkF32_getRawPosition, .-Ifx_AngleTrkF32_getRawPosition
.section .text.Ifx_AngleTrkF32_getSpeed,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getSpeed
	.type	Ifx_AngleTrkF32_getSpeed, @function
Ifx_AngleTrkF32_getSpeed:
.LFB219:
	.loc 1 328 0
.LVL2:
	.loc 1 334 0
	ld.w	%d2, [%a4] 108
	ret
.LFE219:
	.size	Ifx_AngleTrkF32_getSpeed, .-Ifx_AngleTrkF32_getSpeed
	.global	__extendsfdf2
	.global	__adddf3
	.global	__muldf3
	.global	__truncdfsf2
.section .text.Ifx_AngleTrkF32_getAbsolutePosition,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getAbsolutePosition
	.type	Ifx_AngleTrkF32_getAbsolutePosition, @function
Ifx_AngleTrkF32_getAbsolutePosition:
.LFB220:
	.loc 1 339 0
.LVL3:
	.loc 1 340 0
	ld.w	%d15, [%a4]0
	ld.w	%d4, [%a4] 4
	itof	%d2, %d15
	ld.w	%d15, [%a4] 24
	itof	%d4, %d4
	itof	%d15, %d15
	div.f	%d15, %d2, %d15
	add.f	%d4, %d4, %d15
	call	__extendsfdf2
.LVL4:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL5:
	movh	%d7, 16393
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__muldf3
.LVL6:
	mov	%e4, %d3, %d2
	.loc 1 341 0
	j	__truncdfsf2
.LVL7:
.LFE220:
	.size	Ifx_AngleTrkF32_getAbsolutePosition, .-Ifx_AngleTrkF32_getAbsolutePosition
.section .text.Ifx_AngleTrkF32_getDirection,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getDirection
	.type	Ifx_AngleTrkF32_getDirection, @function
Ifx_AngleTrkF32_getDirection:
.LFB221:
	.loc 1 345 0
.LVL8:
	.loc 1 347 0
	ld.bu	%d2, [%a4] 8
	ret
.LFE221:
	.size	Ifx_AngleTrkF32_getDirection, .-Ifx_AngleTrkF32_getDirection
.section .text.Ifx_AngleTrkF32_getFault,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getFault
	.type	Ifx_AngleTrkF32_getFault, @function
Ifx_AngleTrkF32_getFault:
.LFB222:
	.loc 1 351 0
.LVL9:
	.loc 1 353 0
	ld.w	%d2, [%a4] 12
	ret
.LFE222:
	.size	Ifx_AngleTrkF32_getFault, .-Ifx_AngleTrkF32_getFault
.section .text.Ifx_AngleTrkF32_getOffset,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getOffset
	.type	Ifx_AngleTrkF32_getOffset, @function
Ifx_AngleTrkF32_getOffset:
.LFB223:
	.loc 1 357 0
.LVL10:
	.loc 1 359 0
	ld.w	%d2, [%a4] 16
	ret
.LFE223:
	.size	Ifx_AngleTrkF32_getOffset, .-Ifx_AngleTrkF32_getOffset
.section .text.Ifx_AngleTrkF32_getPeriodPerRotation,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getPeriodPerRotation
	.type	Ifx_AngleTrkF32_getPeriodPerRotation, @function
Ifx_AngleTrkF32_getPeriodPerRotation:
.LFB224:
	.loc 1 363 0
.LVL11:
	.loc 1 365 0
	ld.hu	%d2, [%a4] 22
	ret
.LFE224:
	.size	Ifx_AngleTrkF32_getPeriodPerRotation, .-Ifx_AngleTrkF32_getPeriodPerRotation
.section .text.Ifx_AngleTrkF32_getPosition,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getPosition
	.type	Ifx_AngleTrkF32_getPosition, @function
Ifx_AngleTrkF32_getPosition:
.LFB225:
	.loc 1 369 0
.LVL12:
	.loc 1 370 0
	ld.w	%d2, [%a4]0
	ld.w	%d15, [%a4] 32
	itof	%d2, %d2
	.loc 1 371 0
	mul.f	%d2, %d2, %d15
	ret
.LFE225:
	.size	Ifx_AngleTrkF32_getPosition, .-Ifx_AngleTrkF32_getPosition
.section .text.Ifx_AngleTrkF32_getRefreshPeriod,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getRefreshPeriod
	.type	Ifx_AngleTrkF32_getRefreshPeriod, @function
Ifx_AngleTrkF32_getRefreshPeriod:
.LFB226:
	.loc 1 375 0
.LVL13:
	.loc 1 377 0
	ld.w	%d2, [%a4] 28
	ret
.LFE226:
	.size	Ifx_AngleTrkF32_getRefreshPeriod, .-Ifx_AngleTrkF32_getRefreshPeriod
.section .text.Ifx_AngleTrkF32_getResolution,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getResolution
	.type	Ifx_AngleTrkF32_getResolution, @function
Ifx_AngleTrkF32_getResolution:
.LFB227:
	.loc 1 381 0
.LVL14:
	.loc 1 383 0
	ld.w	%d2, [%a4] 24
	ret
.LFE227:
	.size	Ifx_AngleTrkF32_getResolution, .-Ifx_AngleTrkF32_getResolution
.section .text.Ifx_AngleTrkF32_getSensorType,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getSensorType
	.type	Ifx_AngleTrkF32_getSensorType, @function
Ifx_AngleTrkF32_getSensorType:
.LFB228:
	.loc 1 387 0
.LVL15:
	.loc 1 390 0
	mov	%d2, 3
	ret
.LFE228:
	.size	Ifx_AngleTrkF32_getSensorType, .-Ifx_AngleTrkF32_getSensorType
.section .text.Ifx_AngleTrkF32_getTurn,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_getTurn
	.type	Ifx_AngleTrkF32_getTurn, @function
Ifx_AngleTrkF32_getTurn:
.LFB229:
	.loc 1 394 0
.LVL16:
	.loc 1 396 0
	ld.w	%d2, [%a4] 4
	ret
.LFE229:
	.size	Ifx_AngleTrkF32_getTurn, .-Ifx_AngleTrkF32_getTurn
.section .text.Ifx_AngleTrkF32_resetFaults,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_resetFaults
	.type	Ifx_AngleTrkF32_resetFaults, @function
Ifx_AngleTrkF32_resetFaults:
.LFB230:
	.loc 1 400 0
.LVL17:
	.loc 1 401 0
	mov	%d15, 0
	st.w	[%a4] 12, %d15
	ret
.LFE230:
	.size	Ifx_AngleTrkF32_resetFaults, .-Ifx_AngleTrkF32_resetFaults
.section .text.Ifx_AngleTrkF32_setRefreshPeriod,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_setRefreshPeriod
	.type	Ifx_AngleTrkF32_setRefreshPeriod, @function
Ifx_AngleTrkF32_setRefreshPeriod:
.LFB231:
	.loc 1 406 0
.LVL18:
	.loc 1 407 0
	st.w	[%a4] 28, %d4
	ret
.LFE231:
	.size	Ifx_AngleTrkF32_setRefreshPeriod, .-Ifx_AngleTrkF32_setRefreshPeriod
.section .text.Ifx_AngleTrkF32_reset,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_reset
	.type	Ifx_AngleTrkF32_reset, @function
Ifx_AngleTrkF32_reset:
.LFB232:
	.loc 1 412 0
.LVL19:
	.loc 1 414 0
	mov	%d15, 2
	.loc 1 413 0
	mov	%d2, 0
	.loc 1 414 0
	st.b	[%a4] 8, %d15
	.loc 1 416 0
	mov	%d15, 0
	.loc 1 413 0
	st.w	[%a4]0, %d2
	.loc 1 415 0
	st.w	[%a4] 4, %d2
	.loc 1 416 0
	st.w	[%a4] 96, %d15
	.loc 1 417 0
	st.w	[%a4] 80, %d15
	.loc 1 418 0
	st.w	[%a4] 92, %d15
	.loc 1 419 0
	st.w	[%a4] 84, %d15
	.loc 1 420 0
	st.w	[%a4] 88, %d15
	.loc 1 421 0
	st.w	[%a4] 76, %d15
.LVL20:
.LBB23:
.LBB24:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h"
	.loc 2 95 0
	st.w	[%a4] 108, %d15
.LBE24:
.LBE23:
	.loc 1 426 0
	st.w	[%a4] 12, %d2
	ret
.LFE232:
	.size	Ifx_AngleTrkF32_reset, .-Ifx_AngleTrkF32_reset
.section .text.round_f,"ax",@progbits
	.align 1
	.global	round_f
	.type	round_f, @function
round_f:
.LFB209:
	.loc 1 100 0
.LVL21:
	.loc 1 102 0
	ftoiz	%d15, %d4
.LVL22:
	.loc 1 105 0
	movh	%d3, 16128
	itof	%d2, %d15
	sub.f	%d4, %d4, %d2
.LVL23:
	cmp.f	%d4, %d4, %d3
	jz.t	%d4, 2, .L18
	.loc 1 107 0
	add	%d2, %d15, 1
	itof	%d2, %d2
.LVL24:
.L18:
	.loc 1 115 0
	ret
.LFE209:
	.size	round_f, .-round_f
.section .text.Ifx_AngleTrkF32_setControlGains,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_setControlGains
	.type	Ifx_AngleTrkF32_setControlGains, @function
Ifx_AngleTrkF32_setControlGains:
.LFB210:
	.loc 1 125 0
.LVL25:
	.loc 1 126 0
	mul.f	%d6, %d6, %d6
.LVL26:
	add.f	%d3, %d4, %d4
	movh	%d2, 16256
	add.f	%d3, %d3, %d6
	mul.f	%d15, %d5, %d5
	add.f	%d3, %d3, %d2
	.loc 1 127 0
	add.f	%d6, %d6, %d2
	.loc 1 126 0
	div.f	%d3, %d3, %d15
	.loc 1 127 0
	mul.f	%d6, %d6, %d4
	mul.f	%d15, %d5, %d15
	.loc 1 126 0
	st.w	[%a4]0, %d3
	.loc 1 127 0
	div.f	%d15, %d6, %d15
	st.w	[%a4] 4, %d15
	.loc 1 128 0
	movh	%d15, 16384
	add.f	%d4, %d4, %d15
.LVL27:
	div.f	%d5, %d4, %d5
.LVL28:
	st.w	[%a4] 8, %d5
	ret
.LFE210:
	.size	Ifx_AngleTrkF32_setControlGains, .-Ifx_AngleTrkF32_setControlGains
.section .text.Ifx_AngleTrkF32_initConfig,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_initConfig
	.type	Ifx_AngleTrkF32_initConfig, @function
Ifx_AngleTrkF32_initConfig:
.LFB211:
	.loc 1 134 0
.LVL29:
	.loc 1 137 0
	movh	%d15, 18652
	addi	%d15, %d15, -9869
	st.w	[%a4]0, %d15
	.loc 1 138 0
	movh	%d15, 19840
	addi	%d15, %d15, 2301
	st.w	[%a4] 4, %d15
	.loc 1 139 0
	movh	%d15, 17707
	addi	%d15, %d15, 2731
	st.w	[%a4] 8, %d15
	.loc 1 142 0
	movh	%d15, 15795
	addi	%d15, %d15, -18237
	st.w	[%a4] 16, %d15
	.loc 1 143 0
	mov	%d15, 2089
	st.w	[%a4] 20, %d15
	.loc 1 144 0
	mov	%d15, 2007
	st.w	[%a4] 24, %d15
	.loc 1 145 0
	movh	%d15, 17096
	st.w	[%a4] 12, %d15
	.loc 1 146 0
	mov	%d15, 1
	st.h	[%a4] 28, %d15
	.loc 1 147 0
	mov	%d15, 0
	st.b	[%a4] 30, %d15
	.loc 1 148 0
	mov	%d15, 0
	st.w	[%a4] 36, %d15
	.loc 1 149 0
	mov	%d15, 4096
	.loc 1 140 0
	st.a	[%a4] 40, %a5
	.loc 1 141 0
	st.a	[%a4] 44, %a6
	.loc 1 149 0
	st.w	[%a4] 32, %d15
	ret
.LFE211:
	.size	Ifx_AngleTrkF32_initConfig, .-Ifx_AngleTrkF32_initConfig
.section .text.Ifx_AngleTrkF32_setUserSampling,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_setUserSampling
	.type	Ifx_AngleTrkF32_setUserSampling, @function
Ifx_AngleTrkF32_setUserSampling:
.LFB212:
	.loc 1 154 0
.LVL30:
	.loc 1 156 0
	movh	%d15, 16128
	.loc 1 155 0
	st.w	[%a4] 28, %d4
	.loc 1 156 0
	mul.f	%d4, %d4, %d15
.LVL31:
	st.w	[%a4] 68, %d4
	ret
.LFE212:
	.size	Ifx_AngleTrkF32_setUserSampling, .-Ifx_AngleTrkF32_setUserSampling
	.global	__divdf3
.section .text.Ifx_AngleTrkF32_init,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_init
	.type	Ifx_AngleTrkF32_init, @function
Ifx_AngleTrkF32_init:
.LFB213:
	.loc 1 166 0
.LVL32:
	.loc 1 167 0
	ld.w	%d2, [%a5] 36
	.loc 1 166 0
	mov	%d8, %d4
	.loc 1 168 0
	ld.w	%d4, [%a5] 32
.LVL33:
	.loc 1 167 0
	st.w	[%a4] 16, %d2
	.loc 1 168 0
	st.w	[%a4] 24, %d4
	.loc 1 169 0
	ld.bu	%d15, [%a5] 30
	.loc 1 176 0
	itof	%d4, %d4
	.loc 1 169 0
	st.b	[%a4] 20, %d15
	.loc 1 171 0
	mov	%d15, 0
	.loc 1 174 0
	st.w	[%a4] 12, %d15
	.loc 1 171 0
	st.w	[%a4]0, %d15
	.loc 1 173 0
	st.w	[%a4] 4, %d15
	.loc 1 175 0
	ld.h	%d15, [%a5] 28
	.loc 1 172 0
	mov	%d2, 2
	.loc 1 175 0
	st.h	[%a4] 22, %d15
	.loc 1 166 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 170 0
	st.w	[%a4] 28, %d8
	.loc 1 172 0
	st.b	[%a4] 8, %d2
	.loc 1 166 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 176 0
	call	__extendsfdf2
.LVL34:
	imask	%e4, 0, 20, 10
	mov	%e6, %d3, %d2
	call	__divdf3
.LVL35:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL36:
	movh	%d7, 16393
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__muldf3
.LVL37:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL38:
	.loc 1 178 0
	ld.w	%d15, [%a12] 8
	.loc 1 176 0
	st.w	[%a15] 32, %d2
	.loc 1 181 0
	ld.w	%d2, [%a12] 16
	.loc 1 179 0
	ld.w	%d3, [%a12] 4
	.loc 1 178 0
	st.w	[%a15] 44, %d15
	.loc 1 180 0
	ld.w	%d15, [%a12]0
	.loc 1 181 0
	st.w	[%a15] 48, %d2
	.loc 1 182 0
	ld.w	%d2, [%a12] 20
	.loc 1 179 0
	st.w	[%a15] 40, %d3
	.loc 1 182 0
	st.w	[%a15] 52, %d2
	.loc 1 183 0
	ld.w	%d2, [%a12] 24
	.loc 1 180 0
	st.w	[%a15] 36, %d15
	.loc 1 183 0
	st.w	[%a15] 56, %d2
	.loc 1 184 0
	ld.w	%d2, [%a12] 40
	st.w	[%a15] 60, %d2
	.loc 1 185 0
	ld.w	%d2, [%a12] 44
	st.w	[%a15] 64, %d2
	.loc 1 187 0
	mov	%d2, 0
	cmp.f	%d4, %d15, %d2
	jz.t	%d4, 2, .L27
.L26:
.LVL39:
.LBB25:
.LBB26:
	.loc 1 156 0
	movh	%d15, 16128
	mul.f	%d15, %d8, %d15
.LBE26:
.LBE25:
.LBB28:
	.loc 1 204 0
	ld.w	%d2, [%a12] 12
.LBE28:
.LBB29:
.LBB27:
	.loc 1 156 0
	st.w	[%a15] 68, %d15
.LBE27:
.LBE29:
	.loc 1 194 0
	mov	%d15, 0
	st.w	[%a15] 96, %d15
	.loc 1 195 0
	st.w	[%a15] 80, %d15
	.loc 1 196 0
	st.w	[%a15] 92, %d15
	.loc 1 197 0
	st.w	[%a15] 84, %d15
	.loc 1 198 0
	st.w	[%a15] 88, %d15
	.loc 1 199 0
	st.w	[%a15] 76, %d15
.LBB30:
	.loc 1 203 0
	movh	%d15, 16256
	st.w	[%SP] 8, %d15
	.loc 1 204 0
	movh	%d15, 16585
	addi	%d15, %d15, 4059
	mul.f	%d15, %d2, %d15
	.loc 1 206 0
	lea	%a4, [%a15] 100
	lea	%a5, [%SP] 4
	.loc 1 204 0
	st.w	[%SP] 4, %d15
	.loc 1 205 0
	st.w	[%SP] 12, %d8
	.loc 1 206 0
	j	Ifx_LowPassPt1F32_init
.LVL40:
.L27:
.LBE30:
	.loc 1 187 0 discriminator 1
	jnz.t	%d4, 0, .L26
	.loc 1 187 0 is_stmt 0 discriminator 2
	cmp.f	%d4, %d3, %d2
	jnz.t	%d4, 2, .L26
	.loc 1 187 0 discriminator 3
	jnz.t	%d4, 0, .L26
	.loc 1 187 0 discriminator 4
	cmp.f	%d3, %d15, %d2
	jnz.t	%d3, 2, .L26
	.loc 1 187 0 discriminator 5
	jnz.t	%d3, 0, .L26
.LVL41:
.LBB31:
.LBB32:
	.loc 1 126 0 is_stmt 1
	movh	%d15, 18652
	addi	%d15, %d15, -9869
	st.w	[%a15] 36, %d15
	.loc 1 127 0
	movh	%d15, 19840
	addi	%d15, %d15, 2301
	st.w	[%a15] 40, %d15
	.loc 1 128 0
	movh	%d15, 17707
	addi	%d15, %d15, 2731
	st.w	[%a15] 44, %d15
	j	.L26
.LBE32:
.LBE31:
.LFE213:
	.size	Ifx_AngleTrkF32_init, .-Ifx_AngleTrkF32_init
.section .text.Ifx_AngleTrkF32_step,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_step
	.type	Ifx_AngleTrkF32_step, @function
Ifx_AngleTrkF32_step:
.LFB214:
	.loc 1 224 0
.LVL42:
	.loc 1 227 0
	ld.bu	%d2, [%a4] 20
	.loc 1 224 0
	mov.aa	%a15, %a4
	mov	%d3, %d4
	mov	%d15, %d6
	.loc 1 227 0
	jz	%d2, .L29
	.loc 1 229 0
	itof	%d4, %d5
.LVL43:
	itof	%d5, %d3
.LVL44:
	call	Ifx_LutAtan2F32_float32
.LVL45:
.L30:
	.loc 1 242 0
	ld.w	%d3, [%a15] 96
	ld.w	%d5, [%a15] 40
	.loc 1 243 0
	ld.w	%d4, [%a15] 28
	.loc 1 242 0
	mul.f	%d5, %d3, %d5
	.loc 1 236 0
	st.w	[%a15] 72, %d2
	.loc 1 243 0
	mul.f	%d5, %d4, %d5
	.loc 1 237 0
	add.f	%d2, %d2, %d15
.LVL46:
	.loc 1 246 0
	ld.w	%d6, [%a15] 36
	.loc 1 243 0
	ld.w	%d15, [%a15] 92
.LVL47:
	.loc 1 246 0
	mul.f	%d6, %d3, %d6
	.loc 1 243 0
	add.f	%d5, %d5, %d15
	.loc 1 247 0
	ld.w	%d15, [%a15] 84
	.loc 1 243 0
	st.w	[%a15] 92, %d5
.LVL48:
	.loc 1 246 0
	add.f	%d5, %d5, %d6
.LVL49:
	.loc 1 239 0
	st.w	[%a15] 76, %d2
	.loc 1 247 0
	mul.f	%d4, %d4, %d5
	add.f	%d15, %d4, %d15
	.loc 1 250 0
	ld.w	%d4, [%a15] 44
	.loc 1 247 0
	st.w	[%a15] 84, %d15
	.loc 1 250 0
	mul.f	%d4, %d3, %d4
	.loc 1 251 0
	ld.w	%d3, [%a15] 68
.LVL50:
	.loc 1 250 0
	add.f	%d4, %d15, %d4
.LVL51:
	.loc 1 251 0
	ld.w	%d15, [%a15] 88
	.loc 1 252 0
	st.w	[%a15] 88, %d4
	.loc 1 251 0
	add.f	%d15, %d4, %d15
	mul.f	%d15, %d15, %d3
	ld.w	%d3, [%a15] 80
	add.f	%d15, %d15, %d3
.LVL52:
.LBB33:
.LBB34:
.LBB35:
	.loc 1 78 0
	movh	%d3, 16457
	addi	%d3, %d3, 4059
	cmp.f	%d3, %d15, %d3
	or.t	%d3, %d3,2, %d3,1
	jz	%d3, .L44
	.loc 1 80 0
	movh	%d3, 16585
	addi	%d3, %d3, 4059
	sub.f	%d15, %d15, %d3
.LVL53:
.L33:
.LBE35:
.LBE34:
.LBE33:
	.loc 1 254 0
	st.w	[%a15] 80, %d15
	.loc 1 257 0
	sub.f	%d15, %d2, %d15
.LVL54:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 78 0
	movh	%d2, 16457
.LVL55:
	addi	%d2, %d2, 4059
	cmp.f	%d2, %d15, %d2
	or.t	%d2, %d2,2, %d2,1
	jnz	%d2, .L46
	.loc 1 82 0
	movh	%d2, 49225
	addi	%d2, %d2, 4059
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 0, .L37
	.loc 1 84 0
	movh	%d2, 16585
	addi	%d2, %d2, 4059
	add.f	%d15, %d15, %d2
.LVL56:
.L37:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 257 0
	st.w	[%a15] 96, %d15
.LVL57:
	.loc 1 259 0
	mov	%d15, 0
.LVL58:
	cmp.f	%d15, %d4, %d15
	nand.t	%d15, %d15,2, %d15,2
	st.b	[%a15] 8, %d15
	.loc 1 263 0
	lea	%a4, [%a15] 100
	call	Ifx_LowPassPt1F32_do
.LVL59:
	.loc 1 267 0
	ld.w	%d2, [%a15] 80
	ret
.LVL60:
.L44:
.LBB43:
.LBB37:
.LBB36:
	.loc 1 82 0
	movh	%d3, 49225
	addi	%d3, %d3, 4059
	cmp.f	%d3, %d15, %d3
	jz.t	%d3, 0, .L33
	.loc 1 84 0
	movh	%d3, 16585
	addi	%d3, %d3, 4059
	add.f	%d15, %d15, %d3
.LVL61:
	j	.L33
.LVL62:
.L29:
.LBE36:
.LBE37:
.LBE43:
	.loc 1 233 0
	itof	%d4, %d4
.LVL63:
	itof	%d5, %d5
.LVL64:
	call	Ifx_LutAtan2F32_float32
.LVL65:
	j	.L30
.LVL66:
.L46:
.LBB44:
.LBB42:
.LBB41:
	.loc 1 80 0
	movh	%d2, 16585
	addi	%d2, %d2, 4059
	sub.f	%d15, %d15, %d2
.LVL67:
	j	.L37
.LBE41:
.LBE42:
.LBE44:
.LFE214:
	.size	Ifx_AngleTrkF32_step, .-Ifx_AngleTrkF32_step
.section .text.Ifx_AngleTrkF32_update,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_update
	.type	Ifx_AngleTrkF32_update, @function
Ifx_AngleTrkF32_update:
.LFB217:
	.loc 1 301 0
.LVL68:
	.loc 1 303 0
	ld.a	%a2, [%a4] 64
	ld.a	%a3, [%a4] 60
	mov	%d6, 0
	ld.h	%d5, [%a2]0
	ld.h	%d4, [%a3]0
	.loc 1 301 0
	mov.aa	%a15, %a4
	.loc 1 303 0
	call	Ifx_AngleTrkF32_step
.LVL69:
	.loc 1 305 0
	ld.w	%d3, [%a15] 24
	.loc 1 309 0
	ld.a	%a2, [%a15] 60
	.loc 1 305 0
	sh	%d15, %d3, -31
	add	%d15, %d3
	sha	%d15, -1
	itof	%d15, %d15
	mul.f	%d2, %d15, %d2
.LVL70:
	movh	%d15, 16457
	addi	%d15, %d15, 4059
	div.f	%d2, %d2, %d15
	.loc 1 306 0
	add	%d15, %d3, -1
.LBB45:
.LBB46:
	.loc 1 291 0
	ld.w	%d3, [%a15] 56
.LBE46:
.LBE45:
	.loc 1 305 0
	ftoiz	%d2, %d2
	.loc 1 306 0
	and	%d2, %d15
.LBB49:
.LBB47:
	.loc 1 290 0
	ld.h	%d15, [%a2]0
.LBE47:
.LBE49:
	.loc 1 309 0
	ld.a	%a2, [%a15] 64
	.loc 1 307 0
	st.w	[%a15]0, %d2
.LVL71:
.LBB50:
.LBB48:
	.loc 1 290 0
	ld.h	%d2, [%a2]0
	mul	%d2, %d2
	madd	%d15, %d2, %d15, %d15
.LVL72:
	.loc 1 291 0
	ld.bu	%d2, [%a15] 12
	lt	%d3, %d15, %d3
	ins.t	%d2, %d2,1, %d3,0
	.loc 1 292 0
	ld.w	%d3, [%a15] 52
	lt	%d15, %d3, %d15
.LVL73:
	ins.t	%d2, %d2,2, %d15,0
	.loc 1 293 0
	ld.w	%d15, [%a15] 96
	mov	%d3, 0
	cmp.f	%d3, %d15, %d3
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
	ld.w	%d3, [%a15] 48
	cmp.f	%d15, %d3, %d15
	ins.t	%d2, %d2,3, %d15,0
	st.b	[%a15] 12, %d2
.LVL74:
	ret
.LBE48:
.LBE50:
.LFE217:
	.size	Ifx_AngleTrkF32_update, .-Ifx_AngleTrkF32_update
.section .text.Ifx_AngleTrkF32_updateStatus,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_updateStatus
	.type	Ifx_AngleTrkF32_updateStatus, @function
Ifx_AngleTrkF32_updateStatus:
.LFB216:
	.loc 1 288 0
.LVL75:
	.loc 1 290 0
	mul	%d5, %d5
.LVL76:
	madd	%d4, %d5, %d4, %d4
.LVL77:
	.loc 1 291 0
	ld.w	%d15, [%a4] 56
	ld.bu	%d2, [%a4] 12
	lt	%d15, %d4, %d15
	ins.t	%d2, %d2,1, %d15,0
	.loc 1 292 0
	ld.w	%d15, [%a4] 52
	.loc 1 293 0
	mov	%d3, 0
	.loc 1 292 0
	lt	%d4, %d15, %d4
.LVL78:
	.loc 1 293 0
	ld.w	%d15, [%a4] 96
	.loc 1 292 0
	ins.t	%d2, %d2,2, %d4,0
	.loc 1 293 0
	cmp.f	%d3, %d15, %d3
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
	ld.w	%d3, [%a4] 48
	cmp.f	%d15, %d15, %d3
	ins.t	%d2, %d2,3, %d15,2
	st.b	[%a4] 12, %d2
	ret
.LFE216:
	.size	Ifx_AngleTrkF32_updateStatus, .-Ifx_AngleTrkF32_updateStatus
.section .text.Ifx_AngleTrkF32_stdIfPosInit,"ax",@progbits
	.align 1
	.global	Ifx_AngleTrkF32_stdIfPosInit
	.type	Ifx_AngleTrkF32_stdIfPosInit, @function
Ifx_AngleTrkF32_stdIfPosInit:
.LFB233:
	.loc 1 431 0
.LVL79:
	.loc 1 433 0
	mov.aa	%a2, %a4
	.loc 1 441 0
	movh	%d2, hi:Ifx_AngleTrkF32_getAbsolutePosition
	.loc 1 433 0
	mov	%d15, 0
	lea	%a15, 92-1
	0:
	st.b	[%a2+]1, %d15
	loop	%a15, 0b
	.loc 1 441 0
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getAbsolutePosition
	st.w	[%a4] 8, %d2
	.loc 1 442 0
	movh	%d2, hi:Ifx_AngleTrkF32_getDirection
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getDirection
	st.w	[%a4] 20, %d2
	.loc 1 443 0
	movh	%d2, hi:Ifx_AngleTrkF32_getFault
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getFault
	st.w	[%a4] 24, %d2
	.loc 1 444 0
	movh	%d2, hi:Ifx_AngleTrkF32_getOffset
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getOffset
	st.w	[%a4] 12, %d2
	.loc 1 445 0
	movh	%d2, hi:Ifx_AngleTrkF32_getPeriodPerRotation
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getPeriodPerRotation
	st.w	[%a4] 32, %d2
	.loc 1 446 0
	movh	%d2, hi:Ifx_AngleTrkF32_getPosition
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getPosition
	st.w	[%a4] 16, %d2
	.loc 1 447 0
	movh	%d2, hi:Ifx_AngleTrkF32_getRawPosition
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getRawPosition
	st.w	[%a4] 28, %d2
	.loc 1 448 0
	movh	%d2, hi:Ifx_AngleTrkF32_getRefreshPeriod
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getRefreshPeriod
	st.w	[%a4] 36, %d2
	.loc 1 449 0
	movh	%d2, hi:Ifx_AngleTrkF32_getResolution
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getResolution
	st.w	[%a4] 40, %d2
	.loc 1 450 0
	movh	%d2, hi:Ifx_AngleTrkF32_getSensorType
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getSensorType
	st.w	[%a4] 44, %d2
	.loc 1 451 0
	movh	%d2, hi:Ifx_AngleTrkF32_reset
	.loc 1 440 0
	mov	%d15, 0
	.loc 1 451 0
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_reset
	.loc 1 440 0
	st.w	[%a4] 4, %d15
	.loc 1 451 0
	st.w	[%a4] 56, %d2
	.loc 1 455 0
	st.w	[%a4] 76, %d15
	.loc 1 456 0
	st.w	[%a4] 80, %d15
	.loc 1 457 0
	st.w	[%a4] 84, %d15
	.loc 1 452 0
	movh	%d2, hi:Ifx_AngleTrkF32_resetFaults
	.loc 1 458 0
	movh	%d15, hi:Ifx_AngleTrkF32_setOffset
	.loc 1 452 0
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_resetFaults
	.loc 1 458 0
	addi	%d15, %d15, lo:Ifx_AngleTrkF32_setOffset
	.loc 1 452 0
	st.w	[%a4] 60, %d2
	.loc 1 458 0
	st.w	[%a4] 72, %d15
	.loc 1 453 0
	movh	%d2, hi:Ifx_AngleTrkF32_getSpeed
	.loc 1 459 0
	movh	%d15, hi:Ifx_AngleTrkF32_setRefreshPeriod
	.loc 1 453 0
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_getSpeed
	.loc 1 459 0
	addi	%d15, %d15, lo:Ifx_AngleTrkF32_setRefreshPeriod
	.loc 1 453 0
	st.w	[%a4] 64, %d2
	.loc 1 459 0
	st.w	[%a4] 88, %d15
	.loc 1 454 0
	movh	%d2, hi:Ifx_AngleTrkF32_update
	.loc 1 460 0
	movh	%d15, hi:Ifx_AngleTrkF32_getTurn
	.loc 1 454 0
	addi	%d2, %d2, lo:Ifx_AngleTrkF32_update
	.loc 1 460 0
	addi	%d15, %d15, lo:Ifx_AngleTrkF32_getTurn
	.loc 1 454 0
	st.w	[%a4] 68, %d2
	.loc 1 436 0
	st.a	[%a4]0, %a5
	.loc 1 460 0
	st.w	[%a4] 48, %d15
	.loc 1 464 0
	mov	%d2, 1
	ret
.LFE233:
	.size	Ifx_AngleTrkF32_stdIfPosInit, .-Ifx_AngleTrkF32_stdIfPosInit
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
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
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
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.byte	0x4
	.uaword	.LCFI0-.LFB213
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE48:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.file 6 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
	.file 7 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a13
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
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
	.uaword	0x1b1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x6d
	.uaword	0x1d0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x71
	.uaword	0x186
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
	.uaword	0x22b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x83
	.uaword	0x17a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0xa7
	.uaword	0x171
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
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x76
	.uaword	0x278
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a0
	.uleb128 0x6
	.byte	0x1
	.uaword	0x238
	.uaword	0x2b0
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b6
	.uleb128 0x8
	.byte	0x1
	.uaword	0x2c2
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x55
	.uaword	0x393
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_encoder"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_hall"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_resolver"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_angletrk"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_igmr"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxStdIf_Pos_SensorType_virtual"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SensorType"
	.byte	0x5
	.byte	0x5c
	.uaword	0x2c2
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x60
	.uaword	0x40d
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x5
	.byte	0x64
	.uaword	0x3b2
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.byte	0x6a
	.uaword	0x4a9
	.uleb128 0xc
	.string	"notSynchronised"
	.byte	0x5
	.byte	0x6c
	.uaword	0x1e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"signalLoss"
	.byte	0x5
	.byte	0x6d
	.uaword	0x1e6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"signalDegradation"
	.byte	0x5
	.byte	0x6e
	.uaword	0x1e6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"trackingLoss"
	.byte	0x5
	.byte	0x6f
	.uaword	0x1e6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"commError"
	.byte	0x5
	.byte	0x70
	.uaword	0x1e6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.byte	0x67
	.uaword	0x4c9
	.uleb128 0xe
	.string	"status"
	.byte	0x5
	.byte	0x69
	.uaword	0x1e6
	.uleb128 0xe
	.string	"B"
	.byte	0x5
	.byte	0x71
	.uaword	0x425
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Status"
	.byte	0x5
	.byte	0x72
	.uaword	0x4a9
	.uleb128 0x3
	.string	"IfxStdIf_Pos_RawAngle"
	.byte	0x5
	.byte	0x74
	.uaword	0x238
	.uleb128 0x3
	.string	"IfxStdIf_Pos"
	.byte	0x5
	.byte	0x77
	.uaword	0x515
	.uleb128 0xf
	.string	"IfxStdIf_Pos_"
	.byte	0x5c
	.byte	0x5
	.uahalf	0x11e
	.uaword	0x70d
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x120
	.uaword	0x27a
	.byte	0
	.uleb128 0x11
	.string	"onZeroIrq"
	.byte	0x5
	.uahalf	0x121
	.uaword	0x74b
	.byte	0x4
	.uleb128 0x11
	.string	"getAbsolutePosition"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x70d
	.byte	0x8
	.uleb128 0x11
	.string	"getOffset"
	.byte	0x5
	.uahalf	0x123
	.uaword	0x769
	.byte	0xc
	.uleb128 0x11
	.string	"getPosition"
	.byte	0x5
	.uahalf	0x124
	.uaword	0x787
	.byte	0x10
	.uleb128 0x11
	.string	"getDirection"
	.byte	0x5
	.uahalf	0x125
	.uaword	0x7a7
	.byte	0x14
	.uleb128 0x11
	.string	"getFault"
	.byte	0x5
	.uahalf	0x126
	.uaword	0x7de
	.byte	0x18
	.uleb128 0x11
	.string	"getRawPosition"
	.byte	0x5
	.uahalf	0x127
	.uaword	0x850
	.byte	0x1c
	.uleb128 0x11
	.string	"getPeriodPerRotation"
	.byte	0x5
	.uahalf	0x128
	.uaword	0x811
	.byte	0x20
	.uleb128 0x11
	.string	"getRefreshPeriod"
	.byte	0x5
	.uahalf	0x129
	.uaword	0x873
	.byte	0x24
	.uleb128 0x11
	.string	"getResolution"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x898
	.byte	0x28
	.uleb128 0x11
	.string	"getSensorType"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x8ba
	.byte	0x2c
	.uleb128 0x11
	.string	"getTurn"
	.byte	0x5
	.uahalf	0x12c
	.uaword	0x90f
	.byte	0x30
	.uleb128 0x11
	.string	"onEventA"
	.byte	0x5
	.uahalf	0x12d
	.uaword	0x92b
	.byte	0x34
	.uleb128 0x11
	.string	"reset"
	.byte	0x5
	.uahalf	0x12e
	.uaword	0x963
	.byte	0x38
	.uleb128 0x11
	.string	"resetFaults"
	.byte	0x5
	.uahalf	0x12f
	.uaword	0x97d
	.byte	0x3c
	.uleb128 0x11
	.string	"getSpeed"
	.byte	0x5
	.uahalf	0x130
	.uaword	0x8f2
	.byte	0x40
	.uleb128 0x11
	.string	"update"
	.byte	0x5
	.uahalf	0x131
	.uaword	0x948
	.byte	0x44
	.uleb128 0x11
	.string	"setOffset"
	.byte	0x5
	.uahalf	0x132
	.uaword	0x99d
	.byte	0x48
	.uleb128 0x11
	.string	"setPosition"
	.byte	0x5
	.uahalf	0x133
	.uaword	0x9d2
	.byte	0x4c
	.uleb128 0x11
	.string	"setRawPosition"
	.byte	0x5
	.uahalf	0x134
	.uaword	0xa0a
	.byte	0x50
	.uleb128 0x11
	.string	"setSpeed"
	.byte	0x5
	.uahalf	0x135
	.uaword	0xa2e
	.byte	0x54
	.uleb128 0x11
	.string	"setRefreshPeriod"
	.byte	0x5
	.uahalf	0x136
	.uaword	0xa4c
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetAbsolutePosition"
	.byte	0x5
	.byte	0x81
	.uaword	0x735
	.uleb128 0x5
	.byte	0x4
	.uaword	0x73b
	.uleb128 0x6
	.byte	0x1
	.uaword	0x257
	.uaword	0x74b
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnZeroIrq"
	.byte	0x5
	.byte	0x87
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetOffset"
	.byte	0x5
	.byte	0x8e
	.uaword	0x29a
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPosition"
	.byte	0x5
	.byte	0x98
	.uaword	0x735
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetDirection"
	.byte	0x5
	.byte	0xa1
	.uaword	0x7c8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7ce
	.uleb128 0x6
	.byte	0x1
	.uaword	0x40d
	.uaword	0x7de
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetFault"
	.byte	0x5
	.byte	0xa8
	.uaword	0x7fb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x801
	.uleb128 0x6
	.byte	0x1
	.uaword	0x4c9
	.uaword	0x811
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPeriodPerRotation"
	.byte	0x5
	.byte	0xaf
	.uaword	0x83a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x840
	.uleb128 0x6
	.byte	0x1
	.uaword	0x1c2
	.uaword	0x850
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRawPosition"
	.byte	0x5
	.byte	0xb8
	.uaword	0x29a
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRefreshPeriod"
	.byte	0x5
	.byte	0xbe
	.uaword	0x735
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetResolution"
	.byte	0x5
	.byte	0xc4
	.uaword	0x29a
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSensorType"
	.byte	0x5
	.byte	0xca
	.uaword	0x8dc
	.uleb128 0x5
	.byte	0x4
	.uaword	0x8e2
	.uleb128 0x6
	.byte	0x1
	.uaword	0x393
	.uaword	0x8f2
	.uleb128 0x7
	.uaword	0x27a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSpeed"
	.byte	0x5
	.byte	0xd0
	.uaword	0x735
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetTurn"
	.byte	0x5
	.byte	0xd6
	.uaword	0x29a
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnEventA"
	.byte	0x5
	.byte	0xdd
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Update"
	.byte	0x5
	.byte	0xe6
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Reset"
	.byte	0x5
	.byte	0xef
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResetFaults"
	.byte	0x5
	.byte	0xf8
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetOffset"
	.byte	0x5
	.byte	0xff
	.uaword	0x9bb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9c1
	.uleb128 0x8
	.byte	0x1
	.uaword	0x9d2
	.uleb128 0x7
	.uaword	0x27a
	.uleb128 0x7
	.uaword	0x238
	.byte	0
	.uleb128 0x12
	.string	"IfxStdIf_Pos_SetPosition"
	.byte	0x5
	.uahalf	0x106
	.uaword	0x9f3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9f9
	.uleb128 0x8
	.byte	0x1
	.uaword	0xa0a
	.uleb128 0x7
	.uaword	0x27a
	.uleb128 0x7
	.uaword	0x257
	.byte	0
	.uleb128 0x12
	.string	"IfxStdIf_Pos_SetRawPosition"
	.byte	0x5
	.uahalf	0x10c
	.uaword	0x9bb
	.uleb128 0x12
	.string	"IfxStdIf_Pos_SetSpeed"
	.byte	0x5
	.uahalf	0x113
	.uaword	0x9f3
	.uleb128 0x12
	.string	"IfxStdIf_Pos_SetRefreshPeriod"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x9f3
	.uleb128 0xb
	.byte	0xc
	.byte	0x2
	.byte	0x40
	.uaword	0xa9b
	.uleb128 0x13
	.string	"a"
	.byte	0x2
	.byte	0x42
	.uaword	0x257
	.byte	0
	.uleb128 0x13
	.string	"b"
	.byte	0x2
	.byte	0x43
	.uaword	0x257
	.byte	0x4
	.uleb128 0x13
	.string	"out"
	.byte	0x2
	.byte	0x44
	.uaword	0x257
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LowPassPt1F32"
	.byte	0x2
	.byte	0x45
	.uaword	0xa72
	.uleb128 0xb
	.byte	0xc
	.byte	0x2
	.byte	0x48
	.uaword	0xaf7
	.uleb128 0x13
	.string	"cutOffFrequency"
	.byte	0x2
	.byte	0x4a
	.uaword	0x257
	.byte	0
	.uleb128 0x13
	.string	"gain"
	.byte	0x2
	.byte	0x4b
	.uaword	0x257
	.byte	0x4
	.uleb128 0x13
	.string	"samplingTime"
	.byte	0x2
	.byte	0x4c
	.uaword	0x257
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LowPassPt1F32_Config"
	.byte	0x2
	.byte	0x4d
	.uaword	0xab4
	.uleb128 0xb
	.byte	0x30
	.byte	0x6
	.byte	0x4c
	.uaword	0xbc0
	.uleb128 0x13
	.string	"kp"
	.byte	0x6
	.byte	0x4e
	.uaword	0x257
	.byte	0
	.uleb128 0x13
	.string	"ki"
	.byte	0x6
	.byte	0x4f
	.uaword	0x257
	.byte	0x4
	.uleb128 0x13
	.string	"kd"
	.byte	0x6
	.byte	0x50
	.uaword	0x257
	.byte	0x8
	.uleb128 0x13
	.string	"speedLpfFc"
	.byte	0x6
	.byte	0x51
	.uaword	0x257
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.byte	0x52
	.uaword	0x257
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x6
	.byte	0x53
	.uaword	0x238
	.byte	0x14
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x6
	.byte	0x54
	.uaword	0x238
	.byte	0x18
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x6
	.byte	0x55
	.uaword	0x1c2
	.byte	0x1c
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.byte	0x56
	.uaword	0x1a2
	.byte	0x1e
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x6
	.byte	0x57
	.uaword	0x238
	.byte	0x20
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x6
	.byte	0x58
	.uaword	0x4e4
	.byte	0x24
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x6
	.byte	0x59
	.uaword	0xbc0
	.byte	0x28
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x6
	.byte	0x5a
	.uaword	0xbc0
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x21d
	.uleb128 0x3
	.string	"Ifx_AngleTrkF32_Config"
	.byte	0x6
	.byte	0x5b
	.uaword	0xb17
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.byte	0x5d
	.uaword	0xc32
	.uleb128 0x13
	.string	"kp"
	.byte	0x6
	.byte	0x5f
	.uaword	0x257
	.byte	0
	.uleb128 0x13
	.string	"ki"
	.byte	0x6
	.byte	0x60
	.uaword	0x257
	.byte	0x4
	.uleb128 0x13
	.string	"kd"
	.byte	0x6
	.byte	0x61
	.uaword	0x257
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x6
	.byte	0x62
	.uaword	0x257
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x6
	.byte	0x63
	.uaword	0x238
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x6
	.byte	0x64
	.uaword	0x238
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"Ifx_AngleTrkF32_CfgData"
	.byte	0x6
	.byte	0x65
	.uaword	0xbe4
	.uleb128 0xb
	.byte	0x24
	.byte	0x6
	.byte	0x67
	.uaword	0xced
	.uleb128 0x13
	.string	"rawPosition"
	.byte	0x6
	.byte	0x69
	.uaword	0x4e4
	.byte	0
	.uleb128 0x13
	.string	"turn"
	.byte	0x6
	.byte	0x6a
	.uaword	0x238
	.byte	0x4
	.uleb128 0x13
	.string	"direction"
	.byte	0x6
	.byte	0x6b
	.uaword	0x40d
	.byte	0x8
	.uleb128 0x13
	.string	"status"
	.byte	0x6
	.byte	0x6c
	.uaword	0x4c9
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x6
	.byte	0x6e
	.uaword	0x4e4
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x6
	.byte	0x6f
	.uaword	0x1a2
	.byte	0x14
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x6
	.byte	0x70
	.uaword	0x1c2
	.byte	0x16
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x6
	.byte	0x71
	.uaword	0x4e4
	.byte	0x18
	.uleb128 0x13
	.string	"Ts"
	.byte	0x6
	.byte	0x72
	.uaword	0x257
	.byte	0x1c
	.uleb128 0x13
	.string	"positionConst"
	.byte	0x6
	.byte	0x73
	.uaword	0x257
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.string	"Ifx_AngleTrkF32_PosIf"
	.byte	0x6
	.byte	0x74
	.uaword	0xc51
	.uleb128 0xb
	.byte	0x70
	.byte	0x6
	.byte	0x77
	.uaword	0xdd4
	.uleb128 0x13
	.string	"base"
	.byte	0x6
	.byte	0x79
	.uaword	0xced
	.byte	0
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x6
	.byte	0x7a
	.uaword	0xc32
	.byte	0x24
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x6
	.byte	0x7b
	.uaword	0xbc0
	.byte	0x3c
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x6
	.byte	0x7c
	.uaword	0xbc0
	.byte	0x40
	.uleb128 0x13
	.string	"halfTs"
	.byte	0x6
	.byte	0x7d
	.uaword	0x257
	.byte	0x44
	.uleb128 0x13
	.string	"angleAtan"
	.byte	0x6
	.byte	0x7e
	.uaword	0x257
	.byte	0x48
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x6
	.byte	0x7f
	.uaword	0x257
	.byte	0x4c
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x6
	.byte	0x80
	.uaword	0x257
	.byte	0x50
	.uleb128 0x13
	.string	"speedEstA"
	.byte	0x6
	.byte	0x81
	.uaword	0x257
	.byte	0x54
	.uleb128 0x13
	.string	"speedEstB"
	.byte	0x6
	.byte	0x82
	.uaword	0x257
	.byte	0x58
	.uleb128 0x13
	.string	"accelEst"
	.byte	0x6
	.byte	0x83
	.uaword	0x257
	.byte	0x5c
	.uleb128 0x13
	.string	"angleErr"
	.byte	0x6
	.byte	0x84
	.uaword	0x257
	.byte	0x60
	.uleb128 0x13
	.string	"speedLpf"
	.byte	0x6
	.byte	0x85
	.uaword	0xa9b
	.byte	0x64
	.byte	0
	.uleb128 0x3
	.string	"Ifx_AngleTrkF32"
	.byte	0x6
	.byte	0x86
	.uaword	0xd0a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"long double"
	.uleb128 0x15
	.string	"Ifx_LowPassPt1F32_reset"
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uaword	0xe46
	.uleb128 0x16
	.string	"filter"
	.byte	0x2
	.byte	0x5d
	.uaword	0xe46
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa9b
	.uleb128 0x17
	.string	"Ifx_AngleTrkF32_bound"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0xe9a
	.uleb128 0x16
	.string	"angle"
	.byte	0x1
	.byte	0x49
	.uaword	0x257
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.byte	0x49
	.uaword	0x257
	.uleb128 0x19
	.string	"fullPeriod"
	.byte	0x1
	.byte	0x4c
	.uaword	0x257
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Ifx_AngleTrkF32_setControlGains"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uaword	0xeed
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.byte	0x7c
	.uaword	0xeed
	.uleb128 0x16
	.string	"K"
	.byte	0x1
	.byte	0x7c
	.uaword	0x257
	.uleb128 0x16
	.string	"T"
	.byte	0x1
	.byte	0x7c
	.uaword	0x257
	.uleb128 0x16
	.string	"psi"
	.byte	0x1
	.byte	0x7c
	.uaword	0x257
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc32
	.uleb128 0x1a
	.byte	0x1
	.string	"Ifx_AngleTrkF32_setUserSampling"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0x1
	.uaword	0xf33
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x1
	.byte	0x99
	.uaword	0xf33
	.uleb128 0x16
	.string	"Ts"
	.byte	0x1
	.byte	0x99
	.uaword	0x257
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdd4
	.uleb128 0x17
	.string	"Ifx_AngleTrkF32_boundInput"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x257
	.byte	0x3
	.uaword	0xf6f
	.uleb128 0x16
	.string	"input"
	.byte	0x1
	.byte	0x5d
	.uaword	0x257
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Ifx_AngleTrkF32_updateStatus"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.byte	0x1
	.uaword	0xfd9
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x11f
	.uaword	0xf33
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x21d
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x21d
	.uleb128 0x1d
	.string	"base"
	.byte	0x1
	.uahalf	0x121
	.uaword	0xfd9
	.uleb128 0x1d
	.string	"sqrAmpl"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x238
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xced
	.uleb128 0x1e
	.byte	0x1
	.string	"Ifx_AngleTrkF32_setOffset"
	.byte	0x1
	.uahalf	0x112
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x103a
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x112
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x112
	.uaword	0x4e4
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"base"
	.byte	0x1
	.uahalf	0x114
	.uaword	0xfd9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getRawPosition"
	.byte	0x1
	.uahalf	0x13d
	.byte	0x1
	.uaword	0x4e4
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1090
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x13d
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.string	"base"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0xfd9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getSpeed"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10d1
	.uleb128 0x1f
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x147
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getAbsolutePosition"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.uaword	0x111e
	.uleb128 0x23
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x152
	.uaword	0xf33
	.uaword	.LLST0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getDirection"
	.byte	0x1
	.uahalf	0x158
	.byte	0x1
	.uaword	0x40d
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1163
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x158
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getFault"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	0x4c9
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11a4
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15e
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getOffset"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	0x238
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11e6
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x164
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getPeriodPerRotation"
	.byte	0x1
	.uahalf	0x16a
	.byte	0x1
	.uaword	0x1c2
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1233
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x16a
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getPosition"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1277
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x170
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getRefreshPeriod"
	.byte	0x1
	.uahalf	0x176
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12c0
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x176
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getResolution"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.uaword	0x238
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1306
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x17c
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getSensorType"
	.byte	0x1
	.uahalf	0x182
	.byte	0x1
	.uaword	0x393
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x134c
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x182
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_getTurn"
	.byte	0x1
	.uahalf	0x189
	.byte	0x1
	.uaword	0x238
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x138c
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x189
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Ifx_AngleTrkF32_resetFaults"
	.byte	0x1
	.uahalf	0x18f
	.byte	0x1
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x13cc
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x18f
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Ifx_AngleTrkF32_setRefreshPeriod"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1428
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x195
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.string	"updatePeriod"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x257
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Ifx_AngleTrkF32_reset"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x147d
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19b
	.uaword	0xf33
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.uaword	0xe16
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.uahalf	0x1a7
	.uleb128 0x26
	.uaword	0xe37
	.byte	0x4
	.byte	0x84
	.sleb128 100
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"round_f"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14bc
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.byte	0x63
	.uaword	0x257
	.uaword	.LLST1
	.uleb128 0x29
	.string	"val_i"
	.byte	0x1
	.byte	0x66
	.uaword	0x238
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x2a
	.uaword	0xe9a
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14f3
	.uleb128 0x26
	.uaword	0xec4
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	0xecf
	.uaword	.LLST2
	.uleb128 0x2b
	.uaword	0xed8
	.uaword	.LLST3
	.uleb128 0x2b
	.uaword	0xee1
	.uaword	.LLST4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Ifx_AngleTrkF32_initConfig"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1573
	.uleb128 0x2d
	.string	"config"
	.byte	0x1
	.byte	0x85
	.uaword	0x1573
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	.LASF8
	.byte	0x1
	.byte	0x85
	.uaword	0xbc0
	.byte	0x1
	.byte	0x65
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x85
	.uaword	0xbc0
	.byte	0x1
	.byte	0x66
	.uleb128 0x2f
	.uaword	.LASF10
	.byte	0x1
	.byte	0x87
	.uaword	0xc32
	.byte	0x1a
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48dbd973
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x4d8008fd
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x452b0aab
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbc6
	.uleb128 0x2a
	.uaword	0xef3
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x159e
	.uleb128 0x26
	.uaword	0xf1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	0xf28
	.uaword	.LLST5
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Ifx_AngleTrkF32_init"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x168a
	.uleb128 0x31
	.uaword	.LASF13
	.byte	0x1
	.byte	0xa5
	.uaword	0xf33
	.uaword	.LLST6
	.uleb128 0x28
	.string	"config"
	.byte	0x1
	.byte	0xa5
	.uaword	0x168a
	.uaword	.LLST7
	.uleb128 0x28
	.string	"Ts"
	.byte	0x1
	.byte	0xa5
	.uaword	0x257
	.uaword	.LLST8
	.uleb128 0x32
	.uaword	0xef3
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc1
	.uaword	0x161c
	.uleb128 0x2b
	.uaword	0xf28
	.uaword	.LLST9
	.uleb128 0x2b
	.uaword	0xf1d
	.uaword	.LLST10
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0x1652
	.uleb128 0x29
	.string	"lpfConfig"
	.byte	0x1
	.byte	0xca
	.uaword	0xaf7
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x1984
	.uleb128 0x35
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 100
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0xe9a
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.byte	0xbe
	.uleb128 0x37
	.uaword	0xee1
	.byte	0x4
	.uaword	0x4096cbe4
	.uleb128 0x37
	.uaword	0xed8
	.byte	0x4
	.uaword	0x3c75c28f
	.uleb128 0x37
	.uaword	0xecf
	.byte	0x4
	.uaword	0x421c3333
	.uleb128 0x26
	.uaword	0xec4
	.byte	0x3
	.byte	0x8f
	.sleb128 36
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1690
	.uleb128 0x38
	.uaword	0xbc6
	.uleb128 0x27
	.byte	0x1
	.string	"Ifx_AngleTrkF32_step"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	0x257
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1819
	.uleb128 0x31
	.uaword	.LASF13
	.byte	0x1
	.byte	0xdf
	.uaword	0xf33
	.uaword	.LLST11
	.uleb128 0x31
	.uaword	.LASF8
	.byte	0x1
	.byte	0xdf
	.uaword	0x21d
	.uaword	.LLST12
	.uleb128 0x31
	.uaword	.LASF9
	.byte	0x1
	.byte	0xdf
	.uaword	0x21d
	.uaword	.LLST13
	.uleb128 0x28
	.string	"phase"
	.byte	0x1
	.byte	0xdf
	.uaword	0x257
	.uaword	.LLST14
	.uleb128 0x39
	.uaword	.LASF11
	.byte	0x1
	.byte	0xe1
	.uaword	0x257
	.uaword	.LLST15
	.uleb128 0x39
	.uaword	.LASF12
	.byte	0x1
	.byte	0xe1
	.uaword	0x257
	.uaword	.LLST16
	.uleb128 0x3a
	.string	"dAccel"
	.byte	0x1
	.byte	0xe1
	.uaword	0x257
	.uaword	.LLST17
	.uleb128 0x3a
	.string	"dSpeed"
	.byte	0x1
	.byte	0xe1
	.uaword	0x257
	.uaword	.LLST18
	.uleb128 0x3a
	.string	"dAngle"
	.byte	0x1
	.byte	0xe1
	.uaword	0x257
	.uaword	.LLST19
	.uleb128 0x32
	.uaword	0xf39
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xfe
	.uaword	0x17a2
	.uleb128 0x2b
	.uaword	0xf61
	.uaword	.LLST16
	.uleb128 0x3b
	.uaword	0xe4c
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.uaword	0xe7c
	.uaword	.LLST21
	.uleb128 0x2b
	.uaword	0xe6f
	.uaword	.LLST22
	.uleb128 0x3c
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x3d
	.uaword	0xe87
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0xf39
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x101
	.uaword	0x17f1
	.uleb128 0x2b
	.uaword	0xf61
	.uaword	.LLST24
	.uleb128 0x3b
	.uaword	0xe4c
	.uaword	.LBB39
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.uaword	0xe7c
	.uaword	.LLST25
	.uleb128 0x2b
	.uaword	0xe6f
	.uaword	.LLST26
	.uleb128 0x3c
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x3d
	.uaword	0xe87
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	.LVL45
	.uaword	0x19bb
	.uleb128 0x40
	.uaword	.LVL59
	.uaword	0x19ec
	.uaword	0x180f
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 100
	.byte	0
	.uleb128 0x3f
	.uaword	.LVL65
	.uaword	0x19bb
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Ifx_AngleTrkF32_update"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x18eb
	.uleb128 0x23
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x12c
	.uaword	0xf33
	.uaword	.LLST28
	.uleb128 0x41
	.string	"base"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0xfd9
	.uaword	.LLST28
	.uleb128 0x42
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x257
	.uaword	.LLST30
	.uleb128 0x1d
	.string	"newPosition"
	.byte	0x1
	.uahalf	0x131
	.uaword	0x4e4
	.uleb128 0x3e
	.uaword	0xf6f
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x135
	.uaword	0x18ce
	.uleb128 0x2b
	.uaword	0xfaf
	.uaword	.LLST31
	.uleb128 0x2b
	.uaword	0xfa3
	.uaword	.LLST32
	.uleb128 0x26
	.uaword	0xf97
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3c
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x43
	.uaword	0xfbb
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3d
	.uaword	0xfc8
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL69
	.uaword	0x1695
	.uleb128 0x35
	.byte	0x1
	.byte	0x56
	.byte	0x8
	.byte	0xf4
	.uleb128 0x171
	.byte	0x4
	.uaword	0
	.uleb128 0x35
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xf6f
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1929
	.uleb128 0x26
	.uaword	0xf97
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	0xfa3
	.uaword	.LLST34
	.uleb128 0x2b
	.uaword	0xfaf
	.uaword	.LLST35
	.uleb128 0x43
	.uaword	0xfbb
	.byte	0x1
	.byte	0x64
	.uleb128 0x3d
	.uaword	0xfc8
	.uaword	.LLST36
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Ifx_AngleTrkF32_stdIfPosInit"
	.byte	0x1
	.uahalf	0x1ae
	.byte	0x1
	.uaword	0x1a2
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x197e
	.uleb128 0x24
	.string	"stdif"
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x197e
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0xf33
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x501
	.uleb128 0x45
	.byte	0x1
	.string	"Ifx_LowPassPt1F32_init"
	.byte	0x2
	.byte	0x53
	.byte	0x1
	.byte	0x1
	.uaword	0x19b0
	.uleb128 0x7
	.uaword	0xe46
	.uleb128 0x7
	.uaword	0x19b0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x19b6
	.uleb128 0x38
	.uaword	0xaf7
	.uleb128 0x46
	.byte	0x1
	.string	"Ifx_LutAtan2F32_float32"
	.byte	0x7
	.byte	0x4a
	.byte	0x1
	.uaword	0x257
	.byte	0x1
	.uaword	0x19ec
	.uleb128 0x7
	.uaword	0x257
	.uleb128 0x7
	.uaword	0x257
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Ifx_LowPassPt1F32_do"
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.uaword	0x257
	.byte	0x1
	.uleb128 0x7
	.uaword	0xe46
	.uleb128 0x7
	.uaword	0x257
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE220
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x171
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE209
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE210
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x171
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28
	.uaword	.LFE210
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x171
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL26
	.uaword	.LFE210
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x171
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LFE212
	.uahalf	0x2
	.byte	0x84
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE213
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LFE213
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LFE213
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL42
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL62
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64
	.uaword	.LFE214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL42
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL45-1
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL62
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x171
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL65-1
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x171
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL45
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL59-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 76
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x3
	.byte	0x8f
	.sleb128 76
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x171
	.byte	0x8f
	.sleb128 40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL57
	.uahalf	0xf
	.byte	0x8f
	.sleb128 96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x8f
	.sleb128 40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0xf
	.byte	0x8f
	.sleb128 96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x8f
	.sleb128 40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0xf
	.byte	0x8f
	.sleb128 96
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x8f
	.sleb128 40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x171
	.byte	0x8f
	.sleb128 36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x171
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL51
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL52
	.uaword	.LVL62
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL59-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 80
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x3
	.byte	0x8f
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL52
	.uaword	.LVL62
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40c90fdb
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40c90fdb
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x10
	.byte	0x8f
	.sleb128 76
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x8f
	.sleb128 80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LFE214
	.uahalf	0x10
	.byte	0x8f
	.sleb128 76
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x8f
	.sleb128 80
	.byte	0xf6
	.byte	0x4
	.uleb128 0x171
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL54
	.uaword	.LVL60
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f800000
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 96
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL54
	.uaword	.LVL60
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40c90fdb
	.uaword	.LVL66
	.uaword	.LFE214
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40c90fdb
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x8f
	.sleb128 60
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x26
	.byte	0x8f
	.sleb128 60
	.byte	0x6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x8f
	.sleb128 60
	.byte	0x6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE216
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL76
	.uaword	.LFE216
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xdc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
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
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0
	.uaword	0
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB223
	.uaword	.LFE223
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
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	.LFB232
	.uaword	.LFE232
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB233
	.uaword	.LFE233
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF10:
	.string	"cfgData"
.LASF13:
	.string	"aObsv"
.LASF2:
	.string	"sqrAmplMax"
.LASF0:
	.string	"driver"
.LASF8:
	.string	"sinIn"
.LASF12:
	.string	"angleEst"
.LASF11:
	.string	"angleRef"
.LASF9:
	.string	"cosIn"
.LASF5:
	.string	"reversed"
.LASF3:
	.string	"sqrAmplMin"
.LASF6:
	.string	"resolution"
.LASF4:
	.string	"periodPerRotation"
.LASF7:
	.string	"offset"
.LASF1:
	.string	"errorThreshold"
	.extern	Ifx_LowPassPt1F32_do,STT_FUNC,0
	.extern	Ifx_LutAtan2F32_float32,STT_FUNC,0
	.extern	Ifx_LowPassPt1F32_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
