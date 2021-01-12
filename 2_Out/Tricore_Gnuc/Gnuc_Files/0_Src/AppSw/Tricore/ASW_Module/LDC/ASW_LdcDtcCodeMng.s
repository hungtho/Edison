	.file	"ASW_LdcDtcCodeMng.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Asw_Ctrl_Init,"ax",@progbits
	.align 1
	.global	Asw_Ctrl_Init
	.type	Asw_Ctrl_Init, @function
Asw_Ctrl_Init:
.LFB0:
	.file 1 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
	.loc 1 104 0
.LVL0:
	movh	%d3, hi:u8s_DTC_Sts
	.loc 1 104 0
	mov	%d15, 0
	addi	%d3, %d3, lo:u8s_DTC_Sts
	.loc 1 109 0
	mov	%d2, 0
	mov.a	%a15, 9
.LVL1:
.L2:
	.loc 1 109 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	add	%d15, 1
.LVL2:
	st.b	[%a2]0, %d2
.LVL3:
	.loc 1 107 0 is_stmt 1 discriminator 3
	loop	%a15, .L2
	.loc 1 111 0
	ret
.LFE0:
	.size	Asw_Ctrl_Init, .-Asw_Ctrl_Init
.section .text.Asw_Read_DTC_Sts,"ax",@progbits
	.align 1
	.global	Asw_Read_DTC_Sts
	.type	Asw_Read_DTC_Sts, @function
Asw_Read_DTC_Sts:
.LFB1:
	.loc 1 121 0
.LVL4:
	.loc 1 124 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 127 0
	ld.bu	%d2, [%a15]0
	ret
.LFE1:
	.size	Asw_Read_DTC_Sts, .-Asw_Read_DTC_Sts
.section .text.Asw_Write_DTC_Sts,"ax",@progbits
	.align 1
	.global	Asw_Write_DTC_Sts
	.type	Asw_Write_DTC_Sts, @function
Asw_Write_DTC_Sts:
.LFB2:
	.loc 1 137 0
.LVL5:
	.loc 1 138 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d5
	ret
.LFE2:
	.size	Asw_Write_DTC_Sts, .-Asw_Write_DTC_Sts
.section .text.Asw_Set_DTC_Sts,"ax",@progbits
	.align 1
	.global	Asw_Set_DTC_Sts
	.type	Asw_Set_DTC_Sts, @function
Asw_Set_DTC_Sts:
.LFB3:
	.loc 1 149 0
.LVL6:
	.loc 1 150 0
	movh.a	%a15, hi:u8g_UDS_DTC_CtrlSts
	ld.bu	%d15, [%a15] lo:u8g_UDS_DTC_CtrlSts
	jnz	%d15, .L7
	.loc 1 152 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	or	%d5, %d15
.LVL7:
	st.b	[%a15]0, %d5
.L7:
	ret
.LFE3:
	.size	Asw_Set_DTC_Sts, .-Asw_Set_DTC_Sts
.section .text.Asw_Clr_DTC_Sts,"ax",@progbits
	.align 1
	.global	Asw_Clr_DTC_Sts
	.type	Asw_Clr_DTC_Sts, @function
Asw_Clr_DTC_Sts:
.LFB4:
	.loc 1 164 0
.LVL8:
	.loc 1 165 0
	movh.a	%a15, hi:u8g_UDS_DTC_CtrlSts
	ld.bu	%d15, [%a15] lo:u8g_UDS_DTC_CtrlSts
	jnz	%d15, .L9
	.loc 1 167 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	andn	%d5, %d15, %d5
.LVL9:
	st.b	[%a15]0, %d5
.L9:
	ret
.LFE4:
	.size	Asw_Clr_DTC_Sts, .-Asw_Clr_DTC_Sts
.section .text.Asw_Clr_All_DTC_Sts,"ax",@progbits
	.align 1
	.global	Asw_Clr_All_DTC_Sts
	.type	Asw_Clr_All_DTC_Sts, @function
Asw_Clr_All_DTC_Sts:
.LFB5:
	.loc 1 179 0
.LVL10:
	movh	%d3, hi:u8s_DTC_Sts
	.loc 1 179 0
	mov	%d15, 0
	addi	%d3, %d3, lo:u8s_DTC_Sts
	.loc 1 184 0
	mov	%d2, 0
	mov.a	%a15, 9
.LVL11:
.L12:
	.loc 1 184 0 is_stmt 0 discriminator 3
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d15, 0
	add	%d15, 1
.LVL12:
	st.b	[%a2]0, %d2
.LVL13:
	.loc 1 182 0 is_stmt 1 discriminator 3
	loop	%a15, .L12
	.loc 1 186 0
	ret
.LFE5:
	.size	Asw_Clr_All_DTC_Sts, .-Asw_Clr_All_DTC_Sts
