	.file	"ASW_PIController.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_PiCofficient,"ax",@progbits
	.align 1
	.global	Asw_Obc_PiCofficient
	.type	Asw_Obc_PiCofficient, @function
Asw_Obc_PiCofficient:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
	.loc 1 90 0
	.loc 1 91 0
	movh	%d15, 16269
	movh.a	%a2, hi:sts_kVoObc
	addi	%d15, %d15, -13107
	st.w	[%a2] lo:sts_kVoObc, %d15
	.loc 1 92 0
	movh	%d15, 15386
	.loc 1 91 0
	lea	%a15, [%a2] lo:sts_kVoObc
	.loc 1 92 0
	addi	%d15, %d15, 629
	.loc 1 94 0
	movh	%d2, 16233
	.loc 1 92 0
	st.w	[%a15] 4, %d15
	.loc 1 94 0
	addi	%d2, %d2, -17874
	.loc 1 93 0
	mov	%d15, 0
	.loc 1 96 0
	movh.a	%a2, hi:sts_kIoObc
	.loc 1 93 0
	st.w	[%a15] 8, %d15
	.loc 1 94 0
	st.w	[%a15] 12, %d2
	.loc 1 96 0
	lea	%a15, [%a2] lo:sts_kIoObc
	movh	%d2, 16544
	st.w	[%a2] lo:sts_kIoObc, %d2
	.loc 1 98 0
	st.w	[%a15] 8, %d15
	.loc 1 97 0
	movh	%d2, 15877
	.loc 1 99 0
	movh	%d15, 15949
	.loc 1 97 0
	addi	%d2, %d2, 7864
	.loc 1 99 0
	addi	%d15, %d15, -13107
	.loc 1 97 0
	st.w	[%a15] 4, %d2
	.loc 1 99 0
	st.w	[%a15] 12, %d15
	ret
.LFE0:
	.size	Asw_Obc_PiCofficient, .-Asw_Obc_PiCofficient
.section .text.Asw_Ldc_PiCofficient,"ax",@progbits
	.align 1
	.global	Asw_Ldc_PiCofficient
	.type	Asw_Ldc_PiCofficient, @function
Asw_Ldc_PiCofficient:
.LFB1:
	.loc 1 110 0
	.loc 1 111 0
	movh	%d15, 16908
	movh.a	%a2, hi:sts_kVoLdc
	addi	%d15, %d15, 26214
	.loc 1 115 0
	movh	%d2, 15593
	.loc 1 111 0
	lea	%a15, [%a2] lo:sts_kVoLdc
	st.w	[%a2] lo:sts_kVoLdc, %d15
	.loc 1 115 0
	addi	%d2, %d2, 25580
	.loc 1 112 0
	movh	%d15, 16515
	.loc 1 115 0
	st.w	[%a15] 12, %d2
	.loc 1 112 0
	addi	%d15, %d15, 13107
	.loc 1 117 0
	movh	%d2, 15821
	.loc 1 112 0
	st.w	[%a15] 4, %d15
	.loc 1 117 0
	movh.a	%a2, hi:sts_kIoLdc
	.loc 1 114 0
	mov	%d15, 0
	.loc 1 117 0
	addi	%d2, %d2, -13107
	.loc 1 114 0
	st.w	[%a15] 8, %d15
	.loc 1 117 0
	st.w	[%a2] lo:sts_kIoLdc, %d2
	lea	%a15, [%a2] lo:sts_kIoLdc
	.loc 1 118 0
	movh	%d2, 15381
	addi	%d2, %d2, 27661
	.loc 1 119 0
	st.w	[%a15] 8, %d15
	.loc 1 120 0
	movh	%d15, 16672
	.loc 1 118 0
	st.w	[%a15] 4, %d2
	.loc 1 120 0
	st.w	[%a15] 12, %d15
	ret
.LFE1:
	.size	Asw_Ldc_PiCofficient, .-Asw_Ldc_PiCofficient
.section .text.Asw_Obc_PiInit,"ax",@progbits
	.align 1
	.global	Asw_Obc_PiInit
	.type	Asw_Obc_PiInit, @function
Asw_Obc_PiInit:
.LFB2:
	.loc 1 131 0
	.loc 1 132 0
	mov	%d15, 0
	movh.a	%a2, hi:sts_eIoObc
	lea	%a15, [%a2] lo:sts_eIoObc
	st.w	[%a2] lo:sts_eIoObc, %d15
	.loc 1 137 0
	movh.a	%a2, hi:sts_eVoObc
	.loc 1 133 0
	st.w	[%a15] 8, %d15
	.loc 1 134 0
	st.w	[%a15] 4, %d15
	.loc 1 135 0
	st.w	[%a15] 12, %d15
	.loc 1 137 0
	lea	%a15, [%a2] lo:sts_eVoObc
	.loc 1 138 0
	st.w	[%a15] 8, %d15
	.loc 1 139 0
	st.w	[%a15] 4, %d15
	.loc 1 140 0
	st.w	[%a15] 12, %d15
	.loc 1 137 0
	st.w	[%a2] lo:sts_eVoObc, %d15
	.loc 1 142 0
	movh.a	%a15, hi:u32s_appSStartCount
	mov	%d15, 0
	st.w	[%a15] lo:u32s_appSStartCount, %d15
