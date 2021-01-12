	.file	"Ifx_FftF32.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_FftF32_generateTwiddleFactor,"ax",@progbits
	.align 1
	.global	Ifx_FftF32_generateTwiddleFactor
	.type	Ifx_FftF32_generateTwiddleFactor, @function
Ifx_FftF32_generateTwiddleFactor:
.LFB176:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.c"
	.loc 1 52 0
.LVL0:
	.loc 1 57 0
	sh	%d8, %d4, -31
	add	%d8, %d4
	sha	%d8, -1
	.loc 1 52 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 52 0
	mov.aa	%a12, %a4
	.loc 1 57 0
	jlez	%d8, .L6
	.loc 1 59 0
	movh	%d9, 16585
	itof	%d10, %d4
	mov.aa	%a15, %a4
	.loc 1 57 0
	mov	%d15, 0
	.loc 1 59 0
	addi	%d9, %d9, 4059
.LVL1:
.L3:
	.loc 1 59 0 is_stmt 0 discriminator 3
	itof	%d4, %d15
	lea	%a4, [%SP] 4
	mul.f	%d4, %d4, %d9
	mov.aa	%a5, %SP
	div.f	%d4, %d4, %d10
	.loc 1 57 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL2:
	call	sincosf
.LVL3:
	ld.w	%d2, [%SP]0
.LVL4:
	.loc 1 61 0 discriminator 3
	st.w	[%a15]0, %d2
	.loc 1 62 0 discriminator 3
	ld.w	%d2, [%SP] 4
	addih	%d2, %d2, 0x8000
	st.w	[%a15] 4, %d2
	lea	%a15, [%a15] 8
	.loc 1 57 0 discriminator 3
	jne	%d15, %d8, .L3
.LVL5:
.L6:
	.loc 1 66 0
	mov.aa	%a2, %a12
	ret
.LFE176:
	.size	Ifx_FftF32_generateTwiddleFactor, .-Ifx_FftF32_generateTwiddleFactor
.section .text.Ifx_FftF32_reverseBits,"ax",@progbits
	.align 1
	.global	Ifx_FftF32_reverseBits
	.type	Ifx_FftF32_reverseBits, @function
Ifx_FftF32_reverseBits:
.LFB177:
	.loc 1 71 0
.LVL6:
	.loc 1 78 0
	movh	%d2, 21845
	addi	%d2, %d2, 21845
	sh	%d3, %d4, -1
	and	%d4, %d2
.LVL7:
	and	%d3, %d2
	sh	%d4, 1
	or	%d4, %d3
.LVL8:
	.loc 1 80 0
	movh	%d2, 13107
	sh	%d15, %d4, -2
	addi	%d2, %d2, 13107
	and	%d3, %d15, %d2
	and	%d15, %d4, %d2
	sh	%d15, 2
	.loc 1 82 0
	movh	%d2, 3855
	addi	%d2, %d2, 3855
	.loc 1 80 0
	or	%d15, %d3
.LVL9:
	.loc 1 82 0
	sh	%d3, %d15, -4
	and	%d15, %d2
.LVL10:
	and	%d3, %d2
	sh	%d15, 4
	or	%d15, %d3
.LVL11:
	.loc 1 84 0
	sh	%d3, %d15, -8
	and	%d15, 255
.LVL12:
	sh	%d15, %d15, 8
	or	%d15, %d3
.LVL13:
	.loc 1 86 0
	dextr	%d15, %d15, %d15, 16
.LVL14:
	.loc 1 88 0
	addi	%d2, %d5, -32
	sh	%d2, %d15, %d2
	.loc 1 90 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE177:
	.size	Ifx_FftF32_reverseBits, .-Ifx_FftF32_reverseBits
.section .text.Ifx_FftF32_radix2DecimationInTime,"ax",@progbits
	.align 1
	.global	Ifx_FftF32_radix2DecimationInTime
	.type	Ifx_FftF32_radix2DecimationInTime, @function
Ifx_FftF32_radix2DecimationInTime:
.LFB178:
	.loc 1 95 0
.LVL15:
	.loc 1 107 0
	add	%d15, %d4, -1
	mov	%d9, 1
	movh.a	%a5, hi:Ifx_g_FftF32_twiddleTable
	sh	%d9, %d9, %d15
