	.file	"ASW_ObcChargeSeq.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Obc_RunInit,"ax",@progbits
	.align 1
	.global	Asw_Obc_RunInit
	.type	Asw_Obc_RunInit, @function
Asw_Obc_RunInit:
.LFB181:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.c"
	.loc 1 116 0
	.loc 1 119 0
	mov	%d15, 1
	movh.a	%a15, hi:u8g_OBC_HVILSta
	.loc 1 117 0
	mov	%e4, 11
	call	Bsw_Set_GpioWrite
.LVL0:
	.loc 1 119 0
	st.b	[%a15] lo:u8g_OBC_HVILSta, %d15
	.loc 1 120 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_OBC_ACDetectSta
	st.b	[%a15] lo:u8g_OBC_ACDetectSta, %d15
	.loc 1 122 0
	movh.a	%a15, hi:u8g_OBC_ControllableSta
	st.b	[%a15] lo:u8g_OBC_ControllableSta, %d15
	.loc 1 123 0
	movh.a	%a15, hi:u8g_OBC_ReadySta
	st.b	[%a15] lo:u8g_OBC_ReadySta, %d15
	.loc 1 124 0
	movh.a	%a15, hi:u8g_OBC_OperatingMode
	st.b	[%a15] lo:u8g_OBC_OperatingMode, %d15
	.loc 1 125 0
	movh.a	%a15, hi:u8g_OBC_PowerDeratingSta
	st.b	[%a15] lo:u8g_OBC_PowerDeratingSta, %d15
	.loc 1 127 0
	movh.a	%a15, hi:u8s_Bms_SystemChargingReady
	st.b	[%a15] lo:u8s_Bms_SystemChargingReady, %d15
	.loc 1 128 0
	movh.a	%a15, hi:u8g_Bms_Hw_OBCEnable
	st.b	[%a15] lo:u8g_Bms_Hw_OBCEnable, %d15
	.loc 1 130 0
	movh.a	%a15, hi:u8s_OBC_ChargingReady
	st.b	[%a15] lo:u8s_OBC_ChargingReady, %d15
	.loc 1 131 0
	movh.a	%a15, hi:u8g_Tot_ChargingReady
	st.b	[%a15] lo:u8g_Tot_ChargingReady, %d15
	.loc 1 133 0
	movh.a	%a15, hi:u8s_AcRlySta
	st.b	[%a15] lo:u8s_AcRlySta, %d15
	.loc 1 134 0
	movh.a	%a15, hi:u8s_PFCSta
	st.b	[%a15] lo:u8s_PFCSta, %d15
	.loc 1 135 0
	movh.a	%a15, hi:u8s_PWMSta
	st.b	[%a15] lo:u8s_PWMSta, %d15
	.loc 1 136 0
	movh.a	%a15, hi:u8s_ACChargingReady100msOffCnt
	st.b	[%a15] lo:u8s_ACChargingReady100msOffCnt, %d15
	.loc 1 137 0
	movh.a	%a15, hi:u8s_ACChargingReady100msOnCnt
	st.b	[%a15] lo:u8s_ACChargingReady100msOnCnt, %d15
	ret
.LFE181:
	.size	Asw_Obc_RunInit, .-Asw_Obc_RunInit
.section .text.Asw_Obc_ChargingSeqRun,"ax",@progbits
	.align 1
	.global	Asw_Obc_ChargingSeqRun
	.type	Asw_Obc_ChargingSeqRun, @function
Asw_Obc_ChargingSeqRun:
.LFB182:
	.loc 1 148 0
.LVL1:
.LBB22:
.LBB23:
	.loc 1 481 0
	mov	%d4, 3
	call	Bsw_Get_GpioRead
.LVL2:
	.loc 1 482 0
	mov	%d4, 4
	call	Bsw_Get_GpioRead
.LVL3:
.LBE23:
.LBE22:
	.loc 1 151 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_OBC_HVILSta
	st.b	[%a15] lo:u8g_OBC_HVILSta, %d15
.LVL4:
	.loc 1 152 0
	movh.a	%a15, hi:st_rteObcIn
	lea	%a15, [%a15] lo:st_rteObcIn
.LBB24:
.LBB25:
	.loc 1 420 0
	ld.w	%d2, [%a15] 20
	movh	%d15, 16672
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
.LBE25:
.LBE24:
	.loc 1 152 0
	movh.a	%a2, hi:u8g_OBC_ReadySta
	.loc 1 153 0
	ld.w	%d2, [%a15] 4
.LVL5:
	.loc 1 152 0
	st.b	[%a2] lo:u8g_OBC_ReadySta, %d15