.LVL0:
	ret
.LFE2:
	.size	Asw_Obc_PiInit, .-Asw_Obc_PiInit
.section .text.Asw_Ldc_PiInit,"ax",@progbits
	.align 1
	.global	Asw_Ldc_PiInit
	.type	Asw_Ldc_PiInit, @function
Asw_Ldc_PiInit:
.LFB3:
	.loc 1 156 0
	.loc 1 157 0
	mov	%d15, 0
	movh.a	%a2, hi:sts_eIoLdc
	lea	%a15, [%a2] lo:sts_eIoLdc
	st.w	[%a2] lo:sts_eIoLdc, %d15
	.loc 1 162 0
	movh.a	%a2, hi:sts_eVoLdc
	.loc 1 158 0
	st.w	[%a15] 8, %d15
	.loc 1 159 0
	st.w	[%a15] 4, %d15
	.loc 1 160 0
	st.w	[%a15] 12, %d15
	.loc 1 162 0
	lea	%a15, [%a2] lo:sts_eVoLdc
	st.w	[%a2] lo:sts_eVoLdc, %d15
	.loc 1 163 0
	st.w	[%a15] 8, %d15
	.loc 1 164 0
	st.w	[%a15] 4, %d15
	.loc 1 165 0
	st.w	[%a15] 12, %d15
.LVL1:
	ret
.LFE3:
	.size	Asw_Ldc_PiInit, .-Asw_Ldc_PiInit
.section .text.Asw_Ldc_PiCtrl,"ax",@progbits
	.align 1
	.global	Asw_Ldc_PiCtrl
	.type	Asw_Ldc_PiCtrl, @function
Asw_Ldc_PiCtrl:
.LFB4:
	.loc 1 180 0
.LVL2:
	movh.a	%a15, hi:sts_kVoLdc
.LBB28:
.LBB29:
	.loc 1 338 0
	movh.a	%a3, hi:sts_eVoLdc
	lea	%a2, [%a15] lo:sts_kVoLdc
	ld.w	%d2, [%a15] lo:sts_kVoLdc
	lea	%a15, [%a3] lo:sts_eVoLdc
	sub.f	%d4, %d4, %d6
.LVL3:
	.loc 1 339 0
	ld.w	%d15, [%a15] 12
	ld.w	%d3, [%a2] 4
.LVL4:
	sub.f	%d15, %d4, %d15
	.loc 1 338 0
	st.w	[%a3] lo:sts_eVoLdc, %d4
	.loc 1 339 0
	mul.f	%d15, %d3, %d15
	ld.w	%d3, [%a15] 4
.LVL5:
	.loc 1 340 0
	mul.f	%d4, %d2, %d4
	.loc 1 339 0
	add.f	%d15, %d15, %d3
	.loc 1 340 0
	add.f	%d4, %d15, %d4
.LVL6:
	.loc 1 339 0
	st.w	[%a15] 4, %d15
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 1 356 0
	cmp.f	%d15, %d5, %d4
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L6
	.loc 1 360 0
	movh	%d5, 16256
.LVL7:
	cmp.f	%d15, %d4, %d5
	or.t	%d15, %d15,0, %d15,1
	.loc 1 366 0
	cmovn	%d5, %d15, %d4
.L6:
.LVL8:
.LBE31:
.LBE30:
	.loc 1 198 0
	ld.w	%d15, [%a2] 12
	sub.f	%d4, %d4, %d5
.LVL9:
	.loc 1 197 0
	st.w	[%a15] 8, %d5
	.loc 1 198 0
	mul.f	%d4, %d4, %d15
.LBB32:
.LBB33:
	.loc 1 338 0
	movh.a	%a3, hi:sts_eIoLdc
.LBE33:
.LBE32:
	.loc 1 198 0
	st.w	[%a15] 12, %d4
.LVL10:
	movh.a	%a15, hi:sts_kIoLdc
.LVL11:
	ld.w	%d2, [%a15] lo:sts_kIoLdc
.LVL12:
	lea	%a2, [%a15] lo:sts_kIoLdc
.LVL13:
.LBB36:
.LBB34:
	.loc 1 338 0
	lea	%a15, [%a3] lo:sts_eIoLdc
	sub.f	%d7, %d5, %d7
.LVL14:
	.loc 1 339 0
	ld.w	%d5, [%a15] 12