.LVL16:
	.loc 1 111 0
	mov	%d7, 2
	lea	%a5, [%a5] lo:Ifx_g_FftF32_twiddleTable
	mov.a	%a12, %d15
	jz	%d4, .L9
.LVL17:
.L19:
	.loc 1 114 0
	sh	%d8, %d7, -1
.LVL18:
	mov.a	%a6, %d9
	rsub	%d1, %d8, 0
	sh	%d10, %d7, 3
	addsc.a	%a7, %a4, %d8, 3
	sh	%d1, 3
	add.a	%a6, -1
	.loc 1 117 0
	jz	%d9, .L16
.LVL19:
.L20:
	mov.a	%a3, %d8
	.loc 1 122 0
	mov.aa	%a15, %a7
	mov	%d5, 0
	add.a	%a3, -1
	jz	%d8, .L18
.LVL20:
.L21:
.LBB14:
.LBB15:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.h"
	.loc 2 104 0 discriminator 3
	sh	%d2, %d5, 14
	div.u	%e2, %d2, %d7
.LBE15:
.LBE14:
.LBB18:
.LBB19:
	.file 3 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.h"
	.loc 3 70 0 discriminator 3
	ld.w	%d15, [%a15]0
	ld.w	%d0, [%a15] 4
.LBE19:
.LBE18:
.LBB21:
.LBB16:
	.loc 2 104 0 discriminator 3
	addsc.a	%a2, %a5, %d2, 3
.LBE16:
.LBE21:
	.loc 1 122 0 discriminator 3
	add	%d5, 1
.LVL21:
.LBB22:
.LBB17:
	.loc 2 104 0 discriminator 3
	ld.w	%d4, [%a2]0
	ld.w	%d2, [%a2] 4
.LVL22:
.LBE17:
.LBE22:
.LBB23:
.LBB20:
	.loc 3 70 0 discriminator 3
	mul.f	%d6, %d15, %d4
	addsc.a	%a2, %a15, %d1, 0
	mul.f	%d3, %d2, %d0
	.loc 3 71 0 discriminator 3
	mul.f	%d4, %d4, %d0
.LVL23:
	mul.f	%d2, %d15, %d2
.LVL24:
	.loc 3 70 0 discriminator 3
	sub.f	%d3, %d6, %d3
.LVL25:
	.loc 3 71 0 discriminator 3
	add.f	%d15, %d4, %d2
.LVL26:
.LBE20:
.LBE23:
	.loc 1 128 0 discriminator 3
	ld.w	%d4, [%a2]0
.LVL27:
	ld.w	%d2, [%a2] 4
.LVL28:
.LBB24:
.LBB25:
	.loc 3 110 0 discriminator 3
	add.f	%d6, %d3, %d4
.LVL29:
.LBE25:
.LBE24:
.LBB27:
.LBB28:
	.loc 3 119 0 discriminator 3
	sub.f	%d3, %d4, %d3
.LVL30:
.LBE28:
.LBE27:
	.loc 1 129 0 discriminator 3
	st.w	[%a2]0, %d6
.LBB30:
.LBB26:
	.loc 3 111 0 discriminator 3
	add.f	%d6, %d15, %d2
.LVL31:
.LBE26:
.LBE30:
.LBB31:
.LBB29:
	.loc 3 120 0 discriminator 3
	sub.f	%d15, %d2, %d15
.LVL32:
.LBE29:
.LBE31:
	.loc 1 129 0 discriminator 3
	st.w	[%a2] 4, %d6
.LVL33:
	.loc 1 130 0 discriminator 3
	st.w	[%a15]0, %d3
.LVL34:
	st.w	[%a15] 4, %d15
	lea	%a15, [%a15] 8
.LVL35:
	loop	%a3, .L21
.LVL36:
.L18:
	addsc.a	%a7, %a7, %d10, 0
	loop	%a6, .L20
.L16:
	.loc 1 137 0
	sh	%d9, -1
.LVL37:
	.loc 1 138 0
	sh	%d7, 1
.LVL38:
	.loc 1 111 0
	loop	%a12, .L19
	ret
.LVL39:
.L9:
	ret