.section .text.Asw_Ldc_DtcStsUpdate,"ax",@progbits
	.align 1
	.global	Asw_Ldc_DtcStsUpdate
	.type	Asw_Ldc_DtcStsUpdate, @function
Asw_Ldc_DtcStsUpdate:
.LFB6:
	.loc 1 196 0
.LVL14:
	movh.a	%a2, hi:st_AswLdcDiagFlag
	lea	%a2, [%a2] lo:st_AswLdcDiagFlag
.LBB142:
.LBB143:
	.loc 1 226 0
	ld.bu	%d15, [%a2] 4
.LBB144:
.LBB145:
	.loc 1 150 0
	movh.a	%a4, hi:u8g_UDS_DTC_CtrlSts
.LBE145:
.LBE144:
	.loc 1 226 0
	jeq	%d15, 2, .L113
.LVL15:
.LBB147:
.LBB148:
	.loc 1 165 0
	ld.bu	%d15, [%a4] lo:u8g_UDS_DTC_CtrlSts
	movh.a	%a3, hi:st_rteLdcIn
	lea	%a3, [%a3] lo:st_rteLdcIn
	jnz	%d15, .L25
	.loc 1 167 0
	movh.a	%a15, hi:u8s_DTC_Sts
	ld.bu	%d15, [%a15] lo:u8s_DTC_Sts
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] lo:u8s_DTC_Sts, %d15
.LVL16:
.LBE148:
.LBE147:
.LBE143:
.LBE142:
.LBB151:
.LBB152:
	.loc 1 245 0
	ld.bu	%d15, [%a2] 3
	jeq	%d15, 2, .L114
.LVL17:
.L101:
.LBB153:
.LBB154:
	.loc 1 167 0
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	ld.bu	%d15, [%a15] 1
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 1, %d15
.LVL18:
.L18:
	movh.a	%a3, hi:st_rteLdcIn
.LBE154:
.LBE153:
.LBE152:
.LBE151:
.LBB158:
.LBB159:
	.loc 1 264 0
	ld.w	%d2, [%a3] lo:st_rteLdcIn
	movh	%d15, 50047
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L115
.LVL19:
.LBB160:
.LBB161:
	.loc 1 152 0
	ld.bu	%d15, [%a15] 2
	lea	%a3, [%a3] lo:st_rteLdcIn
	or	%d15, %d15, 9
.LBE161:
.LBE160:
.LBE159:
.LBE158:
.LBB171:
.LBB172:
	.loc 1 283 0
	ld.w	%d2, [%a3] 8
.LBE172:
.LBE171:
.LBB186:
.LBB168:
.LBB163:
.LBB162:
	.loc 1 152 0
	st.b	[%a15] 2, %d15
.LVL20:
.LBE162:
.LBE163:
.LBE168:
.LBE186:
.LBB187:
.LBB181:
	.loc 1 283 0
	movh	%d15, 50047
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L116
.LVL21:
.L60:
.LBB173:
.LBB174:
	.loc 1 152 0
	ld.bu	%d15, [%a15] 3
.LBE174:
.LBE173:
.LBE181:
.LBE187:
.LBB188:
.LBB189:
	.loc 1 302 0
	ld.w	%d2, [%a3] 16
.LBE189:
.LBE188:
.LBB197:
.LBB182:
.LBB176:
.LBB175:
	.loc 1 152 0
	or	%d15, %d15, 9
	st.b	[%a15] 3, %d15
.LVL22:
.LBE175:
.LBE176:
.LBE182:
.LBE197:
.LBB198:
.LBB194:
	.loc 1 302 0
	movh	%d15, 50047
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L117
.LVL23:
.L62:
.LBB190:
.LBB191:
	.loc 1 152 0
	ld.bu	%d15, [%a15] 4
	or	%d15, %d15, 9
	st.b	[%a15] 4, %d15
	mov	%d15, 0
.LVL24:
.L25:
	ld.w	%d2, [%a3] 12
.LVL25:
.LBE191:
.LBE190:
.LBE194:
.LBE198:
.LBB199:
.LBB200:
	.loc 1 324 0
	ld.w	%d3, [%a3] 20
	.loc 1 326 0
	movh	%d4, 16640
	.loc 1 324 0
	sub.f	%d3, %d3, %d2
.LVL26:
	.loc 1 326 0
	cmp.f	%d4, %d3, %d4
	jnz.t	%d4, 2, .L27
	movh	%d4, 49408
	cmp.f	%d3, %d3, %d4
.LVL27:
	jz.t	%d3, 0, .L99
.L27:
	.loc 1 329 0
	movh.a	%a15, hi:u16s_dtc_1107_cnt.1572
	ld.hu	%d3, [%a15] lo:u16s_dtc_1107_cnt.1572
	mov	%d4, 1000
	jlt.u	%d3, %d4, .L118
