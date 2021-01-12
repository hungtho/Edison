	.file	"IfxAsclin.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxAsclin_disableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_disableModule
	.type	IfxAsclin_disableModule, @function
IfxAsclin_disableModule:
.LFB365:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.c"
	.loc 1 56 0
.LVL0:
	.loc 1 56 0
	mov.aa	%a15, %a4
	.loc 1 57 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL1:
	.loc 1 58 0
	mov	%d4, %d2
	.loc 1 57 0
	mov	%d15, %d2
.LVL2:
	.loc 1 58 0
	call	IfxScuWdt_clearCpuEndinit
.LVL3:
.LBB66:
.LBB67:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 2237 0
	ld.w	%d2, [%a15]0
.LBE67:
.LBE66:
	.loc 1 60 0
	mov	%d4, %d15
.LBB69:
.LBB68:
	.loc 2 2237 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
.LBE68:
.LBE69:
	.loc 1 60 0
	j	IfxScuWdt_setCpuEndinit
.LVL4:
.LFE365:
	.size	IfxAsclin_disableModule, .-IfxAsclin_disableModule
.section .text.IfxAsclin_enableAscErrorFlags,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableAscErrorFlags
	.type	IfxAsclin_enableAscErrorFlags, @function
IfxAsclin_enableAscErrorFlags:
.LFB366:
	.loc 1 65 0
.LVL5:
.LBB70:
.LBB71:
	.loc 2 1826 0
	movh	%d15, 1
	sel	%d4, %d4, %d15, 0
.LVL6:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 16, 1
	or	%d4, %d15
	st.w	[%a4] 64, %d4
.LVL7:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 2 1856 0
	movh	%d15, 1024
	sel	%d5, %d5, %d15, 0
.LVL8:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 26, 1
	or	%d5, %d15
	st.w	[%a4] 64, %d5
	ret
.LBE73:
.LBE72:
.LFE366:
	.size	IfxAsclin_enableAscErrorFlags, .-IfxAsclin_enableAscErrorFlags
.section .text.IfxAsclin_enableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableModule
	.type	IfxAsclin_enableModule, @function
IfxAsclin_enableModule:
.LFB367:
	.loc 1 72 0
.LVL9:
	.loc 1 72 0
	mov.aa	%a15, %a4
	.loc 1 73 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL10:
	.loc 1 74 0
	mov	%d4, %d2
	.loc 1 73 0
	mov	%d15, %d2
.LVL11:
	.loc 1 74 0
	call	IfxScuWdt_clearCpuEndinit
.LVL12:
.LBB74:
.LBB75:
	.loc 2 2243 0
	ld.w	%d2, [%a15]0
.LBE75:
.LBE74:
	.loc 1 76 0
	mov	%d4, %d15
.LBB77:
.LBB76:
	.loc 2 2243 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE76:
.LBE77:
	.loc 1 76 0
	j	IfxScuWdt_setCpuEndinit
.LVL13:
.LFE367:
	.size	IfxAsclin_enableModule, .-IfxAsclin_enableModule
.section .text.IfxAsclin_getAddress,"ax",@progbits
	.align 1
	.global	IfxAsclin_getAddress
	.type	IfxAsclin_getAddress, @function
IfxAsclin_getAddress:
.LFB368:
	.loc 1 81 0
.LVL14:
	.loc 1 90 0
	mov.a	%a2, 0
	.loc 1 84 0
	jge	%d4, 2, .L5
	.loc 1 86 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL15:
.L5:
	.loc 1 94 0
	ret
.LFE368:
	.size	IfxAsclin_getAddress, .-IfxAsclin_getAddress
.section .text.IfxAsclin_getFaFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getFaFrequency
	.type	IfxAsclin_getFaFrequency, @function
IfxAsclin_getFaFrequency:
.LFB369:
	.loc 1 98 0
.LVL16:
.LBB78:
.LBB79:
	.loc 2 1934 0
	ld.w	%d15, [%a4] 76
	and	%d15, %d15, 31
.LBE79:
.LBE78:
	.loc 1 102 0
	add	%d15, -1
	jlt.u	%d15, 8, .L15
.L9:
.LVL17:
	.loc 1 125 0
	mov	%d2, 0
	ret
.LVL18:
.L15:
	.loc 1 102 0
	movh.a	%a15, hi:.L11
	lea	%a15, [%a15] lo:.L11
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L9
	.code32
	j	.L13
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L14
.L13:
	.loc 1 114 0
	j	IfxScuCcu_getPllErayFrequency
.LVL19:
.L12:
	.loc 1 111 0
	j	IfxScuCcu_getOsc0Frequency
.LVL20:
.L10:
	.loc 1 108 0
	j	IfxScuCcu_getSpbFrequency
.LVL21:
.L14:
	.loc 1 117 0
	j	IfxScuCcu_getBaud2Frequency
.LVL22:
.LFE369:
	.size	IfxAsclin_getFaFrequency, .-IfxAsclin_getFaFrequency
.section .text.IfxAsclin_getIndex,"ax",@progbits
	.align 1
	.global	IfxAsclin_getIndex
	.type	IfxAsclin_getIndex, @function
IfxAsclin_getIndex:
.LFB370:
	.loc 1 129 0
.LVL23:
	.loc 1 137 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a2, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a15, %a4, .L19
.LVL24:
	ld.a	%a15, [%a2] 8
	.loc 1 133 0
	mov	%d2, -1
	.loc 1 135 0
	mov	%d15, 1
	.loc 1 137 0
	jeq.a	%a15, %a4, .L17
.LVL25:
	.loc 1 145 0
	ret
.LVL26:
.L19:
	.loc 1 135 0
	mov	%d15, 0
.LVL27:
.L17:
	.loc 1 139 0
	addsc.a	%a2, %a2, %d15, 3
	ld.b	%d2, [%a2] 4
.LVL28:
	.loc 1 145 0
	ret
.LFE370:
	.size	IfxAsclin_getIndex, .-IfxAsclin_getIndex
.section .text.IfxAsclin_getOvsFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getOvsFrequency
	.type	IfxAsclin_getOvsFrequency, @function
IfxAsclin_getOvsFrequency:
.LFB371:
	.loc 1 149 0
.LVL29:
	.loc 1 149 0
	mov.aa	%a15, %a4
.LVL30:
.LBB80:
.LBB81:
	.loc 1 156 0
	call	IfxAsclin_getFaFrequency
.LVL31:
	ld.w	%d4, [%a15] 20
.LBE81:
.LBE80:
	.loc 1 150 0
	ld.w	%d3, [%a15] 32
.LBB85:
.LBB82:
	.loc 1 156 0
	insert	%d4, %d4, 0, 12, 20
.LBE82:
.LBE85:
	.loc 1 150 0
	ld.w	%d15, [%a15] 32
.LBB86:
.LBB83:
	.loc 1 156 0
	add	%d4, 1
	itof	%d4, %d4
.LBE83:
.LBE86:
	.loc 1 150 0
	extr.u	%d3, %d3, 16, 12
.LBB87:
.LBB84:
	.loc 1 156 0
	div.f	%d2, %d2, %d4
.LBE84:
.LBE87:
	.loc 1 150 0
	itof	%d3, %d3
	insert	%d15, %d15, 0, 12, 20
	mul.f	%d2, %d3, %d2
	itof	%d15, %d15
	.loc 1 151 0
	div.f	%d2, %d2, %d15
	ret
.LFE371:
	.size	IfxAsclin_getOvsFrequency, .-IfxAsclin_getOvsFrequency
.section .text.IfxAsclin_getPdFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getPdFrequency
	.type	IfxAsclin_getPdFrequency, @function
IfxAsclin_getPdFrequency:
.LFB372:
	.loc 1 155 0
.LVL32:
	.loc 1 155 0
	mov.aa	%a15, %a4
	.loc 1 156 0
	call	IfxAsclin_getFaFrequency
.LVL33:
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 12, 20
	add	%d15, 1
	itof	%d15, %d15
	.loc 1 157 0
	div.f	%d2, %d2, %d15
	ret
.LFE372:
	.size	IfxAsclin_getPdFrequency, .-IfxAsclin_getPdFrequency
.section .text.IfxAsclin_getShiftFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getShiftFrequency
	.type	IfxAsclin_getShiftFrequency, @function
IfxAsclin_getShiftFrequency:
.LFB373:
	.loc 1 161 0
.LVL34:
	.loc 1 161 0
	mov.aa	%a15, %a4
	.loc 1 162 0
	call	IfxAsclin_getOvsFrequency
.LVL35:
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 4
	itof	%d15, %d15
	.loc 1 163 0
	div.f	%d2, %d2, %d15
	ret
.LFE373:
	.size	IfxAsclin_getShiftFrequency, .-IfxAsclin_getShiftFrequency
.section .text.IfxAsclin_getSrcPointerEr,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerEr
	.type	IfxAsclin_getSrcPointerEr, @function
IfxAsclin_getSrcPointerEr:
.LFB374:
	.loc 1 167 0
.LVL36:
.LBB88:
.LBB89:
	.loc 1 137 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L27
.LVL37:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32644
	.loc 1 135 0
	mov	%d15, 1
	.loc 1 137 0
	jeq.a	%a4, %a15, .L25
.LVL38:
.LBE89:
.LBE88:
	.loc 1 169 0
	ret
.LVL39:
.L27:
.LBB91:
.LBB90:
	.loc 1 135 0
	mov	%d15, 0
.LVL40:
.L25:
	.loc 1 139 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL41:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32632
	addih.a	%a2, %a2, 61444
.LBE90:
.LBE91:
	.loc 1 169 0
	ret
.LFE374:
	.size	IfxAsclin_getSrcPointerEr, .-IfxAsclin_getSrcPointerEr
.section .text.IfxAsclin_getSrcPointerRx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerRx
	.type	IfxAsclin_getSrcPointerRx, @function
IfxAsclin_getSrcPointerRx:
.LFB375:
	.loc 1 173 0
.LVL42:
.LBB92:
.LBB93:
	.loc 1 137 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L32
.LVL43:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32648
	.loc 1 135 0
	mov	%d15, 1
	.loc 1 137 0
	jeq.a	%a4, %a15, .L30
.LVL44:
.LBE93:
.LBE92:
	.loc 1 175 0
	ret
.LVL45:
.L32:
.LBB95:
.LBB94:
	.loc 1 135 0
	mov	%d15, 0
.LVL46:
.L30:
	.loc 1 139 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL47:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32636
	addih.a	%a2, %a2, 61444
.LBE94:
.LBE95:
	.loc 1 175 0
	ret
.LFE375:
	.size	IfxAsclin_getSrcPointerRx, .-IfxAsclin_getSrcPointerRx
.section .text.IfxAsclin_getSrcPointerTx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerTx
	.type	IfxAsclin_getSrcPointerTx, @function
IfxAsclin_getSrcPointerTx:
.LFB376:
	.loc 1 179 0
.LVL48:
.LBB96:
.LBB97:
	.loc 1 137 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L37
.LVL49:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32652
	.loc 1 135 0
	mov	%d15, 1
	.loc 1 137 0
	jeq.a	%a4, %a15, .L35
.LVL50:
.LBE97:
.LBE96:
	.loc 1 181 0
	ret
.LVL51:
.L37:
.LBB99:
.LBB98:
	.loc 1 135 0
	mov	%d15, 0