.LFE178:
	.size	Ifx_FftF32_radix2DecimationInTime, .-Ifx_FftF32_radix2DecimationInTime
.section .text.Ifx_FftF32_radix2,"ax",@progbits
	.align 1
	.global	Ifx_FftF32_radix2
	.type	Ifx_FftF32_radix2, @function
Ifx_FftF32_radix2:
.LFB179:
	.loc 1 144 0
.LVL40:
	.loc 1 144 0
	mov	%d5, %d4
	.loc 1 145 0
	clz	%d4, %d4
.LVL41:
	rsub	%d4, %d4, 31
.LVL42:
	movh.a	%a3, hi:Ifx_g_FftF32_bitReverseTable
	.loc 1 144 0
	mov.aa	%a15, %a4
	rsub	%d6, %d4, 14
	.loc 1 149 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:Ifx_g_FftF32_bitReverseTable
	jz	%d5, .L28
.LVL43:
.L29:
.LBB32:
.LBB33:
	.loc 2 96 0
	addsc.a	%a2, %a3, %d15, 1
	.loc 2 97 0
	rsub	%d3, %d6, 0
	ld.hu	%d2, [%a2]0
	add	%d15, 1
.LVL44:
	shas	%d3, %d2, %d3
	insert	%d2, %d3, 0, 16, 16
.LBE33:
.LBE32:
	.loc 1 153 0
	addsc.a	%a2, %a15, %d2, 3
	ld.d	%e2, [%a5+]8
	st.d	[%a2]0, %e2
.LVL45:
	.loc 1 149 0
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d5, .L29
.LVL46:
.L28:
	.loc 1 156 0
	mov.aa	%a4, %a15
.LVL47:
	call	Ifx_FftF32_radix2DecimationInTime
.LVL48:
	.loc 1 159 0
	mov.aa	%a2, %a15
	ret
.LFE179:
	.size	Ifx_FftF32_radix2, .-Ifx_FftF32_radix2
.section .text.Ifx_FftF32_radix2I,"ax",@progbits
	.align 1
	.global	Ifx_FftF32_radix2I
	.type	Ifx_FftF32_radix2I, @function
Ifx_FftF32_radix2I:
.LFB180:
	.loc 1 163 0
.LVL49:
	.loc 1 163 0
	mov	%d8, %d4
	.loc 1 164 0
	clz	%d4, %d4
.LVL50:
	.loc 1 163 0
	mov.aa	%a12, %a4
	.loc 1 164 0
	rsub	%d4, %d4, 31
.LVL51:
	.loc 1 168 0
	jz	%d8, .L33
	movh.a	%a2, hi:Ifx_g_FftF32_bitReverseTable
	rsub	%d3, %d4, 14
	mov	%d15, 0
	lea	%a2, [%a2] lo:Ifx_g_FftF32_bitReverseTable
.LVL52:
.L34:
.LBB34:
.LBB35:
	.loc 2 96 0
	addsc.a	%a15, %a2, %d15, 1
	.loc 2 97 0
	rsub	%d5, %d3, 0
	ld.hu	%d2, [%a15]0
	add	%d15, 1
.LVL53:
	shas	%d5, %d2, %d5
	insert	%d2, %d5, 0, 16, 16
.LBE35:
.LBE34:
	.loc 1 172 0
	addsc.a	%a15, %a12, %d2, 3
	ld.w	%d2, [%a5]0
	st.w	[%a15]0, %d2
	.loc 1 173 0
	ld.w	%d2, [%a5] 4
	lea	%a5, [%a5] 8
	addih	%d2, %d2, 0x8000
	st.w	[%a15] 4, %d2
.LVL54:
	.loc 1 168 0
	extr.u	%d2, %d15, 0, 16
	jlt.u	%d2, %d8, .L34
	.loc 1 176 0
	mov.aa	%a4, %a12
.LVL55:
	call	Ifx_FftF32_radix2DecimationInTime
.LVL56:
	mov.aa	%a15, %a12
	mov	%d15, 0
.LVL57:
.L36:
	.loc 1 181 0 discriminator 3
	ld.w	%d2, [%a15] 4
	add	%d15, 1
.LVL58:
	addih	%d2, %d2, 0x8000
	st.w	[%a15] 4, %d2