.LVL28:
.LBB201:
.LBB202:
	.loc 1 150 0
	jnz	%d15, .L32
	.loc 1 152 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	ld.bu	%d3, [%a15] 5
	or	%d3, %d3, 9
	st.b	[%a15] 5, %d3
.LVL29:
.LBE202:
.LBE201:
.LBE200:
.LBE199:
.LBB207:
.LBB208:
	.loc 1 352 0
	ld.bu	%d3, [%a2] 1
	jne	%d3, 2, .L34
	j	.L33
.LVL30:
.L118:
.LBE208:
.LBE207:
.LBB219:
.LBB205:
	.loc 1 330 0
	add	%d3, 1
	st.h	[%a15] lo:u16s_dtc_1107_cnt.1572, %d3
.LVL31:
.LBE205:
.LBE219:
.LBB220:
.LBB215:
	.loc 1 352 0
	ld.bu	%d3, [%a2] 1
	jeq	%d3, 2, .L119
.L36:
.LVL32:
.LBB209:
.LBB210:
	.loc 1 165 0
	jnz	%d15, .L37
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
.LVL33:
.L34:
	.loc 1 167 0
	ld.bu	%d3, [%a15] 6
	andn	%d3, %d3, ~(-2)
	st.b	[%a15] 6, %d3
.LVL34:
.L38:
.LBE210:
.LBE209:
.LBE215:
.LBE220:
	.loc 1 207 0
	ld.w	%d3, [%a3] 28
.LVL35:
	movh.a	%a3, hi:u8g_SoftStartEnd
.LVL36:
.LBB221:
.LBB222:
	.loc 1 374 0
	ld.bu	%d4, [%a3] lo:u8g_SoftStartEnd
	jeq	%d4, 1, .L64
.LVL37:
.L66:
.LBB223:
.LBB224:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 7
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 7, %d15
.LVL38:
.L43:
.LBE224:
.LBE223:
.LBE222:
.LBE221:
.LBB235:
.LBB236:
	.loc 1 394 0
	ld.bu	%d15, [%a2] 8
	jeq	%d15, 4, .L67
.L106:
.LVL39:
.LBB237:
.LBB238:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 8
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 8, %d15
.LVL40:
.L46:
.LBE238:
.LBE237:
.LBE236:
.LBE235:
.LBB248:
.LBB249:
	.loc 1 413 0
	ld.bu	%d15, [%a2] 7
	jeq	%d15, 4, .L48
.LVL41:
.LBB250:
.LBB251:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 9
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 9, %d15
	ret
.LVL42:
.L99:
.LBE251:
.LBE250:
.LBE249:
.LBE248:
.LBB261:
.LBB206:
.LBB203:
.LBB204:
	.loc 1 165 0
	jnz	%d15, .L35
	.loc 1 167 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	ld.bu	%d3, [%a15] 5
	andn	%d3, %d3, ~(-2)
	st.b	[%a15] 5, %d3
.L35:
.LBE204:
.LBE203:
	.loc 1 339 0
	mov	%d3, 0
	movh.a	%a15, hi:u16s_dtc_1107_cnt.1572
	st.h	[%a15] lo:u16s_dtc_1107_cnt.1572, %d3
.LVL43:
.LBE206:
.LBE261:
.LBB262:
.LBB216:
	.loc 1 352 0
	ld.bu	%d3, [%a2] 1
	jne	%d3, 2, .L36
.LVL44:
.L119:
.LBB211:
.LBB212:
	.loc 1 150 0
	jz	%d15, .L120
.LVL45:
.L37:
.LBE212:
.LBE211:
.LBE216:
.LBE262:
	.loc 1 207 0
	movh.a	%a15, hi:u8g_SoftStartEnd
.LBB263:
.LBB229:
	.loc 1 374 0
	ld.bu	%d3, [%a15] lo:u8g_SoftStartEnd
.LBE229:
.LBE263:
	.loc 1 207 0
	ld.w	%d4, [%a3] 28
.LVL46:
.LBB264:
.LBB230:
	.loc 1 374 0
	jeq	%d3, 1, .L121
.LVL47:
.LBE230:
.LBE264:
.LBB265:
.LBB245:
	.loc 1 394 0
	ld.bu	%d2, [%a2] 8
.LVL48:
	jeq	%d2, 4, .L122
.LVL49:
.LBB240:
.LBB239:
	.loc 1 165 0
	jnz	%d15, .L45
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	j	.L106
.LVL50:
.L122:
.LBE239:
.LBE240:
.LBB241:
.LBB242:
	.loc 1 150 0
	jz	%d15, .L123
.LVL51:
.L45:
.LBE242:
.LBE241:
.LBE245:
.LBE265:
.LBB266:
.LBB258:
	.loc 1 413 0
	ld.bu	%d15, [%a2] 7
	jeq	%d15, 4, .L14
	ld.bu	%d15, [%a4] lo:u8g_UDS_DTC_CtrlSts