.LVL15:
	ld.w	%d15, [%a2] 4
.LVL16:
	sub.f	%d5, %d7, %d5
.LBE34:
.LBE36:
.LBB37:
.LBB38:
	.loc 1 356 0
	movh	%d3, 17362
.LBE38:
.LBE37:
.LBB40:
.LBB35:
	.loc 1 339 0
	mul.f	%d5, %d15, %d5
	ld.w	%d15, [%a15] 4
.LVL17:
	.loc 1 338 0
	st.w	[%a3] lo:sts_eIoLdc, %d7
	.loc 1 339 0
	add.f	%d15, %d5, %d15
	.loc 1 340 0
	mul.f	%d5, %d2, %d7
	.loc 1 339 0
	st.w	[%a15] 4, %d15
	.loc 1 340 0
	add.f	%d5, %d15, %d5
.LVL18:
.LBE35:
.LBE40:
.LBB41:
.LBB39:
	.loc 1 356 0
	mov	%d2, 420
.LVL19:
	cmp.f	%d15, %d5, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L7
	.loc 1 360 0
	mov	%d3, 0
	cmp.f	%d15, %d5, %d3
	or.t	%d15, %d15,0, %d15,1
	mov	%d2, 0
	jnz	%d15, .L7
.LVL20:
	ftouz	%d2, %d5
	.loc 1 366 0
	mov	%d3, %d5
.LVL21:
.L7:
.LBE39:
.LBE41:
	.loc 1 207 0
	sub.f	%d5, %d5, %d3
.LVL22:
	ld.w	%d15, [%a2] 12
	.loc 1 206 0
	st.w	[%a15] 8, %d3
	.loc 1 207 0
	mul.f	%d5, %d5, %d15
	st.w	[%a15] 12, %d5
.LVL23:
	.loc 1 212 0
	ret
.LFE4:
	.size	Asw_Ldc_PiCtrl, .-Asw_Ldc_PiCtrl
.section .text.Asw_Ldc_SoftStart,"ax",@progbits
	.align 1
	.global	Asw_Ldc_SoftStart
	.type	Asw_Ldc_SoftStart, @function
Asw_Ldc_SoftStart:
.LFB5:
	.loc 1 222 0
.LVL24:
	.loc 1 225 0
	cmp.f	%d15, %d4, %d5
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L19
	.loc 1 227 0
	movh	%d2, 17658
	div.f	%d2, %d4, %d2
	movh.a	%a15, hi:f32_refValueTemp.1526
	add.f	%d2, %d2, %d5
	.loc 1 228 0
	cmp.f	%d15, %d4, %d2
	.loc 1 227 0
	st.w	[%a15] lo:f32_refValueTemp.1526, %d2
	.loc 1 228 0
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L15
.L17:
	.loc 1 230 0
	st.w	[%a15] lo:f32_refValueTemp.1526, %d4
	mov	%d2, %d4
	ret
.L19:
	.loc 1 235 0
	movh	%d2, 17224
	div.f	%d2, %d4, %d2
	movh.a	%a15, hi:f32_refValueTemp.1526
	sub.f	%d2, %d5, %d2
	st.w	[%a15] lo:f32_refValueTemp.1526, %d2
	.loc 1 236 0
	cmp.f	%d15, %d4, %d2
	jnz.t	%d15, 2, .L17
.L15:
	.loc 1 242 0
	ret
.LFE5:
	.size	Asw_Ldc_SoftStart, .-Asw_Ldc_SoftStart
.section .text.Asw_Obc_PiCtrl,"ax",@progbits
	.align 1
	.global	Asw_Obc_PiCtrl
	.type	Asw_Obc_PiCtrl, @function
Asw_Obc_PiCtrl:
.LFB6:
	.loc 1 252 0
.LVL25:
	movh.a	%a15, hi:sts_kVoObc
.LBB42:
.LBB43:
	.loc 1 338 0
	movh.a	%a3, hi:sts_eVoObc
	ld.w	%d2, [%a15] lo:sts_kVoObc
	lea	%a2, [%a15] lo:sts_kVoObc
	lea	%a15, [%a3] lo:sts_eVoObc
	sub.f	%d4, %d4, %d6
.LVL26:
	.loc 1 339 0
	ld.w	%d15, [%a15] 12
	ld.w	%d3, [%a2] 4
.LVL27:
	sub.f	%d15, %d4, %d15
	.loc 1 338 0
	st.w	[%a3] lo:sts_eVoObc, %d4
	.loc 1 339 0
	mul.f	%d15, %d3, %d15
	ld.w	%d3, [%a15] 4
.LVL28:
	.loc 1 340 0
	mul.f	%d4, %d2, %d4
	.loc 1 339 0
	add.f	%d15, %d15, %d3
