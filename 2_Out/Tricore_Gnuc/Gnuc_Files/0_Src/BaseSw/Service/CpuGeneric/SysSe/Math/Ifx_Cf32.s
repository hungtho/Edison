	.file	"Ifx_Cf32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CplxVecRst_f32,"ax",@progbits
	.align 1
	.global	CplxVecRst_f32
	.type	CplxVecRst_f32, @function
CplxVecRst_f32:
.LFB174:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.c"
	.loc 1 50 0
.LVL0:
	.loc 1 51 0
	jlez	%d4, .L1
	.loc 1 53 0 discriminator 2
	add	%d4, -1
.LVL1:
	extr.u	%d2, %d4, 0, 16
	mov	%d15, 0
	mov.a	%a15, %d2
	jnz.t	%d4, 15, .L9
.LVL2:
.L5:
	st.w	[%a4] 4, %d15
	st.w	[%a4+]8, %d15
.LVL3:
	.loc 1 51 0 discriminator 2
	loop	%a15, .L5
.L1:
	ret
.LVL4:
.L9:
	mov.a	%a15, 0
	j	.L5
.LFE174:
	.size	CplxVecRst_f32, .-CplxVecRst_f32
.section .text.CplxVecCpy_f32S,"ax",@progbits
	.align 1
	.global	CplxVecCpy_f32S
	.type	CplxVecCpy_f32S, @function
CplxVecCpy_f32S:
.LFB175:
	.loc 1 60 0
.LVL5:
	sh	%d5, 1
.LVL6:
	.loc 1 61 0
	jlez	%d4, .L10
	.loc 1 63 0 discriminator 2
	add	%d4, -1
.LVL7:
	extr.u	%d15, %d4, 0, 16
	mov	%d2, 0
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L17
.LVL8:
.L14:
	.loc 1 64 0 discriminator 2
	ld.h	%d15, [%a5]0
	.loc 1 63 0 discriminator 2
	st.w	[%a4] 4, %d2
	.loc 1 64 0 discriminator 2
	itof	%d15, %d15
	.loc 1 65 0 discriminator 2
	addsc.a	%a5, %a5, %d5, 0
.LVL9:
	.loc 1 64 0 discriminator 2
	st.w	[%a4+]8, %d15
.LVL10:
	.loc 1 61 0 discriminator 2
	loop	%a15, .L14
.L10:
	ret
.LVL11:
.L17:
	mov.a	%a15, 0
	j	.L14
.LFE175:
	.size	CplxVecCpy_f32S, .-CplxVecCpy_f32S
.section .text.CplxVecCpy_f32,"ax",@progbits
	.align 1
	.global	CplxVecCpy_f32
	.type	CplxVecCpy_f32, @function
CplxVecCpy_f32:
.LFB176:
	.loc 1 71 0
.LVL12:
	.loc 1 72 0
	jlez	%d4, .L18
	add	%d4, -1
.LVL13:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L25
.LVL14:
.L22:
	.loc 1 74 0 discriminator 2
	ld.d	%e2, [%a5+]8
.LVL15:
	st.d	[%a4+]8, %e2
.LVL16:
	.loc 1 72 0 discriminator 2
	loop	%a15, .L22
.L18:
	ret
.LVL17:
.L25:
	mov.a	%a15, 0
	j	.L22
.LFE176:
	.size	CplxVecCpy_f32, .-CplxVecCpy_f32
.section .text.CplxVecPwr_f32,"ax",@progbits
	.align 1
	.global	CplxVecPwr_f32
	.type	CplxVecPwr_f32, @function
CplxVecPwr_f32:
.LFB177:
	.loc 1 81 0
.LVL18:
	.loc 1 85 0
	jlez	%d4, .L27
	mov.aa	%a15, %a4
	mov	%d15, 0
.LVL19:
.L28:
.LBB14:
.LBB15:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.h"
	.loc 2 87 0
	ld.w	%d3, [%a15]0
	ld.w	%d2, [%a15] 4
	mul.f	%d3, %d3, %d3
	mul.f	%d2, %d2, %d2
	add	%d15, 1
.LVL20:
	add.f	%d2, %d3, %d2
.LBE15:
.LBE14:
	.loc 1 88 0
	lea	%a15, [%a15] 8
.LVL21:
	.loc 1 87 0
	st.w	[%a4+]4, %d2
.LVL22:
	.loc 1 85 0
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d4, .L28
.LVL23:
.L27:
	.loc 1 91 0
	mul	%d4, %d4, -4