.L47:
.LVL52:
.LBB253:
.LBB252:
	.loc 1 165 0
	jnz	%d15, .L14
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	.loc 1 167 0
	ld.bu	%d15, [%a15] 9
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 9, %d15
	ret
.LVL53:
.L32:
.LBE252:
.LBE253:
.LBE258:
.LBE266:
.LBB267:
.LBB217:
	.loc 1 352 0
	ld.bu	%d3, [%a2] 1
	jne	%d3, 2, .L37
.LBE217:
.LBE267:
	.loc 1 207 0
	movh.a	%a15, hi:u8g_SoftStartEnd
.LBB268:
.LBB231:
	.loc 1 374 0
	ld.bu	%d4, [%a15] lo:u8g_SoftStartEnd
.LBE231:
.LBE268:
	.loc 1 207 0
	ld.w	%d3, [%a3] 28
.LVL54:
.LBB269:
.LBB232:
	.loc 1 374 0
	jeq	%d4, 1, .L64
.LVL55:
.L42:
.LBE232:
.LBE269:
.LBB270:
.LBB246:
	.loc 1 394 0
	ld.bu	%d2, [%a2] 8
	jne	%d2, 4, .L45
.LVL56:
.LBE246:
.LBE270:
.LBB271:
.LBB259:
	.loc 1 413 0
	ld.bu	%d2, [%a2] 7
	jne	%d2, 4, .L47
.LVL57:
.LBB254:
.LBB255:
	.loc 1 150 0
	jz	%d15, .L124
.LVL58:
.L14:
	ret
.LVL59:
.L115:
.LBE255:
.LBE254:
.LBE259:
.LBE271:
.LBB272:
.LBB169:
.LBB164:
.LBB165:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 2
	lea	%a3, [%a3] lo:st_rteLdcIn
	andn	%d15, %d15, ~(-2)
.LBE165:
.LBE164:
.LBE169:
.LBE272:
.LBB273:
.LBB183:
	.loc 1 283 0
	ld.w	%d2, [%a3] 8
.LBE183:
.LBE273:
.LBB274:
.LBB170:
.LBB167:
.LBB166:
	.loc 1 167 0
	st.b	[%a15] 2, %d15
.LVL60:
.LBE166:
.LBE167:
.LBE170:
.LBE274:
.LBB275:
.LBB184:
	.loc 1 283 0
	movh	%d15, 50047
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L60
.LVL61:
.L116:
.LBB177:
.LBB178:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 3
.LBE178:
.LBE177:
.LBE184:
.LBE275:
.LBB276:
.LBB195:
	.loc 1 302 0
	ld.w	%d2, [%a3] 16
.LBE195:
.LBE276:
.LBB277:
.LBB185:
.LBB180:
.LBB179:
	.loc 1 167 0
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 3, %d15
.LVL62:
.LBE179:
.LBE180:
.LBE185:
.LBE277:
.LBB278:
.LBB196:
	.loc 1 302 0
	movh	%d15, 50047
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L62
.LVL63:
.L117:
.LBB192:
.LBB193:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 4
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] 4, %d15
	mov	%d15, 0
	j	.L25
.LVL64:
.L64:
.LBE193:
.LBE192:
.LBE196:
.LBE278:
.LBB279:
.LBB233:
	.loc 1 372 0
	sub.f	%d2, %d3, %d2
.LVL65:
.L54:
	.loc 1 375 0
	movh	%d3, 16256
	cmp.f	%d3, %d2, %d3
	jz.t	%d3, 2, .L125
.L39:
.LVL66:
.LBB226:
.LBB227:
	.loc 1 150 0
	jnz	%d15, .L42
	.loc 1 152 0
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	ld.bu	%d15, [%a15] 7
	or	%d15, %d15, 9
	st.b	[%a15] 7, %d15
	j	.L43
.LVL67:
.L113:
.LBE227:
.LBE226:
.LBE233:
.LBE279:
.LBB280:
.LBB150:
.LBB149:
.LBB146:
	.loc 1 150 0
	ld.bu	%d15, [%a4] lo:u8g_UDS_DTC_CtrlSts
	movh.a	%a3, hi:st_rteLdcIn
	lea	%a3, [%a3] lo:st_rteLdcIn
	jnz	%d15, .L25
	.loc 1 152 0
	movh.a	%a15, hi:u8s_DTC_Sts
	ld.bu	%d15, [%a15] lo:u8s_DTC_Sts
	or	%d15, %d15, 9
	st.b	[%a15] lo:u8s_DTC_Sts, %d15
.LVL68:
.LBE146:
.LBE149:
.LBE150:
.LBE280:
.LBB281:
.LBB157:
	.loc 1 245 0
	ld.bu	%d15, [%a2] 3
	jne	%d15, 2, .L101