.LBE43:
.LBE42:
.LBB45:
.LBB46:
	.loc 1 358 0
	mov	%d2, %d5
.LVL29:
.LBE46:
.LBE45:
.LBB48:
.LBB44:
	.loc 1 340 0
	add.f	%d4, %d15, %d4
.LVL30:
	.loc 1 339 0
	st.w	[%a15] 4, %d15
.LBE44:
.LBE48:
.LBB49:
.LBB47:
	.loc 1 356 0
	cmp.f	%d15, %d5, %d4
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L21
	.loc 1 360 0
	movh	%d2, 16256
	cmp.f	%d15, %d4, %d2
	or.t	%d15, %d15,0, %d15,1
	.loc 1 366 0
	cmovn	%d2, %d15, %d4
.L21:
.LVL31:
.LBE47:
.LBE49:
	.loc 1 270 0
	ld.w	%d15, [%a2] 12
	sub.f	%d4, %d4, %d2
.LVL32:
	.loc 1 269 0
	st.w	[%a15] 8, %d2
	.loc 1 270 0
	mul.f	%d4, %d4, %d15
.LBB50:
.LBB51:
	.loc 1 338 0
	movh.a	%a3, hi:sts_eIoObc
.LBE51:
.LBE50:
	.loc 1 270 0
	st.w	[%a15] 12, %d4
.LVL33:
	movh.a	%a15, hi:sts_kIoObc
.LVL34:
	ld.w	%d2, [%a15] lo:sts_kIoObc
.LVL35:
	lea	%a2, [%a15] lo:sts_kIoObc
.LVL36:
.LBB54:
.LBB52:
	.loc 1 338 0
	lea	%a15, [%a3] lo:sts_eIoObc
	sub.f	%d5, %d5, %d7
.LVL37:
	.loc 1 339 0
	ld.w	%d7, [%a15] 12
.LVL38:
	ld.w	%d15, [%a2] 4
.LVL39:
	sub.f	%d7, %d5, %d7
	.loc 1 338 0
	st.w	[%a3] lo:sts_eIoObc, %d5
	.loc 1 339 0
	mul.f	%d7, %d15, %d7
	ld.w	%d15, [%a15] 4
.LVL40:
	.loc 1 340 0
	mul.f	%d5, %d2, %d5
	.loc 1 339 0
	add.f	%d15, %d7, %d15
.LBE52:
.LBE54:
.LBB55:
.LBB56:
	.loc 1 356 0
	movh	%d2, 17658
.LVL41:
.LBE56:
.LBE55:
.LBB58:
.LBB53:
	.loc 1 340 0
	add.f	%d7, %d15, %d5
.LVL42:
	.loc 1 339 0
	st.w	[%a15] 4, %d15
.LBE53:
.LBE58:
.LBB59:
.LBB57:
	.loc 1 356 0
	cmp.f	%d15, %d7, %d2
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L22
	.loc 1 360 0
	movh	%d2, 17402
	cmp.f	%d15, %d7, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L23
.LVL43:
.LBE57:
.LBE59:
	.loc 1 277 0
	sub.f	%d2, %d7, %d7
	ld.w	%d15, [%a2] 12
.LBB60:
.LBB61:
	.loc 1 356 0
	movh	%d3, 18499
.LBE61:
.LBE60:
	.loc 1 277 0
	mul.f	%d15, %d2, %d15
	.loc 1 279 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	div.f	%d2, %d2, %d7
.LVL44:
	.loc 1 277 0
	st.w	[%a15] 12, %d15
	.loc 1 276 0
	st.w	[%a15] 8, %d7
.LBB68:
.LBB62:
	.loc 1 356 0
	addi	%d3, %d3, 20480
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L27
	.loc 1 360 0
	addih	%d3, %d3, 65280
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 362 0
	cmov	%d2, %d15, %d3
.LVL45:
	ret
.LVL46:
.L22:
.LBE62:
.LBE68:
	.loc 1 277 0
	sub.f	%d7, %d7, %d2
.LVL47:
	ld.w	%d15, [%a2] 12
	.loc 1 276 0
	st.w	[%a15] 8, %d2
	.loc 1 277 0
	mul.f	%d7, %d7, %d15
.LBB69:
.LBB63:
	.loc 1 362 0
	movh	%d2, 18243
.LBE63:
.LBE69:
	.loc 1 277 0
	st.w	[%a15] 12, %d7
.LVL48:
.LBB70:
.LBB64:
	.loc 1 362 0
	addi	%d2, %d2, 20480
	ret
.LVL49:
.L23:
.LBE64:
.LBE70:
	.loc 1 277 0
	sub.f	%d7, %d7, %d2
.LVL50:
	ld.w	%d15, [%a2] 12
	.loc 1 276 0
	st.w	[%a15] 8, %d2
	.loc 1 277 0
	mul.f	%d7, %d7, %d15