.LVL24:
	.loc 1 92 0
	addsc.a	%a2, %a4, %d4, 0
	ret
.LFE177:
	.size	CplxVecPwr_f32, .-CplxVecPwr_f32
.section .text.CplxVecMag_f32,"ax",@progbits
	.align 1
	.global	CplxVecMag_f32
	.type	CplxVecMag_f32, @function
CplxVecMag_f32:
.LFB178:
	.loc 1 96 0
.LVL25:
	.loc 1 96 0
	mov.aa	%a12, %a4
	mov	%d8, %d4
	.loc 1 100 0
	jlez	%d4, .L31
	mov.aa	%a15, %a4
	mov	%d15, 0
.LVL26:
.L32:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.loc 2 87 0
	ld.w	%d3, [%a15]0
	ld.w	%d2, [%a15] 4
	mul.f	%d3, %d3, %d3
	mul.f	%d4, %d2, %d2
	add	%d15, 1
.LVL27:
.LBE19:
.LBE18:
	.loc 2 93 0
	add.f	%d4, %d3, %d4
.LBE17:
.LBE16:
	.loc 1 103 0
	lea	%a15, [%a15] 8
.LVL28:
.LBB21:
.LBB20:
	.loc 2 93 0
	call	sqrtf
.LVL29:
.LBE20:
.LBE21:
	.loc 1 102 0
	st.w	[%a12+]4, %d2
.LVL30:
	.loc 1 100 0
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d8, .L32
.LVL31:
.L31:
	.loc 1 106 0
	mul	%d8, %d8, -4
	.loc 1 107 0
	addsc.a	%a2, %a12, %d8, 0
	ret
.LFE178:
	.size	CplxVecMag_f32, .-CplxVecMag_f32
.section .text.CplxVecMul_f32,"ax",@progbits
	.align 1
	.global	CplxVecMul_f32
	.type	CplxVecMul_f32, @function
CplxVecMul_f32:
.LFB179:
	.loc 1 111 0
.LVL32:
	.loc 1 112 0
	jlez	%d4, .L34
	add	%d4, -1
.LVL33:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L41
.LVL34:
.L38:
.LBB22:
.LBB23:
	.loc 2 70 0
	ld.w	%d2, [%a4]0
	ld.w	%d3, [%a5]0
	ld.w	%d6, [%a4] 4
	ld.w	%d15, [%a5] 4
.LVL35:
	mul.f	%d5, %d2, %d3
	mul.f	%d4, %d6, %d15
	.loc 2 71 0
	mul.f	%d3, %d3, %d6
.LVL36:
	mul.f	%d15, %d2, %d15
.LVL37:
	.loc 2 70 0
	sub.f	%d4, %d5, %d4
.LVL38:
	.loc 2 71 0
	add.f	%d15, %d3, %d15
.LVL39:
.LBE23:
.LBE22:
	.loc 1 114 0
	st.w	[%a4]0, %d4
	st.w	[%a4] 4, %d15
	.loc 1 115 0
	lea	%a4, [%a4] 8
.LVL40:
	.loc 1 112 0
	loop	%a15, .L38
.LVL41:
.L34:
	ret
.LVL42:
.L41:
	mov.a	%a15, 0
	j	.L38
.LFE179:
	.size	CplxVecMul_f32, .-CplxVecMul_f32
.section .text.VecPwrdB_f32,"ax",@progbits
	.align 1
	.global	VecPwrdB_f32
	.type	VecPwrdB_f32, @function
VecPwrdB_f32:
.LFB180:
	.loc 1 121 0
.LVL43:
	.loc 1 121 0
	mov.aa	%a15, %a4
	mov	%d8, %d4
	.loc 1 124 0
	mov	%d15, 0
	.loc 1 126 0
	movh	%d9, 16800
	.loc 1 124 0
	jlez	%d4, .L42
.LVL44:
.L46:
	.loc 1 126 0 discriminator 3
	ld.w	%d4, [%a15]0
	call	log10f
.LVL45:
	mul.f	%d2, %d2, %d9
	add	%d15, 1
.LVL46:
	st.w	[%a15+]4, %d2
.LVL47:
	.loc 1 124 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d8, .L46
.L42:
	ret
.LFE180:
	.size	VecPwrdB_f32, .-VecPwrdB_f32
	.global	__extendsfdf2
	.global	__muldf3
	.global	__fixdfsi
.section .text.VecPwrdB_SF,"ax",@progbits
	.align 1
	.global	VecPwrdB_SF
	.type	VecPwrdB_SF, @function