.LVL69:
.L114:
.LBB155:
.LBB156:
	.loc 1 152 0
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	ld.bu	%d15, [%a15] 1
	or	%d15, %d15, 9
	st.b	[%a15] 1, %d15
	j	.L18
.LVL70:
.L120:
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
.LVL71:
.L33:
.LBE156:
.LBE155:
.LBE157:
.LBE281:
.LBB282:
.LBB218:
.LBB214:
.LBB213:
	ld.bu	%d3, [%a15] 6
	or	%d3, %d3, 9
	st.b	[%a15] 6, %d3
	j	.L38
.LVL72:
.L124:
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
.LVL73:
.L48:
.LBE213:
.LBE214:
.LBE218:
.LBE282:
.LBB283:
.LBB260:
.LBB257:
.LBB256:
	ld.bu	%d15, [%a15] 9
	or	%d15, %d15, 9
	st.b	[%a15] 9, %d15
	ret
.LVL74:
.L123:
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
.LVL75:
.L67:
.LBE256:
.LBE257:
.LBE260:
.LBE283:
.LBB284:
.LBB247:
.LBB244:
.LBB243:
	ld.bu	%d15, [%a15] 8
	or	%d15, %d15, 9
	st.b	[%a15] 8, %d15
	j	.L46
.LVL76:
.L125:
.LBE243:
.LBE244:
.LBE247:
.LBE284:
.LBB285:
.LBB234:
	.loc 1 375 0
	movh	%d3, 49024
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L39
.LVL77:
.LBB228:
.LBB225:
	.loc 1 165 0
	jnz	%d15, .L42
	movh.a	%a15, hi:u8s_DTC_Sts
	lea	%a15, [%a15] lo:u8s_DTC_Sts
	j	.L66
.LVL78:
.L121:
.LBE225:
.LBE228:
	.loc 1 372 0
	sub.f	%d2, %d4, %d2
.LVL79:
	j	.L54
.LBE234:
.LBE285:
.LFE6:
	.size	Asw_Ldc_DtcStsUpdate, .-Asw_Ldc_DtcStsUpdate
.section .bss.u16s_dtc_1107_cnt.1572,"aw",@nobits
	.align 1
	.type	u16s_dtc_1107_cnt.1572, @object
	.size	u16s_dtc_1107_cnt.1572, 2
u16s_dtc_1107_cnt.1572:
	.zero	2
.section .bss.u8s_DTC_Sts,"aw",@nobits
	.type	u8s_DTC_Sts, @object
	.size	u8s_DTC_Sts, 10
