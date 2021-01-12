	.file	"BSW_TpFunc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.byte	-86
	.byte	-86
	.byte	-86
	.byte	-86
	.byte	-86
	.byte	-86
	.byte	-86
	.byte	-86
.section .text.TpSendFrame,"ax",@progbits
	.align 1
	.type	TpSendFrame, @function
TpSendFrame:
.LFB331:
	.file 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_TpFunc.c"
	.loc 1 427 0
.LVL0:
	sub.a	%SP, 32
.LCFI0:
	.loc 1 431 0
	lea	%a3, [%SP] 4
	movh.a	%a15, hi:.LC0
	lea	%a15, [%a15] lo:.LC0
	mov.aa	%a2, %a3
		# #chunks=8, chunksize=1, remains=0
	lea	%a5, 8-1
	0:
	ld.bu	%d15, [%a15+]1
	st.b	[%a2+]1, %d15
	loop	%a5, 0b
.LVL1:
	.loc 1 433 0
	mov	%d15, 0
	jz	%d4, .L3
.LVL2:
.L5:
	.loc 1 435 0 discriminator 3
	addsc.a	%a15, %a4, %d15, 0
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a15]0
	add	%d15, 1
.LVL3:
	st.b	[%a2]0, %d2
.LVL4:
	.loc 1 433 0 discriminator 3
	and	%d2, %d15, 255
	jlt.u	%d2, %d4, .L5
.L3:
	.loc 1 438 0
	ld.bu	%d2, [%SP] 7
	ld.bu	%d15, [%SP] 6
	sh	%d2, %d2, 24
	sh	%d15, %d15, 16
	or	%d15, %d2
	ld.bu	%d2, [%SP] 4
	.loc 1 441 0
	movh	%d4, 6363
.LVL5:
	or	%d2, %d15
	.loc 1 438 0
	ld.bu	%d15, [%SP] 5
	.loc 1 441 0
	movh.a	%a5, hi:stg_MulticanBasic+192
	.loc 1 438 0
	sh	%d15, %d15, 8
	or	%d15, %d2
	st.w	[%SP] 20, %d15
	.loc 1 439 0
	ld.bu	%d2, [%SP] 11
	ld.bu	%d15, [%SP] 10
	sh	%d2, %d2, 24
	sh	%d15, %d15, 16
	or	%d15, %d2
	ld.bu	%d2, [%SP] 8
	.loc 1 441 0
	addi	%d4, %d4, -1766
	or	%d2, %d15
	.loc 1 439 0
	ld.bu	%d15, [%SP] 9
	.loc 1 441 0
	lea	%a4, [%SP] 12
.LVL6:
	.loc 1 439 0
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 441 0
	lea	%a5, [%a5] lo:stg_MulticanBasic+192
	.loc 1 439 0
	st.w	[%SP] 24, %d15
	j	Mcal_CanTransmit
.LVL7:
.LFE331:
	.size	TpSendFrame, .-TpSendFrame
.section .text.Bsw_TpFunc_Init,"ax",@progbits
	.align 1
	.global	Bsw_TpFunc_Init
	.type	Bsw_TpFunc_Init, @function
Bsw_TpFunc_Init:
.LFB325:
	.loc 1 109 0
.LVL8:
	movh	%d3, hi:u8g_TpTxBuf
	.loc 1 109 0
	mov	%d15, 0
	addi	%d3, %d3, lo:u8g_TpTxBuf
	.loc 1 114 0
	mov	%d2, 0
	lea	%a15, 149
.LVL9:
.L10:
	.loc 1 114 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	add	%d15, 1
.LVL10:
	st.b	[%a2]0, %d2
.LVL11:
	.loc 1 112 0 is_stmt 1 discriminator 3
	loop	%a15, .L10
	movh	%d3, hi:u8g_TpRxBuf
	mov	%d15, 0
	addi	%d3, %d3, lo:u8g_TpRxBuf
	.loc 1 119 0
	mov	%d2, 0
	lea	%a15, 149
.L11:
.LVL12:
	.loc 1 119 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	add	%d15, 1
.LVL13:
	st.b	[%a2]0, %d2
.LVL14:
	.loc 1 117 0 is_stmt 1 discriminator 3
	loop	%a15, .L11
	movh	%d4, hi:u8g_SingleRxBuf
	mov	%d2, 0
	addi	%d4, %d4, lo:u8g_SingleRxBuf
	.loc 1 124 0
	mov	%d3, 0
	mov.a	%a15, 7
.L12:
.LVL15:
	.loc 1 124 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d4
	addsc.a	%a2, %a3, %d2, 0
	mov	%d15, 0
	st.b	[%a2]0, %d3
.LVL16:
	add	%d2, 1
.LVL17:
	.loc 1 122 0 is_stmt 1 discriminator 3
	loop	%a15, .L12
	.loc 1 127 0
	movh.a	%a15, hi:u8g_RxFrameType
	st.b	[%a15] lo:u8g_RxFrameType, %d15
	.loc 1 129 0
	movh.a	%a15, hi:u8s_TpTxBufIdx
	st.b	[%a15] lo:u8s_TpTxBufIdx, %d15
	.loc 1 130 0
	movh.a	%a15, hi:u8s_TpTxSeqNum
	st.b	[%a15] lo:u8s_TpTxSeqNum, %d15
	.loc 1 131 0
	movh.a	%a15, hi:u8s_TpTxDataCnt
	st.b	[%a15] lo:u8s_TpTxDataCnt, %d15
	.loc 1 132 0
	movh.a	%a15, hi:u8s_TpTxState
	st.b	[%a15] lo:u8s_TpTxState, %d15
	.loc 1 134 0
	movh.a	%a15, hi:u8s_TpRxBufIdx
	st.b	[%a15] lo:u8s_TpRxBufIdx, %d15
	.loc 1 135 0
	movh.a	%a15, hi:u8s_TpRxSeqNum
	st.b	[%a15] lo:u8s_TpRxSeqNum, %d15
	.loc 1 136 0
	movh.a	%a15, hi:u8s_TpRxDataCnt
	st.b	[%a15] lo:u8s_TpRxDataCnt, %d15
	.loc 1 137 0
	movh.a	%a15, hi:u8s_TpRxDataSize
	st.b	[%a15] lo:u8s_TpRxDataSize, %d15
	.loc 1 139 0
	mov	%d15, 127
	movh.a	%a15, hi:u16s_STminTickCnt
	st.h	[%a15] lo:u16s_STminTickCnt, %d15
	.loc 1 140 0
	mov	%d15, 0
	movh.a	%a15, hi:u16s_STMin_tm
	st.h	[%a15] lo:u16s_STMin_tm, %d15
	ret
.LFE325:
	.size	Bsw_TpFunc_Init, .-Bsw_TpFunc_Init
.section .text.Bsw_TpFunc,"ax",@progbits
	.align 1
	.global	Bsw_TpFunc
	.type	Bsw_TpFunc, @function
Bsw_TpFunc:
.LFB326:
	.loc 1 151 0
	.loc 1 156 0
	movh.a	%a15, hi:u16s_STMin_tm
	ld.h	%d15, [%a15] lo:u16s_STMin_tm
	.loc 1 158 0
	movh.a	%a14, hi:u8s_TpTxState
	.loc 1 156 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 158 0
	ld.bu	%d2, [%a14] lo:u8s_TpTxState
	.loc 1 156 0
	st.h	[%a15] lo:u16s_STMin_tm, %d15
	.loc 1 151 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 158 0
	jne	%d2, 2, .L16
	.loc 1 165 0
	movh.a	%a2, hi:u16s_STminTickCnt
	ld.hu	%d2, [%a2] lo:u16s_STminTickCnt
	jlt.u	%d15, %d2, .L16
	.loc 1 167 0
	mov	%d3, 0
	st.h	[%a15] lo:u16s_STMin_tm, %d3
	.loc 1 168 0
	movh.a	%a15, hi:u8s_TpTxSeqNum
	ld.bu	%d15, [%a15] lo:u8s_TpTxSeqNum
	add	%d15, 1
	and	%d15, 255
	.loc 1 170 0
	ge.u	%d2, %d15, 16
	jnz	%d2, .L20
	.loc 1 168 0
	st.b	[%a15] lo:u8s_TpTxSeqNum, %d15
	or	%d15, %d15, 32
.L21:
	.loc 1 175 0
	movh.a	%a13, hi:u8s_TpTxDataCnt
	ld.bu	%d8, [%a13] lo:u8s_TpTxDataCnt
	.loc 1 173 0
	lea	%a4, [%SP] 8
	st.b	[+%a4]-8, %d15
	movh.a	%a12, hi:u8s_TpTxBufIdx
	movh	%d4, hi:u8g_TpTxBuf
	min.u	%d8, %d8, 7
.LVL18:
	ld.bu	%d3, [%a12] lo:u8s_TpTxBufIdx
	.loc 1 178 0
	mov	%d15, 0
	addi	%d4, %d4, lo:u8g_TpTxBuf
	jz	%d8, .L26
.LVL19:
.L27:
	.loc 1 180 0 discriminator 3
	mov.a	%a3, %d4
	addsc.a	%a15, %a3, %d15, 0
	addsc.a	%a15, %a15, %d3, 0
	add	%d2, %d15, 1
	addsc.a	%a2, %a4, %d2, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
.LVL20:
	mov	%d15, %d2
	.loc 1 178 0 discriminator 3
	and	%d2, %d2, 255
.LVL21:
	jlt.u	%d2, %d8, .L27
.LVL22:
.L26:
	.loc 1 183 0
	addi	%d4, %d8, 1
	mov.aa	%a4, %SP
	and	%d4, %d4, 255
	call	TpSendFrame
.LVL23:
	.loc 1 185 0
	ld.bu	%d15, [%a12] lo:u8s_TpTxBufIdx
	add	%d15, %d8
	st.b	[%a12] lo:u8s_TpTxBufIdx, %d15
	.loc 1 186 0
	ld.bu	%d15, [%a13] lo:u8s_TpTxDataCnt
	sub	%d8, %d15, %d8
.LVL24:
	and	%d8, %d8, 255
	st.b	[%a13] lo:u8s_TpTxDataCnt, %d8
	.loc 1 188 0
	jnz	%d8, .L29
	.loc 1 188 0 is_stmt 0 discriminator 1
	st.b	[%a14] lo:u8s_TpTxState, %d8
.L16:
	ret
.L20:
	.loc 1 170 0 is_stmt 1 discriminator 1
	st.b	[%a15] lo:u8s_TpTxSeqNum, %d3
	mov	%d15, 32
	j	.L21
.L29:
	ret
.LFE326:
	.size	Bsw_TpFunc, .-Bsw_TpFunc
.section .text.Bsw_TpRecvProc,"ax",@progbits
	.align 1
	.global	Bsw_TpRecvProc
	.type	Bsw_TpRecvProc, @function
Bsw_TpRecvProc:
.LFB327:
	.loc 1 204 0
.LVL25:
	.loc 1 218 0
	movh.a	%a2, hi:u32g_Can_DiagRxData
	.loc 1 216 0
	movh.a	%a15, hi:u32g_Can_DiagRxId
	ld.w	%d5, [%a15] lo:u32g_Can_DiagRxId
.LVL26:
	.loc 1 218 0
	ld.w	%d3, [%a2] lo:u32g_Can_DiagRxData
	.loc 1 219 0
	ld.w	%d15, [%a2] lo:u32g_Can_DiagRxData
	.loc 1 220 0
	ld.w	%d7, [%a2] lo:u32g_Can_DiagRxData
	.loc 1 221 0
	ld.w	%d2, [%a2] lo:u32g_Can_DiagRxData
	.loc 1 204 0
	sub.a	%SP, 24