VecPwrdB_SF:
.LFB181:
	.loc 1 133 0
.LVL48:
	.loc 1 133 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov	%d8, %d4
	.loc 1 136 0
	mov	%d15, 0
	jlez	%d4, .L48
.LVL49:
.L52:
	.loc 1 138 0 discriminator 3
	ld.w	%d4, [%a15+]4
.LVL50:
	call	log10f
.LVL51:
	mov	%d4, %d2
	call	__extendsfdf2
.LVL52:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16436
	call	__muldf3
.LVL53:
	mov	%e4, %d3, %d2
	add	%d15, 1
.LVL54:
	call	__fixdfsi
.LVL55:
	st.h	[%a12+]2, %d2
.LVL56:
	.loc 1 136 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d8, .L52
.L48:
	ret
.LFE181:
	.size	VecPwrdB_SF, .-VecPwrdB_SF
.section .text.VecMaxIdx_f32,"ax",@progbits
	.align 1
	.global	VecMaxIdx_f32
	.type	VecMaxIdx_f32, @function
VecMaxIdx_f32:
.LFB182:
	.loc 1 145 0
.LVL57:
	.loc 1 146 0
	movh	%d2, 128
	.loc 1 149 0
	jlez	%d4, .L55
	mov	%d3, 0
.LVL58:
.L60:
	.loc 1 151 0
	ld.w	%d15, [%a4]0
	cmp.f	%d5, %d15, %d2
	jz.t	%d5, 2, .L56
.LVL59:
	.loc 1 154 0
	st.h	[%a5]0, %d3
	.loc 1 153 0
	mov	%d2, %d15
.LVL60:
.L56:
	.loc 1 157 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L58
	.loc 1 159 0
	st.h	[%a6]0, %d3
.L58:
	add	%d3, 1
.LVL61:
	.loc 1 149 0 discriminator 2
	extr.u	%d15, %d3, 0, 16
	.loc 1 162 0 discriminator 2
	add.a	%a4, 4
.LVL62:
	.loc 1 149 0 discriminator 2
	jlt	%d15, %d4, .L60
.LVL63:
.L55:
	.loc 1 166 0
	ret
.LFE182:
	.size	VecMaxIdx_f32, .-VecMaxIdx_f32
.section .text.VecMinIdx_f32,"ax",@progbits
	.align 1
	.global	VecMinIdx_f32
	.type	VecMinIdx_f32, @function
VecMinIdx_f32:
.LFB183:
	.loc 1 170 0
.LVL64:
	.loc 1 171 0
	movh	%d2, 32640
	add	%d2, -1
	.loc 1 174 0
	jlez	%d4, .L66
	mov	%d5, 0
	mov	%d3, 0
.LVL65:
.L71:
	.loc 1 176 0
	ld.w	%d15, [%a4]0
	cmp.f	%d6, %d15, %d2
	jz.t	%d6, 0, .L67
.LVL66:
	.loc 1 179 0
	st.h	[%a5]0, %d3
	.loc 1 178 0
	mov	%d2, %d15
.LVL67:
.L67:
	.loc 1 182 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L69
	.loc 1 184 0
	st.h	[%a6]0, %d3
.L69:
	add	%d5, 1
	.loc 1 174 0 discriminator 2
	extr	%d3, %d5, 0, 16
	.loc 1 187 0 discriminator 2
	add.a	%a4, 4
.LVL68:
	.loc 1 174 0 discriminator 2
	jlt	%d3, %d4, .L71
.LVL69:
.L66:
	.loc 1 191 0
	ret
.LFE183:
	.size	VecMinIdx_f32, .-VecMinIdx_f32
.section .text.VecOfs_f32,"ax",@progbits
	.align 1
	.global	VecOfs_f32
	.type	VecOfs_f32, @function
VecOfs_f32:
.LFB184:
	.loc 1 195 0
.LVL70:
	.loc 1 198 0
	mov	%d15, 0
	jlez	%d5, .L76
.LVL71:
.L80:
	.loc 1 200 0 discriminator 3
	ld.w	%d2, [%a4]0
	add	%d15, 1
.LVL72:
	sub.f	%d2, %d2, %d4
	st.w	[%a4+]4, %d2
.LVL73:
	.loc 1 198 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d5, .L80
.L76:
	ret
.LFE184:
	.size	VecOfs_f32, .-VecOfs_f32
.section .text.VecGain_f32,"ax",@progbits
	.align 1
	.global	VecGain_f32
	.type	VecGain_f32, @function