.LBB71:
.LBB65:
	.loc 1 358 0
	movh	%d2, 18499
.LBE65:
.LBE71:
	.loc 1 277 0
	st.w	[%a15] 12, %d7
.LVL51:
.LBB72:
.LBB66:
	.loc 1 358 0
	addi	%d2, %d2, 20480
.LVL52:
.LBE66:
.LBE72:
	.loc 1 282 0
	ret
.LVL53:
.L27:
.LBB73:
.LBB67:
	.loc 1 358 0
	mov	%d2, %d3
.LVL54:
	ret
.LBE67:
.LBE73:
.LFE6:
	.size	Asw_Obc_PiCtrl, .-Asw_Obc_PiCtrl
.section .text.Asw_Obc_SoftStart,"ax",@progbits
	.align 1
	.global	Asw_Obc_SoftStart
	.type	Asw_Obc_SoftStart, @function
Asw_Obc_SoftStart:
.LFB7:
	.loc 1 292 0
.LVL55:
	.loc 1 295 0
	movh.a	%a15, hi:u32s_appSStartCount
	ld.w	%d15, [%a15] lo:u32s_appSStartCount
	add	%d15, 1
	st.w	[%a15] lo:u32s_appSStartCount, %d15
	.loc 1 297 0
	ge.u	%d15, %d15, 21
	jz	%d15, .L42
	.loc 1 299 0
	cmp.f	%d15, %d4, %d5
	.loc 1 301 0
	movh	%d2, 17096
	.loc 1 299 0
	or.t	%d15, %d15,2, %d15,1
	.loc 1 301 0
	div.f	%d2, %d4, %d2
	.loc 1 299 0
	jz	%d15, .L41
	.loc 1 301 0
	movh.a	%a2, hi:f32_Aswref.1546
	add.f	%d2, %d2, %d5
	.loc 1 303 0
	cmp.f	%d15, %d4, %d2
	.loc 1 301 0
	st.w	[%a2] lo:f32_Aswref.1546, %d2
	.loc 1 303 0
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L35
.L38:
	.loc 1 303 0 is_stmt 0 discriminator 1
	st.w	[%a2] lo:f32_Aswref.1546, %d4
	mov	%d2, %d4
.L35:
	.loc 1 316 0 is_stmt 1
	mov	%d15, 0
	st.w	[%a15] lo:u32s_appSStartCount, %d15
	.loc 1 320 0
	ret
.L41:
	.loc 1 307 0
	sub.f	%d2, %d5, %d2
	movh.a	%a2, hi:f32_Aswref.1546
	st.w	[%a2] lo:f32_Aswref.1546, %d2
	.loc 1 309 0
	cmp.f	%d15, %d4, %d2
	jz.t	%d15, 2, .L35
	.loc 1 311 0
	movh	%d15, 16416
	cmp.f	%d2, %d2, %d15
	jnz.t	%d2, 2, .L38
	.loc 1 312 0
	st.w	[%a2] lo:f32_Aswref.1546, %d15
	movh	%d2, 16416
	j	.L35
.L42:
	movh.a	%a15, hi:f32_Aswref.1546
	ld.w	%d2, [%a15] lo:f32_Aswref.1546
	ret
.LFE7:
	.size	Asw_Obc_SoftStart, .-Asw_Obc_SoftStart
.section .bss.f32_Aswref.1546,"aw",@nobits
	.align 2
	.type	f32_Aswref.1546, @object
	.size	f32_Aswref.1546, 4
f32_Aswref.1546:
	.zero	4
.section .bss.f32_refValueTemp.1526,"aw",@nobits
	.align 2
	.type	f32_refValueTemp.1526, @object
	.size	f32_refValueTemp.1526, 4
f32_refValueTemp.1526:
	.zero	4
.section .bss.u32s_appSStartCount,"aw",@nobits
	.align 2
	.type	u32s_appSStartCount, @object
	.size	u32s_appSStartCount, 4
u32s_appSStartCount:
	.zero	4
.section .bss.sts_kIoLdc,"aw",@nobits
	.align 2
	.type	sts_kIoLdc, @object
	.size	sts_kIoLdc, 16
sts_kIoLdc:
	.zero	16
.section .bss.sts_kVoLdc,"aw",@nobits
	.align 2
	.type	sts_kVoLdc, @object
	.size	sts_kVoLdc, 16
sts_kVoLdc:
	.zero	16
.section .bss.sts_eIoLdc,"aw",@nobits
	.align 2
	.type	sts_eIoLdc, @object
	.size	sts_eIoLdc, 16
sts_eIoLdc:
	.zero	16
.section .bss.sts_eVoLdc,"aw",@nobits
	.align 2
	.type	sts_eVoLdc, @object
	.size	sts_eVoLdc, 16
