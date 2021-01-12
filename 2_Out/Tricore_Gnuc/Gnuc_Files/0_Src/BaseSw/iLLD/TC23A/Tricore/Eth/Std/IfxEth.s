	.file	"IfxEth.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEth_wakeupReceiver.part.15,"ax",@progbits
	.align 1
	.type	IfxEth_wakeupReceiver.part.15, @function
IfxEth_wakeupReceiver.part.15:
.LFB334:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Eth/Std/IfxEth.c"
	.loc 1 897 0
.LVL0:
	.loc 1 904 0
	ld.w	%d15, [%a4]0
	jz.t	%d15, 7, .L2
	.loc 1 906 0
	movh.a	%a15, 61442
	mov	%d15, 128
	lea	%a15, [%a15] -4076
	st.w	[%a15]0, %d15
.L2:
.LVL1:
.LBB248:
.LBB249:
	.loc 1 861 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 862 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 863 0
	movh.a	%a15, 61442
	mov	%d15, 1
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LBE249:
.LBE248:
.LFE334:
	.size	IfxEth_wakeupReceiver.part.15, .-IfxEth_wakeupReceiver.part.15
.section .text.IfxEth_wakeupTransmitter.part.16,"ax",@progbits
	.align 1
	.type	IfxEth_wakeupTransmitter.part.16, @function
IfxEth_wakeupTransmitter.part.16:
.LFB335:
	.loc 1 914 0
.LVL2:
	.loc 1 921 0
	ld.w	%d15, [%a4]0
	jz.t	%d15, 2, .L8
	.loc 1 924 0
	movh.a	%a15, 61442
	mov	%d15, 36
	lea	%a15, [%a15] -4076
	st.w	[%a15]0, %d15
.L8:
.LVL3:
.LBB250:
.LBB251:
	.loc 1 871 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 872 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 873 0
	movh.a	%a15, 61442
	mov	%d15, 1
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	ret
.LBE251:
.LBE250:
.LFE335:
	.size	IfxEth_wakeupTransmitter.part.16, .-IfxEth_wakeupTransmitter.part.16
.section .text.IfxEth_disableModule,"ax",@progbits
	.align 1
	.global	IfxEth_disableModule
	.type	IfxEth_disableModule, @function
IfxEth_disableModule:
.LFB288:
	.loc 1 68 0
	.loc 1 69 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL4:
	.loc 1 70 0
	mov	%d4, %d2
	.loc 1 69 0
	mov	%d15, %d2
.LVL5:
	.loc 1 70 0
	call	IfxScuWdt_clearCpuEndinit
.LVL6:
	.loc 1 71 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12288
	ld.w	%d2, [%a15]0
	.loc 1 72 0
	mov	%d4, %d15
	.loc 1 71 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
	.loc 1 72 0
	j	IfxScuWdt_setCpuEndinit
.LVL7:
.LFE288:
	.size	IfxEth_disableModule, .-IfxEth_disableModule
.section .text.IfxEth_enableModule,"ax",@progbits
	.align 1
	.global	IfxEth_enableModule
	.type	IfxEth_enableModule, @function
IfxEth_enableModule:
.LFB289:
	.loc 1 77 0
.LBB252:
	.loc 1 79 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL8:
	.loc 1 80 0
	mov	%d4, %d2
	.loc 1 79 0
	mov	%d15, %d2
.LVL9:
	.loc 1 80 0
	call	IfxScuWdt_clearCpuEndinit
.LVL10:
	.loc 1 81 0
	movh.a	%a15, 61442
	mov	%d2, 0
	lea	%a15, [%a15] -12288
	st.w	[%a15]0, %d2
	.loc 1 82 0
	mov	%d4, %d15
	j	IfxScuWdt_setCpuEndinit
.LVL11:
.LBE252:
.LFE289:
	.size	IfxEth_enableModule, .-IfxEth_enableModule
.section .text.IfxEth_getReceiveBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_getReceiveBuffer
	.type	IfxEth_getReceiveBuffer, @function
IfxEth_getReceiveBuffer:
.LFB291:
	.loc 1 96 0
.LVL12:
	ld.a	%a15, [%a4] 124
.LVL13:
	.loc 1 97 0
	mov.a	%a12, 0
	.loc 1 100 0
	ld.w	%d15, [%a15]0
	jltz	%d15, .L15
	.loc 1 102 0
	ld.w	%d15, [%a4] 4
	add	%d15, 1
	st.w	[%a4] 4, %d15
.LVL14:
	.loc 1 104 0
	ld.a	%a12, [%a15] 8
.LVL15:
.L15:
.LBB253:
.LBB254:
	.loc 1 899 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 902 0
	jz.t	%d15, 19, .L16
	call	IfxEth_wakeupReceiver.part.15
.LVL16:
.L16:
.LBE254:
.LBE253:
	.loc 1 110 0
	mov.aa	%a2, %a12
	ret
.LFE291:
	.size	IfxEth_getReceiveBuffer, .-IfxEth_getReceiveBuffer
.section .text.IfxEth_getTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_getTransmitBuffer
	.type	IfxEth_getTransmitBuffer, @function
IfxEth_getTransmitBuffer:
.LFB292:
	.loc 1 114 0
.LVL17:
	ld.a	%a15, [%a4] 128
.LVL18:
	.loc 1 115 0
	mov.a	%a2, 0
	.loc 1 119 0
	ld.w	%d15, [%a15]0
	jltz	%d15, .L22
	.loc 1 121 0
	ld.a	%a2, [%a15] 8
.LVL19:
.L22:
	.loc 1 125 0
	ret
.LFE292:
	.size	IfxEth_getTransmitBuffer, .-IfxEth_getTransmitBuffer
.section .text.IfxEth_initConfig,"ax",@progbits
	.align 1
	.global	IfxEth_initConfig
	.type	IfxEth_initConfig, @function
IfxEth_initConfig:
.LFB294:
	.loc 1 267 0
.LVL20:
	.loc 1 299 0
	movh	%d2, hi:defaultConfig.10642
	mov.a	%a2, %d2
	mov.aa	%a3, %a4
	lea	%a15, [%a2] lo:defaultConfig.10642
		# #chunks=10, chunksize=8, remains=0
	lea	%a2, 10-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a3+]8, %e2
	loop	%a2, 0b
	.loc 1 300 0
	st.a	[%a4] 32, %a5
	ret
.LFE294:
	.size	IfxEth_initConfig, .-IfxEth_initConfig
.section .text.IfxEth_initReceiveDescriptors,"ax",@progbits
	.align 1
	.global	IfxEth_initReceiveDescriptors
	.type	IfxEth_initReceiveDescriptors, @function
IfxEth_initReceiveDescriptors:
.LFB295:
	.loc 1 305 0
.LVL21:
	ld.a	%a5, [%a4] 116
.LVL22:
	movh	%d15, hi:IfxEth_rxBuffer
	addi	%d15, %d15, lo:IfxEth_rxBuffer
.LBB255:
.LBB256:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Eth/Std/IfxEth.h"
	.loc 2 1406 0
	mov.aa	%a15, %a5
.LBE256:
.LBE255:
	.loc 1 310 0
	st.a	[%a4] 124, %a5
.LVL23:
	.loc 1 316 0
	movh	%d6, 32768
	.loc 1 320 0
	mov	%d5, 17920
.LBB257:
.LBB258:
	.loc 2 1241 0
	insert	%d3, %d15, 0, 0, 28
	movh	%d4, 53248
.LBE258:
.LBE257:
	.loc 1 316 0
	st.w	[%a15]0, %d6
	.loc 1 320 0
	st.w	[%a15] 4, %d5
.LBB266:
.LBB262:
	.loc 2 1241 0
	movh	%d7, 61440
	mov.a	%a2, 7
.LVL24:
	mov	%d2, %d15
	jeq	%d3, %d4, .L30
.LVL25:
.L26:
.LBE262:
.LBE266:
	.loc 1 327 0
	lea	%a3, [%a15] 16
.LBB267:
.LBB263:
	.loc 2 1241 0
	st.w	[%a15] 8, %d2
.LBE263:
.LBE267:
	.loc 1 327 0
	st.a	[%a15] 12, %a3
.LVL26:
	addi	%d15, %d15, 1536
.LVL27:
	loop	%a2, .L29
.LVL28:
	.loc 1 336 0
	imask	%e2, 1, 15, 1
.LBB268:
.LBB269:
	.loc 2 1615 0
	movh.a	%a15, 61442
.LVL29:
.LBE269:
.LBE268:
	.loc 1 336 0
	ldmst	[%a5] 116, %e2
.LVL30:
.LBB271:
.LBB272:
	.loc 2 1406 0
	ld.w	%d15, [%a4] 116
.LVL31:
.LBE272:
.LBE271:
	.loc 1 343 0
	mov	%d2, 0
	.loc 1 339 0
	st.w	[%a4] 124, %d15
	.loc 1 340 0
	st.w	[%a5] 124, %d15
	.loc 1 343 0
	st.w	[%a4] 4, %d2
.LVL32:
.LBB273:
.LBB270:
	.loc 2 1615 0
	lea	%a15, [%a15] -12288
	st.w	[%a15] 8204, %d15
	ret
.LVL33:
.L29:
.LBE270:
.LBE273:
	mov.aa	%a15, %a3
.LVL34:
.LBB274:
.LBB264:
	.loc 2 1241 0
	insert	%d3, %d15, 0, 0, 28
.LBE264:
.LBE274:
	.loc 1 316 0
	st.w	[%a15]0, %d6
	.loc 1 320 0
	st.w	[%a15] 4, %d5
.LVL35:
.LBB275:
.LBB265:
	.loc 2 1241 0
	mov	%d2, %d15
	jne	%d3, %d4, .L26
.LVL36:
.L30:
.LBB259:
.LBB260:
.LBB261:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL37:
#NO_APP
.LBE261:
	.loc 3 777 0
	and	%d3, %d2, 7
.LBE260:
.LBE259:
	.loc 2 1241 0
	insert	%d2, %d15, 0, 20, 12
.LVL38:
	insert	%d2, %d2, 15, 28, 3
	madd	%d2, %d2, %d3, %d7
	j	.L26
.LBE265:
.LBE275:
.LFE295:
	.size	IfxEth_initReceiveDescriptors, .-IfxEth_initReceiveDescriptors
.section .text.IfxEth_initReceiveDescriptorsRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_initReceiveDescriptorsRingMode
	.type	IfxEth_initReceiveDescriptorsRingMode, @function
IfxEth_initReceiveDescriptorsRingMode:
.LFB296:
	.loc 1 351 0
.LVL39:
	ld.a	%a3, [%a4] 116
.LVL40:
	.loc 1 363 0
	mov	%d4, 0
	.loc 1 365 0
	mov	%d15, 0
.LBB276:
.LBB277:
	.loc 2 1406 0
	mov.aa	%a15, %a3
.LBE277:
.LBE276:
	.loc 1 359 0
	st.a	[%a4] 124, %a3
.LVL41:
	.loc 1 366 0
	movh	%d0, 32768
.LBB278:
.LBB279:
	.loc 2 1601 0
	movh	%d9, 61440
	movh	%d8, 53248
	mov.a	%a2, 7
.LVL42:
.L38:
.LBE279:
.LBE278:
	.loc 1 366 0
	st.w	[%a15]0, %d0
	.loc 1 368 0
	st.w	[%a15] 4, %d15
	.loc 1 370 0
	ld.bu	%d2, [%a5]0
	and	%d3, %d2, 253
	jnz	%d3, .L32
	.loc 1 373 0
	ld.hu	%d5, [%a5] 12
	ld.w	%d3, [%a5] 4
	madd	%d3, %d3, %d5, %d4
.LVL43:
.LBB288:
.LBB285:
	.loc 2 1601 0
	insert	%d1, %d3, 0, 0, 28
	jeq	%d1, %d8, .L42
.LVL44:
.L33:
	st.w	[%a15] 8, %d3
.LVL45:
	.loc 2 1602 0
	ld.w	%d3, [%a15] 4
.LBE285:
.LBE288:
	.loc 1 381 0
	add	%d2, -1
.LBB289:
.LBB286:
	.loc 2 1602 0
	insert	%d3, %d3, %d5, 0, 13
	st.w	[%a15] 4, %d3
.LBE286:
.LBE289:
	.loc 1 381 0
	jlt.u	%d2, 2, .L43
.LVL46:
.L35:
.LBB290:
.LBB291:
	.loc 2 1609 0
	mov	%d6, 0
	movh	%d7, 8191
	.loc 2 1608 0
	st.w	[%a15] 12, %d15
	.loc 2 1609 0
	ldmst	[%a15] 4, %e6
.LVL47:
.L37:
.LBE291:
.LBE290:
	.loc 1 392 0 discriminator 2
	lea	%a15, [%a15] 16
.LVL48:
	.loc 1 363 0 discriminator 2
	add	%d4, 1
.LVL49:
	loop	%a2, .L38
.LVL50:
	.loc 1 400 0
	imask	%e2, 1, 15, 1
.LBB292:
.LBB293:
	.loc 2 1615 0
	movh.a	%a15, 61442
.LBE293:
.LBE292:
	.loc 1 400 0
	ldmst	[%a3] 116, %e2
.LVL51:
	.loc 1 402 0
	ld.w	%d15, [%a4] 116
.LBB296:
.LBB294:
	.loc 2 1615 0
	lea	%a15, [%a15] -12288
.LBE294:
.LBE296:
	.loc 1 402 0
	st.w	[%a4] 124, %d15
	.loc 1 405 0
	mov	%d15, 0
	st.w	[%a4] 4, %d15
.LVL52:
.LBB297:
.LBB295:
	.loc 2 1615 0
	ld.w	%d15, [%a4] 116
	st.w	[%a15] 8204, %d15
.LVL53:
.LBE295:
.LBE297:
	.loc 1 410 0
	ld.bu	%d15, [%a5]0
.LVL54:
	st.b	[%a4] 138, %d15
.LVL55:
	ret
.LVL56:
.L32:
.LBB298:
.LBB299:
	.loc 2 1601 0
	st.w	[%a15] 8, %d15
	.loc 2 1602 0
	st.w	[%a15] 4, %d15
.LBE299:
.LBE298:
	.loc 1 381 0
	add	%d2, -1
	jge.u	%d2, 2, .L35
.LVL57:
.L43:
	.loc 1 384 0
	ld.hu	%d3, [%a5] 14
	ld.w	%d2, [%a5] 8
	madd	%d2, %d2, %d3, %d4
.LVL58:
.LBB300:
.LBB301:
	.loc 2 1608 0
	insert	%d5, %d2, 0, 0, 28
	jeq	%d5, %d8, .L44
.LVL59:
.L36:
	st.w	[%a15] 12, %d2
.LVL60:
	.loc 2 1609 0
	ld.w	%d2, [%a15] 4
	insert	%d2, %d2, %d3, 16, 13
	st.w	[%a15] 4, %d2
	j	.L37
.LVL61:
.L42:
.LBE301:
.LBE300:
.LBB308:
.LBB287:
.LBB280:
.LBB281:
.LBB282:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL62:
#NO_APP
.LBE282:
.LBE281:
.LBE280:
	.loc 2 1601 0
	insert	%d3, %d3, 0, 20, 12
.LVL63:
	insert	%d3, %d3, 15, 28, 3
.LBB284:
.LBB283:
	.loc 3 777 0
	and	%d2, %d2, 7
.LVL64:
.LBE283:
.LBE284:
	.loc 2 1601 0
	madd	%d3, %d3, %d2, %d9
	ld.bu	%d2, [%a5]0
	j	.L33
.LVL65:
.L44:
.LBE287:
.LBE308:
.LBB309:
.LBB307:
.LBB302:
.LBB303:
.LBB304:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d5, LO:0xFE1C
	# 0 "" 2
.LVL66:
#NO_APP
.LBE304:
.LBE303:
.LBE302:
	.loc 2 1608 0
	insert	%d2, %d2, 0, 20, 12
.LVL67:
	insert	%d2, %d2, 15, 28, 3
.LBB306:
.LBB305:
	.loc 3 777 0
	and	%d5, %d5, 7
.LVL68:
.LBE305:
.LBE306:
	.loc 2 1608 0
	madd	%d2, %d2, %d5, %d9
	j	.L36
.LBE307:
.LBE309:
.LFE296:
	.size	IfxEth_initReceiveDescriptorsRingMode, .-IfxEth_initReceiveDescriptorsRingMode
.section .text.IfxEth_initTransmitDescriptors,"ax",@progbits
	.align 1
	.global	IfxEth_initTransmitDescriptors
	.type	IfxEth_initTransmitDescriptors, @function
IfxEth_initTransmitDescriptors:
.LFB297:
	.loc 1 415 0
.LVL69:
	ld.a	%a5, [%a4] 120
.LVL70:
	movh	%d15, hi:IfxEth_txBuffer
	addi	%d15, %d15, lo:IfxEth_txBuffer
.LBB310:
.LBB311:
	.loc 2 1412 0
	mov.aa	%a15, %a5
.LBE311:
.LBE310:
	.loc 1 419 0
	st.a	[%a4] 128, %a5
.LVL71:
	.loc 1 428 0
	movh	%d5, 28688
.LBB312:
.LBB313:
	.loc 2 1265 0
	insert	%d3, %d15, 0, 0, 28
	movh	%d4, 53248
.LBE313:
.LBE312:
	.loc 1 428 0
	st.w	[%a15]0, %d5
.LBB321:
.LBB317:
	.loc 2 1265 0
	movh	%d6, 61440
	mov.a	%a2, 15
.LVL72:
	mov	%d2, %d15
	jeq	%d3, %d4, .L50
.LVL73:
.L46:
.LBE317:
.LBE321:
	.loc 1 435 0
	lea	%a3, [%a15] 16
.LBB322:
.LBB318:
	.loc 2 1265 0
	st.w	[%a15] 8, %d2
.LBE318:
.LBE322:
	.loc 1 435 0
	st.a	[%a15] 12, %a3
.LVL74:
	addi	%d15, %d15, 1536
.LVL75:
	loop	%a2, .L49
.LVL76:
	.loc 1 444 0
	imask	%e2, 1, 21, 1
.LBB323:
.LBB324:
	.loc 2 1656 0
	movh.a	%a15, 61442
.LVL77:
.LBE324:
.LBE323:
	.loc 1 444 0
	ldmst	[%a5] 240, %e2
.LVL78:
.LBB326:
.LBB327:
	.loc 2 1412 0
	ld.w	%d15, [%a4] 120
.LVL79:
.LBE327:
.LBE326:
	.loc 1 451 0
	mov	%d2, 0
	.loc 1 447 0
	st.w	[%a4] 128, %d15
	.loc 1 448 0
	st.w	[%a5] 252, %d15
	.loc 1 451 0
	st.w	[%a4] 8, %d2
.LVL80:
.LBB328:
.LBB325:
	.loc 2 1656 0
	lea	%a15, [%a15] -12288
	st.w	[%a15] 8208, %d15
	ret
.LVL81:
.L49:
.LBE325:
.LBE328:
	mov.aa	%a15, %a3
.LVL82:
.LBB329:
.LBB319:
	.loc 2 1265 0
	insert	%d3, %d15, 0, 0, 28
.LBE319:
.LBE329:
	.loc 1 428 0
	st.w	[%a15]0, %d5
.LVL83:
.LBB330:
.LBB320:
	.loc 2 1265 0
	mov	%d2, %d15
	jne	%d3, %d4, .L46
.LVL84:
.L50:
.LBB314:
.LBB315:
.LBB316:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL85:
#NO_APP
.LBE316:
	.loc 3 777 0
	and	%d3, %d2, 7
.LBE315:
.LBE314:
	.loc 2 1265 0
	insert	%d2, %d15, 0, 20, 12
.LVL86:
	insert	%d2, %d2, 15, 28, 3
	madd	%d2, %d2, %d3, %d6
	j	.L46
.LBE320:
.LBE330:
.LFE297:
	.size	IfxEth_initTransmitDescriptors, .-IfxEth_initTransmitDescriptors
.section .text.IfxEth_initTransmitDescriptorsRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_initTransmitDescriptorsRingMode
	.type	IfxEth_initTransmitDescriptorsRingMode, @function
IfxEth_initTransmitDescriptorsRingMode:
.LFB298:
	.loc 1 459 0
.LVL87:
	ld.a	%a3, [%a4] 120
.LVL88:
	.loc 1 469 0
	mov	%d3, 0
	.loc 1 471 0
	mov	%d7, 0
.LBB331:
.LBB332:
	.loc 2 1412 0
	mov.aa	%a15, %a3
.LBE332:
.LBE331:
	.loc 1 466 0
	st.a	[%a4] 128, %a3
.LVL89:
	.loc 1 474 0
	movh	%d8, 28672
.LBB333:
.LBB334:
	.loc 2 1642 0
	movh	%d11, 61440
	movh	%d10, 53248
	mov.a	%a2, 15
.LVL90:
.L58:
.LBE334:
.LBE333:
	.loc 1 474 0
	st.w	[%a15]0, %d8
	.loc 1 476 0
	ld.bu	%d15, [%a5]0
	and	%d2, %d15, 253
	jnz	%d2, .L52
	.loc 1 480 0
	ld.hu	%d6, [%a5] 12
	ld.w	%d2, [%a5] 4
	madd	%d2, %d2, %d6, %d3
.LVL91:
.LBB343:
.LBB340:
	.loc 2 1642 0
	insert	%d9, %d2, 0, 0, 28
	jeq	%d9, %d10, .L62
.LVL92:
.L53:
	st.w	[%a15] 8, %d2
.LVL93:
	.loc 2 1643 0
	ld.w	%d2, [%a15] 4
.LBE340:
.LBE343:
	.loc 1 488 0
	add	%d15, -1
.LBB344:
.LBB341:
	.loc 2 1643 0
	insert	%d2, %d2, %d6, 0, 13
	st.w	[%a15] 4, %d2
.LBE341:
.LBE344:
	.loc 1 488 0
	jlt.u	%d15, 2, .L63
.LVL94:
.L55:
.LBB345:
.LBB346:
	.loc 2 1650 0
	mov	%d4, 0
	movh	%d5, 8191
	.loc 2 1649 0
	st.w	[%a15] 12, %d7
	.loc 2 1650 0
	ldmst	[%a15] 4, %e4
.LVL95:
.L57:
.LBE346:
.LBE345:
	.loc 1 500 0 discriminator 2
	lea	%a15, [%a15] 16
.LVL96:
	.loc 1 469 0 discriminator 2
	add	%d3, 1
.LVL97:
	loop	%a2, .L58
.LVL98:
	.loc 1 508 0
	imask	%e2, 1, 21, 1
.LBB347:
.LBB348:
	.loc 2 1656 0
	movh.a	%a15, 61442
.LBE348:
.LBE347:
	.loc 1 508 0
	ldmst	[%a3] 240, %e2
.LVL99:
	.loc 1 510 0
	ld.w	%d15, [%a4] 120
.LBB351:
.LBB349:
	.loc 2 1656 0
	lea	%a15, [%a15] -12288
.LBE349:
.LBE351:
	.loc 1 510 0
	st.w	[%a4] 128, %d15
	.loc 1 513 0
	mov	%d15, 0
	st.w	[%a4] 8, %d15
.LVL100:
.LBB352:
.LBB350:
	.loc 2 1656 0
	ld.w	%d15, [%a4] 120
	st.w	[%a15] 8208, %d15
.LVL101:
.LBE350:
.LBE352:
	.loc 1 518 0
	ld.bu	%d15, [%a5]0
.LVL102:
	st.b	[%a4] 137, %d15
.LVL103:
	ret
.LVL104:
.L52:
.LBB353:
.LBB354:
	.loc 2 1643 0
	mov	%d0, 0
	mov	%d1, 8191
	.loc 2 1642 0
	st.w	[%a15] 8, %d7
	.loc 2 1643 0
	ldmst	[%a15] 4, %e0
.LBE354:
.LBE353:
	.loc 1 488 0
	add	%d15, -1
	jge.u	%d15, 2, .L55
.LVL105:
.L63:
	.loc 1 492 0
	ld.hu	%d2, [%a5] 14
	ld.w	%d15, [%a5] 8
	madd	%d15, %d15, %d2, %d3
.LVL106:
.LBB355:
.LBB356:
	.loc 2 1649 0
	insert	%d6, %d15, 0, 0, 28
	jeq	%d6, %d10, .L64
.LVL107:
.L56:
	st.w	[%a15] 12, %d15
.LVL108:
	.loc 2 1650 0
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 13
	st.w	[%a15] 4, %d15
	j	.L57
.LVL109:
.L62:
.LBE356:
.LBE355:
.LBB363:
.LBB342:
.LBB335:
.LBB336:
.LBB337:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL110:
#NO_APP
.LBE337:
.LBE336:
.LBE335:
	.loc 2 1642 0
	insert	%d2, %d2, 0, 20, 12
.LVL111:
	insert	%d2, %d2, 15, 28, 3
.LBB339:
.LBB338:
	.loc 3 777 0
	and	%d15, %d15, 7
.LVL112:
.LBE338:
.LBE339:
	.loc 2 1642 0
	madd	%d2, %d2, %d15, %d11
	ld.bu	%d15, [%a5]0
	j	.L53
.LVL113:
.L64:
.LBE342:
.LBE363:
.LBB364:
.LBB362:
.LBB357:
.LBB358:
.LBB359:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d6, LO:0xFE1C
	# 0 "" 2
.LVL114:
#NO_APP
.LBE359:
.LBE358:
.LBE357:
	.loc 2 1649 0
	insert	%d15, %d15, 0, 20, 12
.LVL115:
	insert	%d15, %d15, 15, 28, 3
.LBB361:
.LBB360:
	.loc 3 777 0
	and	%d6, %d6, 7
.LVL116:
.LBE360:
.LBE361:
	.loc 2 1649 0
	madd	%d15, %d15, %d6, %d11
	j	.L56
.LBE362:
.LBE364:
.LFE298:
	.size	IfxEth_initTransmitDescriptorsRingMode, .-IfxEth_initTransmitDescriptorsRingMode
.section .text.IfxEth_readMacAddress,"ax",@progbits
	.align 1
	.global	IfxEth_readMacAddress
	.type	IfxEth_readMacAddress, @function
IfxEth_readMacAddress:
.LFB299:
	.loc 1 523 0
.LVL117:
	.loc 1 525 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8124
	ld.w	%d15, [%a15]0
	.loc 1 526 0
	movh.a	%a15, 61442
	.loc 1 525 0
	st.w	[%a5]0, %d15
	.loc 1 526 0
	lea	%a15, [%a15] -8128
	ld.w	%d15, [%a15]0
	st.h	[%a5] 4, %d15
	ret
.LFE299:
	.size	IfxEth_readMacAddress, .-IfxEth_readMacAddress
.section .text.IfxEth_resetModule,"ax",@progbits
	.align 1
	.global	IfxEth_resetModule
	.type	IfxEth_resetModule, @function
IfxEth_resetModule:
.LFB300:
	.loc 1 531 0
	.loc 1 532 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL118:
	.loc 1 535 0
	movh.a	%a15, 61442
	.loc 1 533 0
	mov	%d4, %d2
	.loc 1 535 0
	lea	%a15, [%a15] -12268
	.loc 1 532 0
	mov	%d8, %d2
.LVL119:
	.loc 1 533 0
	call	IfxScuWdt_clearCpuEndinit
.LVL120:
	.loc 1 535 0
	ld.w	%d15, [%a15]0
	.loc 1 537 0
	mov	%d4, %d8
	.loc 1 535 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 536 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12264
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 537 0
	call	IfxScuWdt_setCpuEndinit
.LVL121:
	.loc 1 539 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12268
.L67:
	.loc 1 539 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L67
	.loc 1 542 0 is_stmt 1
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL122:
	.loc 1 543 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12260
	ld.w	%d15, [%a15]0
	.loc 1 545 0
	mov	%d4, %d8
	.loc 1 543 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 545 0
	j	IfxScuWdt_setCpuEndinit
.LVL123:
.LFE300:
	.size	IfxEth_resetModule, .-IfxEth_resetModule
.section .text.IfxEth_setMacAddress,"ax",@progbits
	.align 1
	.global	IfxEth_setMacAddress
	.type	IfxEth_setMacAddress, @function
IfxEth_setMacAddress:
.LFB304:
	.loc 1 594 0
.LVL124:
	.loc 1 597 0
	ld.bu	%d15, [%a5] 4
	.loc 1 596 0
	movh.a	%a15, 61442
	insert	%d2, %d15, 15, 31, 1
	.loc 1 598 0
	ld.bu	%d15, [%a5] 5
	.loc 1 596 0
	lea	%a15, [%a15] -8128
	.loc 1 598 0
	sh	%d15, %d15, 8
	.loc 1 599 0
	or	%d15, %d2
	.loc 1 596 0
	st.w	[%a15]0, %d15
	.loc 1 603 0
	ld.bu	%d3, [%a5] 1
	.loc 1 604 0
	ld.bu	%d15, [%a5] 2
	.loc 1 603 0
	sh	%d3, %d3, 8
	.loc 1 604 0
	sh	%d15, %d15, 16
	or	%d15, %d3
	.loc 1 602 0
	ld.bu	%d3, [%a5]0
	.loc 1 601 0
	movh.a	%a15, 61442
	.loc 1 604 0
	or	%d3, %d15
	.loc 1 605 0
	ld.bu	%d15, [%a5] 3
	.loc 1 601 0
	lea	%a15, [%a15] -8124
	.loc 1 605 0
	sh	%d2, %d15, 24
	or	%d15, %d3, %d2
	.loc 1 601 0
	st.w	[%a15]0, %d15
	ret
.LFE304:
	.size	IfxEth_setMacAddress, .-IfxEth_setMacAddress
.section .text.IfxEth_setupChecksumEngine,"ax",@progbits
	.align 1
	.global	IfxEth_setupChecksumEngine
	.type	IfxEth_setupChecksumEngine, @function
IfxEth_setupChecksumEngine:
.LFB305:
	.loc 1 611 0
.LVL125:
	.loc 1 614 0
	jz	%d4, .L71
.LBB365:
	.loc 1 616 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	and	%d4, %d4, 3
.LVL126:
	insert	%d15, %d15, 15, 21, 1
	st.w	[%a15]0, %d15
	.loc 1 617 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 26, 1
	st.w	[%a15]0, %d15
	.loc 1 618 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a15]0, %d15
.LVL127:
.LBB366:
.LBB367:
	.loc 2 1412 0
	ld.a	%a2, [%a4] 120
.LVL128:
	mov.a	%a15, 15
.LVL129:
.L73:
.LBE367:
.LBE366:
	.loc 1 624 0 discriminator 3
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, %d4, 22, 2
	st.w	[%a2]0, %d15
	ld.a	%a2, [%a2] 12
.LVL130:
	loop	%a15, .L73
.LVL131:
.L71:
	ret
.LBE365:
.LFE305:
	.size	IfxEth_setupChecksumEngine, .-IfxEth_setupChecksumEngine
.section .text.IfxEth_setupMiiInputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupMiiInputPins
	.type	IfxEth_setupMiiInputPins, @function
IfxEth_setupMiiInputPins:
.LFB306:
	.loc 1 632 0
.LVL132:
	.loc 1 638 0
	ld.a	%a12, [%a5]0
	.loc 1 632 0
	mov.aa	%a15, %a5
	.loc 1 638 0
	jz.a	%a12, .L77
.LVL133:
.LBB368:
	.loc 1 641 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.bu	%d15, [%a12] 12
	ld.w	%d2, [%a2]0
.LBB369:
.LBB370:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
	.loc 4 543 0
	mov	%d5, 0
.LBE370:
.LBE369:
	.loc 1 641 0
	insert	%d15, %d2, %d15, 4, 2
	st.w	[%a2]0, %d15
.LVL134:
.LBB372:
.LBB371:
	.loc 4 543 0
	ld.a	%a4, [%a12] 4
.LVL135:
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL136:
.LBE371:
.LBE372:
	.loc 1 643 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL137:
.L78:
.LBE368:
	.loc 1 651 0
	ld.a	%a12, [%a15] 4
	jz.a	%a12, .L79
.LVL138:
.LBB373:
	.loc 1 654 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.bu	%d15, [%a12] 12
	ld.w	%d2, [%a2]0
.LBB374:
.LBB375:
	.loc 4 543 0
	mov	%d5, 0
.LBE375:
.LBE374:
	.loc 1 654 0
	insert	%d15, %d2, %d15, 6, 2
	st.w	[%a2]0, %d15
.LVL139:
.LBB377:
.LBB376:
	.loc 4 543 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL140:
.LBE376:
.LBE377:
	.loc 1 656 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL141:
.L80:
.LBE373:
	.loc 1 664 0
	ld.a	%a13, [%a15] 8
.LVL142:
	.loc 1 665 0
	movh.a	%a12, 61442
	lea	%a12, [%a12] -12280
	ld.w	%d2, [%a12]0
	ld.bu	%d15, [%a13] 12
.LBB378:
.LBB379:
	.loc 4 543 0
	mov	%d5, 0
.LBE379:
.LBE378:
	.loc 1 665 0
	insert	%d15, %d2, %d15, 20, 2
	st.w	[%a12]0, %d15
.LVL143:
.LBB381:
.LBB380:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL144:
.LBE380:
.LBE381:
	.loc 1 667 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL145:
	.loc 1 669 0
	ld.a	%a13, [%a15] 12
.LVL146:
	.loc 1 670 0
	ld.w	%d2, [%a12]0
.LBB382:
.LBB383:
	.loc 4 543 0
	mov	%d5, 0
.LBE383:
.LBE382:
	.loc 1 670 0
	ld.bu	%d15, [%a13] 12
	insert	%d15, %d2, %d15, 2, 2
	st.w	[%a12]0, %d15
.LVL147:
.LBB385:
.LBB384:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL148:
.LBE384:
.LBE385:
	.loc 1 672 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL149:
	.loc 1 674 0
	ld.a	%a13, [%a15] 16
.LVL150:
	.loc 1 675 0
	ld.w	%d2, [%a12]0
.LBB386:
.LBB387:
	.loc 4 543 0
	mov	%d5, 0
.LBE387:
.LBE386:
	.loc 1 675 0
	ld.bu	%d15, [%a13] 12
	insert	%d15, %d2, %d15, 8, 2
	st.w	[%a12]0, %d15
.LVL151:
.LBB389:
.LBB388:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL152:
.LBE388:
.LBE389:
	.loc 1 677 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL153:
	.loc 1 679 0
	ld.a	%a13, [%a15] 20
.LVL154:
	jz.a	%a13, .L81
.LVL155:
.LBB390:
	.loc 1 682 0
	ld.bu	%d15, [%a13] 12
	ld.w	%d2, [%a12]0
.LBB391:
.LBB392:
	.loc 4 543 0
	mov	%d5, 0