VecGain_f32:
.LFB185:
	.loc 1 207 0
.LVL74:
	.loc 1 210 0
	mov	%d15, 0
	jlez	%d5, .L82
.LVL75:
.L86:
	.loc 1 212 0 discriminator 3
	ld.w	%d2, [%a4]0
	add	%d15, 1
.LVL76:
	mul.f	%d2, %d2, %d4
	st.w	[%a4+]4, %d2
.LVL77:
	.loc 1 210 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	jlt	%d2, %d5, .L86
.L82:
	ret
.LFE185:
	.size	VecGain_f32, .-VecGain_f32
.section .text.VecSum_f32,"ax",@progbits
	.align 1
	.global	VecSum_f32
	.type	VecSum_f32, @function
VecSum_f32:
.LFB186:
	.loc 1 219 0
.LVL78:
	.loc 1 220 0
	mov	%d2, 0
	.loc 1 223 0
	jlez	%d4, .L89
	.loc 1 223 0 is_stmt 0 discriminator 3
	mov	%d15, 0
.LVL79:
.L90:
	.loc 1 225 0 is_stmt 1 discriminator 3
	ld.w	%d3, [%a4+]4
.LVL80:
	add	%d15, 1
.LVL81:
	add.f	%d2, %d2, %d3
.LVL82:
	.loc 1 223 0 discriminator 3
	extr.u	%d3, %d15, 0, 16
	jlt	%d3, %d4, .L90
.LVL83:
.L89:
	.loc 1 230 0
	ret
.LFE186:
	.size	VecSum_f32, .-VecSum_f32
.section .text.VecAvg_f32,"ax",@progbits
	.align 1
	.global	VecAvg_f32
	.type	VecAvg_f32, @function
VecAvg_f32:
.LFB187:
	.loc 1 234 0
.LVL84:
.LBB24:
.LBB25:
	.loc 1 220 0
	mov	%d15, 0
	.loc 1 223 0
	jlez	%d4, .L94
	mov	%d3, 0
.LVL85:
.L95:
	.loc 1 225 0
	ld.w	%d2, [%a4+]4
.LVL86:
	add	%d3, 1
.LVL87:
	add.f	%d15, %d15, %d2
.LVL88:
	.loc 1 223 0
	extr.u	%d2, %d3, 0, 16
	jlt	%d2, %d4, .L95
.LVL89:
.L94:
.LBE25:
.LBE24:
	.loc 1 235 0
	itof	%d2, %d4
	.loc 1 236 0
	div.f	%d2, %d15, %d2
	ret
.LFE187:
	.size	VecAvg_f32, .-VecAvg_f32
.section .text.VecMax_f32,"ax",@progbits
	.align 1
	.global	VecMax_f32
	.type	VecMax_f32, @function
VecMax_f32:
.LFB188:
	.loc 1 240 0
.LVL90:
	.loc 1 242 0
	movh	%d2, 128
	.loc 1 244 0
	jlez	%d4, .L99
	mov	%d5, 0
.LVL91:
.L101:
	.loc 1 246 0
	ld.w	%d3, [%a4+]4
.LVL92:
	cmp.f	%d15, %d3, %d2
	extr.u	%d15, %d15, 0, 1
	cmovn	%d2, %d15, %d3
.LVL93:
	add	%d15, %d5, 1
	.loc 1 244 0
	extr.u	%d3, %d15, 0, 16
	mov	%d5, %d15
.LVL94:
	jlt	%d3, %d4, .L101
.LVL95:
.L99:
	.loc 1 251 0
	ret
.LFE188:
	.size	VecMax_f32, .-VecMax_f32
.section .text.VecMin_f32,"ax",@progbits
	.align 1
	.global	VecMin_f32
	.type	VecMin_f32, @function
VecMin_f32:
.LFB189:
	.loc 1 255 0
.LVL96:
	.loc 1 257 0
	movh	%d2, 32640
	add	%d2, -1
	.loc 1 259 0
	jlez	%d4, .L105
	mov	%d5, 0
.LVL97:
.L107:
	.loc 1 261 0
	ld.w	%d3, [%a4+]4
.LVL98:
	cmp.f	%d15, %d3, %d2
	extr.u	%d15, %d15, 2, 1
	cmovn	%d2, %d15, %d3
.LVL99:
	add	%d15, %d5, 1
	.loc 1 259 0
	extr.u	%d3, %d15, 0, 16
	mov	%d5, %d15
.LVL100:
	jlt	%d3, %d4, .L107
