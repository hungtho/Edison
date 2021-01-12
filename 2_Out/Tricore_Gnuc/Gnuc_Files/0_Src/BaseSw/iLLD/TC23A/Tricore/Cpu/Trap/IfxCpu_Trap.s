	.file	"IfxCpu_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxCpu_Trap_memoryManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_memoryManagementError
	.type	IfxCpu_Trap_memoryManagementError, @function
IfxCpu_Trap_memoryManagementError:
.LFB217:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.loc 1 130 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
.LBB75:
.LBB76:
.LBB77:
.LBB78:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL1:
#NO_APP
.LBE78:
.LBE77:
.LBB79:
.LBB80:
.LBB81:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL2:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL3:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 0, 8, 11
	and	%d15, %d15, 7
.LVL4:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE81:
.LBE80:
.LBE79:
.LBE76:
.LBE75:
	.loc 1 133 0
	ld.d	%e2, [%SP]0
.LBB82:
.LBB83:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE83:
.LBE82:
	.loc 1 135 0
#APP
	# 135 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 136 0
	# 136 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE217:
	.size	IfxCpu_Trap_memoryManagementError, .-IfxCpu_Trap_memoryManagementError
.section .text.IfxCpu_Trap_internalProtectionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_internalProtectionError
	.type	IfxCpu_Trap_internalProtectionError, @function
IfxCpu_Trap_internalProtectionError:
.LFB218:
	.loc 1 141 0
.LVL5:
	sub.a	%SP, 8
.LCFI1:
.LBB84:
.LBB85:
.LBB86:
.LBB87:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL6:
#NO_APP
.LBE87:
.LBE86:
.LBB88:
.LBB89:
.LBB90:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL7:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL8:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 1, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL9:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE90:
.LBE89:
.LBE88:
.LBE85:
.LBE84:
	.loc 1 144 0
	ld.d	%e2, [%SP]0
.LBB91:
.LBB92:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE92:
.LBE91:
	.loc 1 146 0
#APP
	# 146 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 147 0
	# 147 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE218:
	.size	IfxCpu_Trap_internalProtectionError, .-IfxCpu_Trap_internalProtectionError
.section .text.IfxCpu_Trap_instructionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_instructionError
	.type	IfxCpu_Trap_instructionError, @function
IfxCpu_Trap_instructionError:
.LFB219:
	.loc 1 152 0
.LVL10:
	sub.a	%SP, 8
.LCFI2:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL11:
#NO_APP
.LBE96:
.LBE95:
.LBB97:
.LBB98:
.LBB99:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL12:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL13:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 2, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL14:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE99:
.LBE98:
.LBE97:
.LBE94:
.LBE93:
	.loc 1 155 0
	ld.d	%e2, [%SP]0
.LBB100:
.LBB101:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE101:
.LBE100:
	.loc 1 157 0
#APP
	# 157 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 158 0
	# 158 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE219:
	.size	IfxCpu_Trap_instructionError, .-IfxCpu_Trap_instructionError
.section .text.IfxCpu_Trap_contextManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_contextManagementError
	.type	IfxCpu_Trap_contextManagementError, @function
IfxCpu_Trap_contextManagementError:
.LFB220:
	.loc 1 163 0
.LVL15:
	sub.a	%SP, 8
.LCFI3:
.LBB102:
.LBB103:
.LBB104:
.LBB105:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL16:
#NO_APP
.LBE105:
.LBE104:
.LBB106:
.LBB107:
.LBB108:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL17:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL18:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 3, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL19:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE108:
.LBE107:
.LBE106:
.LBE103:
.LBE102:
	.loc 1 166 0
	ld.d	%e2, [%SP]0
.LBB109:
.LBB110:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE110:
.LBE109:
	.loc 1 168 0
#APP
	# 168 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 169 0
	# 169 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE220:
	.size	IfxCpu_Trap_contextManagementError, .-IfxCpu_Trap_contextManagementError
.section .text.IfxCpu_Trap_busError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_busError
	.type	IfxCpu_Trap_busError, @function
IfxCpu_Trap_busError:
.LFB221:
	.loc 1 174 0
.LVL20:
	sub.a	%SP, 8