.LCFI2:
	.loc 1 218 0
	lea	%a15, [%a2] lo:u32g_Can_DiagRxData
	.loc 1 221 0
	sh	%d2, %d2, -24
	st.b	[%SP] 11, %d2
	.loc 1 222 0
	ld.w	%d2, [%a15] 4
	.loc 1 219 0
	extr.u	%d15, %d15, 8, 8
	.loc 1 222 0
	st.b	[%SP] 12, %d2
	.loc 1 223 0
	ld.w	%d2, [%a15] 4
	.loc 1 220 0
	sh	%d7, %d7, -16
	.loc 1 223 0
	sh	%d2, -8
	st.b	[%SP] 13, %d2
	.loc 1 224 0
	ld.w	%d2, [%a15] 4
	.loc 1 218 0
	and	%d3, %d3, 255
	.loc 1 224 0
	sh	%d2, %d2, -16
	st.b	[%SP] 14, %d2
	.loc 1 225 0
	ld.w	%d2, [%a15] 4
	.loc 1 220 0
	and	%d4, %d7, 255
	.loc 1 225 0
	sh	%d2, %d2, -24
	st.b	[%SP] 15, %d2
	.loc 1 227 0
	movh	%d2, 6362
	.loc 1 218 0
	st.b	[%SP] 8, %d3
	.loc 1 219 0
	st.b	[%SP] 9, %d15
	.loc 1 220 0
	st.b	[%SP] 10, %d4
	.loc 1 227 0
	addi	%d2, %d2, 6905
	jeq	%d5, %d2, .L69
	.loc 1 228 0
	movh	%d2, 6364
	add	%d2, -7
	jeq	%d5, %d2, .L70
	.loc 1 229 0
	mov	%d15, 0
	st.b	[%a6]0, %d15
	.loc 1 330 0
	mov	%d2, 9
	ret
.L69:
	.loc 1 227 0 discriminator 1
	mov	%d2, 1
	st.b	[%a6]0, %d2
.L32:
	.loc 1 233 0
	sh	%d5, %d3, -4
.LVL27:
	.loc 1 236 0
	movh.a	%a15, hi:u8g_RxFrameType
	st.b	[%a15] lo:u8g_RxFrameType, %d5
	.loc 1 234 0
	and	%d6, %d3, 15
.LVL28:
	.loc 1 324 0
	mov	%d2, 9
	.loc 1 238 0
	jge.u	%d5, 4, .L61
	movh.a	%a15, hi:.L54
	lea	%a15, [%a15] lo:.L54
	addsc.a	%a15, %a15, %d5, 2
	ji	%a15
	.align 2
	.align 2
.L54:
	.code32
	j	.L35
	.code32
	j	.L38
	.code32
	j	.L41
	.code32
	j	.L50
.LVL29:
.L61:
	.loc 1 334 0
	ret
.LVL30:
.L70:
	.loc 1 228 0 discriminator 1
	mov	%d2, 2
	st.b	[%a6]0, %d2
	j	.L32
.LVL31:
.L41:
	.loc 1 266 0
	movh.a	%a15, hi:u8s_TpRxSeqNum
	ld.bu	%d2, [%a15] lo:u8s_TpRxSeqNum
	add	%d2, 1
	and	%d2, %d2, 255
.LVL32:
	.loc 1 269 0
	ge.u	%d4, %d2, 16
	jz	%d4, .L71
	.loc 1 269 0 is_stmt 0 discriminator 1
	mov	%d2, 0
	st.b	[%a15] lo:u8s_TpRxSeqNum, %d2
	mov	%d2, 0
.L43:
	.loc 1 271 0 is_stmt 1
	jeq	%d6, %d2, .L44
	.loc 1 273 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_TpRxBufIdx
	st.b	[%a15] lo:u8s_TpRxBufIdx, %d15
.LVL33:
	.loc 1 274 0
	mov	%d2, 36
	ret
.LVL34:
.L38:
	.loc 1 250 0
	movh.a	%a15, hi:u8s_TpRxDataSize
	movh	%d5, hi:u8g_TpRxBuf
.LVL35:
	st.b	[%a15] lo:u8s_TpRxDataSize, %d15
.LVL36:
	mov	%d2, 0
	addi	%d5, %d5, lo:u8g_TpRxBuf
	mov.a	%a15, 5
.LVL37:
.L40:
	.loc 1 255 0 discriminator 3
	mov.a	%a6, %d5
	addsc.a	%a2, %a6, %d2, 0
	addi	%d3, %d2, 1
	st.b	[%a2]0, %d4
.LVL38:
	loop	%a15, .L62
	.loc 1 258 0
	movh.a	%a15, hi:u8s_TpRxBufIdx
	st.b	[%a15] lo:u8s_TpRxBufIdx, %d3
	.loc 1 259 0
	add	%d15, -6
	movh.a	%a15, hi:u8s_TpRxDataCnt
	st.b	[%a15] lo:u8s_TpRxDataCnt, %d15
	.loc 1 260 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_TpRxSeqNum
	st.b	[%a15] lo:u8s_TpRxSeqNum, %d15
.LBB6:
.LBB7:
	.loc 1 410 0
	mov	%d15, 48
	st.b	[%SP] 16, %d15
	.loc 1 411 0
	mov	%d15, 8
	st.b	[%SP] 17, %d15
	.loc 1 414 0
	lea	%a4, [%SP] 16
.LVL39:
	.loc 1 412 0
	mov	%d15, 20
	.loc 1 414 0
	mov	%d4, 3
	.loc 1 412 0
	st.b	[%SP] 18, %d15
	.loc 1 414 0
	call	TpSendFrame
.LVL40:
.LBE7:
.LBE6:
	.loc 1 211 0
	mov	%d2, 0
	ret
.LVL41:
.L35:
	movh	%d4, hi:u8g_SingleRxBuf
	.loc 1 241 0 discriminator 1
	mov	%d2, 0
	addi	%d4, %d4, lo:u8g_SingleRxBuf
	jnz	%d6, .L37
	j	.L36
.LVL42:
.L72:
	lea	%a3, [%SP] 10
	addsc.a	%a15, %a3, %d2, 0
	mov	%d2, %d3
.LVL43:
	ld.bu	%d15, [%a15]0
.LVL44:
.L37:
	.loc 1 243 0 discriminator 3
	mov.a	%a2, %d4
	addsc.a	%a15, %a2, %d2, 0
	addi	%d3, %d2, 1
	st.b	[%a15]0, %d15
.LVL45:
	.loc 1 241 0 discriminator 3
	and	%d15, %d3, 255
	jlt.u	%d15, %d6, .L72
.LVL46:
.L36:
	.loc 1 246 0
	mov	%d15, 1
	st.b	[%a4]0, %d15
	.loc 1 247 0
	st.b	[%a5]0, %d6
	.loc 1 211 0
	mov	%d2, 0
	.loc 1 248 0
	ret
.L50:
.LVL47:
	.loc 1 316 0
	jz	%d4, .L73
	.loc 1 317 0
	jnz.t	%d7, 7, .L74
	.loc 1 318 0
	movh.a	%a15, hi:u16s_STminTickCnt
	st.h	[%a15] lo:u16s_STminTickCnt, %d4
.L52:
	.loc 1 320 0
	mov	%d15, 0
	movh.a	%a15, hi:u16s_STMin_tm
	st.h	[%a15] lo:u16s_STMin_tm, %d15
	.loc 1 321 0
	mov	%d15, 2
	movh.a	%a15, hi:u8s_TpTxState
	st.b	[%a15] lo:u8s_TpTxState, %d15
	.loc 1 211 0
	mov	%d2, 0
	.loc 1 322 0
	ret
.LVL48:
.L62:
	lea	%a3, [%SP] 11
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 253 0
	mov	%d2, %d3
.LVL49:
	ld.bu	%d4, [%a2]0
	j	.L40
.LVL50:
.L73:
	.loc 1 316 0 discriminator 1
	mov	%d15, 1
	movh.a	%a15, hi:u16s_STminTickCnt
	st.h	[%a15] lo:u16s_STminTickCnt, %d15
	j	.L52
.LVL51:
.L71:
	.loc 1 266 0
	st.b	[%a15] lo:u8s_TpRxSeqNum, %d2
	j	.L43
.L44:
	.loc 1 278 0
	movh.a	%a3, hi:u8s_TpRxDataCnt
	ld.bu	%d7, [%a3] lo:u8s_TpRxDataCnt
	.loc 1 281 0
	movh.a	%a2, hi:u8s_TpRxBufIdx
	ld.bu	%d6, [%a2] lo:u8s_TpRxBufIdx
.LVL52:
	min.u	%d4, %d7, 7
.LVL53:
	add	%d0, %d6, %d4
	ge	%d2, %d0, 150
	jz	%d2, .L75
	.loc 1 283 0
	mov	%d15, 0
	st.b	[%a2] lo:u8s_TpRxBufIdx, %d15
.LVL54:
	.loc 1 284 0
	mov	%d2, 49
	ret
.LVL55:
.L74:
	.loc 1 317 0 discriminator 1
	mov	%d15, 127
	movh.a	%a15, hi:u16s_STminTickCnt
	st.h	[%a15] lo:u16s_STminTickCnt, %d15
	j	.L52
.LVL56:
.L75:
	movh	%d5, hi:u8g_TpRxBuf
.LVL57:
	addi	%d5, %d5, lo:u8g_TpRxBuf
	.loc 1 288 0 discriminator 1
	mov	%d2, 0
	.loc 1 290 0 discriminator 1
	add	%d5, %d6
	.loc 1 288 0 discriminator 1
	jnz	%d4, .L47
	j	.L46
.LVL58:
.L76:
	lea	%a6, [%SP] 10
	addsc.a	%a15, %a6, %d2, 0
	.loc 1 288 0 is_stmt 0
	mov	%d2, %d6
.LVL59:
	ld.bu	%d15, [%a15]0
.LVL60:
.L47:
	.loc 1 290 0 is_stmt 1 discriminator 3
	mov.a	%a6, %d5
	addsc.a	%a15, %a6, %d2, 0
	addi	%d6, %d2, 1
	st.b	[%a15]0, %d15
.LVL61:
	.loc 1 288 0 discriminator 3
	and	%d15, %d6, 255
	jlt.u	%d15, %d4, .L76
.LVL62:
.L46:
	.loc 1 294 0
	sub	%d4, %d7, %d4
.LVL63:
	and	%d4, %d4, 255
	.loc 1 293 0
	st.b	[%a2] lo:u8s_TpRxBufIdx, %d0
	.loc 1 294 0
	st.b	[%a3] lo:u8s_TpRxDataCnt, %d4
	.loc 1 296 0
	jz	%d4, .L77
	.loc 1 304 0
	and	%d3, %d3, 7
.LVL64:
	.loc 1 211 0
	mov	%d2, 0
	.loc 1 304 0
	jnz	%d3, .L61
.LBB8:
.LBB9:
	.loc 1 410 0
	mov	%d15, 48
	st.b	[%SP] 16, %d15
	.loc 1 411 0
	mov	%d15, 8
	st.b	[%SP] 17, %d15
	.loc 1 414 0
	lea	%a4, [%SP] 16
.LVL65:
	.loc 1 412 0
	mov	%d15, 20
	.loc 1 414 0
	mov	%d4, 3
	st.w	[%SP] 4, %d2
	.loc 1 412 0
	st.b	[%SP] 18, %d15
	.loc 1 414 0
	call	TpSendFrame
.LVL66:
	ld.w	%d2, [%SP] 4
	ret
.LVL67:
.L77:
.LBE9:
.LBE8:
	.loc 1 298 0
	mov	%d15, 1
	.loc 1 299 0
	movh.a	%a15, hi:u8s_TpRxDataSize
	.loc 1 298 0
	st.b	[%a4]0, %d15
	.loc 1 299 0
	ld.bu	%d15, [%a15] lo:u8s_TpRxDataSize
	.loc 1 300 0
	movh.a	%a15, hi:u8s_TpRxBufIdx
	.loc 1 299 0
	st.b	[%a5]0, %d15
	.loc 1 300 0
	st.b	[%a15] lo:u8s_TpRxBufIdx, %d4
	.loc 1 211 0
	mov	%d2, 0
	ret
.LFE327:
	.size	Bsw_TpRecvProc, .-Bsw_TpRecvProc
.section .text.Bsw_TpSingleFrame,"ax",@progbits
	.align 1
	.global	Bsw_TpSingleFrame
	.type	Bsw_TpSingleFrame, @function
Bsw_TpSingleFrame:
.LFB328:
	.loc 1 344 0
.LVL68:
	sub.a	%SP, 8
.LCFI3:
	.loc 1 349 0
	and	%d15, %d4, 15
	lea	%a4, [%SP] 8
	st.b	[+%a4]-8, %d15