.LBB26:
.LBB27:
	.loc 1 440 0
	movh	%d15, 17066
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
.LVL6:
.LBE27:
.LBE26:
	.loc 1 153 0
	movh.a	%a2, hi:u8g_OBC_ACDetectSta
	st.b	[%a2] lo:u8g_OBC_ACDetectSta, %d15
.LVL7:
.LBB28:
.LBB29:
	.loc 1 457 0
	mov	%d3, 0
	.loc 1 459 0
	jz	%d15, .L5
	.loc 1 460 0
	movh	%d3, 17285
	addi	%d3, %d3, -32768
	cmp.f	%d3, %d2, %d3
	.loc 1 457 0
	or.t	%d3, %d3,1, %d3,0
.L5:
.LVL8:
.LBE29:
.LBE28:
	.loc 1 154 0
	movh.a	%a2, hi:u8g_OBC_ControllableSta
	st.b	[%a2] lo:u8g_OBC_ControllableSta, %d3
	.loc 1 156 0
	movh.a	%a2, hi:u8g_OBC_OperateState
	ld.bu	%d15, [%a2] lo:u8g_OBC_OperateState
.LVL9:
	.loc 1 158 0
	mov	%d4, 6
	.loc 1 156 0
	movh.a	%a2, hi:u8g_OBC_OperatingMode
	st.b	[%a2] lo:u8g_OBC_OperatingMode, %d15
	.loc 1 158 0
	call	Bsw_Get_GpioRead
.LVL10:
	movh.a	%a2, hi:u8g_Bms_Hw_OBCEnable
	st.b	[%a2] lo:u8g_Bms_Hw_OBCEnable, %d2
	.loc 1 160 0
	movh.a	%a2, hi:u8s_OBC_ChargingReady_test
	ld.bu	%d15, [%a2] lo:u8s_OBC_ChargingReady_test
	movh.a	%a2, hi:u8s_OBC_ChargingReady
	st.b	[%a2] lo:u8s_OBC_ChargingReady, %d15
.LVL11:
.LBB30:
.LBB31:
	.loc 1 372 0
	jeq	%d15, 1, .L18
.L7:
.LBE31:
.LBE30:
	.loc 1 167 0
	mov	%d15, 0
	movh.a	%a15, hi:u8s_Bms_SystemChargingReady
	st.b	[%a15] lo:u8s_Bms_SystemChargingReady, %d15
.LVL12:
.L9:
	.loc 1 178 0
	mov	%d15, 0
	movh.a	%a15, hi:u8g_Tot_ChargingReady
	st.b	[%a15] lo:u8g_Tot_ChargingReady, %d15
	ret
.LVL13:
.L18:
.LBB33:
.LBB32:
	.loc 1 374 0
	ld.bu	%d15, [%a15] 41
	jne	%d15, 1, .L7
	.loc 1 375 0
	ld.bu	%d15, [%a15] 33
	jne	%d15, 1, .L7
	.loc 1 376 0
	ld.bu	%d2, [%a15] 43
	jne	%d2, 1, .L7
.LVL14:
.LBE32:
.LBE33:
	.loc 1 167 0
	movh.a	%a15, hi:u8s_Bms_SystemChargingReady
	st.b	[%a15] lo:u8s_Bms_SystemChargingReady, %d2
.LVL15:
.LBB34:
.LBB35:
	.loc 1 504 0
	movh.a	%a15, hi:st_AswObcDiagFlag
	lea	%a15, [%a15] lo:st_AswObcDiagFlag
	.loc 1 505 0
	ld.bu	%d15, [%a15] 2
	add	%d15, -1
	.loc 1 504 0
	and	%d15, 255
	jlt.u	%d15, 2, .L9
	.loc 1 507 0
	ld.bu	%d15, [%a15] 3
	add	%d15, -1
	and	%d15, 255
	jlt.u	%d15, 2, .L9
	.loc 1 509 0
	ld.bu	%d15, [%a15] 4
	add	%d15, -1
	and	%d15, 255
	jlt.u	%d15, 2, .L9
	.loc 1 511 0
	ld.bu	%d15, [%a15] 5
	add	%d15, -1
	and	%d15, 255
	jlt.u	%d15, 2, .L9
.LBE35:
.LBE34:
	.loc 1 174 0
	movh.a	%a15, hi:u8g_Tot_ChargingReady
	st.b	[%a15] lo:u8g_Tot_ChargingReady, %d2
	ret
.LFE182:
	.size	Asw_Obc_ChargingSeqRun, .-Asw_Obc_ChargingSeqRun
.section .text.Asw_SET_ACRly_PFC_PWM_ON,"ax",@progbits
	.align 1
	.global	Asw_SET_ACRly_PFC_PWM_ON
	.type	Asw_SET_ACRly_PFC_PWM_ON, @function
Asw_SET_ACRly_PFC_PWM_ON:
.LFB183:
	.loc 1 190 0