.LBE392:
.LBE391:
	.loc 1 682 0
	insert	%d15, %d2, %d15, 10, 2
	st.w	[%a12]0, %d15
.LVL156:
.LBB394:
.LBB393:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL157:
.LBE393:
.LBE394:
	.loc 1 684 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL158:
.L82:
.LBE390:
	.loc 1 692 0
	ld.a	%a13, [%a15] 24
.LVL159:
	.loc 1 693 0
	movh.a	%a12, 61442
	lea	%a12, [%a12] -12280
	ld.w	%d2, [%a12]0
	ld.bu	%d15, [%a13] 12
.LBB395:
.LBB396:
	.loc 4 543 0
	mov	%d5, 0
.LBE396:
.LBE395:
	.loc 1 693 0
	insert	%d15, %d2, %d15, 12, 2
	st.w	[%a12]0, %d15
.LVL160:
.LBB398:
.LBB397:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL161:
.LBE397:
.LBE398:
	.loc 1 695 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL162:
	.loc 1 697 0
	ld.a	%a13, [%a15] 28
.LVL163:
	.loc 1 698 0
	ld.w	%d2, [%a12]0
.LBB399:
.LBB400:
	.loc 4 543 0
	mov	%d5, 0
.LBE400:
.LBE399:
	.loc 1 698 0
	ld.bu	%d15, [%a13] 12
	insert	%d15, %d2, %d15, 14, 2
	st.w	[%a12]0, %d15
.LVL164:
.LBB402:
.LBB401:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL165:
.LBE401:
.LBE402:
	.loc 1 700 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL166:
	.loc 1 702 0
	ld.a	%a13, [%a15] 32
.LVL167:
	.loc 1 703 0
	ld.w	%d2, [%a12]0
.LBB403:
.LBB404:
	.loc 4 543 0
	mov	%d5, 0
.LBE404:
.LBE403:
	.loc 1 703 0
	ld.bu	%d15, [%a13] 12
	insert	%d15, %d2, %d15, 16, 2
	st.w	[%a12]0, %d15
.LVL168:
.LBB406:
.LBB405:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL169:
.LBE405:
.LBE406:
	.loc 1 705 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL170:
	.loc 1 707 0
	ld.a	%a13, [%a15] 36
.LVL171:
	.loc 1 708 0
	ld.w	%d2, [%a12]0
.LBB407:
.LBB408:
	.loc 4 543 0
	mov	%d5, 0
.LBE408:
.LBE407:
	.loc 1 708 0
	ld.bu	%d15, [%a13] 12
	insert	%d15, %d2, %d15, 18, 2
	st.w	[%a12]0, %d15
.LVL172:
.LBB410:
.LBB409:
	.loc 4 543 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL173:
.LBE409:
.LBE410:
	.loc 1 710 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL174:
	.loc 1 713 0
	ld.a	%a15, [%a15] 68
.LVL175:
	ld.w	%d2, [%a12]0
	ld.bu	%d15, [%a15] 12
	insert	%d15, %d2, %d15, 0, 2
	st.w	[%a12]0, %d15
	ret
.LVL176:
.L81:
	.loc 1 689 0
	ld.w	%d15, [%a12]0
	insert	%d15, %d15, 15, 10, 2
	st.w	[%a12]0, %d15
	j	.L82
.LVL177:
.L79:
	.loc 1 661 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 192
	st.w	[%a2]0, %d15
	j	.L80
.LVL178:
.L77:
	.loc 1 648 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 48
	st.w	[%a2]0, %d15
	j	.L78
.LFE306:
	.size	IfxEth_setupMiiInputPins, .-IfxEth_setupMiiInputPins
.section .text.IfxEth_setupMiiOutputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupMiiOutputPins
	.type	IfxEth_setupMiiOutputPins, @function
IfxEth_setupMiiOutputPins:
.LFB307:
	.loc 1 718 0
.LVL179:
	.loc 1 723 0
	ld.a	%a12, [%a5] 40
.LVL180:
	.loc 1 724 0
	ld.a	%a4, [%a12] 4
.LVL181:
	mov	%d5, 0
	ld.bu	%d4, [%a12] 8
	.loc 1 718 0
	mov.aa	%a15, %a5
	.loc 1 724 0
	call	IfxPort_setPinPadDriver
.LVL182:
.LBB411:
.LBB412:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL183:
.LBE412:
.LBE411:
	.loc 1 727 0
	ld.a	%a12, [%a15] 44
.LVL184:
	jz.a	%a12, .L84
.LVL185:
.LBB413:
	.loc 1 730 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL186:
.LBB414:
.LBB415:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL187:
.L84:
.LBE415:
.LBE414:
.LBE413:
	.loc 1 734 0
	ld.a	%a12, [%a15] 48
.LVL188:
	.loc 1 735 0
	ld.a	%a4, [%a12] 4
	mov	%d5, 0
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinPadDriver
.LVL189:
.LBB416:
.LBB417:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL190:
.LBE417:
.LBE416:
	.loc 1 738 0
	ld.a	%a12, [%a15] 52
.LVL191:
	.loc 1 739 0
	ld.a	%a4, [%a12] 4
	mov	%d5, 0
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinPadDriver
.LVL192:
.LBB418:
.LBB419:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL193:
.LBE419:
.LBE418:
	.loc 1 742 0
	ld.a	%a12, [%a15] 56
.LVL194:
	.loc 1 743 0
	ld.a	%a4, [%a12] 4
	mov	%d5, 0
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinPadDriver
.LVL195:
.LBB420:
.LBB421:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL196:
.LBE421:
.LBE420:
	.loc 1 746 0
	ld.a	%a12, [%a15] 60
.LVL197:
	.loc 1 747 0
	ld.a	%a4, [%a12] 4
	mov	%d5, 0
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinPadDriver
.LVL198:
.LBB422:
.LBB423:
	.loc 4 549 0
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL199:
.LBE423:
.LBE422:
	.loc 1 750 0
	ld.a	%a15, [%a15] 64
.LVL200:
	.loc 1 751 0
	ld.a	%a4, [%a15] 4
	mov	%d5, 0
	ld.bu	%d4, [%a15] 8
	call	IfxPort_setPinPadDriver
.LVL201:
.LBB424:
.LBB425:
	.loc 4 549 0
	ld.bu	%d5, [%a15] 12
	ld.a	%a4, [%a15] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a15] 8
	j	IfxPort_setPinMode
.LVL202:
.LBE425:
.LBE424:
.LFE307:
	.size	IfxEth_setupMiiOutputPins, .-IfxEth_setupMiiOutputPins
.section .text.IfxEth_setupRmiiInputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupRmiiInputPins
	.type	IfxEth_setupRmiiInputPins, @function
IfxEth_setupRmiiInputPins:
.LFB308:
	.loc 1 757 0
.LVL203:
	.loc 1 760 0
	ld.a	%a15, [%a5] 20
.LBB426:
.LBB427:
.LBB428:
	.loc 4 543 0
	mov	%d5, 0
.LBE428:
.LBE427:
.LBE426:
	.loc 1 760 0
	ld.bu	%d15, [%a15] 12
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12280
	ld.w	%d2, [%a15]0
	insert	%d15, %d2, %d15, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 761 0
	ld.a	%a14, [%a5] 4
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a14] 12
	insert	%d15, %d2, %d15, 2, 2
	st.w	[%a15]0, %d15
	.loc 1 762 0
	ld.w	%d15, [%a5]0
	ld.w	%d3, [%a15]0
	mov.a	%a2, %d15
	ld.bu	%d2, [%a2] 12
	insert	%d2, %d3, %d2, 8, 2
	st.w	[%a15]0, %d2
	.loc 1 763 0
	ld.a	%a13, [%a5] 8
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a13] 12
	insert	%d2, %d3, %d2, 12, 2
	st.w	[%a15]0, %d2
	.loc 1 764 0
	ld.a	%a12, [%a5] 12
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a12] 12
	insert	%d2, %d3, %d2, 14, 2
	st.w	[%a15]0, %d2
.LVL204:
.LBB439:
.LBB431:
.LBB429:
	.loc 4 543 0
	ld.a	%a4, [%a2] 4
.LVL205:
	ld.bu	%d4, [%a2] 8
.LBE429:
.LBE431:
	.loc 1 780 0
	mov.a	%a15, %d15
.LBB432:
.LBB430:
	.loc 4 543 0
	call	IfxPort_setPinMode
.LVL206:
.LBE430:
.LBE432:
.LBB433:
.LBB434:
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL207:
.LBE434:
.LBE433:
.LBB435:
.LBB436:
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL208:
.LBE436:
.LBE435:
.LBB437:
.LBB438:
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL209:
.LBE438:
.LBE437:
	.loc 1 780 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL210:
	.loc 1 781 0
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL211:
	.loc 1 782 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL212:
	.loc 1 783 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	j	IfxPort_setPinPadDriver
.LVL213:
.LBE439:
.LFE308:
	.size	IfxEth_setupRmiiInputPins, .-IfxEth_setupRmiiInputPins
.section .text.IfxEth_setupRmiiOutputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupRmiiOutputPins
	.type	IfxEth_setupRmiiOutputPins, @function
IfxEth_setupRmiiOutputPins:
.LFB309:
	.loc 1 789 0
.LVL214:
	.loc 1 795 0
	ld.a	%a13, [%a5] 32
	.loc 1 793 0
	ld.a	%a14, [%a5] 16
.LVL215:
	.loc 1 805 0
	ld.a	%a4, [%a13] 4
.LVL216:
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	.loc 1 797 0
	ld.a	%a15, [%a5] 28
	.loc 1 796 0
	ld.a	%a12, [%a5] 24
	.loc 1 794 0
	ld.w	%d15, [%a5] 20
.LVL217:
	.loc 1 805 0
	call	IfxPort_setPinPadDriver
.LVL218:
	.loc 1 806 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL219:
	.loc 1 807 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL220:
.LBB440:
.LBB441:
	.loc 4 549 0
	ld.bu	%d5, [%a14] 12
	ld.a	%a4, [%a14] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a14] 8
	call	IfxPort_setPinMode
.LVL221:
.LBE441:
.LBE440:
.LBB442:
.LBB443:
	ld.bu	%d5, [%a13] 12
	ld.a	%a4, [%a13] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a13] 8
	call	IfxPort_setPinMode
.LVL222:
.LBE443:
.LBE442:
.LBB444:
.LBB445:
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a12] 8
	call	IfxPort_setPinMode
.LVL223:
.LBE445:
.LBE444:
.LBB446:
.LBB447:
	ld.bu	%d5, [%a15] 12
	ld.a	%a4, [%a15] 4
	insert	%d5, %d5, 1, 7, 25
	ld.bu	%d4, [%a15] 8
	call	IfxPort_setPinMode
.LVL224:
.LBE447:
.LBE446:
	.loc 1 815 0
	mov.a	%a15, %d15
.LVL225:
	movh	%d2, 61444
	ld.w	%d3, [%a15] 4
	addi	%d2, %d2, -16128
	jeq	%d3, %d2, .L91
.L89:
	ret
.L91:
	.loc 1 815 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 8
	jne	%d2, 1, .L89
.LVL226:
.LBB448:
.LBB449:
	.loc 4 549 0 is_stmt 1
	ld.bu	%d5, [%a15] 13
	movh.a	%a4, 61444
	insert	%d5, %d5, 1, 7, 25
	lea	%a4, [%a4] -16128
	mov	%d4, 1
	j	IfxPort_setPinMode
.LVL227:
.LBE449:
.LBE448:
.LFE309:
	.size	IfxEth_setupRmiiOutputPins, .-IfxEth_setupRmiiOutputPins
.section .text.IfxEth_init,"ax",@progbits
	.align 1
	.global	IfxEth_init
	.type	IfxEth_init, @function
IfxEth_init:
.LFB293:
	.loc 1 129 0
.LVL228:
	.loc 1 130 0
	ld.w	%d15, [%a5] 32
	.loc 1 129 0
	mov.aa	%a15, %a5
	.loc 1 130 0
	st.w	[%a4] 132, %d15
	.loc 1 129 0
	mov.aa	%a12, %a4
	.loc 1 133 0
	call	IfxEth_enableModule
.LVL229:
	.loc 1 135 0
	ld.bu	%d15, [%a15] 16
	jeq	%d15, 1, .L117
	.loc 1 145 0
	ld.a	%a5, [%a15] 24
	jz.a	%a5, .L94
	.loc 1 147 0
	mov.aa	%a4, %a12
	call	IfxEth_setupMiiOutputPins
.LVL230:
	.loc 1 148 0
	ld.a	%a5, [%a15] 24
	mov.aa	%a4, %a12
	call	IfxEth_setupMiiInputPins
.LVL231:
.L94:
	.loc 1 154 0
	call	IfxEth_resetModule
.LVL232:
.LBB450:
.LBB451:
	.loc 2 1595 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.w	%d2, [%a2]0
	ld.bu	%d15, [%a15] 16
	ins.t	%d15, %d2,24, %d15,0
	st.w	[%a2]0, %d15
.LVL233:
.LBE451:
.LBE450:
.LBB452:
.LBB453:
	.loc 2 1284 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4096
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 1
	st.w	[%a2]0, %d15
.LVL234:
.LBE453:
.LBE452:
.LBB454:
.LBB455:
.LBB456:
	.loc 2 1538 0
	ld.w	%d15, [%a2]0
.LBE456:
.LBE455:
	.loc 1 164 0
	jz.t	%d15, 0, .L95
	mov	%d15, 0
	mov	%d4, 1000
.LVL235:
.L96:
	.loc 1 166 0
	add	%d15, 1
.LVL236:
.LBB458:
.LBB457:
	.loc 2 1538 0
	ld.w	%d3, [%a2]0
.LBE457:
.LBE458:
	.loc 1 164 0
	ne	%d2, %d15, %d4
	and	%d2, %d3
	jnz	%d2, .L96
.LVL237:
.L95:
.LBE454:
.LBB459:
	.loc 1 173 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4096
	ld.w	%d15, [%a2]0
	.loc 1 176 0
	andn	%d15, %d15, ~(-255)
.LVL238:
	.loc 1 178 0
	st.w	[%a2]0, %d15
.LBE459:
.LBB460:
	.loc 1 184 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -8192
	ld.w	%d15, [%a2]0
.LVL239:
	.loc 1 189 0
	andn	%d15, %d15, ~(-20)
.LVL240:
	.loc 1 191 0
	insert	%d15, %d15, 1, 7, 1
.LVL241:
	.loc 1 193 0
	insert	%d15, %d15, 0, 10, 1
.LVL242:
	.loc 1 195 0
	insert	%d15, %d15, 1, 11, 2
.LVL243:
	.loc 1 197 0
	insert	%d15, %d15, 1, 14, 1
	.loc 1 198 0
	insert	%d15, %d15, 1, 15, 1
	.loc 1 200 0
	insert	%d15, %d15, 0, 17, 4
.LVL244:
	.loc 1 202 0
	insert	%d15, %d15, 0, 22, 2
.LVL245:
	.loc 1 203 0
	insert	%d15, %d15, 1, 25, 1
.LVL246:
	.loc 1 204 0
	insert	%d15, %d15, 0, 27, 1
.LVL247:
	.loc 1 206 0
	st.w	[%a2]0, %d15
.LVL248:
.LBE460:
.LBB461:
.LBB462:
	.loc 1 597 0
	ld.bu	%d15, [%a15] 4
.LVL249:
	.loc 1 596 0
	movh.a	%a2, 61442
	insert	%d2, %d15, 15, 31, 1
	.loc 1 598 0
	ld.bu	%d15, [%a15] 5
	.loc 1 596 0
	lea	%a2, [%a2] -8128
	.loc 1 598 0
	sh	%d15, %d15, 8
	.loc 1 599 0
	or	%d15, %d2
	.loc 1 596 0
	st.w	[%a2]0, %d15
	.loc 1 603 0
	ld.bu	%d2, [%a15] 1
	.loc 1 604 0
	ld.bu	%d15, [%a15] 2
	.loc 1 603 0
	sh	%d2, %d2, 8
	.loc 1 604 0
	sh	%d15, %d15, 16
	or	%d15, %d2
	.loc 1 602 0
	ld.bu	%d2, [%a15]0
	.loc 1 601 0
	movh.a	%a2, 61442
	.loc 1 604 0
	or	%d2, %d15
	.loc 1 605 0
	ld.bu	%d15, [%a15] 3
	.loc 1 601 0
	lea	%a2, [%a2] -8124
	.loc 1 605 0
	sh	%d15, %d15, 24
	or	%d15, %d2
	.loc 1 601 0
	st.w	[%a2]0, %d15
.LBE462:
.LBE461:
	.loc 1 212 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -7936
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 8
	st.w	[%a2]0, %d15
	.loc 1 215 0
	movh	%d15, 2
	movh.a	%a2, 61442
	addi	%d15, %d15, -6145
	lea	%a2, [%a2] -4076
	st.w	[%a2]0, %d15
	.loc 1 216 0
	movh.a	%a2, 61442
	mov	%d15, 16
	lea	%a2, [%a2] -8188
	st.w	[%a2]0, %d15
	.loc 1 218 0
	movh	%d15, 1
	movh.a	%a2, 61442
	addi	%d15, %d15, 65
	lea	%a2, [%a2] -4068
	st.w	[%a2]0, %d15
	.loc 1 222 0
	ld.hu	%d15, [%a15] 28
	jz	%d15, .L97
.LBB463:
.LBB464:
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
	.loc 5 276 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -30480
	ld.w	%d2, [%a2]0
	and	%d15, 255
	andn	%d2, %d2, ~(-256)
	or	%d2, %d15
.LBE464:
.LBE463:
	.loc 1 224 0
	ld.bu	%d3, [%a15] 30
.LVL250:
.LBB468:
.LBB467:
	.loc 5 276 0
	st.w	[%a2]0, %d2
.LVL251:
	.loc 5 277 0
	ld.w	%d15, [%a2]0
	ins.t	%d15, %d15,11, %d3,0
	st.w	[%a2]0, %d15
.LVL252:
.LBB465:
.LBB466:
	.loc 5 252 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a2]0, %d15
.LVL253:
.LBE466:
.LBE465:
.LBE467:
.LBE468:
.LBB469:
.LBB470:
	.loc 5 270 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a2]0, %d15
.LVL254:
.L97:
.LBE470:
.LBE469:
	.loc 1 228 0
	ld.a	%a2, [%a15] 8
	jz.a	%a2, .L98
	.loc 1 230 0
	calli	%a2
.LVL255:
.L98:
	.loc 1 235 0
	lea	%a2, [%a12] 36
	mov.aa	%a3, %a15
		# #chunks=10, chunksize=8, remains=0
	lea	%a4, 10-1
	0:
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	loop	%a4, 0b
	.loc 1 236 0
	mov	%d15, 0
.LBB471:
.LBB472:
	.loc 1 891 0
	movh.a	%a2, 61442
.LBE472:
.LBE471:
	.loc 1 237 0
	st.w	[%a12]0, %d15
	.loc 1 236 0
	st.w	[%a12] 12, %d15
	.loc 1 238 0
	st.w	[%a12] 4, %d15
	.loc 1 239 0
	st.w	[%a12] 8, %d15
.LVL256:
.LBB474:
.LBB473:
	.loc 1 891 0
	lea	%a2, [%a2] -4092
	st.w	[%a2]0, %d15
	.loc 1 892 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4072
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 13, 1
	st.w	[%a2]0, %d15
	.loc 1 893 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -8192
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-9)
	st.w	[%a2]0, %d15
.LBE473:
.LBE474:
	.loc 1 246 0
	ld.w	%d15, [%a15] 36
	st.w	[%a12] 116, %d15
	.loc 1 247 0
	ld.w	%d15, [%a15] 40
	st.w	[%a12] 120, %d15
	.loc 1 249 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a12] 136, %d15
	.loc 1 251 0
	jz	%d15, .L118
	.loc 1 256 0
	jeq	%d15, 1, .L119
	ret
.LVL257:
.L117:
	.loc 1 137 0
	ld.a	%a5, [%a15] 20
	jz.a	%a5, .L94
	.loc 1 139 0
	mov.aa	%a4, %a12
	call	IfxEth_setupRmiiOutputPins
.LVL258:
	.loc 1 140 0
	ld.a	%a5, [%a15] 20
	mov.aa	%a4, %a12
	call	IfxEth_setupRmiiInputPins
.LVL259:
	j	.L94
.LVL260:
.L118:
	.loc 1 253 0
	mov.aa	%a4, %a12
	call	IfxEth_initReceiveDescriptors
.LVL261:
	.loc 1 254 0
	mov.aa	%a4, %a12
	j	IfxEth_initTransmitDescriptors
.LVL262:
.L119:
	.loc 1 258 0
	mov.aa	%a4, %a12
	lea	%a5, [%a15] 64
	call	IfxEth_initReceiveDescriptorsRingMode
.LVL263:
	.loc 1 259 0
	mov.aa	%a4, %a12
	lea	%a5, [%a15] 48
	j	IfxEth_initTransmitDescriptorsRingMode
.LVL264:
.LFE293:
	.size	IfxEth_init, .-IfxEth_init
.section .text.IfxEth_shuffleRxDescriptor,"ax",@progbits
	.align 1
	.global	IfxEth_shuffleRxDescriptor
	.type	IfxEth_shuffleRxDescriptor, @function
IfxEth_shuffleRxDescriptor:
.LFB310:
	.loc 1 823 0
.LVL265:
	.loc 1 824 0
	ld.bu	%d15, [%a4] 136
	jz	%d15, .L124
	.loc 1 828 0
	jeq	%d15, 1, .L125
.L123:
.LVL266:
	.loc 1 834 0
	ld.w	%d15, [%a4] 116
	st.w	[%a4] 124, %d15
	ret
.LVL267:
.L124:
	ld.a	%a15, [%a4] 124
	.loc 1 826 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4] 124, %d15
.LVL268:
	ret
.LVL269:
.L125:
	.loc 1 828 0 discriminator 1
	ld.a	%a15, [%a4] 124
	ld.w	%d15, [%a15] 4
	jnz.t	%d15, 15, .L123
	.loc 1 830 0
	lea	%a15, [%a15] 16
	st.a	[%a4] 124, %a15
	ret
.LFE310:
	.size	IfxEth_shuffleRxDescriptor, .-IfxEth_shuffleRxDescriptor
.section .text.IfxEth_freeReceiveBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_freeReceiveBuffer
	.type	IfxEth_freeReceiveBuffer, @function
IfxEth_freeReceiveBuffer:
.LFB290:
	.loc 1 88 0
.LVL270:
.LBB475:
.LBB476:
	.loc 2 1235 0
	ld.a	%a15, [%a4] 124
	imask	%e2, 1, 31, 1
	ldmst	[%a15]0, %e2
.LBE476:
.LBE475:
	.loc 1 91 0
	j	IfxEth_shuffleRxDescriptor
.LVL271:
.LFE290:
	.size	IfxEth_freeReceiveBuffer, .-IfxEth_freeReceiveBuffer
.section .text.IfxEth_shuffleTxDescriptor,"ax",@progbits
	.align 1
	.global	IfxEth_shuffleTxDescriptor
	.type	IfxEth_shuffleTxDescriptor, @function
IfxEth_shuffleTxDescriptor:
.LFB311:
	.loc 1 840 0
.LVL272:
	.loc 1 841 0
	ld.bu	%d15, [%a4] 136
	jz	%d15, .L131
	.loc 1 845 0
	jeq	%d15, 1, .L132
.L130:
.LVL273:
	.loc 1 851 0
	ld.w	%d15, [%a4] 120
	st.w	[%a4] 128, %d15
	ret
.LVL274:
.L131:
	ld.a	%a15, [%a4] 128
	.loc 1 843 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4] 128, %d15
.LVL275:
	ret
.LVL276:
.L132:
	.loc 1 845 0 discriminator 1
	ld.a	%a15, [%a4] 128
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 21, .L130
	.loc 1 847 0
	lea	%a15, [%a15] 16
	st.a	[%a4] 128, %a15
	ret
.LFE311:
	.size	IfxEth_shuffleTxDescriptor, .-IfxEth_shuffleTxDescriptor
.section .text.IfxEth_sendTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_sendTransmitBuffer
	.type	IfxEth_sendTransmitBuffer, @function
IfxEth_sendTransmitBuffer:
.LFB301:
	.loc 1 550 0
.LVL277:
	ld.a	%a2, [%a4] 128
.LVL278:
	.loc 1 554 0
	imask	%e2, 1, 31, 1
	.loc 1 550 0
	mov.aa	%a15, %a4
	.loc 1 554 0
	ldmst	[%a2]0, %e2
.LVL279:
	.loc 1 553 0
	st.w	[%a2] 4, %d4
.LBB477:
.LBB478:
	.loc 1 916 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4076
	ld.w	%d15, [%a2]0
	.loc 1 919 0
	movh	%d2, 96
	.loc 1 916 0
	st.w	[%a4]0, %d15
	.loc 1 919 0
	and	%d15, %d2
	jz	%d15, .L134
	call	IfxEth_wakeupTransmitter.part.16
.LVL280:
.L134:
.LBE478:
.LBE477:
	.loc 1 557 0
	mov.aa	%a4, %a15
	call	IfxEth_shuffleTxDescriptor
.LVL281:
	.loc 1 559 0
	ld.w	%d15, [%a15] 8
	add	%d15, 1
	st.w	[%a15] 8, %d15
	ret
.LFE301:
	.size	IfxEth_sendTransmitBuffer, .-IfxEth_sendTransmitBuffer
.section .text.IfxEth_setAndSendTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_setAndSendTransmitBuffer
	.type	IfxEth_setAndSendTransmitBuffer, @function
IfxEth_setAndSendTransmitBuffer:
.LFB303:
	.loc 1 587 0
.LVL282:
	.loc 1 587 0
	mov.d	%d15, %a5
.LBB479:
.LBB480:
	.loc 2 1265 0
	movh	%d3, 53248
	insert	%d2, %d15, 0, 0, 28
	ld.a	%a15, [%a4] 128
.LVL283:
	jne	%d2, %d3, .L139
.LBB481:
.LBB482:
.LBB483:
	.loc 3 776 0
#APP
	# 776 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL284:
#NO_APP
.LBE483:
.LBE482:
.LBE481:
	.loc 2 1265 0
	insert	%d15, %d15, 0, 20, 12
	insert	%d15, %d15, 15, 28, 3
.LBB485:
.LBB484:
	.loc 3 777 0
	and	%d2, %d2, 7
.LVL285:
.LBE484:
.LBE485:
	.loc 2 1265 0
	movh	%d3, 61440
	madd	%d15, %d15, %d2, %d3
.L139:
	st.w	[%a15] 8, %d15
.LBE480:
.LBE479:
	.loc 1 589 0
	j	IfxEth_sendTransmitBuffer
.LVL286:
.LFE303:
	.size	IfxEth_setAndSendTransmitBuffer, .-IfxEth_setAndSendTransmitBuffer
.section .text.IfxEth_sendTransmitBuffersRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_sendTransmitBuffersRingMode
	.type	IfxEth_sendTransmitBuffersRingMode, @function
IfxEth_sendTransmitBuffersRingMode:
.LFB302:
	.loc 1 564 0
.LVL287:
	.loc 1 567 0
	ld.bu	%d15, [%a4] 137
	.loc 1 564 0
	mov.aa	%a15, %a4
	.loc 1 567 0
	and	%d2, %d15, 253
	ld.a	%a2, [%a4] 128
.LVL288:
	jnz	%d2, .L142
	.loc 1 569 0
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, %d4, 0, 13
	st.w	[%a2] 4, %d15
	ld.bu	%d15, [%a4] 137
.L142:
	.loc 1 572 0
	add	%d15, -1
	jlt.u	%d15, 2, .L148
.L143:
	.loc 1 577 0
	imask	%e2, 1, 31, 1
	ldmst	[%a2]0, %e2
.LVL289:
.LBB486:
.LBB487:
	.loc 1 916 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4076
	ld.w	%d15, [%a2]0
	.loc 1 919 0
	movh	%d2, 96
	.loc 1 916 0
	st.w	[%a15]0, %d15
	.loc 1 919 0
	and	%d15, %d2
	jz	%d15, .L144
	mov.aa	%a4, %a15
.LVL290:
	call	IfxEth_wakeupTransmitter.part.16
.LVL291:
.L144:
.LBE487:
.LBE486:
	.loc 1 580 0
	mov.aa	%a4, %a15
	call	IfxEth_shuffleTxDescriptor
.LVL292:
	.loc 1 582 0
	ld.w	%d15, [%a15] 8
	add	%d15, 1
	st.w	[%a15] 8, %d15
	ret
.LVL293:
.L148:
	.loc 1 574 0
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, %d5, 16, 13
	st.w	[%a2] 4, %d15
	j	.L143
.LFE302:
	.size	IfxEth_sendTransmitBuffersRingMode, .-IfxEth_sendTransmitBuffersRingMode
.section .text.IfxEth_startReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_startReceiver
	.type	IfxEth_startReceiver, @function
IfxEth_startReceiver:
.LFB312:
	.loc 1 857 0
.LVL294:
	.loc 1 861 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 862 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 863 0
	movh.a	%a15, 61442
	mov	%d15, 1
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LFE312:
	.size	IfxEth_startReceiver, .-IfxEth_startReceiver
.section .text.IfxEth_startTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_startTransmitter
	.type	IfxEth_startTransmitter, @function
IfxEth_startTransmitter:
.LFB313:
	.loc 1 868 0
.LVL295:
	.loc 1 871 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 872 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 873 0
	movh.a	%a15, 61442
	mov	%d15, 1
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	ret
.LFE313:
	.size	IfxEth_startTransmitter, .-IfxEth_startTransmitter
.section .text.IfxEth_stopReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_stopReceiver
	.type	IfxEth_stopReceiver, @function
IfxEth_stopReceiver:
.LFB314:
	.loc 1 878 0
.LVL296:
	.loc 1 881 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 882 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-5)
	st.w	[%a15]0, %d15
	.loc 1 883 0
	movh.a	%a15, 61442
	mov	%d15, 0
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LFE314:
	.size	IfxEth_stopReceiver, .-IfxEth_stopReceiver
.section .text.IfxEth_stopTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_stopTransmitter
	.type	IfxEth_stopTransmitter, @function
IfxEth_stopTransmitter:
.LFB315:
	.loc 1 888 0
.LVL297:
	.loc 1 891 0
	movh.a	%a15, 61442
	mov	%d15, 0
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	.loc 1 892 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 893 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15]0, %d15
	ret
.LFE315:
	.size	IfxEth_stopTransmitter, .-IfxEth_stopTransmitter
.section .text.IfxEth_wakeupReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_wakeupReceiver
	.type	IfxEth_wakeupReceiver, @function
IfxEth_wakeupReceiver:
.LFB316:
	.loc 1 898 0
.LVL298:
	.loc 1 899 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 902 0
	jz.t	%d15, 19, .L153
	j	IfxEth_wakeupReceiver.part.15
.LVL299:
.L153:
	ret
.LFE316:
	.size	IfxEth_wakeupReceiver, .-IfxEth_wakeupReceiver
.section .text.IfxEth_wakeupTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_wakeupTransmitter
	.type	IfxEth_wakeupTransmitter, @function
IfxEth_wakeupTransmitter:
.LFB317:
	.loc 1 915 0
.LVL300:
	.loc 1 916 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	.loc 1 919 0
	movh	%d2, 96
	.loc 1 916 0
	st.w	[%a4]0, %d15
	.loc 1 919 0
	and	%d15, %d2
	jz	%d15, .L155
	j	IfxEth_wakeupTransmitter.part.16
.LVL301:
.L155:
	ret
.LFE317:
	.size	IfxEth_wakeupTransmitter, .-IfxEth_wakeupTransmitter
.section .text.IfxEth_writeHeader,"ax",@progbits
	.align 1
	.global	IfxEth_writeHeader
	.type	IfxEth_writeHeader, @function
IfxEth_writeHeader:
.LFB318:
	.loc 1 934 0
.LVL302:
	lea	%a2, [%a5] 6
	.loc 1 934 0
	mov.aa	%a3, %a5
	mov.a	%a15, 5
.LVL303:
.L158:
	.loc 1 941 0 discriminator 3
	ld.bu	%d15, [%a6]0
	add.a	%a6, 1
.LVL304:
	st.b	[%a3]0, %d15
.LVL305:
	add.a	%a3, 1
.LVL306:
	loop	%a15, .L158
	sub.a	%a15, %a5, %a2
	lea	%a15, [%a15] 11
.LVL307:
.L159:
	.loc 1 947 0 discriminator 3
	ld.bu	%d15, [%a7]0
	add.a	%a7, 1
.LVL308:
	st.b	[%a2]0, %d15
.LVL309:
	add.a	%a2, 1
.LVL310:
	loop	%a15, .L159
.LVL311:
	.loc 1 951 0
	sh	%d15, %d4, -8
	st.b	[%a5] 12, %d15
	.loc 1 952 0
	st.b	[%a5] 13, %d4
	ret
.LFE318:
	.size	IfxEth_writeHeader, .-IfxEth_writeHeader
.section .rodata.defaultConfig.10642,"a",@progbits
	.align 2
	.type	defaultConfig.10642, @object
	.size	defaultConfig.10642, 80
defaultConfig.10642:
	.byte	0
	.byte	17
	.byte	34
	.byte	51
	.byte	68
	.byte	85
	.zero	2
	.word	0
	.word	0
	.byte	1
	.zero	3
	.word	0
	.word	0
	.short	0
	.byte	0
	.zero	1
	.word	0
	.word	IfxEth_rxDescr
	.word	IfxEth_txDescr
	.byte	0
	.zero	3
	.byte	0
	.zero	3
	.word	0
	.word	0
	.short	1536
	.short	0
	.byte	0
	.zero	3
	.word	0
	.word	0
	.short	1536
	.short	0
	.global	IfxEth_txDescr
.section .bss.IfxEth_txDescr,"aw",@nobits
	.align 2
	.type	IfxEth_txDescr, @object
	.size	IfxEth_txDescr, 256
IfxEth_txDescr:
	.zero	256
	.global	IfxEth_txBuffer
.section .bss.IfxEth_txBuffer,"aw",@nobits
	.type	IfxEth_txBuffer, @object
	.size	IfxEth_txBuffer, 24576
IfxEth_txBuffer:
	.zero	24576
	.global	IfxEth_rxDescr
.section .bss.IfxEth_rxDescr,"aw",@nobits
	.align 2
	.type	IfxEth_rxDescr, @object
	.size	IfxEth_rxDescr, 128
IfxEth_rxDescr:
	.zero	128
	.global	IfxEth_rxBuffer
.section .bss.IfxEth_rxBuffer,"aw",@nobits
	.type	IfxEth_rxBuffer, @object
	.size	IfxEth_rxBuffer, 12288