.LVL69:
	movh.a	%a3, hi:u8g_TpTxBuf
	.loc 1 351 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:u8g_TpTxBuf
	jz	%d4, .L80
.LVL70:
.L82:
	.loc 1 353 0 discriminator 3
	addsc.a	%a15, %a3, %d15, 0
	add	%d2, %d15, 1
	addsc.a	%a2, %a4, %d2, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
.LVL71:
	mov	%d15, %d2
	.loc 1 351 0 discriminator 3
	and	%d2, %d2, 255
.LVL72:
	jlt.u	%d2, %d4, .L82
.LVL73:
.L80:
	.loc 1 356 0
	add	%d4, 1
.LVL74:
	mov.aa	%a4, %SP
	and	%d4, %d4, 255
	.loc 1 358 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_TpTxState
	.loc 1 356 0
	call	TpSendFrame
.LVL75:
	.loc 1 358 0
	st.b	[%a15] lo:u8s_TpTxState, %d15
	ret
.LFE328:
	.size	Bsw_TpSingleFrame, .-Bsw_TpSingleFrame
.section .text.Bsw_TpFirstFrame,"ax",@progbits
	.align 1
	.global	Bsw_TpFirstFrame
	.type	Bsw_TpFirstFrame, @function
Bsw_TpFirstFrame:
.LFB329:
	.loc 1 371 0
.LVL76:
	sub.a	%SP, 8
.LCFI4:
	.loc 1 375 0
	mov	%d15, 16
	movh.a	%a4, hi:u8g_TpTxBuf
	st.b	[%SP]0, %d15
	.loc 1 371 0
	mov	%d8, %d4
	.loc 1 376 0
	st.b	[%SP] 1, %d4
.LVL77:
	mov	%d15, 0
	lea	%a4, [%a4] lo:u8g_TpTxBuf
	mov.a	%a15, 5
.LVL78:
.L86:
	.loc 1 380 0 discriminator 3
	lea	%a2, [%SP] 2
	addsc.a	%a3, %a2, %d15, 0
	addsc.a	%a2, %a4, %d15, 0
	add	%d15, 1
.LVL79:
	ld.bu	%d2, [%a2]0
	st.b	[%a3]0, %d2
.LVL80:
	loop	%a15, .L86
	.loc 1 385 0
	movh.a	%a15, hi:u8s_TpTxDataCnt
	.loc 1 383 0
	mov.aa	%a4, %SP
	mov	%d4, 8
.LVL81:
	.loc 1 385 0
	add	%d8, -6
	.loc 1 383 0
	call	TpSendFrame
.LVL82:
	.loc 1 385 0
	st.b	[%a15] lo:u8s_TpTxDataCnt, %d8
	.loc 1 386 0
	movh.a	%a15, hi:u8s_TpTxBufIdx
	st.b	[%a15] lo:u8s_TpTxBufIdx, %d15
	.loc 1 387 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_TpTxSeqNum
	st.b	[%a15] lo:u8s_TpTxSeqNum, %d15
	.loc 1 389 0
	mov	%d15, 1
	movh.a	%a15, hi:u8s_TpTxState
	st.b	[%a15] lo:u8s_TpTxState, %d15
	ret
.LFE329:
	.size	Bsw_TpFirstFrame, .-Bsw_TpFirstFrame
.section .bss.u16s_STMin_tm,"aw",@nobits
	.align 1
	.type	u16s_STMin_tm, @object
	.size	u16s_STMin_tm, 2
u16s_STMin_tm:
	.zero	2
.section .bss.u16s_STminTickCnt,"aw",@nobits
	.align 1
	.type	u16s_STminTickCnt, @object
	.size	u16s_STminTickCnt, 2
u16s_STminTickCnt:
	.zero	2
.section .bss.u8s_TpRxDataSize,"aw",@nobits
	.type	u8s_TpRxDataSize, @object
	.size	u8s_TpRxDataSize, 1
u8s_TpRxDataSize:
	.zero	1
.section .bss.u8s_TpRxDataCnt,"aw",@nobits
	.type	u8s_TpRxDataCnt, @object
	.size	u8s_TpRxDataCnt, 1
u8s_TpRxDataCnt:
	.zero	1
.section .bss.u8s_TpRxSeqNum,"aw",@nobits
	.type	u8s_TpRxSeqNum, @object
	.size	u8s_TpRxSeqNum, 1
u8s_TpRxSeqNum:
	.zero	1
.section .bss.u8s_TpRxBufIdx,"aw",@nobits
	.type	u8s_TpRxBufIdx, @object
	.size	u8s_TpRxBufIdx, 1
u8s_TpRxBufIdx:
	.zero	1
.section .bss.u8s_TpTxState,"aw",@nobits
	.type	u8s_TpTxState, @object
	.size	u8s_TpTxState, 1
u8s_TpTxState:
	.zero	1
.section .bss.u8s_TpTxDataCnt,"aw",@nobits
	.type	u8s_TpTxDataCnt, @object
	.size	u8s_TpTxDataCnt, 1
u8s_TpTxDataCnt:
	.zero	1
.section .bss.u8s_TpTxSeqNum,"aw",@nobits
	.type	u8s_TpTxSeqNum, @object
	.size	u8s_TpTxSeqNum, 1
u8s_TpTxSeqNum:
	.zero	1
.section .bss.u8s_TpTxBufIdx,"aw",@nobits
	.type	u8s_TpTxBufIdx, @object
	.size	u8s_TpTxBufIdx, 1
u8s_TpTxBufIdx:
	.zero	1
	.global	u8g_RxFrameType
.section .bss.u8g_RxFrameType,"aw",@nobits
	.type	u8g_RxFrameType, @object
	.size	u8g_RxFrameType, 1
u8g_RxFrameType:
	.zero	1
	.global	u8g_SingleRxBuf
.section .bss.u8g_SingleRxBuf,"aw",@nobits
	.type	u8g_SingleRxBuf, @object
	.size	u8g_SingleRxBuf, 8
u8g_SingleRxBuf:
	.zero	8
	.global	u8g_TpRxBuf
.section .bss.u8g_TpRxBuf,"aw",@nobits
	.type	u8g_TpRxBuf, @object
	.size	u8g_TpRxBuf, 150
u8g_TpRxBuf:
	.zero	150
	.global	u8g_TpTxBuf
.section .bss.u8g_TpTxBuf,"aw",@nobits
	.type	u8g_TpTxBuf, @object
	.size	u8g_TpTxBuf, 150