.LVL52:
.L35:
	.loc 1 139 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL53:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32640
	addih.a	%a2, %a2, 61444
.LBE98:
.LBE99:
	.loc 1 181 0
	ret
.LFE376:
	.size	IfxAsclin_getSrcPointerTx, .-IfxAsclin_getSrcPointerTx
.section .text.IfxAsclin_read16,"ax",@progbits
	.align 1
	.global	IfxAsclin_read16
	.type	IfxAsclin_read16, @function
IfxAsclin_read16:
.LFB377:
	.loc 1 185 0
.LVL54:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 188 0
	jz	%d4, .L45
.LVL55:
.L43:
	.loc 1 190 0
	ld.w	%d15, [%a4] 72
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL56:
	loop	%a15, .L43
.L45:
	.loc 1 195 0
	mov	%d2, 0
	ret
.LFE377:
	.size	IfxAsclin_read16, .-IfxAsclin_read16
.section .text.IfxAsclin_read32,"ax",@progbits
	.align 1
	.global	IfxAsclin_read32
	.type	IfxAsclin_read32, @function
IfxAsclin_read32:
.LFB378:
	.loc 1 199 0
.LVL57:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 202 0
	jz	%d4, .L52
.LVL58:
.L50:
	.loc 1 204 0
	ld.w	%d15, [%a4] 72
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL59:
	loop	%a15, .L50
.L52:
	.loc 1 209 0
	mov	%d2, 0
	ret
.LFE378:
	.size	IfxAsclin_read32, .-IfxAsclin_read32
.section .text.IfxAsclin_read8,"ax",@progbits
	.align 1
	.global	IfxAsclin_read8
	.type	IfxAsclin_read8, @function
IfxAsclin_read8:
.LFB379:
	.loc 1 213 0
.LVL60:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 216 0
	jz	%d4, .L59
.LVL61:
.L57:
	.loc 1 218 0
	ld.w	%d15, [%a4] 72
	st.b	[%a5]0, %d15
.LVL62:
	add.a	%a5, 1
.LVL63:
	loop	%a15, .L57
.LVL64:
.L59:
	.loc 1 223 0
	mov	%d2, 0
	ret
.LFE379:
	.size	IfxAsclin_read8, .-IfxAsclin_read8
.section .text.IfxAsclin_resetModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_resetModule
	.type	IfxAsclin_resetModule, @function
IfxAsclin_resetModule:
.LFB380:
	.loc 1 227 0
.LVL65:
	.loc 1 227 0
	mov.aa	%a15, %a4
	.loc 1 228 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL66:
	.loc 1 229 0
	mov	%d4, %d2
	.loc 1 228 0
	mov	%d8, %d2
.LVL67:
	.loc 1 229 0
	call	IfxScuWdt_clearCpuEndinit
.LVL68:
	.loc 1 231 0
	ld.w	%d15, [%a15] 244
	.loc 1 233 0
	mov	%d4, %d8
	.loc 1 231 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 232 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 233 0
	call	IfxScuWdt_setCpuEndinit
.LVL69:
.L61:
	.loc 1 235 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L61
	.loc 1 238 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL70:
	.loc 1 239 0
	ld.w	%d15, [%a15] 236
	.loc 1 241 0
	mov	%d4, %d8
	.loc 1 239 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 241 0
	j	IfxScuWdt_setCpuEndinit
.LVL71:
.LFE380:
	.size	IfxAsclin_resetModule, .-IfxAsclin_resetModule
.section .text.IfxAsclin_setBaudrateBitFields,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBaudrateBitFields
	.type	IfxAsclin_setBaudrateBitFields, @function
IfxAsclin_setBaudrateBitFields:
.LFB381:
	.loc 1 246 0
.LVL72:
.LBB100:
.LBB101:
	.loc 2 1934 0
	ld.w	%d2, [%a4] 76
.LBE101:
.LBE100:
.LBB103:
.LBB104:
	.loc 1 358 0
	ld.w	%d15, [%a4] 76
.LBE104:
.LBE103:
.LBB108:
.LBB102:
	.loc 2 1934 0
	and	%d2, %d2, 31
.LVL73:
.LBE102:
.LBE108:
.LBB109:
.LBB107:
	.loc 1 358 0
	andn	%d15, %d15, ~(-32)
	st.w	[%a4] 76, %d15
.L65:
.LVL74:
.LBB105:
.LBB106:
	.loc 2 1940 0
	ld.w	%d15, [%a4] 76
.LBE106:
.LBE105:
	.loc 1 363 0
	jltz	%d15, .L65
.LVL75:
.LBE107:
.LBE109:
.LBB110:
.LBB111:
	.loc 2 2339 0
	ld.w	%d15, [%a4] 20
	add	%d4, -1
.LVL76:
	insert	%d4, %d15, %d4, 0, 12
.LVL77:
	st.w	[%a4] 20, %d4
.LVL78:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 2 2321 0
	ld.w	%d15, [%a4] 32
	insert	%d5, %d15, %d5, 16, 12
.LVL79:
	st.w	[%a4] 32, %d5
.LVL80:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	.loc 2 2231 0
	ld.w	%d15, [%a4] 32
	insert	%d6, %d15, %d6, 0, 12
.LVL81:
	st.w	[%a4] 32, %d6
.LVL82:
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	.loc 2 2327 0
	ld.w	%d15, [%a4] 20
	insert	%d7, %d15, %d7, 16, 4
.LVL83:
	st.w	[%a4] 20, %d7
.LVL84:
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	.loc 1 358 0
	ld.w	%d15, [%a4] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d2
	st.w	[%a4] 76, %d15
	.loc 1 361 0
	jnz	%d2, .L72
.L67:
.LVL85:
.LBB120:
.LBB121:
	.loc 2 1940 0
	ld.w	%d15, [%a4] 76
.LBE121:
.LBE120:
	.loc 1 363 0
	jltz	%d15, .L67
	ret
.LVL86:
.L72:
.LBB122:
.LBB123:
	.loc 2 1940 0
	ld.w	%d15, [%a4] 76
.LBE123:
.LBE122:
	.loc 1 368 0
	jgez	%d15, .L72
	ret
.LBE119:
.LBE118:
.LFE381:
	.size	IfxAsclin_setBaudrateBitFields, .-IfxAsclin_setBaudrateBitFields
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
.section .text.IfxAsclin_setBitTiming,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBitTiming
	.type	IfxAsclin_setBitTiming, @function
IfxAsclin_setBitTiming:
.LFB382:
	.loc 1 258 0
.LVL87:
.LBB124:
.LBB125:
	.loc 2 1934 0
	ld.w	%d2, [%a4] 76
.LBE125:
.LBE124:
	.loc 1 258 0
	mov.a	%a14, %d7
	sub.a	%SP, 8
.LCFI0:
.LBB128:
.LBB126:
	.loc 2 1934 0
	and	%d2, %d2, 31
.LBE126:
.LBE128:
	.loc 1 258 0
	mov.aa	%a15, %a4
	mov	%d15, %d5
	mov	%d8, %d4
	mov	%d10, %d6
.LBB129:
.LBB127:
	.loc 2 1934 0
	mov.a	%a13, %d2
.LVL88:
.LBE127:
.LBE129:
.LBB130:
.LBB131:
	.loc 1 156 0
	call	IfxAsclin_getFaFrequency
.LVL89:
	ld.w	%d3, [%a15] 20
.LBE131:
.LBE130:
	.loc 1 266 0
	add	%d5, %d15, 1
.LBB134:
.LBB132:
	.loc 1 156 0
	insert	%d3, %d3, 0, 12, 20
.LBE132:
.LBE134:
.LBB135:
.LBB136:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 171 0
	mov	%d15, 4
.LBE136:
.LBE135:
.LBB138:
.LBB133:
	.loc 1 156 0
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d3, %d2, %d3
	mov.a	%a12, %d3
.LVL90:
.LBE133:
.LBE138:
.LBB139:
.LBB137:
	.loc 3 171 0
#APP
	# 171 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d5, %d15
	# 0 "" 2
.LVL91:
#NO_APP
.LBE137:
.LBE139:
	.loc 1 266 0
	and	%d2, %d15, 255
	st.w	[%SP]0, %d2
.LVL92:
.LBB140:
.LBB141:
	.loc 3 171 0
	mov	%d9, 1
#APP
	# 171 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d10, %d9
	# 0 "" 2
.LVL93:
#NO_APP
	and	%d13, %d15, 255
.LBE141:
.LBE140:
	.loc 1 268 0
	itof	%d13, %d13
	.loc 1 267 0
	and	%d2, %d2, 255
.LVL94:
	.loc 1 268 0
	mul.f	%d13, %d13, %d8
	.loc 1 267 0
	st.w	[%SP] 4, %d2
.LVL95:
	.loc 1 270 0
	mov	%d4, %d13
	call	__extendsfdf2
.LVL96:
	movh	%d7, 16208
	mov	%e4, %d3, %d2
	movh	%d6, 54002
	addi	%d7, %d7, 25165
	addi	%d6, %d6, -22020
	call	__muldf3
.LVL97:
	mov	%e4, %d3, %d2
	.loc 1 297 0
	mov	%d14, 0
	.loc 1 270 0
	call	__truncdfsf2
.LVL98:
	.loc 1 276 0
	mov.d	%d5, %a12
	.loc 1 304 0
	mov	%d0, 1
	.loc 1 276 0
	div.f	%d4, %d5, %d13
	ftouz	%d4, %d4
	.loc 1 296 0
	utof	%d3, %d4
	.loc 1 276 0
	mov.a	%a2, %d4
.LVL99:
	.loc 1 296 0
	div.f	%d3, %d5, %d3
.LVL100:
	.loc 1 293 0
	mov.d	%d8, %a2
.LVL101:
	.loc 1 297 0
	sub.f	%d3, %d13, %d3
.LVL102:
	cmp.f	%d15, %d3, %d14
.LVL103:
	extr.u	%d15, %d15, 0, 1
	addih	%d4, %d3, 0x8000
.LVL104:
	cmov	%d3, %d15, %d4
.LVL105:
	.loc 1 304 0
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L77
	mov.d	%d15, %a2
	mov	%d4, 4096
	sh	%d15, 1
	jge.u	%d15, %d4, .L77
	mul	%d4, %d8, 3
	mov.a	%a5, %d15
	mov	%d1, 0
	mov.a	%a3, %d4
	mov	%d11, 2
	sub.a	%a4, %a5, %a3
	lea	%a5, 4096
.LVL106:
.L89:
	add.a	%a6, %a3, %a4
	mov.d	%d7, %a6
.LVL107:
	.loc 1 306 0
	jeq	%d11, 2, .L95
	.loc 1 313 0
	mul	%d12, %d1, %d11
	div.u	%e4, %d12, %d0
	.loc 1 314 0
	addi	%d12, %d4, 1
	.loc 1 313 0
	mov	%d6, %d4
.LVL108:
	.loc 1 317 0
	jlt.u	%d12, %d4, .L79
.LVL109:
.L78:
	utof	%d4, %d11
	mov.d	%d5, %a12
	mul.f	%d4, %d5, %d4
.LVL110:
.L84:
	add	%d9, %d7, %d6
.LVL111:
	.loc 1 319 0
	utof	%d15, %d9
	div.f	%d15, %d4, %d15
.LVL112:
	.loc 1 320 0
	sub.f	%d15, %d13, %d15