.LVL16:
	.loc 1 193 0
	movh.a	%a15, hi:u8s_ACChargingReady100msOnCnt
	ld.bu	%d15, [%a15] lo:u8s_ACChargingReady100msOnCnt
	ge.u	%d2, %d15, 21
	jz	%d2, .L25
	.loc 1 199 0
	addi	%d2, %d15, -21
	ge.u	%d2, %d2, 20
	jz	%d2, .L26
	.loc 1 206 0
	addi	%d2, %d15, -41
	ge.u	%d2, %d2, 20
	jz	%d2, .L27
.LVL17:
	.loc 1 215 0
	mov	%d15, 1
	movh.a	%a15, hi:u8g_ObcPWMEnable
	st.b	[%a15] lo:u8g_ObcPWMEnable, %d15
	.loc 1 214 0
	mov	%d2, 1
.LVL18:
	.loc 1 219 0
	ret
.LVL19:
.L27:
	.loc 1 209 0
	mov	%d2, 1
	movh.a	%a2, hi:u8s_PWMSta
	.loc 1 210 0
	add	%d15, 1
	.loc 1 209 0
	st.b	[%a2] lo:u8s_PWMSta, %d2
	.loc 1 210 0
	st.b	[%a15] lo:u8s_ACChargingReady100msOnCnt, %d15
	.loc 1 191 0
	mov	%d2, 0
	ret
.L25:
	.loc 1 195 0
	mov	%d15, 1
	movh.a	%a2, hi:u8s_AcRlySta
	st.b	[%a2] lo:u8s_AcRlySta, %d15
	.loc 1 196 0
	mov	%d4, 7
.L24:
	.loc 1 203 0
	mov	%d5, 1
	call	Bsw_Set_GpioWrite
.LVL20:
	.loc 1 204 0
	ld.bu	%d15, [%a15] lo:u8s_ACChargingReady100msOnCnt
	.loc 1 191 0
	mov	%d2, 0
	.loc 1 204 0
	add	%d15, 1
	st.b	[%a15] lo:u8s_ACChargingReady100msOnCnt, %d15
	ret
.L26:
	.loc 1 202 0
	mov	%d15, 1
	movh.a	%a2, hi:u8s_PFCSta
	st.b	[%a2] lo:u8s_PFCSta, %d15
	.loc 1 203 0
	mov	%d4, 8
	j	.L24
.LFE183:
	.size	Asw_SET_ACRly_PFC_PWM_ON, .-Asw_SET_ACRly_PFC_PWM_ON
.section .text.Asw_SET_ACRly_PFC_PWM_OFF,"ax",@progbits
	.align 1
	.global	Asw_SET_ACRly_PFC_PWM_OFF
	.type	Asw_SET_ACRly_PFC_PWM_OFF, @function
Asw_SET_ACRly_PFC_PWM_OFF:
.LFB184:
	.loc 1 229 0
.LVL21:
	.loc 1 232 0
	movh.a	%a15, hi:u8s_ACChargingReady100msOffCnt
	ld.bu	%d15, [%a15] lo:u8s_ACChargingReady100msOffCnt
	ge.u	%d2, %d15, 21
	jz	%d2, .L34
	.loc 1 238 0
	addi	%d2, %d15, -21
	ge.u	%d2, %d2, 20
	jz	%d2, .L35
	.loc 1 245 0
	addi	%d15, %d15, -41
	ge.u	%d15, %d15, 20
	.loc 1 254 0
	mov	%d2, 1
	.loc 1 245 0
	jz	%d15, .L36
.LVL22:
	.loc 1 258 0
	ret
.LVL23:
.L34:
	.loc 1 234 0
	mov	%d2, 0
	movh.a	%a2, hi:u8s_PWMSta
	st.b	[%a2] lo:u8s_PWMSta, %d2
	.loc 1 236 0
	add	%d15, 1
	.loc 1 235 0
	movh.a	%a2, hi:u8g_ObcPWMEnable
	st.b	[%a2] lo:u8g_ObcPWMEnable, %d2
	.loc 1 236 0
	st.b	[%a15] lo:u8s_ACChargingReady100msOffCnt, %d15
	.loc 1 230 0
	mov	%d2, 0
	ret
.L36:
	.loc 1 248 0
	movh.a	%a2, hi:u8s_AcRlySta
	st.b	[%a2] lo:u8s_AcRlySta, %d15
	.loc 1 249 0
	mov	%d4, 7
.L33:
	mov	%d5, 0
	call	Bsw_Set_GpioWrite
.LVL24:
	.loc 1 250 0
	ld.bu	%d15, [%a15] lo:u8s_ACChargingReady100msOffCnt
	.loc 1 230 0
	mov	%d2, 0