IfxEth_rxBuffer:
	.zero	12288
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
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
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
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB305
	.uaword	.LFE305-.LFB305
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.align 2
.LEFDE64:
.section .text,"ax",@progbits
.Letext0:
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxEth_regdef.h"
	.file 9 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
	.file 10 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxEth_PinMap.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
	.file 12 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
	.file 13 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
	.file 14 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 15 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x105b8
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Eth/Std/IfxEth.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x338
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x6
	.byte	0x65
	.uaword	0x19c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x6
	.byte	0x69
	.uaword	0x19c
	.uleb128 0x3
	.string	"uint16"
	.byte	0x6
	.byte	0x6d
	.uaword	0x1c8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x6
	.byte	0x71
	.uaword	0x171
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
	.byte	0x6
	.byte	0x83
	.uaword	0x165
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
	.uaword	0x264
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x7
	.byte	0x67
	.uaword	0x1ba
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x83
	.uaword	0x2f2
	.uleb128 0x8
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x8
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x8
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x8
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x8
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x8
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x8
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x8
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x7
	.byte	0x8c
	.uaword	0x279
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.byte	0x8f
	.uaword	0x326
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.byte	0x91
	.uaword	0x25e
	.byte	0
	.uleb128 0xb
	.string	"index"
	.byte	0x7
	.byte	0x92
	.uaword	0x222
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x93
	.uaword	0x303
	.uleb128 0xc
	.string	"_Ifx_ETH_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x554
	.uleb128 0xd
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_ETH_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x340
	.uleb128 0xc
	.string	"_Ifx_ETH_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x5ac
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x8
	.byte	0x54
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x57f
	.uleb128 0xc
	.string	"_Ifx_ETH_AHB_OR_AXI_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x626
	.uleb128 0xd
	.string	"AXWHSTS"
	.byte	0x8
	.byte	0x5a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"AXIRDSTS"
	.byte	0x8
	.byte	0x5b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x8
	.byte	0x5c
	.uaword	0x554
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_AHB_OR_AXI_STATUS_Bits"
	.byte	0x8
	.byte	0x5d
	.uaword	0x5c7
	.uleb128 0xc
	.string	"_Ifx_ETH_BUS_MODE_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x60
	.uaword	0x74f
	.uleb128 0xd
	.string	"SWR"
	.byte	0x8
	.byte	0x62
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"DA"
	.byte	0x8
	.byte	0x63
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"DSL"
	.byte	0x8
	.byte	0x64
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"ATDS"
	.byte	0x8
	.byte	0x65
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"PBL"
	.byte	0x8
	.byte	0x66
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"PR"
	.byte	0x8
	.byte	0x67
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"FB"
	.byte	0x8
	.byte	0x68
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"RPBL"
	.byte	0x8
	.byte	0x69
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"USP"
	.byte	0x8
	.byte	0x6a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PBLx8"
	.byte	0x8
	.byte	0x6b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"AAL"
	.byte	0x8
	.byte	0x6c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"MB"
	.byte	0x8
	.byte	0x6d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"TXPR"
	.byte	0x8
	.byte	0x6e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"PRWG"
	.byte	0x8
	.byte	0x6f
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x8
	.byte	0x70
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_BUS_MODE_Bits"
	.byte	0x8
	.byte	0x71
	.uaword	0x64c
	.uleb128 0xc
	.string	"_Ifx_ETH_CLC_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x7b6
	.uleb128 0xd
	.string	"DISR"
	.byte	0x8
	.byte	0x76
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"DISS"
	.byte	0x8
	.byte	0x77
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x8
	.byte	0x78
	.uaword	0x554
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CLC_Bits"
	.byte	0x8
	.byte	0x79
	.uaword	0x76c
	.uleb128 0xc
	.string	"_Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x7c
	.uaword	0x820
	.uleb128 0xd
	.string	"CURRBUFAPTR"
	.byte	0x8
	.byte	0x7e
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits"
	.byte	0x8
	.byte	0x7f
	.uaword	0x7ce
	.uleb128 0xc
	.string	"_Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x82
	.uaword	0x8a6
	.uleb128 0xd
	.string	"CURRDESAPTR"
	.byte	0x8
	.byte	0x84
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits"
	.byte	0x8
	.byte	0x85
	.uaword	0x858
	.uleb128 0xc
	.string	"_Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x88
	.uaword	0x92d
	.uleb128 0xd
	.string	"CURTBUFAPTR"
	.byte	0x8
	.byte	0x8a
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits"
	.byte	0x8
	.byte	0x8b
	.uaword	0x8da
	.uleb128 0xc
	.string	"_Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8e
	.uaword	0x9b5
	.uleb128 0xd
	.string	"CURTDESAPTR"
	.byte	0x8
	.byte	0x90
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits"
	.byte	0x8
	.byte	0x91
	.uaword	0x966
	.uleb128 0xc
	.string	"_Ifx_ETH_DEBUG_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x94
	.uaword	0xb31
	.uleb128 0xd
	.string	"RPESTS"
	.byte	0x8
	.byte	0x96
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"RFCFCSTS"
	.byte	0x8
	.byte	0x97
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x8
	.byte	0x98
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"RWCSTS"
	.byte	0x8
	.byte	0x99
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"RRCSTS"
	.byte	0x8
	.byte	0x9a
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x8
	.byte	0x9b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"RXFSTS"
	.byte	0x8
	.byte	0x9c
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x8
	.byte	0x9d
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"TPESTS"
	.byte	0x8
	.byte	0x9e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TFCSTS"
	.byte	0x8
	.byte	0x9f
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"TXPAUSED"
	.byte	0x8
	.byte	0xa0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"TRCSTS"
	.byte	0x8
	.byte	0xa1
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"TWCSTS"
	.byte	0x8
	.byte	0xa2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x8
	.byte	0xa3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"TXFSTS"
	.byte	0x8
	.byte	0xa4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"TXSTSFSTS"
	.byte	0x8
	.byte	0xa5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x8
	.byte	0xa6
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_DEBUG_Bits"
	.byte	0x8
	.byte	0xa7
	.uaword	0x9ea
	.uleb128 0xc
	.string	"_Ifx_ETH_FLOW_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xaa
	.uaword	0xbf9
	.uleb128 0xd
	.string	"FCA_BPA"
	.byte	0x8
	.byte	0xac
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"TFE"
	.byte	0x8
	.byte	0xad
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RFE"
	.byte	0x8
	.byte	0xae
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"UP"
	.byte	0x8
	.byte	0xaf
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PLT"
	.byte	0x8
	.byte	0xb0
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x8
	.byte	0xb1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"DZPQ"
	.byte	0x8
	.byte	0xb2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x8
	.byte	0xb3
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PT"
	.byte	0x8
	.byte	0xb4
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_FLOW_CONTROL_Bits"
	.byte	0x8
	.byte	0xb5
	.uaword	0xb4b
	.uleb128 0xc
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.uaword	0xc93
	.uleb128 0xd
	.string	"GB"
	.byte	0x8
	.byte	0xba
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"GW"
	.byte	0x8
	.byte	0xbb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CR"
	.byte	0x8
	.byte	0xbc
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"GR"
	.byte	0x8
	.byte	0xbd
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PA"
	.byte	0x8
	.byte	0xbe
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x8
	.byte	0xbf
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x8
	.byte	0xc0
	.uaword	0xc1a
	.uleb128 0xc
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc3
	.uaword	0xcf2
	.uleb128 0xd
	.string	"GD"
	.byte	0x8
	.byte	0xc5
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x8
	.byte	0xc6
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x8
	.byte	0xc7
	.uaword	0xcb4
	.uleb128 0xc
	.string	"_Ifx_ETH_GPCTL_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xca
	.uaword	0xe25
	.uleb128 0xd
	.string	"ALTI0"
	.byte	0x8
	.byte	0xcc
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ALTI1"
	.byte	0x8
	.byte	0xcd
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"ALTI2"
	.byte	0x8
	.byte	0xce
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"ALTI3"
	.byte	0x8
	.byte	0xcf
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"ALTI4"
	.byte	0x8
	.byte	0xd0
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"ALTI5"
	.byte	0x8
	.byte	0xd1
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"ALTI6"
	.byte	0x8
	.byte	0xd2
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"ALTI7"
	.byte	0x8
	.byte	0xd3
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"ALTI8"
	.byte	0x8
	.byte	0xd4
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"ALTI9"
	.byte	0x8
	.byte	0xd5
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"ALTI10"
	.byte	0x8
	.byte	0xd6
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x8
	.byte	0xd7
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EPR"
	.byte	0x8
	.byte	0xd8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"DIV"
	.byte	0x8
	.byte	0xd9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x8
	.byte	0xda
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GPCTL_Bits"
	.byte	0x8
	.byte	0xdb
	.uaword	0xd10
	.uleb128 0xc
	.string	"_Ifx_ETH_HASH_TABLE_HIGH_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xde
	.uaword	0xe75
	.uleb128 0xd
	.string	"HTH"
	.byte	0x8
	.byte	0xe0
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_HASH_TABLE_HIGH_Bits"
	.byte	0x8
	.byte	0xe1
	.uaword	0xe3f
	.uleb128 0xc
	.string	"_Ifx_ETH_HASH_TABLE_LOW_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe4
	.uaword	0xece
	.uleb128 0xd
	.string	"HTL"
	.byte	0x8
	.byte	0xe6
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_HASH_TABLE_LOW_Bits"
	.byte	0x8
	.byte	0xe7
	.uaword	0xe99
	.uleb128 0xc
	.string	"_Ifx_ETH_HW_FEATURE_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xea
	.uaword	0x113e
	.uleb128 0xd
	.string	"MIISEL"
	.byte	0x8
	.byte	0xec
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"GMIISEL"
	.byte	0x8
	.byte	0xed
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"HDSEL"
	.byte	0x8
	.byte	0xee
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EXTHASHEN"
	.byte	0x8
	.byte	0xef
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"HASHSEL"
	.byte	0x8
	.byte	0xf0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"ADDMACADRSEL"
	.byte	0x8
	.byte	0xf1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"PCSSEL"
	.byte	0x8
	.byte	0xf2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"L3L4FLTREN"
	.byte	0x8
	.byte	0xf3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SMASEL"
	.byte	0x8
	.byte	0xf4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"RWKSEL"
	.byte	0x8
	.byte	0xf5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"MGKSEL"
	.byte	0x8
	.byte	0xf6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"MMCSEL"
	.byte	0x8
	.byte	0xf7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"TSVER1SEL"
	.byte	0x8
	.byte	0xf8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"TSVER2SEL"
	.byte	0x8
	.byte	0xf9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EEESEL"
	.byte	0x8
	.byte	0xfa
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"AVSEL"
	.byte	0x8
	.byte	0xfb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"TXCOESEL"
	.byte	0x8
	.byte	0xfc
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"RXTYP1COE"
	.byte	0x8
	.byte	0xfd
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"RXTYP2COE"
	.byte	0x8
	.byte	0xfe
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"RXFIFOSIZE"
	.byte	0x8
	.byte	0xff
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RXCHCNT"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"TXCHCNT"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"ENHDESSEL"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"INTTSEN"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"FLEXIPPSEN"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"SAVLANINS"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"ACTPHYIF"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x107
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_HW_FEATURE_Bits"
	.byte	0x8
	.uahalf	0x108
	.uaword	0xef1
	.uleb128 0x12
	.string	"_Ifx_ETH_ID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x11b0
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_ID_Bits"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x115e
	.uleb128 0x12
	.string	"_Ifx_ETH_INTERRUPT_ENABLE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x113
	.uaword	0x1301
	.uleb128 0xf
	.string	"TIE"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TSE"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TUE"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TJE"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"OVE"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"UNE"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RIE"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RUE"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RSE"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RWE"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"ETE"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x120
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"FBE"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"ERE"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"AIE"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"NIE"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x125
	.uaword	0x554
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_ENABLE_Bits"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x11c8
	.uleb128 0x12
	.string	"_Ifx_ETH_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x129
	.uaword	0x13e3
	.uleb128 0xf
	.string	"RGSMIIIM"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PCSLCHGIM"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PCSANCIM"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PMTIM"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TSIM"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"LPIIM"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x132
	.uaword	0x554
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x1327
	.uleb128 0x12
	.string	"_Ifx_ETH_INTERRUPT_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1515
	.uleb128 0xf
	.string	"RGSMIIIS"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PCSLCHGIS"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PCSANCIS"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PMTIS"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"MMCIS"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"MMCRXIS"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"MMCTXIS"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"MMCRXIPIS"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x140
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TSIS"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"LPIIS"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x143
	.uaword	0x554
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_STATUS_Bits"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1407
	.uleb128 0x12
	.string	"_Ifx_ETH_KRST0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x147
	.uaword	0x158d
	.uleb128 0xf
	.string	"RST"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x554
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRST0_Bits"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x153b
	.uleb128 0x12
	.string	"_Ifx_ETH_KRST1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x15e6
	.uleb128 0xf
	.string	"RST"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x152
	.uaword	0x554
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRST1_Bits"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x15a8
	.uleb128 0x12
	.string	"_Ifx_ETH_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x156
	.uaword	0x1641
	.uleb128 0xf
	.string	"CLR"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x159
	.uaword	0x554
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRSTCLR_Bits"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1601
	.uleb128 0x12
	.string	"_Ifx_ETH_MAC_ADDRESS_HIGH_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x16d8
	.uleb128 0xf
	.string	"ADDRHI"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x160
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"MBC"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"SA"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"AE"
	.byte	0x8
	.uahalf	0x163
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_ADDRESS_HIGH_Bits"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x165e
	.uleb128 0x12
	.string	"_Ifx_ETH_MAC_ADDRESS_LOW_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x167
	.uaword	0x1739
	.uleb128 0xf
	.string	"ADDRLO"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_ADDRESS_LOW_Bits"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x16fe
	.uleb128 0x12
	.string	"_Ifx_ETH_MAC_CONFIGURATION_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x1925
	.uleb128 0xf
	.string	"PRELEN"
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RE"
	.byte	0x8
	.uahalf	0x170
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TE"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"DC"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"BL"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"ACS"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"LUD"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"DR"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"IPC"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"DM"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"LM"
	.byte	0x8
	.uahalf	0x179
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"DO"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"FES"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"DCRS"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"IFG"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"JE"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"BE"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"JD"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"WD"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"TC"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"CST"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"SFTERR"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"TWOKPE"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"SARC"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x188
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_CONFIGURATION_Bits"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x175e
	.uleb128 0x12
	.string	"_Ifx_ETH_MAC_FRAME_FILTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x1a87
	.uleb128 0xf
	.string	"PR"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"HUC"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"HMC"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"DAIF"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PM"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"DBF"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PCF"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"SAIF"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"SAF"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"HPF"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x198
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"VTFE"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"IPFE"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"DNTU"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x554
	.byte	0x4
	.byte	0x9
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"RA"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_FRAME_FILTER_Bits"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x194c
	.uleb128 0x12
	.string	"_Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x1b56
	.uleb128 0xf
	.string	"MISFRMCNT"
	.byte	0x8
	.uahalf	0x1a4
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"MISCNTOVF"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"OVFFRMCNT"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x554
	.byte	0x4
	.byte	0xb
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"OVFCNTOVF"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x1aad
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x1c6e
	.uleb128 0xf
	.string	"CNTRST"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"CNTSTOPRO"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RSTONRD"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"CNTFREEZ"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"CNTPRST"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"CNTPRSTLVL"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"UCDBC"
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"reserved_9"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x554
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x1b94
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x1f89
	.uleb128 0xf
	.string	"RXIPV4GFIS"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4HERFIS"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4NOPAYFIS"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4FRAGFIS"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4UDSBLFIS"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6GFIS"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6HERFIS"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6NOPAYFIS"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RXUDPGFIS"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RXUDPERFIS"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"RXTCPGFIS"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"RXTCPERFIS"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"RXICMPGFIS"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"RXICMPERFIS"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x1ca
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4GOIS"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4HEROIS"
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4NOPAYOIS"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4FRAGOIS"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4UDSBLOIS"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6GOIS"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6HEROIS"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6NOPAYOIS"
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"RXUDPGOIS"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RXUDPEROIS"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"RXTCPGOIS"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"RXTCPEROIS"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"RXICMPGOIS"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"RXICMPEROIS"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x1c8f
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x22b7
	.uleb128 0xf
	.string	"RXIPV4GFIM"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4HERFIM"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4NOPAYFIM"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4FRAGFIM"
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4UDSBLFIM"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6GFIM"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6HERFIM"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6NOPAYFIM"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RXUDPGFIM"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RXUDPERFIM"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"RXTCPGFIM"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"RXTCPERFIM"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"RXICMPGFIM"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"RXICMPERFIM"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4GOIM"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4HEROIM"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4NOPAYOIM"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4FRAGOIM"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RXIPV4UDSBLOIM"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6GOIM"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6HEROIM"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"RXIPV6NOPAYOIM"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"RXUDPGOIM"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RXUDPEROIM"
	.byte	0x8
	.uahalf	0x1f7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"RXTCPGOIM"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"RXTCPEROIM"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"RXICMPGOIM"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"RXICMPEROIM"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x1fb8
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x200
	.uaword	0x259b
	.uleb128 0xf
	.string	"RXGBFRMIS"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RXGBOCTIS"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RXGOCTIS"
	.byte	0x8
	.uahalf	0x204
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"RXBCGFIS"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"RXMCGFIS"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"RXCRCERFIS"
	.byte	0x8
	.uahalf	0x207
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RXALGNERFIS"
	.byte	0x8
	.uahalf	0x208
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RXRUNTFIS"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RXJABERFIS"
	.byte	0x8
	.uahalf	0x20a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RXUSIZEGFIS"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"RXOSIZEGFIS"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"RX64OCTGBFIS"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"RX65T127OCTGBFIS"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"RX128T255OCTGBFIS"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"RX256T511OCTGBFIS"
	.byte	0x8
	.uahalf	0x210
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"RX512T1023OCTGBFIS"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"RX1024TMAXOCTGBFIS"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"RXUCGFIS"
	.byte	0x8
	.uahalf	0x213
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"RXLENERFIS"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"RXORANGEFIS"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RXPAUSFIS"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"RXFOVFIS"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"RXVLANGBFIS"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"RXWDOGFIS"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"RXRCVERRFIS"
	.byte	0x8
	.uahalf	0x21a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RXCTRLFIS"
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x22eb
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x220
	.uaword	0x287b
	.uleb128 0xf
	.string	"RXGBFRMIM"
	.byte	0x8
	.uahalf	0x222
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RXGBOCTIM"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RXGOCTIM"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"RXBCGFIM"
	.byte	0x8
	.uahalf	0x225
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"RXMCGFIM"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"RXCRCERFIM"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RXALGNERFIM"
	.byte	0x8
	.uahalf	0x228
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RXRUNTFIM"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RXJABERFIM"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RXUSIZEGFIM"
	.byte	0x8
	.uahalf	0x22b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"RXOSIZEGFIM"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"RX64OCTGBFIM"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"RX65T127OCTGBFIM"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"RX128T255OCTGBFIM"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"RX256T511OCTGBFIM"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"RX512T1023OCTGBFIM"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"RX1024TMAXOCTGBFIM"
	.byte	0x8
	.uahalf	0x232
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"RXUCGFIM"
	.byte	0x8
	.uahalf	0x233
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"RXLENERFIM"
	.byte	0x8
	.uahalf	0x234
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"RXORANGEFIM"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"RXPAUSFIM"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"RXFOVFIM"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"RXVLANGBFIM"
	.byte	0x8
	.uahalf	0x238
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"RXWDOGFIM"
	.byte	0x8
	.uahalf	0x239
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"RXRCVERRFIM"
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RXCTRLFIM"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x23c
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x25c6
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x240
	.uaword	0x2b5a
	.uleb128 0xf
	.string	"TXGBOCTIS"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TXGBFRMIS"
	.byte	0x8
	.uahalf	0x243
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TXBCGFIS"
	.byte	0x8
	.uahalf	0x244
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TXMCGFIS"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"TX64OCTGBFIS"
	.byte	0x8
	.uahalf	0x246
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"TX65T127OCTGBFIS"
	.byte	0x8
	.uahalf	0x247
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"TX128T255OCTGBFIS"
	.byte	0x8
	.uahalf	0x248
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"TX256T511OCTGBFIS"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"TX512T1023OCTGBFIS"
	.byte	0x8
	.uahalf	0x24a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TX1024TMAXOCTGBFIS"
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"TXUCGBFIS"
	.byte	0x8
	.uahalf	0x24c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"TXMCGBFIS"
	.byte	0x8
	.uahalf	0x24d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"TXBCGBFIS"
	.byte	0x8
	.uahalf	0x24e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"TXUFLOWERFIS"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"TXSCOLGFIS"
	.byte	0x8
	.uahalf	0x250
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"TXMCOLGFIS"
	.byte	0x8
	.uahalf	0x251
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"TXDEFFIS"
	.byte	0x8
	.uahalf	0x252
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"TXLATCOLFIS"
	.byte	0x8
	.uahalf	0x253
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"TXEXCOLFIS"
	.byte	0x8
	.uahalf	0x254
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"TXCARERFIS"
	.byte	0x8
	.uahalf	0x255
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"TXGOCTIS"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"TXGFRMIS"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"TXEXDEFFIS"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"TXPAUSFIS"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"TXVLANGFIS"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"TXOSIZEGFIS"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x25c
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x28ab
	.uleb128 0x12
	.string	"_Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x260
	.uaword	0x2e3a
	.uleb128 0xf
	.string	"TXGBOCTIM"
	.byte	0x8
	.uahalf	0x262
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TXGBFRMIM"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TXBCGFIM"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TXMCGFIM"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"TX64OCTGBFIM"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"TX65T127OCTGBFIM"
	.byte	0x8
	.uahalf	0x267
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"TX128T255OCTGBFIM"
	.byte	0x8
	.uahalf	0x268
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"TX256T511OCTGBFIM"
	.byte	0x8
	.uahalf	0x269
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"TX512T1023OCTGBFIM"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TX1024TMAXOCTGBFIM"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"TXUCGBFIM"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"TXMCGBFIM"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"TXBCGBFIM"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"TXUFLOWERFIM"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"TXSCOLGFIM"
	.byte	0x8
	.uahalf	0x270
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"TXMCOLGFIM"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"TXDEFFIM"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"TXLATCOLFIM"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"TXEXCOLFIM"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"TXCARERFIM"
	.byte	0x8
	.uahalf	0x275
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"TXGOCTIM"
	.byte	0x8
	.uahalf	0x276
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"TXGFRMIM"
	.byte	0x8
	.uahalf	0x277
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"TXEXDEFFIM"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"TXPAUSFIM"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"TXVLANGFIM"
	.byte	0x8
	.uahalf	0x27a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"TXOSIZEGFIM"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x27c
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x2b86
	.uleb128 0x12
	.string	"_Ifx_ETH_OPERATION_MODE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x280
	.uaword	0x2fea
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x282
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"SR"
	.byte	0x8
	.uahalf	0x283
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"OSF"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"RTC"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"reserved_5"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"FUF"
	.byte	0x8
	.uahalf	0x287
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"FEF"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"EFC"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RFA"
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"RFD"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"ST"
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"TTC"
	.byte	0x8
	.uahalf	0x28d
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"FTF"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"TSF"
	.byte	0x8
	.uahalf	0x290
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"RFD_2"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"RFA_2"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"DFF"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"RSF"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"DT"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x296
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_OPERATION_MODE_Bits"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x2e6b
	.uleb128 0x12
	.string	"_Ifx_ETH_PMT_CONTROL_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x30fd
	.uleb128 0xf
	.string	"PWRDWN"
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"MGKPKTEN"
	.byte	0x8
	.uahalf	0x29d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RWKPKTEN"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"MGKPRCVD"
	.byte	0x8
	.uahalf	0x2a0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RWKPRCVD"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"GLBLUCAST"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x2a4
	.uaword	0x554
	.byte	0x4
	.byte	0x15
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"RWKFILTRST"
	.byte	0x8
	.uahalf	0x2a5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_PMT_CONTROL_STATUS_Bits"
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x300e
	.uleb128 0x12
	.string	"_Ifx_ETH_PPS_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x328b
	.uleb128 0xf
	.string	"PPSCTRL_PPSCMD"
	.byte	0x8
	.uahalf	0x2ab
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PPSEN0"
	.byte	0x8
	.uahalf	0x2ac
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"TRGTMODSEL0"
	.byte	0x8
	.uahalf	0x2ad
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x2ae
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PPSCMD1"
	.byte	0x8
	.uahalf	0x2af
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"TRGTMODSEL1"
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"reserved_15"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PPSCMD2"
	.byte	0x8
	.uahalf	0x2b3
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"TRGTMODSEL2"
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PPSCMD3"
	.byte	0x8
	.uahalf	0x2b7
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"TRGTMODSEL3"
	.byte	0x8
	.uahalf	0x2b9
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x2ba
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_PPS_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x3125
	.uleb128 0x12
	.string	"_Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2be
	.uaword	0x3307
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"RDESLA"
	.byte	0x8
	.uahalf	0x2c1
	.uaword	0x554
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x8
	.uahalf	0x2c2
	.uaword	0x32ac
	.uleb128 0x12
	.string	"_Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c5
	.uaword	0x3396
	.uleb128 0xf
	.string	"RIWT"
	.byte	0x8
	.uahalf	0x2c7
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x554
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits"
	.byte	0x8
	.uahalf	0x2c9
	.uaword	0x333c
	.uleb128 0x12
	.string	"_Ifx_ETH_RECEIVE_POLL_DEMAND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2cc
	.uaword	0x3408
	.uleb128 0xf
	.string	"RPD"
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_POLL_DEMAND_Bits"
	.byte	0x8
	.uahalf	0x2cf
	.uaword	0x33cc
	.uleb128 0x12
	.string	"_Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d2
	.uaword	0x347c
	.uleb128 0xf
	.string	"WKUPFRMFTR"
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits"
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x3431
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x3504
	.uleb128 0xf
	.string	"RX1024_MAXOCTGB"
	.byte	0x8
	.uahalf	0x2db
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x34ad
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x3591
	.uleb128 0xf
	.string	"RX128_255OCTGB"
	.byte	0x8
	.uahalf	0x2e2
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2e3
	.uaword	0x353c
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x361d
	.uleb128 0xf
	.string	"RX256_511OCTGB"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2ea
	.uaword	0x35c8
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ee
	.uaword	0x36ab
	.uleb128 0xf
	.string	"RX512_1023OCTGB"
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2f1
	.uaword	0x3654
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x372d
	.uleb128 0xf
	.string	"RX64OCTGB"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x36e3
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fb
	.uaword	0x37b1
	.uleb128 0xf
	.string	"RX65_127OCTGB"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x375e
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x301
	.uaword	0x382f
	.uleb128 0xf
	.string	"RXALGNERR"
	.byte	0x8
	.uahalf	0x303
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x304
	.uaword	0x37e7
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x307
	.uaword	0x38a4
	.uleb128 0xf
	.string	"RXBCASTG"
	.byte	0x8
	.uahalf	0x309
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x385e
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x3915
	.uleb128 0xf
	.string	"RXCTRLG"
	.byte	0x8
	.uahalf	0x30f
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x310
	.uaword	0x38d2
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x313
	.uaword	0x3982
	.uleb128 0xf
	.string	"RXCRCERR"
	.byte	0x8
	.uahalf	0x315
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x316
	.uaword	0x3941
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x319
	.uaword	0x39f2
	.uleb128 0xf
	.string	"RXFIFOOVFL"
	.byte	0x8
	.uahalf	0x31b
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x39ab
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x3a64
	.uleb128 0xf
	.string	"RXFRMGB"
	.byte	0x8
	.uahalf	0x321
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x322
	.uaword	0x3a1f
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x325
	.uaword	0x3ad6
	.uleb128 0xf
	.string	"RXJABERR"
	.byte	0x8
	.uahalf	0x327
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x328
	.uaword	0x3a92
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x3b46
	.uleb128 0xf
	.string	"RXLENERR"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x3b02
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x331
	.uaword	0x3bb8
	.uleb128 0xf
	.string	"RXMCASTG"
	.byte	0x8
	.uahalf	0x333
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x334
	.uaword	0x3b72
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x337
	.uaword	0x3c2a
	.uleb128 0xf
	.string	"RXOCTGB"
	.byte	0x8
	.uahalf	0x339
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x33a
	.uaword	0x3be6
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x33d
	.uaword	0x3c96
	.uleb128 0xf
	.string	"RXOCTG"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x3c57
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x343
	.uaword	0x3d0a
	.uleb128 0xf
	.string	"RXOUTOFRNG"
	.byte	0x8
	.uahalf	0x345
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x3cbf
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x349
	.uaword	0x3d81
	.uleb128 0xf
	.string	"RXOVERSZG"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x3d3b
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_PAUSE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x3ded
	.uleb128 0xf
	.string	"RXPAUSEFRM"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_PAUSE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x3dae
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x355
	.uaword	0x3e57
	.uleb128 0xf
	.string	"RXRCVERR"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x3e12
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x3ec7
	.uleb128 0xf
	.string	"RXRUNTERR"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x3e84
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x361
	.uaword	0x3f39
	.uleb128 0xf
	.string	"RXUNDERSZG"
	.byte	0x8
	.uahalf	0x363
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x364
	.uaword	0x3ef1
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x367
	.uaword	0x3fab
	.uleb128 0xf
	.string	"RXUCASTG"
	.byte	0x8
	.uahalf	0x369
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0x3f67
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x36d
	.uaword	0x401e
	.uleb128 0xf
	.string	"RXVLANFRGB"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x3fd7
	.uleb128 0x12
	.string	"_Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x373
	.uaword	0x4091
	.uleb128 0xf
	.string	"RXWDGERR"
	.byte	0x8
	.uahalf	0x375
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x376
	.uaword	0x404b
	.uleb128 0x12
	.string	"_Ifx_ETH_RXICMP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x379
	.uaword	0x4104
	.uleb128 0xf
	.string	"RXICMPERRFRM"
	.byte	0x8
	.uahalf	0x37b
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x40bf
	.uleb128 0x12
	.string	"_Ifx_ETH_RXICMP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x4172
	.uleb128 0xf
	.string	"RXICMPERROCT"
	.byte	0x8
	.uahalf	0x381
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x382
	.uaword	0x412d
	.uleb128 0x12
	.string	"_Ifx_ETH_RXICMP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x385
	.uaword	0x41de
	.uleb128 0xf
	.string	"RXICMPGDFRM"
	.byte	0x8
	.uahalf	0x387
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x419b
	.uleb128 0x12
	.string	"_Ifx_ETH_RXICMP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x38b
	.uaword	0x4249
	.uleb128 0xf
	.string	"RXICMPGDOCT"
	.byte	0x8
	.uahalf	0x38d
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x38e
	.uaword	0x4206
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x391
	.uaword	0x42bc
	.uleb128 0xf
	.string	"RXIPV4FRAGFRM"
	.byte	0x8
	.uahalf	0x393
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x394
	.uaword	0x4271
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x397
	.uaword	0x4335
	.uleb128 0xf
	.string	"RXIPV4FRAGOCT"
	.byte	0x8
	.uahalf	0x399
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x39a
	.uaword	0x42ea
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x43a6
	.uleb128 0xf
	.string	"RXIPV4GDFRM"
	.byte	0x8
	.uahalf	0x39f
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3a0
	.uaword	0x4363
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x4411
	.uleb128 0xf
	.string	"RXIPV4GDOCT"
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x43ce
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x4488
	.uleb128 0xf
	.string	"RXIPV4HDRERRFRM"
	.byte	0x8
	.uahalf	0x3ab
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3ac
	.uaword	0x4439
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3af
	.uaword	0x4507
	.uleb128 0xf
	.string	"RXIPV4HDRERROCT"
	.byte	0x8
	.uahalf	0x3b1
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3b2
	.uaword	0x44b8
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3b5
	.uaword	0x4583
	.uleb128 0xf
	.string	"RXIPV4NOPAYFRM"
	.byte	0x8
	.uahalf	0x3b7
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3b8
	.uaword	0x4537
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3bb
	.uaword	0x45fd
	.uleb128 0xf
	.string	"RXIPV4NOPAYOCT"
	.byte	0x8
	.uahalf	0x3bd
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3be
	.uaword	0x45b1
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c1
	.uaword	0x4681
	.uleb128 0xf
	.string	"RXIPV4UDSBLOCT"
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3c4
	.uaword	0x462b
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c8
	.uaword	0x4710
	.uleb128 0xf
	.string	"RXIPV4UDSBLFRM"
	.byte	0x8
	.uahalf	0x3ca
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0x46b9
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0x478c
	.uleb128 0xf
	.string	"RXIPV6GDFRM"
	.byte	0x8
	.uahalf	0x3d0
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0x4749
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0x47f7
	.uleb128 0xf
	.string	"RXIPV6GDOCT"
	.byte	0x8
	.uahalf	0x3d6
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3d7
	.uaword	0x47b4
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3da
	.uaword	0x486e
	.uleb128 0xf
	.string	"RXIPV6HDRERRFRM"
	.byte	0x8
	.uahalf	0x3dc
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3dd
	.uaword	0x481f
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0x48ed
	.uleb128 0xf
	.string	"RXIPV6HDRERROCT"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x489e
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3e6
	.uaword	0x4969
	.uleb128 0xf
	.string	"RXIPV6NOPAYFRM"
	.byte	0x8
	.uahalf	0x3e8
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3e9
	.uaword	0x491d
	.uleb128 0x12
	.string	"_Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ec
	.uaword	0x49e3
	.uleb128 0xf
	.string	"RXIPV6NOPAYOCT"
	.byte	0x8
	.uahalf	0x3ee
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3ef
	.uaword	0x4997
	.uleb128 0x12
	.string	"_Ifx_ETH_RXTCP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f2
	.uaword	0x4a54
	.uleb128 0xf
	.string	"RXTCPERRFRM"
	.byte	0x8
	.uahalf	0x3f4
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3f5
	.uaword	0x4a11
	.uleb128 0x12
	.string	"_Ifx_ETH_RXTCP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f8
	.uaword	0x4abf
	.uleb128 0xf
	.string	"RXTCPERROCT"
	.byte	0x8
	.uahalf	0x3fa
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3fb
	.uaword	0x4a7c
	.uleb128 0x12
	.string	"_Ifx_ETH_RXTCP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3fe
	.uaword	0x4b28
	.uleb128 0xf
	.string	"RXTCPGDFRM"
	.byte	0x8
	.uahalf	0x400
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x401
	.uaword	0x4ae7
	.uleb128 0x12
	.string	"_Ifx_ETH_RXTCP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x404
	.uaword	0x4b90
	.uleb128 0xf
	.string	"RXTCPGDOCT"
	.byte	0x8
	.uahalf	0x406
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x407
	.uaword	0x4b4f
	.uleb128 0x12
	.string	"_Ifx_ETH_RXUDP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x40a
	.uaword	0x4bfa
	.uleb128 0xf
	.string	"RXUDPERRFRM"
	.byte	0x8
	.uahalf	0x40c
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x40d
	.uaword	0x4bb7
	.uleb128 0x12
	.string	"_Ifx_ETH_RXUDP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x410
	.uaword	0x4c65
	.uleb128 0xf
	.string	"RXUDPERROCT"
	.byte	0x8
	.uahalf	0x412
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x413
	.uaword	0x4c22
	.uleb128 0x12
	.string	"_Ifx_ETH_RXUDP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x416
	.uaword	0x4cce
	.uleb128 0xf
	.string	"RXUDPGDFRM"
	.byte	0x8
	.uahalf	0x418
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x419
	.uaword	0x4c8d
	.uleb128 0x12
	.string	"_Ifx_ETH_RXUDP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x41c
	.uaword	0x4d36
	.uleb128 0xf
	.string	"RXUDPGDOCT"
	.byte	0x8
	.uahalf	0x41e
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x41f
	.uaword	0x4cf5
	.uleb128 0x12
	.string	"_Ifx_ETH_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x422
	.uaword	0x4f07
	.uleb128 0xf
	.string	"TI"
	.byte	0x8
	.uahalf	0x424
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TPS"
	.byte	0x8
	.uahalf	0x425
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TU"
	.byte	0x8
	.uahalf	0x426
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TJT"
	.byte	0x8
	.uahalf	0x427
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"OVF"
	.byte	0x8
	.uahalf	0x428
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"UNF"
	.byte	0x8
	.uahalf	0x429
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"RI"
	.byte	0x8
	.uahalf	0x42a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"RU"
	.byte	0x8
	.uahalf	0x42b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"RPS"
	.byte	0x8
	.uahalf	0x42c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"RWT"
	.byte	0x8
	.uahalf	0x42d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"ETI"
	.byte	0x8
	.uahalf	0x42e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x42f
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"FBI"
	.byte	0x8
	.uahalf	0x430
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"ERI"
	.byte	0x8
	.uahalf	0x431
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"AIS"
	.byte	0x8
	.uahalf	0x432
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"NIS"
	.byte	0x8
	.uahalf	0x433
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"RS"
	.byte	0x8
	.uahalf	0x434
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"TS"
	.byte	0x8
	.uahalf	0x435
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"EB"
	.byte	0x8
	.uahalf	0x436
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"GLI"
	.byte	0x8
	.uahalf	0x437
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"GMI"
	.byte	0x8
	.uahalf	0x438
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"GPI"
	.byte	0x8
	.uahalf	0x439
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"TTI"
	.byte	0x8
	.uahalf	0x43a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"GLPII"
	.byte	0x8
	.uahalf	0x43b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x43c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_STATUS_Bits"
	.byte	0x8
	.uahalf	0x43d
	.uaword	0x4d5d
	.uleb128 0x12
	.string	"_Ifx_ETH_SUB_SECOND_INCREMENT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x440
	.uaword	0x4f72
	.uleb128 0xf
	.string	"SSINC"
	.byte	0x8
	.uahalf	0x442
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x443
	.uaword	0x554
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SUB_SECOND_INCREMENT_Bits"
	.byte	0x8
	.uahalf	0x444
	.uaword	0x4f23
	.uleb128 0x12
	.string	"_Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x447
	.uaword	0x4ff6
	.uleb128 0xf
	.string	"TSHWR"
	.byte	0x8
	.uahalf	0x449
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x44a
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x44b
	.uaword	0x4f9c
	.uleb128 0x12
	.string	"_Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x44e
	.uaword	0x507c
	.uleb128 0xf
	.string	"TSSS"
	.byte	0x8
	.uahalf	0x450
	.uaword	0x554
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x451
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits"
	.byte	0x8
	.uahalf	0x452
	.uaword	0x502b
	.uleb128 0x12
	.string	"_Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x455
	.uaword	0x5104
	.uleb128 0xf
	.string	"TSSS"
	.byte	0x8
	.uahalf	0x457
	.uaword	0x554
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"ADDSUB"
	.byte	0x8
	.uahalf	0x458
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits"
	.byte	0x8
	.uahalf	0x459
	.uaword	0x50a9
	.uleb128 0x12
	.string	"_Ifx_ETH_SYSTEM_TIME_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x45c
	.uaword	0x5174
	.uleb128 0xf
	.string	"TSS"
	.byte	0x8
	.uahalf	0x45e
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x45f
	.uaword	0x5138
	.uleb128 0x12
	.string	"_Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x462
	.uaword	0x51e0
	.uleb128 0xf
	.string	"TSS"
	.byte	0x8
	.uahalf	0x464
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits"
	.byte	0x8
	.uahalf	0x465
	.uaword	0x519d
	.uleb128 0x12
	.string	"_Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x468
	.uaword	0x5267
	.uleb128 0xf
	.string	"TTSLO"
	.byte	0x8
	.uahalf	0x46a
	.uaword	0x554
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"TRGTBUSY"
	.byte	0x8
	.uahalf	0x46b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits"
	.byte	0x8
	.uahalf	0x46c
	.uaword	0x5210
	.uleb128 0x12
	.string	"_Ifx_ETH_TARGET_TIME_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x46f
	.uaword	0x52d1
	.uleb128 0xf
	.string	"TSTR"
	.byte	0x8
	.uahalf	0x471
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TARGET_TIME_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x472
	.uaword	0x5294
	.uleb128 0x12
	.string	"_Ifx_ETH_TIMESTAMP_ADDEND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x475
	.uaword	0x5334
	.uleb128 0xf
	.string	"TSAR"
	.byte	0x8
	.uahalf	0x477
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_ADDEND_Bits"
	.byte	0x8
	.uahalf	0x478
	.uaword	0x52fa
	.uleb128 0x12
	.string	"_Ifx_ETH_TIMESTAMP_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x47b
	.uaword	0x5562
	.uleb128 0xf
	.string	"TSENA"
	.byte	0x8
	.uahalf	0x47d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TSCFUPDT"
	.byte	0x8
	.uahalf	0x47e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TSINIT"
	.byte	0x8
	.uahalf	0x47f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TSUPDT"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"TSTRIG"
	.byte	0x8
	.uahalf	0x481
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"TSADDREG"
	.byte	0x8
	.uahalf	0x482
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x483
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"TSENALL"
	.byte	0x8
	.uahalf	0x484
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TSCTRLSSR"
	.byte	0x8
	.uahalf	0x485
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"TSVER2ENA"
	.byte	0x8
	.uahalf	0x486
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"TSIPENA"
	.byte	0x8
	.uahalf	0x487
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"TSIPV6ENA"
	.byte	0x8
	.uahalf	0x488
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"TSIPV4ENA"
	.byte	0x8
	.uahalf	0x489
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"TSEVNTENA"
	.byte	0x8
	.uahalf	0x48a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"TSMSTRENA"
	.byte	0x8
	.uahalf	0x48b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"SNAPTYPSEL"
	.byte	0x8
	.uahalf	0x48c
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"TSENMACADDR"
	.byte	0x8
	.uahalf	0x48d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x48e
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"ATSFC"
	.byte	0x8
	.uahalf	0x48f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"ATSEN0"
	.byte	0x8
	.uahalf	0x490
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"ATSEN1"
	.byte	0x8
	.uahalf	0x491
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"ATSEN2"
	.byte	0x8
	.uahalf	0x492
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"ATSEN3"
	.byte	0x8
	.uahalf	0x493
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x494
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x495
	.uaword	0x535a
	.uleb128 0x12
	.string	"_Ifx_ETH_TIMESTAMP_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x498
	.uaword	0x56f1
	.uleb128 0xf
	.string	"TSSOVF"
	.byte	0x8
	.uahalf	0x49a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"TSTARGT"
	.byte	0x8
	.uahalf	0x49b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"AUXTSTRIG"
	.byte	0x8
	.uahalf	0x49c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"TSTRGTERR"
	.byte	0x8
	.uahalf	0x49d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"TSTARGT1"
	.byte	0x8
	.uahalf	0x49e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"TSTRGTERR1"
	.byte	0x8
	.uahalf	0x49f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"TSTARGT2"
	.byte	0x8
	.uahalf	0x4a0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"TSTRGTERR2"
	.byte	0x8
	.uahalf	0x4a1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"TSTARGT3"
	.byte	0x8
	.uahalf	0x4a2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TSTRGTERR3"
	.byte	0x8
	.uahalf	0x4a3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4a4
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"ATSSTN"
	.byte	0x8
	.uahalf	0x4a5
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x4a6
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"ATSSTM"
	.byte	0x8
	.uahalf	0x4a7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"ATSNS"
	.byte	0x8
	.uahalf	0x4a8
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x4a9
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_STATUS_Bits"
	.byte	0x8
	.uahalf	0x4aa
	.uaword	0x5589
	.uleb128 0x12
	.string	"_Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4ad
	.uaword	0x5773
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4af
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"TDESLA"
	.byte	0x8
	.uahalf	0x4b0
	.uaword	0x554
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x8
	.uahalf	0x4b1
	.uaword	0x5717
	.uleb128 0x12
	.string	"_Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4b4
	.uaword	0x57e6
	.uleb128 0xf
	.string	"TPD"
	.byte	0x8
	.uahalf	0x4b6
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits"
	.byte	0x8
	.uahalf	0x4b7
	.uaword	0x57a9
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4bb
	.uaword	0x5867
	.uleb128 0xf
	.string	"TX1024_MAXOCTGB"
	.byte	0x8
	.uahalf	0x4bd
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4be
	.uaword	0x5810
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c2
	.uaword	0x58f4
	.uleb128 0xf
	.string	"TX128_255OCTGB"
	.byte	0x8
	.uahalf	0x4c4
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4c5
	.uaword	0x589f
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c9
	.uaword	0x5980
	.uleb128 0xf
	.string	"TX256_511OCTGB"
	.byte	0x8
	.uahalf	0x4cb
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4cc
	.uaword	0x592b
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d0
	.uaword	0x5a0e
	.uleb128 0xf
	.string	"TX512_1023OCTGB"
	.byte	0x8
	.uahalf	0x4d2
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4d3
	.uaword	0x59b7
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d6
	.uaword	0x5a90
	.uleb128 0xf
	.string	"TX64OCTGB"
	.byte	0x8
	.uahalf	0x4d8
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4d9
	.uaword	0x5a46
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4dd
	.uaword	0x5b14
	.uleb128 0xf
	.string	"TX65_127OCTGB"
	.byte	0x8
	.uahalf	0x4df
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4e0
	.uaword	0x5ac1
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e3
	.uaword	0x5b95
	.uleb128 0xf
	.string	"TXBCASTGB"
	.byte	0x8
	.uahalf	0x4e5
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4e6
	.uaword	0x5b4a
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e9
	.uaword	0x5c0d
	.uleb128 0xf
	.string	"TXBCASTG"
	.byte	0x8
	.uahalf	0x4eb
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x4ec
	.uaword	0x5bc7
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4ef
	.uaword	0x5c7e
	.uleb128 0xf
	.string	"TXCARR"
	.byte	0x8
	.uahalf	0x4f1
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4f2
	.uaword	0x5c3b
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_DEFERRED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4f5
	.uaword	0x5cea
	.uleb128 0xf
	.string	"TXDEFRD"
	.byte	0x8
	.uahalf	0x4f7
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_DEFERRED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4f8
	.uaword	0x5cab
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4fc
	.uaword	0x5d5d
	.uleb128 0xf
	.string	"TXEXSCOL"
	.byte	0x8
	.uahalf	0x4fe
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4ff
	.uaword	0x5d12
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x503
	.uaword	0x5dd9
	.uleb128 0xf
	.string	"TXEXSDEF"
	.byte	0x8
	.uahalf	0x505
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits"
	.byte	0x8
	.uahalf	0x506
	.uaword	0x5d90
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x509
	.uaword	0x5e4e
	.uleb128 0xf
	.string	"TXFRMGB"
	.byte	0x8
	.uahalf	0x50b
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x50c
	.uaword	0x5e0a
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x50f
	.uaword	0x5eba
	.uleb128 0xf
	.string	"TXFRMG"
	.byte	0x8
	.uahalf	0x511
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x512
	.uaword	0x5e7b
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x515
	.uaword	0x5f2a
	.uleb128 0xf
	.string	"TXLATECOL"
	.byte	0x8
	.uahalf	0x517
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x518
	.uaword	0x5ee3
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x51b
	.uaword	0x5fa3
	.uleb128 0xf
	.string	"TXMCASTGB"
	.byte	0x8
	.uahalf	0x51d
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x51e
	.uaword	0x5f58
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x521
	.uaword	0x601b
	.uleb128 0xf
	.string	"TXMCASTG"
	.byte	0x8
	.uahalf	0x523
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x524
	.uaword	0x5fd5
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x528
	.uaword	0x609a
	.uleb128 0xf
	.string	"TXMULTCOLG"
	.byte	0x8
	.uahalf	0x52a
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x52b
	.uaword	0x6049
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x52e
	.uaword	0x6115
	.uleb128 0xf
	.string	"TXOCTGB"
	.byte	0x8
	.uahalf	0x530
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x531
	.uaword	0x60d1
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x534
	.uaword	0x6181
	.uleb128 0xf
	.string	"TXOCTG"
	.byte	0x8
	.uahalf	0x536
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x537
	.uaword	0x6142
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x53a
	.uaword	0x61eb
	.uleb128 0xf
	.string	"TXOSIZG"
	.byte	0x8
	.uahalf	0x53c
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x53d
	.uaword	0x61aa
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_PAUSE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x540
	.uaword	0x6251
	.uleb128 0xf
	.string	"TXPAUSE"
	.byte	0x8
	.uahalf	0x542
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_PAUSE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x543
	.uaword	0x6215
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x547
	.uaword	0x62c5
	.uleb128 0xf
	.string	"TXSNGLCOLG"
	.byte	0x8
	.uahalf	0x549
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x54a
	.uaword	0x6276
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x54d
	.uaword	0x6342
	.uleb128 0xf
	.string	"TXUNDRFLW"
	.byte	0x8
	.uahalf	0x54f
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x550
	.uaword	0x62fa
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x553
	.uaword	0x63ba
	.uleb128 0xf
	.string	"TXUCASTGB"
	.byte	0x8
	.uahalf	0x555
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x6371
	.uleb128 0x12
	.string	"_Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x559
	.uaword	0x642a
	.uleb128 0xf
	.string	"TXVLANG"
	.byte	0x8
	.uahalf	0x55b
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x55c
	.uaword	0x63ea
	.uleb128 0x12
	.string	"_Ifx_ETH_VERSION_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x55f
	.uaword	0x64ab
	.uleb128 0xf
	.string	"SNPSVER"
	.byte	0x8
	.uahalf	0x561
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"USERVER"
	.byte	0x8
	.uahalf	0x562
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x563
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_VERSION_Bits"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x6453
	.uleb128 0x12
	.string	"_Ifx_ETH_VLAN_TAG_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x567
	.uaword	0x654b
	.uleb128 0xf
	.string	"VL"
	.byte	0x8
	.uahalf	0x569
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"ETV"
	.byte	0x8
	.uahalf	0x56a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"VTIM"
	.byte	0x8
	.uahalf	0x56b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"ESVL"
	.byte	0x8
	.uahalf	0x56c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"VTHM"
	.byte	0x8
	.uahalf	0x56d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x56e
	.uaword	0x554
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_VLAN_TAG_Bits"
	.byte	0x8
	.uahalf	0x56f
	.uaword	0x64c8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x577
	.uaword	0x6591
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x579
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x57a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x57b
	.uaword	0x564
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_ACCEN0"
	.byte	0x8
	.uahalf	0x57c
	.uaword	0x6569
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x57f
	.uaword	0x65d0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x581
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x582
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x583
	.uaword	0x5ac
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_ACCEN1"
	.byte	0x8
	.uahalf	0x584
	.uaword	0x65a8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x587
	.uaword	0x660f
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x589
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x58a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x626
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_AHB_OR_AXI_STATUS"
	.byte	0x8
	.uahalf	0x58c
	.uaword	0x65e7
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x58f
	.uaword	0x6659
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x591
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x592
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x593
	.uaword	0x74f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_BUS_MODE"
	.byte	0x8
	.uahalf	0x594
	.uaword	0x6631
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x597
	.uaword	0x669a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x599
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x59a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x59b
	.uaword	0x7b6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_CLC"
	.byte	0x8
	.uahalf	0x59c
	.uaword	0x6672
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x59f
	.uaword	0x66d6
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5a1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5a2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5a3
	.uaword	0x820
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0x5a4
	.uaword	0x66ae
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a7
	.uaword	0x6732
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5a9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5aa
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5ab
	.uaword	0x8a6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR"
	.byte	0x8
	.uahalf	0x5ac
	.uaword	0x670a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5af
	.uaword	0x678a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5b2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5b3
	.uaword	0x92d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0x5b4
	.uaword	0x6762
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b7
	.uaword	0x67e7
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5b9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5ba
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5bb
	.uaword	0x9b5
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR"
	.byte	0x8
	.uahalf	0x5bc
	.uaword	0x67bf
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5bf
	.uaword	0x6840
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5c1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5c2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5c3
	.uaword	0xb31
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_DEBUG"
	.byte	0x8
	.uahalf	0x5c4
	.uaword	0x6818
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c7
	.uaword	0x687e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5c9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5ca
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5cb
	.uaword	0xbf9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_FLOW_CONTROL"
	.byte	0x8
	.uahalf	0x5cc
	.uaword	0x6856
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5cf
	.uaword	0x68c3
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5d1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5d2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5d3
	.uaword	0xc93
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x8
	.uahalf	0x5d4
	.uaword	0x689b
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d7
	.uaword	0x6908
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5d9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5da
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5db
	.uaword	0xcf2
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x8
	.uahalf	0x5dc
	.uaword	0x68e0
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5df
	.uaword	0x694a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5e1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5e2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5e3
	.uaword	0xe25
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_GPCTL"
	.byte	0x8
	.uahalf	0x5e4
	.uaword	0x6922
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e7
	.uaword	0x6988
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5e9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5ea
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5eb
	.uaword	0xe75
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_HASH_TABLE_HIGH"
	.byte	0x8
	.uahalf	0x5ec
	.uaword	0x6960
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5ef
	.uaword	0x69d0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5f1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5f2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5f3
	.uaword	0xece
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_HASH_TABLE_LOW"
	.byte	0x8
	.uahalf	0x5f4
	.uaword	0x69a8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f7
	.uaword	0x6a17
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x5f9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x5fa
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x5fb
	.uaword	0x113e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_HW_FEATURE"
	.byte	0x8
	.uahalf	0x5fc
	.uaword	0x69ef
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x5ff
	.uaword	0x6a5a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x601
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x602
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x603
	.uaword	0x11b0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_ID"
	.byte	0x8
	.uahalf	0x604
	.uaword	0x6a32
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x607
	.uaword	0x6a95
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x609
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x60a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x60b
	.uaword	0x1301
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_ENABLE"
	.byte	0x8
	.uahalf	0x60c
	.uaword	0x6a6d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x60f
	.uaword	0x6ade
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x611
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x612
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x613
	.uaword	0x13e3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x614
	.uaword	0x6ab6
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x617
	.uaword	0x6b25
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x619
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x61a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x61b
	.uaword	0x1515
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_INTERRUPT_STATUS"
	.byte	0x8
	.uahalf	0x61c
	.uaword	0x6afd
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x61f
	.uaword	0x6b6e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x621
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x622
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x623
	.uaword	0x158d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRST0"
	.byte	0x8
	.uahalf	0x624
	.uaword	0x6b46
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x627
	.uaword	0x6bac
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x629
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x62a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x62b
	.uaword	0x15e6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRST1"
	.byte	0x8
	.uahalf	0x62c
	.uaword	0x6b84
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x62f
	.uaword	0x6bea
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x631
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x632
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x633
	.uaword	0x1641
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_KRSTCLR"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x6bc2
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x637
	.uaword	0x6c2a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x639
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x63a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x63b
	.uaword	0x16d8
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_ADDRESS_HIGH"
	.byte	0x8
	.uahalf	0x63c
	.uaword	0x6c02
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x63f
	.uaword	0x6c73
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x641
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x642
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x643
	.uaword	0x1739
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_ADDRESS_LOW"
	.byte	0x8
	.uahalf	0x644
	.uaword	0x6c4b
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x647
	.uaword	0x6cbb
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x649
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x64a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x64b
	.uaword	0x1925
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_CONFIGURATION"
	.byte	0x8
	.uahalf	0x64c
	.uaword	0x6c93
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x64f
	.uaword	0x6d05
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x651
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x652
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x653
	.uaword	0x1a87
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_FRAME_FILTER"
	.byte	0x8
	.uahalf	0x654
	.uaword	0x6cdd
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x657
	.uaword	0x6d4e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x659
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x65a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x65b
	.uaword	0x1b56
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER"
	.byte	0x8
	.uahalf	0x65c
	.uaword	0x6d26
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x65f
	.uaword	0x6daf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x661
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x662
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x663
	.uaword	0x1c6e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_CONTROL"
	.byte	0x8
	.uahalf	0x664
	.uaword	0x6d87
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x667
	.uaword	0x6df3
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x669
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x66a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x66b
	.uaword	0x1f89
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0x66c
	.uaword	0x6dcb
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x66f
	.uaword	0x6e45
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x671
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x672
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x673
	.uaword	0x22b7
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x674
	.uaword	0x6e1d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x677
	.uaword	0x6e9c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x679
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x67a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x67b
	.uaword	0x259b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0x67c
	.uaword	0x6e74
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x67f
	.uaword	0x6eea
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x681
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x682
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x683
	.uaword	0x287b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x684
	.uaword	0x6ec2
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x687
	.uaword	0x6f3d
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x689
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x68a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x68b
	.uaword	0x2b5a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT"
	.byte	0x8
	.uahalf	0x68c
	.uaword	0x6f15
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x68f
	.uaword	0x6f8c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x691
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x692
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x693
	.uaword	0x2e3a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x694
	.uaword	0x6f64
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x697
	.uaword	0x6fe0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x699
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x69a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x69b
	.uaword	0x2fea
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_OPERATION_MODE"
	.byte	0x8
	.uahalf	0x69c
	.uaword	0x6fb8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x69f
	.uaword	0x7027
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6a1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6a2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6a3
	.uaword	0x30fd
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_PMT_CONTROL_STATUS"
	.byte	0x8
	.uahalf	0x6a4
	.uaword	0x6fff
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a7
	.uaword	0x7072
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6a9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6aa
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6ab
	.uaword	0x328b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_PPS_CONTROL"
	.byte	0x8
	.uahalf	0x6ac
	.uaword	0x704a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6af
	.uaword	0x70b6
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6b1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6b2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6b3
	.uaword	0x3307
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0x6b4
	.uaword	0x708e
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b7
	.uaword	0x710e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6b9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6ba
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6bb
	.uaword	0x3396
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER"
	.byte	0x8
	.uahalf	0x6bc
	.uaword	0x70e6
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6bf
	.uaword	0x7167
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6c1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6c2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6c3
	.uaword	0x3408
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RECEIVE_POLL_DEMAND"
	.byte	0x8
	.uahalf	0x6c4
	.uaword	0x713f
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c7
	.uaword	0x71b3
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6c9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6ca
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6cb
	.uaword	0x347c
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER"
	.byte	0x8
	.uahalf	0x6cc
	.uaword	0x718b
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d0
	.uaword	0x7207
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6d2
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6d3
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6d4
	.uaword	0x3504
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6d5
	.uaword	0x71df
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d9
	.uaword	0x7262
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6db
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6dc
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6dd
	.uaword	0x3591
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6de
	.uaword	0x723a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e2
	.uaword	0x72bc
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6e4
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6e5
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6e6
	.uaword	0x361d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6e7
	.uaword	0x7294
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6eb
	.uaword	0x7316
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6ed
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6ee
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6ef
	.uaword	0x36ab
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6f0
	.uaword	0x72ee
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f3
	.uaword	0x7371
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6f5
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6f6
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x6f7
	.uaword	0x372d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6f8
	.uaword	0x7349
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x6fc
	.uaword	0x73c5
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x6fe
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x6ff
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x700
	.uaword	0x37b1
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x701
	.uaword	0x739d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x704
	.uaword	0x741e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x706
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x707
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x708
	.uaword	0x382f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x709
	.uaword	0x73f6
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x70c
	.uaword	0x7470
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x70e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x70f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x710
	.uaword	0x38a4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x711
	.uaword	0x7448
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x714
	.uaword	0x74c1
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x716
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x717
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x718
	.uaword	0x3915
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_CONTROL_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x719
	.uaword	0x7499
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x71c
	.uaword	0x7510
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x71e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x71f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x720
	.uaword	0x3982
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_CRC_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x721
	.uaword	0x74e8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x724
	.uaword	0x755c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x726
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x727
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x728
	.uaword	0x39f2
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES"
	.byte	0x8
	.uahalf	0x729
	.uaword	0x7534
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x72c
	.uaword	0x75ac
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x72e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x72f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x730
	.uaword	0x3a64
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x731
	.uaword	0x7584
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x734
	.uaword	0x75fd
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x736
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x737
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x738
	.uaword	0x3ad6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_JABBER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x739
	.uaword	0x75d5
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x73c
	.uaword	0x764c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x73e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x73f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x740
	.uaword	0x3b46
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_LENGTH_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x741
	.uaword	0x7624
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x744
	.uaword	0x769b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x746
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x747
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x748
	.uaword	0x3bb8
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x749
	.uaword	0x7673
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x74c
	.uaword	0x76ec
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x74e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x74f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x750
	.uaword	0x3c96
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x751
	.uaword	0x76c4
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x754
	.uaword	0x7738
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x756
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x757
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x758
	.uaword	0x3c2a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x759
	.uaword	0x7710
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x75c
	.uaword	0x7788
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x75e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x75f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x760
	.uaword	0x3d0a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES"
	.byte	0x8
	.uahalf	0x761
	.uaword	0x7760
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x764
	.uaword	0x77dc
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x766
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x767
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x768
	.uaword	0x3d81
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x769
	.uaword	0x77b4
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x76c
	.uaword	0x782c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x76e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x76f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x770
	.uaword	0x3ded
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0x771
	.uaword	0x7804
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x774
	.uaword	0x7874
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x776
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x777
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x778
	.uaword	0x3e57
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_RECEIVE_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x779
	.uaword	0x784c
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x77c
	.uaword	0x78c4
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x77e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x77f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x780
	.uaword	0x3ec7
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_RUNT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x781
	.uaword	0x789c
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x784
	.uaword	0x7911
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x786
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x787
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x788
	.uaword	0x3f39
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x789
	.uaword	0x78e9
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x78c
	.uaword	0x7962
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x78e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x78f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x790
	.uaword	0x3fab
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_UNICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x791
	.uaword	0x793a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x794
	.uaword	0x79b1
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x796
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x797
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x798
	.uaword	0x401e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x799
	.uaword	0x7989
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x79c
	.uaword	0x7a01
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x79e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x79f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7a0
	.uaword	0x4091
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7a1
	.uaword	0x79d9
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a4
	.uaword	0x7a52
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7a6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7a7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7a8
	.uaword	0x4104
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7a9
	.uaword	0x7a2a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7ac
	.uaword	0x7a9e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7ae
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7af
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7b0
	.uaword	0x4172
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x7b1
	.uaword	0x7a76
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b4
	.uaword	0x7aea
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7b6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7b7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7b8
	.uaword	0x41de
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x7b9
	.uaword	0x7ac2
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7bc
	.uaword	0x7b35
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7be
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7bf
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7c0
	.uaword	0x4249
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXICMP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x7c1
	.uaword	0x7b0d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c4
	.uaword	0x7b80
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7c6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7c7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7c8
	.uaword	0x42bc
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES"
	.byte	0x8
	.uahalf	0x7c9
	.uaword	0x7b58
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7cc
	.uaword	0x7bd1
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7ce
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7cf
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7d0
	.uaword	0x4335
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS"
	.byte	0x8
	.uahalf	0x7d1
	.uaword	0x7ba9
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d4
	.uaword	0x7c22
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7d6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7d7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7d8
	.uaword	0x43a6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x7d9
	.uaword	0x7bfa
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7dc
	.uaword	0x7c6d
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7de
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7df
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7e0
	.uaword	0x4411
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x7e1
	.uaword	0x7c45
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e4
	.uaword	0x7cb8
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7e6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7e7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7e8
	.uaword	0x4488
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7e9
	.uaword	0x7c90
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7ec
	.uaword	0x7d0b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7ee
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7ef
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7f0
	.uaword	0x4507
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x7f1
	.uaword	0x7ce3
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f4
	.uaword	0x7d5e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7f6
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7f7
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x7f8
	.uaword	0x4583
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0x7f9
	.uaword	0x7d36
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x7fc
	.uaword	0x7daf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x7fe
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x7ff
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x800
	.uaword	0x45fd
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0x801
	.uaword	0x7d87
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x804
	.uaword	0x7e00
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x806
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x807
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x808
	.uaword	0x4681
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS"
	.byte	0x8
	.uahalf	0x809
	.uaword	0x7dd8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x80d
	.uaword	0x7e5b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x80f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x810
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x811
	.uaword	0x4710
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES"
	.byte	0x8
	.uahalf	0x812
	.uaword	0x7e33
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x815
	.uaword	0x7eb7
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x817
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x818
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x819
	.uaword	0x478c
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x81a
	.uaword	0x7e8f
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x81d
	.uaword	0x7f02
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x81f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x820
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x821
	.uaword	0x47f7
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x822
	.uaword	0x7eda
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x825
	.uaword	0x7f4d
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x827
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x828
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x829
	.uaword	0x486e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x82a
	.uaword	0x7f25
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x82d
	.uaword	0x7fa0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x82f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x830
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x831
	.uaword	0x48ed
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x832
	.uaword	0x7f78
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x835
	.uaword	0x7ff3
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x837
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x838
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x839
	.uaword	0x4969
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0x83a
	.uaword	0x7fcb
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x83d
	.uaword	0x8044
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x83f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x840
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x841
	.uaword	0x49e3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0x842
	.uaword	0x801c
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x845
	.uaword	0x8095
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x847
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x848
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x849
	.uaword	0x4a54
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x84a
	.uaword	0x806d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x84d
	.uaword	0x80e0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x84f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x850
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x851
	.uaword	0x4abf
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x852
	.uaword	0x80b8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x855
	.uaword	0x812b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x857
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x858
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x859
	.uaword	0x4b28
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x85a
	.uaword	0x8103
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x85d
	.uaword	0x8175
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x85f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x860
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x861
	.uaword	0x4b90
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXTCP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x862
	.uaword	0x814d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x865
	.uaword	0x81bf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x867
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x868
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x869
	.uaword	0x4bfa
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x86a
	.uaword	0x8197
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x86d
	.uaword	0x820a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x86f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x870
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x871
	.uaword	0x4c65
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x872
	.uaword	0x81e2
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x875
	.uaword	0x8255
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x877
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x878
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x879
	.uaword	0x4cce
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x87a
	.uaword	0x822d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x87d
	.uaword	0x829f
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x87f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x880
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x881
	.uaword	0x4d36
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_RXUDP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x882
	.uaword	0x8277
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x885
	.uaword	0x82e9
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x887
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x888
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x889
	.uaword	0x4f07
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_STATUS"
	.byte	0x8
	.uahalf	0x88a
	.uaword	0x82c1
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x88d
	.uaword	0x8328
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x88f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x890
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x891
	.uaword	0x4f72
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SUB_SECOND_INCREMENT"
	.byte	0x8
	.uahalf	0x892
	.uaword	0x8300
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x895
	.uaword	0x8375
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x897
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x898
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x899
	.uaword	0x4ff6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS"
	.byte	0x8
	.uahalf	0x89a
	.uaword	0x834d
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x89d
	.uaword	0x83cd
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x89f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8a0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8a1
	.uaword	0x507c
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0x8a2
	.uaword	0x83a5
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8a5
	.uaword	0x841d
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8a7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8a8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8a9
	.uaword	0x5104
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE"
	.byte	0x8
	.uahalf	0x8aa
	.uaword	0x83f5
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ad
	.uaword	0x8474
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8af
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8b0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8b1
	.uaword	0x5174
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS"
	.byte	0x8
	.uahalf	0x8b2
	.uaword	0x844c
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8b5
	.uaword	0x84c0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8b7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8b8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8b9
	.uaword	0x51e0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE"
	.byte	0x8
	.uahalf	0x8ba
	.uaword	0x8498
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8bd
	.uaword	0x8513
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8bf
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8c0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8c1
	.uaword	0x5267
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TARGET_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0x8c2
	.uaword	0x84eb
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8c5
	.uaword	0x8563
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8c7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8c8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8c9
	.uaword	0x52d1
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TARGET_TIME_SECONDS"
	.byte	0x8
	.uahalf	0x8ca
	.uaword	0x853b
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8cd
	.uaword	0x85af
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8cf
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8d0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8d1
	.uaword	0x5334
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_ADDEND"
	.byte	0x8
	.uahalf	0x8d2
	.uaword	0x8587
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8d5
	.uaword	0x85f8
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8d7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8d8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8d9
	.uaword	0x5562
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_CONTROL"
	.byte	0x8
	.uahalf	0x8da
	.uaword	0x85d0
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8dd
	.uaword	0x8642
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8df
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8e0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8e1
	.uaword	0x56f1
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TIMESTAMP_STATUS"
	.byte	0x8
	.uahalf	0x8e2
	.uaword	0x861a
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8e5
	.uaword	0x868b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8e7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8e8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8e9
	.uaword	0x5773
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0x8ea
	.uaword	0x8663
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ed
	.uaword	0x86e4
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8ef
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8f0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8f1
	.uaword	0x57e6
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TRANSMIT_POLL_DEMAND"
	.byte	0x8
	.uahalf	0x8f2
	.uaword	0x86bc
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8f6
	.uaword	0x8731
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x8f8
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x8f9
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x8fa
	.uaword	0x5867
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x8fb
	.uaword	0x8709
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ff
	.uaword	0x878c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x901
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x902
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x903
	.uaword	0x58f4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x904
	.uaword	0x8764
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x908
	.uaword	0x87e6
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x90a
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x90b
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x90c
	.uaword	0x5980
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x90d
	.uaword	0x87be
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x911
	.uaword	0x8840
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x913
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x914
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x915
	.uaword	0x5a0e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x916
	.uaword	0x8818
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x919
	.uaword	0x889b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x91b
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x91c
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x91d
	.uaword	0x5a90
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x91e
	.uaword	0x8873
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x922
	.uaword	0x88ef
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x924
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x925
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x926
	.uaword	0x5b14
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x927
	.uaword	0x88c7
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x92a
	.uaword	0x8948
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x92c
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x92d
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x92e
	.uaword	0x5c0d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x92f
	.uaword	0x8920
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x932
	.uaword	0x8999
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x934
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x935
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x936
	.uaword	0x5b95
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x937
	.uaword	0x8971
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x93a
	.uaword	0x89ee
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x93c
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x93d
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x93e
	.uaword	0x5c7e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_CARRIER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x93f
	.uaword	0x89c6
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x942
	.uaword	0x8a3e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x944
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x945
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x946
	.uaword	0x5cea
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_DEFERRED_FRAMES"
	.byte	0x8
	.uahalf	0x947
	.uaword	0x8a16
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x94b
	.uaword	0x8a89
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x94d
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x94e
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x94f
	.uaword	0x5d5d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0x950
	.uaword	0x8a61
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x954
	.uaword	0x8adf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x956
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x957
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x958
	.uaword	0x5dd9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR"
	.byte	0x8
	.uahalf	0x959
	.uaword	0x8ab7
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x95c
	.uaword	0x8b33
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x95e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x95f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x960
	.uaword	0x5eba
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x961
	.uaword	0x8b0b
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x964
	.uaword	0x8b7f
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x966
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x967
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x968
	.uaword	0x5e4e
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x969
	.uaword	0x8b57
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x96c
	.uaword	0x8bcf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x96e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x96f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x970
	.uaword	0x5f2a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_LATE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0x971
	.uaword	0x8ba7
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x974
	.uaword	0x8c20
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x976
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x977
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x978
	.uaword	0x601b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x979
	.uaword	0x8bf8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x97c
	.uaword	0x8c71
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x97e
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x97f
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x980
	.uaword	0x5fa3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x981
	.uaword	0x8c49
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x985
	.uaword	0x8cc6
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x987
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x988
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x989
	.uaword	0x609a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x98a
	.uaword	0x8c9e
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x98d
	.uaword	0x8d20
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x98f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x990
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x991
	.uaword	0x6181
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x992
	.uaword	0x8cf8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x995
	.uaword	0x8d6c
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x997
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x998
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x999
	.uaword	0x6115
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x99a
	.uaword	0x8d44
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x99d
	.uaword	0x8dbc
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x99f
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9a0
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9a1
	.uaword	0x61eb
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_OSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x9a2
	.uaword	0x8d94
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9a5
	.uaword	0x8e09
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9a7
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9a8
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9a9
	.uaword	0x6251
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0x9aa
	.uaword	0x8de1
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9ae
	.uaword	0x8e51
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9b0
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9b1
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9b2
	.uaword	0x62c5
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x9b3
	.uaword	0x8e29
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9b6
	.uaword	0x8ea9
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9b8
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9b9
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9ba
	.uaword	0x6342
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x9bb
	.uaword	0x8e81
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9be
	.uaword	0x8efb
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9c0
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9c1
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9c2
	.uaword	0x63ba
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x9c3
	.uaword	0x8ed3
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9c6
	.uaword	0x8f4e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9c8
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9c9
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9ca
	.uaword	0x642a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_TX_VLAN_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x9cb
	.uaword	0x8f26
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9ce
	.uaword	0x8f9a
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9d0
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9d1
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9d2
	.uaword	0x64ab
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_VERSION"
	.byte	0x8
	.uahalf	0x9d3
	.uaword	0x8f72
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.uahalf	0x9d6
	.uaword	0x8fda
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x9d8
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x9d9
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x9da
	.uaword	0x654b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_VLAN_TAG"
	.byte	0x8
	.uahalf	0x9db
	.uaword	0x8fb2
	.uleb128 0x12
	.string	"_Ifx_ETH_MAC_ADDRESS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x9e6
	.uaword	0x902d
	.uleb128 0x15
	.string	"HIGH"
	.byte	0x8
	.uahalf	0x9e8
	.uaword	0x6c2a
	.byte	0
	.uleb128 0x15
	.string	"LOW"
	.byte	0x8
	.uahalf	0x9e9
	.uaword	0x6c73
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH_MAC_ADDRESS"
	.byte	0x8
	.uahalf	0x9ea
	.uaword	0x9049
	.uleb128 0x16
	.uaword	0x8ff3
	.uleb128 0x17
	.string	"_Ifx_ETH"
	.uahalf	0x2100
	.byte	0x8
	.uahalf	0x9f7
	.uaword	0xa32c
	.uleb128 0x15
	.string	"CLC"
	.byte	0x8
	.uahalf	0x9f9
	.uaword	0x669a
	.byte	0
	.uleb128 0x15
	.string	"ID"
	.byte	0x8
	.uahalf	0x9fa
	.uaword	0x6a5a
	.byte	0x4
	.uleb128 0x15
	.string	"GPCTL"
	.byte	0x8
	.uahalf	0x9fb
	.uaword	0x694a
	.byte	0x8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x9fc
	.uaword	0x6591
	.byte	0xc
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x9fd
	.uaword	0x65d0
	.byte	0x10
	.uleb128 0x15
	.string	"KRST0"
	.byte	0x8
	.uahalf	0x9fe
	.uaword	0x6b6e
	.byte	0x14
	.uleb128 0x15
	.string	"KRST1"
	.byte	0x8
	.uahalf	0x9ff
	.uaword	0x6bac
	.byte	0x18
	.uleb128 0x15
	.string	"KRSTCLR"
	.byte	0x8
	.uahalf	0xa00
	.uaword	0x6bea
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0xa01
	.uaword	0xa32c
	.byte	0x20
	.uleb128 0x19
	.string	"MAC_CONFIGURATION"
	.byte	0x8
	.uahalf	0xa02
	.uaword	0x6cbb
	.uahalf	0x1000
	.uleb128 0x19
	.string	"MAC_FRAME_FILTER"
	.byte	0x8
	.uahalf	0xa03
	.uaword	0x6d05
	.uahalf	0x1004
	.uleb128 0x19
	.string	"HASH_TABLE_HIGH"
	.byte	0x8
	.uahalf	0xa04
	.uaword	0x6988
	.uahalf	0x1008
	.uleb128 0x19
	.string	"HASH_TABLE_LOW"
	.byte	0x8
	.uahalf	0xa05
	.uaword	0x69d0
	.uahalf	0x100c
	.uleb128 0x19
	.string	"GMII_ADDRESS"
	.byte	0x8
	.uahalf	0xa06
	.uaword	0x68c3
	.uahalf	0x1010
	.uleb128 0x19
	.string	"GMII_DATA"
	.byte	0x8
	.uahalf	0xa07
	.uaword	0x6908
	.uahalf	0x1014
	.uleb128 0x19
	.string	"FLOW_CONTROL"
	.byte	0x8
	.uahalf	0xa08
	.uaword	0x687e
	.uahalf	0x1018
	.uleb128 0x19
	.string	"VLAN_TAG"
	.byte	0x8
	.uahalf	0xa09
	.uaword	0x8fda
	.uahalf	0x101c
	.uleb128 0x19
	.string	"VERSION"
	.byte	0x8
	.uahalf	0xa0a
	.uaword	0x8f9a
	.uahalf	0x1020
	.uleb128 0x19
	.string	"DEBUG"
	.byte	0x8
	.uahalf	0xa0b
	.uaword	0x6840
	.uahalf	0x1024
	.uleb128 0x19
	.string	"REMOTE_WAKE_UP_FRAME_FILTER"
	.byte	0x8
	.uahalf	0xa0c
	.uaword	0x71b3
	.uahalf	0x1028
	.uleb128 0x19
	.string	"PMT_CONTROL_STATUS"
	.byte	0x8
	.uahalf	0xa0d
	.uaword	0x7027
	.uahalf	0x102c
	.uleb128 0x19
	.string	"reserved_1030"
	.byte	0x8
	.uahalf	0xa0e
	.uaword	0xa349
	.uahalf	0x1030
	.uleb128 0x19
	.string	"INTERRUPT_STATUS"
	.byte	0x8
	.uahalf	0xa0f
	.uaword	0x6b25
	.uahalf	0x1038
	.uleb128 0x19
	.string	"INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa10
	.uaword	0x6ade
	.uahalf	0x103c
	.uleb128 0x19
	.string	"MAC_ADDRESS_G0"
	.byte	0x8
	.uahalf	0xa11
	.uaword	0xa369
	.uahalf	0x1040
	.uleb128 0x19
	.string	"reserved_10C0"
	.byte	0x8
	.uahalf	0xa12
	.uaword	0xa36e
	.uahalf	0x10c0
	.uleb128 0x19
	.string	"MMC_CONTROL"
	.byte	0x8
	.uahalf	0xa13
	.uaword	0x6daf
	.uahalf	0x1100
	.uleb128 0x19
	.string	"MMC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0xa14
	.uaword	0x6e9c
	.uahalf	0x1104
	.uleb128 0x19
	.string	"MMC_TRANSMIT_INTERRUPT"
	.byte	0x8
	.uahalf	0xa15
	.uaword	0x6f3d
	.uahalf	0x1108
	.uleb128 0x19
	.string	"MMC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa16
	.uaword	0x6eea
	.uahalf	0x110c
	.uleb128 0x19
	.string	"MMC_TRANSMIT_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa17
	.uaword	0x6f8c
	.uahalf	0x1110
	.uleb128 0x19
	.string	"TX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa18
	.uaword	0x8d6c
	.uahalf	0x1114
	.uleb128 0x19
	.string	"TX_FRAME_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa19
	.uaword	0x8b7f
	.uahalf	0x1118
	.uleb128 0x19
	.string	"TX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa1a
	.uaword	0x8948
	.uahalf	0x111c
	.uleb128 0x19
	.string	"TX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa1b
	.uaword	0x8c20
	.uahalf	0x1120
	.uleb128 0x19
	.string	"TX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1c
	.uaword	0x889b
	.uahalf	0x1124
	.uleb128 0x19
	.string	"TX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1d
	.uaword	0x88ef
	.uahalf	0x1128
	.uleb128 0x19
	.string	"TX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1e
	.uaword	0x878c
	.uahalf	0x112c
	.uleb128 0x19
	.string	"TX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1f
	.uaword	0x87e6
	.uahalf	0x1130
	.uleb128 0x19
	.string	"TX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa20
	.uaword	0x8840
	.uahalf	0x1134
	.uleb128 0x19
	.string	"TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa21
	.uaword	0x8731
	.uahalf	0x1138
	.uleb128 0x19
	.string	"TX_UNICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa22
	.uaword	0x8efb
	.uahalf	0x113c
	.uleb128 0x19
	.string	"TX_MULTICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa23
	.uaword	0x8c71
	.uahalf	0x1140
	.uleb128 0x19
	.string	"TX_BROADCAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa24
	.uaword	0x8999
	.uahalf	0x1144
	.uleb128 0x19
	.string	"TX_UNDERFLOW_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa25
	.uaword	0x8ea9
	.uahalf	0x1148
	.uleb128 0x19
	.string	"TX_SINGLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa26
	.uaword	0x8e51
	.uahalf	0x114c
	.uleb128 0x19
	.string	"TX_MULTIPLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa27
	.uaword	0x8cc6
	.uahalf	0x1150
	.uleb128 0x19
	.string	"TX_DEFERRED_FRAMES"
	.byte	0x8
	.uahalf	0xa28
	.uaword	0x8a3e
	.uahalf	0x1154
	.uleb128 0x19
	.string	"TX_LATE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0xa29
	.uaword	0x8bcf
	.uahalf	0x1158
	.uleb128 0x19
	.string	"TX_EXCESSIVE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0xa2a
	.uaword	0x8a89
	.uahalf	0x115c
	.uleb128 0x19
	.string	"TX_CARRIER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa2b
	.uaword	0x89ee
	.uahalf	0x1160
	.uleb128 0x19
	.string	"TX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa2c
	.uaword	0x8d20
	.uahalf	0x1164
	.uleb128 0x19
	.string	"TX_FRAME_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa2d
	.uaword	0x8b33
	.uahalf	0x1168
	.uleb128 0x19
	.string	"TX_EXCESSIVE_DEFERRAL_ERROR"
	.byte	0x8
	.uahalf	0xa2e
	.uaword	0x8adf
	.uahalf	0x116c
	.uleb128 0x19
	.string	"TX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0xa2f
	.uaword	0x8e09
	.uahalf	0x1170
	.uleb128 0x19
	.string	"TX_VLAN_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa30
	.uaword	0x8f4e
	.uahalf	0x1174
	.uleb128 0x19
	.string	"TX_OSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa31
	.uaword	0x8dbc
	.uahalf	0x1178
	.uleb128 0x19
	.string	"reserved_117C"
	.byte	0x8
	.uahalf	0xa32
	.uaword	0xa37e
	.uahalf	0x117c
	.uleb128 0x19
	.string	"RX_FRAMES_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa33
	.uaword	0x75ac
	.uahalf	0x1180
	.uleb128 0x19
	.string	"RX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa34
	.uaword	0x7738
	.uahalf	0x1184
	.uleb128 0x19
	.string	"RX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa35
	.uaword	0x76ec
	.uahalf	0x1188
	.uleb128 0x19
	.string	"RX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa36
	.uaword	0x7470
	.uahalf	0x118c
	.uleb128 0x19
	.string	"RX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa37
	.uaword	0x769b
	.uahalf	0x1190
	.uleb128 0x19
	.string	"RX_CRC_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa38
	.uaword	0x7510
	.uahalf	0x1194
	.uleb128 0x19
	.string	"RX_ALIGNMENT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa39
	.uaword	0x741e
	.uahalf	0x1198
	.uleb128 0x19
	.string	"RX_RUNT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa3a
	.uaword	0x78c4
	.uahalf	0x119c
	.uleb128 0x19
	.string	"RX_JABBER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa3b
	.uaword	0x75fd
	.uahalf	0x11a0
	.uleb128 0x19
	.string	"RX_UNDERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa3c
	.uaword	0x7911
	.uahalf	0x11a4
	.uleb128 0x19
	.string	"RX_OVERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa3d
	.uaword	0x77dc
	.uahalf	0x11a8
	.uleb128 0x19
	.string	"RX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa3e
	.uaword	0x7371
	.uahalf	0x11ac
	.uleb128 0x19
	.string	"RX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa3f
	.uaword	0x73c5
	.uahalf	0x11b0
	.uleb128 0x19
	.string	"RX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa40
	.uaword	0x7262
	.uahalf	0x11b4
	.uleb128 0x19
	.string	"RX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa41
	.uaword	0x72bc
	.uahalf	0x11b8
	.uleb128 0x19
	.string	"RX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa42
	.uaword	0x7316
	.uahalf	0x11bc
	.uleb128 0x19
	.string	"RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa43
	.uaword	0x7207
	.uahalf	0x11c0
	.uleb128 0x19
	.string	"RX_UNICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa44
	.uaword	0x7962
	.uahalf	0x11c4
	.uleb128 0x19
	.string	"RX_LENGTH_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa45
	.uaword	0x764c
	.uahalf	0x11c8
	.uleb128 0x19
	.string	"RX_OUT_OF_RANGE_TYPE_FRAMES"
	.byte	0x8
	.uahalf	0xa46
	.uaword	0x7788
	.uahalf	0x11cc
	.uleb128 0x19
	.string	"RX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0xa47
	.uaword	0x782c
	.uahalf	0x11d0
	.uleb128 0x19
	.string	"RX_FIFO_OVERFLOW_FRAMES"
	.byte	0x8
	.uahalf	0xa48
	.uaword	0x755c
	.uahalf	0x11d4
	.uleb128 0x19
	.string	"RX_VLAN_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa49
	.uaword	0x79b1
	.uahalf	0x11d8
	.uleb128 0x19
	.string	"RX_WATCHDOG_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa4a
	.uaword	0x7a01
	.uahalf	0x11dc
	.uleb128 0x19
	.string	"RX_RECEIVE_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa4b
	.uaword	0x7874
	.uahalf	0x11e0
	.uleb128 0x19
	.string	"RX_CONTROL_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa4c
	.uaword	0x74c1
	.uahalf	0x11e4
	.uleb128 0x19
	.string	"reserved_11E8"
	.byte	0x8
	.uahalf	0xa4d
	.uaword	0xa38e
	.uahalf	0x11e8
	.uleb128 0x19
	.string	"MMC_IPC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa4e
	.uaword	0x6e45
	.uahalf	0x1200
	.uleb128 0x19
	.string	"reserved_1204"
	.byte	0x8
	.uahalf	0xa4f
	.uaword	0xa37e
	.uahalf	0x1204
	.uleb128 0x19
	.string	"MMC_IPC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0xa50
	.uaword	0x6df3
	.uahalf	0x1208
	.uleb128 0x19
	.string	"reserved_120C"
	.byte	0x8
	.uahalf	0xa51
	.uaword	0xa37e
	.uahalf	0x120c
	.uleb128 0x19
	.string	"RXIPV4_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa52
	.uaword	0x7c22
	.uahalf	0x1210
	.uleb128 0x19
	.string	"RXIPV4_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa53
	.uaword	0x7cb8
	.uahalf	0x1214
	.uleb128 0x19
	.string	"RXIPV4_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0xa54
	.uaword	0x7d5e
	.uahalf	0x1218
	.uleb128 0x19
	.string	"RXIPV4_FRAGMENTED_FRAMES"
	.byte	0x8
	.uahalf	0xa55
	.uaword	0x7b80
	.uahalf	0x121c
	.uleb128 0x19
	.string	"RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES"
	.byte	0x8
	.uahalf	0xa56
	.uaword	0x7e5b
	.uahalf	0x1220
	.uleb128 0x19
	.string	"RXIPV6_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa57
	.uaword	0x7eb7
	.uahalf	0x1224
	.uleb128 0x19
	.string	"RXIPV6_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa58
	.uaword	0x7f4d
	.uahalf	0x1228
	.uleb128 0x19
	.string	"RXIPV6_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0xa59
	.uaword	0x7ff3
	.uahalf	0x122c
	.uleb128 0x19
	.string	"RXUDP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5a
	.uaword	0x8255
	.uahalf	0x1230
	.uleb128 0x19
	.string	"RXUDP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5b
	.uaword	0x81bf
	.uahalf	0x1234
	.uleb128 0x19
	.string	"RXTCP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5c
	.uaword	0x812b
	.uahalf	0x1238
	.uleb128 0x19
	.string	"RXTCP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5d
	.uaword	0x8095
	.uahalf	0x123c
	.uleb128 0x19
	.string	"RXICMP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5e
	.uaword	0x7aea
	.uahalf	0x1240
	.uleb128 0x19
	.string	"RXICMP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5f
	.uaword	0x7a52
	.uahalf	0x1244
	.uleb128 0x19
	.string	"reserved_1248"
	.byte	0x8
	.uahalf	0xa60
	.uaword	0xa349
	.uahalf	0x1248
	.uleb128 0x19
	.string	"RXIPV4_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa61
	.uaword	0x7c6d
	.uahalf	0x1250
	.uleb128 0x19
	.string	"RXIPV4_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa62
	.uaword	0x7d0b
	.uahalf	0x1254
	.uleb128 0x19
	.string	"RXIPV4_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0xa63
	.uaword	0x7daf
	.uahalf	0x1258
	.uleb128 0x19
	.string	"RXIPV4_FRAGMENTED_OCTETS"
	.byte	0x8
	.uahalf	0xa64
	.uaword	0x7bd1
	.uahalf	0x125c
	.uleb128 0x19
	.string	"RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS"
	.byte	0x8
	.uahalf	0xa65
	.uaword	0x7e00
	.uahalf	0x1260
	.uleb128 0x19
	.string	"RXIPV6_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa66
	.uaword	0x7f02
	.uahalf	0x1264
	.uleb128 0x19
	.string	"RXIPV6_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa67
	.uaword	0x7fa0
	.uahalf	0x1268
	.uleb128 0x19
	.string	"RXIPV6_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0xa68
	.uaword	0x8044
	.uahalf	0x126c
	.uleb128 0x19
	.string	"RXUDP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa69
	.uaword	0x829f
	.uahalf	0x1270
	.uleb128 0x19
	.string	"RXUDP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6a
	.uaword	0x820a
	.uahalf	0x1274
	.uleb128 0x19
	.string	"RXTCP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa6b
	.uaword	0x8175
	.uahalf	0x1278
	.uleb128 0x19
	.string	"RXTCP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6c
	.uaword	0x80e0
	.uahalf	0x127c
	.uleb128 0x19
	.string	"RXICMP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa6d
	.uaword	0x7b35
	.uahalf	0x1280
	.uleb128 0x19
	.string	"RXICMP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6e
	.uaword	0x7a9e
	.uahalf	0x1284
	.uleb128 0x19
	.string	"reserved_1288"
	.byte	0x8
	.uahalf	0xa6f
	.uaword	0xa39e
	.uahalf	0x1288
	.uleb128 0x19
	.string	"TIMESTAMP_CONTROL"
	.byte	0x8
	.uahalf	0xa70
	.uaword	0x85f8
	.uahalf	0x1700
	.uleb128 0x19
	.string	"SUB_SECOND_INCREMENT"
	.byte	0x8
	.uahalf	0xa71
	.uaword	0x8328
	.uahalf	0x1704
	.uleb128 0x19
	.string	"SYSTEM_TIME_SECONDS"
	.byte	0x8
	.uahalf	0xa72
	.uaword	0x8474
	.uahalf	0x1708
	.uleb128 0x19
	.string	"SYSTEM_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0xa73
	.uaword	0x83cd
	.uahalf	0x170c
	.uleb128 0x19
	.string	"SYSTEM_TIME_SECONDS_UPDATE"
	.byte	0x8
	.uahalf	0xa74
	.uaword	0x84c0
	.uahalf	0x1710
	.uleb128 0x19
	.string	"SYSTEM_TIME_NANOSECONDS_UPDATE"
	.byte	0x8
	.uahalf	0xa75
	.uaword	0x841d
	.uahalf	0x1714
	.uleb128 0x19
	.string	"TIMESTAMP_ADDEND"
	.byte	0x8
	.uahalf	0xa76
	.uaword	0x85af
	.uahalf	0x1718
	.uleb128 0x19
	.string	"TARGET_TIME_SECONDS"
	.byte	0x8
	.uahalf	0xa77
	.uaword	0x8563
	.uahalf	0x171c
	.uleb128 0x19
	.string	"TARGET_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0xa78
	.uaword	0x8513
	.uahalf	0x1720
	.uleb128 0x19
	.string	"SYSTEM_TIME_HIGHER_WORD_SECONDS"
	.byte	0x8
	.uahalf	0xa79
	.uaword	0x8375
	.uahalf	0x1724
	.uleb128 0x19
	.string	"TIMESTAMP_STATUS"
	.byte	0x8
	.uahalf	0xa7a
	.uaword	0x8642
	.uahalf	0x1728
	.uleb128 0x19
	.string	"PPS_CONTROL"
	.byte	0x8
	.uahalf	0xa7b
	.uaword	0x7072
	.uahalf	0x172c
	.uleb128 0x19
	.string	"reserved_1730"
	.byte	0x8
	.uahalf	0xa7c
	.uaword	0xa3af
	.uahalf	0x1730
	.uleb128 0x19
	.string	"MAC_ADDRESS_G1"
	.byte	0x8
	.uahalf	0xa7d
	.uaword	0xa3bf
	.uahalf	0x1800
	.uleb128 0x19
	.string	"reserved_1880"
	.byte	0x8
	.uahalf	0xa7e
	.uaword	0xa3c4
	.uahalf	0x1880
	.uleb128 0x19
	.string	"BUS_MODE"
	.byte	0x8
	.uahalf	0xa7f
	.uaword	0x6659
	.uahalf	0x2000
	.uleb128 0x19
	.string	"TRANSMIT_POLL_DEMAND"
	.byte	0x8
	.uahalf	0xa80
	.uaword	0x86e4
	.uahalf	0x2004
	.uleb128 0x19
	.string	"RECEIVE_POLL_DEMAND"
	.byte	0x8
	.uahalf	0xa81
	.uaword	0x7167
	.uahalf	0x2008
	.uleb128 0x19
	.string	"RECEIVE_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0xa82
	.uaword	0x70b6
	.uahalf	0x200c
	.uleb128 0x19
	.string	"TRANSMIT_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0xa83
	.uaword	0x868b
	.uahalf	0x2010
	.uleb128 0x19
	.string	"STATUS"
	.byte	0x8
	.uahalf	0xa84
	.uaword	0x82e9
	.uahalf	0x2014
	.uleb128 0x19
	.string	"OPERATION_MODE"
	.byte	0x8
	.uahalf	0xa85
	.uaword	0x6fe0
	.uahalf	0x2018
	.uleb128 0x19
	.string	"INTERRUPT_ENABLE"
	.byte	0x8
	.uahalf	0xa86
	.uaword	0x6a95
	.uahalf	0x201c
	.uleb128 0x19
	.string	"MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER"
	.byte	0x8
	.uahalf	0xa87
	.uaword	0x6d4e
	.uahalf	0x2020
	.uleb128 0x19
	.string	"RECEIVE_INTERRUPT_WATCHDOG_TIMER"
	.byte	0x8
	.uahalf	0xa88
	.uaword	0x710e
	.uahalf	0x2024
	.uleb128 0x19
	.string	"reserved_2028"
	.byte	0x8
	.uahalf	0xa89
	.uaword	0xa37e
	.uahalf	0x2028
	.uleb128 0x19
	.string	"AHB_OR_AXI_STATUS"
	.byte	0x8
	.uahalf	0xa8a
	.uaword	0x660f
	.uahalf	0x202c
	.uleb128 0x19
	.string	"reserved_2030"
	.byte	0x8
	.uahalf	0xa8b
	.uaword	0xa38e
	.uahalf	0x2030
	.uleb128 0x19
	.string	"CURRENT_HOST_TRANSMIT_DESCRIPTOR"
	.byte	0x8
	.uahalf	0xa8c
	.uaword	0x67e7
	.uahalf	0x2048
	.uleb128 0x19
	.string	"CURRENT_HOST_RECEIVE_DESCRIPTOR"
	.byte	0x8
	.uahalf	0xa8d
	.uaword	0x6732
	.uahalf	0x204c
	.uleb128 0x19
	.string	"CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0xa8e
	.uaword	0x678a
	.uahalf	0x2050
	.uleb128 0x19
	.string	"CURRENT_HOST_RECEIVE_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0xa8f
	.uaword	0x66d6
	.uahalf	0x2054
	.uleb128 0x19
	.string	"HW_FEATURE"
	.byte	0x8
	.uahalf	0xa90
	.uaword	0x6a17
	.uahalf	0x2058
	.uleb128 0x19
	.string	"reserved_205C"
	.byte	0x8
	.uahalf	0xa91
	.uaword	0xa3d5
	.uahalf	0x205c
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa33d
	.uleb128 0x1b
	.uaword	0xa33d
	.uahalf	0xfdf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa359
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.uaword	0x902d
	.uaword	0xa369
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.uaword	0xa359
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa37e
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa38e
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa39e
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa3af
	.uleb128 0x1b
	.uaword	0xa33d
	.uahalf	0x477
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa3bf
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xcf
	.byte	0
	.uleb128 0x16
	.uaword	0xa359
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa3d5
	.uleb128 0x1b
	.uaword	0xa33d
	.uahalf	0x77f
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xa3e5
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xa3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_ETH"
	.byte	0x8
	.uahalf	0xa92
	.uaword	0xa3f5
	.uleb128 0x16
	.uaword	0x904e
	.uleb128 0xc
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0xa60c
	.uleb128 0xd
	.string	"EN0"
	.byte	0x9
	.byte	0x2f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x9
	.byte	0x30
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x9
	.byte	0x31
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x9
	.byte	0x32
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x9
	.byte	0x33
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x9
	.byte	0x34
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x9
	.byte	0x35
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x9
	.byte	0x36
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x9
	.byte	0x37
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x9
	.byte	0x38
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x9
	.byte	0x39
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x9
	.byte	0x3a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x9
	.byte	0x3b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x9
	.byte	0x3c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x9
	.byte	0x3d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x9
	.byte	0x3e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0x9
	.byte	0x3f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0x9
	.byte	0x40
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0x9
	.byte	0x41
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0x9
	.byte	0x42
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0x9
	.byte	0x43
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0x9
	.byte	0x44
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0x9
	.byte	0x45
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0x9
	.byte	0x46
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0x9
	.byte	0x47
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0x9
	.byte	0x48
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0x9
	.byte	0x49
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0x9
	.byte	0x4a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0x9
	.byte	0x4b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0x9
	.byte	0x4c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0x9
	.byte	0x4d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0x9
	.byte	0x4e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x9
	.byte	0x4f
	.uaword	0xa3fa
	.uleb128 0xc
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x52
	.uaword	0xa650
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0x54
	.uaword	0x554
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x9
	.byte	0x55
	.uaword	0xa625
	.uleb128 0xc
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0xa787
	.uleb128 0xd
	.string	"EN0"
	.byte	0x9
	.byte	0x5a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x9
	.byte	0x5b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x9
	.byte	0x5c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x9
	.byte	0x5d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x9
	.byte	0x5e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x9
	.byte	0x5f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x9
	.byte	0x60
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x9
	.byte	0x61
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x9
	.byte	0x62
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x9
	.byte	0x63
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x9
	.byte	0x64
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x9
	.byte	0x65
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x9
	.byte	0x66
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x9
	.byte	0x67
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x9
	.byte	0x68
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x9
	.byte	0x69
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0x6a
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x9
	.byte	0x6b
	.uaword	0xa669
	.uleb128 0xc
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.uaword	0xa7e9
	.uleb128 0xd
	.string	"MODREV"
	.byte	0x9
	.byte	0x70
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0x9
	.byte	0x71
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x9
	.byte	0x72
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x9
	.byte	0x73
	.uaword	0xa79d
	.uleb128 0xc
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x76
	.uaword	0xa90b
	.uleb128 0xd
	.string	"P0"
	.byte	0x9
	.byte	0x78
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"P1"
	.byte	0x9
	.byte	0x79
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"P2"
	.byte	0x9
	.byte	0x7a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"P3"
	.byte	0x9
	.byte	0x7b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"P4"
	.byte	0x9
	.byte	0x7c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"P5"
	.byte	0x9
	.byte	0x7d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"P6"
	.byte	0x9
	.byte	0x7e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"P7"
	.byte	0x9
	.byte	0x7f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"P8"
	.byte	0x9
	.byte	0x80
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"P9"
	.byte	0x9
	.byte	0x81
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"P10"
	.byte	0x9
	.byte	0x82
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"P11"
	.byte	0x9
	.byte	0x83
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"P12"
	.byte	0x9
	.byte	0x84
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"P13"
	.byte	0x9
	.byte	0x85
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"P14"
	.byte	0x9
	.byte	0x86
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"P15"
	.byte	0x9
	.byte	0x87
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0x88
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x9
	.byte	0x89
	.uaword	0xa7fe
	.uleb128 0xc
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.uaword	0xa9b3
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0x8e
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC0"
	.byte	0x9
	.byte	0x8f
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x9
	.byte	0x90
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC1"
	.byte	0x9
	.byte	0x91
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0x92
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC2"
	.byte	0x9
	.byte	0x93
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.byte	0x94
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC3"
	.byte	0x9
	.byte	0x95
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x9
	.byte	0x96
	.uaword	0xa920
	.uleb128 0xc
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.uaword	0xaa63
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0x9b
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC12"
	.byte	0x9
	.byte	0x9c
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x9
	.byte	0x9d
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC13"
	.byte	0x9
	.byte	0x9e
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0x9f
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC14"
	.byte	0x9
	.byte	0xa0
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.byte	0xa1
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC15"
	.byte	0x9
	.byte	0xa2
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x9
	.byte	0xa3
	.uaword	0xa9cb
	.uleb128 0xc
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.uaword	0xab0f
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xa8
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC4"
	.byte	0x9
	.byte	0xa9
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x9
	.byte	0xaa
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC5"
	.byte	0x9
	.byte	0xab
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0xac
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC6"
	.byte	0x9
	.byte	0xad
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.byte	0xae
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC7"
	.byte	0x9
	.byte	0xaf
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x9
	.byte	0xb0
	.uaword	0xaa7c
	.uleb128 0xc
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.uaword	0xabbc
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xb5
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PC8"
	.byte	0x9
	.byte	0xb6
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x9
	.byte	0xb7
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PC9"
	.byte	0x9
	.byte	0xb8
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x9
	.byte	0xb9
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PC10"
	.byte	0x9
	.byte	0xba
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.byte	0xbb
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PC11"
	.byte	0x9
	.byte	0xbc
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x9
	.byte	0xbd
	.uaword	0xab27
	.uleb128 0xc
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0xac4d
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xc2
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0x9
	.byte	0xc3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0x9
	.byte	0xc4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"PCL2"
	.byte	0x9
	.byte	0xc5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PCL3"
	.byte	0x9
	.byte	0xc6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x9
	.byte	0xc7
	.uaword	0x554
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x9
	.byte	0xc8
	.uaword	0xabd4
	.uleb128 0xc
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xcb
	.uaword	0xacd4
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xcd
	.uaword	0x554
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"PCL12"
	.byte	0x9
	.byte	0xce
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"PCL13"
	.byte	0x9
	.byte	0xcf
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"PCL14"
	.byte	0x9
	.byte	0xd0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"PCL15"
	.byte	0x9
	.byte	0xd1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x9
	.byte	0xd2
	.uaword	0xac65
	.uleb128 0xc
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd5
	.uaword	0xad66
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xd7
	.uaword	0x554
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"PCL4"
	.byte	0x9
	.byte	0xd8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"PCL5"
	.byte	0x9
	.byte	0xd9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"PCL6"
	.byte	0x9
	.byte	0xda
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"PCL7"
	.byte	0x9
	.byte	0xdb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x9
	.byte	0xdc
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x9
	.byte	0xdd
	.uaword	0xaced
	.uleb128 0xc
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xe0
	.uaword	0xadf9
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xe2
	.uaword	0x554
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PCL8"
	.byte	0x9
	.byte	0xe3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"PCL9"
	.byte	0x9
	.byte	0xe4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"PCL10"
	.byte	0x9
	.byte	0xe5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PCL11"
	.byte	0x9
	.byte	0xe6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x9
	.byte	0xe7
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x9
	.byte	0xe8
	.uaword	0xad7e
	.uleb128 0xc
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xeb
	.uaword	0xaf40
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x9
	.byte	0xed
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0x9
	.byte	0xee
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0x9
	.byte	0xef
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"PCL2"
	.byte	0x9
	.byte	0xf0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"PCL3"
	.byte	0x9
	.byte	0xf1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"PCL4"
	.byte	0x9
	.byte	0xf2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"PCL5"
	.byte	0x9
	.byte	0xf3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"PCL6"
	.byte	0x9
	.byte	0xf4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"PCL7"
	.byte	0x9
	.byte	0xf5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PCL8"
	.byte	0x9
	.byte	0xf6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"PCL9"
	.byte	0x9
	.byte	0xf7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"PCL10"
	.byte	0x9
	.byte	0xf8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"PCL11"
	.byte	0x9
	.byte	0xf9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"PCL12"
	.byte	0x9
	.byte	0xfa
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"PCL13"
	.byte	0x9
	.byte	0xfb
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"PCL14"
	.byte	0x9
	.byte	0xfc
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"PCL15"
	.byte	0x9
	.byte	0xfd
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x9
	.byte	0xfe
	.uaword	0xae11
	.uleb128 0x12
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x101
	.uaword	0xb18d
	.uleb128 0xf
	.string	"PS0"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0x9
	.uahalf	0x104
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0x9
	.uahalf	0x105
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0x9
	.uahalf	0x106
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0x9
	.uahalf	0x107
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0x9
	.uahalf	0x10c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x113
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x120
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x121
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMR_Bits"
	.byte	0x9
	.uahalf	0x123
	.uaword	0xaf57
	.uleb128 0x12
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x126
	.uaword	0xb210
	.uleb128 0xf
	.string	"PS0"
	.byte	0x9
	.uahalf	0x128
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0x9
	.uahalf	0x129
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0x9
	.uahalf	0x12a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x554
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0xb1a4
	.uleb128 0x12
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x130
	.uaword	0xb2aa
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x132
	.uaword	0x554
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x137
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x9
	.uahalf	0x138
	.uaword	0xb229
	.uleb128 0x12
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x13b
	.uaword	0xb340
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x142
	.uaword	0x554
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x9
	.uahalf	0x143
	.uaword	0xb2c4
	.uleb128 0x12
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x146
	.uaword	0xb3d7
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x148
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0x9
	.uahalf	0x14b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0x9
	.uahalf	0x14c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x14d
	.uaword	0x554
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x9
	.uahalf	0x14e
	.uaword	0xb359
	.uleb128 0x12
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x151
	.uaword	0xb521
	.uleb128 0xf
	.string	"PS0"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PS1"
	.byte	0x9
	.uahalf	0x154
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PS2"
	.byte	0x9
	.uahalf	0x155
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PS3"
	.byte	0x9
	.uahalf	0x156
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PS4"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PS5"
	.byte	0x9
	.uahalf	0x158
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PS6"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PS7"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PS8"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PS9"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PS10"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PS11"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PS12"
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PS13"
	.byte	0x9
	.uahalf	0x160
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PS14"
	.byte	0x9
	.uahalf	0x161
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PS15"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x163
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x9
	.uahalf	0x164
	.uaword	0xb3f0
	.uleb128 0x12
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x167
	.uaword	0xb659
	.uleb128 0xf
	.string	"P0"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"P1"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"P2"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"P3"
	.byte	0x9
	.uahalf	0x16c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"P4"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"P5"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"P6"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"P7"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"P8"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"P9"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"P10"
	.byte	0x9
	.uahalf	0x173
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"P11"
	.byte	0x9
	.uahalf	0x174
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"P12"
	.byte	0x9
	.uahalf	0x175
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"P13"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"P14"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"P15"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x179
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OUT_Bits"
	.byte	0x9
	.uahalf	0x17a
	.uaword	0xb539
	.uleb128 0x12
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x17d
	.uaword	0xb710
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"SEL1"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"SEL2"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x182
	.uaword	0x554
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"SEL9"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"SEL10"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x185
	.uaword	0x554
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"LCK"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x9
	.uahalf	0x187
	.uaword	0xb670
	.uleb128 0x12
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x18a
	.uaword	0xb87a
	.uleb128 0xf
	.string	"PDIS0"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"PDIS1"
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"PDIS2"
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PDIS3"
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PDIS4"
	.byte	0x9
	.uahalf	0x190
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"PDIS5"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"PDIS6"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PDIS7"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PDIS8"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"PDIS9"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"PDIS10"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PDIS11"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PDIS12"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"PDIS13"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"PDIS14"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PDIS15"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x554
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0xb728
	.uleb128 0x12
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0xb9ae
	.uleb128 0xf
	.string	"PD0"
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PL0"
	.byte	0x9
	.uahalf	0x1a3
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PD1"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PL1"
	.byte	0x9
	.uahalf	0x1a5
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PD2"
	.byte	0x9
	.uahalf	0x1a6
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PL2"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PD3"
	.byte	0x9
	.uahalf	0x1a8
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PL3"
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PD4"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PL4"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PD5"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PL5"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PD6"
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PL6"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PD7"
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PL7"
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0xb893
	.uleb128 0x12
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b5
	.uaword	0xbaed
	.uleb128 0xf
	.string	"PD8"
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PL8"
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"PD9"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"PL9"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"PD10"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PL10"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PD11"
	.byte	0x9
	.uahalf	0x1bd
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"PL11"
	.byte	0x9
	.uahalf	0x1be
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PD12"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PL12"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PD13"
	.byte	0x9
	.uahalf	0x1c1
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PL13"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PD14"
	.byte	0x9
	.uahalf	0x1c3
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PL14"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PD15"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PL15"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0xb9c6
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0xbb2d
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1d1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0xa60c
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ACCEN0"
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0xbb05
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d7
	.uaword	0xbb6a
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0xa650
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ACCEN1"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0xbb42
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1df
	.uaword	0xbba7
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1e2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0xa787
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ESR"
	.byte	0x9
	.uahalf	0x1e4
	.uaword	0xbb7f
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e7
	.uaword	0xbbe1
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0xa7e9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_ID"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0xbbb9
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1ef
	.uaword	0xbc1a
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0xa90b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IN"
	.byte	0x9
	.uahalf	0x1f4
	.uaword	0xbbf2
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1f7
	.uaword	0xbc53
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x1f9
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x1fa
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0xa9b3
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR0"
	.byte	0x9
	.uahalf	0x1fc
	.uaword	0xbc2b
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x1ff
	.uaword	0xbc8f
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x201
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x202
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x203
	.uaword	0xaa63
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR12"
	.byte	0x9
	.uahalf	0x204
	.uaword	0xbc67
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x207
	.uaword	0xbccc
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x20a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x20b
	.uaword	0xab0f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR4"
	.byte	0x9
	.uahalf	0x20c
	.uaword	0xbca4
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x20f
	.uaword	0xbd08
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x211
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x212
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x213
	.uaword	0xabbc
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_IOCR8"
	.byte	0x9
	.uahalf	0x214
	.uaword	0xbce0
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x217
	.uaword	0xbd44
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x219
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x21a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x21b
	.uaword	0xaf40
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR"
	.byte	0x9
	.uahalf	0x21c
	.uaword	0xbd1c
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x21f
	.uaword	0xbd7f
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x221
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x222
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x223
	.uaword	0xac4d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR0"
	.byte	0x9
	.uahalf	0x224
	.uaword	0xbd57
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x227
	.uaword	0xbdbb
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x229
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x22a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x22b
	.uaword	0xacd4
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR12"
	.byte	0x9
	.uahalf	0x22c
	.uaword	0xbd93
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x22f
	.uaword	0xbdf8
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x231
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x232
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x233
	.uaword	0xad66
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR4"
	.byte	0x9
	.uahalf	0x234
	.uaword	0xbdd0
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x237
	.uaword	0xbe34
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x239
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x23a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x23b
	.uaword	0xadf9
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMCR8"
	.byte	0x9
	.uahalf	0x23c
	.uaword	0xbe0c
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x23f
	.uaword	0xbe70
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x241
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x242
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x243
	.uaword	0xb18d
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMR"
	.byte	0x9
	.uahalf	0x244
	.uaword	0xbe48
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x247
	.uaword	0xbeaa
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x249
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x24a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x24b
	.uaword	0xb521
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR"
	.byte	0x9
	.uahalf	0x24c
	.uaword	0xbe82
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x24f
	.uaword	0xbee5
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x251
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x252
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x253
	.uaword	0xb210
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR0"
	.byte	0x9
	.uahalf	0x254
	.uaword	0xbebd
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x257
	.uaword	0xbf21
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x259
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x25a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x25b
	.uaword	0xb2aa
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR12"
	.byte	0x9
	.uahalf	0x25c
	.uaword	0xbef9
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x25f
	.uaword	0xbf5e
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x261
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x262
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x263
	.uaword	0xb340
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR4"
	.byte	0x9
	.uahalf	0x264
	.uaword	0xbf36
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x267
	.uaword	0xbf9a
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x269
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x26a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x26b
	.uaword	0xb3d7
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OMSR8"
	.byte	0x9
	.uahalf	0x26c
	.uaword	0xbf72
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x26f
	.uaword	0xbfd6
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x271
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x272
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x273
	.uaword	0xb659
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_OUT"
	.byte	0x9
	.uahalf	0x274
	.uaword	0xbfae
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x277
	.uaword	0xc010
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x279
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x27a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0xb710
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PCSR"
	.byte	0x9
	.uahalf	0x27c
	.uaword	0xbfe8
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x27f
	.uaword	0xc04b
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x281
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x282
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x283
	.uaword	0xb87a
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDISC"
	.byte	0x9
	.uahalf	0x284
	.uaword	0xc023
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x287
	.uaword	0xc087
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x289
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x28a
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x28b
	.uaword	0xb9ae
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR0"
	.byte	0x9
	.uahalf	0x28c
	.uaword	0xc05f
	.uleb128 0x13
	.byte	0x4
	.byte	0x9
	.uahalf	0x28f
	.uaword	0xc0c2
	.uleb128 0x14
	.string	"U"
	.byte	0x9
	.uahalf	0x291
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0x9
	.uahalf	0x292
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0x9
	.uahalf	0x293
	.uaword	0xbaed
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P_PDR1"
	.byte	0x9
	.uahalf	0x294
	.uaword	0xc09a
	.uleb128 0x17
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x29f
	.uaword	0xc2d4
	.uleb128 0x15
	.string	"OUT"
	.byte	0x9
	.uahalf	0x2a1
	.uaword	0xbfd6
	.byte	0
	.uleb128 0x15
	.string	"OMR"
	.byte	0x9
	.uahalf	0x2a2
	.uaword	0xbe70
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0xbbe1
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0x9
	.uahalf	0x2a4
	.uaword	0xa37e
	.byte	0xc
	.uleb128 0x15
	.string	"IOCR0"
	.byte	0x9
	.uahalf	0x2a5
	.uaword	0xbc53
	.byte	0x10
	.uleb128 0x15
	.string	"IOCR4"
	.byte	0x9
	.uahalf	0x2a6
	.uaword	0xbccc
	.byte	0x14
	.uleb128 0x15
	.string	"IOCR8"
	.byte	0x9
	.uahalf	0x2a7
	.uaword	0xbd08
	.byte	0x18
	.uleb128 0x15
	.string	"IOCR12"
	.byte	0x9
	.uahalf	0x2a8
	.uaword	0xbc8f
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF23
	.byte	0x9
	.uahalf	0x2a9
	.uaword	0xa37e
	.byte	0x20
	.uleb128 0x15
	.string	"IN"
	.byte	0x9
	.uahalf	0x2aa
	.uaword	0xbc1a
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x2ab
	.uaword	0xa38e
	.byte	0x28
	.uleb128 0x15
	.string	"PDR0"
	.byte	0x9
	.uahalf	0x2ac
	.uaword	0xc087
	.byte	0x40
	.uleb128 0x15
	.string	"PDR1"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0xc0c2
	.byte	0x44
	.uleb128 0x15
	.string	"reserved_48"
	.byte	0x9
	.uahalf	0x2ae
	.uaword	0xa349
	.byte	0x48
	.uleb128 0x15
	.string	"ESR"
	.byte	0x9
	.uahalf	0x2af
	.uaword	0xbba7
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_54"
	.byte	0x9
	.uahalf	0x2b0
	.uaword	0xc2d4
	.byte	0x54
	.uleb128 0x15
	.string	"PDISC"
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0xc04b
	.byte	0x60
	.uleb128 0x15
	.string	"PCSR"
	.byte	0x9
	.uahalf	0x2b2
	.uaword	0xc010
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_64"
	.byte	0x9
	.uahalf	0x2b3
	.uaword	0xa349
	.byte	0x68
	.uleb128 0x15
	.string	"OMSR0"
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0xbee5
	.byte	0x70
	.uleb128 0x15
	.string	"OMSR4"
	.byte	0x9
	.uahalf	0x2b5
	.uaword	0xbf5e
	.byte	0x74
	.uleb128 0x15
	.string	"OMSR8"
	.byte	0x9
	.uahalf	0x2b6
	.uaword	0xbf9a
	.byte	0x78
	.uleb128 0x15
	.string	"OMSR12"
	.byte	0x9
	.uahalf	0x2b7
	.uaword	0xbf21
	.byte	0x7c
	.uleb128 0x15
	.string	"OMCR0"
	.byte	0x9
	.uahalf	0x2b8
	.uaword	0xbd7f
	.byte	0x80
	.uleb128 0x15
	.string	"OMCR4"
	.byte	0x9
	.uahalf	0x2b9
	.uaword	0xbdf8
	.byte	0x84
	.uleb128 0x15
	.string	"OMCR8"
	.byte	0x9
	.uahalf	0x2ba
	.uaword	0xbe34
	.byte	0x88
	.uleb128 0x15
	.string	"OMCR12"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0xbdbb
	.byte	0x8c
	.uleb128 0x15
	.string	"OMSR"
	.byte	0x9
	.uahalf	0x2bc
	.uaword	0xbeaa
	.byte	0x90
	.uleb128 0x15
	.string	"OMCR"
	.byte	0x9
	.uahalf	0x2bd
	.uaword	0xbd44
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0x9
	.uahalf	0x2be
	.uaword	0xc2e4
	.byte	0x98
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0xbb6a
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0xbb2d
	.byte	0xfc
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xc2e4
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xb
	.byte	0
	.uleb128 0x1a
	.uaword	0x19c
	.uaword	0xc2f4
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x5f
	.byte	0
	.uleb128 0x11
	.string	"Ifx_P"
	.byte	0x9
	.uahalf	0x2c1
	.uaword	0xc302
	.uleb128 0x16
	.uaword	0xc0d5
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc2f4
	.uleb128 0x16
	.uaword	0x554
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x4b
	.uaword	0xc392
	.uleb128 0x8
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x8
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_InputMode"
	.byte	0x4
	.byte	0x50
	.uaword	0xc312
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x57
	.uaword	0xc64b
	.uleb128 0x8
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x8
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x8
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Mode"
	.byte	0x4
	.byte	0x6b
	.uaword	0xc3ab
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x70
	.uaword	0xc73b
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x8
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0x4
	.byte	0x79
	.uaword	0xc65f
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x7e
	.uaword	0xc79c
	.uleb128 0x8
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x8
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x4
	.byte	0x81
	.uaword	0xc754
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x88
	.uaword	0xc8db
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x4
	.byte	0x91
	.uaword	0xc7b6
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0xa9
	.uaword	0xc916
	.uleb128 0xb
	.string	"port"
	.byte	0x4
	.byte	0xab
	.uaword	0xc307
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x4
	.byte	0xac
	.uaword	0x1ad
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x4
	.byte	0xad
	.uaword	0xc8f4
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x3b
	.uaword	0xc956
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x3d
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x3f
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa3e5
	.uleb128 0x3
	.string	"IfxEth_Crs_In"
	.byte	0xa
	.byte	0x40
	.uaword	0xc971
	.uleb128 0x1d
	.uaword	0xc929
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xc9a3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x45
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x46
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x47
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Crsdv_In"
	.byte	0xa
	.byte	0x48
	.uaword	0xc9ba
	.uleb128 0x1d
	.uaword	0xc976
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x4b
	.uaword	0xc9ec
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x4d
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x4e
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x4f
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxdv_In"
	.byte	0xa
	.byte	0x50
	.uaword	0xca02
	.uleb128 0x1d
	.uaword	0xc9bf
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x53
	.uaword	0xca34
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x55
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x56
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x57
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Refclk_In"
	.byte	0xa
	.byte	0x58
	.uaword	0xca4c
	.uleb128 0x1d
	.uaword	0xca07
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x5b
	.uaword	0xca7e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x5d
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x5e
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x5f
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxclk_In"
	.byte	0xa
	.byte	0x60
	.uaword	0xca95
	.uleb128 0x1d
	.uaword	0xca51
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x63
	.uaword	0xcac7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x65
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x66
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x67
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txclk_In"
	.byte	0xa
	.byte	0x68
	.uaword	0xcade
	.uleb128 0x1d
	.uaword	0xca9a
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x6b
	.uaword	0xcb10
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x6d
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x6e
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x6f
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxd_In"
	.byte	0xa
	.byte	0x70
	.uaword	0xcb25
	.uleb128 0x1d
	.uaword	0xcae3
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x73
	.uaword	0xcb57
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x75
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x76
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x77
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Col_In"
	.byte	0xa
	.byte	0x78
	.uaword	0xcb6c
	.uleb128 0x1d
	.uaword	0xcb2a
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x7b
	.uaword	0xcb9e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x7d
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x7e
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x7f
	.uaword	0xc73b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Mdc_Out"
	.byte	0xa
	.byte	0x80
	.uaword	0xcbb4
	.uleb128 0x1d
	.uaword	0xcb71
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x83
	.uaword	0xcbfd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x85
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x86
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xb
	.string	"inSelect"
	.byte	0xa
	.byte	0x87
	.uaword	0x2f2
	.byte	0xc
	.uleb128 0xb
	.string	"outSelect"
	.byte	0xa
	.byte	0x88
	.uaword	0xc73b
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Mdio_InOut"
	.byte	0xa
	.byte	0x89
	.uaword	0xcc16
	.uleb128 0x1d
	.uaword	0xcbb9
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x8c
	.uaword	0xcc48
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x8e
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x8f
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x90
	.uaword	0xc73b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txd_Out"
	.byte	0xa
	.byte	0x91
	.uaword	0xcc5e
	.uleb128 0x1d
	.uaword	0xcc1b
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x94
	.uaword	0xcc90
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x96
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x97
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0x98
	.uaword	0xc73b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txen_Out"
	.byte	0xa
	.byte	0x99
	.uaword	0xcca7
	.uleb128 0x1d
	.uaword	0xcc63
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x9c
	.uaword	0xccd9
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0x9e
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0x9f
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0xa0
	.uaword	0xc73b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txer_Out"
	.byte	0xa
	.byte	0xa1
	.uaword	0xccf0
	.uleb128 0x1d
	.uaword	0xccac
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0xa4
	.uaword	0xcd22
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xa
	.byte	0xa6
	.uaword	0xc956
	.byte	0
	.uleb128 0xb
	.string	"pin"
	.byte	0xa
	.byte	0xa7
	.uaword	0xc916
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0xa
	.byte	0xa8
	.uaword	0x2f2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxer_In"
	.byte	0xa
	.byte	0xa9
	.uaword	0xcd38
	.uleb128 0x1d
	.uaword	0xccf5
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x46
	.uaword	0xcd69
	.uleb128 0x8
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0xb
	.byte	0x49
	.uaword	0xcd3d
	.uleb128 0xc
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0xce89
	.uleb128 0xd
	.string	"SRPN"
	.byte	0xc
	.byte	0x2f
	.uaword	0x554
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0xc
	.byte	0x30
	.uaword	0x554
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"SRE"
	.byte	0xc
	.byte	0x31
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"TOS"
	.byte	0xc
	.byte	0x32
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0xc
	.byte	0x33
	.uaword	0x554
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"ECC"
	.byte	0xc
	.byte	0x34
	.uaword	0x554
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"reserved_21"
	.byte	0xc
	.byte	0x35
	.uaword	0x554
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SRR"
	.byte	0xc
	.byte	0x36
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CLRR"
	.byte	0xc
	.byte	0x37
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"SETR"
	.byte	0xc
	.byte	0x38
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"IOV"
	.byte	0xc
	.byte	0x39
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"IOVCLR"
	.byte	0xc
	.byte	0x3a
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"SWS"
	.byte	0xc
	.byte	0x3b
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"SWSCLR"
	.byte	0xc
	.byte	0x3c
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.byte	0x3d
	.uaword	0x554
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xc
	.byte	0x3e
	.uaword	0xcd7b
	.uleb128 0x1e
	.byte	0x4
	.byte	0xc
	.byte	0x46
	.uaword	0xcec6
	.uleb128 0x1f
	.string	"U"
	.byte	0xc
	.byte	0x48
	.uaword	0x554
	.uleb128 0x1f
	.string	"I"
	.byte	0xc
	.byte	0x49
	.uaword	0x186
	.uleb128 0x1f
	.string	"B"
	.byte	0xc
	.byte	0x4a
	.uaword	0xce89
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xc
	.byte	0x4b
	.uaword	0xcea2
	.uleb128 0xc
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x5c
	.uaword	0xcf1b
	.uleb128 0xd
	.string	"CORE_ID"
	.byte	0xd
	.byte	0x5e
	.uaword	0xc30d
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xd
	.byte	0x5f
	.uaword	0xc30d
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0xd
	.byte	0x60
	.uaword	0xceda
	.uleb128 0x13
	.byte	0x4
	.byte	0xd
	.uahalf	0x2df
	.uaword	0xcf5f
	.uleb128 0x14
	.string	"U"
	.byte	0xd
	.uahalf	0x2e1
	.uaword	0x554
	.uleb128 0x14
	.string	"I"
	.byte	0xd
	.uahalf	0x2e2
	.uaword	0x186
	.uleb128 0x14
	.string	"B"
	.byte	0xd
	.uahalf	0x2e3
	.uaword	0xcf1b
	.byte	0
	.uleb128 0x11
	.string	"Ifx_CPU_CORE_ID"
	.byte	0xd
	.uahalf	0x2e4
	.uaword	0xcf37
	.uleb128 0x7
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uaword	0xcf9f
	.uleb128 0x8
	.string	"IfxCpu_Id_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxCpu_Id_none"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_Id"
	.byte	0xe
	.byte	0x83
	.uaword	0xcf77
	.uleb128 0x7
	.byte	0x1
	.byte	0xe
	.byte	0x88
	.uaword	0xcfde
	.uleb128 0x8
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x6c
	.uaword	0xd06c
	.uleb128 0x8
	.string	"IfxEth_ChecksumMode_bypass"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxEth_ChecksumMode_ipv4"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxEth_ChecksumMode_tcpUdpIcmpSegment"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxEth_ChecksumMode_tcpUdpIcmpFull"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_ChecksumMode"
	.byte	0x2
	.byte	0x71
	.uaword	0xcfde
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x74
	.uaword	0xd0cb
	.uleb128 0x8
	.string	"IfxEth_DescriptorMode_chain"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxEth_DescriptorMode_ring"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_DescriptorMode"
	.byte	0x2
	.byte	0x77
	.uaword	0xd087
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x7c
	.uaword	0xd12e
	.uleb128 0x8
	.string	"IfxEth_PhyInterfaceMode_mii"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxEth_PhyInterfaceMode_rmii"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_PhyInterfaceMode"
	.byte	0x2
	.byte	0x7f
	.uaword	0xd0e8
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x92
	.uaword	0xd1c6
	.uleb128 0x8
	.string	"IfxEth_RingModeBufferUsed_buffer1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxEth_RingModeBufferUsed_buffer2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxEth_RingModeBufferUsed_bothBuffers"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_RingModeBufferUsed"
	.byte	0x2
	.byte	0x96
	.uaword	0xd14d
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0xb0
	.uaword	0xd303
	.uleb128 0xd
	.string	"ext"
	.byte	0x2
	.byte	0xb2
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CE"
	.byte	0x2
	.byte	0xb3
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"DBE"
	.byte	0x2
	.byte	0xb4
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"RE"
	.byte	0x2
	.byte	0xb5
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"RWT"
	.byte	0x2
	.byte	0xb6
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FT"
	.byte	0x2
	.byte	0xb7
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"LC"
	.byte	0x2
	.byte	0xb8
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"IPC"
	.byte	0x2
	.byte	0xb9
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"LS"
	.byte	0x2
	.byte	0xba
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"FS"
	.byte	0x2
	.byte	0xbb
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"VLAN"
	.byte	0x2
	.byte	0xbc
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"OE"
	.byte	0x2
	.byte	0xbd
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"LE"
	.byte	0x2
	.byte	0xbe
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"SAF"
	.byte	0x2
	.byte	0xbf
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"DE"
	.byte	0x2
	.byte	0xc0
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"ES"
	.byte	0x2
	.byte	0xc1
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"FL"
	.byte	0x2
	.byte	0xc2
	.uaword	0x1de
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"AFM"
	.byte	0x2
	.byte	0xc3
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"OWN"
	.byte	0x2
	.byte	0xc4
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltRxDescr0_Bits"
	.byte	0x2
	.byte	0xc5
	.uaword	0xd1e7
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0xc9
	.uaword	0xd399
	.uleb128 0xd
	.string	"RBS1"
	.byte	0x2
	.byte	0xcb
	.uaword	0x1de
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"resv1"
	.byte	0x2
	.byte	0xcc
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"RCH"
	.byte	0x2
	.byte	0xcd
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"RER"
	.byte	0x2
	.byte	0xce
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"RBS2"
	.byte	0x2
	.byte	0xcf
	.uaword	0x1de
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"resv"
	.byte	0x2
	.byte	0xd0
	.uaword	0x1de
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"DIC"
	.byte	0x2
	.byte	0xd1
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltRxDescr1_Bits"
	.byte	0x2
	.byte	0xd2
	.uaword	0xd322
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0xd6
	.uaword	0xd54d
	.uleb128 0xd
	.string	"DB"
	.byte	0x2
	.byte	0xd8
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"UF"
	.byte	0x2
	.byte	0xd9
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ED"
	.byte	0x2
	.byte	0xda
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"CC"
	.byte	0x2
	.byte	0xdb
	.uaword	0x1de
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"VLAN"
	.byte	0x2
	.byte	0xdc
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EC"
	.byte	0x2
	.byte	0xdd
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"LC"
	.byte	0x2
	.byte	0xde
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"NC"
	.byte	0x2
	.byte	0xdf
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"LOC"
	.byte	0x2
	.byte	0xe0
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"PCE"
	.byte	0x2
	.byte	0xe1
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"FF"
	.byte	0x2
	.byte	0xe2
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"JT"
	.byte	0x2
	.byte	0xe3
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"ES"
	.byte	0x2
	.byte	0xe4
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"IHE"
	.byte	0x2
	.byte	0xe5
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TTSS"
	.byte	0x2
	.byte	0xe6
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"resv"
	.byte	0x2
	.byte	0xe7
	.uaword	0x1de
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"TCH"
	.byte	0x2
	.byte	0xe8
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"TER"
	.byte	0x2
	.byte	0xe9
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"CIC"
	.byte	0x2
	.byte	0xea
	.uaword	0x1de
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"resv1"
	.byte	0x2
	.byte	0xeb
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"TTSE"
	.byte	0x2
	.byte	0xec
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"DP"
	.byte	0x2
	.byte	0xed
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"DC"
	.byte	0x2
	.byte	0xee
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"FS"
	.byte	0x2
	.byte	0xef
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"LS"
	.byte	0x2
	.byte	0xf0
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"IC"
	.byte	0x2
	.byte	0xf1
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"OWN"
	.byte	0x2
	.byte	0xf2
	.uaword	0x1de
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltTxDescr0_Bits"
	.byte	0x2
	.byte	0xf3
	.uaword	0xd3b8
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0xf7
	.uaword	0xd5b7
	.uleb128 0xd
	.string	"TBS1"
	.byte	0x2
	.byte	0xf9
	.uaword	0x1de
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"resv1"
	.byte	0x2
	.byte	0xfa
	.uaword	0x1de
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"TBS2"
	.byte	0x2
	.byte	0xfb
	.uaword	0x1de
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"resv2"
	.byte	0x2
	.byte	0xfc
	.uaword	0x1de
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltTxDescr1_Bits"
	.byte	0x2
	.byte	0xfd
	.uaword	0xd56c
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x105
	.uaword	0xd5f4
	.uleb128 0x14
	.string	"A"
	.byte	0x2
	.uahalf	0x107
	.uaword	0xd303
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x108
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescr0"
	.byte	0x2
	.uahalf	0x109
	.uaword	0xd5d6
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x10d
	.uaword	0xd62a
	.uleb128 0x14
	.string	"A"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0xd399
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x110
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescr1"
	.byte	0x2
	.uahalf	0x111
	.uaword	0xd60c
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x115
	.uaword	0xd656
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x117
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescr2"
	.byte	0x2
	.uahalf	0x118
	.uaword	0xd642
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x11c
	.uaword	0xd682
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x11e
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescr3"
	.byte	0x2
	.uahalf	0x11f
	.uaword	0xd66e
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x123
	.uaword	0xd6b8
	.uleb128 0x14
	.string	"A"
	.byte	0x2
	.uahalf	0x125
	.uaword	0xd54d
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x126
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescr0"
	.byte	0x2
	.uahalf	0x127
	.uaword	0xd69a
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x12b
	.uaword	0xd6ee
	.uleb128 0x14
	.string	"A"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0xd5b7
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x12e
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescr1"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0xd6d0
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x133
	.uaword	0xd71a
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x135
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescr2"
	.byte	0x2
	.uahalf	0x136
	.uaword	0xd706
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.uahalf	0x13a
	.uaword	0xd746
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x1de
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescr3"
	.byte	0x2
	.uahalf	0x13d
	.uaword	0xd732
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x145
	.uaword	0xd7e1
	.uleb128 0x18
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x147
	.uaword	0xd1c6
	.byte	0
	.uleb128 0x15
	.string	"rxBuffer1StartAddress"
	.byte	0x2
	.uahalf	0x148
	.uaword	0x1de
	.byte	0x4
	.uleb128 0x15
	.string	"rxBuffer2StartAddress"
	.byte	0x2
	.uahalf	0x149
	.uaword	0x1de
	.byte	0x8
	.uleb128 0x15
	.string	"rxBuffer1Size"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x1ba
	.byte	0xc
	.uleb128 0x15
	.string	"rxBuffer2Size"
	.byte	0x2
	.uahalf	0x14b
	.uaword	0x1ba
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RingModeRxBuffersConfig"
	.byte	0x2
	.uahalf	0x14c
	.uaword	0xd75e
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x150
	.uaword	0xd88b
	.uleb128 0x18
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x152
	.uaword	0xd1c6
	.byte	0
	.uleb128 0x15
	.string	"txBuffer1StartAddress"
	.byte	0x2
	.uahalf	0x153
	.uaword	0x1de
	.byte	0x4
	.uleb128 0x15
	.string	"txBuffer2StartAddress"
	.byte	0x2
	.uahalf	0x154
	.uaword	0x1de
	.byte	0x8
	.uleb128 0x15
	.string	"txBuffer1Size"
	.byte	0x2
	.uahalf	0x155
	.uaword	0x1ba
	.byte	0xc
	.uleb128 0x15
	.string	"txBuffer2Size"
	.byte	0x2
	.uahalf	0x156
	.uaword	0x1ba
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RingModeTxBuffersConfig"
	.byte	0x2
	.uahalf	0x157
	.uaword	0xd808
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x15b
	.uaword	0xd8f8
	.uleb128 0x15
	.string	"RDES0"
	.byte	0x2
	.uahalf	0x15d
	.uaword	0xd5f4
	.byte	0
	.uleb128 0x15
	.string	"RDES1"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0xd62a
	.byte	0x4
	.uleb128 0x15
	.string	"RDES2"
	.byte	0x2
	.uahalf	0x15f
	.uaword	0xd656
	.byte	0x8
	.uleb128 0x15
	.string	"RDES3"
	.byte	0x2
	.uahalf	0x160
	.uaword	0xd682
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescr"
	.byte	0x2
	.uahalf	0x161
	.uaword	0xd8b2
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x165
	.uaword	0xd955
	.uleb128 0x15
	.string	"TDES0"
	.byte	0x2
	.uahalf	0x167
	.uaword	0xd6b8
	.byte	0
	.uleb128 0x15
	.string	"TDES1"
	.byte	0x2
	.uahalf	0x168
	.uaword	0xd6ee
	.byte	0x4
	.uleb128 0x15
	.string	"TDES2"
	.byte	0x2
	.uahalf	0x169
	.uaword	0xd71a
	.byte	0x8
	.uleb128 0x15
	.string	"TDES3"
	.byte	0x2
	.uahalf	0x16a
	.uaword	0xd746
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescr"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0xd90f
	.uleb128 0x20
	.byte	0x48
	.byte	0x2
	.uahalf	0x173
	.uaword	0xda71
	.uleb128 0x15
	.string	"crs"
	.byte	0x2
	.uahalf	0x175
	.uaword	0xda71
	.byte	0
	.uleb128 0x15
	.string	"col"
	.byte	0x2
	.uahalf	0x176
	.uaword	0xda77
	.byte	0x4
	.uleb128 0x15
	.string	"txClk"
	.byte	0x2
	.uahalf	0x177
	.uaword	0xda7d
	.byte	0x8
	.uleb128 0x15
	.string	"rxClk"
	.byte	0x2
	.uahalf	0x178
	.uaword	0xda83
	.byte	0xc
	.uleb128 0x15
	.string	"rxDv"
	.byte	0x2
	.uahalf	0x179
	.uaword	0xda89
	.byte	0x10
	.uleb128 0x15
	.string	"rxEr"
	.byte	0x2
	.uahalf	0x17a
	.uaword	0xda8f
	.byte	0x14
	.uleb128 0x15
	.string	"rxd0"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0xda95
	.byte	0x18
	.uleb128 0x15
	.string	"rxd1"
	.byte	0x2
	.uahalf	0x17c
	.uaword	0xda95
	.byte	0x1c
	.uleb128 0x15
	.string	"rxd2"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0xda95
	.byte	0x20
	.uleb128 0x15
	.string	"rxd3"
	.byte	0x2
	.uahalf	0x17e
	.uaword	0xda95
	.byte	0x24
	.uleb128 0x15
	.string	"txEn"
	.byte	0x2
	.uahalf	0x17f
	.uaword	0xda9b
	.byte	0x28
	.uleb128 0x15
	.string	"txEr"
	.byte	0x2
	.uahalf	0x180
	.uaword	0xdaa1
	.byte	0x2c
	.uleb128 0x15
	.string	"txd0"
	.byte	0x2
	.uahalf	0x181
	.uaword	0xdaa7
	.byte	0x30
	.uleb128 0x15
	.string	"txd1"
	.byte	0x2
	.uahalf	0x182
	.uaword	0xdaa7
	.byte	0x34
	.uleb128 0x15
	.string	"txd2"
	.byte	0x2
	.uahalf	0x183
	.uaword	0xdaa7
	.byte	0x38
	.uleb128 0x15
	.string	"txd3"
	.byte	0x2
	.uahalf	0x184
	.uaword	0xdaa7
	.byte	0x3c
	.uleb128 0x15
	.string	"mdc"
	.byte	0x2
	.uahalf	0x185
	.uaword	0xdaad
	.byte	0x40
	.uleb128 0x15
	.string	"mdio"
	.byte	0x2
	.uahalf	0x186
	.uaword	0xdab3
	.byte	0x44
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc95c
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcb57
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcac7
	.uleb128 0x5
	.byte	0x4
	.uaword	0xca7e
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc9ec
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcd22
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcb10
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcc90
	.uleb128 0x5
	.byte	0x4
	.uaword	0xccd9
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcc48
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcb9e
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcbfd
	.uleb128 0x11
	.string	"IfxEth_MiiPins"
	.byte	0x2
	.uahalf	0x187
	.uaword	0xd96c
	.uleb128 0x20
	.byte	0x20
	.byte	0x2
	.uahalf	0x18b
	.uaword	0xdafe
	.uleb128 0x15
	.string	"txConfig"
	.byte	0x2
	.uahalf	0x18d
	.uaword	0xd88b
	.byte	0
	.uleb128 0x15
	.string	"rxConfig"
	.byte	0x2
	.uahalf	0x18e
	.uaword	0xd7e1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RingModeBuffersConfig"
	.byte	0x2
	.uahalf	0x18f
	.uaword	0xdad0
	.uleb128 0x20
	.byte	0x24
	.byte	0x2
	.uahalf	0x193
	.uaword	0xdbae
	.uleb128 0x15
	.string	"crsDiv"
	.byte	0x2
	.uahalf	0x195
	.uaword	0xdbae
	.byte	0
	.uleb128 0x15
	.string	"refClk"
	.byte	0x2
	.uahalf	0x196
	.uaword	0xdbb4
	.byte	0x4
	.uleb128 0x15
	.string	"rxd0"
	.byte	0x2
	.uahalf	0x197
	.uaword	0xda95
	.byte	0x8
	.uleb128 0x15
	.string	"rxd1"
	.byte	0x2
	.uahalf	0x198
	.uaword	0xda95
	.byte	0xc
	.uleb128 0x15
	.string	"mdc"
	.byte	0x2
	.uahalf	0x199
	.uaword	0xdaad
	.byte	0x10
	.uleb128 0x15
	.string	"mdio"
	.byte	0x2
	.uahalf	0x19a
	.uaword	0xdab3
	.byte	0x14
	.uleb128 0x15
	.string	"txd0"
	.byte	0x2
	.uahalf	0x19b
	.uaword	0xdaa7
	.byte	0x18
	.uleb128 0x15
	.string	"txd1"
	.byte	0x2
	.uahalf	0x19c
	.uaword	0xdaa7
	.byte	0x1c
	.uleb128 0x15
	.string	"txEn"
	.byte	0x2
	.uahalf	0x19d
	.uaword	0xda9b
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc9a3
	.uleb128 0x5
	.byte	0x4
	.uaword	0xca34
	.uleb128 0x11
	.string	"IfxEth_RmiiPins"
	.byte	0x2
	.uahalf	0x19e
	.uaword	0xdb23
	.uleb128 0x13
	.byte	0x80
	.byte	0x2
	.uahalf	0x1a4
	.uaword	0xdbf4
	.uleb128 0x14
	.string	"items"
	.byte	0x2
	.uahalf	0x1a6
	.uaword	0xdbf4
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x1a7
	.uaword	0xdc04
	.byte	0
	.uleb128 0x1a
	.uaword	0xd8f8
	.uaword	0xdc04
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.uaword	0x1de
	.uaword	0xdc1a
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x7
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_RxDescrList"
	.byte	0x2
	.uahalf	0x1a8
	.uaword	0xdbd2
	.uleb128 0x21
	.uahalf	0x100
	.byte	0x2
	.uahalf	0x1aa
	.uaword	0xdc58
	.uleb128 0x14
	.string	"items"
	.byte	0x2
	.uahalf	0x1ac
	.uaword	0xdc58
	.uleb128 0x14
	.string	"U"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0xdc68
	.byte	0
	.uleb128 0x1a
	.uaword	0xd955
	.uaword	0xdc68
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.uaword	0x1de
	.uaword	0xdc7e
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xf
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.string	"IfxEth_TxDescrList"
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0xdc35
	.uleb128 0x20
	.byte	0x50
	.byte	0x2
	.uahalf	0x1b6
	.uaword	0xdd8b
	.uleb128 0x18
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x1b8
	.uaword	0xdd8b
	.byte	0
	.uleb128 0x15
	.string	"phyInit"
	.byte	0x2
	.uahalf	0x1b9
	.uaword	0xdda1
	.byte	0x8
	.uleb128 0x15
	.string	"phyLink"
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0xddad
	.byte	0xc
	.uleb128 0x15
	.string	"phyInterfaceMode"
	.byte	0x2
	.uahalf	0x1bb
	.uaword	0xd12e
	.byte	0x10
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x1bc
	.uaword	0xddb3
	.byte	0x14
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x2
	.uahalf	0x1bd
	.uaword	0xddbe
	.byte	0x18
	.uleb128 0x15
	.string	"isrPriority"
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x265
	.byte	0x1c
	.uleb128 0x15
	.string	"isrProvider"
	.byte	0x2
	.uahalf	0x1bf
	.uaword	0xcd69
	.byte	0x1e
	.uleb128 0x18
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0xc956
	.byte	0x20
	.uleb128 0x15
	.string	"rxDescr"
	.byte	0x2
	.uahalf	0x1c1
	.uaword	0xddc9
	.byte	0x24
	.uleb128 0x15
	.string	"txDescr"
	.byte	0x2
	.uahalf	0x1c2
	.uaword	0xddcf
	.byte	0x28
	.uleb128 0x18
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x1c3
	.uaword	0xd0cb
	.byte	0x2c
	.uleb128 0x15
	.string	"ringModeBuffersConfig"
	.byte	0x2
	.uahalf	0x1c4
	.uaword	0xdafe
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ad
	.uaword	0xdd9b
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x5
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.uaword	0x1de
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdd9b
	.uleb128 0x22
	.byte	0x1
	.uaword	0x18d
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdda7
	.uleb128 0x5
	.byte	0x4
	.uaword	0xddb9
	.uleb128 0x1d
	.uaword	0xdbba
	.uleb128 0x5
	.byte	0x4
	.uaword	0xddc4
	.uleb128 0x1d
	.uaword	0xdab9
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdc1a
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdc7e
	.uleb128 0x11
	.string	"IfxEth_Config"
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0xdc99
	.uleb128 0x20
	.byte	0x8c
	.byte	0x2
	.uahalf	0x1cd
	.uaword	0xdf17
	.uleb128 0x15
	.string	"status"
	.byte	0x2
	.uahalf	0x1cf
	.uaword	0x82e9
	.byte	0
	.uleb128 0x15
	.string	"rxCount"
	.byte	0x2
	.uahalf	0x1d0
	.uaword	0x1de
	.byte	0x4
	.uleb128 0x15
	.string	"txCount"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1de
	.byte	0x8
	.uleb128 0x15
	.string	"error"
	.byte	0x2
	.uahalf	0x1d2
	.uaword	0x1de
	.byte	0xc
	.uleb128 0x15
	.string	"isrRxCount"
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0x222
	.byte	0x10
	.uleb128 0x15
	.string	"isrTxCount"
	.byte	0x2
	.uahalf	0x1d4
	.uaword	0x222
	.byte	0x14
	.uleb128 0x15
	.string	"txDiff"
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0x222
	.byte	0x18
	.uleb128 0x15
	.string	"rxDiff"
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x222
	.byte	0x1c
	.uleb128 0x15
	.string	"isrCount"
	.byte	0x2
	.uahalf	0x1d7
	.uaword	0x222
	.byte	0x20
	.uleb128 0x18
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x1d8
	.uaword	0xddd5
	.byte	0x24
	.uleb128 0x15
	.string	"rxDescr"
	.byte	0x2
	.uahalf	0x1d9
	.uaword	0xddc9
	.byte	0x74
	.uleb128 0x15
	.string	"txDescr"
	.byte	0x2
	.uahalf	0x1da
	.uaword	0xddcf
	.byte	0x78
	.uleb128 0x15
	.string	"pRxDescr"
	.byte	0x2
	.uahalf	0x1db
	.uaword	0xdf17
	.byte	0x7c
	.uleb128 0x15
	.string	"pTxDescr"
	.byte	0x2
	.uahalf	0x1dc
	.uaword	0xdf1d
	.byte	0x80
	.uleb128 0x18
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0xc956
	.byte	0x84
	.uleb128 0x18
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x1de
	.uaword	0xd0cb
	.byte	0x88
	.uleb128 0x18
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x1df
	.uaword	0xd1c6
	.byte	0x89
	.uleb128 0x18
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x1e0
	.uaword	0xd1c6
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd8f8
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd955
	.uleb128 0x11
	.string	"IfxEth"
	.byte	0x2
	.uahalf	0x1e1
	.uaword	0xddeb
	.uleb128 0x23
	.string	"IfxSrc_clearRequest"
	.byte	0x5
	.byte	0xfa
	.byte	0x1
	.byte	0x3
	.uaword	0xdf5b
	.uleb128 0x24
	.string	"src"
	.byte	0x5
	.byte	0xfa
	.uaword	0xdf5b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdf61
	.uleb128 0x16
	.uaword	0xcec6
	.uleb128 0x25
	.string	"IfxEth_RxDescr_getNext"
	.byte	0x2
	.uahalf	0x4cb
	.byte	0x1
	.uaword	0xdf17
	.byte	0x3
	.uaword	0xdf98
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4cb
	.uaword	0xdf17
	.byte	0
	.uleb128 0x25
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x305
	.byte	0x1
	.uaword	0xcf9f
	.byte	0x3
	.uaword	0xdfd4
	.uleb128 0x27
	.string	"reg"
	.byte	0x3
	.uahalf	0x307
	.uaword	0xcf5f
	.uleb128 0x28
	.uleb128 0x27
	.string	"__res"
	.byte	0x3
	.uahalf	0x308
	.uaword	0x554
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_RxDescr_setBuffer"
	.byte	0x2
	.uahalf	0x4d7
	.byte	0x1
	.byte	0x3
	.uaword	0xe010
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4d7
	.uaword	0xdf17
	.uleb128 0x26
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x4d7
	.uaword	0x25c
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_TxDescr_getNext"
	.byte	0x2
	.uahalf	0x4dd
	.byte	0x1
	.uaword	0xdf1d
	.byte	0x3
	.uaword	0xe042
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4dd
	.uaword	0xdf1d
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_TxDescr_setBuffer"
	.byte	0x2
	.uahalf	0x4ef
	.byte	0x1
	.byte	0x3
	.uaword	0xe07e
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4ef
	.uaword	0xdf1d
	.uleb128 0x26
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x4ef
	.uaword	0x25c
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_applySoftwareReset"
	.byte	0x2
	.uahalf	0x501
	.byte	0x1
	.byte	0x3
	.uaword	0xe0af
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x501
	.uaword	0xe0af
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdf23
	.uleb128 0x25
	.string	"IfxEth_getActualRxDescriptor"
	.byte	0x2
	.uahalf	0x569
	.byte	0x1
	.uaword	0xdf17
	.byte	0x3
	.uaword	0xe0ed
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x569
	.uaword	0xe0af
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getActualTxDescriptor"
	.byte	0x2
	.uahalf	0x576
	.byte	0x1
	.uaword	0xdf1d
	.byte	0x3
	.uaword	0xe125
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x576
	.uaword	0xe0af
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getBaseRxDescriptor"
	.byte	0x2
	.uahalf	0x57c
	.byte	0x1
	.uaword	0xdf17
	.byte	0x3
	.uaword	0xe15b
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x57c
	.uaword	0xe0af
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getBaseTxDescriptor"
	.byte	0x2
	.uahalf	0x582
	.byte	0x1
	.uaword	0xdf1d
	.byte	0x3
	.uaword	0xe191
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x582
	.uaword	0xe0af
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_isSoftwareResetDone"
	.byte	0x2
	.uahalf	0x5ff
	.byte	0x1
	.uaword	0x18d
	.byte	0x3
	.uaword	0xe1c7
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x5ff
	.uaword	0xe0af
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setPhyInterfaceMode"
	.byte	0x2
	.uahalf	0x638
	.byte	0x1
	.byte	0x3
	.uaword	0xe205
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x638
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x638
	.uaword	0xd12e
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveBuffer1RingMode"
	.byte	0x2
	.uahalf	0x63f
	.byte	0x1
	.byte	0x3
	.uaword	0xe262
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x63f
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x63f
	.uaword	0xdf17
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x63f
	.uaword	0x1de
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x63f
	.uaword	0x1ba
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveBuffer2RingMode"
	.byte	0x2
	.uahalf	0x646
	.byte	0x1
	.byte	0x3
	.uaword	0xe2bf
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x646
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x646
	.uaword	0xdf17
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x646
	.uaword	0x1de
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x646
	.uaword	0x1ba
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitBuffer1RingMode"
	.byte	0x2
	.uahalf	0x668
	.byte	0x1
	.byte	0x3
	.uaword	0xe31d
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x668
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x668
	.uaword	0xdf1d
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x668
	.uaword	0x1de
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x668
	.uaword	0x1ba
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitBuffer2RingMode"
	.byte	0x2
	.uahalf	0x66f
	.byte	0x1
	.byte	0x3
	.uaword	0xe37b
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x66f
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x66f
	.uaword	0xdf1d
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x66f
	.uaword	0x1de
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x66f
	.uaword	0x1ba
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveDescriptorAddress"
	.byte	0x2
	.uahalf	0x64d
	.byte	0x1
	.byte	0x3
	.uaword	0xe3c1
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x64d
	.uaword	0xc956
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x64d
	.uaword	0x25c
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitDescriptorAddress"
	.byte	0x2
	.uahalf	0x676
	.byte	0x1
	.byte	0x3
	.uaword	0xe408
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x676
	.uaword	0xc956
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x676
	.uaword	0x25c
	.byte	0
	.uleb128 0x29
	.string	"IfxPort_setPinModeInput"
	.byte	0x4
	.uahalf	0x21d
	.byte	0x1
	.byte	0x3
	.uaword	0xe450
	.uleb128 0x2a
	.string	"port"
	.byte	0x4
	.uahalf	0x21d
	.uaword	0xc307
	.uleb128 0x26
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x1ad
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x21d
	.uaword	0xc392
	.byte	0
	.uleb128 0x29
	.string	"IfxPort_setPinModeOutput"
	.byte	0x4
	.uahalf	0x223
	.byte	0x1
	.byte	0x3
	.uaword	0xe4a7
	.uleb128 0x2a
	.string	"port"
	.byte	0x4
	.uahalf	0x223
	.uaword	0xc307
	.uleb128 0x26
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x223
	.uaword	0x1ad
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x223
	.uaword	0xc79c
	.uleb128 0x2a
	.string	"index"
	.byte	0x4
	.uahalf	0x223
	.uaword	0xc73b
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_RxDescr_release"
	.byte	0x2
	.uahalf	0x4d1
	.byte	0x1
	.byte	0x3
	.uaword	0xe4d5
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4d1
	.uaword	0xdf17
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_setMacAddress"
	.byte	0x1
	.uahalf	0x251
	.byte	0x1
	.byte	0x1
	.uaword	0xe50e
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x251
	.uaword	0xe0af
	.uleb128 0x26
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x251
	.uaword	0xe50e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe514
	.uleb128 0x1d
	.uaword	0x1ad
	.uleb128 0x29
	.string	"IfxSrc_init"
	.byte	0x5
	.uahalf	0x112
	.byte	0x1
	.byte	0x3
	.uaword	0xe562
	.uleb128 0x2a
	.string	"src"
	.byte	0x5
	.uahalf	0x112
	.uaword	0xdf5b
	.uleb128 0x2a
	.string	"typOfService"
	.byte	0x5
	.uahalf	0x112
	.uaword	0xcd69
	.uleb128 0x2a
	.string	"priority"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x265
	.byte	0
	.uleb128 0x29
	.string	"IfxSrc_enable"
	.byte	0x5
	.uahalf	0x10c
	.byte	0x1
	.byte	0x3
	.uaword	0xe587
	.uleb128 0x2a
	.string	"src"
	.byte	0x5
	.uahalf	0x10c
	.uaword	0xdf5b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_stopTransmitter"
	.byte	0x1
	.uahalf	0x377
	.byte	0x1
	.byte	0x1
	.uaword	0xe5b6
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x377
	.uaword	0xe0af
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_startReceiver"
	.byte	0x1
	.uahalf	0x358
	.byte	0x1
	.byte	0x1
	.uaword	0xe5e3
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x358
	.uaword	0xe0af
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_wakeupReceiver"
	.byte	0x1
	.uahalf	0x381
	.byte	0x1
	.byte	0x1
	.uaword	0xe611
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x381
	.uaword	0xe0af
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_isRxDataAvailable"
	.byte	0x2
	.uahalf	0x5f0
	.byte	0x1
	.uaword	0x18d
	.byte	0x3
	.uaword	0xe645
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x5f0
	.uaword	0xe0af
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_startTransmitter"
	.byte	0x1
	.uahalf	0x363
	.byte	0x1
	.byte	0x1
	.uaword	0xe675
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x363
	.uaword	0xe0af
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_wakeupTransmitter"
	.byte	0x1
	.uahalf	0x392
	.byte	0x1
	.byte	0x1
	.uaword	0xe6a6
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x392
	.uaword	0xe0af
	.byte	0
	.uleb128 0x2c
	.uaword	0xe5e3
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe6da
	.uleb128 0x2d
	.uaword	0xe604
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0xe5b6
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.uahalf	0x38d
	.uleb128 0x2d
	.uaword	0xe5d6
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xe675
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe70e
	.uleb128 0x2d
	.uaword	0xe699
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0xe645
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.uahalf	0x3a0
	.uleb128 0x2d
	.uaword	0xe668
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_disableModule"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe775
	.uleb128 0x30
	.uaword	.LASF41
	.byte	0x1
	.byte	0x45
	.uaword	0x1ba
	.uaword	.LLST0
	.uleb128 0x31
	.uaword	.LVL4
	.uaword	0x104e0
	.uleb128 0x32
	.uaword	.LVL6
	.uaword	0x1050c
	.uaword	0xe763
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x10536
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_enableModule"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe7e5
	.uleb128 0x35
	.uaword	.LBB252
	.uaword	.LBE252
	.uleb128 0x30
	.uaword	.LASF41
	.byte	0x1
	.byte	0x4f
	.uaword	0x1ba
	.uaword	.LLST1
	.uleb128 0x31
	.uaword	.LVL8
	.uaword	0x104e0
	.uleb128 0x32
	.uaword	.LVL10
	.uaword	0x1050c
	.uaword	0xe7d2
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x10536
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxEth_getReceiveBuffer"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x25c
	.uaword	.LFB291
	.uaword	.LFE291
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe86c
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x5f
	.uaword	0xe0af
	.uaword	.LLST2
	.uleb128 0x38
	.string	"result"
	.byte	0x1
	.byte	0x61
	.uaword	0x25c
	.uaword	.LLST3
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x62
	.uaword	0xdf17
	.uleb128 0x3a
	.uaword	0xe5e3
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x1
	.byte	0x6b
	.uleb128 0x3b
	.uaword	0xe604
	.uaword	.LLST4
	.uleb128 0x3c
	.uaword	.LVL16
	.uaword	0xe6a6
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxEth_getTransmitBuffer"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x25c
	.uaword	.LFB292
	.uaword	.LFE292
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe8c5
	.uleb128 0x3d
	.string	"eth"
	.byte	0x1
	.byte	0x71
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.uaword	.LASF38
	.byte	0x1
	.byte	0x73
	.uaword	0x25c
	.uaword	.LLST5
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x74
	.uaword	0xdf1d
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_initConfig"
	.byte	0x1
	.uahalf	0x10a
	.byte	0x1
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe925
	.uleb128 0x3f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xe925
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xc956
	.byte	0x1
	.byte	0x65
	.uleb128 0x40
	.string	"defaultConfig"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0xe92b
	.byte	0x5
	.byte	0x3
	.uaword	defaultConfig.10642
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xddd5
	.uleb128 0x1d
	.uaword	0xddd5
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_initReceiveDescriptors"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xea47
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x130
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x186
	.uaword	.LLST6
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x134
	.uaword	0xdf17
	.uaword	.LLST7
	.uleb128 0x44
	.uaword	0xe125
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x1
	.uahalf	0x134
	.uaword	0xe9ab
	.uleb128 0x2d
	.uaword	0xe14e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xdfd4
	.uaword	.LBB257
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x143
	.uaword	0xea05
	.uleb128 0x3b
	.uaword	0xdff7
	.uaword	.LLST8
	.uleb128 0x3b
	.uaword	0xe003
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	0xdf98
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x2
	.uahalf	0x4d9
	.uleb128 0x35
	.uaword	.LBB260
	.uaword	.LBE260
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB261
	.uaword	.LBE261
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe37b
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xea2c
	.uleb128 0x3b
	.uaword	0xe3b4
	.uaword	.LLST11
	.uleb128 0x3b
	.uaword	0xe3a8
	.uaword	.LLST12
	.byte	0
	.uleb128 0x2e
	.uaword	0xe125
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x1
	.uahalf	0x153
	.uleb128 0x3b
	.uaword	0xe14e
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_initReceiveDescriptorsRingMode"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xec5e
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x15e
	.uaword	0xec5e
	.byte	0x1
	.byte	0x65
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x186
	.uaword	.LLST14
	.uleb128 0x43
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x162
	.uaword	0x1de
	.uaword	.LLST15
	.uleb128 0x43
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x163
	.uaword	0x1de
	.uaword	.LLST16
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x165
	.uaword	0xdf17
	.uaword	.LLST17
	.uleb128 0x44
	.uaword	0xe125
	.uaword	.LBB276
	.uaword	.LBE276
	.byte	0x1
	.uahalf	0x165
	.uaword	0xeaf8
	.uleb128 0x2d
	.uaword	0xe14e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xe205
	.uaword	.LBB278
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x176
	.uaword	0xeb60
	.uleb128 0x3b
	.uaword	0xe230
	.uaword	.LLST18
	.uleb128 0x3b
	.uaword	0xe254
	.uaword	.LLST19
	.uleb128 0x3b
	.uaword	0xe248
	.uaword	.LLST20
	.uleb128 0x3b
	.uaword	0xe23c
	.uaword	.LLST21
	.uleb128 0x48
	.uaword	0xdf98
	.uaword	.LBB280
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x2
	.uahalf	0x641
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB282
	.uaword	.LBE282
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe262
	.uaword	.LBB290
	.uaword	.LBE290
	.byte	0x1
	.uahalf	0x185
	.uaword	0xeb99
	.uleb128 0x3b
	.uaword	0xe28d
	.uaword	.LLST23
	.uleb128 0x3b
	.uaword	0xe2b1
	.uaword	.LLST24
	.uleb128 0x3b
	.uaword	0xe2a5
	.uaword	.LLST24
	.uleb128 0x3b
	.uaword	0xe299
	.uaword	.LLST26
	.byte	0
	.uleb128 0x45
	.uaword	0xe37b
	.uaword	.LBB292
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x198
	.uaword	0xebc0
	.uleb128 0x3b
	.uaword	0xe3b4
	.uaword	.LLST27
	.uleb128 0x3b
	.uaword	0xe3a8
	.uaword	.LLST28
	.byte	0
	.uleb128 0x44
	.uaword	0xe205
	.uaword	.LBB298
	.uaword	.LBE298
	.byte	0x1
	.uahalf	0x17a
	.uaword	0xebf9
	.uleb128 0x3b
	.uaword	0xe230
	.uaword	.LLST29
	.uleb128 0x3b
	.uaword	0xe254
	.uaword	.LLST30
	.uleb128 0x3b
	.uaword	0xe248
	.uaword	.LLST30
	.uleb128 0x3b
	.uaword	0xe23c
	.uaword	.LLST32
	.byte	0
	.uleb128 0x48
	.uaword	0xe262
	.uaword	.LBB300
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x181
	.uleb128 0x3b
	.uaword	0xe28d
	.uaword	.LLST33
	.uleb128 0x3b
	.uaword	0xe2b1
	.uaword	.LLST34
	.uleb128 0x3b
	.uaword	0xe2a5
	.uaword	.LLST35
	.uleb128 0x3b
	.uaword	0xe299
	.uaword	.LLST36
	.uleb128 0x48
	.uaword	0xdf98
	.uaword	.LBB302
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x2
	.uahalf	0x648
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB304
	.uaword	.LBE304
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xec64
	.uleb128 0x1d
	.uaword	0xd7e1
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_initTransmitDescriptors"
	.byte	0x1
	.uahalf	0x19e
	.byte	0x1
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xed81
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x19e
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x186
	.uaword	.LLST38
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0xdf1d
	.uaword	.LLST39
	.uleb128 0x44
	.uaword	0xe15b
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0xece5
	.uleb128 0x2d
	.uaword	0xe184
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xe042
	.uaword	.LBB312
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x1af
	.uaword	0xed3f
	.uleb128 0x3b
	.uaword	0xe065
	.uaword	.LLST40
	.uleb128 0x3b
	.uaword	0xe071
	.uaword	.LLST41
	.uleb128 0x2e
	.uaword	0xdf98
	.uaword	.LBB314
	.uaword	.LBE314
	.byte	0x2
	.uahalf	0x4f1
	.uleb128 0x35
	.uaword	.LBB315
	.uaword	.LBE315
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB316
	.uaword	.LBE316
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST42
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe3c1
	.uaword	.LBB323
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xed66
	.uleb128 0x3b
	.uaword	0xe3fb
	.uaword	.LLST43
	.uleb128 0x3b
	.uaword	0xe3ef
	.uaword	.LLST44
	.byte	0
	.uleb128 0x2e
	.uaword	0xe15b
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x1
	.uahalf	0x1bf
	.uleb128 0x3b
	.uaword	0xe184
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_initTransmitDescriptorsRingMode"
	.byte	0x1
	.uahalf	0x1ca
	.byte	0x1
	.uaword	.LFB298
	.uaword	.LFE298
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xef99
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0xef99
	.byte	0x1
	.byte	0x65
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x186
	.uaword	.LLST46
	.uleb128 0x43
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x1de
	.uaword	.LLST47
	.uleb128 0x43
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x1de
	.uaword	.LLST48
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0xdf1d
	.uaword	.LLST49
	.uleb128 0x44
	.uaword	0xe15b
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0xee33
	.uleb128 0x2d
	.uaword	0xe184
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xe2bf
	.uaword	.LBB333
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0xee9b
	.uleb128 0x3b
	.uaword	0xe2eb
	.uaword	.LLST50
	.uleb128 0x3b
	.uaword	0xe30f
	.uaword	.LLST51
	.uleb128 0x3b
	.uaword	0xe303
	.uaword	.LLST52
	.uleb128 0x3b
	.uaword	0xe2f7
	.uaword	.LLST53
	.uleb128 0x48
	.uaword	0xdf98
	.uaword	.LBB335
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x2
	.uahalf	0x66a
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB337
	.uaword	.LBE337
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe31d
	.uaword	.LBB345
	.uaword	.LBE345
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0xeed4
	.uleb128 0x3b
	.uaword	0xe349
	.uaword	.LLST55
	.uleb128 0x3b
	.uaword	0xe36d
	.uaword	.LLST56
	.uleb128 0x3b
	.uaword	0xe361
	.uaword	.LLST56
	.uleb128 0x3b
	.uaword	0xe355
	.uaword	.LLST58
	.byte	0
	.uleb128 0x45
	.uaword	0xe3c1
	.uaword	.LBB347
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x204
	.uaword	0xeefb
	.uleb128 0x3b
	.uaword	0xe3fb
	.uaword	.LLST59
	.uleb128 0x3b
	.uaword	0xe3ef
	.uaword	.LLST60
	.byte	0
	.uleb128 0x44
	.uaword	0xe2bf
	.uaword	.LBB353
	.uaword	.LBE353
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0xef34
	.uleb128 0x3b
	.uaword	0xe2eb
	.uaword	.LLST61
	.uleb128 0x3b
	.uaword	0xe30f
	.uaword	.LLST62
	.uleb128 0x3b
	.uaword	0xe303
	.uaword	.LLST62
	.uleb128 0x3b
	.uaword	0xe2f7
	.uaword	.LLST64
	.byte	0
	.uleb128 0x48
	.uaword	0xe31d
	.uaword	.LBB355
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x1ed
	.uleb128 0x3b
	.uaword	0xe349
	.uaword	.LLST65
	.uleb128 0x3b
	.uaword	0xe36d
	.uaword	.LLST66
	.uleb128 0x3b
	.uaword	0xe361
	.uaword	.LLST67
	.uleb128 0x3b
	.uaword	0xe355
	.uaword	.LLST68
	.uleb128 0x48
	.uaword	0xdf98
	.uaword	.LBB357
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x2
	.uahalf	0x671
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0x198
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB359
	.uaword	.LBE359
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xef9f
	.uleb128 0x1d
	.uaword	0xd88b
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_readMacAddress"
	.byte	0x1
	.uahalf	0x20a
	.byte	0x1
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xefec
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x20a
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x20a
	.uaword	0xefec
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ad
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_resetModule"
	.byte	0x1
	.uahalf	0x212
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf084
	.uleb128 0x42
	.string	"passwd"
	.byte	0x1
	.uahalf	0x214
	.uaword	0x1ba
	.uaword	.LLST70
	.uleb128 0x31
	.uaword	.LVL118
	.uaword	0x104e0
	.uleb128 0x32
	.uaword	.LVL120
	.uaword	0x1050c
	.uaword	0xf04a
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL121
	.uaword	0x10536
	.uaword	0xf05e
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL122
	.uaword	0x1050c
	.uaword	0xf072
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL123
	.byte	0x1
	.uaword	0x10536
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xe4d5
	.uaword	.LFB304
	.uaword	.LFE304
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf0a7
	.uleb128 0x2d
	.uaword	0xe4f5
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	0xe501
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setupChecksumEngine"
	.byte	0x1
	.uahalf	0x262
	.byte	0x1
	.uaword	.LFB305
	.uaword	.LFE305
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf138
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x262
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x4a
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x262
	.uaword	0xd06c
	.uaword	.LLST71
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x264
	.uaword	0x186
	.uaword	.LLST72
	.uleb128 0x35
	.uaword	.LBB365
	.uaword	.LBE365
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x26c
	.uaword	0xdf1d
	.uaword	.LLST73
	.uleb128 0x2e
	.uaword	0xe15b
	.uaword	.LBB366
	.uaword	.LBE366
	.byte	0x1
	.uahalf	0x26c
	.uleb128 0x3b
	.uaword	0xe184
	.uaword	.LLST74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setupMiiInputPins"
	.byte	0x1
	.uahalf	0x277
	.byte	0x1
	.uaword	.LFB306
	.uaword	.LFE306
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf5aa
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x277
	.uaword	0xe0af
	.uaword	.LLST75
	.uleb128 0x4a
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x277
	.uaword	0xddbe
	.uaword	.LLST76
	.uleb128 0x4c
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x27b
	.uaword	0xc392
	.byte	0
	.uleb128 0x4c
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x27c
	.uaword	0xc8db
	.byte	0
	.uleb128 0x42
	.string	"txClk"
	.byte	0x1
	.uahalf	0x298
	.uaword	0xda7d
	.uaword	.LLST77
	.uleb128 0x42
	.string	"rxClk"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0xda83
	.uaword	.LLST78
	.uleb128 0x42
	.string	"rxDv"
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0xda89
	.uaword	.LLST79
	.uleb128 0x42
	.string	"rxd0"
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0xda95
	.uaword	.LLST80
	.uleb128 0x42
	.string	"rxd1"
	.byte	0x1
	.uahalf	0x2b9
	.uaword	0xda95
	.uaword	.LLST81
	.uleb128 0x42
	.string	"rxd2"
	.byte	0x1
	.uahalf	0x2be
	.uaword	0xda95
	.uaword	.LLST82
	.uleb128 0x42
	.string	"rxd3"
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0xda95
	.uaword	.LLST83
	.uleb128 0x42
	.string	"mdio"
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0xdab3
	.uaword	.LLST84
	.uleb128 0x4d
	.uaword	.LBB368
	.uaword	.LBE368
	.uaword	0xf296
	.uleb128 0x42
	.string	"crs"
	.byte	0x1
	.uahalf	0x280
	.uaword	0xda71
	.uaword	.LLST85
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB369
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x282
	.uaword	0xf286
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST86
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST87
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST88
	.uleb128 0x3c
	.uaword	.LVL136
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL137
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB373
	.uaword	.LBE373
	.uaword	0xf302
	.uleb128 0x42
	.string	"col"
	.byte	0x1
	.uahalf	0x28d
	.uaword	0xda77
	.uaword	.LLST89
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB374
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x28f
	.uaword	0xf2f2
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST90
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST91
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST92
	.uleb128 0x3c
	.uaword	.LVL140
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL141
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB378
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x29a
	.uaword	0xf341
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST93
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST94
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST95
	.uleb128 0x3c
	.uaword	.LVL144
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB382
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.uahalf	0x29f
	.uaword	0xf380
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST96
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST97
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST98
	.uleb128 0x3c
	.uaword	.LVL148
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB386
	.uaword	.Ldebug_ranges0+0x210
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0xf3bf
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST99
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST100
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST101
	.uleb128 0x3c
	.uaword	.LVL152
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB390
	.uaword	.LBE390
	.uaword	0xf42c
	.uleb128 0x42
	.string	"rxEr"
	.byte	0x1
	.uahalf	0x2a9
	.uaword	0xda8f
	.uaword	.LLST102
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB391
	.uaword	.Ldebug_ranges0+0x228
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0xf41c
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST103
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST104
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST105
	.uleb128 0x3c
	.uaword	.LVL157
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL158
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB395
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0xf46b
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST106
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST107
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST108
	.uleb128 0x3c
	.uaword	.LVL161
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB399
	.uaword	.Ldebug_ranges0+0x258
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0xf4aa
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST109
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST110
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST111
	.uleb128 0x3c
	.uaword	.LVL165
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB403
	.uaword	.Ldebug_ranges0+0x270
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0xf4e9
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST112
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST113
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST114
	.uleb128 0x3c
	.uaword	.LVL169
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB407
	.uaword	.Ldebug_ranges0+0x288
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0xf528
	.uleb128 0x3b
	.uaword	0xe443
	.uaword	.LLST115
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST116
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST117
	.uleb128 0x3c
	.uaword	.LVL173
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL145
	.uaword	0x1058c
	.uaword	0xf53b
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL149
	.uaword	0x1058c
	.uaword	0xf54e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL153
	.uaword	0x1058c
	.uaword	0xf561
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL162
	.uaword	0x1058c
	.uaword	0xf574
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL166
	.uaword	0x1058c
	.uaword	0xf587
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL170
	.uaword	0x1058c
	.uaword	0xf59a
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL174
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setupMiiOutputPins"
	.byte	0x1
	.uahalf	0x2cd
	.byte	0x1
	.uaword	.LFB307
	.uaword	.LFE307
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf8d5
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0xe0af
	.uaword	.LLST118
	.uleb128 0x4a
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0xddbe
	.uaword	.LLST119
	.uleb128 0x4e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0xc79c
	.sleb128 -128
	.uleb128 0x4c
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0xc8db
	.byte	0
	.uleb128 0x42
	.string	"txEn"
	.byte	0x1
	.uahalf	0x2d3
	.uaword	0xda9b
	.uaword	.LLST120
	.uleb128 0x42
	.string	"txd0"
	.byte	0x1
	.uahalf	0x2de
	.uaword	0xdaa7
	.uaword	.LLST121
	.uleb128 0x42
	.string	"txd1"
	.byte	0x1
	.uahalf	0x2e2
	.uaword	0xdaa7
	.uaword	.LLST122
	.uleb128 0x42
	.string	"txd2"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0xdaa7
	.uaword	.LLST123
	.uleb128 0x40
	.string	"txd3"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0xdaa7
	.byte	0x1
	.byte	0x6c
	.uleb128 0x40
	.string	"mdc"
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0xdaad
	.byte	0x1
	.byte	0x6f
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB411
	.uaword	.LBE411
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0xf6b5
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST124
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST125
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST126
	.uleb128 0x31
	.uaword	.LVL183
	.uaword	0x1055e
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB413
	.uaword	.LBE413
	.uaword	0xf725
	.uleb128 0x42
	.string	"txEr"
	.byte	0x1
	.uahalf	0x2d9
	.uaword	0xdaa1
	.uaword	.LLST127
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB414
	.uaword	.LBE414
	.byte	0x1
	.uahalf	0x2db
	.uaword	0xf715
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST128
	.uleb128 0x3b
	.uaword	0xe48c
	.uaword	.LLST129
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST130
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST131
	.uleb128 0x31
	.uaword	.LVL187
	.uaword	0x1055e
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL186
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB416
	.uaword	.LBE416
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0xf765
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST132
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST133
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST134
	.uleb128 0x31
	.uaword	.LVL190
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB418
	.uaword	.LBE418
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0xf7a5
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST135
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST136
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST137
	.uleb128 0x31
	.uaword	.LVL193
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB420
	.uaword	.LBE420
	.byte	0x1
	.uahalf	0x2e8
	.uaword	0xf7e5
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST138
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST139
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST140
	.uleb128 0x31
	.uaword	.LVL196
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB422
	.uaword	.LBE422
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0xf825
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST141
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST142
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST143
	.uleb128 0x31
	.uaword	.LVL199
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB424
	.uaword	.LBE424
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0xf866
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST144
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST145
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST146
	.uleb128 0x50
	.uaword	.LVL202
	.byte	0x1
	.uaword	0x1055e
	.byte	0
	.uleb128 0x32
	.uaword	.LVL182
	.uaword	0x1058c
	.uaword	0xf879
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL189
	.uaword	0x1058c
	.uaword	0xf88c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL192
	.uaword	0x1058c
	.uaword	0xf89f
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL195
	.uaword	0x1058c
	.uaword	0xf8b2
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL198
	.uaword	0x1058c
	.uaword	0xf8c5
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL201
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setupRmiiInputPins"
	.byte	0x1
	.uahalf	0x2f4
	.byte	0x1
	.uaword	.LFB308
	.uaword	.LFE308
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfabe
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0xe0af
	.uaword	.LLST147
	.uleb128 0x4a
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0xddb3
	.uaword	.LLST148
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0x2a0
	.uleb128 0x4c
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0xc392
	.byte	0
	.uleb128 0x4c
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x300
	.uaword	0xc8db
	.byte	0
	.uleb128 0x40
	.string	"crsDiv"
	.byte	0x1
	.uahalf	0x302
	.uaword	0xdbae
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.string	"refClk"
	.byte	0x1
	.uahalf	0x303
	.uaword	0xdbb4
	.byte	0x1
	.byte	0x6e
	.uleb128 0x40
	.string	"rxd0"
	.byte	0x1
	.uahalf	0x304
	.uaword	0xda95
	.byte	0x1
	.byte	0x6d
	.uleb128 0x40
	.string	"rxd1"
	.byte	0x1
	.uahalf	0x305
	.uaword	0xda95
	.byte	0x1
	.byte	0x6c
	.uleb128 0x45
	.uaword	0xe408
	.uaword	.LBB427
	.uaword	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.uahalf	0x307
	.uaword	0xf9bf
	.uleb128 0x51
	.uaword	0xe443
	.byte	0
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST149
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST150
	.uleb128 0x3c
	.uaword	.LVL206
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe408
	.uaword	.LBB433
	.uaword	.LBE433
	.byte	0x1
	.uahalf	0x308
	.uaword	0xf9fb
	.uleb128 0x51
	.uaword	0xe443
	.byte	0
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST151
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST152
	.uleb128 0x3c
	.uaword	.LVL207
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe408
	.uaword	.LBB435
	.uaword	.LBE435
	.byte	0x1
	.uahalf	0x309
	.uaword	0xfa37
	.uleb128 0x51
	.uaword	0xe443
	.byte	0
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST153
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST154
	.uleb128 0x3c
	.uaword	.LVL208
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe408
	.uaword	.LBB437
	.uaword	.LBE437
	.byte	0x1
	.uahalf	0x30a
	.uaword	0xfa73
	.uleb128 0x51
	.uaword	0xe443
	.byte	0
	.uleb128 0x3b
	.uaword	0xe437
	.uaword	.LLST155
	.uleb128 0x3b
	.uaword	0xe42a
	.uaword	.LLST156
	.uleb128 0x3c
	.uaword	.LVL209
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL210
	.uaword	0x1058c
	.uaword	0xfa86
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL211
	.uaword	0x1058c
	.uaword	0xfa99
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL212
	.uaword	0x1058c
	.uaword	0xfaac
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL213
	.byte	0x1
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setupRmiiOutputPins"
	.byte	0x1
	.uahalf	0x314
	.byte	0x1
	.uaword	.LFB309
	.uaword	.LFE309
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfcf6
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x314
	.uaword	0xe0af
	.uaword	.LLST157
	.uleb128 0x4a
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x314
	.uaword	0xddb3
	.uaword	.LLST158
	.uleb128 0x4e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x316
	.uaword	0xc79c
	.sleb128 -128
	.uleb128 0x4c
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x317
	.uaword	0xc8db
	.byte	0
	.uleb128 0x40
	.string	"mdc"
	.byte	0x1
	.uahalf	0x319
	.uaword	0xdaad
	.byte	0x1
	.byte	0x6e
	.uleb128 0x40
	.string	"mdio"
	.byte	0x1
	.uahalf	0x31a
	.uaword	0xdab3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.string	"txen"
	.byte	0x1
	.uahalf	0x31b
	.uaword	0xda9b
	.byte	0x1
	.byte	0x6d
	.uleb128 0x40
	.string	"txd0"
	.byte	0x1
	.uahalf	0x31c
	.uaword	0xdaa7
	.byte	0x1
	.byte	0x6c
	.uleb128 0x42
	.string	"txd1"
	.byte	0x1
	.uahalf	0x31d
	.uaword	0xdaa7
	.uaword	.LLST159
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB440
	.uaword	.LBE440
	.byte	0x1
	.uahalf	0x329
	.uaword	0xfbb5
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST160
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST161
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST162
	.uleb128 0x31
	.uaword	.LVL221
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB442
	.uaword	.LBE442
	.byte	0x1
	.uahalf	0x32a
	.uaword	0xfbf5
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST163
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST164
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST165
	.uleb128 0x31
	.uaword	.LVL222
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB444
	.uaword	.LBE444
	.byte	0x1
	.uahalf	0x32b
	.uaword	0xfc35
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST166
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST167
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST168
	.uleb128 0x31
	.uaword	.LVL223
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB446
	.uaword	.LBE446
	.byte	0x1
	.uahalf	0x32c
	.uaword	0xfc75
	.uleb128 0x3b
	.uaword	0xe498
	.uaword	.LLST169
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe480
	.uaword	.LLST170
	.uleb128 0x3b
	.uaword	0xe473
	.uaword	.LLST171
	.uleb128 0x31
	.uaword	.LVL224
	.uaword	0x1055e
	.byte	0
	.uleb128 0x44
	.uaword	0xe450
	.uaword	.LBB448
	.uaword	.LBE448
	.byte	0x1
	.uahalf	0x331
	.uaword	0xfcc0
	.uleb128 0x52
	.uaword	0xe498
	.uleb128 0x4f
	.uaword	0xe48c
	.sleb128 -128
	.uleb128 0x51
	.uaword	0xe480
	.byte	0x1
	.uleb128 0x4f
	.uaword	0xe473
	.sleb128 -268189440
	.uleb128 0x34
	.uaword	.LVL227
	.byte	0x1
	.uaword	0x1055e
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -268189440
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL218
	.uaword	0x1058c
	.uaword	0xfcd3
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL219
	.uaword	0x1058c
	.uaword	0xfce6
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL220
	.uaword	0x1058c
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxEth_init"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xff58
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x80
	.uaword	0xe0af
	.uaword	.LLST172
	.uleb128 0x54
	.uaword	.LASF36
	.byte	0x1
	.byte	0x80
	.uaword	0xff58
	.uaword	.LLST173
	.uleb128 0x55
	.uaword	0xe1c7
	.uaword	.LBB450
	.uaword	.LBE450
	.byte	0x1
	.byte	0x9d
	.uaword	0xfd5a
	.uleb128 0x3b
	.uaword	0xe1ec
	.uaword	.LLST174
	.uleb128 0x3b
	.uaword	0xe1f8
	.uaword	.LLST175
	.byte	0
	.uleb128 0x55
	.uaword	0xe07e
	.uaword	.LBB452
	.uaword	.LBE452
	.byte	0x1
	.byte	0x9e
	.uaword	0xfd77
	.uleb128 0x3b
	.uaword	0xe0a2
	.uaword	.LLST176
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB454
	.uaword	.LBE454
	.uaword	0xfdb1
	.uleb128 0x38
	.string	"timeout"
	.byte	0x1
	.byte	0xa2
	.uaword	0x1de
	.uaword	.LLST177
	.uleb128 0x56
	.uaword	0xe191
	.uaword	.LBB455
	.uaword	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.byte	0xa4
	.uleb128 0x3b
	.uaword	0xe1ba
	.uaword	.LLST178
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB459
	.uaword	.LBE459
	.uaword	0xfdd2
	.uleb128 0x38
	.string	"busMode"
	.byte	0x1
	.byte	0xac
	.uaword	0x6659
	.uaword	.LLST179
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB460
	.uaword	.LBE460
	.uaword	0xfdf5
	.uleb128 0x38
	.string	"ethMacCfg"
	.byte	0x1
	.byte	0xb7
	.uaword	0x6cbb
	.uaword	.LLST180
	.byte	0
	.uleb128 0x55
	.uaword	0xe4d5
	.uaword	.LBB461
	.uaword	.LBE461
	.byte	0x1
	.byte	0xd1
	.uaword	0xfe1b
	.uleb128 0x3b
	.uaword	0xe501
	.uaword	.LLST181
	.uleb128 0x3b
	.uaword	0xe4f5
	.uaword	.LLST182
	.byte	0
	.uleb128 0x57
	.uaword	0xe519
	.uaword	.LBB463
	.uaword	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.byte	0xe0
	.uaword	0xfe60
	.uleb128 0x52
	.uaword	0xe550
	.uleb128 0x3b
	.uaword	0xe53b
	.uaword	.LLST183
	.uleb128 0x3b
	.uaword	0xe52f
	.uaword	.LLST184
	.uleb128 0x2e
	.uaword	0xdf32
	.uaword	.LBB465
	.uaword	.LBE465
	.byte	0x5
	.uahalf	0x116
	.uleb128 0x3b
	.uaword	0xdf4f
	.uaword	.LLST185
	.byte	0
	.byte	0
	.uleb128 0x55
	.uaword	0xe562
	.uaword	.LBB469
	.uaword	.LBE469
	.byte	0x1
	.byte	0xe1
	.uaword	0xfe7d
	.uleb128 0x3b
	.uaword	0xe57a
	.uaword	.LLST186
	.byte	0
	.uleb128 0x57
	.uaword	0xe587
	.uaword	.LBB471
	.uaword	.Ldebug_ranges0+0x308
	.byte	0x1
	.byte	0xf1
	.uaword	0xfe9a
	.uleb128 0x3b
	.uaword	0xe5a9
	.uaword	.LLST187
	.byte	0
	.uleb128 0x31
	.uaword	.LVL229
	.uaword	0xe775
	.uleb128 0x32
	.uaword	.LVL230
	.uaword	0xf5aa
	.uaword	0xfeb7
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL231
	.uaword	0xf138
	.uaword	0xfecb
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL232
	.uaword	0xeff2
	.uleb128 0x32
	.uaword	.LVL258
	.uaword	0xfabe
	.uaword	0xfee8
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL259
	.uaword	0xf8d5
	.uaword	0xfefc
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL261
	.uaword	0xe930
	.uaword	0xff10
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x58
	.uaword	.LVL262
	.byte	0x1
	.uaword	0xec69
	.uaword	0xff25
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL263
	.uaword	0xea47
	.uaword	0xff40
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL264
	.byte	0x1
	.uaword	0xed81
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 48
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe92b
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_shuffleRxDescriptor"
	.byte	0x1
	.uahalf	0x336
	.byte	0x1
	.uaword	.LFB310
	.uaword	.LFE310
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xff9d
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x336
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_freeReceiveBuffer"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB290
	.uaword	.LFE290
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10014
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x57
	.uaword	0xe0af
	.uaword	.LLST188
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x59
	.uaword	0xdf17
	.uleb128 0x55
	.uaword	0xe4a7
	.uaword	.LBB475
	.uaword	.LBE475
	.byte	0x1
	.byte	0x5a
	.uaword	0x10001
	.uleb128 0x3b
	.uaword	0xe4c8
	.uaword	.LLST189
	.byte	0
	.uleb128 0x34
	.uaword	.LVL271
	.byte	0x1
	.uaword	0xff5e
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_shuffleTxDescriptor"
	.byte	0x1
	.uahalf	0x347
	.byte	0x1
	.uaword	.LFB311
	.uaword	.LFE311
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10053
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x347
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_sendTransmitBuffer"
	.byte	0x1
	.uahalf	0x225
	.byte	0x1
	.uaword	.LFB301
	.uaword	.LFE301
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x100ed
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x225
	.uaword	0xe0af
	.uaword	.LLST190
	.uleb128 0x4b
	.string	"len"
	.byte	0x1
	.uahalf	0x225
	.uaword	0x1ba
	.uaword	.LLST191
	.uleb128 0x59
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x227
	.uaword	0xdf1d
	.uleb128 0x44
	.uaword	0xe675
	.uaword	.LBB477
	.uaword	.LBE477
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x100dc
	.uleb128 0x3b
	.uaword	0xe699
	.uaword	.LLST192
	.uleb128 0x3c
	.uaword	.LVL280
	.uaword	0xe6da
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL281
	.uaword	0x10014
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_setAndSendTransmitBuffer"
	.byte	0x1
	.uahalf	0x24a
	.byte	0x1
	.uaword	.LFB303
	.uaword	.LFE303
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x101af
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0xe0af
	.uaword	.LLST193
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x25c
	.uaword	.LLST194
	.uleb128 0x4b
	.string	"len"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x1ba
	.uaword	.LLST195
	.uleb128 0x44
	.uaword	0xe042
	.uaword	.LBB479
	.uaword	.LBE479
	.byte	0x1
	.uahalf	0x24c
	.uaword	0x101a4
	.uleb128 0x52
	.uaword	0xe065
	.uleb128 0x3b
	.uaword	0xe071
	.uaword	.LLST196
	.uleb128 0x48
	.uaword	0xdf98
	.uaword	.LBB481
	.uaword	.Ldebug_ranges0+0x320
	.byte	0x2
	.uahalf	0x4f1
	.uleb128 0x49
	.uaword	.Ldebug_ranges0+0x320
	.uleb128 0x46
	.uaword	0xdfb7
	.uleb128 0x35
	.uaword	.LBB483
	.uaword	.LBE483
	.uleb128 0x47
	.uaword	0xdfc4
	.uaword	.LLST197
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x50
	.uaword	.LVL286
	.byte	0x1
	.uaword	0x10053
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_sendTransmitBuffersRingMode"
	.byte	0x1
	.uahalf	0x233
	.byte	0x1
	.uaword	.LFB302
	.uaword	.LFE302
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10276
	.uleb128 0x4b
	.string	"eth"
	.byte	0x1
	.uahalf	0x233
	.uaword	0xe0af
	.uaword	.LLST198
	.uleb128 0x4b
	.string	"buffer1Length"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x1ba
	.uaword	.LLST199
	.uleb128 0x4b
	.string	"buffer2Length"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x1ba
	.uaword	.LLST200
	.uleb128 0x59
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x235
	.uaword	0xdf1d
	.uleb128 0x44
	.uaword	0xe675
	.uaword	.LBB486
	.uaword	.LBE486
	.byte	0x1
	.uahalf	0x243
	.uaword	0x10265
	.uleb128 0x3b
	.uaword	0xe699
	.uaword	.LLST201
	.uleb128 0x3c
	.uaword	.LVL291
	.uaword	0xe6da
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL292
	.uaword	0x10014
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xe5b6
	.uaword	.LFB312
	.uaword	.LFE312
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10292
	.uleb128 0x2d
	.uaword	0xe5d6
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xe645
	.uaword	.LFB313
	.uaword	.LFE313
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x102ae
	.uleb128 0x2d
	.uaword	0xe668
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_stopReceiver"
	.byte	0x1
	.uahalf	0x36d
	.byte	0x1
	.uaword	.LFB314
	.uaword	.LFE314
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x102e6
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x36d
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xe587
	.uaword	.LFB315
	.uaword	.LFE315
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10302
	.uleb128 0x2d
	.uaword	0xe5a9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xe5e3
	.uaword	.LFB316
	.uaword	.LFE316
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10332
	.uleb128 0x3b
	.uaword	0xe604
	.uaword	.LLST202
	.uleb128 0x34
	.uaword	.LVL299
	.byte	0x1
	.uaword	0xe6a6
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xe675
	.uaword	.LFB317
	.uaword	.LFE317
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10362
	.uleb128 0x3b
	.uaword	0xe699
	.uaword	.LLST203
	.uleb128 0x34
	.uaword	.LVL301
	.byte	0x1
	.uaword	0xe6da
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxEth_writeHeader"
	.byte	0x1
	.uahalf	0x3a5
	.byte	0x1
	.uaword	.LFB318
	.uaword	.LFE318
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1040a
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0xe0af
	.byte	0x1
	.byte	0x64
	.uleb128 0x4b
	.string	"txBuffer"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0xefec
	.uaword	.LLST204
	.uleb128 0x4b
	.string	"destinationAddress"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0xefec
	.uaword	.LLST205
	.uleb128 0x4b
	.string	"sourceAddress"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0xefec
	.uaword	.LLST206
	.uleb128 0x41
	.string	"packetSize"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0x1de
	.byte	0x1
	.byte	0x54
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x3a8
	.uaword	0x1de
	.uaword	.LLST207
	.byte	0
	.uleb128 0x1a
	.uaword	0x326
	.uaword	0x1041a
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0
	.byte	0
	.uleb128 0x5a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xe
	.byte	0xa4
	.uaword	0x10437
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x1040a
	.uleb128 0x1a
	.uaword	0x1ad
	.uaword	0x10453
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0x7
	.uleb128 0x1b
	.uaword	0xa33d
	.uahalf	0x5ff
	.byte	0
	.uleb128 0x5b
	.string	"IfxEth_rxBuffer"
	.byte	0x1
	.byte	0x37
	.uaword	0x1043c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_rxBuffer
	.uleb128 0x5b
	.string	"IfxEth_rxDescr"
	.byte	0x1
	.byte	0x39
	.uaword	0xdc1a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_rxDescr
	.uleb128 0x1a
	.uaword	0x1ad
	.uaword	0x104a5
	.uleb128 0x1c
	.uaword	0xa33d
	.byte	0xf
	.uleb128 0x1b
	.uaword	0xa33d
	.uahalf	0x5ff
	.byte	0
	.uleb128 0x5b
	.string	"IfxEth_txBuffer"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1048e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_txBuffer
	.uleb128 0x5b
	.string	"IfxEth_txDescr"
	.byte	0x1
	.byte	0x3d
	.uaword	0xdc7e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_txDescr
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xf
	.uahalf	0x181
	.byte	0x1
	.uaword	0x1ba
	.byte	0x1
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xf
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0x10536
	.uleb128 0x5e
	.uaword	0x1ba
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xf
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0x1055e
	.uleb128 0x5e
	.uaword	0x1ba
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x4
	.uahalf	0x162
	.byte	0x1
	.byte	0x1
	.uaword	0x1058c
	.uleb128 0x5e
	.uaword	0xc307
	.uleb128 0x5e
	.uaword	0x1ad
	.uleb128 0x5e
	.uaword	0xc64b
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x4
	.uahalf	0x171
	.byte	0x1
	.byte	0x1
	.uleb128 0x5e
	.uaword	0xc307
	.uleb128 0x5e
	.uaword	0x1ad
	.uleb128 0x5e
	.uaword	0xc8db
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5f
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-1
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE291
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE291
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE291
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE292
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0x85
	.sleb128 112
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL34
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LFE296
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL42
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0x83
	.sleb128 112
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0xa
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x3
	.byte	0x84
	.sleb128 116
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0x8f
	.sleb128 8204
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL52
	.uaword	.LVL56
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x85
	.sleb128 14
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65
	.uaword	.LFE296
	.uahalf	0x2
	.byte	0x85
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LFE296
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL76
	.uaword	.LVL81
	.uahalf	0x4
	.byte	0x85
	.sleb128 240
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL82
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LFE298
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL90
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL98
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0x83
	.sleb128 240
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x84
	.sleb128 120
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x4
	.byte	0x8f
	.sleb128 8208
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL100
	.uaword	.LVL104
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL113
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x85
	.sleb128 14
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LFE298
	.uahalf	0x2
	.byte	0x85
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LFE298
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL113
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL119
	.uaword	.LVL120-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126
	.uaword	.LFE305
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL127
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL132
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL135
	.uaword	.LVL178
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LFE306
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL132
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL136-1
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL178
	.uaword	.LFE306
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL150
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL159
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL163
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL167
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL171
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x3
	.byte	0x8f
	.sleb128 68
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL133
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL134
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL134
	.uaword	.LVL136-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL134
	.uaword	.LVL136-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL138
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL139
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL139
	.uaword	.LVL140-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL139
	.uaword	.LVL140-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL143
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL143
	.uaword	.LVL144-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL143
	.uaword	.LVL144-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL147
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL147
	.uaword	.LVL148-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147
	.uaword	.LVL148-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL151
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL155
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL156
	.uaword	.LVL157-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL156
	.uaword	.LVL157-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL160
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL160
	.uaword	.LVL161-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL160
	.uaword	.LVL161-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL164
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL164
	.uaword	.LVL165-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL164
	.uaword	.LVL165-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL168
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL172
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL172
	.uaword	.LVL173-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL172
	.uaword	.LVL173-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL179
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL181
	.uaword	.LFE307
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL179
	.uaword	.LVL182-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL182-1
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL200
	.uaword	.LFE307
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL188
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL194
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL185
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL189
	.uaword	.LVL190-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL189
	.uaword	.LVL190-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL189
	.uaword	.LVL190-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL201
	.uaword	.LVL202-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL201
	.uaword	.LVL202-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL201
	.uaword	.LVL202-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL203
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL205
	.uaword	.LFE308
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL203
	.uaword	.LVL206-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL206-1
	.uaword	.LFE308
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL204
	.uaword	.LVL206-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL204
	.uaword	.LVL206-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL207
	.uaword	.LVL208-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL207
	.uaword	.LVL208-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL214
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL216
	.uaword	.LFE309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL214
	.uaword	.LVL218-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL218-1
	.uaword	.LFE309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL217
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL220
	.uaword	.LVL221-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL220
	.uaword	.LVL221-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL220
	.uaword	.LVL221-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL221
	.uaword	.LVL222-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL221
	.uaword	.LVL222-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL221
	.uaword	.LVL222-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL222
	.uaword	.LVL223-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL222
	.uaword	.LVL223-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL222
	.uaword	.LVL223-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL223
	.uaword	.LVL224-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL223
	.uaword	.LVL224-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL223
	.uaword	.LVL224-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL228
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL229-1
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL228
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL229-1
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL232
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL233
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL234
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL243
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL248
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL248
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x8f
	.sleb128 30
	.uaword	.LVL251
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL252
	.uaword	.LVL254
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL260
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL270
	.uaword	.LVL271-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL271-1
	.uaword	.LFE290
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL270
	.uaword	.LVL271-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 124
	.uaword	.LVL271-1
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL277
	.uaword	.LVL280-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL280-1
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL277
	.uaword	.LVL280-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL280-1
	.uaword	.LFE301
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL279
	.uaword	.LVL280-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL280-1
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL282
	.uaword	.LVL286-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL286-1
	.uaword	.LFE303
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL282
	.uaword	.LVL286-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL286-1
	.uaword	.LFE303
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL282
	.uaword	.LVL286-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286-1
	.uaword	.LFE303
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL283
	.uaword	.LVL286-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL286-1
	.uaword	.LFE303
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL287
	.uaword	.LVL290
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL290
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL293
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL287
	.uaword	.LVL291-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL291-1
	.uaword	.LVL293
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL293
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL287
	.uaword	.LVL291-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL291-1
	.uaword	.LVL293
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL293
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL289
	.uaword	.LVL291-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL291-1
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL298
	.uaword	.LVL299-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL299-1
	.uaword	.LVL299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL299
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL300
	.uaword	.LVL301-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL301-1
	.uaword	.LVL301
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL301
	.uaword	.LFE317
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL303
	.uaword	.LVL306
	.uahalf	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL307
	.uaword	.LVL310
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL311
	.uaword	.LFE318
	.uahalf	0x3
	.byte	0x85
	.sleb128 13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x3
	.byte	0x86
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL302
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x3
	.byte	0x87
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL302
	.uaword	.LVL305
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL307
	.uaword	.LVL309
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x11c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
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
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.uaword	.LFB305
	.uaword	.LFE305-.LFB305
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB257
	.uaword	.LBE257
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	0
	.uaword	0
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	0
	.uaword	0
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	.LBB288
	.uaword	.LBE288
	.uaword	.LBB289
	.uaword	.LBE289
	.uaword	.LBB308
	.uaword	.LBE308
	.uaword	0
	.uaword	0
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	.LBB284
	.uaword	.LBE284
	.uaword	0
	.uaword	0
	.uaword	.LBB292
	.uaword	.LBE292
	.uaword	.LBB296
	.uaword	.LBE296
	.uaword	.LBB297
	.uaword	.LBE297
	.uaword	0
	.uaword	0
	.uaword	.LBB300
	.uaword	.LBE300
	.uaword	.LBB309
	.uaword	.LBE309
	.uaword	0
	.uaword	0
	.uaword	.LBB302
	.uaword	.LBE302
	.uaword	.LBB306
	.uaword	.LBE306
	.uaword	0
	.uaword	0
	.uaword	.LBB312
	.uaword	.LBE312
	.uaword	.LBB321
	.uaword	.LBE321
	.uaword	.LBB322
	.uaword	.LBE322
	.uaword	.LBB329
	.uaword	.LBE329
	.uaword	.LBB330
	.uaword	.LBE330
	.uaword	0
	.uaword	0
	.uaword	.LBB323
	.uaword	.LBE323
	.uaword	.LBB328
	.uaword	.LBE328
	.uaword	0
	.uaword	0
	.uaword	.LBB333
	.uaword	.LBE333
	.uaword	.LBB343
	.uaword	.LBE343
	.uaword	.LBB344
	.uaword	.LBE344
	.uaword	.LBB363
	.uaword	.LBE363
	.uaword	0
	.uaword	0
	.uaword	.LBB335
	.uaword	.LBE335
	.uaword	.LBB339
	.uaword	.LBE339
	.uaword	0
	.uaword	0
	.uaword	.LBB347
	.uaword	.LBE347
	.uaword	.LBB351
	.uaword	.LBE351
	.uaword	.LBB352
	.uaword	.LBE352
	.uaword	0
	.uaword	0
	.uaword	.LBB355
	.uaword	.LBE355
	.uaword	.LBB364
	.uaword	.LBE364
	.uaword	0
	.uaword	0
	.uaword	.LBB357
	.uaword	.LBE357
	.uaword	.LBB361
	.uaword	.LBE361
	.uaword	0
	.uaword	0
	.uaword	.LBB369
	.uaword	.LBE369
	.uaword	.LBB372
	.uaword	.LBE372
	.uaword	0
	.uaword	0
	.uaword	.LBB374
	.uaword	.LBE374
	.uaword	.LBB377
	.uaword	.LBE377
	.uaword	0
	.uaword	0
	.uaword	.LBB378
	.uaword	.LBE378
	.uaword	.LBB381
	.uaword	.LBE381
	.uaword	0
	.uaword	0
	.uaword	.LBB382
	.uaword	.LBE382
	.uaword	.LBB385
	.uaword	.LBE385
	.uaword	0
	.uaword	0
	.uaword	.LBB386
	.uaword	.LBE386
	.uaword	.LBB389
	.uaword	.LBE389
	.uaword	0
	.uaword	0
	.uaword	.LBB391
	.uaword	.LBE391
	.uaword	.LBB394
	.uaword	.LBE394
	.uaword	0
	.uaword	0
	.uaword	.LBB395
	.uaword	.LBE395
	.uaword	.LBB398
	.uaword	.LBE398
	.uaword	0
	.uaword	0
	.uaword	.LBB399
	.uaword	.LBE399
	.uaword	.LBB402
	.uaword	.LBE402
	.uaword	0
	.uaword	0
	.uaword	.LBB403
	.uaword	.LBE403
	.uaword	.LBB406
	.uaword	.LBE406
	.uaword	0
	.uaword	0
	.uaword	.LBB407
	.uaword	.LBE407
	.uaword	.LBB410
	.uaword	.LBE410
	.uaword	0
	.uaword	0
	.uaword	.LBB426
	.uaword	.LBE426
	.uaword	.LBB439
	.uaword	.LBE439
	.uaword	0
	.uaword	0
	.uaword	.LBB427
	.uaword	.LBE427
	.uaword	.LBB431
	.uaword	.LBE431
	.uaword	.LBB432
	.uaword	.LBE432
	.uaword	0
	.uaword	0
	.uaword	.LBB455
	.uaword	.LBE455
	.uaword	.LBB458
	.uaword	.LBE458
	.uaword	0
	.uaword	0
	.uaword	.LBB463
	.uaword	.LBE463
	.uaword	.LBB468
	.uaword	.LBE468
	.uaword	0
	.uaword	0
	.uaword	.LBB471
	.uaword	.LBE471
	.uaword	.LBB474
	.uaword	.LBE474
	.uaword	0
	.uaword	0
	.uaword	.LBB481
	.uaword	.LBE481
	.uaword	.LBB485
	.uaword	.LBE485
	.uaword	0
	.uaword	0
	.uaword	.LFB334
	.uaword	.LFE334
	.uaword	.LFB335
	.uaword	.LFE335
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	.LFB291
	.uaword	.LFE291
	.uaword	.LFB292
	.uaword	.LFE292
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
	.uaword	.LFB304
	.uaword	.LFE304
	.uaword	.LFB305
	.uaword	.LFE305
	.uaword	.LFB306
	.uaword	.LFE306
	.uaword	.LFB307
	.uaword	.LFE307
	.uaword	.LFB308
	.uaword	.LFE308
	.uaword	.LFB309
	.uaword	.LFE309
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	.LFB310
	.uaword	.LFE310
	.uaword	.LFB290
	.uaword	.LFE290
	.uaword	.LFB311
	.uaword	.LFE311
	.uaword	.LFB301
	.uaword	.LFE301
	.uaword	.LFB303
	.uaword	.LFE303
	.uaword	.LFB302
	.uaword	.LFE302
	.uaword	.LFB312
	.uaword	.LFE312
	.uaword	.LFB313
	.uaword	.LFE313
	.uaword	.LFB314
	.uaword	.LFE314
	.uaword	.LFB315
	.uaword	.LFE315
	.uaword	.LFB316
	.uaword	.LFE316
	.uaword	.LFB317
	.uaword	.LFE317
	.uaword	.LFB318
	.uaword	.LFE318
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF27:
	.string	"pinIndex"