.LCFI4:
.LBB111:
.LBB112:
.LBB113:
.LBB114:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL21:
#NO_APP
.LBE114:
.LBE113:
.LBB115:
.LBB116:
.LBB117:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL22:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL23:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 4, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL24:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE117:
.LBE116:
.LBE115:
.LBE112:
.LBE111:
	.loc 1 177 0
	ld.d	%e2, [%SP]0
.LBB118:
.LBB119:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE119:
.LBE118:
	.loc 1 179 0
#APP
	# 179 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 180 0
	# 180 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE221:
	.size	IfxCpu_Trap_busError, .-IfxCpu_Trap_busError
.section .text.IfxCpu_Trap_assertion,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_assertion
	.type	IfxCpu_Trap_assertion, @function
IfxCpu_Trap_assertion:
.LFB222:
	.loc 1 185 0
.LVL25:
	sub.a	%SP, 8
.LCFI5:
.LBB120:
.LBB121:
.LBB122:
.LBB123:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL26:
#NO_APP
.LBE123:
.LBE122:
.LBB124:
.LBB125:
.LBB126:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL27:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL28:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 5, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL29:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE126:
.LBE125:
.LBE124:
.LBE121:
.LBE120:
	.loc 1 188 0
	ld.d	%e2, [%SP]0
.LBB127:
.LBB128:
	.loc 2 1426 0
#APP
	# 1426 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE128:
.LBE127:
	.loc 1 190 0
#APP
	# 190 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 191 0
	# 191 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE222:
	.size	IfxCpu_Trap_assertion, .-IfxCpu_Trap_assertion
.section .text.IfxCpu_Trap_systemCall_Cpu0,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu0
	.type	IfxCpu_Trap_systemCall_Cpu0, @function
IfxCpu_Trap_systemCall_Cpu0:
.LFB223:
	.loc 1 196 0
.LVL30:
	sub.a	%SP, 8
.LCFI6:
.LBB129:
.LBB130:
.LBB131:
.LBB132:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL31:
#NO_APP
.LBE132:
.LBE131:
.LBB133:
.LBB134:
.LBB135:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL32:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL33:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL34:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE135:
.LBE134:
.LBE133:
.LBE130:
.LBE129:
	.loc 1 199 0
	ld.d	%e2, [%SP]0
	.loc 1 200 0
#APP
	# 200 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 201 0
	# 201 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE223:
	.size	IfxCpu_Trap_systemCall_Cpu0, .-IfxCpu_Trap_systemCall_Cpu0
.section .text.IfxCpu_Trap_nonMaskableInterrupt,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_nonMaskableInterrupt
	.type	IfxCpu_Trap_nonMaskableInterrupt, @function
IfxCpu_Trap_nonMaskableInterrupt:
.LFB224:
	.loc 1 260 0
.LVL35:
	sub.a	%SP, 8
.LCFI7:
.LBB136:
.LBB137:
.LBB138:
.LBB139:
	.loc 2 1558 0
#APP
	# 1558 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL36:
#NO_APP
.LBE139:
.LBE138:
.LBB140:
.LBB141:
.LBB142:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL37:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL38:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 7, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL39:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE142:
.LBE141:
.LBE140:
.LBE137:
.LBE136:
	.loc 1 263 0
	ld.d	%e2, [%SP]0
	.loc 1 264 0
#APP
	# 264 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 265 0
	# 265 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE224:
	.size	IfxCpu_Trap_nonMaskableInterrupt, .-IfxCpu_Trap_nonMaskableInterrupt
.section .traptab_cpu0,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable0
	.type	IfxCpu_Trap_vectorTable0, @function
IfxCpu_Trap_vectorTable0:
.LFB225:
	.loc 1 287 0
	.loc 1 288 0