.LVL25:
	.loc 1 250 0
	add	%d15, 1
	st.b	[%a15] lo:u8s_ACChargingReady100msOffCnt, %d15
	.loc 1 258 0
	ret
.LVL26:
.L35:
	.loc 1 241 0
	mov	%d15, 0
	movh.a	%a2, hi:u8s_PFCSta
	st.b	[%a2] lo:u8s_PFCSta, %d15
	.loc 1 242 0
	mov	%d4, 8
	j	.L33
.LFE184:
	.size	Asw_SET_ACRly_PFC_PWM_OFF, .-Asw_SET_ACRly_PFC_PWM_OFF
.section .text.Asw_GET_OBC_ReadySta,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_ReadySta
	.type	Asw_GET_OBC_ReadySta, @function
Asw_GET_OBC_ReadySta:
.LFB185:
	.loc 1 268 0
	.loc 1 270 0
	movh.a	%a15, hi:u8g_OBC_ReadySta
	ld.bu	%d2, [%a15] lo:u8g_OBC_ReadySta
	ret
.LFE185:
	.size	Asw_GET_OBC_ReadySta, .-Asw_GET_OBC_ReadySta
.section .text.Asw_GET_OBC_ACDetectSta,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_ACDetectSta
	.type	Asw_GET_OBC_ACDetectSta, @function
Asw_GET_OBC_ACDetectSta:
.LFB186:
	.loc 1 280 0
	.loc 1 282 0
	movh.a	%a15, hi:u8g_OBC_ACDetectSta
	ld.bu	%d2, [%a15] lo:u8g_OBC_ACDetectSta
	ret
.LFE186:
	.size	Asw_GET_OBC_ACDetectSta, .-Asw_GET_OBC_ACDetectSta
.section .text.Asw_GET_OBC_ChargeFinishReq,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_ChargeFinishReq
	.type	Asw_GET_OBC_ChargeFinishReq, @function
Asw_GET_OBC_ChargeFinishReq:
.LFB187:
	.loc 1 292 0
	.loc 1 294 0
	movh.a	%a15, hi:u8g_OBC_ChargeFinishReq
	ld.bu	%d2, [%a15] lo:u8g_OBC_ChargeFinishReq
	ret
.LFE187:
	.size	Asw_GET_OBC_ChargeFinishReq, .-Asw_GET_OBC_ChargeFinishReq
.section .text.Asw_GET_OBC_ControllableSta,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_ControllableSta
	.type	Asw_GET_OBC_ControllableSta, @function
Asw_GET_OBC_ControllableSta:
.LFB188:
	.loc 1 304 0
	.loc 1 306 0
	movh.a	%a15, hi:u8g_OBC_ControllableSta
	ld.bu	%d2, [%a15] lo:u8g_OBC_ControllableSta
	ret
.LFE188:
	.size	Asw_GET_OBC_ControllableSta, .-Asw_GET_OBC_ControllableSta
.section .text.Asw_GET_OBC_HVILSta,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_HVILSta
	.type	Asw_GET_OBC_HVILSta, @function
Asw_GET_OBC_HVILSta:
.LFB189:
	.loc 1 316 0
	.loc 1 318 0
	movh.a	%a15, hi:u8g_OBC_HVILSta
	ld.bu	%d2, [%a15] lo:u8g_OBC_HVILSta
	ret
.LFE189:
	.size	Asw_GET_OBC_HVILSta, .-Asw_GET_OBC_HVILSta
.section .text.Asw_GET_OBC_OperatingMode,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_OperatingMode
	.type	Asw_GET_OBC_OperatingMode, @function
Asw_GET_OBC_OperatingMode:
.LFB190:
	.loc 1 328 0
	.loc 1 330 0
	movh.a	%a15, hi:u8g_OBC_OperatingMode
	ld.bu	%d2, [%a15] lo:u8g_OBC_OperatingMode
	ret
.LFE190:
	.size	Asw_GET_OBC_OperatingMode, .-Asw_GET_OBC_OperatingMode
.section .text.Asw_GET_OBC_PowerDeratingSta,"ax",@progbits
	.align 1
	.global	Asw_GET_OBC_PowerDeratingSta
	.type	Asw_GET_OBC_PowerDeratingSta, @function
Asw_GET_OBC_PowerDeratingSta:
.LFB191:
	.loc 1 340 0
	.loc 1 342 0
	movh.a	%a15, hi:u8g_OBC_PowerDeratingSta
	ld.bu	%d2, [%a15] lo:u8g_OBC_PowerDeratingSta
	ret
.LFE191:
	.size	Asw_GET_OBC_PowerDeratingSta, .-Asw_GET_OBC_PowerDeratingSta
.section .text.Asw_GET_ObcPWMEnable,"ax",@progbits
	.align 1
	.global	Asw_GET_ObcPWMEnable
	.type	Asw_GET_ObcPWMEnable, @function