.LVL113:
	cmp.f	%d5, %d15, %d14
	extr.u	%d5, %d5, 0, 1
	addih	%d10, %d15, 0x8000
	sel	%d15, %d5, %d10, %d15
.LVL114:
	.loc 1 322 0
	cmp.f	%d5, %d15, %d3
	extr.u	%d5, %d5, 0, 1
	seln	%d1, %d5, %d1, %d6
.LVL115:
	.loc 1 317 0
	add	%d6, 1
.LVL116:
	.loc 1 322 0
	seln	%d3, %d5, %d3, %d15
.LVL117:
	seln	%d0, %d5, %d0, %d11
.LVL118:
	seln	%d8, %d5, %d8, %d9
.LVL119:
	.loc 1 317 0
	jge.u	%d12, %d6, .L84
.LVL120:
.L79:
	.loc 1 331 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L108
	.loc 1 304 0
	mov.d	%d4, %a3
	mov.d	%d5, %a5
	add.a	%a6, %a3, %a2
	add	%d11, 1
.LVL121:
	mov.d	%d15, %a6
	jge.u	%d4, %d5, .L108
	mov.a	%a3, %d15
	j	.L89
.LVL122:
.L95:
	.loc 1 309 0
	mov	%d12, 1
	.loc 1 308 0
	mov	%d6, 1
	j	.L78
.LVL123:
.L108:
	insert	%d0, %d0, 0, 12, 20
.LVL124:
.L77:
.LBB142:
.LBB143:
	.loc 1 358 0
	ld.w	%d4, [%a15] 76
	andn	%d4, %d4, ~(-32)
	st.w	[%a15] 76, %d4
.LVL125:
.L85:
.LBB144:
.LBB145:
	.loc 2 1940 0
	ld.w	%d15, [%a15] 76
.LBE145:
.LBE144:
	.loc 1 363 0
	jltz	%d15, .L85
.LBE143:
.LBE142:
	.loc 1 338 0
	ld.w	%d2, [%a15] 32
.LVL126:
	.loc 1 339 0
	sh	%d0, %d0, 16
	.loc 1 338 0
	insert	%d8, %d2, %d8, 0, 12
.LVL127:
	.loc 1 342 0
	ld.w	%d15, [%SP]0
	.loc 1 338 0
	st.w	[%a15] 32, %d8
	.loc 1 339 0
	ld.w	%d4, [%a15] 32
	.loc 1 342 0
	add	%d15, -1
	.loc 1 339 0
	insert	%d4, %d4, 0, 16, 12
	or	%d0, %d4
	st.w	[%a15] 32, %d0
	.loc 1 342 0
	ld.w	%d3, [%a15] 20
.LVL128:
.LBB146:
.LBB147:
	.loc 1 358 0
	mov.d	%d4, %a13
.LBE147:
.LBE146:
	.loc 1 342 0
	insert	%d3, %d3, %d15, 16, 4
	.loc 1 345 0
	ld.w	%d15, [%SP] 4
	.loc 1 342 0
	st.w	[%a15] 20, %d3
	.loc 1 345 0
	ld.w	%d2, [%a15] 20
	insert	%d2, %d2, %d15, 24, 4
	.loc 1 348 0
	movh	%d15, 32768
	.loc 1 345 0
	st.w	[%a15] 20, %d2
	.loc 1 348 0
	mov.d	%d2, %a14
	sel	%d7, %d2, %d15, 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 31, 1
	or	%d15, %d7
	st.w	[%a15] 20, %d15
.LVL129:
.LBB156:
.LBB154:
	.loc 1 358 0
	ld.w	%d15, [%a15] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d4
	st.w	[%a15] 76, %d15
	.loc 1 361 0
	jnz.a	%a13, .L105
.L87:
.LVL130:
.LBB148:
.LBB149:
	.loc 2 1940 0
	ld.w	%d15, [%a15] 76
.LBE149:
.LBE148:
	.loc 1 363 0
	jltz	%d15, .L87
.LVL131:
.L107:
.LBE154:
.LBE156:
	.loc 1 353 0
	mov	%d2, 1
	ret
.L105:
.LVL132:
.LBB157:
.LBB155:
.LBB150:
.LBB151:
	.loc 2 1940 0
	ld.w	%d15, [%a15] 76
.LBE151:
.LBE150:
	.loc 1 368 0
	jltz	%d15, .L107
.LBB153:
.LBB152:
	.loc 2 1940 0
	ld.w	%d15, [%a15] 76
.LBE152:
.LBE153:
	.loc 1 368 0
	jgez	%d15, .L105
	j	.L107
.LBE155:
.LBE157:
.LFE382:
	.size	IfxAsclin_setBitTiming, .-IfxAsclin_setBitTiming
.section .text.IfxAsclin_setClockSource,"ax",@progbits
	.align 1
	.global	IfxAsclin_setClockSource
	.type	IfxAsclin_setClockSource, @function
IfxAsclin_setClockSource:
.LFB383:
	.loc 1 357 0
.LVL133:
	.loc 1 358 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d4, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 361 0
	jnz	%d4, .L117
.L113:
.LVL134:
.LBB158:
.LBB159:
	.loc 2 1940 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE159:
.LBE158:
	.loc 1 363 0 discriminator 1
	jltz	%d15, .L113
	ret
.LVL135:
.L117:
.LBB160:
.LBB161:
	.loc 2 1940 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE161:
.LBE160:
	.loc 1 368 0 discriminator 1
	jgez	%d15, .L117
	ret
.LFE383:
	.size	IfxAsclin_setClockSource, .-IfxAsclin_setClockSource
.section .text.IfxAsclin_write16,"ax",@progbits
	.align 1
	.global	IfxAsclin_write16
	.type	IfxAsclin_write16, @function
IfxAsclin_write16:
.LFB384:
	.loc 1 375 0
.LVL136:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 378 0
	jz	%d4, .L125
.LVL137:
.L123:
	.loc 1 380 0
	ld.hu	%d15, [%a5]0
	add.a	%a5, 2
.LVL138:
	st.w	[%a4] 68, %d15
.LVL139:
	loop	%a15, .L123
.L125:
	.loc 1 385 0
	mov	%d2, 0
	ret
.LFE384:
	.size	IfxAsclin_write16, .-IfxAsclin_write16
.section .text.IfxAsclin_write32,"ax",@progbits
	.align 1
	.global	IfxAsclin_write32
	.type	IfxAsclin_write32, @function
IfxAsclin_write32:
.LFB385:
	.loc 1 389 0
.LVL140:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 392 0
	jz	%d4, .L132
.LVL141:
.L130:
	.loc 1 394 0
	ld.w	%d15, [%a5]0
	add.a	%a5, 4
.LVL142:
	st.w	[%a4] 68, %d15
.LVL143:
	loop	%a15, .L130
.L132:
	.loc 1 399 0
	mov	%d2, 0
	ret
.LFE385:
	.size	IfxAsclin_write32, .-IfxAsclin_write32
.section .text.IfxAsclin_write8,"ax",@progbits
	.align 1
	.global	IfxAsclin_write8
	.type	IfxAsclin_write8, @function
IfxAsclin_write8:
.LFB386:
	.loc 1 403 0
.LVL144:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 406 0
	jz	%d4, .L139
.LVL145:
.L137:
	.loc 1 408 0
	ld.bu	%d15, [%a5]0
	add.a	%a5, 1
.LVL146:
	st.w	[%a4] 68, %d15
.LVL147:
	loop	%a15, .L137
.L139:
	.loc 1 413 0
	mov	%d2, 0
	ret