u8g_TpTxBuf:
	.zero	150
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
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.byte	0x4
	.uaword	.LCFI0-.LFB331
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.byte	0x4
	.uaword	.LCFI1-.LFB326
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.byte	0x4
	.uaword	.LCFI2-.LFB327
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.byte	0x4
	.uaword	.LCFI3-.LFB328
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.byte	0x4
	.uaword	.LCFI4-.LFB329
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 5 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_regdef.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxMultican_cfg.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
	.file 10 "0_Src/AppSw/Tricore/BSW_Module/UDS/../Drivers/Mcal_Multican.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3e79
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_TpFunc.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x173
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x173
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x19f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x71
	.uaword	0x1c3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x2
	.byte	0x83
	.uaword	0x21c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x184
	.uleb128 0x2
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x191
	.uleb128 0x2
	.string	"dword"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1b5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x24c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x298
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x8f
	.uaword	0x2bf
	.uleb128 0x7
	.string	"module"
	.byte	0x4
	.byte	0x91
	.uaword	0x292
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x4
	.byte	0x92
	.uaword	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x93
	.uaword	0x299
	.uleb128 0x8
	.string	"_Ifx_CAN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x31
	.uaword	0x4ed
	.uleb128 0x9
	.string	"EN0"
	.byte	0x5
	.byte	0x33
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x5
	.byte	0x34
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x5
	.byte	0x35
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x5
	.byte	0x36
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x5
	.byte	0x37
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x5
	.byte	0x38
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x5
	.byte	0x39
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x5
	.byte	0x3a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EN8"
	.byte	0x5
	.byte	0x3b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"EN9"
	.byte	0x5
	.byte	0x3c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"EN10"
	.byte	0x5
	.byte	0x3d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"EN11"
	.byte	0x5
	.byte	0x3e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"EN12"
	.byte	0x5
	.byte	0x3f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"EN13"
	.byte	0x5
	.byte	0x40
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"EN14"
	.byte	0x5
	.byte	0x41
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"EN15"
	.byte	0x5
	.byte	0x42
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"EN16"
	.byte	0x5
	.byte	0x43
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EN17"
	.byte	0x5
	.byte	0x44
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EN18"
	.byte	0x5
	.byte	0x45
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"EN19"
	.byte	0x5
	.byte	0x46
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"EN20"
	.byte	0x5
	.byte	0x47
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"EN21"
	.byte	0x5
	.byte	0x48
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EN22"
	.byte	0x5
	.byte	0x49
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"EN23"
	.byte	0x5
	.byte	0x4a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EN24"
	.byte	0x5
	.byte	0x4b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"EN25"
	.byte	0x5
	.byte	0x4c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"EN26"
	.byte	0x5
	.byte	0x4d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"EN27"
	.byte	0x5
	.byte	0x4e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"EN28"
	.byte	0x5
	.byte	0x4f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"EN29"
	.byte	0x5
	.byte	0x50
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"EN30"
	.byte	0x5
	.byte	0x51
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EN31"
	.byte	0x5
	.byte	0x52
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"Ifx_CAN_ACCEN0_Bits"
	.byte	0x5
	.byte	0x53
	.uaword	0x2d9
	.uleb128 0x8
	.string	"_Ifx_CAN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x56
	.uaword	0x545
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x58
	.uaword	0x4ed
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_ACCEN1_Bits"
	.byte	0x5
	.byte	0x59
	.uaword	0x518
	.uleb128 0x8
	.string	"_Ifx_CAN_CLC_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x5c
	.uaword	0x5c9
	.uleb128 0x9
	.string	"DISR"
	.byte	0x5
	.byte	0x5e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"DISS"
	.byte	0x5
	.byte	0x5f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x5
	.byte	0x60
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EDIS"
	.byte	0x5
	.byte	0x61
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x5
	.byte	0x62
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_CLC_Bits"
	.byte	0x5
	.byte	0x63
	.uaword	0x560
	.uleb128 0x8
	.string	"_Ifx_CAN_FDR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x66
	.uaword	0x638
	.uleb128 0x9
	.string	"STEP"
	.byte	0x5
	.byte	0x68
	.uaword	0x4ed
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x5
	.byte	0x69
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"DM"
	.byte	0x5
	.byte	0x6a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x5
	.byte	0x6b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_FDR_Bits"
	.byte	0x5
	.byte	0x6c
	.uaword	0x5e1
	.uleb128 0x8
	.string	"_Ifx_CAN_ID_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.uaword	0x6a4
	.uleb128 0x9
	.string	"MODREV"
	.byte	0x5
	.byte	0x71
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"MODTYPE"
	.byte	0x5
	.byte	0x72
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MODNUMBER"
	.byte	0x5
	.byte	0x73
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_ID_Bits"
	.byte	0x5
	.byte	0x74
	.uaword	0x650
	.uleb128 0x8
	.string	"_Ifx_CAN_KRST0_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x77
	.uaword	0x709
	.uleb128 0x9
	.string	"RST"
	.byte	0x5
	.byte	0x79
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"RSTSTAT"
	.byte	0x5
	.byte	0x7a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x5
	.byte	0x7b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_KRST0_Bits"
	.byte	0x5
	.byte	0x7c
	.uaword	0x6bb
	.uleb128 0x8
	.string	"_Ifx_CAN_KRST1_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x7f
	.uaword	0x75e
	.uleb128 0x9
	.string	"RST"
	.byte	0x5
	.byte	0x81
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x5
	.byte	0x82
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_KRST1_Bits"
	.byte	0x5
	.byte	0x83
	.uaword	0x723
	.uleb128 0x8
	.string	"_Ifx_CAN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x86
	.uaword	0x7b5
	.uleb128 0x9
	.string	"CLR"
	.byte	0x5
	.byte	0x88
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x5
	.byte	0x89
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_KRSTCLR_Bits"
	.byte	0x5
	.byte	0x8a
	.uaword	0x778
	.uleb128 0x8
	.string	"_Ifx_CAN_LIST_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x8d
	.uaword	0x83d
	.uleb128 0x9
	.string	"BEGIN"
	.byte	0x5
	.byte	0x8f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"END"
	.byte	0x5
	.byte	0x90
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"SIZE"
	.byte	0x5
	.byte	0x91
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EMPTY"
	.byte	0x5
	.byte	0x92
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x5
	.byte	0x93
	.uaword	0x4ed
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_LIST_Bits"
	.byte	0x5
	.byte	0x94
	.uaword	0x7d1
	.uleb128 0x8
	.string	"_Ifx_CAN_MCR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x97
	.uaword	0x8d1
	.uleb128 0x9
	.string	"CLKSEL"
	.byte	0x5
	.byte	0x99
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x5
	.byte	0x9a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"DXCM"
	.byte	0x5
	.byte	0x9b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x5
	.byte	0x9c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"MPSEL"
	.byte	0x5
	.byte	0x9d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x5
	.byte	0x9e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MCR_Bits"
	.byte	0x5
	.byte	0x9f
	.uaword	0x856
	.uleb128 0x8
	.string	"_Ifx_CAN_MECR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xa2
	.uaword	0x9b2
	.uleb128 0x9
	.string	"TH"
	.byte	0x5
	.byte	0xa4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"INP"
	.byte	0x5
	.byte	0xa5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"NODE"
	.byte	0x5
	.byte	0xa6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"reserved_23"
	.byte	0x5
	.byte	0xa7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"ANYED"
	.byte	0x5
	.byte	0xa8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CAPEIE"
	.byte	0x5
	.byte	0xa9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x5
	.byte	0xaa
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"DEPTH"
	.byte	0x5
	.byte	0xab
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"SOF"
	.byte	0x5
	.byte	0xac
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"reserved_31"
	.byte	0x5
	.byte	0xad
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MECR_Bits"
	.byte	0x5
	.byte	0xae
	.uaword	0x8e9
	.uleb128 0x8
	.string	"_Ifx_CAN_MESTAT_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xb1
	.uaword	0xa32
	.uleb128 0x9
	.string	"CAPT"
	.byte	0x5
	.byte	0xb3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"CAPRED"
	.byte	0x5
	.byte	0xb4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"CAPE"
	.byte	0x5
	.byte	0xb5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"reserved_18"
	.byte	0x5
	.byte	0xb6
	.uaword	0x4ed
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MESTAT_Bits"
	.byte	0x5
	.byte	0xb7
	.uaword	0x9cb
	.uleb128 0x8
	.string	"_Ifx_CAN_MITR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.uaword	0xa86
	.uleb128 0x9
	.string	"IT"
	.byte	0x5
	.byte	0xbc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x5
	.byte	0xbd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MITR_Bits"
	.byte	0x5
	.byte	0xbe
	.uaword	0xa4d
	.uleb128 0x8
	.string	"_Ifx_CAN_MO_AMR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.uaword	0xaea
	.uleb128 0x9
	.string	"AM"
	.byte	0x5
	.byte	0xc3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"MIDE"
	.byte	0x5
	.byte	0xc4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x5
	.byte	0xc5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MO_AMR_Bits"
	.byte	0x5
	.byte	0xc6
	.uaword	0xa9f
	.uleb128 0x8
	.string	"_Ifx_CAN_MO_AR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xc9
	.uaword	0xb4e
	.uleb128 0x9
	.string	"ID"
	.byte	0x5
	.byte	0xcb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"IDE"
	.byte	0x5
	.byte	0xcc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"PRI"
	.byte	0x5
	.byte	0xcd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MO_AR_Bits"
	.byte	0x5
	.byte	0xce
	.uaword	0xb05
	.uleb128 0x8
	.string	"_Ifx_CAN_MO_CTR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xd1
	.uaword	0xd82
	.uleb128 0x9
	.string	"RESRXPND"
	.byte	0x5
	.byte	0xd3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"RESTXPND"
	.byte	0x5
	.byte	0xd4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RESRXUPD"
	.byte	0x5
	.byte	0xd5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RESNEWDAT"
	.byte	0x5
	.byte	0xd6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"RESMSGLST"
	.byte	0x5
	.byte	0xd7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"RESMSGVAL"
	.byte	0x5
	.byte	0xd8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"RESRTSEL"
	.byte	0x5
	.byte	0xd9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"RESRXEN"
	.byte	0x5
	.byte	0xda
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"RESTXRQ"
	.byte	0x5
	.byte	0xdb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"RESTXEN0"
	.byte	0x5
	.byte	0xdc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"RESTXEN1"
	.byte	0x5
	.byte	0xdd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"RESDIR"
	.byte	0x5
	.byte	0xde
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x5
	.byte	0xdf
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"SETRXPND"
	.byte	0x5
	.byte	0xe0
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"SETTXPND"
	.byte	0x5
	.byte	0xe1
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"SETRXUPD"
	.byte	0x5
	.byte	0xe2
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"SETNEWDAT"
	.byte	0x5
	.byte	0xe3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"SETMSGLST"
	.byte	0x5
	.byte	0xe4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"SETMSGVAL"
	.byte	0x5
	.byte	0xe5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"SETRTSEL"
	.byte	0x5
	.byte	0xe6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"SETRXEN"
	.byte	0x5
	.byte	0xe7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SETTXRQ"
	.byte	0x5
	.byte	0xe8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"SETTXEN0"
	.byte	0x5
	.byte	0xe9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"SETTXEN1"
	.byte	0x5
	.byte	0xea
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"SETDIR"
	.byte	0x5
	.byte	0xeb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x5
	.byte	0xec
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MO_CTR_Bits"
	.byte	0x5
	.byte	0xed
	.uaword	0xb68
	.uleb128 0x8
	.string	"_Ifx_CAN_MO_DATAH_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xf0
	.uaword	0xdf9
	.uleb128 0x9
	.string	"DB4"
	.byte	0x5
	.byte	0xf2
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"DB5"
	.byte	0x5
	.byte	0xf3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"DB6"
	.byte	0x5
	.byte	0xf4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"DB7"
	.byte	0x5
	.byte	0xf5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MO_DATAH_Bits"
	.byte	0x5
	.byte	0xf6
	.uaword	0xd9d
	.uleb128 0x8
	.string	"_Ifx_CAN_MO_DATAL_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xf9
	.uaword	0xe72
	.uleb128 0x9
	.string	"DB0"
	.byte	0x5
	.byte	0xfb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"DB1"
	.byte	0x5
	.byte	0xfc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"DB2"
	.byte	0x5
	.byte	0xfd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"DB3"
	.byte	0x5
	.byte	0xfe
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_CAN_MO_DATAL_Bits"
	.byte	0x5
	.byte	0xff
	.uaword	0xe16
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x102
	.uaword	0xef1
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x104
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x105
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x106
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x5
	.uahalf	0x108
	.uaword	0xe8f
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x10b
	.uaword	0xf72
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x10e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x5
	.uahalf	0x111
	.uaword	0xf10
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x114
	.uaword	0xff3
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x116
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x117
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x119
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0xf91
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x11d
	.uaword	0x1074
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x11f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x120
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x121
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x5
	.uahalf	0x123
	.uaword	0x1012
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x126
	.uaword	0x10f5
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x128
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x129
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x5
	.uahalf	0x12c
	.uaword	0x1093
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x12f
	.uaword	0x1176
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x131
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x132
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x133
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x134
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x1114
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x138
	.uaword	0x11f7
	.uleb128 0xc
	.string	"DB0"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"DB1"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"DB2"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DB3"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x1195
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_FCR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x141
	.uaword	0x138e
	.uleb128 0xc
	.string	"MMC"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"RXTOE"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"BRS"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"FDF"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"reserved_7"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"GDFS"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"IDC"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"DLCC"
	.byte	0x5
	.uahalf	0x14a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"DATC"
	.byte	0x5
	.uahalf	0x14b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"RXIE"
	.byte	0x5
	.uahalf	0x14d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"TXIE"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"OVIE"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"reserved_19"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"FRREN"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"RMM"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"SDT"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"STT"
	.byte	0x5
	.uahalf	0x154
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"DLC"
	.byte	0x5
	.uahalf	0x155
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x5
	.uahalf	0x156
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_FCR_Bits"
	.byte	0x5
	.uahalf	0x157
	.uaword	0x1216
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_FGPR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x15a
	.uaword	0x140a
	.uleb128 0xc
	.string	"BOT"
	.byte	0x5
	.uahalf	0x15c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TOP"
	.byte	0x5
	.uahalf	0x15d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"CUR"
	.byte	0x5
	.uahalf	0x15e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SEL"
	.byte	0x5
	.uahalf	0x15f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_FGPR_Bits"
	.byte	0x5
	.uahalf	0x160
	.uaword	0x13aa
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_IPR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x163
	.uaword	0x148d
	.uleb128 0xc
	.string	"RXINP"
	.byte	0x5
	.uahalf	0x165
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"TXINP"
	.byte	0x5
	.uahalf	0x166
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MPN"
	.byte	0x5
	.uahalf	0x167
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"CFCVAL"
	.byte	0x5
	.uahalf	0x168
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_IPR_Bits"
	.byte	0x5
	.uahalf	0x169
	.uaword	0x1427
	.uleb128 0xb
	.string	"_Ifx_CAN_MO_STAT_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x16c
	.uaword	0x15d5
	.uleb128 0xc
	.string	"RXPND"
	.byte	0x5
	.uahalf	0x16e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"TXPND"
	.byte	0x5
	.uahalf	0x16f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"RXUPD"
	.byte	0x5
	.uahalf	0x170
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"NEWDAT"
	.byte	0x5
	.uahalf	0x171
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"MSGLST"
	.byte	0x5
	.uahalf	0x172
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"MSGVAL"
	.byte	0x5
	.uahalf	0x173
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"RTSEL"
	.byte	0x5
	.uahalf	0x174
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"RXEN"
	.byte	0x5
	.uahalf	0x175
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TXRQ"
	.byte	0x5
	.uahalf	0x176
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"TXEN0"
	.byte	0x5
	.uahalf	0x177
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"TXEN1"
	.byte	0x5
	.uahalf	0x178
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"DIR"
	.byte	0x5
	.uahalf	0x179
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"LIST"
	.byte	0x5
	.uahalf	0x17a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"PPREV"
	.byte	0x5
	.uahalf	0x17b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"PNEXT"
	.byte	0x5
	.uahalf	0x17c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_STAT_Bits"
	.byte	0x5
	.uahalf	0x17d
	.uaword	0x14a9
	.uleb128 0xb
	.string	"_Ifx_CAN_MSID_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x180
	.uaword	0x1631
	.uleb128 0xc
	.string	"INDEX"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x5
	.uahalf	0x183
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSID_Bits"
	.byte	0x5
	.uahalf	0x184
	.uaword	0x15f2
	.uleb128 0xb
	.string	"_Ifx_CAN_MSIMASK_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x187
	.uaword	0x167a
	.uleb128 0xc
	.string	"IM"
	.byte	0x5
	.uahalf	0x189
	.uaword	0x4ed
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSIMASK_Bits"
	.byte	0x5
	.uahalf	0x18a
	.uaword	0x164b
	.uleb128 0xb
	.string	"_Ifx_CAN_MSPND_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x18d
	.uaword	0x16c5
	.uleb128 0xc
	.string	"PND"
	.byte	0x5
	.uahalf	0x18f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSPND_Bits"
	.byte	0x5
	.uahalf	0x190
	.uaword	0x1697
	.uleb128 0xb
	.string	"_Ifx_CAN_N_BTEVR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x193
	.uaword	0x1795
	.uleb128 0xc
	.string	"BRP"
	.byte	0x5
	.uahalf	0x195
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x5
	.uahalf	0x196
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"SJW"
	.byte	0x5
	.uahalf	0x197
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x5
	.uahalf	0x198
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"DIV8"
	.byte	0x5
	.uahalf	0x199
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TSEG2"
	.byte	0x5
	.uahalf	0x19a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x5
	.uahalf	0x19b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"TSEG1"
	.byte	0x5
	.uahalf	0x19c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x5
	.uahalf	0x19d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_BTEVR_Bits"
	.byte	0x5
	.uahalf	0x19e
	.uaword	0x16e0
	.uleb128 0xb
	.string	"_Ifx_CAN_N_BTR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1a1
	.uaword	0x1835
	.uleb128 0xc
	.string	"BRP"
	.byte	0x5
	.uahalf	0x1a3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"SJW"
	.byte	0x5
	.uahalf	0x1a4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TSEG1"
	.byte	0x5
	.uahalf	0x1a5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"TSEG2"
	.byte	0x5
	.uahalf	0x1a6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"DIV8"
	.byte	0x5
	.uahalf	0x1a7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x1a8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_BTR_Bits"
	.byte	0x5
	.uahalf	0x1a9
	.uaword	0x17b2
	.uleb128 0xb
	.string	"_Ifx_CAN_N_CR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1ac
	.uaword	0x192b
	.uleb128 0xc
	.string	"INIT"
	.byte	0x5
	.uahalf	0x1ae
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"TRIE"
	.byte	0x5
	.uahalf	0x1af
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"LECIE"
	.byte	0x5
	.uahalf	0x1b0
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"ALIE"
	.byte	0x5
	.uahalf	0x1b1
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"CANDIS"
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"TXDIS"
	.byte	0x5
	.uahalf	0x1b3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"CCE"
	.byte	0x5
	.uahalf	0x1b4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"CALM"
	.byte	0x5
	.uahalf	0x1b5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"SUSEN"
	.byte	0x5
	.uahalf	0x1b6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"FDEN"
	.byte	0x5
	.uahalf	0x1b7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x1b8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_CR_Bits"
	.byte	0x5
	.uahalf	0x1b9
	.uaword	0x1850
	.uleb128 0xb
	.string	"_Ifx_CAN_N_ECNT_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1bc
	.uaword	0x19cb
	.uleb128 0xc
	.string	"REC"
	.byte	0x5
	.uahalf	0x1be
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TEC"
	.byte	0x5
	.uahalf	0x1bf
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EWRNLVL"
	.byte	0x5
	.uahalf	0x1c0
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"LETD"
	.byte	0x5
	.uahalf	0x1c1
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"LEINC"
	.byte	0x5
	.uahalf	0x1c2
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x5
	.uahalf	0x1c3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_ECNT_Bits"
	.byte	0x5
	.uahalf	0x1c4
	.uaword	0x1945
	.uleb128 0xb
	.string	"_Ifx_CAN_N_FBTR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1c7
	.uaword	0x1a5e
	.uleb128 0xc
	.string	"FBRP"
	.byte	0x5
	.uahalf	0x1c9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"FSJW"
	.byte	0x5
	.uahalf	0x1ca
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"FTSEG1"
	.byte	0x5
	.uahalf	0x1cb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"FTSEG2"
	.byte	0x5
	.uahalf	0x1cc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x5
	.uahalf	0x1cd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_FBTR_Bits"
	.byte	0x5
	.uahalf	0x1ce
	.uaword	0x19e7
	.uleb128 0xb
	.string	"_Ifx_CAN_N_FCR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1d1
	.uaword	0x1b10
	.uleb128 0xc
	.string	"CFC"
	.byte	0x5
	.uahalf	0x1d3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"CFSEL"
	.byte	0x5
	.uahalf	0x1d4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"CFMOD"
	.byte	0x5
	.uahalf	0x1d5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x5
	.uahalf	0x1d6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"CFCIE"
	.byte	0x5
	.uahalf	0x1d7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"CFCOV"
	.byte	0x5
	.uahalf	0x1d8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_FCR_Bits"
	.byte	0x5
	.uahalf	0x1da
	.uaword	0x1a7a
	.uleb128 0xb
	.string	"_Ifx_CAN_N_IPR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1dd
	.uaword	0x1bbd
	.uleb128 0xc
	.string	"ALINP"
	.byte	0x5
	.uahalf	0x1df
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"LECINP"
	.byte	0x5
	.uahalf	0x1e0
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TRINP"
	.byte	0x5
	.uahalf	0x1e1
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"CFCINP"
	.byte	0x5
	.uahalf	0x1e2
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TEINP"
	.byte	0x5
	.uahalf	0x1e3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"reserved_20"
	.byte	0x5
	.uahalf	0x1e4
	.uaword	0x4ed
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_IPR_Bits"
	.byte	0x5
	.uahalf	0x1e5
	.uaword	0x1b2b
	.uleb128 0xb
	.string	"_Ifx_CAN_N_PCR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1e8
	.uaword	0x1c3f
	.uleb128 0xc
	.string	"RXSEL"
	.byte	0x5
	.uahalf	0x1ea
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"reserved_3"
	.byte	0x5
	.uahalf	0x1eb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"LBM"
	.byte	0x5
	.uahalf	0x1ec
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x5
	.uahalf	0x1ed
	.uaword	0x4ed
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_PCR_Bits"
	.byte	0x5
	.uahalf	0x1ee
	.uaword	0x1bd8
	.uleb128 0xb
	.string	"_Ifx_CAN_N_SR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1f1
	.uaword	0x1d42
	.uleb128 0xc
	.string	"LEC"
	.byte	0x5
	.uahalf	0x1f3
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"TXOK"
	.byte	0x5
	.uahalf	0x1f4
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"RXOK"
	.byte	0x5
	.uahalf	0x1f5
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"ALERT"
	.byte	0x5
	.uahalf	0x1f6
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EWRN"
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"BOFF"
	.byte	0x5
	.uahalf	0x1f8
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"LLE"
	.byte	0x5
	.uahalf	0x1f9
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"LOE"
	.byte	0x5
	.uahalf	0x1fa
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"SUSACK"
	.byte	0x5
	.uahalf	0x1fb
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"RESI"
	.byte	0x5
	.uahalf	0x1fc
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"FLEC"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x5
	.uahalf	0x1fe
	.uaword	0x4ed
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_SR_Bits"
	.byte	0x5
	.uahalf	0x1ff
	.uaword	0x1c5a
	.uleb128 0xb
	.string	"_Ifx_CAN_N_TCCR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x202
	.uaword	0x1dd0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x204
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TPSC"
	.byte	0x5
	.uahalf	0x205
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x5
	.uahalf	0x206
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"TRIGSRC"
	.byte	0x5
	.uahalf	0x207
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x5
	.uahalf	0x208
	.uaword	0x4ed
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TCCR_Bits"
	.byte	0x5
	.uahalf	0x209
	.uaword	0x1d5c
	.uleb128 0xb
	.string	"_Ifx_CAN_N_TDCR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x1e74
	.uleb128 0xc
	.string	"TDCV"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"reserved_5"
	.byte	0x5
	.uahalf	0x20f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"TDCO"
	.byte	0x5
	.uahalf	0x210
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x5
	.uahalf	0x211
	.uaword	0x4ed
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"TDC"
	.byte	0x5
	.uahalf	0x212
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x213
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TDCR_Bits"
	.byte	0x5
	.uahalf	0x214
	.uaword	0x1dec
	.uleb128 0xb
	.string	"_Ifx_CAN_N_TRTR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x217
	.uaword	0x1f02
	.uleb128 0xc
	.string	"RELOAD"
	.byte	0x5
	.uahalf	0x219
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x21a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"TEIE"
	.byte	0x5
	.uahalf	0x21b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"TE"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x21d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TRTR_Bits"
	.byte	0x5
	.uahalf	0x21e
	.uaword	0x1e90
	.uleb128 0xb
	.string	"_Ifx_CAN_N_TTTR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x221
	.uaword	0x1f82
	.uleb128 0xc
	.string	"RELOAD"
	.byte	0x5
	.uahalf	0x223
	.uaword	0x4ed
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TXMO"
	.byte	0x5
	.uahalf	0x224
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"STRT"
	.byte	0x5
	.uahalf	0x225
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x5
	.uahalf	0x226
	.uaword	0x4ed
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TTTR_Bits"
	.byte	0x5
	.uahalf	0x227
	.uaword	0x1f1e
	.uleb128 0xb
	.string	"_Ifx_CAN_OCS_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x22a
	.uaword	0x2040
	.uleb128 0xc
	.string	"TGS"
	.byte	0x5
	.uahalf	0x22c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"TGB"
	.byte	0x5
	.uahalf	0x22d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"TG_P"
	.byte	0x5
	.uahalf	0x22e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x22f
	.uaword	0x4ed
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SUS"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x4ed
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"SUS_P"
	.byte	0x5
	.uahalf	0x231
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"SUSSTA"
	.byte	0x5
	.uahalf	0x232
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x5
	.uahalf	0x233
	.uaword	0x4ed
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_OCS_Bits"
	.byte	0x5
	.uahalf	0x234
	.uaword	0x1f9e
	.uleb128 0xb
	.string	"_Ifx_CAN_PANCTR_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x237
	.uaword	0x20e4
	.uleb128 0xc
	.string	"PANCMD"
	.byte	0x5
	.uahalf	0x239
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"BUSY"
	.byte	0x5
	.uahalf	0x23a
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"RBUSY"
	.byte	0x5
	.uahalf	0x23b
	.uaword	0x4ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x23c
	.uaword	0x4ed
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"PANAR1"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"PANAR2"
	.byte	0x5
	.uahalf	0x23e
	.uaword	0x4ed
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_PANCTR_Bits"
	.byte	0x5
	.uahalf	0x23f
	.uaword	0x2059
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x247
	.uaword	0x2128
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x249
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x24a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x24b
	.uaword	0x4fd
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_ACCEN0"
	.byte	0x5
	.uahalf	0x24c
	.uaword	0x2100
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x24f
	.uaword	0x2167
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x251
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x252
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x253
	.uaword	0x545
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_ACCEN1"
	.byte	0x5
	.uahalf	0x254
	.uaword	0x213f
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x257
	.uaword	0x21a6
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x259
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x25a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x25b
	.uaword	0x5c9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_CLC"
	.byte	0x5
	.uahalf	0x25c
	.uaword	0x217e
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x25f
	.uaword	0x21e2
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x261
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x262
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x263
	.uaword	0x638
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_FDR"
	.byte	0x5
	.uahalf	0x264
	.uaword	0x21ba
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x267
	.uaword	0x221e
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x269
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x26a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x26b
	.uaword	0x6a4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_ID"
	.byte	0x5
	.uahalf	0x26c
	.uaword	0x21f6
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x26f
	.uaword	0x2259
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x271
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x272
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x273
	.uaword	0x709
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_KRST0"
	.byte	0x5
	.uahalf	0x274
	.uaword	0x2231
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x277
	.uaword	0x2297
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x279
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x27a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x27b
	.uaword	0x75e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_KRST1"
	.byte	0x5
	.uahalf	0x27c
	.uaword	0x226f
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x27f
	.uaword	0x22d5
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x281
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x282
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x283
	.uaword	0x7b5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_KRSTCLR"
	.byte	0x5
	.uahalf	0x284
	.uaword	0x22ad
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x287
	.uaword	0x2315
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x289
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x28a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x28b
	.uaword	0x83d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_LIST"
	.byte	0x5
	.uahalf	0x28c
	.uaword	0x22ed
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x28f
	.uaword	0x2352
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x292
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x293
	.uaword	0x8d1
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MCR"
	.byte	0x5
	.uahalf	0x294
	.uaword	0x232a
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x297
	.uaword	0x238e
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x299
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x29a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x29b
	.uaword	0x9b2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MECR"
	.byte	0x5
	.uahalf	0x29c
	.uaword	0x2366
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x29f
	.uaword	0x23cb
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2a1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2a2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2a3
	.uaword	0xa32
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MESTAT"
	.byte	0x5
	.uahalf	0x2a4
	.uaword	0x23a3
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2a7
	.uaword	0x240a
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2a9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2aa
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2ab
	.uaword	0xa86
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MITR"
	.byte	0x5
	.uahalf	0x2ac
	.uaword	0x23e2
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2af
	.uaword	0x2447
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2b1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2b2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2b3
	.uaword	0xaea
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_AMR"
	.byte	0x5
	.uahalf	0x2b4
	.uaword	0x241f
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2b7
	.uaword	0x2486
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2b9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2ba
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2bb
	.uaword	0xb4e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_AR"
	.byte	0x5
	.uahalf	0x2bc
	.uaword	0x245e
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2bf
	.uaword	0x24c4
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2c1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2c2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2c3
	.uaword	0xd82
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_CTR"
	.byte	0x5
	.uahalf	0x2c4
	.uaword	0x249c
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2c7
	.uaword	0x2503
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2c9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2ca
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2cb
	.uaword	0xdf9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_DATAH"
	.byte	0x5
	.uahalf	0x2cc
	.uaword	0x24db
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2cf
	.uaword	0x2544
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2d1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2d2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2d3
	.uaword	0xe72
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_DATAL"
	.byte	0x5
	.uahalf	0x2d4
	.uaword	0x251c
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2d7
	.uaword	0x2585
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2d9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2da
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2db
	.uaword	0xef1
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA0"
	.byte	0x5
	.uahalf	0x2dc
	.uaword	0x255d
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2df
	.uaword	0x25c7
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2e1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2e2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2e3
	.uaword	0xf72
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA1"
	.byte	0x5
	.uahalf	0x2e4
	.uaword	0x259f
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0x2609
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2e9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2ea
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2eb
	.uaword	0xff3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA2"
	.byte	0x5
	.uahalf	0x2ec
	.uaword	0x25e1
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2ef
	.uaword	0x264b
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2f1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2f2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2f3
	.uaword	0x1074
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA3"
	.byte	0x5
	.uahalf	0x2f4
	.uaword	0x2623
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2f7
	.uaword	0x268d
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x2f9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x2fa
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x2fb
	.uaword	0x10f5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA4"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x2665
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x2ff
	.uaword	0x26cf
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x301
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x302
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x303
	.uaword	0x1176
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA5"
	.byte	0x5
	.uahalf	0x304
	.uaword	0x26a7
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x307
	.uaword	0x2711
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x309
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x30a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x30b
	.uaword	0x11f7
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_EDATA6"
	.byte	0x5
	.uahalf	0x30c
	.uaword	0x26e9
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x30f
	.uaword	0x2753
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x311
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x312
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x313
	.uaword	0x138e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_FCR"
	.byte	0x5
	.uahalf	0x314
	.uaword	0x272b
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x317
	.uaword	0x2792
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x319
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x31a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x31b
	.uaword	0x140a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_FGPR"
	.byte	0x5
	.uahalf	0x31c
	.uaword	0x276a
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x31f
	.uaword	0x27d2
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x321
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x322
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x323
	.uaword	0x148d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_IPR"
	.byte	0x5
	.uahalf	0x324
	.uaword	0x27aa
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x327
	.uaword	0x2811
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x329
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x32a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x32b
	.uaword	0x15d5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO_STAT"
	.byte	0x5
	.uahalf	0x32c
	.uaword	0x27e9
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x32f
	.uaword	0x2851
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x331
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x332
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x333
	.uaword	0x1631
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSID"
	.byte	0x5
	.uahalf	0x334
	.uaword	0x2829
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x337
	.uaword	0x288e
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x339
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x33a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x33b
	.uaword	0x167a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSIMASK"
	.byte	0x5
	.uahalf	0x33c
	.uaword	0x2866
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x33f
	.uaword	0x28ce
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x341
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x342
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x343
	.uaword	0x16c5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MSPND"
	.byte	0x5
	.uahalf	0x344
	.uaword	0x28a6
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x347
	.uaword	0x290c
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x349
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x34a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x34b
	.uaword	0x1795
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_BTEVR"
	.byte	0x5
	.uahalf	0x34c
	.uaword	0x28e4
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x34f
	.uaword	0x294c
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x351
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x352
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x353
	.uaword	0x1835
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_BTR"
	.byte	0x5
	.uahalf	0x354
	.uaword	0x2924
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x357
	.uaword	0x298a
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x359
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x35a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x35b
	.uaword	0x192b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_CR"
	.byte	0x5
	.uahalf	0x35c
	.uaword	0x2962
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x35f
	.uaword	0x29c7
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x361
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x362
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x363
	.uaword	0x19cb
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_ECNT"
	.byte	0x5
	.uahalf	0x364
	.uaword	0x299f
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x367
	.uaword	0x2a06
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x369
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x36a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x36b
	.uaword	0x1a5e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_FBTR"
	.byte	0x5
	.uahalf	0x36c
	.uaword	0x29de
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x36f
	.uaword	0x2a45
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x371
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x372
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x373
	.uaword	0x1b10
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_FCR"
	.byte	0x5
	.uahalf	0x374
	.uaword	0x2a1d
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x377
	.uaword	0x2a83
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x379
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x37a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x37b
	.uaword	0x1bbd
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_IPR"
	.byte	0x5
	.uahalf	0x37c
	.uaword	0x2a5b
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x2ac1
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x381
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x382
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x383
	.uaword	0x1c3f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_PCR"
	.byte	0x5
	.uahalf	0x384
	.uaword	0x2a99
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x387
	.uaword	0x2aff
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x389
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x38a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x38b
	.uaword	0x1d42
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_SR"
	.byte	0x5
	.uahalf	0x38c
	.uaword	0x2ad7
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x38f
	.uaword	0x2b3c
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x391
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x392
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x393
	.uaword	0x1dd0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TCCR"
	.byte	0x5
	.uahalf	0x394
	.uaword	0x2b14
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x397
	.uaword	0x2b7b
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x399
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x39a
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x39b
	.uaword	0x1e74
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TDCR"
	.byte	0x5
	.uahalf	0x39c
	.uaword	0x2b53
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x39f
	.uaword	0x2bba
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x3a1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x3a2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x3a3
	.uaword	0x1f02
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TRTR"
	.byte	0x5
	.uahalf	0x3a4
	.uaword	0x2b92
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3a7
	.uaword	0x2bf9
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x3a9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x3aa
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x3ab
	.uaword	0x1f82
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N_TTTR"
	.byte	0x5
	.uahalf	0x3ac
	.uaword	0x2bd1
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3af
	.uaword	0x2c38
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x3b1
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x3b2
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x3b3
	.uaword	0x2040
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_OCS"
	.byte	0x5
	.uahalf	0x3b4
	.uaword	0x2c10
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3b7
	.uaword	0x2c74
	.uleb128 0x10
	.string	"U"
	.byte	0x5
	.uahalf	0x3b9
	.uaword	0x4ed
	.uleb128 0x10
	.string	"I"
	.byte	0x5
	.uahalf	0x3ba
	.uaword	0x283
	.uleb128 0x10
	.string	"B"
	.byte	0x5
	.uahalf	0x3bb
	.uaword	0x20e4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_PANCTR"
	.byte	0x5
	.uahalf	0x3bc
	.uaword	0x2c4c
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3c9
	.uaword	0x2cb0
	.uleb128 0x10
	.string	"EDATA0"
	.byte	0x5
	.uahalf	0x3cb
	.uaword	0x2585
	.uleb128 0x10
	.string	"FCR"
	.byte	0x5
	.uahalf	0x3cc
	.uaword	0x2753
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3cf
	.uaword	0x2cd6
	.uleb128 0x10
	.string	"EDATA1"
	.byte	0x5
	.uahalf	0x3d1
	.uaword	0x25c7
	.uleb128 0x10
	.string	"FGPR"
	.byte	0x5
	.uahalf	0x3d2
	.uaword	0x2792
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3d5
	.uaword	0x2cfb
	.uleb128 0x10
	.string	"EDATA2"
	.byte	0x5
	.uahalf	0x3d7
	.uaword	0x2609
	.uleb128 0x10
	.string	"IPR"
	.byte	0x5
	.uahalf	0x3d8
	.uaword	0x27d2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3db
	.uaword	0x2d20
	.uleb128 0x10
	.string	"AMR"
	.byte	0x5
	.uahalf	0x3dd
	.uaword	0x2447
	.uleb128 0x10
	.string	"EDATA3"
	.byte	0x5
	.uahalf	0x3de
	.uaword	0x264b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3e1
	.uaword	0x2d47
	.uleb128 0x10
	.string	"DATAL"
	.byte	0x5
	.uahalf	0x3e3
	.uaword	0x2544
	.uleb128 0x10
	.string	"EDATA4"
	.byte	0x5
	.uahalf	0x3e4
	.uaword	0x268d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3e7
	.uaword	0x2d6e
	.uleb128 0x10
	.string	"DATAH"
	.byte	0x5
	.uahalf	0x3e9
	.uaword	0x2503
	.uleb128 0x10
	.string	"EDATA5"
	.byte	0x5
	.uahalf	0x3ea
	.uaword	0x26cf
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x2d92
	.uleb128 0x10
	.string	"AR"
	.byte	0x5
	.uahalf	0x3ef
	.uaword	0x2486
	.uleb128 0x10
	.string	"EDATA6"
	.byte	0x5
	.uahalf	0x3f0
	.uaword	0x2711
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x3f3
	.uaword	0x2db5
	.uleb128 0x10
	.string	"CTR"
	.byte	0x5
	.uahalf	0x3f5
	.uaword	0x24c4
	.uleb128 0x10
	.string	"STAT"
	.byte	0x5
	.uahalf	0x3f6
	.uaword	0x2811
	.byte	0
	.uleb128 0xb
	.string	"_Ifx_CAN_MO"
	.byte	0x20
	.byte	0x5
	.uahalf	0x3c7
	.uaword	0x2dfb
	.uleb128 0x11
	.uaword	0x2c8b
	.byte	0
	.uleb128 0x11
	.uaword	0x2cb0
	.byte	0x4
	.uleb128 0x11
	.uaword	0x2cd6
	.byte	0x8
	.uleb128 0x11
	.uaword	0x2cfb
	.byte	0xc
	.uleb128 0x11
	.uaword	0x2d20
	.byte	0x10
	.uleb128 0x11
	.uaword	0x2d47
	.byte	0x14
	.uleb128 0x11
	.uaword	0x2d6e
	.byte	0x18
	.uleb128 0x11
	.uaword	0x2d92
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_MO"
	.byte	0x5
	.uahalf	0x3f8
	.uaword	0x2e0e
	.uleb128 0x12
	.uaword	0x2db5
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x401
	.uaword	0x2e37
	.uleb128 0x10
	.string	"BTEVR"
	.byte	0x5
	.uahalf	0x403
	.uaword	0x290c
	.uleb128 0x10
	.string	"BTR"
	.byte	0x5
	.uahalf	0x404
	.uaword	0x294c
	.byte	0
	.uleb128 0x13
	.string	"_Ifx_CAN_N"
	.uahalf	0x100
	.byte	0x5
	.uahalf	0x3fb
	.uaword	0x2f27
	.uleb128 0x14
	.string	"CR"
	.byte	0x5
	.uahalf	0x3fd
	.uaword	0x298a
	.byte	0
	.uleb128 0x14
	.string	"SR"
	.byte	0x5
	.uahalf	0x3fe
	.uaword	0x2aff
	.byte	0x4
	.uleb128 0x14
	.string	"IPR"
	.byte	0x5
	.uahalf	0x3ff
	.uaword	0x2a83
	.byte	0x8
	.uleb128 0x14
	.string	"PCR"
	.byte	0x5
	.uahalf	0x400
	.uaword	0x2ac1
	.byte	0xc
	.uleb128 0x11
	.uaword	0x2e13
	.byte	0x10
	.uleb128 0x14
	.string	"ECNT"
	.byte	0x5
	.uahalf	0x407
	.uaword	0x29c7
	.byte	0x14
	.uleb128 0x14
	.string	"FCR"
	.byte	0x5
	.uahalf	0x408
	.uaword	0x2a45
	.byte	0x18
	.uleb128 0x14
	.string	"TCCR"
	.byte	0x5
	.uahalf	0x409
	.uaword	0x2b3c
	.byte	0x1c
	.uleb128 0x14
	.string	"TRTR"
	.byte	0x5
	.uahalf	0x40a
	.uaword	0x2bba
	.byte	0x20
	.uleb128 0x14
	.string	"TATTR"
	.byte	0x5
	.uahalf	0x40b
	.uaword	0x2bf9
	.byte	0x24
	.uleb128 0x14
	.string	"TBTTR"
	.byte	0x5
	.uahalf	0x40c
	.uaword	0x2bf9
	.byte	0x28
	.uleb128 0x14
	.string	"TCTTR"
	.byte	0x5
	.uahalf	0x40d
	.uaword	0x2bf9
	.byte	0x2c
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x5
	.uahalf	0x40e
	.uaword	0x2f27
	.byte	0x30
	.uleb128 0x14
	.string	"FBTR"
	.byte	0x5
	.uahalf	0x40f
	.uaword	0x2a06
	.byte	0x38
	.uleb128 0x14
	.string	"TDCR"
	.byte	0x5
	.uahalf	0x410
	.uaword	0x2b7b
	.byte	0x3c
	.uleb128 0x14
	.string	"reserved_40"
	.byte	0x5
	.uahalf	0x411
	.uaword	0x2f37
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x2f37
	.uleb128 0x17
	.uaword	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x2f47
	.uleb128 0x17
	.uaword	0x277
	.byte	0xbf
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN_N"
	.byte	0x5
	.uahalf	0x412
	.uaword	0x2f59
	.uleb128 0x12
	.uaword	0x2e37
	.uleb128 0x13
	.string	"_Ifx_CAN"
	.uahalf	0x4000
	.byte	0x5
	.uahalf	0x41f
	.uaword	0x3129
	.uleb128 0x14
	.string	"CLC"
	.byte	0x5
	.uahalf	0x421
	.uaword	0x21a6
	.byte	0
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x422
	.uaword	0x3129
	.byte	0x4
	.uleb128 0x14
	.string	"ID"
	.byte	0x5
	.uahalf	0x423
	.uaword	0x221e
	.byte	0x8
	.uleb128 0x14
	.string	"FDR"
	.byte	0x5
	.uahalf	0x424
	.uaword	0x21e2
	.byte	0xc
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x425
	.uaword	0x3139
	.byte	0x10
	.uleb128 0x14
	.string	"OCS"
	.byte	0x5
	.uahalf	0x426
	.uaword	0x2c38
	.byte	0xe8
	.uleb128 0x14
	.string	"KRSTCLR"
	.byte	0x5
	.uahalf	0x427
	.uaword	0x22d5
	.byte	0xec
	.uleb128 0x14
	.string	"KRST1"
	.byte	0x5
	.uahalf	0x428
	.uaword	0x2297
	.byte	0xf0
	.uleb128 0x14
	.string	"KRST0"
	.byte	0x5
	.uahalf	0x429
	.uaword	0x2259
	.byte	0xf4
	.uleb128 0x14
	.string	"ACCEN1"
	.byte	0x5
	.uahalf	0x42a
	.uaword	0x2167
	.byte	0xf8
	.uleb128 0x14
	.string	"ACCEN0"
	.byte	0x5
	.uahalf	0x42b
	.uaword	0x2128
	.byte	0xfc
	.uleb128 0x18
	.string	"LIST"
	.byte	0x5
	.uahalf	0x42c
	.uaword	0x3149
	.uahalf	0x100
	.uleb128 0x18
	.string	"MSPND"
	.byte	0x5
	.uahalf	0x42d
	.uaword	0x3159
	.uahalf	0x140
	.uleb128 0x18
	.string	"reserved_160"
	.byte	0x5
	.uahalf	0x42e
	.uaword	0x3169
	.uahalf	0x160
	.uleb128 0x18
	.string	"MSID"
	.byte	0x5
	.uahalf	0x42f
	.uaword	0x3179
	.uahalf	0x180
	.uleb128 0x18
	.string	"reserved_1A0"
	.byte	0x5
	.uahalf	0x430
	.uaword	0x3169
	.uahalf	0x1a0
	.uleb128 0x18
	.string	"MSIMASK"
	.byte	0x5
	.uahalf	0x431
	.uaword	0x288e
	.uahalf	0x1c0
	.uleb128 0x18
	.string	"PANCTR"
	.byte	0x5
	.uahalf	0x432
	.uaword	0x2c74
	.uahalf	0x1c4
	.uleb128 0x18
	.string	"MCR"
	.byte	0x5
	.uahalf	0x433
	.uaword	0x2352
	.uahalf	0x1c8
	.uleb128 0x18
	.string	"MITR"
	.byte	0x5
	.uahalf	0x434
	.uaword	0x240a
	.uahalf	0x1cc
	.uleb128 0x18
	.string	"MECR"
	.byte	0x5
	.uahalf	0x435
	.uaword	0x238e
	.uahalf	0x1d0
	.uleb128 0x18
	.string	"MESTAT"
	.byte	0x5
	.uahalf	0x436
	.uaword	0x23cb
	.uahalf	0x1d4
	.uleb128 0x18
	.string	"reserved_1D8"
	.byte	0x5
	.uahalf	0x437
	.uaword	0x3189
	.uahalf	0x1d8
	.uleb128 0x18
	.string	"N"
	.byte	0x5
	.uahalf	0x438
	.uaword	0x31a9
	.uahalf	0x200
	.uleb128 0x18
	.string	"reserved_500"
	.byte	0x5
	.uahalf	0x439
	.uaword	0x31ae
	.uahalf	0x500
	.uleb128 0x18
	.string	"MO"
	.byte	0x5
	.uahalf	0x43a
	.uaword	0x31cf
	.uahalf	0x1000
	.uleb128 0x18
	.string	"reserved_2000"
	.byte	0x5
	.uahalf	0x43b
	.uaword	0x31d4
	.uahalf	0x2000
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x3139
	.uleb128 0x17
	.uaword	0x277
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x3149
	.uleb128 0x17
	.uaword	0x277
	.byte	0xd7
	.byte	0
	.uleb128 0x16
	.uaword	0x2315
	.uaword	0x3159
	.uleb128 0x17
	.uaword	0x277
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.uaword	0x28ce
	.uaword	0x3169
	.uleb128 0x17
	.uaword	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x3179
	.uleb128 0x17
	.uaword	0x277
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.uaword	0x2851
	.uaword	0x3189
	.uleb128 0x17
	.uaword	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x3199
	.uleb128 0x17
	.uaword	0x277
	.byte	0x27
	.byte	0
	.uleb128 0x16
	.uaword	0x2f47
	.uaword	0x31a9
	.uleb128 0x17
	.uaword	0x277
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x3199
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x31bf
	.uleb128 0x19
	.uaword	0x277
	.uahalf	0xaff
	.byte	0
	.uleb128 0x16
	.uaword	0x2dfb
	.uaword	0x31cf
	.uleb128 0x17
	.uaword	0x277
	.byte	0x7f
	.byte	0
	.uleb128 0x12
	.uaword	0x31bf
	.uleb128 0x16
	.uaword	0x173
	.uaword	0x31e5
	.uleb128 0x19
	.uaword	0x277
	.uahalf	0x1fff
	.byte	0
	.uleb128 0xd
	.string	"Ifx_CAN"
	.byte	0x5
	.uahalf	0x43c
	.uaword	0x31f5
	.uleb128 0x12
	.uaword	0x2f5e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x6
	.byte	0x66
	.uaword	0x3262
	.uleb128 0x1b
	.string	"IfxMultican_NodeId_none"
	.sleb128 -1
	.uleb128 0x1b
	.string	"IfxMultican_NodeId_0"
	.sleb128 0
	.uleb128 0x1b
	.string	"IfxMultican_NodeId_1"
	.sleb128 1
	.uleb128 0x1b
	.string	"IfxMultican_NodeId_2"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"IfxMultican_NodeId"
	.byte	0x6
	.byte	0x6b
	.uaword	0x31fa
	.uleb128 0x4
	.byte	0x4
	.uaword	0x31e5
	.uleb128 0x2
	.string	"IfxMultican_MsgObjId"
	.byte	0x7
	.byte	0x4f
	.uaword	0x20e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x7
	.byte	0x65
	.uaword	0x349e
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_0"
	.sleb128 0
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_1"
	.sleb128 1
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_2"
	.sleb128 2
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_3"
	.sleb128 3
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_4"
	.sleb128 4
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_5"
	.sleb128 5
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_6"
	.sleb128 6
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_7"
	.sleb128 7
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_8"
	.sleb128 8
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_12"
	.sleb128 9
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_16"
	.sleb128 10
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_20"
	.sleb128 11
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_24"
	.sleb128 12
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_32"
	.sleb128 13
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_48"
	.sleb128 14
	.uleb128 0x1b
	.string	"IfxMultican_DataLengthCode_64"
	.sleb128 15
	.byte	0
	.uleb128 0x2
	.string	"IfxMultican_DataLengthCode"
	.byte	0x7
	.byte	0x76
	.uaword	0x329e
	.uleb128 0x6
	.byte	0x14
	.byte	0x7
	.byte	0xf3
	.uaword	0x3508
	.uleb128 0x7
	.string	"id"
	.byte	0x7
	.byte	0xf5
	.uaword	0x1b5
	.byte	0
	.uleb128 0x7
	.string	"lengthCode"
	.byte	0x7
	.byte	0xf6
	.uaword	0x349e
	.byte	0x4
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.byte	0xf7
	.uaword	0x3508
	.byte	0x8
	.uleb128 0x7
	.string	"fastBitRate"
	.byte	0x7
	.byte	0xf8
	.uaword	0x164
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.uaword	0x1b5
	.uaword	0x3518
	.uleb128 0x17
	.uaword	0x277
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"IfxMultican_Message"
	.byte	0x7
	.byte	0xf9
	.uaword	0x34c0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0x3561
	.uleb128 0x1b
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x1b
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x1c
	.byte	0xc
	.byte	0x9
	.uahalf	0x347
	.uaword	0x35a9
	.uleb128 0x14
	.string	"mcan"
	.byte	0x9
	.uahalf	0x349
	.uaword	0x327c
	.byte	0
	.uleb128 0x14
	.string	"node"
	.byte	0x9
	.uahalf	0x34a
	.uaword	0x35a9
	.byte	0x4
	.uleb128 0x14
	.string	"nodeId"
	.byte	0x9
	.uahalf	0x34b
	.uaword	0x3262
	.byte	0x8
	.uleb128 0x14
	.string	"fastNode"
	.byte	0x9
	.uahalf	0x34c
	.uaword	0x164
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f47
	.uleb128 0xd
	.string	"IfxMultican_Can_Node"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x3561
	.uleb128 0x1c
	.byte	0x4
	.byte	0x9
	.uahalf	0x355
	.uaword	0x35e4
	.uleb128 0x14
	.string	"mcan"
	.byte	0x9
	.uahalf	0x357
	.uaword	0x327c
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"IfxMultican_Can"
	.byte	0x9
	.uahalf	0x358
	.uaword	0x35cc
	.uleb128 0x1c
	.byte	0x10
	.byte	0x9
	.uahalf	0x366
	.uaword	0x3650
	.uleb128 0x14
	.string	"node"
	.byte	0x9
	.uahalf	0x368
	.uaword	0x3650
	.byte	0
	.uleb128 0x14
	.string	"msgObjId"
	.byte	0x9
	.uahalf	0x369
	.uaword	0x3282
	.byte	0x4
	.uleb128 0x14
	.string	"msgObjCount"
	.byte	0x9
	.uahalf	0x36a
	.uaword	0x191
	.byte	0x8
	.uleb128 0x14
	.string	"fifoPointer"
	.byte	0x9
	.uahalf	0x36b
	.uaword	0x3282
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x35af
	.uleb128 0xd
	.string	"IfxMultican_Can_MsgObj"
	.byte	0x9
	.uahalf	0x36c
	.uaword	0x35fc
	.uleb128 0x6
	.byte	0xd0
	.byte	0xa
	.byte	0x44
	.uaword	0x37ff
	.uleb128 0x7
	.string	"can"
	.byte	0xa
	.byte	0x46
	.uaword	0x35e4
	.byte	0
	.uleb128 0x7
	.string	"canSrcNode"
	.byte	0xa
	.byte	0x47
	.uaword	0x35af
	.byte	0x4
	.uleb128 0x7
	.string	"can0RxMsgObj_VCU1_LDC"
	.byte	0xa
	.byte	0x49
	.uaword	0x3656
	.byte	0x10
	.uleb128 0x7
	.string	"can0RxMsgObj_BMS1_OBC"
	.byte	0xa
	.byte	0x4a
	.uaword	0x3656
	.byte	0x20
	.uleb128 0x7
	.string	"can0RxMsgObj_BMS2_OBC"
	.byte	0xa
	.byte	0x4b
	.uaword	0x3656
	.byte	0x30
	.uleb128 0x7
	.string	"can0RxMsgObj_BMS2"
	.byte	0xa
	.byte	0x4c
	.uaword	0x3656
	.byte	0x40
	.uleb128 0x7
	.string	"can0RxMsgObj_BMS10"
	.byte	0xa
	.byte	0x4d
	.uaword	0x3656
	.byte	0x50
	.uleb128 0x7
	.string	"can0TxMsgObj_LDC_1"
	.byte	0xa
	.byte	0x4f
	.uaword	0x3656
	.byte	0x60
	.uleb128 0x7
	.string	"can0TxMsgObj_LDC_2"
	.byte	0xa
	.byte	0x50
	.uaword	0x3656
	.byte	0x70
	.uleb128 0x7
	.string	"can0TxMsgObj_OBC_1"
	.byte	0xa
	.byte	0x52
	.uaword	0x3656
	.byte	0x80
	.uleb128 0x7
	.string	"can0TxMsgObj_OBC_2"
	.byte	0xa
	.byte	0x53
	.uaword	0x3656
	.byte	0x90
	.uleb128 0x7
	.string	"can0RxMsgObj_PHYS_REQUEST"
	.byte	0xa
	.byte	0x55
	.uaword	0x3656
	.byte	0xa0
	.uleb128 0x7
	.string	"can0RxMsgObj_FUNC_REQUEST"
	.byte	0xa
	.byte	0x56
	.uaword	0x3656
	.byte	0xb0
	.uleb128 0x7
	.string	"can0TxMsgObj_PHYS_RESPONSE"
	.byte	0xa
	.byte	0x57
	.uaword	0x3656
	.byte	0xc0
	.byte	0
	.uleb128 0x2
	.string	"st_Multican"
	.byte	0xa
	.byte	0x58
	.uaword	0x3675
	.uleb128 0x1d
	.string	"TpFlowControlFrame"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.byte	0x1
	.uaword	0x383c
	.uleb128 0x1e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x197
	.uaword	0x383c
	.byte	0
	.uleb128 0x16
	.uaword	0x24c
	.uaword	0x384c
	.uleb128 0x17
	.uaword	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x1f
	.string	"TpSendFrame"
	.byte	0x1
	.uahalf	0x1aa
	.byte	0x1
	.uaword	.LFB331
	.uaword	.LFE331
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x38f8
	.uleb128 0x20
	.string	"p_Data"
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x38f8
	.uaword	.LLST0
	.uleb128 0x20
	.string	"u8_Size"
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x24c
	.uaword	.LLST1
	.uleb128 0x21
	.string	"st_CAN_Tx_PhysResponse"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x3518
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x1ae
	.uaword	0x24c
	.uaword	.LLST2
	.uleb128 0x21
	.string	"u8_FrameData"
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x383c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x3e45
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x18daf91a
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x38fe
	.uleb128 0x25
	.uaword	0x24c
	.uleb128 0x26
	.byte	0x1
	.string	"Bsw_TpFunc_Init"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x393a
	.uleb128 0x27
	.string	"u8_Cnt"
	.byte	0x1
	.byte	0x6e
	.uaword	0x24c
	.uaword	.LLST3
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Bsw_TpFunc"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x399c
	.uleb128 0x28
	.uaword	.LASF16
	.byte	0x1
	.byte	0x98
	.uaword	0x24c
	.uaword	.LLST4
	.uleb128 0x28
	.uaword	.LASF17
	.byte	0x1
	.byte	0x99
	.uaword	0x24c
	.uaword	.LLST5
	.uleb128 0x29
	.uaword	.LASF18
	.byte	0x1
	.byte	0x9a
	.uaword	0x383c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2a
	.uaword	.LVL23
	.uaword	0x384c
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 1
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Bsw_TpRecvProc"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	0x24c
	.uaword	.LFB327
	.uaword	.LFE327
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b37
	.uleb128 0x2c
	.string	"u8p_IsEndFrame"
	.byte	0x1
	.byte	0xcb
	.uaword	0x271
	.uaword	.LLST6
	.uleb128 0x2c
	.string	"u8p_RecvLen"
	.byte	0x1
	.byte	0xcb
	.uaword	0x271
	.uaword	.LLST7
	.uleb128 0x2c
	.string	"u8p_ReqType"
	.byte	0x1
	.byte	0xcb
	.uaword	0x271
	.uaword	.LLST8
	.uleb128 0x27
	.string	"u8_FrameType"
	.byte	0x1
	.byte	0xcd
	.uaword	0x24c
	.uaword	.LLST9
	.uleb128 0x28
	.uaword	.LASF16
	.byte	0x1
	.byte	0xcf
	.uaword	0x24c
	.uaword	.LLST10
	.uleb128 0x27
	.string	"u8_Dlc"
	.byte	0x1
	.byte	0xd0
	.uaword	0x24c
	.uaword	.LLST11
	.uleb128 0x28
	.uaword	.LASF17
	.byte	0x1
	.byte	0xd1
	.uaword	0x24c
	.uaword	.LLST12
	.uleb128 0x27
	.string	"u8_SeqNum"
	.byte	0x1
	.byte	0xd2
	.uaword	0x24c
	.uaword	.LLST13
	.uleb128 0x27
	.string	"u8_ErrNo"
	.byte	0x1
	.byte	0xd3
	.uaword	0x24c
	.uaword	.LLST14
	.uleb128 0x27
	.string	"u8_STmin"
	.byte	0x1
	.byte	0xd4
	.uaword	0x24c
	.uaword	.LLST15
	.uleb128 0x2d
	.string	"u8_CANFrameData"
	.byte	0x1
	.byte	0xd5
	.uaword	0x383c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.string	"u32_CANMsgID"
	.byte	0x1
	.byte	0xd6
	.uaword	0x264
	.uaword	.LLST16
	.uleb128 0x2e
	.uaword	0x3812
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x107
	.uaword	0x3afe
	.uleb128 0x2f
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x30
	.uaword	0x382f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2a
	.uaword	.LVL40
	.uaword	0x384c
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x3812
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x133
	.uleb128 0x2f
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x30
	.uaword	0x382f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2a
	.uaword	.LVL66
	.uaword	0x384c
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Bsw_TpSingleFrame"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB328
	.uaword	.LFE328
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b9e
	.uleb128 0x33
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x157
	.uaword	0x24c
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x159
	.uaword	0x24c
	.uaword	.LLST18
	.uleb128 0x34
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x383c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2a
	.uaword	.LVL75
	.uaword	0x384c
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Bsw_TpFirstFrame"
	.byte	0x1
	.uahalf	0x172
	.byte	0x1
	.uaword	.LFB329
	.uaword	.LFE329
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c09
	.uleb128 0x33
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x172
	.uaword	0x24c
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x174
	.uaword	0x24c
	.uaword	.LLST20
	.uleb128 0x34
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x175
	.uaword	0x383c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2a
	.uaword	.LVL82
	.uaword	0x384c
	.uleb128 0x24
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.uleb128 0x24
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"u8s_TpTxBufIdx"
	.byte	0x1
	.byte	0x53
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpTxBufIdx
	.uleb128 0x2d
	.string	"u8s_TpTxSeqNum"
	.byte	0x1
	.byte	0x54
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpTxSeqNum
	.uleb128 0x2d
	.string	"u8s_TpTxDataCnt"
	.byte	0x1
	.byte	0x55
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpTxDataCnt
	.uleb128 0x2d
	.string	"u8s_TpTxState"
	.byte	0x1
	.byte	0x56
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpTxState
	.uleb128 0x2d
	.string	"u8s_TpRxBufIdx"
	.byte	0x1
	.byte	0x58
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpRxBufIdx
	.uleb128 0x2d
	.string	"u8s_TpRxSeqNum"
	.byte	0x1
	.byte	0x59
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpRxSeqNum
	.uleb128 0x2d
	.string	"u8s_TpRxDataCnt"
	.byte	0x1
	.byte	0x5a
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpRxDataCnt
	.uleb128 0x2d
	.string	"u8s_TpRxDataSize"
	.byte	0x1
	.byte	0x5b
	.uaword	0x24c
	.byte	0x5
	.byte	0x3
	.uaword	u8s_TpRxDataSize
	.uleb128 0x2d
	.string	"u16s_STminTickCnt"
	.byte	0x1
	.byte	0x5d
	.uaword	0x258
	.byte	0x5
	.byte	0x3
	.uaword	u16s_STminTickCnt
	.uleb128 0x2d
	.string	"u16s_STMin_tm"
	.byte	0x1
	.byte	0x5e
	.uaword	0x258
	.byte	0x5
	.byte	0x3
	.uaword	u16s_STMin_tm
	.uleb128 0x16
	.uaword	0x24c
	.uaword	0x3d36
	.uleb128 0x17
	.uaword	0x277
	.byte	0x95
	.byte	0
	.uleb128 0x35
	.string	"u8g_TpTxBuf"
	.byte	0x1
	.byte	0x49
	.uaword	0x3d26
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_TpTxBuf
	.uleb128 0x35
	.string	"u8g_TpRxBuf"
	.byte	0x1
	.byte	0x4a
	.uaword	0x3d26
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_TpRxBuf
	.uleb128 0x35
	.string	"u8g_SingleRxBuf"
	.byte	0x1
	.byte	0x4b
	.uaword	0x383c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_SingleRxBuf
	.uleb128 0x35
	.string	"u8g_RxFrameType"
	.byte	0x1
	.byte	0x4c
	.uaword	0x24c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_RxFrameType
	.uleb128 0x16
	.uaword	0x2bf
	.uaword	0x3db6
	.uleb128 0x17
	.uaword	0x277
	.byte	0
	.byte	0
	.uleb128 0x36
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa4
	.uaword	0x3dd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x3da6
	.uleb128 0x36
	.string	"u32g_Can_DiagRxId"
	.byte	0xa
	.byte	0x61
	.uaword	0x3df3
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x264
	.uleb128 0x16
	.uaword	0x264
	.uaword	0x3e08
	.uleb128 0x17
	.uaword	0x277
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.string	"u32g_Can_DiagRxData"
	.byte	0xa
	.byte	0x62
	.uaword	0x3e25
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x3df8
	.uleb128 0x36
	.string	"stg_MulticanBasic"
	.byte	0xa
	.byte	0x63
	.uaword	0x37ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Mcal_CanTransmit"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uaword	0x3e70
	.uleb128 0x38
	.uaword	0x264
	.uleb128 0x38
	.uaword	0x3e70
	.uleb128 0x38
	.uaword	0x3e76
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3518
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3656
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
	.uleb128 0x3
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LFE331
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE331
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE325
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL25
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL25
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL66-1
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL58
	.uaword	.LFE327
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL50
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57
	.uaword	.LVL64
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x76
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL41
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL56
	.uaword	.LVL64
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LVL66-1
	.uahalf	0x15
	.byte	0x77
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x37
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
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x15
	.byte	0x77
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x37
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
.LLST13:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL64
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE327
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x8
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LFE327
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74
	.uaword	.LFE328
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL76
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL81
	.uaword	.LFE329
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
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
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB331
	.uaword	.LFE331
	.uaword	.LFB325
	.uaword	.LFE325
	.uaword	.LFB326
	.uaword	.LFE326
	.uaword	.LFB327
	.uaword	.LFE327
	.uaword	.LFB328
	.uaword	.LFE328
	.uaword	.LFB329
	.uaword	.LFE329
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF18:
	.string	"u8_TpFrame"
.LASF17:
	.string	"u8_DataLen"
.LASF0:
	.string	"reserved_0"
.LASF5:
	.string	"reserved_1"
.LASF1:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_4"
.LASF12:
	.string	"reserved_6"
.LASF7:
	.string	"reserved_9"
.LASF15:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_25"
.LASF8:
	.string	"reserved_26"
.LASF11:
	.string	"reserved_28"
.LASF14:
	.string	"reserved_15"
.LASF16:
	.string	"u8_TpIdx"
.LASF3:
	.string	"reserved_10"
.LASF10:
	.string	"reserved_12"
.LASF4:
	.string	"reserved_16"
.LASF9:
	.string	"reserved_30"
.LASF13:
	.string	"reserved_21"
	.extern	u32g_Can_DiagRxId,STT_OBJECT,4
	.extern	u32g_Can_DiagRxData,STT_OBJECT,8
	.extern	Mcal_CanTransmit,STT_FUNC,0
	.extern	stg_MulticanBasic,STT_OBJECT,208
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