sts_eVoLdc:
	.zero	16
.section .bss.sts_kIoObc,"aw",@nobits
	.align 2
	.type	sts_kIoObc, @object
	.size	sts_kIoObc, 16
sts_kIoObc:
	.zero	16
.section .bss.sts_kVoObc,"aw",@nobits
	.align 2
	.type	sts_kVoObc, @object
	.size	sts_kVoObc, 16
sts_kVoObc:
	.zero	16
.section .bss.sts_eIoObc,"aw",@nobits
	.align 2
	.type	sts_eIoObc, @object
	.size	sts_eIoObc, 16
sts_eIoObc:
	.zero	16
.section .bss.sts_eVoObc,"aw",@nobits
	.align 2
	.type	sts_eVoObc, @object
	.size	sts_eVoObc, 16
sts_eVoObc:
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb10
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_PIController.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0xe0
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
	.uaword	0x1a8
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
	.uaword	0x16a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x19a
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x210
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.byte	0x39
	.uaword	0x281
	.uleb128 0x5
	.string	"P"
	.byte	0x4
	.byte	0x3b
	.uaword	0x210
	.byte	0
	.uleb128 0x5
	.string	"I"
	.byte	0x4
	.byte	0x3c
	.uaword	0x210
	.byte	0x4
	.uleb128 0x5
	.string	"D"
	.byte	0x4
	.byte	0x3d
	.uaword	0x210
	.byte	0x8
	.uleb128 0x5
	.string	"a"
	.byte	0x4
	.byte	0x3e
	.uaword	0x210
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"st_PID_GAINS"
	.byte	0x4
	.byte	0x3f
	.uaword	0x250
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.byte	0x41
	.uaword	0x2db
	.uleb128 0x5
	.string	"f32_e"
	.byte	0x4
	.byte	0x43
	.uaword	0x210
	.byte	0
	.uleb128 0x5
	.string	"f32_sum"
	.byte	0x4
	.byte	0x44
	.uaword	0x210
	.byte	0x4
	.uleb128 0x5
	.string	"f32_past"
	.byte	0x4
	.byte	0x45
	.uaword	0x210
	.byte	0x8
	.uleb128 0x5
	.string	"f32_w"
	.byte	0x4
	.byte	0x46
	.uaword	0x210
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"st_PID_ERRORS"
	.byte	0x4
	.byte	0x47
	.uaword	0x295
	.uleb128 0x6
	.string	"Asw_Picontroller"
	.byte	0x1
	.uahalf	0x14e
	.byte	0x1
	.uaword	0x236
	.byte	0x1
	.uaword	0x358
	.uleb128 0x7
	.string	"f32_ref"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x236
	.uleb128 0x7
	.string	"f32_in"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x236
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x358
	.uleb128 0x7
	.string	"st_K"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x281
	.uleb128 0x9
	.string	"f32_out"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x236
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x2db
	.uleb128 0xb
	.string	"Asw_ResetError"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.byte	0x1
	.uaword	0x384
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x358
	.byte	0
	.uleb128 0x6
	.string	"Asw_Limiter"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	0x236
	.byte	0x1
	.uaword	0x3e4
	.uleb128 0x7
	.string	"f32_in"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x236
	.uleb128 0x7
	.string	"f32_upper"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x236
	.uleb128 0x7
	.string	"f32_lower"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x236
	.uleb128 0x9
	.string	"f32_limit"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x236
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_Obc_PiCofficient"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_Ldc_PiCofficient"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_Obc_PiInit"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Asw_Ldc_PiInit"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"Asw_Ldc_PiCtrl"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	0x229
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6bf
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb3
	.uaword	0x236
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb3
	.uaword	0x236
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb3
	.uaword	0x236
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb3
	.uaword	0x236
	.uaword	.LLST2
	.uleb128 0x10
	.string	"u32_ShiftLdc"
	.byte	0x1
	.byte	0xb5
	.uaword	0x229
	.uaword	.LLST3
	.uleb128 0x10
	.string	"f32_vLdcPiSetpoint"
	.byte	0x1
	.byte	0xb6
	.uaword	0x236
	.uaword	.LLST0
	.uleb128 0x10
	.string	"f32_iLdcPiSetpoint"
	.byte	0x1
	.byte	0xb7
	.uaword	0x236
	.uaword	.LLST5
	.uleb128 0x10
	.string	"f32_eLdcVoLimiter"
	.byte	0x1
	.byte	0xb8
	.uaword	0x236
	.uaword	.LLST6
	.uleb128 0x10
	.string	"f32_eLdcIoLimiter"
	.byte	0x1
	.byte	0xb9
	.uaword	0x236
	.uaword	.LLST7
	.uleb128 0x11
	.string	"f32_vLdcFbValue"
	.byte	0x1
	.byte	0xba
	.uaword	0x236
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.string	"f32_iLdcFbValue"
	.byte	0x1
	.byte	0xbb
	.uaword	0x236
	.uaword	.LLST2
	.uleb128 0x10
	.string	"f32_vLdcPIconout"
	.byte	0x1
	.byte	0xbc
	.uaword	0x236
	.uaword	.LLST9
	.uleb128 0x10
	.string	"f32_iLdcPIconout"
	.byte	0x1
	.byte	0xbd
	.uaword	0x236
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	0x2f0
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0xc3
	.uaword	0x606
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x6
	.byte	0x3
	.uaword	sts_eVoLdc
	.byte	0x9f
	.uleb128 0x13
	.uaword	0x31f
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.uaword	0x30f
	.uleb128 0x15
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x16
	.uaword	0x347
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x384
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0xc4
	.uaword	0x649
	.uleb128 0x17
	.uaword	0x3bf
	.byte	0x4
	.uaword	0x3f800000
	.uleb128 0x18
	.uaword	0x3ad
	.uaword	.LLST12
	.uleb128 0x18
	.uaword	0x39e
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x16
	.uaword	0x3d1
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x2f0
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcb
	.uaword	0x682
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x6
	.byte	0x3
	.uaword	sts_eIoLdc
	.byte	0x9f
	.uleb128 0x14
	.uaword	0x31f
	.uleb128 0x14
	.uaword	0x30f
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x16
	.uaword	0x347
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x384
	.uaword	.LBB37
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xcd
	.uleb128 0x17
	.uaword	0x3bf
	.byte	0x4
	.uaword	0
	.uleb128 0x17
	.uaword	0x3ad
	.byte	0x4
	.uaword	0x43d20000
	.uleb128 0x18
	.uaword	0x39e
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x16
	.uaword	0x3d1
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Asw_Ldc_SoftStart"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0x236
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72c
	.uleb128 0x1c
	.string	"f32_CmdTarget"
	.byte	0x1
	.byte	0xdd
	.uaword	0x236
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x1
	.byte	0xdd
	.uaword	0x236
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.string	"f32_refValueTemp"
	.byte	0x1
	.byte	0xdf
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	f32_refValueTemp.1526
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Asw_Obc_PiCtrl"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	0x236
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c7
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xfb
	.uaword	0x236
	.uaword	.LLST18
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xfb
	.uaword	0x236
	.uaword	.LLST19
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfb
	.uaword	0x236
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x1
	.byte	0xfb
	.uaword	0x236
	.uaword	.LLST20
	.uleb128 0x10
	.string	"f32_iObcPiSetpoint"
	.byte	0x1
	.byte	0xfd
	.uaword	0x236
	.uaword	.LLST21
	.uleb128 0x10
	.string	"f32_vObcPiSetpoint"
	.byte	0x1
	.byte	0xfe
	.uaword	0x236
	.uaword	.LLST18
	.uleb128 0x11
	.string	"f32_vObcPiFbValue"
	.byte	0x1
	.byte	0xff
	.uaword	0x236
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"f32_iObcPiFbValue"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x236
	.uaword	.LLST20
	.uleb128 0x1d
	.string	"f32_obcFreLimit"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x236
	.uaword	.LLST24
	.uleb128 0x1d
	.string	"f32_vObcPIconout"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x236
	.uaword	.LLST25
	.uleb128 0x1d
	.string	"f32_iObcPIconout"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x236
	.uaword	.LLST26
	.uleb128 0x1d
	.string	"f32_eVoObcLimiter"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x236
	.uaword	.LLST27
	.uleb128 0x1d
	.string	"f32_eIoObcLimiter"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x236
	.uaword	.LLST28
	.uleb128 0x1e
	.uaword	0x2f0
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x8d0
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x6
	.byte	0x3
	.uaword	sts_eVoObc
	.byte	0x9f
	.uleb128 0x13
	.uaword	0x31f
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.uaword	0x30f
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x16
	.uaword	0x347
	.uaword	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x384
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x910
	.uleb128 0x17
	.uaword	0x3bf
	.byte	0x4
	.uaword	0x3f800000
	.uleb128 0x18
	.uaword	0x3ad
	.uaword	.LLST30
	.uleb128 0x18
	.uaword	0x39e
	.uaword	.LLST29
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x16
	.uaword	0x3d1
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x2f0
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x111
	.uaword	0x94a
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x6
	.byte	0x3
	.uaword	sts_eIoObc
	.byte	0x9f
	.uleb128 0x14
	.uaword	0x31f
	.uleb128 0x14
	.uaword	0x30f
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x16
	.uaword	0x347
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x384
	.uaword	.LBB55
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x113
	.uaword	0x98b
	.uleb128 0x17
	.uaword	0x3bf
	.byte	0x4
	.uaword	0x43fa0000
	.uleb128 0x17
	.uaword	0x3ad
	.byte	0x4
	.uaword	0x44fa0000
	.uleb128 0x18
	.uaword	0x39e
	.uaword	.LLST33
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x16
	.uaword	0x3d1
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x384
	.uaword	.LBB60
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x18
	.uaword	0x3bf
	.uaword	.LLST36
	.uleb128 0x18
	.uaword	0x3ad
	.uaword	.LLST37
	.uleb128 0x18
	.uaword	0x39e
	.uaword	.LLST38
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x16
	.uaword	0x3d1
	.uaword	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_Obc_SoftStart"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	0x236
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa32
	.uleb128 0x21
	.string	"f32_cmdTarget"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x236
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x123
	.uaword	0x236
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"f32_Aswref"
	.byte	0x1
	.uahalf	0x125
	.uaword	0x236
	.byte	0x5
	.byte	0x3
	.uaword	f32_Aswref.1546
	.byte	0
	.uleb128 0x11
	.string	"sts_eVoObc"
	.byte	0x1
	.byte	0x46
	.uaword	0x2db
	.byte	0x5
	.byte	0x3
	.uaword	sts_eVoObc
	.uleb128 0x11
	.string	"sts_eIoObc"
	.byte	0x1
	.byte	0x46
	.uaword	0x2db
	.byte	0x5
	.byte	0x3
	.uaword	sts_eIoObc
	.uleb128 0x11
	.string	"sts_kVoObc"
	.byte	0x1
	.byte	0x47
	.uaword	0x281
	.byte	0x5
	.byte	0x3
	.uaword	sts_kVoObc
	.uleb128 0x11
	.string	"sts_kIoObc"
	.byte	0x1
	.byte	0x47
	.uaword	0x281
	.byte	0x5
	.byte	0x3
	.uaword	sts_kIoObc
	.uleb128 0x11
	.string	"sts_eVoLdc"
	.byte	0x1
	.byte	0x49
	.uaword	0x2db
	.byte	0x5
	.byte	0x3
	.uaword	sts_eVoLdc
	.uleb128 0x11
	.string	"sts_eIoLdc"
	.byte	0x1
	.byte	0x49
	.uaword	0x2db
	.byte	0x5
	.byte	0x3
	.uaword	sts_eIoLdc
	.uleb128 0x11
	.string	"sts_kVoLdc"
	.byte	0x1
	.byte	0x4a
	.uaword	0x281
	.byte	0x5
	.byte	0x3
	.uaword	sts_kVoLdc
	.uleb128 0x11
	.string	"sts_kIoLdc"
	.byte	0x1
	.byte	0x4a
	.uaword	0x281
	.byte	0x5
	.byte	0x3
	.uaword	sts_kIoLdc
	.uleb128 0x11
	.string	"u32s_appSStartCount"
	.byte	0x1
	.byte	0x4b
	.uaword	0x229
	.byte	0x5
	.byte	0x3
	.uaword	u32s_appSStartCount
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL14
	.uaword	.LFE4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LFE4
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_eVoLdc+8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x19
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoLdc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoLdc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x19
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoLdc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoLdc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1b
	.byte	0x82
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoLdc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoLdc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE4
	.uahalf	0x1e
	.byte	0x3
	.uaword	sts_kVoLdc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoLdc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoLdc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LFE4
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_eVoLdc+8
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LFE4
	.uahalf	0x16
	.byte	0x82
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eIoLdc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL25
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL38
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL52
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL53
	.uaword	.LFE6
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL25
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL25
	.uaword	.LVL43
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1b
	.byte	0x82
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoObc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoObc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1b
	.byte	0x82
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoObc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoObc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE6
	.uahalf	0x1e
	.byte	0x3
	.uaword	sts_kVoObc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x3
	.uaword	sts_eVoObc
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x1e
	.byte	0x3
	.uaword	sts_eVoObc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL30
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LFE6
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LFE6
	.uahalf	0x5
	.byte	0x3
	.uaword	sts_eVoObc+8
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL42
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0xf
	.byte	0x3
	.uaword	sts_eIoObc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0xf
	.byte	0x3
	.uaword	sts_eIoObc+4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16a
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x44fa0000
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43fa0000
	.uaword	.LVL53
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x47435000
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x47435000
	.uaword	.LVL51
	.uaword	.LFE6
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x47435000
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48435000
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48435000
	.uaword	.LVL51
	.uaword	.LFE6
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48435000
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x47435000
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48435000
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF5:
	.string	"f32_RefTemp"
.LASF4:
	.string	"f32_Iofb"
.LASF2:
	.string	"f32_Ioref"
.LASF1:
	.string	"f32_Voref"
.LASF0:
	.string	"stp_error"
.LASF3:
	.string	"f32_Vofb"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