u8s_DTC_Sts:
	.zero	10
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
	.file 4 "0_Src/AppSw/Tricore/RTE_Module/Rte_Typedef.h"
	.file 5 "0_Src/AppSw/Tricore/RTE_Module/Rte_ApiIn.h"
	.file 6 "0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcState.h"
	.file 7 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_UdsFunc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdb0
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/ASW_Module/LDC/ASW_LdcDtcCodeMng.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x2a0
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x69
	.uaword	0x174
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x6d
	.uaword	0x1a0
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
	.uaword	0x16b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"byte"
	.byte	0x3
	.byte	0x56
	.uaword	0x185
	.uleb128 0x3
	.string	"word"
	.byte	0x3
	.byte	0x59
	.uaword	0x192
	.uleb128 0x3
	.string	"single"
	.byte	0x3
	.byte	0x5e
	.uaword	0x21e
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4e
	.uaword	0x2af
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
	.uaword	0x25d
	.uleb128 0x6
	.byte	0xa
	.byte	0x4
	.byte	0x5e
	.uaword	0x374
	.uleb128 0x7
	.string	"u8_14VBat"
	.byte	0x4
	.byte	0x60
	.uaword	0x2af
	.byte	0
	.uleb128 0x7
	.string	"u8_Temp"
	.byte	0x4
	.byte	0x61
	.uaword	0x2af
	.byte	0x1
	.uleb128 0x7
	.string	"u8_HV_V"
	.byte	0x4
	.byte	0x62
	.uaword	0x2af
	.byte	0x2
	.uleb128 0x7
	.string	"u8_HV_I"
	.byte	0x4
	.byte	0x63
	.uaword	0x2af
	.byte	0x3
	.uleb128 0x7
	.string	"u8_LV_V"
	.byte	0x4
	.byte	0x64
	.uaword	0x2af
	.byte	0x4
	.uleb128 0x7
	.string	"u8_LV_I"
	.byte	0x4
	.byte	0x65
	.uaword	0x2af
	.byte	0x5
	.uleb128 0x7
	.string	"u8_LV_I_over"
	.byte	0x4
	.byte	0x66
	.uaword	0x2af
	.byte	0x6
	.uleb128 0x7
	.string	"u8_CanTimeoutSts"
	.byte	0x4
	.byte	0x68
	.uaword	0x2af
	.byte	0x7
	.uleb128 0x7
	.string	"u8_CanBusOffSts"
	.byte	0x4
	.byte	0x69
	.uaword	0x2af
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"st_DiagnosisType"
	.byte	0x4
	.byte	0x6a
	.uaword	0x2c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.byte	0x75
	.uaword	0x43a
	.uleb128 0x7
	.string	"f32_InputCurrent"
	.byte	0x4
	.byte	0x77
	.uaword	0x24f
	.byte	0
	.uleb128 0x7
	.string	"f32_InputVoltage"
	.byte	0x4
	.byte	0x78
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x7
	.string	"f32_OutputCurrent"
	.byte	0x4
	.byte	0x79
	.uaword	0x24f
	.byte	0x8
	.uleb128 0x7
	.string	"f32_OutputVoltage"
	.byte	0x4
	.byte	0x7a
	.uaword	0x24f
	.byte	0xc
	.uleb128 0x7
	.string	"f32_Temperature"
	.byte	0x4
	.byte	0x7b
	.uaword	0x24f
	.byte	0x10
	.uleb128 0x7
	.string	"f32_BatteryVoltage"
	.byte	0x4
	.byte	0x7c
	.uaword	0x24f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"st_RealValuesType"
	.byte	0x4
	.byte	0x7d
	.uaword	0x398
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x7f
	.uaword	0x4d0
	.uleb128 0x7
	.string	"u8_VcuCmdLdc_Enable"
	.byte	0x4
	.byte	0x82
	.uaword	0x237
	.byte	0
	.uleb128 0x7
	.string	"f32_VcuCmdLdc_TargetVolt"
	.byte	0x4
	.byte	0x83
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x7
	.string	"u8_canBusoffStatus"
	.byte	0x4
	.byte	0x85
	.uaword	0x2af
	.byte	0x8
	.uleb128 0x7
	.string	"u8_canTimeoutStatus"
	.byte	0x4
	.byte	0x86
	.uaword	0x2af
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"st_CANRxValuesType_Ldc"
	.byte	0x4
	.byte	0x88
	.uaword	0x453
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.byte	0xad
	.uaword	0x520
	.uleb128 0x7
	.string	"st_RealValue"
	.byte	0x4
	.byte	0xaf
	.uaword	0x43a
	.byte	0
	.uleb128 0x7
	.string	"st_CANValue"
	.byte	0x4
	.byte	0xb0
	.uaword	0x4d0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"st_RteIn_Ldc"
	.byte	0x4
	.byte	0xb1
	.uaword	0x4ee
	.uleb128 0x8
	.byte	0x1
	.string	"Asw_Set_DTC_Sts"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.uaword	0x565
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x94
	.uaword	0x237
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x94
	.uaword	0x237
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Asw_Clr_DTC_Sts"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.byte	0x1
	.uaword	0x596
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa3
	.uaword	0x237
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa3
	.uaword	0x237
	.byte	0
	.uleb128 0xa
	.string	"Set_DTC_P1102"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.byte	0x1
	.uaword	0x5b9
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0xe0
	.uaword	0x5b9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5bf
	.uleb128 0xc
	.uaword	0x374
	.uleb128 0xa
	.string	"Set_DTC_P1103"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.byte	0x1
	.uaword	0x5e7
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf3
	.uaword	0x5b9
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_P1104"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.byte	0x1
	.uaword	0x60c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x106
	.uaword	0x60c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x612
	.uleb128 0xc
	.uaword	0x43a
	.uleb128 0xd
	.string	"Set_DTC_P1105"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.byte	0x1
	.uaword	0x63c
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x119
	.uaword	0x60c
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_P1106"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.byte	0x1
	.uaword	0x661
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x60c
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_P1107"
	.byte	0x1
	.uahalf	0x13f
	.byte	0x1
	.byte	0x1
	.uaword	0x6ac
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x60c
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x141
	.uaword	0x24f
	.uleb128 0x10
	.string	"u16s_dtc_1107_cnt"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x243
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_P1108"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.byte	0x1
	.uaword	0x6d1
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x5b9
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_P1109"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.byte	0x1
	.uaword	0x72e
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x171
	.uaword	0x60c
	.uleb128 0x11
	.string	"f32_RefVout"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x24f
	.uleb128 0x11
	.string	"u8_SoftStartEnd"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x237
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x173
	.uaword	0x24f
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_U1101"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.byte	0x1
	.uaword	0x753
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x188
	.uaword	0x5b9
	.byte	0
	.uleb128 0xd
	.string	"Set_DTC_U1102"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.byte	0x1
	.uaword	0x778
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x5b9
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_Ctrl_Init"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7ad
	.uleb128 0x13
	.string	"u8_Cnt"
	.byte	0x1
	.byte	0x69
	.uaword	0x237
	.uaword	.LLST0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Asw_Read_DTC_Sts"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	0x237
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x807
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x78
	.uaword	0x237
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"u8_Read_DTC_Sts"
	.byte	0x1
	.byte	0x7a
	.uaword	0x237
	.byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	u8s_DTC_Sts
	.byte	0x22
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_Write_DTC_Sts"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x84c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x88
	.uaword	0x237
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"u8_Data"
	.byte	0x1
	.byte	0x88
	.uaword	0x237
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x18
	.uaword	0x534
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x871
	.uleb128 0x19
	.uaword	0x54e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST1
	.byte	0
	.uleb128 0x18
	.uaword	0x565
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x896
	.uleb128 0x19
	.uaword	0x57f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_Clr_All_DTC_Sts"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8d1
	.uleb128 0x13
	.string	"u8_Cnt"
	.byte	0x1
	.byte	0xb4
	.uaword	0x237
	.uaword	.LLST3
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Asw_Ldc_DtcStsUpdate"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd23
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc5
	.uaword	0x5b9
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc6
	.uaword	0x60c
	.uleb128 0x1c
	.uaword	0x596
	.uaword	.LBB142
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc8
	.uaword	0x971
	.uleb128 0x1d
	.uaword	0x5ad
	.uleb128 0x1c
	.uaword	0x534
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xe4
	.uaword	0x94e
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST4
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST5
	.byte	0
	.uleb128 0x1e
	.uaword	0x565
	.uaword	.LBB147
	.uaword	.LBE147
	.byte	0x1
	.byte	0xe8
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x5c4
	.uaword	.LBB151
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xc9
	.uaword	0x9d2
	.uleb128 0x1d
	.uaword	0x5db
	.uleb128 0x1f
	.uaword	0x565
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.byte	0xfb
	.uaword	0x9af
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST8
	.byte	0
	.uleb128 0x1e
	.uaword	0x534
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x1
	.byte	0xf7
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x5e7
	.uaword	.LBB158
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xca
	.uaword	0xa35
	.uleb128 0x1d
	.uaword	0x5ff
	.uleb128 0x20
	.uaword	0x534
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xa11
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST13
	.byte	0
	.uleb128 0x21
	.uaword	0x565
	.uaword	.LBB164
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x10e
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x617
	.uaword	.LBB171
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xcb
	.uaword	0xa98
	.uleb128 0x1d
	.uaword	0x62f
	.uleb128 0x20
	.uaword	0x534
	.uaword	.LBB173
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x11d
	.uaword	0xa74
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST16
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST17
	.byte	0
	.uleb128 0x21
	.uaword	0x565
	.uaword	.LBB177
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x121
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x63c
	.uaword	.LBB188
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xcc
	.uaword	0xafb
	.uleb128 0x1d
	.uaword	0x654
	.uleb128 0x22
	.uaword	0x534
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.uahalf	0x130
	.uaword	0xad7
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST20
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST21
	.byte	0
	.uleb128 0x23
	.uaword	0x565
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.uahalf	0x134
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST22
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x661
	.uaword	.LBB199
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0xcd
	.uaword	0xb7d
	.uleb128 0x1d
	.uaword	0x679
	.uleb128 0x1d
	.uaword	0x679
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x25
	.uaword	0x685
	.uaword	.LLST24
	.uleb128 0x26
	.uaword	0x691
	.byte	0x5
	.byte	0x3
	.uaword	u16s_dtc_1107_cnt.1572
	.uleb128 0x22
	.uaword	0x534
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.uahalf	0x14d
	.uaword	0xb58
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST25
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST26
	.byte	0
	.uleb128 0x23
	.uaword	0x565
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.uahalf	0x152
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST27
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x6ac
	.uaword	.LBB207
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0xce
	.uaword	0xbe0
	.uleb128 0x1d
	.uaword	0x6c4
	.uleb128 0x22
	.uaword	0x565
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.uahalf	0x166
	.uaword	0xbbc
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST29
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST30
	.byte	0
	.uleb128 0x21
	.uaword	0x534
	.uaword	.LBB211
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x162
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST31
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x6d1
	.uaword	.LBB221
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0xcf
	.uaword	0xc60
	.uleb128 0x1d
	.uaword	0x6e9
	.uleb128 0x1d
	.uaword	0x709
	.uleb128 0x1a
	.uaword	0x6f5
	.uaword	.LLST33
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x198
	.uleb128 0x25
	.uaword	0x721
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	0x565
	.uaword	.LBB223
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xc3b
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST35
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST36
	.byte	0
	.uleb128 0x23
	.uaword	0x534
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x1
	.uahalf	0x179
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST37
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x72e
	.uaword	.LBB235
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0xd0
	.uaword	0xcc3
	.uleb128 0x1d
	.uaword	0x746
	.uleb128 0x20
	.uaword	0x565
	.uaword	.LBB237
	.uaword	.Ldebug_ranges0+0x218
	.byte	0x1
	.uahalf	0x190
	.uaword	0xc9f
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST39
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST40
	.byte	0
	.uleb128 0x21
	.uaword	0x534
	.uaword	.LBB241
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x18c
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST41
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x753
	.uaword	.LBB248
	.uaword	.Ldebug_ranges0+0x248
	.byte	0x1
	.byte	0xd1
	.uleb128 0x1d
	.uaword	0x76b
	.uleb128 0x20
	.uaword	0x565
	.uaword	.LBB250
	.uaword	.Ldebug_ranges0+0x270
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0xcfe
	.uleb128 0x1a
	.uaword	0x58a
	.uaword	.LLST43
	.uleb128 0x1a
	.uaword	0x57f
	.uaword	.LLST44
	.byte	0
	.uleb128 0x21
	.uaword	0x534
	.uaword	.LBB254
	.uaword	.Ldebug_ranges0+0x288
	.byte	0x1
	.uahalf	0x19f
	.uleb128 0x1a
	.uaword	0x559
	.uaword	.LLST45
	.uleb128 0x1a
	.uaword	0x54e
	.uaword	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x237
	.uaword	0xd33
	.uleb128 0x29
	.uaword	0x38c
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.string	"u8s_DTC_Sts"
	.byte	0x1
	.byte	0x52
	.uaword	0xd23
	.byte	0x5
	.byte	0x3
	.uaword	u8s_DTC_Sts
	.uleb128 0x2a
	.string	"st_rteLdcIn"
	.byte	0x5
	.byte	0x3b
	.uaword	0x520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"u8g_SoftStartEnd"
	.byte	0x6
	.byte	0x3b
	.uaword	0x237
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"st_AswLdcDiagFlag"
	.byte	0x6
	.byte	0x3e
	.uaword	0x374
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"u8g_UDS_DTC_CtrlSts"
	.byte	0x7
	.byte	0x9d
	.uaword	0x237
	.byte	0x1
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL27
	.uaword	.LVL36
	.uahalf	0xc
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL48
	.uahalf	0xc
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0xe
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0xc
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0xc
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0xe
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0xc
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE6
	.uahalf	0xe
	.byte	0x83
	.sleb128 20
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL78
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LFE6
	.uahalf	0xc
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x16b
	.byte	0x83
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x16b
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	0
	.uaword	0
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB281
	.uaword	.LBE281
	.uaword	0
	.uaword	0
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	0
	.uaword	0
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	0
	.uaword	0
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	0
	.uaword	0
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	.LBB277
	.uaword	.LBE277
	.uaword	0
	.uaword	0
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	0
	.uaword	0
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	0
	.uaword	0
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB198
	.uaword	.LBE198
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	0
	.uaword	0
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	0
	.uaword	0
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	.LBB282
	.uaword	.LBE282
	.uaword	0
	.uaword	0
	.uaword	.LBB211
	.uaword	.LBE211
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	0
	.uaword	0
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	.LBB263
	.uaword	.LBE263
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB269
	.uaword	.LBE269
	.uaword	.LBB279
	.uaword	.LBE279
	.uaword	.LBB285
	.uaword	.LBE285
	.uaword	0
	.uaword	0
	.uaword	.LBB223
	.uaword	.LBE223
	.uaword	.LBB228
	.uaword	.LBE228
	.uaword	0
	.uaword	0
	.uaword	.LBB235
	.uaword	.LBE235
	.uaword	.LBB265
	.uaword	.LBE265
	.uaword	.LBB270
	.uaword	.LBE270
	.uaword	.LBB284
	.uaword	.LBE284
	.uaword	0
	.uaword	0
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	.LBB240
	.uaword	.LBE240
	.uaword	0
	.uaword	0
	.uaword	.LBB241
	.uaword	.LBE241
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	0
	.uaword	0
	.uaword	.LBB248
	.uaword	.LBE248
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	.LBB283
	.uaword	.LBE283
	.uaword	0
	.uaword	0
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	0
	.uaword	0
	.uaword	.LBB254
	.uaword	.LBE254
	.uaword	.LBB257
	.uaword	.LBE257
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"stp_DiagFlags"
.LASF0:
	.string	"u8_Diag_DTC_Idx"
.LASF1:
	.string	"u8_Diag_DTC_Sts"
.LASF4:
	.string	"f32_delta"
.LASF3:
	.string	"stp_RealAdcValue"
	.extern	u8g_SoftStartEnd,STT_OBJECT,1
	.extern	st_rteLdcIn,STT_OBJECT,36
	.extern	st_AswLdcDiagFlag,STT_OBJECT,10
	.extern	u8g_UDS_DTC_CtrlSts,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