#APP
	# 288 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 288 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 288 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 288 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 288 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 289 0
	# 289 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 289 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 289 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 289 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 289 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 290 0
	# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 290 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 291 0
	# 291 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 291 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 291 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 291 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 291 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 292 0
	# 292 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 292 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 292 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 292 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 292 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 293 0
	# 293 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 293 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 294 0
	# 294 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu0
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu0
#APP
	# 294 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 295 0
	# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE225:
	.size	IfxCpu_Trap_vectorTable0, .-IfxCpu_Trap_vectorTable0
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
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.byte	0x4
	.uaword	.LCFI0-.LFB217
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.byte	0x4
	.uaword	.LCFI1-.LFB218
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.byte	0x4
	.uaword	.LCFI2-.LFB219
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.byte	0x4
	.uaword	.LCFI3-.LFB220
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.byte	0x4
	.uaword	.LCFI4-.LFB221
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.byte	0x4
	.uaword	.LCFI5-.LFB222
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.byte	0x4
	.uaword	.LCFI6-.LFB223
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.byte	0x4
	.uaword	.LCFI7-.LFB224
	.byte	0xe
	.uleb128 0x8
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
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
	.file 8 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd50
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x69
	.uaword	0x193
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x71
	.uaword	0x177
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
	.uaword	0x16b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x24d
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x8f
	.uaword	0x274
	.uleb128 0x8
	.string	"module"
	.byte	0x5
	.byte	0x91
	.uaword	0x247
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x5
	.byte	0x92
	.uaword	0x20b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x93
	.uaword	0x24e
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x4b
	.uaword	0x3ad
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_memoryManagement"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_internalProtection"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_instructionErrors"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_contextManagement"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_bus"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_assertion"
	.sleb128 5
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_systemCall"
	.sleb128 6
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_nonMaskableInterrupt"
	.sleb128 7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0xba
	.uaword	0x3f5
	.uleb128 0x8
	.string	"tAddr"
	.byte	0x6
	.byte	0xbc
	.uaword	0x3f5
	.byte	0
	.uleb128 0xb
	.string	"tId"
	.byte	0x6
	.byte	0xbd
	.uaword	0x3f5
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.uleb128 0xb
	.string	"tClass"
	.byte	0x6
	.byte	0xbe
	.uaword	0x3f5
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x4
	.uleb128 0xb
	.string	"tCpu"
	.byte	0x6
	.byte	0xbf
	.uaword	0x3f5
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"IfxCpu_Trap"
	.byte	0x6
	.byte	0xc0
	.uaword	0x3ad
	.uleb128 0xc
	.uaword	0x3f5
	.uleb128 0xd
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x5c
	.uaword	0x465
	.uleb128 0xb
	.string	"CORE_ID"
	.byte	0x7
	.byte	0x5e
	.uaword	0x418
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x7
	.byte	0x5f
	.uaword	0x418
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x7
	.byte	0x60
	.uaword	0x41d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x4a9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3f5
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x18c
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x465
	.byte	0
	.uleb128 0x10
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x481
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x80
	.uaword	0x4f5
	.uleb128 0xa
	.string	"IfxCpu_Id_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Id_none"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_Id"
	.byte	0x8
	.byte	0x83
	.uaword	0x4cd
	.uleb128 0x11
	.string	"Ifx__getA11"
	.byte	0x2
	.uahalf	0x613
	.byte	0x1
	.uaword	0x245
	.byte	0x3
	.uaword	0x52d
	.uleb128 0x12
	.string	"res"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x52d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c7
	.uleb128 0x11
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x305
	.byte	0x1
	.uaword	0x4f5
	.byte	0x3
	.uaword	0x56f
	.uleb128 0x12
	.string	"reg"
	.byte	0x3
	.uahalf	0x307
	.uaword	0x4a9
	.uleb128 0x13
	.uleb128 0x12
	.string	"__res"
	.byte	0x3
	.uahalf	0x308
	.uaword	0x3f5
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"IfxCpu_Trap_extractTrapInfo"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	0x405
	.byte	0x3
	.uaword	0x5c5
	.uleb128 0x15
	.string	"trapClass"
	.byte	0x1
	.byte	0x76
	.uaword	0x1a4
	.uleb128 0x15
	.string	"tin"
	.byte	0x1
	.byte	0x76
	.uaword	0x1c7
	.uleb128 0x16
	.string	"trapInfo"
	.byte	0x1
	.byte	0x78
	.uaword	0x405
	.byte	0
	.uleb128 0x17
	.string	"Ifx__debug"
	.byte	0x2
	.uahalf	0x590
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_memoryManagementError"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6c2
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x81
	.uaword	0x1c7
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x83
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.byte	0x84
	.uaword	0x6b2
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	0x598
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB76
	.uaword	.LBE76
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.byte	0x79
	.uaword	0x67e
	.uleb128 0x1e
	.uaword	.LBB78
	.uaword	.LBE78
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB80
	.uaword	.LBE80
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB81
	.uaword	.LBE81
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.byte	0x86
	.byte	0
	.uleb128 0xc
	.uaword	0x405
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_internalProtectionError"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b5
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1c7
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8e
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0x8f
	.uaword	0x7a5
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x1
	.uleb128 0x1e
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.byte	0x79
	.uaword	0x771
	.uleb128 0x1e
	.uaword	.LBB87
	.uaword	.LBE87
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB90
	.uaword	.LBE90
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.byte	0x91
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_instructionError"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x89c
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x97
	.uaword	0x1c7
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.byte	0x9a
	.uaword	0x88c
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x2
	.uleb128 0x1e
	.uaword	.LBB94
	.uaword	.LBE94
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB95
	.uaword	.LBE95
	.byte	0x1
	.byte	0x79
	.uaword	0x858
	.uleb128 0x1e
	.uaword	.LBB96
	.uaword	.LBE96
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB97
	.uaword	.LBE97
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB98
	.uaword	.LBE98
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0x9c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_contextManagementError"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x989
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xa2
	.uaword	0x1c7
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa4
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0xa5
	.uaword	0x979
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x3
	.uleb128 0x1e
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.byte	0x79
	.uaword	0x945
	.uleb128 0x1e
	.uaword	.LBB105
	.uaword	.LBE105
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB107
	.uaword	.LBE107
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB108
	.uaword	.LBE108
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB109
	.uaword	.LBE109
	.byte	0x1
	.byte	0xa7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_busError"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa68
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xad
	.uaword	0x1c7
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xaf
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x1
	.byte	0xb0
	.uaword	0xa58
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST12
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LBB112
	.uaword	.LBE112
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB113
	.uaword	.LBE113
	.byte	0x1
	.byte	0x79
	.uaword	0xa24
	.uleb128 0x1e
	.uaword	.LBB114
	.uaword	.LBE114
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB115
	.uaword	.LBE115
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB116
	.uaword	.LBE116
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.byte	0xb2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_assertion"
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb48
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xb8
	.uaword	0x1c7
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xba
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x56f
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.byte	0xbb
	.uaword	0xb38
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST15
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x5
	.uleb128 0x1e
	.uaword	.LBB121
	.uaword	.LBE121
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.byte	0x79
	.uaword	0xb04
	.uleb128 0x1e
	.uaword	.LBB123
	.uaword	.LBE123
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB126
	.uaword	.LBE126
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5c5
	.uaword	.LBB127
	.uaword	.LBE127
	.byte	0x1
	.byte	0xbd
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu0"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc1b
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xc3
	.uaword	0x1c7
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc5
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x56f
	.uaword	.LBB129
	.uaword	.LBE129
	.byte	0x1
	.byte	0xc6
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB130
	.uaword	.LBE130
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.byte	0x79
	.uaword	0xbe6
	.uleb128 0x1e
	.uaword	.LBB132
	.uaword	.LBE132
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB133
	.uaword	.LBE133
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB134
	.uaword	.LBE134
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_nonMaskableInterrupt"
	.byte	0x1
	.uahalf	0x103
	.byte	0x1
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf7
	.uleb128 0x25
	.string	"tin"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1c7
	.uaword	.LLST21
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x105
	.uaword	0x6c2
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x27
	.uaword	0x56f
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x106
	.uleb128 0x1c
	.uaword	0x5a9
	.uaword	.LLST21
	.uleb128 0x1d
	.uaword	0x598
	.byte	0x7
	.uleb128 0x1e
	.uaword	.LBB137
	.uaword	.LBE137
	.uleb128 0x1f
	.uaword	0x5b4
	.uleb128 0x1b
	.uaword	0x506
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.byte	0x79
	.uaword	0xcc2
	.uleb128 0x1e
	.uaword	.LBB139
	.uaword	.LBE139
	.uleb128 0x20
	.uaword	0x520
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0x7c
	.uleb128 0x1e
	.uaword	.LBB141
	.uaword	.LBE141
	.uleb128 0x1f
	.uaword	0x552
	.uleb128 0x1e
	.uaword	.LBB142
	.uaword	.LBE142
	.uleb128 0x22
	.uaword	0x55f
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable0"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x29
	.uaword	0x274
	.uaword	0xd31
	.uleb128 0x2a
	.uaword	0x4c1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xa4
	.uaword	0xd4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0xd21
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x26
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE217
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LFE219
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE220
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LFE221
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE222
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LFE223
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LFE224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB217
	.uaword	.LFE217
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"trapWatch"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