Asw_GET_ObcPWMEnable:
.LFB192:
	.loc 1 352 0
	.loc 1 354 0
	movh.a	%a15, hi:u8g_ObcPWMEnable
	ld.bu	%d2, [%a15] lo:u8g_ObcPWMEnable
	ret
.LFE192:
	.size	Asw_GET_ObcPWMEnable, .-Asw_GET_ObcPWMEnable
.section .bss.u8s_ACChargingReady100msOnCnt,"aw",@nobits
	.type	u8s_ACChargingReady100msOnCnt, @object
	.size	u8s_ACChargingReady100msOnCnt, 1
u8s_ACChargingReady100msOnCnt:
	.zero	1
.section .bss.u8s_ACChargingReady100msOffCnt,"aw",@nobits
	.type	u8s_ACChargingReady100msOffCnt, @object
	.size	u8s_ACChargingReady100msOffCnt, 1
u8s_ACChargingReady100msOffCnt:
	.zero	1
.section .bss.u8g_ObcPWMEnable,"aw",@nobits
	.type	u8g_ObcPWMEnable, @object
	.size	u8g_ObcPWMEnable, 1
u8g_ObcPWMEnable:
	.zero	1
.section .bss.u8g_OBC_PowerDeratingSta,"aw",@nobits
	.type	u8g_OBC_PowerDeratingSta, @object
	.size	u8g_OBC_PowerDeratingSta, 1
u8g_OBC_PowerDeratingSta:
	.zero	1
.section .bss.u8g_OBC_OperatingMode,"aw",@nobits
	.type	u8g_OBC_OperatingMode, @object
	.size	u8g_OBC_OperatingMode, 1
u8g_OBC_OperatingMode:
	.zero	1
.section .bss.u8g_OBC_ReadySta,"aw",@nobits
	.type	u8g_OBC_ReadySta, @object
	.size	u8g_OBC_ReadySta, 1
u8g_OBC_ReadySta:
	.zero	1
.section .bss.u8g_OBC_ControllableSta,"aw",@nobits
	.type	u8g_OBC_ControllableSta, @object
	.size	u8g_OBC_ControllableSta, 1
u8g_OBC_ControllableSta:
	.zero	1
.section .bss.u8g_OBC_ACDetectSta,"aw",@nobits
	.type	u8g_OBC_ACDetectSta, @object
	.size	u8g_OBC_ACDetectSta, 1
u8g_OBC_ACDetectSta:
	.zero	1
.section .bss.u8g_OBC_HVILSta,"aw",@nobits
	.type	u8g_OBC_HVILSta, @object
	.size	u8g_OBC_HVILSta, 1
u8g_OBC_HVILSta:
	.zero	1
.section .bss.u8g_Bms_Hw_OBCEnable,"aw",@nobits
	.type	u8g_Bms_Hw_OBCEnable, @object
	.size	u8g_Bms_Hw_OBCEnable, 1
u8g_Bms_Hw_OBCEnable:
	.zero	1
.section .bss.u8s_Bms_SystemChargingReady,"aw",@nobits
	.type	u8s_Bms_SystemChargingReady, @object
	.size	u8s_Bms_SystemChargingReady, 1
u8s_Bms_SystemChargingReady:
	.zero	1
.section .bss.u8s_OBC_ChargingReady,"aw",@nobits
	.type	u8s_OBC_ChargingReady, @object
	.size	u8s_OBC_ChargingReady, 1
u8s_OBC_ChargingReady:
	.zero	1
.section .bss.u8s_PWMSta,"aw",@nobits
	.type	u8s_PWMSta, @object
	.size	u8s_PWMSta, 1
u8s_PWMSta:
	.zero	1
.section .bss.u8s_PFCSta,"aw",@nobits
	.type	u8s_PFCSta, @object
	.size	u8s_PFCSta, 1
u8s_PFCSta:
	.zero	1
.section .bss.u8s_AcRlySta,"aw",@nobits
	.type	u8s_AcRlySta, @object
	.size	u8s_AcRlySta, 1
u8s_AcRlySta:
	.zero	1
	.global	st_AswObcDiagFlag
.section .bss.st_AswObcDiagFlag,"aw",@nobits
	.align 1
	.type	st_AswObcDiagFlag, @object
	.size	st_AswObcDiagFlag, 10
st_AswObcDiagFlag:
	.zero	10
	.global	u8g_OBC_ChargeFinishReq
.section .bss.u8g_OBC_ChargeFinishReq,"aw",@nobits
	.type	u8g_OBC_ChargeFinishReq, @object
	.size	u8g_OBC_ChargeFinishReq, 1
u8g_OBC_ChargeFinishReq:
	.zero	1
	.global	u8g_Tot_ChargingReady