.LFE386:
	.size	IfxAsclin_write8, .-IfxAsclin_write8
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
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.byte	0x4
	.uaword	.LCFI0-.LFB382
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.align 2
.LEFDE42:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxAsclin_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxAsclin_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x51d5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x160
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
	.byte	0x4
	.byte	0x65
	.uaword	0x1bb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x69
	.uaword	0x1bb
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x6d
	.uaword	0x1e7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x71
	.uaword	0x190
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
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x83
	.uaword	0x184
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0xa7
	.uaword	0x16b
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
	.uaword	0x287
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x2ae
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x281
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x241
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x288
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x4df
	.uleb128 0x9
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x2c8
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x52d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x174
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x4fd
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x5f3
	.uleb128 0x9
	.string	"PRESCALER"
	.byte	0x6
	.byte	0x5a
	.uaword	0x174
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5b
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"OVERSAMPLING"
	.byte	0x6
	.byte	0x5c
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"reserved_20"
	.byte	0x6
	.byte	0x5d
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SAMPLEPOINT"
	.byte	0x6
	.byte	0x5e
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x5f
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"SM"
	.byte	0x6
	.byte	0x60
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x6
	.byte	0x61
	.uaword	0x54b
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x64
	.uaword	0x67e
	.uleb128 0x9
	.string	"LOWERLIMIT"
	.byte	0x6
	.byte	0x66
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"UPPERLIMIT"
	.byte	0x6
	.byte	0x67
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MEASURED"
	.byte	0x6
	.byte	0x68
	.uaword	0x174
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x69
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x6
	.byte	0x6a
	.uaword	0x611
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x701
	.uleb128 0x9
	.string	"DENOMINATOR"
	.byte	0x6
	.byte	0x6f
	.uaword	0x174
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x70
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"NUMERATOR"
	.byte	0x6
	.byte	0x71
	.uaword	0x174
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x72
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x699
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x788
	.uleb128 0x9
	.string	"DISR"
	.byte	0x6
	.byte	0x78
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"DISS"
	.byte	0x6
	.byte	0x79
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x6
	.byte	0x7a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EDIS"
	.byte	0x6
	.byte	0x7b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x7c
	.uaword	0x174
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x71c
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x7f8
	.uleb128 0x9
	.string	"CLKSEL"
	.byte	0x6
	.byte	0x82
	.uaword	0x174
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x6
	.byte	0x83
	.uaword	0x174
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"CON"
	.byte	0x6
	.byte	0x84
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x6
	.byte	0x85
	.uaword	0x7a3
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x88
	.uaword	0x8a3
	.uleb128 0x9
	.string	"DATLEN"
	.byte	0x6
	.byte	0x8a
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x8b
	.uaword	0x174
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"HO"
	.byte	0x6
	.byte	0x8c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"RM"
	.byte	0x6
	.byte	0x8d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"CSM"
	.byte	0x6
	.byte	0x8e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"RESPONSE"
	.byte	0x6
	.byte	0x8f
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0x90
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x6
	.byte	0x91
	.uaword	0x813
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x94
	.uaword	0xa6b
	.uleb128 0x9
	.string	"TH"
	.byte	0x6
	.byte	0x96
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TR"
	.byte	0x6
	.byte	0x97
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RH"
	.byte	0x6
	.byte	0x98
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RR"
	.byte	0x6
	.byte	0x99
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x9a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FED"
	.byte	0x6
	.byte	0x9b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"RED"
	.byte	0x6
	.byte	0x9c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0x9d
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQ"
	.byte	0x6
	.byte	0x9e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQ"
	.byte	0x6
	.byte	0x9f
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQ"
	.byte	0x6
	.byte	0xa0
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PE"
	.byte	0x6
	.byte	0xa1
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TC"
	.byte	0x6
	.byte	0xa2
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FE"
	.byte	0x6
	.byte	0xa3
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BD"
	.byte	0x6
	.byte	0xa6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LP"
	.byte	0x6
	.byte	0xa7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LA"
	.byte	0x6
	.byte	0xa8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LC"
	.byte	0x6
	.byte	0xa9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CE"
	.byte	0x6
	.byte	0xaa
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFO"
	.byte	0x6
	.byte	0xab
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFU"
	.byte	0x6
	.byte	0xac
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFL"
	.byte	0x6
	.byte	0xad
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xae
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFO"
	.byte	0x6
	.byte	0xaf
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFL"
	.byte	0x6
	.byte	0xb0
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x6
	.byte	0xb1
	.uaword	0x8c1
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb4
	.uaword	0xc4f
	.uleb128 0x9
	.string	"THC"
	.byte	0x6
	.byte	0xb6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRC"
	.byte	0x6
	.byte	0xb7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHC"
	.byte	0x6
	.byte	0xb8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRC"
	.byte	0x6
	.byte	0xb9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xba
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDC"
	.byte	0x6
	.byte	0xbb
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDC"
	.byte	0x6
	.byte	0xbc
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xbd
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQC"
	.byte	0x6
	.byte	0xbe
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQC"
	.byte	0x6
	.byte	0xbf
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQC"
	.byte	0x6
	.byte	0xc0
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEC"
	.byte	0x6
	.byte	0xc1
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCC"
	.byte	0x6
	.byte	0xc2
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEC"
	.byte	0x6
	.byte	0xc3
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTC"
	.byte	0x6
	.byte	0xc4
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTC"
	.byte	0x6
	.byte	0xc5
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDC"
	.byte	0x6
	.byte	0xc6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPC"
	.byte	0x6
	.byte	0xc7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LAC"
	.byte	0x6
	.byte	0xc8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCC"
	.byte	0x6
	.byte	0xc9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEC"
	.byte	0x6
	.byte	0xca
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOC"
	.byte	0x6
	.byte	0xcb
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUC"
	.byte	0x6
	.byte	0xcc
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLC"
	.byte	0x6
	.byte	0xcd
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xce
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOC"
	.byte	0x6
	.byte	0xcf
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLC"
	.byte	0x6
	.byte	0xd0
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xa88
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xe06
	.uleb128 0x9
	.string	"THE"
	.byte	0x6
	.byte	0xd6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRE"
	.byte	0x6
	.byte	0xd7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHE"
	.byte	0x6
	.byte	0xd8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRE"
	.byte	0x6
	.byte	0xd9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xda
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDE"
	.byte	0x6
	.byte	0xdb
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDE"
	.byte	0x6
	.byte	0xdc
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xdd
	.uaword	0x174
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEE"
	.byte	0x6
	.byte	0xde
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCE"
	.byte	0x6
	.byte	0xdf
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEE"
	.byte	0x6
	.byte	0xe0
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTE"
	.byte	0x6
	.byte	0xe1
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTE"
	.byte	0x6
	.byte	0xe2
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDE"
	.byte	0x6
	.byte	0xe3
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPE"
	.byte	0x6
	.byte	0xe4
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"ABE"
	.byte	0x6
	.byte	0xe5
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCE"
	.byte	0x6
	.byte	0xe6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLE"
	.byte	0x6
	.byte	0xea
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xeb
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOE"
	.byte	0x6
	.byte	0xec
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLE"
	.byte	0x6
	.byte	0xed
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xc71
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0xffc
	.uleb128 0x9
	.string	"THS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRS"
	.byte	0x6
	.byte	0xf4
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRS"
	.byte	0x6
	.byte	0xf6
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf7
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDS"
	.byte	0x6
	.byte	0xf8
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDS"
	.byte	0x6
	.byte	0xf9
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xfa
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQS"
	.byte	0x6
	.byte	0xfb
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQS"
	.byte	0x6
	.byte	0xfc
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQS"
	.byte	0x6
	.byte	0xfd
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PES"
	.byte	0x6
	.byte	0xfe
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x6
	.byte	0xff
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"FES"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"HTS"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"RTS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"BDS"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"LPS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"LAS"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"LCS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CES"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"RFOS"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"RFUS"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RFLS"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"TFOS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TFLS"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xe29
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x10fd
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x113
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"IDLE"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"STOP"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"LEAD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x119
	.uaword	0x174
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"MSB"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CEN"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"PEN"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"ODD"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x101d
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x121
	.uaword	0x1179
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x174
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x111e
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x1293
	.uleb128 0xb
	.string	"ALTI"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"DEPTH"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CTS"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x130
	.uaword	0x174
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"RCPOL"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CPOL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"SPOL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"LB"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CTSEN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"RXM"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TXM"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x1194
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1305
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"RSTSTAT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x174
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x12b0
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1364
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x146
	.uaword	0x174
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x1323
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x13c5
	.uleb128 0xb
	.string	"CLR"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x174
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1382
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x1434
	.uleb128 0xb
	.string	"BREAK"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x174
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x174
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x13e5
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x14ea
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x174
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"CSI"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CSEN"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"MS"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"ABD"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x160
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x1457
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x164
	.uaword	0x1553
	.uleb128 0xb
	.string	"HEADER"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x167
	.uaword	0x174
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x150a
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x15f2
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x174
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SUS"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"reserved_30"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1576
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x1641
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x174
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x160e
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x1694
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x174
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x1660
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x181
	.uaword	0x176d
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENI"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x185
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"OUTW"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x187
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x188
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x174
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x174
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"BUF"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x16b4
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x17c2
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x174
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x178f
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x1889
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENO"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x199
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"INW"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x174
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x174
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x17e1
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x18d3
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x4df
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x18ab
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x1915
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x52d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x18ed
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x1957
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x5f3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x192f
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1999
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x67e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x1971
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x19d8
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x701
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x19b0
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x1a17
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x788
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x19ef
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1a56
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x7f8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1a2e
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x1a95
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x8a3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1a6d
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x1ad7
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0xa6b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1aaf
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1b18
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0xc4f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1af0
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1b5e
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0xe06
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1b36
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1ba5
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0xffc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1b7d
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1be9
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x10fd
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1bc1
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1c2d
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1179
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1c05
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1c6b
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x1293
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1c43
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1cab
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x1305
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1c83
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1cec
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x1364
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1cc4
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1d2d
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0x13c5
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x1d05
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x1d70
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x1434
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x1d48
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x1db6
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x14ea
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x1d8e
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x1df9
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x1553
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1dd1
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x1e3f
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x15f2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x1e17
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1e7e
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x1641
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x1e56
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1ec0
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x1694
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x1e98
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1f03
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x176d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x1edb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1f48
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x17c2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x1f20
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1f8a
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x174
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0x1a5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x1889
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x1f62
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x6
	.uahalf	0x287
	.uaword	0x1fee
	.uleb128 0x11
	.string	"CON"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1db6
	.byte	0
	.uleb128 0x11
	.string	"BTIMER"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x1d70
	.byte	0x4
	.uleb128 0x11
	.string	"HTIMER"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x1df9
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x2005
	.uleb128 0x12
	.uaword	0x1fa7
	.uleb128 0x13
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x299
	.uaword	0x21c0
	.uleb128 0x11
	.string	"CLC"
	.byte	0x6
	.uahalf	0x29b
	.uaword	0x1a17
	.byte	0
	.uleb128 0x11
	.string	"IOCR"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x1c6b
	.byte	0x4
	.uleb128 0x11
	.string	"ID"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1c2d
	.byte	0x8
	.uleb128 0x11
	.string	"TXFIFOCON"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x1f8a
	.byte	0xc
	.uleb128 0x11
	.string	"RXFIFOCON"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x1f03
	.byte	0x10
	.uleb128 0x11
	.string	"BITCON"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x1957
	.byte	0x14
	.uleb128 0x11
	.string	"FRAMECON"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x1be9
	.byte	0x18
	.uleb128 0x11
	.string	"DATCON"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x1a95
	.byte	0x1c
	.uleb128 0x11
	.string	"BRG"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x19d8
	.byte	0x20
	.uleb128 0x11
	.string	"BRD"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x1999
	.byte	0x24
	.uleb128 0x11
	.string	"LIN"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x1fee
	.byte	0x28
	.uleb128 0x11
	.string	"FLAGS"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x1ad7
	.byte	0x34
	.uleb128 0x11
	.string	"FLAGSSET"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1ba5
	.byte	0x38
	.uleb128 0x11
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1b18
	.byte	0x3c
	.uleb128 0x11
	.string	"FLAGSENABLE"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x1b5e
	.byte	0x40
	.uleb128 0x11
	.string	"TXDATA"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x1f48
	.byte	0x44
	.uleb128 0x11
	.string	"RXDATA"
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x1e7e
	.byte	0x48
	.uleb128 0x11
	.string	"CSR"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x1a56
	.byte	0x4c
	.uleb128 0x11
	.string	"RXDATAD"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x1ec0
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x21c0
	.byte	0x54
	.uleb128 0x11
	.string	"OCS"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1e3f
	.byte	0xe8
	.uleb128 0x11
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x1d2d
	.byte	0xec
	.uleb128 0x11
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x1cec
	.byte	0xf0
	.uleb128 0x11
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1cab
	.byte	0xf4
	.uleb128 0x11
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x1915
	.byte	0xf8
	.uleb128 0x11
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x18d3
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x21d0
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xd
	.string	"Ifx_ASCLIN"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x21ef
	.uleb128 0x12
	.uaword	0x200a
	.uleb128 0x16
	.byte	0x1
	.byte	0x7
	.byte	0x4f
	.uaword	0x223c
	.uleb128 0x17
	.string	"IfxAsclin_Index_none"
	.sleb128 -1
	.uleb128 0x17
	.string	"IfxAsclin_Index_0"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_Index_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Index"
	.byte	0x7
	.byte	0x53
	.uaword	0x21f4
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2263
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2273
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2283
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2293
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x22a3
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x22b3
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x22c3
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xf7
	.byte	0
	.uleb128 0x8
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x23d1
	.uleb128 0x9
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x174
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x8
	.byte	0x30
	.uaword	0x174
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x8
	.byte	0x33
	.uaword	0x174
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x174
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x8
	.byte	0x35
	.uaword	0x174
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x174
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x22c3
	.uleb128 0x18
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x240e
	.uleb128 0x19
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0x174
	.uleb128 0x19
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0x1a5
	.uleb128 0x19
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x23d1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x23ea
	.uleb128 0x8
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x8
	.byte	0x56
	.uaword	0x245d
	.uleb128 0x7
	.string	"TX"
	.byte	0x8
	.byte	0x58
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"RX"
	.byte	0x8
	.byte	0x59
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x5a
	.uaword	0x240e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0x8
	.byte	0x5b
	.uaword	0x2473
	.uleb128 0x12
	.uaword	0x2422
	.uleb128 0x8
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.uaword	0x249f
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x60
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_BCUSPB"
	.byte	0x8
	.byte	0x61
	.uaword	0x24b5
	.uleb128 0x12
	.uaword	0x2478
	.uleb128 0x8
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x8
	.byte	0x64
	.uaword	0x24dc
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x66
	.uaword	0x24dc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x24ec
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN"
	.byte	0x8
	.byte	0x67
	.uaword	0x24ff
	.uleb128 0x12
	.uaword	0x24ba
	.uleb128 0x8
	.string	"_Ifx_SRC_CAN1"
	.byte	0x20
	.byte	0x8
	.byte	0x6a
	.uaword	0x2527
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x6c
	.uaword	0x2527
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x2537
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN1"
	.byte	0x8
	.byte	0x6d
	.uaword	0x254b
	.uleb128 0x12
	.uaword	0x2504
	.uleb128 0x8
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x8
	.byte	0x70
	.uaword	0x2597
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0x72
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0x73
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0x74
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0x75
	.uaword	0x240e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CCU6"
	.byte	0x8
	.byte	0x76
	.uaword	0x25ab
	.uleb128 0x12
	.uaword	0x2550
	.uleb128 0x8
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x8
	.byte	0x79
	.uaword	0x25d6
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x7b
	.uaword	0x25d6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x25e6
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x7c
	.uaword	0x25fe
	.uleb128 0x12
	.uaword	0x25b0
	.uleb128 0x8
	.string	"_Ifx_SRC_CPU"
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.uaword	0x2633
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x81
	.uaword	0x240e
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0x82
	.uaword	0x2283
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0x8
	.byte	0x83
	.uaword	0x2646
	.uleb128 0x12
	.uaword	0x2603
	.uleb128 0x8
	.string	"_Ifx_SRC_DMA"
	.byte	0x50
	.byte	0x8
	.byte	0x86
	.uaword	0x2684
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x88
	.uaword	0x240e
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0x89
	.uaword	0x2293
	.byte	0x4
	.uleb128 0x7
	.string	"CH"
	.byte	0x8
	.byte	0x8a
	.uaword	0x24dc
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DMA"
	.byte	0x8
	.byte	0x8b
	.uaword	0x2697
	.uleb128 0x12
	.uaword	0x264b
	.uleb128 0x8
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x8
	.byte	0x8e
	.uaword	0x26be
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x90
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EMEM"
	.byte	0x8
	.byte	0x91
	.uaword	0x26d2
	.uleb128 0x12
	.uaword	0x269c
	.uleb128 0x8
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x8
	.byte	0x94
	.uaword	0x2749
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x96
	.uaword	0x25d6
	.byte	0
	.uleb128 0x7
	.string	"TINT"
	.byte	0x8
	.byte	0x97
	.uaword	0x25d6
	.byte	0x8
	.uleb128 0x7
	.string	"NDAT"
	.byte	0x8
	.byte	0x98
	.uaword	0x25d6
	.byte	0x10
	.uleb128 0x7
	.string	"MBSC"
	.byte	0x8
	.byte	0x99
	.uaword	0x25d6
	.byte	0x18
	.uleb128 0x7
	.string	"OBUSY"
	.byte	0x8
	.byte	0x9a
	.uaword	0x240e
	.byte	0x20
	.uleb128 0x7
	.string	"IBUSY"
	.byte	0x8
	.byte	0x9b
	.uaword	0x240e
	.byte	0x24
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9c
	.uaword	0x22a3
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ERAY"
	.byte	0x8
	.byte	0x9d
	.uaword	0x275d
	.uleb128 0x12
	.uaword	0x26d7
	.uleb128 0x8
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x8
	.byte	0xa0
	.uaword	0x2783
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xa2
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ETH"
	.byte	0x8
	.byte	0xa3
	.uaword	0x2796
	.uleb128 0x12
	.uaword	0x2762
	.uleb128 0x8
	.string	"_Ifx_SRC_EVR"
	.byte	0x8
	.byte	0x8
	.byte	0xa6
	.uaword	0x27ca
	.uleb128 0x7
	.string	"WUT"
	.byte	0x8
	.byte	0xa8
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"SCDC"
	.byte	0x8
	.byte	0xa9
	.uaword	0x240e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EVR"
	.byte	0x8
	.byte	0xaa
	.uaword	0x27dd
	.uleb128 0x12
	.uaword	0x279b
	.uleb128 0x8
	.string	"_Ifx_SRC_FFT"
	.byte	0xc
	.byte	0x8
	.byte	0xad
	.uaword	0x281d
	.uleb128 0x7
	.string	"DONE"
	.byte	0x8
	.byte	0xaf
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0xb0
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"RFS"
	.byte	0x8
	.byte	0xb1
	.uaword	0x240e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_FFT"
	.byte	0x8
	.byte	0xb2
	.uaword	0x2830
	.uleb128 0x12
	.uaword	0x27e2
	.uleb128 0x1b
	.string	"_Ifx_SRC_GPSR"
	.uahalf	0x600
	.byte	0x8
	.byte	0xb5
	.uaword	0x2889
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0xb7
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0xb8
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0xb9
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0xba
	.uaword	0x240e
	.byte	0xc
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x8
	.byte	0xbb
	.uaword	0x2889
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x289a
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x5ef
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPSR"
	.byte	0x8
	.byte	0xbc
	.uaword	0x28ae
	.uleb128 0x12
	.uaword	0x2835
	.uleb128 0x8
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x8
	.byte	0xbf
	.uaword	0x291b
	.uleb128 0x7
	.string	"CIRQ"
	.byte	0x8
	.byte	0xc1
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"T2"
	.byte	0x8
	.byte	0xc2
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"T3"
	.byte	0x8
	.byte	0xc3
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x7
	.string	"T4"
	.byte	0x8
	.byte	0xc4
	.uaword	0x240e
	.byte	0xc
	.uleb128 0x7
	.string	"T5"
	.byte	0x8
	.byte	0xc5
	.uaword	0x240e
	.byte	0x10
	.uleb128 0x7
	.string	"T6"
	.byte	0x8
	.byte	0xc6
	.uaword	0x240e
	.byte	0x14
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x8
	.byte	0xc7
	.uaword	0x2273
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPT12"
	.byte	0x8
	.byte	0xc8
	.uaword	0x2930
	.uleb128 0x12
	.uaword	0x28b3
	.uleb128 0x1b
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x5c0
	.byte	0x8
	.byte	0xcb
	.uaword	0x29ba
	.uleb128 0x7
	.string	"AEIIRQ"
	.byte	0x8
	.byte	0xcd
	.uaword	0x240e
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0xce
	.uaword	0x29ba
	.byte	0x4
	.uleb128 0x1d
	.string	"ERR"
	.byte	0x8
	.byte	0xcf
	.uaword	0x240e
	.uahalf	0x170
	.uleb128 0x1d
	.string	"reserved_174"
	.byte	0x8
	.byte	0xd0
	.uaword	0x2293
	.uahalf	0x174
	.uleb128 0x1d
	.string	"TIM"
	.byte	0x8
	.byte	0xd1
	.uaword	0x29cb
	.uahalf	0x180
	.uleb128 0x1d
	.string	"reserved_1A0"
	.byte	0x8
	.byte	0xd2
	.uaword	0x29e1
	.uahalf	0x1a0
	.uleb128 0x1d
	.string	"TOM"
	.byte	0x8
	.byte	0xd3
	.uaword	0x29f2
	.uahalf	0x580
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x29cb
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x16b
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x29e1
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x29f2
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x3df
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x2a08
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GTM"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2a1b
	.uleb128 0x12
	.uaword	0x2935
	.uleb128 0x8
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x8
	.byte	0xd7
	.uaword	0x2a42
	.uleb128 0x7
	.string	"HSM"
	.byte	0x8
	.byte	0xd9
	.uaword	0x25d6
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xda
	.uaword	0x2a55
	.uleb128 0x12
	.uaword	0x2a20
	.uleb128 0x8
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.uaword	0x2a7b
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xdf
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_LMU"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2a8e
	.uleb128 0x12
	.uaword	0x2a5a
	.uleb128 0x8
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x8
	.byte	0xe3
	.uaword	0x2ab4
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xe5
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_PMU"
	.byte	0x8
	.byte	0xe6
	.uaword	0x2ac7
	.uleb128 0x12
	.uaword	0x2a93
	.uleb128 0x8
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x8
	.byte	0xe9
	.uaword	0x2b25
	.uleb128 0x7
	.string	"TX"
	.byte	0x8
	.byte	0xeb
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"RX"
	.byte	0x8
	.byte	0xec
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0xed
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x7
	.string	"PT"
	.byte	0x8
	.byte	0xee
	.uaword	0x240e
	.byte	0xc
	.uleb128 0x7
	.string	"HC"
	.byte	0x8
	.byte	0xef
	.uaword	0x240e
	.byte	0x10
	.uleb128 0x7
	.string	"U"
	.byte	0x8
	.byte	0xf0
	.uaword	0x240e
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_QSPI"
	.byte	0x8
	.byte	0xf1
	.uaword	0x2b39
	.uleb128 0x12
	.uaword	0x2acc
	.uleb128 0x8
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x8
	.byte	0xf4
	.uaword	0x2b6c
	.uleb128 0x7
	.string	"DTS"
	.byte	0x8
	.byte	0xf6
	.uaword	0x240e
	.byte	0
	.uleb128 0x7
	.string	"ERU"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2b6c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x2b7c
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SCU"
	.byte	0x8
	.byte	0xf8
	.uaword	0x2b8f
	.uleb128 0x12
	.uaword	0x2b3e
	.uleb128 0x8
	.string	"_Ifx_SRC_SENT"
	.byte	0x10
	.byte	0x8
	.byte	0xfb
	.uaword	0x2bb6
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xfd
	.uaword	0x2b6c
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SENT"
	.byte	0x8
	.byte	0xfe
	.uaword	0x2bca
	.uleb128 0x12
	.uaword	0x2b94
	.uleb128 0xe
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x101
	.uaword	0x2bf2
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x2bf2
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x240e
	.uaword	0x2c02
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_SMU"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x2c16
	.uleb128 0x12
	.uaword	0x2bcf
	.uleb128 0xe
	.string	"_Ifx_SRC_STM"
	.byte	0x60
	.byte	0x8
	.uahalf	0x107
	.uaword	0x2c59
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x109
	.uaword	0x240e
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x2c59
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2c69
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x57
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_STM"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x2c7d
	.uleb128 0x12
	.uaword	0x2c1b
	.uleb128 0x13
	.string	"_Ifx_SRC_VADCCG"
	.uahalf	0x140
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2cde
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x240e
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x113
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x240e
	.byte	0xc
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x115
	.uaword	0x2cde
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x2cef
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x12f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCCG"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x2d06
	.uleb128 0x12
	.uaword	0x2c82
	.uleb128 0xe
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x119
	.uaword	0x2d58
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x240e
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x240e
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x240e
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x240e
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCG"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2d6e
	.uleb128 0x12
	.uaword	0x2d0b
	.uleb128 0xe
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x122
	.uaword	0x2d98
	.uleb128 0x11
	.string	"SRC"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x240e
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_XBAR"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x2dad
	.uleb128 0x12
	.uaword	0x2d73
	.uleb128 0xe
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x18
	.byte	0x8
	.uahalf	0x132
	.uaword	0x2ddd
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x2ded
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x245d
	.uaword	0x2ded
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x2ddd
	.uleb128 0xd
	.string	"Ifx_SRC_GASCLIN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x2e0a
	.uleb128 0x12
	.uaword	0x2db2
	.uleb128 0xe
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x138
	.uaword	0x2e34
	.uleb128 0x11
	.string	"SPB"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x249f
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GBCU"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x2e49
	.uleb128 0x12
	.uaword	0x2e0f
	.uleb128 0xe
	.string	"_Ifx_SRC_GCAN"
	.byte	0x60
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x2e81
	.uleb128 0x11
	.string	"CAN"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x2e91
	.byte	0
	.uleb128 0x11
	.string	"CAN1"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x2ea6
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.uaword	0x24ec
	.uaword	0x2e91
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2e81
	.uleb128 0x14
	.uaword	0x2537
	.uaword	0x2ea6
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2e96
	.uleb128 0xd
	.string	"Ifx_SRC_GCAN"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x2ec0
	.uleb128 0x12
	.uaword	0x2e4e
	.uleb128 0xe
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x8
	.uahalf	0x145
	.uaword	0x2eec
	.uleb128 0x11
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x2efc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2597
	.uaword	0x2efc
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x2eec
	.uleb128 0xd
	.string	"Ifx_SRC_GCCU6"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x2f17
	.uleb128 0x12
	.uaword	0x2ec5
	.uleb128 0xe
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x2f46
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x25e6
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x2f60
	.uleb128 0x12
	.uaword	0x2f1c
	.uleb128 0xe
	.string	"_Ifx_SRC_GCPU"
	.byte	0x20
	.byte	0x8
	.uahalf	0x151
	.uaword	0x2f8a
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x2f9a
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2633
	.uaword	0x2f9a
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2f8a
	.uleb128 0xd
	.string	"Ifx_SRC_GCPU"
	.byte	0x8
	.uahalf	0x154
	.uaword	0x2fb4
	.uleb128 0x12
	.uaword	0x2f65
	.uleb128 0xe
	.string	"_Ifx_SRC_GDMA"
	.byte	0x50
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2fde
	.uleb128 0x11
	.string	"DMA"
	.byte	0x8
	.uahalf	0x159
	.uaword	0x2fee
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2684
	.uaword	0x2fee
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2fde
	.uleb128 0xd
	.string	"Ifx_SRC_GDMA"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x3008
	.uleb128 0x12
	.uaword	0x2fb9
	.uleb128 0xe
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x3034
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x3044
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x26be
	.uaword	0x3044
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3034
	.uleb128 0xd
	.string	"Ifx_SRC_GEMEM"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x305f
	.uleb128 0x12
	.uaword	0x300d
	.uleb128 0xe
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x8
	.uahalf	0x163
	.uaword	0x308b
	.uleb128 0x11
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x165
	.uaword	0x309b
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2749
	.uaword	0x309b
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x308b
	.uleb128 0xd
	.string	"Ifx_SRC_GERAY"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x30b6
	.uleb128 0x12
	.uaword	0x3064
	.uleb128 0xe
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x8
	.uahalf	0x169
	.uaword	0x30e0
	.uleb128 0x11
	.string	"ETH"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x30f0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2783
	.uaword	0x30f0
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x30e0
	.uleb128 0xd
	.string	"Ifx_SRC_GETH"
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x310a
	.uleb128 0x12
	.uaword	0x30bb
	.uleb128 0xe
	.string	"_Ifx_SRC_GEVR"
	.byte	0x8
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x3134
	.uleb128 0x11
	.string	"EVR"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x3144
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x27ca
	.uaword	0x3144
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3134
	.uleb128 0xd
	.string	"Ifx_SRC_GEVR"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x315e
	.uleb128 0x12
	.uaword	0x310f
	.uleb128 0xe
	.string	"_Ifx_SRC_GFFT"
	.byte	0xc
	.byte	0x8
	.uahalf	0x175
	.uaword	0x3188
	.uleb128 0x11
	.string	"FFT"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x3198
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x281d
	.uaword	0x3198
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3188
	.uleb128 0xd
	.string	"Ifx_SRC_GFFT"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x31b2
	.uleb128 0x12
	.uaword	0x3163
	.uleb128 0x13
	.string	"_Ifx_SRC_GGPSR"
	.uahalf	0x600
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x31df
	.uleb128 0x11
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x31ef
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x289a
	.uaword	0x31ef
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x31df
	.uleb128 0xd
	.string	"Ifx_SRC_GGPSR"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x320a
	.uleb128 0x12
	.uaword	0x31b7
	.uleb128 0xe
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x8
	.uahalf	0x181
	.uaword	0x3238
	.uleb128 0x11
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x3248
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x291b
	.uaword	0x3248
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3238
	.uleb128 0xd
	.string	"Ifx_SRC_GGPT12"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x3264
	.uleb128 0x12
	.uaword	0x320f
	.uleb128 0x13
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x5c0
	.byte	0x8
	.uahalf	0x187
	.uaword	0x328f
	.uleb128 0x11
	.string	"GTM"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x329f
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a08
	.uaword	0x329f
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x328f
	.uleb128 0xd
	.string	"Ifx_SRC_GGTM"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x32b9
	.uleb128 0x12
	.uaword	0x3269
	.uleb128 0xe
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x32e3
	.uleb128 0x11
	.string	"HSM"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x32f3
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a42
	.uaword	0x32f3
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x32e3
	.uleb128 0xd
	.string	"Ifx_SRC_GHSM"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x330d
	.uleb128 0x12
	.uaword	0x32be
	.uleb128 0xe
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x193
	.uaword	0x3337
	.uleb128 0x11
	.string	"LMU"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x3347
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a7b
	.uaword	0x3347
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3337
	.uleb128 0xd
	.string	"Ifx_SRC_GLMU"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x3361
	.uleb128 0x12
	.uaword	0x3312
	.uleb128 0xe
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x8
	.uahalf	0x199
	.uaword	0x338b
	.uleb128 0x11
	.string	"PMU"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x339b
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2ab4
	.uaword	0x339b
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x338b
	.uleb128 0xd
	.string	"Ifx_SRC_GPMU"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x33b5
	.uleb128 0x12
	.uaword	0x3366
	.uleb128 0xe
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x33e1
	.uleb128 0x11
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x33f1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2b25
	.uaword	0x33f1
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x33e1
	.uleb128 0xd
	.string	"Ifx_SRC_GQSPI"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x340c
	.uleb128 0x12
	.uaword	0x33ba
	.uleb128 0xe
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x3436
	.uleb128 0x11
	.string	"SCU"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x2b7c
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GSCU"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x344b
	.uleb128 0x12
	.uaword	0x3411
	.uleb128 0xe
	.string	"_Ifx_SRC_GSENT"
	.byte	0x10
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x3477
	.uleb128 0x11
	.string	"SENT"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x3487
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2bb6
	.uaword	0x3487
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3477
	.uleb128 0xd
	.string	"Ifx_SRC_GSENT"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x34a2
	.uleb128 0x12
	.uaword	0x3450
	.uleb128 0xe
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x34cc
	.uleb128 0x11
	.string	"SMU"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x34dc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2c02
	.uaword	0x34dc
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x34cc
	.uleb128 0xd
	.string	"Ifx_SRC_GSMU"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x34f6
	.uleb128 0x12
	.uaword	0x34a7
	.uleb128 0xe
	.string	"_Ifx_SRC_GSTM"
	.byte	0x60
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x3520
	.uleb128 0x11
	.string	"STM"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x3530
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2c69
	.uaword	0x3530
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3520
	.uleb128 0xd
	.string	"Ifx_SRC_GSTM"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x354a
	.uleb128 0x12
	.uaword	0x34fb
	.uleb128 0x13
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x260
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x3596
	.uleb128 0x11
	.string	"G"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x35a6
	.byte	0
	.uleb128 0x11
	.string	"reserved_40"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x35ab
	.byte	0x40
	.uleb128 0x1f
	.string	"CG"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x35cb
	.uahalf	0x120
	.byte	0
	.uleb128 0x14
	.uaword	0x2d58
	.uaword	0x35a6
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x3596
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x35bb
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xdf
	.byte	0
	.uleb128 0x14
	.uaword	0x2cef
	.uaword	0x35cb
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x35bb
	.uleb128 0xd
	.string	"Ifx_SRC_GVADC"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x35e6
	.uleb128 0x12
	.uaword	0x354f
	.uleb128 0xe
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x3612
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x2d98
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GXBAR"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x3628
	.uleb128 0x12
	.uaword	0x35eb
	.uleb128 0x13
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x394a
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x2f9f
	.byte	0
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x3049
	.byte	0x20
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x2283
	.byte	0x24
	.uleb128 0x11
	.string	"BCU"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x2e34
	.byte	0x40
	.uleb128 0x11
	.string	"reserved_44"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x2263
	.byte	0x44
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x3612
	.byte	0x48
	.uleb128 0x11
	.string	"reserved_4C"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x2263
	.byte	0x4c
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x2f46
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_58"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x22a3
	.byte	0x58
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x2df2
	.byte	0x80
	.uleb128 0x11
	.string	"reserved_98"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x22b3
	.byte	0x98
	.uleb128 0x1f
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x33f6
	.uahalf	0x190
	.uleb128 0x1f
	.string	"reserved_1F0"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x394a
	.uahalf	0x1f0
	.uleb128 0x1f
	.string	"SENT"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x348c
	.uahalf	0x350
	.uleb128 0x1f
	.string	"reserved_360"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x395b
	.uahalf	0x360
	.uleb128 0x1f
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x2f01
	.uahalf	0x420
	.uleb128 0x1f
	.string	"reserved_440"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x396b
	.uahalf	0x440
	.uleb128 0x1f
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x324d
	.uahalf	0x460
	.uleb128 0x1f
	.string	"STM"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x3535
	.uahalf	0x490
	.uleb128 0x1f
	.string	"DMA"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x2ff3
	.uahalf	0x4f0
	.uleb128 0x1f
	.string	"reserved_540"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x397b
	.uahalf	0x540
	.uleb128 0x1f
	.string	"ETH"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x30f5
	.uahalf	0x8f0
	.uleb128 0x1f
	.string	"reserved_8F4"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x2293
	.uahalf	0x8f4
	.uleb128 0x1f
	.string	"CAN"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x2eab
	.uahalf	0x900
	.uleb128 0x1f
	.string	"reserved_960"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x396b
	.uahalf	0x960
	.uleb128 0x1f
	.string	"VADC"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x35d0
	.uahalf	0x980
	.uleb128 0x1f
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x30a0
	.uahalf	0xbe0
	.uleb128 0x1f
	.string	"PMU"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x33a0
	.uahalf	0xc30
	.uleb128 0x1f
	.string	"reserved_C38"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x398c
	.uahalf	0xc38
	.uleb128 0x1f
	.string	"HSM"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x32f8
	.uahalf	0xcc0
	.uleb128 0x1f
	.string	"reserved_CC8"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x2253
	.uahalf	0xcc8
	.uleb128 0x1f
	.string	"SCU"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x3436
	.uahalf	0xcd0
	.uleb128 0x1f
	.string	"reserved_CE4"
	.byte	0x8
	.uahalf	0x1f7
	.uaword	0x399c
	.uahalf	0xce4
	.uleb128 0x1f
	.string	"SMU"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x34e1
	.uahalf	0xd10
	.uleb128 0x1f
	.string	"reserved_D1C"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x39ac
	.uahalf	0xd1c
	.uleb128 0x1f
	.string	"LMU"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x334c
	.uahalf	0xde0
	.uleb128 0x1f
	.string	"reserved_DE4"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x39bc
	.uahalf	0xde4
	.uleb128 0x1f
	.string	"EVR"
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x3149
	.uahalf	0xfb0
	.uleb128 0x1f
	.string	"reserved_FB8"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x2253
	.uahalf	0xfb8
	.uleb128 0x1f
	.string	"FFT"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x319d
	.uahalf	0xfc0
	.uleb128 0x1f
	.string	"reserved_FCC"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x39cd
	.uahalf	0xfcc
	.uleb128 0x1f
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x31f4
	.uahalf	0x1000
	.uleb128 0x1f
	.string	"GTM"
	.byte	0x8
	.uahalf	0x201
	.uaword	0x32a4
	.uahalf	0x1600
	.uleb128 0x1f
	.string	"reserved_1BC0"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x39dd
	.uahalf	0x1bc0
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x395b
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x15f
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x396b
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xbf
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x397b
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x398c
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x3af
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x399c
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x87
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x39ac
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x2b
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x39bc
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0xc3
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x39cd
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x1cb
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x39dd
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uaword	0x39ee
	.uleb128 0x1c
	.uaword	0x21d0
	.uahalf	0x43f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x39fe
	.uleb128 0x12
	.uaword	0x362d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21dc
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0x6f
	.uaword	0x3aed
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x76
	.uaword	0x3a09
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0xe5
	.uaword	0x3cc7
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xf3
	.uaword	0x3b0a
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x145
	.uaword	0x3ef9
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x155
	.uaword	0x3ceb
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x15b
	.uaword	0x3f67
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0x3f1f
	.uleb128 0x21
	.string	"IfxAsclin_setDisableModuleRequest"
	.byte	0x2
	.uahalf	0x8bb
	.byte	0x1
	.byte	0x3
	.uaword	0x3fc0
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8bb
	.uaword	0x3a03
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableParityErrorFlag"
	.byte	0x2
	.uahalf	0x720
	.byte	0x1
	.byte	0x3
	.uaword	0x4006
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x720
	.uaword	0x3a03
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x720
	.uaword	0x1ac
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x73e
	.byte	0x1
	.byte	0x3
	.uaword	0x404f
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x73e
	.uaword	0x3a03
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x73e
	.uaword	0x1ac
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setEnableModuleRequest"
	.byte	0x2
	.uahalf	0x8c1
	.byte	0x1
	.byte	0x3
	.uaword	0x4087
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8c1
	.uaword	0x3a03
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockSource"
	.byte	0x2
	.uahalf	0x78c
	.byte	0x1
	.uaword	0x1cc
	.byte	0x3
	.uaword	0x40bb
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x78c
	.uaword	0x3a03
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getPdFrequency"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uaword	0x40ee
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x9a
	.uaword	0x3a03
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getIndex"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x223c
	.byte	0x1
	.uaword	0x4136
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x80
	.uaword	0x3a03
	.uleb128 0x27
	.string	"index"
	.byte	0x1
	.byte	0x82
	.uaword	0x1fd
	.uleb128 0x27
	.string	"result"
	.byte	0x1
	.byte	0x83
	.uaword	0x223c
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockStatus"
	.byte	0x2
	.uahalf	0x792
	.byte	0x1
	.uaword	0x1ac
	.byte	0x3
	.uaword	0x416a
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x792
	.uaword	0x3a03
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxAsclin_setClockSource"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.byte	0x1
	.uaword	0x41a7
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x164
	.uaword	0x3a03
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x164
	.uaword	0x3aed
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x921
	.byte	0x1
	.byte	0x3
	.uaword	0x41e1
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x921
	.uaword	0x3a03
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x921
	.uaword	0x1d9
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setNumerator"
	.byte	0x2
	.uahalf	0x90f
	.byte	0x1
	.byte	0x3
	.uaword	0x421b
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x90f
	.uaword	0x3a03
	.uleb128 0x22
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x90f
	.uaword	0x1d9
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setDenominator"
	.byte	0x2
	.uahalf	0x8b5
	.byte	0x1
	.byte	0x3
	.uaword	0x4257
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8b5
	.uaword	0x3a03
	.uleb128 0x22
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x8b5
	.uaword	0x1d9
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setOversampling"
	.byte	0x2
	.uahalf	0x915
	.byte	0x1
	.byte	0x3
	.uaword	0x429a
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x915
	.uaword	0x3a03
	.uleb128 0x23
	.string	"ovsFactor"
	.byte	0x2
	.uahalf	0x915
	.uaword	0x3cc7
	.byte	0
	.uleb128 0x29
	.string	"Ifx__maxu"
	.byte	0x3
	.byte	0xa8
	.byte	0x1
	.uaword	0x1fd
	.byte	0x3
	.uaword	0x42cf
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0xa8
	.uaword	0x1fd
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0xa8
	.uaword	0x1fd
	.uleb128 0x27
	.string	"res"
	.byte	0x3
	.byte	0xaa
	.uaword	0x1fd
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_disableModule"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4363
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x37
	.uaword	0x3a03
	.uaword	.LLST0
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x39
	.uaword	0x1d9
	.uaword	.LLST1
	.uleb128 0x2e
	.uaword	0x3f87
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3b
	.uaword	0x4334
	.uleb128 0x2f
	.uaword	0x3fb3
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL1
	.uaword	0x50bf
	.uleb128 0x31
	.uaword	.LVL3
	.uaword	0x50eb
	.uaword	0x4351
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x5115
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableAscErrorFlags"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4411
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x40
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.string	"parEnable"
	.byte	0x1
	.byte	0x40
	.uaword	0x1ac
	.uaword	.LLST2
	.uleb128 0x35
	.string	"rfoEnable"
	.byte	0x1
	.byte	0x40
	.uaword	0x1ac
	.uaword	.LLST3
	.uleb128 0x36
	.uaword	0x3fc0
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x42
	.uaword	0x43f0
	.uleb128 0x37
	.uaword	0x3ff6
	.uaword	.LLST2
	.uleb128 0x2f
	.uaword	0x3fea
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4006
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x43
	.uleb128 0x37
	.uaword	0x403f
	.uaword	.LLST5
	.uleb128 0x2f
	.uaword	0x4033
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableModule"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x44a4
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x47
	.uaword	0x3a03
	.uaword	.LLST6
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x49
	.uaword	0x1d9
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x404f
	.uaword	.LBB74
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x4b
	.uaword	0x4475
	.uleb128 0x2f
	.uaword	0x407a
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL10
	.uaword	0x50bf
	.uleb128 0x31
	.uaword	.LVL12
	.uaword	0x50eb
	.uaword	0x4492
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x5115
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getAddress"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x3a03
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x44ef
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x50
	.uaword	0x223c
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"module"
	.byte	0x1
	.byte	0x52
	.uaword	0x3a03
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getFaFrequency"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4595
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x61
	.uaword	0x3a03
	.uaword	.LLST8
	.uleb128 0x2d
	.string	"frequency"
	.byte	0x1
	.byte	0x63
	.uaword	0x260
	.uaword	.LLST9
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.byte	0x64
	.uaword	0x3aed
	.uleb128 0x36
	.uaword	0x4087
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x64
	.uaword	0x456c
	.uleb128 0x37
	.uaword	0x40ae
	.uaword	.LLST8
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x513d
	.uleb128 0x3c
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x5166
	.uleb128 0x3c
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x518c
	.uleb128 0x3c
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x51b1
	.byte	0
	.uleb128 0x3d
	.uaword	0x40ee
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45c3
	.uleb128 0x2f
	.uaword	0x410f
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.uaword	0x411a
	.uaword	.LLST11
	.uleb128 0x3e
	.uaword	0x4127
	.uaword	.LLST12
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getOvsFrequency"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x462e
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x94
	.uaword	0x3a03
	.uaword	.LLST13
	.uleb128 0x3f
	.uaword	0x40bb
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x96
	.uleb128 0x37
	.uaword	0x40e2
	.uaword	.LLST14
	.uleb128 0x40
	.uaword	.LVL31
	.uaword	0x44ef
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x40bb
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x465c
	.uleb128 0x37
	.uaword	0x40e2
	.uaword	.LLST15
	.uleb128 0x40
	.uaword	.LVL33
	.uaword	0x44ef
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getShiftFrequency"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	0x260
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46b0
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa0
	.uaword	0x3a03
	.uaword	.LLST16
	.uleb128 0x40
	.uaword	.LVL35
	.uaword	0x45c3
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerEr"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	0x471f
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x471f
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa6
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x40ee
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xa8
	.uleb128 0x2f
	.uaword	0x410f
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x3e
	.uaword	0x411a
	.uaword	.LLST17
	.uleb128 0x3e
	.uaword	0x4127
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4725
	.uleb128 0x12
	.uaword	0x240e
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerRx"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	0x471f
	.uaword	.LFB375
	.uaword	.LFE375
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4799
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xac
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x40ee
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xae
	.uleb128 0x2f
	.uaword	0x410f
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x3e
	.uaword	0x411a
	.uaword	.LLST19
	.uleb128 0x3e
	.uaword	0x4127
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerTx"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x471f
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4808
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xb2
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x40ee
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xb4
	.uleb128 0x2f
	.uaword	0x410f
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x3e
	.uaword	0x411a
	.uaword	.LLST21
	.uleb128 0x3e
	.uaword	0x4127
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read16"
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x486d
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xb8
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xb8
	.uaword	0x486d
	.uaword	.LLST23
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xb8
	.uaword	0x1fd
	.uaword	.LLST24
	.uleb128 0x42
	.uaword	.LASF22
	.byte	0x1
	.byte	0xba
	.uaword	0x4873
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1d9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4879
	.uleb128 0x12
	.uaword	0x1e7e
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read32"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48e3
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xc6
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xc6
	.uaword	0x48e3
	.uaword	.LLST25
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xc6
	.uaword	0x1fd
	.uaword	.LLST26
	.uleb128 0x42
	.uaword	.LASF22
	.byte	0x1
	.byte	0xc8
	.uaword	0x4873
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fd
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read8"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x494d
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xd4
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xd4
	.uaword	0x494d
	.uaword	.LLST27
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xd4
	.uaword	0x1fd
	.uaword	.LLST28
	.uleb128 0x42
	.uaword	.LASF22
	.byte	0x1
	.byte	0xd6
	.uaword	0x4873
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1cc
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_resetModule"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.uaword	.LFB380
	.uaword	.LFE380
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x49f5
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xe2
	.uaword	0x3a03
	.uaword	.LLST29
	.uleb128 0x2d
	.string	"passwd"
	.byte	0x1
	.byte	0xe4
	.uaword	0x1d9
	.uaword	.LLST30
	.uleb128 0x30
	.uaword	.LVL66
	.uaword	0x50bf
	.uleb128 0x31
	.uaword	.LVL68
	.uaword	0x50eb
	.uaword	0x49bb
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL69
	.uaword	0x5115
	.uaword	0x49cf
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL70
	.uaword	0x50eb
	.uaword	0x49e3
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x5115
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_setBaudrateBitFields"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	.LFB381
	.uaword	.LFE381
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bb5
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xf5
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF17
	.byte	0x1
	.byte	0xf5
	.uaword	0x1d9
	.uaword	.LLST31
	.uleb128 0x2c
	.uaword	.LASF18
	.byte	0x1
	.byte	0xf5
	.uaword	0x1d9
	.uaword	.LLST32
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.byte	0xf5
	.uaword	0x1d9
	.uaword	.LLST33
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0xf5
	.uaword	0x3cc7
	.uaword	.LLST34
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.byte	0xf7
	.uaword	0x3aed
	.uleb128 0x2e
	.uaword	0x4087
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xf7
	.uaword	0x4a97
	.uleb128 0x2f
	.uaword	0x40ae
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.uaword	0x416a
	.uaword	.LBB103
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xf8
	.uaword	0x4ad0
	.uleb128 0x43
	.uaword	0x419a
	.byte	0
	.uleb128 0x2f
	.uaword	0x418e
	.byte	0x1
	.byte	0x64
	.uleb128 0x44
	.uaword	0x4136
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x16b
	.uleb128 0x2f
	.uaword	0x415d
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x41a7
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xf9
	.uaword	0x4af4
	.uleb128 0x37
	.uaword	0x41d4
	.uaword	.LLST35
	.uleb128 0x2f
	.uaword	0x41c8
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x41e1
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xfa
	.uaword	0x4b18
	.uleb128 0x37
	.uaword	0x420e
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	0x4202
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x421b
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xfb
	.uaword	0x4b3c
	.uleb128 0x37
	.uaword	0x424a
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	0x423e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4257
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0xfc
	.uaword	0x4b60
	.uleb128 0x37
	.uaword	0x4287
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0x427b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x416a
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2f
	.uaword	0x419a
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.uaword	0x418e
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.uaword	0x4136
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x4b9b
	.uleb128 0x37
	.uaword	0x415d
	.uaword	.LLST39
	.byte	0
	.uleb128 0x44
	.uaword	0x4136
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x2f
	.uaword	0x415d
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.string	"IfxAsclin_setBitTiming"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	0x1ac
	.uaword	.LFB382
	.uaword	.LFE382
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4eb4
	.uleb128 0x47
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x101
	.uaword	0x3a03
	.uaword	.LLST40
	.uleb128 0x48
	.string	"baudrate"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x260
	.uaword	.LLST41
	.uleb128 0x47
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x101
	.uaword	0x3cc7
	.uaword	.LLST42
	.uleb128 0x48
	.string	"samplepoint"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x3ef9
	.uaword	.LLST43
	.uleb128 0x48
	.string	"medianFilter"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x3f67
	.uaword	.LLST44
	.uleb128 0x49
	.string	"source"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x3aed
	.uleb128 0x4a
	.string	"fOvs"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x260
	.byte	0x1
	.byte	0x5d
	.uleb128 0x4b
	.string	"d"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1fd
	.uaword	.LLST45
	.uleb128 0x4b
	.string	"n"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1fd
	.uaword	.LLST46
	.uleb128 0x4b
	.string	"dBest"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1fd
	.uaword	.LLST47
	.uleb128 0x4b
	.string	"nBest"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1fd
	.uaword	.LLST48
	.uleb128 0x4b
	.string	"f"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x260
	.uaword	.LLST49
	.uleb128 0x49
	.string	"fpd"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x260
	.uleb128 0x4b
	.string	"relError"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x260
	.uaword	.LLST50
	.uleb128 0x4b
	.string	"limit"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x260
	.uaword	.LLST51
	.uleb128 0x4b
	.string	"terminated"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x1ac
	.uaword	.LLST52
	.uleb128 0x4b
	.string	"newRelError"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x260
	.uaword	.LLST53
	.uleb128 0x4b
	.string	"adder_facL"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1fd
	.uaword	.LLST54
	.uleb128 0x4b
	.string	"adder_facH"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1fd
	.uaword	.LLST55
	.uleb128 0x4b
	.string	"adder_facL_min"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1fd
	.uaword	.LLST56
	.uleb128 0x4c
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1fd
	.uaword	.LLST57
	.uleb128 0x4d
	.uaword	0x4087
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x103
	.uaword	0x4d90
	.uleb128 0x37
	.uaword	0x40ae
	.uaword	.LLST40
	.byte	0
	.uleb128 0x4d
	.uaword	0x40bb
	.uaword	.LBB130
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x109
	.uaword	0x4dbe
	.uleb128 0x37
	.uaword	0x40e2
	.uaword	.LLST59
	.uleb128 0x40
	.uaword	.LVL89
	.uaword	0x44ef
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x429a
	.uaword	.LBB135
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x4ded
	.uleb128 0x43
	.uaword	0x42ba
	.byte	0x4
	.uleb128 0x4e
	.uaword	0x42b1
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x3e
	.uaword	0x42c3
	.uaword	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x429a
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x4e24
	.uleb128 0x43
	.uaword	0x42ba
	.byte	0x1
	.uleb128 0x37
	.uaword	0x42b1
	.uaword	.LLST61
	.uleb128 0x4f
	.uaword	.LBB141
	.uaword	.LBE141
	.uleb128 0x3e
	.uaword	0x42c3
	.uaword	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x416a
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x151
	.uaword	0x4e5e
	.uleb128 0x43
	.uaword	0x419a
	.byte	0
	.uleb128 0x2f
	.uaword	0x418e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x44
	.uaword	0x4136
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.uahalf	0x16b
	.uleb128 0x2f
	.uaword	0x415d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x50
	.uaword	0x416a
	.uaword	.LBB146
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x15e
	.uleb128 0x2f
	.uaword	0x419a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x418e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x45
	.uaword	0x4136
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x4e9a
	.uleb128 0x37
	.uaword	0x415d
	.uaword	.LLST63
	.byte	0
	.uleb128 0x50
	.uaword	0x4136
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x2f
	.uaword	0x415d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x416a
	.uaword	.LFB383
	.uaword	.LFE383
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f0d
	.uleb128 0x2f
	.uaword	0x418e
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	0x419a
	.byte	0x1
	.byte	0x54
	.uleb128 0x45
	.uaword	0x4136
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x4ef4
	.uleb128 0x37
	.uaword	0x415d
	.uaword	.LLST64
	.byte	0
	.uleb128 0x44
	.uaword	0x4136
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x2f
	.uaword	0x415d
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxAsclin_write16"
	.byte	0x1
	.uahalf	0x176
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB384
	.uaword	.LFE384
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f78
	.uleb128 0x52
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x176
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x47
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x176
	.uaword	0x486d
	.uaword	.LLST65
	.uleb128 0x47
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x176
	.uaword	0x1fd
	.uaword	.LLST66
	.uleb128 0x53
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x178
	.uaword	0x4f78
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f7e
	.uleb128 0x12
	.uaword	0x1f48
	.uleb128 0x51
	.byte	0x1
	.string	"IfxAsclin_write32"
	.byte	0x1
	.uahalf	0x184
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB385
	.uaword	.LFE385
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4fee
	.uleb128 0x52
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x184
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x47
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x184
	.uaword	0x48e3
	.uaword	.LLST67
	.uleb128 0x47
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x184
	.uaword	0x1fd
	.uaword	.LLST68
	.uleb128 0x53
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x186
	.uaword	0x4f78
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxAsclin_write8"
	.byte	0x1
	.uahalf	0x192
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB386
	.uaword	.LFE386
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5058
	.uleb128 0x52
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x192
	.uaword	0x3a03
	.byte	0x1
	.byte	0x64
	.uleb128 0x47
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x192
	.uaword	0x494d
	.uaword	.LLST69
	.uleb128 0x47
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x192
	.uaword	0x1fd
	.uaword	.LLST70
	.uleb128 0x53
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x194
	.uaword	0x4f78
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x14
	.uaword	0x2ae
	.uaword	0x5068
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0x1
	.byte	0
	.uleb128 0x54
	.string	"IfxAsclin_cfg_indexMap"
	.byte	0x7
	.byte	0x5b
	.uaword	0x5088
	.byte	0x1
	.byte	0x1
	.uleb128 0x55
	.uaword	0x5058
	.uleb128 0x14
	.uaword	0x2ae
	.uaword	0x509d
	.uleb128 0x15
	.uaword	0x21d0
	.byte	0
	.byte	0
	.uleb128 0x54
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xa4
	.uaword	0x50ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x55
	.uaword	0x508d
	.uleb128 0x56
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x181
	.byte	0x1
	.uaword	0x1d9
	.byte	0x1
	.uleb128 0x57
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0x5115
	.uleb128 0x58
	.uaword	0x1d9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0x513d
	.uleb128 0x58
	.uaword	0x1d9
	.byte	0
	.uleb128 0x56
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0xb
	.uahalf	0x388
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x56
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0xb
	.uahalf	0x37c
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x56
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0xb
	.uahalf	0x3a6
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x56
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0xb
	.uahalf	0x352
	.byte	0x1
	.uaword	0x260
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
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE366
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE366
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE366
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE367
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-1
	.uaword	.LFE367
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE369
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL24
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
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LFE372
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-1
	.uaword	.LFE373
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE377
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE378
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL65
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL66-1
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68-1
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL72
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LFE381
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL72
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL79
	.uaword	.LFE381
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL72
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL81
	.uaword	.LFE381
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL72
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL83
	.uaword	.LFE381
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1
	.uaword	.LFE382
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89-1
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL101
	.uaword	.LFE382
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL89-1
	.uaword	.LVL92
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL89-1
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL89-1
	.uaword	.LFE382
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL88
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL106
	.uaword	.LFE382
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL99
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL88
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL88
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x174
	.byte	0xf7
	.uleb128 0x16b
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x174
	.byte	0xf7
	.uleb128 0x16b
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x16b
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x174
	.byte	0xf7
	.uleb128 0x16b
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x174
	.byte	0xf7
	.uleb128 0x16b
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113
	.uaword	.LVL120
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x174
	.byte	0xf7
	.uleb128 0x16b
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL95
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL105
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL119
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL98
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL98
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL114
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL108
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL99
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL109
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL116
	.uaword	.LVL119
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL88
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1
	.uaword	.LFE382
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL91
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL92
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xc4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	0
	.uaword	0
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0
	.uaword	0
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	0
	.uaword	0
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	0
	.uaword	0
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0
	.uaword	0
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB368
	.uaword	.LFE368
	.uaword	.LFB369
	.uaword	.LFE369
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
	.uaword	.LFB372
	.uaword	.LFE372
	.uaword	.LFB373
	.uaword	.LFE373
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	.LFB375
	.uaword	.LFE375
	.uaword	.LFB376
	.uaword	.LFE376
	.uaword	.LFB377
	.uaword	.LFE377
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	.LFB380
	.uaword	.LFE380
	.uaword	.LFB381
	.uaword	.LFE381
	.uaword	.LFB382
	.uaword	.LFE382
	.uaword	.LFB383
	.uaword	.LFE383
	.uaword	.LFB384
	.uaword	.LFE384
	.uaword	.LFB385
	.uaword	.LFE385
	.uaword	.LFB386
	.uaword	.LFE386
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"reserved_29"
.LASF23:
	.string	"oversampling"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_7"
.LASF11:
	.string	"reserved_8"
.LASF12:
	.string	"INTLEVEL"
.LASF18:
	.string	"numerator"
.LASF4:
	.string	"reserved_4"
.LASF17:
	.string	"prescaler"
.LASF15:
	.string	"asclin"
.LASF14:
	.string	"CERBERUS"
.LASF9:
	.string	"reserved_10"
.LASF1:
	.string	"reserved_12"
.LASF20:
	.string	"data"
.LASF8:
	.string	"reserved_18"
.LASF21:
	.string	"count"
.LASF16:
	.string	"clockSource"
.LASF24:
	.string	"txData"
.LASF22:
	.string	"rxData"
.LASF19:
	.string	"denominator"
.LASF13:
	.string	"reserved_21"
.LASF5:
	.string	"reserved_24"
.LASF2:
	.string	"reserved_28"
	.extern	IfxScuCcu_getBaud2Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getOsc0Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getPllErayFrequency,STT_FUNC,0
	.extern	IfxAsclin_cfg_indexMap,STT_OBJECT,16
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