.LVL101:
.L105:
	.loc 1 266 0
	ret
.LFE189:
	.size	VecMin_f32, .-VecMin_f32
.section .text.VecHalfSwap_f32,"ax",@progbits
	.align 1
	.global	VecHalfSwap_f32
	.type	VecHalfSwap_f32, @function
VecHalfSwap_f32:
.LFB190:
	.loc 1 270 0
.LVL102:
	.loc 1 272 0
	sh	%d15, %d4, -31
	add	%d4, %d15
.LVL103:
	extr.u	%d4, %d4, 1, 16
.LVL104:
	add	%d15, %d4, -1
	extr.u	%d15, %d15, 0, 16
	.loc 1 273 0
	addsc.a	%a2, %a4, %d4, 2
.LVL105:
	add	%d15, 1
	addsc.a	%a15, %a4, %d15, 2
	sub.a	%a15, %a15, %a4
	mov.d	%d15, %a15
	add	%d15, -4
	sh	%d15, -2
	mov.a	%a15, %d15
	.loc 1 275 0
	jz	%d4, .L110
.LVL106:
.L114:
.LBB26:
	.loc 1 278 0 discriminator 3
	ld.w	%d2, [%a4]0
	.loc 1 277 0 discriminator 3
	ld.w	%d15, [%a2]0
.LVL107:
	.loc 1 278 0 discriminator 3
	st.w	[%a2+]4, %d2
.LVL108:
	.loc 1 279 0 discriminator 3
	st.w	[%a4+]4, %d15
.LVL109:
	.loc 1 280 0 discriminator 3
	loop	%a15, .L114
.LVL110:
.L110:
	ret
.LBE26:
.LFE190:
	.size	VecHalfSwap_f32, .-VecHalfSwap_f32
.section .text.VecWin_f32,"ax",@progbits
	.align 1
	.global	VecWin_f32
	.type	VecWin_f32, @function
VecWin_f32:
.LFB191:
	.loc 1 289 0
.LVL111:
	.loc 1 293 0
	jz	%d7, .L116
	.loc 1 290 0 discriminator 1
	div	%e2, %d5, %d4
	.loc 1 295 0 discriminator 1
	sh	%d15, %d4, -31
	add	%d15, %d4
	.loc 1 290 0 discriminator 1
	extr	%d0, %d2, 0, 16
.LVL112:
	.loc 1 295 0 discriminator 1
	sha	%d15, -1
	sh	%d7, %d6, 2
.LVL113:
	sh	%d5, %d0, 2
.LVL114:
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	mov	%d2, 0
	jlez	%d15, .L126
.LVL115:
.L123:
	.loc 1 297 0 discriminator 3
	ld.w	%d1, [%a15]0
	ld.w	%d3, [%a2]0
	add	%d2, 1
.LVL116:
	mul.f	%d3, %d1, %d3
	.loc 1 299 0 discriminator 3
	addsc.a	%a2, %a2, %d5, 0
.LVL117:
	.loc 1 297 0 discriminator 3
	st.w	[%a15]0, %d3
	.loc 1 295 0 discriminator 3
	extr	%d3, %d2, 0, 16
	.loc 1 298 0 discriminator 3
	addsc.a	%a15, %a15, %d7, 0
.LVL118:
	.loc 1 295 0 discriminator 3
	jlt	%d3, %d15, .L123
	add	%d2, %d15, -1
	extr.u	%d2, %d2, 0, 16
	add	%d2, 1
	mul	%d3, %d2, %d7
	addsc.a	%a4, %a4, %d3, 0
	mul	%d3, %d2, %d5
	addsc.a	%a5, %a5, %d3, 0
.L119:
	.loc 1 302 0
	mul	%d5, %d0, -4
	addsc.a	%a5, %a5, %d5, 0
.LVL119:
	.loc 1 304 0
	jge	%d15, %d4, .L116
	sh	%d6, 2
.LVL120:
	mov	%d3, 0
.LVL121:
.L122:
	.loc 1 306 0 discriminator 2
	ld.w	%d7, [%a4]0
	ld.w	%d2, [%a5]0
	add	%d3, 1
.LVL122:
	mul.f	%d2, %d7, %d2
	.loc 1 308 0 discriminator 2
	addsc.a	%a5, %a5, %d5, 0
.LVL123:
	.loc 1 306 0 discriminator 2
	st.w	[%a4]0, %d2
	add	%d2, %d15, %d3
	.loc 1 304 0 discriminator 2
	extr	%d2, %d2, 0, 16
	.loc 1 307 0 discriminator 2
	addsc.a	%a4, %a4, %d6, 0