.section .bss.u8g_Tot_ChargingReady,"aw",@nobits
	.type	u8g_Tot_ChargingReady, @object
	.size	u8g_Tot_ChargingReady, 1
u8g_Tot_ChargingReady:
	.zero	1
	.global	u8g_Tot_ChargingReady_test
.section .bss.u8g_Tot_ChargingReady_test,"aw",@nobits
	.type	u8g_Tot_ChargingReady_test, @object
	.size	u8g_Tot_ChargingReady_test, 1
u8g_Tot_ChargingReady_test:
	.zero	1
	.global	u8s_OBC_ChargingReady_test
.section .data.u8s_OBC_ChargingReady_test,"aw",@progbits
	.type	u8s_OBC_ChargingReady_test, @object
	.size	u8s_OBC_ChargingReady_test, 1
u8s_OBC_ChargingReady_test:
	.byte	1
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
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
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
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.h"
	.file 6 "0_Src/AppSw/Tricore/BSW_Module/Services/BSW_Gpio.h"
	.file 7 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
	.file 8 "0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeMode.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1170
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/OBC/ASW_ObcChargeSeq.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x16a
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
	.uaword	0x215
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x17b
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x206
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x294
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
	.uaword	0x242
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x359
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x294
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x294
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x294
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x294
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x294
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x294
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x294
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x294
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x294
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x2a8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x41f
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x234
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x234
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x234
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x234
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x234
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x234
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x37d
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x8a
	.uaword	0x5f0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdCurr"
	.byte	0x4
	.byte	0x8d
	.uaword	0x234
	.byte	0
	.uleb128 0x7
	.string	"f32_Bms_ObcCmdVoltage"
	.byte	0x4
	.byte	0x8e
	.uaword	0x234
	.byte	0x4
	.uleb128 0x7
	.string	"u8_Bms_ACChargingReady"
	.byte	0x4
	.byte	0x8f
	.uaword	0x228
	.byte	0x8
	.uleb128 0x7
	.string	"u8_BmsObcCmdEnOBC"
	.byte	0x4
	.byte	0x90
	.uaword	0x228
	.byte	0x9
	.uleb128 0x7
	.string	"u8_Bms_HWTestMode"
	.byte	0x4
	.byte	0x91
	.uaword	0x228
	.byte	0xa
	.uleb128 0x7
	.string	"u8_BmsObcCmdRelay"
	.byte	0x4
	.byte	0x92
	.uaword	0x228
	.byte	0xb
	.uleb128 0x7
	.string	"u8_BmsObcCmdPFC_Enable"
	.byte	0x4
	.byte	0x93
	.uaword	0x228
	.byte	0xc
	.uleb128 0x7
	.string	"u8_Bms_EnableOBCWakeup"
	.byte	0x4
	.byte	0x94
	.uaword	0x228
	.byte	0xd
	.uleb128 0x7
	.string	"u8_Bms_ACPP"
	.byte	0x4
	.byte	0x96
	.uaword	0x228
	.byte	0xe
	.uleb128 0x7
	.string	"u8_Bms_ACCP"
	.byte	0x4
	.byte	0x97
	.uaword	0x228
	.byte	0xf
	.uleb128 0x7
	.string	"u8_Bms_ACPwmDuty"
	.byte	0x4
	.byte	0x98
	.uaword	0x228
	.byte	0x10
	.uleb128 0x7
	.string	"u8_Bms_ACChargeCapacity"
	.byte	0x4
	.byte	0x99
	.uaword	0x228
	.byte	0x11
	.uleb128 0x7
	.string	"u8_Bms_ChargeEnd"
	.byte	0x4
	.byte	0x9b
	.uaword	0x228
	.byte	0x12
	.uleb128 0x7
	.string	"u8_Bms_ChargeMode"
	.byte	0x4
	.byte	0x9c
	.uaword	0x228
	.byte	0x13
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x9e
	.uaword	0x294
	.byte	0x14
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x9f
	.uaword	0x294
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Obc"
	.byte	0x4
	.byte	0xa0
	.uaword	0x438
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xbb
	.uaword	0x676
	.uleb128 0x5
	.string	"OBC_InitMode"
	.sleb128 0
	.uleb128 0x5
	.string	"OBC_NoChargingMode"
	.sleb128 1
	.uleb128 0x5
	.string	"OBC_ChargingMode"
	.sleb128 2
	.uleb128 0x5
	.string	"OBC_FaultMode"
	.sleb128 3
	.uleb128 0x5
	.string	"OBC_ChargedFinishMode"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"en_OBC_ModeState"
	.byte	0x4
	.byte	0xc1
	.uaword	0x60e
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0xd4
	.uaword	0x6c0
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xd6
	.uaword	0x41f
	.byte	0
	.uleb128 0x7
	.string	"st_CANValue"
	.byte	0x4
	.byte	0xd7
	.uaword	0x5f0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Obc"
	.byte	0x4
	.byte	0xd8
	.uaword	0x68e
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x39
	.uaword	0x6f6
	.uleb128 0x5
	.string	"EN_OBC_Off"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_OBC_On"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3e
	.uaword	0x72a
	.uleb128 0x5
	.string	"EN_OBCReady_NotReady"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_OBCReady_Ready"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x43
	.uaword	0x773
	.uleb128 0x5
	.string	"EN_ACCharge_NotReady"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_ACCharge_Ready"
	.sleb128 1
	.uleb128 0x5
	.string	"EN_ACCharge_Finish"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x5d
	.uaword	0x7ab
	.uleb128 0x5
	.string	"EN_HVIL_Closed"
	.sleb128 0
	.uleb128 0x5
	.string	"EN_HVIL_Open"
	.sleb128 1
	.uleb128 0x5
	.string	"EN_HVIL_Init"
	.sleb128 2
	.byte	0
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
	.byte	0x6
	.byte	0x39
	.uaword	0x8be
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
	.byte	0x6
	.byte	0x49
	.uaword	0x7ca
	.uleb128 0x8
	.string	"ChkOBC_ReadySta"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x923
	.uleb128 0x9
	.string	"f32_AuxVolt"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x234
	.uleb128 0x9
	.string	"u8_HvilSta"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x228
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"ChkOBC_ACDetectSta"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x95d
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x234
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"ChkOBC_ControllableSta"
	.byte	0x1
	.uahalf	0x1c7
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x99b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x234
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"ChkBms_SysChargingReady"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0x9ce
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x172
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"ChkAdcChangeModeFault"
	.byte	0x1
	.uahalf	0x1f4
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0xa1b
	.uleb128 0x9
	.string	"stp_DetectedFlag"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0xa1b
	.uleb128 0xc
	.string	"rtnVal"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x228
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0xa21
	.uleb128 0xe
	.uaword	0x359
	.uleb128 0xf
	.byte	0x1
	.string	"Asw_Obc_RunInit"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB181
	.uaword	.LFE181
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa5f
	.uleb128 0x10
	.uaword	.LVL0
	.uaword	0x112b
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"ChkOBC_HVILSta"
	.byte	0x1
	.uahalf	0x1db
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uaword	0xaba
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x228
	.uleb128 0xc
	.string	"u8_AC_InterLock"
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x228
	.uleb128 0xc
	.string	"u8_OBC_InterLock"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x228
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Asw_Obc_ChargingSeqRun"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.uaword	.LFB182
	.uaword	.LFE182
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc31
	.uleb128 0x12
	.uaword	0xa5f
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x96
	.uaword	0xb40
	.uleb128 0x13
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x14
	.uaword	0xa7c
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	0xa88
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	0xaa0
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	.LVL2
	.uaword	0x1152
	.uaword	0xb2f
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0x1152
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x8d1
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x98
	.uaword	0xb6e
	.uleb128 0x16
	.uaword	0x903
	.byte	0
	.uleb128 0x17
	.uaword	0x8ef
	.uleb128 0x13
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x18
	.uaword	0x916
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x923
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0x99
	.uaword	0xb9e
	.uleb128 0x19
	.uaword	0x944
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0x14
	.uaword	0x950
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x95d
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0x9a
	.uaword	0xbce
	.uleb128 0x19
	.uaword	0x982
	.uaword	.LLST5
	.uleb128 0x13
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x14
	.uaword	0x98e
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x99b
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa7
	.uaword	0xbf1
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x14
	.uaword	0x9c1
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x9ce
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xac
	.uaword	0xc21
	.uleb128 0x1c
	.uaword	0x9f2
	.byte	0x6
	.byte	0x3
	.uaword	st_AswObcDiagFlag
	.byte	0x9f
	.uleb128 0x13
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x1d
	.uaword	0xa0b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL10
	.uaword	0x1152
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Asw_SET_ACRly_PFC_PWM_ON"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc84
	.uleb128 0x1f
	.string	"u8_ret"
	.byte	0x1
	.byte	0xbf
	.uaword	0x228
	.uaword	.LLST8
	.uleb128 0x10
	.uaword	.LVL20
	.uaword	0x112b
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Asw_SET_ACRly_PFC_PWM_OFF"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcd8
	.uleb128 0x1f
	.string	"u8_ret"
	.byte	0x1
	.byte	0xe6
	.uaword	0x228
	.uaword	.LLST9
	.uleb128 0x10
	.uaword	.LVL24
	.uaword	0x112b
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_ReadySta"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_ACDetectSta"
	.byte	0x1
	.uahalf	0x117
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_ChargeFinishReq"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_ControllableSta"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_HVILSta"
	.byte	0x1
	.uahalf	0x13b
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_OperatingMode"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_OBC_PowerDeratingSta"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB191
	.uaword	.LFE191
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Asw_GET_ObcPWMEnable"
	.byte	0x1
	.uahalf	0x15f
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB192
	.uaword	.LFE192
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.string	"u8s_AcRlySta"
	.byte	0x1
	.byte	0x56
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_AcRlySta
	.uleb128 0x21
	.string	"u8s_PFCSta"
	.byte	0x1
	.byte	0x57
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_PFCSta
	.uleb128 0x21
	.string	"u8s_PWMSta"
	.byte	0x1
	.byte	0x58
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_PWMSta
	.uleb128 0x21
	.string	"u8s_OBC_ChargingReady"
	.byte	0x1
	.byte	0x59
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_OBC_ChargingReady
	.uleb128 0x21
	.string	"u8s_Bms_SystemChargingReady"
	.byte	0x1
	.byte	0x5a
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_Bms_SystemChargingReady
	.uleb128 0x21
	.string	"u8g_Bms_Hw_OBCEnable"
	.byte	0x1
	.byte	0x5b
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_Bms_Hw_OBCEnable
	.uleb128 0x21
	.string	"u8g_OBC_HVILSta"
	.byte	0x1
	.byte	0x5d
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_HVILSta
	.uleb128 0x21
	.string	"u8g_OBC_ACDetectSta"
	.byte	0x1
	.byte	0x5e
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_ACDetectSta
	.uleb128 0x21
	.string	"u8g_OBC_ControllableSta"
	.byte	0x1
	.byte	0x5f
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_ControllableSta
	.uleb128 0x21
	.string	"u8g_OBC_ReadySta"
	.byte	0x1
	.byte	0x60
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_ReadySta
	.uleb128 0x21
	.string	"u8g_OBC_OperatingMode"
	.byte	0x1
	.byte	0x61
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_OperatingMode
	.uleb128 0x21
	.string	"u8g_OBC_PowerDeratingSta"
	.byte	0x1
	.byte	0x62
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_PowerDeratingSta
	.uleb128 0x21
	.string	"u8g_ObcPWMEnable"
	.byte	0x1
	.byte	0x63
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8g_ObcPWMEnable
	.uleb128 0x21
	.string	"u8s_ACChargingReady100msOffCnt"
	.byte	0x1
	.byte	0x64
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_ACChargingReady100msOffCnt
	.uleb128 0x21
	.string	"u8s_ACChargingReady100msOnCnt"
	.byte	0x1
	.byte	0x65
	.uaword	0x228
	.byte	0x5
	.byte	0x3
	.uaword	u8s_ACChargingReady100msOnCnt
	.uleb128 0x22
	.string	"st_rteObcIn"
	.byte	0x7
	.byte	0x3c
	.uaword	0x6c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"u8g_OBC_ChargeFinishReq"
	.byte	0x1
	.byte	0x4e
	.uaword	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_OBC_ChargeFinishReq
	.uleb128 0x23
	.string	"u8g_Tot_ChargingReady"
	.byte	0x1
	.byte	0x4d
	.uaword	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_Tot_ChargingReady
	.uleb128 0x23
	.string	"st_AswObcDiagFlag"
	.byte	0x1
	.byte	0x4f
	.uaword	0x359
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	st_AswObcDiagFlag
	.uleb128 0x22
	.string	"u8g_OBC_OperateState"
	.byte	0x8
	.byte	0x3a
	.uaword	0x676
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"u8s_OBC_ChargingReady_test"
	.byte	0x1
	.byte	0x49
	.uaword	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8s_OBC_ChargingReady_test
	.uleb128 0x23
	.string	"u8g_Tot_ChargingReady_test"
	.byte	0x1
	.byte	0x4a
	.uaword	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	u8g_Tot_ChargingReady_test
	.uleb128 0x24
	.byte	0x1
	.string	"Bsw_Set_GpioWrite"
	.byte	0x6
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uaword	0x1152
	.uleb128 0x25
	.uaword	0x8be
	.uleb128 0x25
	.uaword	0x228
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Bsw_Get_GpioRead"
	.byte	0x6
	.byte	0x64
	.byte	0x1
	.uaword	0x228
	.byte	0x1
	.uleb128 0x25
	.uaword	0x8be
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE182
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LFE183
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LFE184
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
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
	.uaword	.LFB192
	.uaword	.LFE192
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"f32_ACVIn"
.LASF1:
	.string	"u8_rslt"
	.extern	u8g_OBC_OperateState,STT_OBJECT,1
	.extern	st_rteObcIn,STT_OBJECT,48
	.extern	Bsw_Get_GpioRead,STT_FUNC,0
	.extern	Bsw_Set_GpioWrite,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