.LASF14:
	.string	"MODNUMBER"
.LASF28:
	.string	"select"
.LASF34:
	.string	"ethSfr"
.LASF44:
	.string	"speedGrade"
.LASF41:
	.string	"l_TempVar"
.LASF30:
	.string	"txBufferUsed"
.LASF37:
	.string	"descr"
.LASF6:
	.string	"reserved_10"
.LASF15:
	.string	"reserved_11"
.LASF26:
	.string	"reserved_12"
.LASF11:
	.string	"reserved_16"
.LASF16:
	.string	"reserved_17"
.LASF22:
	.string	"reserved_19"
.LASF32:
	.string	"rmiiPins"
.LASF23:
	.string	"reserved_20"
.LASF12:
	.string	"reserved_22"
.LASF7:
	.string	"reserved_23"
.LASF24:
	.string	"reserved_24"
.LASF8:
	.string	"reserved_26"
.LASF21:
	.string	"reserved_27"
.LASF25:
	.string	"reserved_28"
.LASF19:
	.string	"reserved_29"
.LASF43:
	.string	"buffer2StartAddress"
.LASF40:
	.string	"address"
.LASF1:
	.string	"reserved_0"
.LASF18:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF4:
	.string	"reserved_3"
.LASF17:
	.string	"reserved_4"
.LASF9:
	.string	"reserved_6"
.LASF5:
	.string	"reserved_7"
.LASF10:
	.string	"reserved_8"
.LASF3:
	.string	"reserved_30"
.LASF13:
	.string	"reserved_31"
.LASF42:
	.string	"buffer1StartAddress"
.LASF0:
	.string	"module"
.LASF35:
	.string	"descriptorMode"
.LASF33:
	.string	"miiPins"
.LASF39:
	.string	"mode"
.LASF36:
	.string	"config"
.LASF20:
	.string	"reserved_14"
.LASF38:
	.string	"buffer"
.LASF29:
	.string	"rxBufferUsed"
.LASF31:
	.string	"macAddress"
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