.LVL124:
	.loc 1 304 0 discriminator 2
	jlt	%d2, %d4, .L122
.L116:
	ret
.LVL125:
.L126:
	.loc 1 295 0
	mov	%d15, 0
	j	.L119
.LFE191:
	.size	VecWin_f32, .-VecWin_f32
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
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb0a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.uaword	0x1f0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0xa7
	.uaword	0x21d
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
	.byte	0x8
	.byte	0x4
	.byte	0x3d
	.uaword	0x25b
	.uleb128 0x5
	.string	"real"
	.byte	0x4
	.byte	0x3f
	.uaword	0x20e
	.byte	0
	.uleb128 0x5
	.string	"imag"
	.byte	0x4
	.byte	0x40
	.uaword	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"cfloat32"
	.byte	0x4
	.byte	0x41
	.uaword	0x238
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
	.uleb128 0x6
	.string	"IFX_Cf32_dot"
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x2ba
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.byte	0x55
	.uaword	0x2ba
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2c0
	.uleb128 0x9
	.uaword	0x25b
	.uleb128 0x6
	.string	"IFX_Cf32_mag"
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x2e9
	.uleb128 0x7
	.string	"c"
	.byte	0x2
	.byte	0x5b
	.uaword	0x2ba
	.byte	0
	.uleb128 0x6
	.string	"IFX_Cf32_mul"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x25b
	.byte	0x3
	.uaword	0x31f
	.uleb128 0x7
	.string	"a"
	.byte	0x2
	.byte	0x43
	.uaword	0x2ba
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.byte	0x43
	.uaword	0x2ba
	.uleb128 0xa
	.string	"R"
	.byte	0x2
	.byte	0x45
	.uaword	0x25b
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"VecSum_f32"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uaword	0x361
	.uleb128 0x7
	.string	"X"
	.byte	0x1
	.byte	0xda
	.uaword	0x361
	.uleb128 0x7
	.string	"nX"
	.byte	0x1
	.byte	0xda
	.uaword	0x1f0
	.uleb128 0xa
	.string	"sumX"
	.byte	0x1
	.byte	0xdc
	.uaword	0x20e
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xdd
	.uaword	0x1a3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x20e
	.uleb128 0xc
	.byte	0x1
	.string	"CplxVecRst_f32"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB174
	.uaword	.LFE174
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a6
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x31
	.uaword	0x3a6
	.uaword	.LLST0
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x31
	.uaword	0x1f0
	.uaword	.LLST1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x25b
	.uleb128 0xc
	.byte	0x1
	.string	"CplxVecCpy_f32S"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x40a
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x3b
	.uaword	0x3a6
	.uaword	.LLST2
	.uleb128 0xd
	.string	"S"
	.byte	0x1
	.byte	0x3b
	.uaword	0x40a
	.uaword	.LLST3
	.uleb128 0xd
	.string	"nS"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1f0
	.uaword	.LLST4
	.uleb128 0xd
	.string	"incrS"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1f0
	.uaword	.LLST5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1f0
	.uleb128 0xc
	.byte	0x1
	.string	"CplxVecCpy_f32"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45c
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x46
	.uaword	0x3a6
	.uaword	.LLST6
	.uleb128 0xd
	.string	"S"
	.byte	0x1
	.byte	0x46
	.uaword	0x3a6
	.uaword	.LLST7
	.uleb128 0xd
	.string	"nS"
	.byte	0x1
	.byte	0x46
	.uaword	0x1f0
	.uaword	.LLST8
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CplxVecPwr_f32"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x361
	.uaword	.LFB177
	.uaword	.LFE177
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d0
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x50
	.uaword	0x3a6
	.uaword	.LLST9
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x50
	.uaword	0x1f0
	.uaword	.LLST10
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x52
	.uaword	0x1a3
	.uaword	.LLST11
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x53
	.uaword	0x361
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	0x296
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.uaword	0x2b0
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CplxVecMag_f32"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x361
	.uaword	.LFB178
	.uaword	.LFE178
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x56c
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x5f
	.uaword	0x3a6
	.uaword	.LLST13
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x5f
	.uaword	0x1f0
	.uaword	.LLST14
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x61
	.uaword	0x1a3
	.uaword	.LLST15
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0x62
	.uaword	0x361
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	0x2c5
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.uleb128 0x12
	.uaword	0x2df
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	0x296
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x2
	.byte	0x5d
	.uaword	0x561
	.uleb128 0x12
	.uaword	0x2b0
	.uaword	.LLST17
	.byte	0
	.uleb128 0x15
	.uaword	.LVL29
	.uaword	0xada
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"CplxVecMul_f32"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	.LFB179
	.uaword	.LFE179
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e9
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x6e
	.uaword	0x3a6
	.uaword	.LLST19
	.uleb128 0x16
	.string	"mul"
	.byte	0x1
	.byte	0x6e
	.uaword	0x2ba
	.byte	0x1
	.byte	0x65
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x6e
	.uaword	0x1f0
	.uaword	.LLST20
	.uleb128 0x11
	.uaword	0x2e9
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x72
	.uleb128 0x12
	.uaword	0x30c
	.uaword	.LLST21
	.uleb128 0x12
	.uaword	0x303
	.uaword	.LLST22
	.uleb128 0x17
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x18
	.uaword	0x315
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"VecPwrdB_f32"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB180
	.uaword	.LFE180
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x63c
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x78
	.uaword	0x361
	.uaword	.LLST23
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x78
	.uaword	0x1f0
	.uaword	.LLST24
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.uaword	0x1a3
	.uaword	.LLST25
	.uleb128 0x15
	.uaword	.LVL45
	.uaword	0xaf5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VecPwrdB_SF"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	.LFB181
	.uaword	.LFE181
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69b
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x84
	.uaword	0x69b
	.uaword	.LLST26
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x84
	.uaword	0x361
	.uaword	.LLST27
	.uleb128 0xd
	.string	"nX"
	.byte	0x1
	.byte	0x84
	.uaword	0x1f0
	.uaword	.LLST28
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x86
	.uaword	0x1a3
	.uaword	.LLST29
	.uleb128 0x15
	.uaword	.LVL51
	.uaword	0xaf5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1e2
	.uleb128 0xe
	.byte	0x1
	.string	"VecMaxIdx_f32"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB182
	.uaword	.LFE182
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x721
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0x90
	.uaword	0x361
	.uaword	.LLST30
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0x90
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"minIdx"
	.byte	0x1
	.byte	0x90
	.uaword	0x69b
	.byte	0x1
	.byte	0x65
	.uleb128 0x16
	.string	"maxIdx"
	.byte	0x1
	.byte	0x90
	.uaword	0x69b
	.byte	0x1
	.byte	0x66
	.uleb128 0xf
	.string	"maxPeak"
	.byte	0x1
	.byte	0x92
	.uaword	0x20e
	.uaword	.LLST31
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x93
	.uaword	0x1a3
	.uaword	.LLST32
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"VecMinIdx_f32"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a1
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xa9
	.uaword	0x361
	.uaword	.LLST33
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xa9
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"minIdx"
	.byte	0x1
	.byte	0xa9
	.uaword	0x69b
	.byte	0x1
	.byte	0x65
	.uleb128 0x16
	.string	"maxIdx"
	.byte	0x1
	.byte	0xa9
	.uaword	0x69b
	.byte	0x1
	.byte	0x66
	.uleb128 0xf
	.string	"minPeak"
	.byte	0x1
	.byte	0xab
	.uaword	0x20e
	.uaword	.LLST34
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0xac
	.uaword	0x1f0
	.uaword	.LLST35
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"VecOfs_f32"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f7
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xc2
	.uaword	0x361
	.uaword	.LLST36
	.uleb128 0x16
	.string	"offset"
	.byte	0x1
	.byte	0xc2
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1f0
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.uaword	0x1a3
	.uaword	.LLST37
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"VecGain_f32"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x84c
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xce
	.uaword	0x361
	.uaword	.LLST38
	.uleb128 0x16
	.string	"gain"
	.byte	0x1
	.byte	0xce
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xce
	.uaword	0x1f0
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xd0
	.uaword	0x1a3
	.uaword	.LLST39
	.byte	0
	.uleb128 0x1a
	.uaword	0x31f
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x883
	.uleb128 0x12
	.uaword	0x338
	.uaword	.LLST40
	.uleb128 0x1b
	.uaword	0x341
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.uaword	0x34b
	.uaword	.LLST41
	.uleb128 0x1c
	.uaword	0x357
	.uaword	.LLST42
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"VecAvg_f32"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8fc
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xe9
	.uaword	0x361
	.uaword	.LLST43
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xe9
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	0x31f
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0xeb
	.uleb128 0x1b
	.uaword	0x341
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.uaword	0x338
	.uaword	.LLST44
	.uleb128 0x17
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1c
	.uaword	0x34b
	.uaword	.LLST45
	.uleb128 0x1c
	.uaword	0x357
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"VecMax_f32"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x953
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xef
	.uaword	0x361
	.uaword	.LLST47
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xef
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.uaword	0x1a3
	.uaword	.LLST48
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0xf2
	.uaword	0x20e
	.uaword	.LLST49
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"VecMin_f32"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9ac
	.uleb128 0xd
	.string	"X"
	.byte	0x1
	.byte	0xfe
	.uaword	0x361
	.uaword	.LLST50
	.uleb128 0x16
	.string	"nX"
	.byte	0x1
	.byte	0xfe
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x1a3
	.uaword	.LLST51
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20e
	.uaword	.LLST52
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VecHalfSwap_f32"
	.byte	0x1
	.uahalf	0x10d
	.byte	0x1
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa34
	.uleb128 0x1f
	.string	"X"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x361
	.uaword	.LLST53
	.uleb128 0x1f
	.string	"nX"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1f0
	.uaword	.LLST54
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x1a3
	.uaword	.LLST55
	.uleb128 0x20
	.string	"half"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x1a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"F"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x361
	.uaword	.LLST56
	.uleb128 0x17
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x20e
	.uaword	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VecWin_f32"
	.byte	0x1
	.uahalf	0x120
	.byte	0x1
	.uaword	.LFB191
	.uaword	.LFE191
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xacf
	.uleb128 0x1f
	.string	"X"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x361
	.uaword	.LLST58
	.uleb128 0x1f
	.string	"W"
	.byte	0x1
	.uahalf	0x120
	.uaword	0xacf
	.uaword	.LLST59
	.uleb128 0x21
	.string	"nX"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"nW"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1f0
	.uaword	.LLST60
	.uleb128 0x1f
	.string	"incrX"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1f0
	.uaword	.LLST61
	.uleb128 0x1f
	.string	"symW"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1f0
	.uaword	.LLST62
	.uleb128 0x1d
	.string	"step"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x1f0
	.uaword	.LLST63
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x1f0
	.uaword	.LLST64
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xad5
	.uleb128 0x9
	.uaword	0x20e
	.uleb128 0x22
	.byte	0x1
	.string	"sqrtf"
	.byte	0x5
	.uahalf	0x136
	.byte	0x1
	.uaword	0x21d
	.byte	0x1
	.uaword	0xaf5
	.uleb128 0x23
	.uaword	0x21d
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"log10f"
	.byte	0x5
	.uahalf	0x134
	.byte	0x1
	.uaword	0x21d
	.byte	0x1
	.uleb128 0x23
	.uaword	0x21d
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LFE174
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE174
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LFE175
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LFE175
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE175
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE175
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LFE176
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x85
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE176
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE176
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE177
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LFE178
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LFE178
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL32
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE179
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE179
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL34
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x84
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LFE180
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE180
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49
	.uaword	.LFE181
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE181
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LFE181
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL57
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62
	.uaword	.LFE182
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x800000
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68
	.uaword	.LFE183
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x7f7fffff
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73
	.uaword	.LFE184
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL79
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL85
	.uaword	.LFE187
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x800000
	.uaword	.LVL91
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x3
	.byte	0x84
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x7f7fffff
	.uaword	.LVL97
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL102
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL103
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x3
	.byte	0x82
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL111
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL119
	.uaword	.LFE191
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL111
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL115
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL119
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL125
	.uaword	.LFE191
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL114
	.uaword	.LFE191
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL111
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LFE191
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL113
	.uaword	.LFE191
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0xe
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL116
	.uaword	.LVL118
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x6
	.byte	0x73
	.sleb128 -1
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LFE191
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xa4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LFB174
	.uaword	.LFE174
	.uaword	.LFB175
	.uaword	.LFE175
	.uaword	.LFB176
	.uaword	.LFE176
	.uaword	.LFB177
	.uaword	.LFE177
	.uaword	.LFB178
	.uaword	.LFE178
	.uaword	.LFB179
	.uaword	.LFE179
	.uaword	.LFB180
	.uaword	.LFE180
	.uaword	.LFB181
	.uaword	.LFE181
	.uaword	.LFB182
	.uaword	.LFE182
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	.LFB187
	.uaword	.LFE187
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LFB189
	.uaword	.LFE189
	.uaword	.LFB190
	.uaword	.LFE190
	.uaword	.LFB191
	.uaword	.LFE191
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	log10f,STT_FUNC,0
	.extern	sqrtf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