.LVL59:
	.loc 1 179 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	lea	%a15, [%a15] 8
	jlt.u	%d2, %d8, .L36
.LVL60:
.L41:
	.loc 1 185 0
	mov.aa	%a2, %a12
	ret
.LVL61:
.L33:
	.loc 1 176 0
	call	Ifx_FftF32_radix2DecimationInTime
.LVL62:
	j	.L41
.LFE180:
	.size	Ifx_FftF32_radix2I, .-Ifx_FftF32_radix2I
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
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.byte	0x4
	.uaword	.LCFI0-.LFB176
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8bb
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.c"
	.string	"D:\\\\07_Working\\\\Edison\\\\Edison"
	.uaword	.Ldebug_ranges0+0x68
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
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x6d
	.uaword	0x1c6
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x83
	.uaword	0x186
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0xa7
	.uaword	0x16c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x3d
	.uaword	0x26b
	.uleb128 0x5
	.string	"real"
	.byte	0x5
	.byte	0x3f
	.uaword	0x231
	.byte	0
	.uleb128 0x5
	.string	"imag"
	.byte	0x5
	.byte	0x40
	.uaword	0x231
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"cfloat32"
	.byte	0x5
	.byte	0x41
	.uaword	0x248
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
	.string	"Ifx_FftF32_lookUpTwiddleFactor"
	.byte	0x2
	.byte	0x66
	.byte	0x1
	.uaword	0x26b
	.byte	0x3
	.uaword	0x2e5
	.uleb128 0x7
	.string	"N"
	.byte	0x2
	.byte	0x66
	.uaword	0x212
	.uleb128 0x7
	.string	"k"
	.byte	0x2
	.byte	0x66
	.uaword	0x212
	.byte	0
	.uleb128 0x6
	.string	"IFX_Cf32_mul"
	.byte	0x3
	.byte	0x43
	.byte	0x1
	.uaword	0x26b
	.byte	0x3
	.uaword	0x31b
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.byte	0x43
	.uaword	0x31b
	.uleb128 0x7
	.string	"b"
	.byte	0x3
	.byte	0x43
	.uaword	0x31b
	.uleb128 0x8
	.string	"R"
	.byte	0x3
	.byte	0x45
	.uaword	0x26b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x321
	.uleb128 0xa
	.uaword	0x26b
	.uleb128 0x6
	.string	"IFX_Cf32_add"
	.byte	0x3
	.byte	0x6b
	.byte	0x1
	.uaword	0x26b
	.byte	0x3
	.uaword	0x35c
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.byte	0x6b
	.uaword	0x31b
	.uleb128 0x7
	.string	"b"
	.byte	0x3
	.byte	0x6b
	.uaword	0x31b
	.uleb128 0x8
	.string	"R"
	.byte	0x3
	.byte	0x6d
	.uaword	0x26b
	.byte	0
	.uleb128 0x6
	.string	"IFX_Cf32_sub"
	.byte	0x3
	.byte	0x74
	.byte	0x1
	.uaword	0x26b
	.byte	0x3
	.uaword	0x392
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.byte	0x74
	.uaword	0x31b
	.uleb128 0x7
	.string	"b"
	.byte	0x3
	.byte	0x74
	.uaword	0x31b
	.uleb128 0x8
	.string	"R"
	.byte	0x3
	.byte	0x76
	.uaword	0x26b
	.byte	0
	.uleb128 0x6
	.string	"Ifx_FftF32_lookUpReversedBits"
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.uaword	0x1b8
	.byte	0x3
	.uaword	0x3ed
	.uleb128 0x7
	.string	"n"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b8
	.uleb128 0x7
	.string	"bits"
	.byte	0x2
	.byte	0x5d
	.uaword	0x27b
	.uleb128 0x8
	.string	"shift"
	.byte	0x2
	.byte	0x5f
	.uaword	0x27b
	.uleb128 0x8
	.string	"index"
	.byte	0x2
	.byte	0x60
	.uaword	0x1b8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Ifx_FftF32_generateTwiddleFactor"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x48d
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48d
	.uleb128 0xc
	.string	"TF"
	.byte	0x1
	.byte	0x33
	.uaword	0x48d
	.uaword	.LLST0
	.uleb128 0xc
	.string	"nX"
	.byte	0x1
	.byte	0x33
	.uaword	0x205
	.uaword	.LLST1
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x35
	.uaword	0x175
	.uaword	.LLST2
	.uleb128 0xd
	.string	"Theta"
	.byte	0x1
	.byte	0x36
	.uaword	0x17c
	.uaword	.LLST3
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x884
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x12
	.byte	0x7f
	.sleb128 -1
	.byte	0xf7
	.uleb128 0x175
	.byte	0xf7
	.uleb128 0x16c
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x16c
	.byte	0x1e
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x16c
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x26b
	.uleb128 0xb
	.byte	0x1
	.string	"Ifx_FftF32_reverseBits"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x1c6
	.uaword	.LFB177
	.uaword	.LFE177
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4eb
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x46
	.uaword	0x1c6
	.uaword	.LLST4
	.uleb128 0x10
	.string	"bits"
	.byte	0x1
	.byte	0x46
	.uaword	0x27b
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x4b
	.uaword	0x192
	.uaword	.LLST5
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Ifx_FftF32_radix2DecimationInTime"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB178
	.uaword	.LFE178
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67b
	.uleb128 0x10
	.string	"R"
	.byte	0x1
	.byte	0x5e
	.uaword	0x48d
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x5e
	.uaword	0x192
	.uaword	.LLST6
	.uleb128 0x12
	.string	"Bp"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.byte	0x1
	.byte	0x59
	.uleb128 0xd
	.string	"Np"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST7
	.uleb128 0xd
	.string	"Npx"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST8
	.uleb128 0xd
	.string	"P"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST9
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST10
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST11
	.uleb128 0xd
	.string	"BaseT"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uaword	.LLST10
	.uleb128 0x8
	.string	"BaseB"
	.byte	0x1
	.byte	0x68
	.uaword	0x192
	.uleb128 0xd
	.string	"top"
	.byte	0x1
	.byte	0x69
	.uaword	0x26b
	.uaword	.LLST13
	.uleb128 0xd
	.string	"bot"
	.byte	0x1
	.byte	0x69
	.uaword	0x26b
	.uaword	.LLST14
	.uleb128 0x13
	.uaword	0x2a6
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.uaword	0x5eb
	.uleb128 0x14
	.uaword	0x2db
	.uaword	.LLST15
	.uleb128 0x14
	.uaword	0x2d2
	.uaword	.LLST16
	.byte	0
	.uleb128 0x13
	.uaword	0x2e5
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x7f
	.uaword	0x61c
	.uleb128 0x14
	.uaword	0x308
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	0x2ff
	.uaword	.LLST18
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x16
	.uaword	0x311
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x326
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x81
	.uaword	0x64d
	.uleb128 0x14
	.uaword	0x349
	.uaword	.LLST19
	.uleb128 0x14
	.uaword	0x340
	.uaword	.LLST20
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x16
	.uaword	0x352
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x35c
	.uaword	.LBB27
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x82
	.uleb128 0x14
	.uaword	0x37f
	.uaword	.LLST21
	.uleb128 0x14
	.uaword	0x376
	.uaword	.LLST22
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x16
	.uaword	0x388
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Ifx_FftF32_radix2"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x48d
	.uaword	.LFB179
	.uaword	.LFE179
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x73a
	.uleb128 0xc
	.string	"R"
	.byte	0x1
	.byte	0x8f
	.uaword	0x48d
	.uaword	.LLST23
	.uleb128 0xc
	.string	"X"
	.byte	0x1
	.byte	0x8f
	.uaword	0x31b
	.uaword	.LLST24
	.uleb128 0xc
	.string	"nX"
	.byte	0x1
	.byte	0x8f
	.uaword	0x1c6
	.uaword	.LLST25
	.uleb128 0xd
	.string	"logN"
	.byte	0x1
	.byte	0x91
	.uaword	0x27b
	.uaword	.LLST26
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x92
	.uaword	0x1c6
	.uaword	.LLST27
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x92
	.uaword	0x1c6
	.uleb128 0x18
	.uaword	0x392
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0x98
	.uaword	0x729
	.uleb128 0x19
	.uaword	0x3c6
	.uleb128 0x14
	.uaword	0x3bd
	.uaword	.LLST28
	.uleb128 0x1a
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x16
	.uaword	0x3d2
	.uleb128 0x16
	.uaword	0x3df
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL48
	.uaword	0x4eb
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Ifx_FftF32_radix2I"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	0x48d
	.uaword	.LFB180
	.uaword	.LFE180
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80f
	.uleb128 0xc
	.string	"R"
	.byte	0x1
	.byte	0xa2
	.uaword	0x48d
	.uaword	.LLST29
	.uleb128 0xc
	.string	"X"
	.byte	0x1
	.byte	0xa2
	.uaword	0x31b
	.uaword	.LLST30
	.uleb128 0xc
	.string	"nX"
	.byte	0x1
	.byte	0xa2
	.uaword	0x1c6
	.uaword	.LLST31
	.uleb128 0xd
	.string	"logN"
	.byte	0x1
	.byte	0xa4
	.uaword	0x27b
	.uaword	.LLST32
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1c6
	.uaword	.LLST33
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1c6
	.uaword	.LLST34
	.uleb128 0x18
	.uaword	0x392
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xab
	.uaword	0x7f1
	.uleb128 0x19
	.uaword	0x3c6
	.uleb128 0x14
	.uaword	0x3bd
	.uaword	.LLST35
	.uleb128 0x1a
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x1b
	.uaword	0x3d2
	.uaword	.LLST36
	.uleb128 0x16
	.uaword	0x3df
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL56
	.uaword	0x4eb
	.uaword	0x805
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL62
	.uaword	0x4eb
	.byte	0
	.uleb128 0x1e
	.uaword	0x1b8
	.uaword	0x820
	.uleb128 0x1f
	.uaword	0x28b
	.uahalf	0x3fff
	.byte	0
	.uleb128 0x20
	.string	"Ifx_g_FftF32_bitReverseTable"
	.byte	0x2
	.byte	0x42
	.uaword	0x846
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x80f
	.uleb128 0x1e
	.uaword	0x26b
	.uaword	0x85c
	.uleb128 0x1f
	.uaword	0x28b
	.uahalf	0x1fff
	.byte	0
	.uleb128 0x20
	.string	"Ifx_g_FftF32_twiddleTable"
	.byte	0x2
	.byte	0x45
	.uaword	0x87f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x84b
	.uleb128 0x21
	.byte	0x1
	.string	"__builtin_sincosf"
	.byte	0x6
	.byte	0
	.string	"sincosf"
	.byte	0x1
	.byte	0x1
	.uaword	0x8b8
	.uleb128 0x22
	.uaword	0x16c
	.uleb128 0x22
	.uaword	0x8b8
	.uleb128 0x22
	.uaword	0x8b8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x16c
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE176
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE176
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
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
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1a
	.byte	0x7f
	.sleb128 -1
	.byte	0xf7
	.uleb128 0x175
	.byte	0xf7
	.uleb128 0x16c
	.byte	0xf4
	.uleb128 0x16c
	.byte	0x4
	.uaword	0x40c90fdb
	.byte	0x1e
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x16c
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x17c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE177
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x16
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x36
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x21
	.byte	0x34
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0xc
	.uaword	0x33333333
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LFE177
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE178
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL39
	.uaword	.LFE178
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE178
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL22
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1447
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1462
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1447
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1462
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1447
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47
	.uaword	.LFE179
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43
	.uaword	.LFE179
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LFE179
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL49
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-1
	.uaword	.LFE180
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL52
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL62-1
	.uaword	.LFE180
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LFE180
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL51
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56-1
	.uaword	.LVL61
	.uahalf	0x24
	.byte	0x4f
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0x28
	.uahalf	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.uahalf	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.uahalf	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.uahalf	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1
	.uaword	.LFE180
	.uahalf	0x24
	.byte	0x4f
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0x28
	.uahalf	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.uahalf	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.uahalf	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.uahalf	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL52
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL56-1
	.uaword	.LVL60
	.uahalf	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0x28
	.uahalf	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.uahalf	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.uahalf	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.uahalf	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x41
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Ifx_g_FftF32_bitReverseTable,STT_OBJECT,32768
	.extern	Ifx_g_FftF32_twiddleTable,STT_OBJECT,65536
	.extern	sincosf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
