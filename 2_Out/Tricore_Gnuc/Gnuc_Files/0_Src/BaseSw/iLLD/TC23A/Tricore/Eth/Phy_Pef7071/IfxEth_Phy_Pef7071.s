	.file	"IfxEth_Phy_Pef7071.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEth_Phy_Pef7071_init,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_init
	.type	IfxEth_Phy_Pef7071_init, @function
IfxEth_Phy_Pef7071_init:
.LFB288:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.loc 1 144 0
	.loc 1 145 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
.L2:
	.loc 1 145 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L2
.LVL0:
.LBB33:
.LBB34:
	.loc 1 211 0 is_stmt 1
	movh.a	%a15, 61442
	mov.u	%d15, 32768
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 214 0
	movh.a	%a15, 61442
	mov	%d15, 3
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L3:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L3
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 1 199 0
	movh.a	%a15, 61442
	.loc 1 204 0
	movh.a	%a2, 61442
	.loc 1 199 0
	lea	%a15, [%a15] -8176
	mov	%d2, 1
	.loc 1 204 0
	lea	%a2, [%a2] -8172
.L5:
.LVL1:
	.loc 1 199 0 discriminator 1
	st.w	[%a15]0, %d2
.L4:
	.loc 1 201 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L4
	.loc 1 204 0
	ld.w	%d15, [%a2]0
.LVL2:
.LBE36:
.LBE35:
	.loc 1 162 0
	jnz.t	%d15, 15, .L5
.LVL3:
.LBB37:
.LBB38:
	.loc 1 211 0
	movh.a	%a15, 61442
	mov.u	%d15, 63234
.LVL4:
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 214 0
	movh.a	%a15, 61442
	mov	%d15, 1475
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L6:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 1
	jnz	%d15, .L6
.LVL5:
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 214 0
	movh.a	%a15, 61442
	mov	%d15, 579
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L7:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L7
.LVL6:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 211 0
	movh.a	%a15, 61442
	mov	%d15, 257
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 214 0
	movh.a	%a15, 61442
	mov	%d15, 259
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L8:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L8
.LVL7:
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	.loc 1 211 0
	movh.a	%a15, 61442
	mov	%d15, 4608
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 214 0
	movh.a	%a15, 61442
	mov	%d15, 3
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L9:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L9
.LBE44:
.LBE43:
	.loc 1 175 0
	mov	%d15, 1
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	st.w	[%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone, %d15
	.loc 1 178 0
	mov	%d2, 1
	ret
.LFE288:
	.size	IfxEth_Phy_Pef7071_init, .-IfxEth_Phy_Pef7071_init
.section .text.IfxEth_Phy_Pef7071_link,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_link
	.type	IfxEth_Phy_Pef7071_link, @function
IfxEth_Phy_Pef7071_link:
.LFB289:
	.loc 1 182 0
.LVL8:
	.loc 1 185 0
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	ld.w	%d15, [%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 183 0
	mov	%d2, 0
	.loc 1 185 0
	jz	%d15, .L20
.LVL9:
.LBB45:
.LBB46:
.LBB47:
	.loc 1 199 0
	movh.a	%a15, 61442
	mov	%d15, 65
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L21:
	.loc 1 201 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L21
	.loc 1 204 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d2, [%a15]0
.LVL10:
.LBE47:
.LBE46:
.LBE45:
	.loc 1 183 0
	extr.u	%d2, %d2, 2, 1
.LVL11:
.L20:
	.loc 1 193 0
	ret
.LFE289:
	.size	IfxEth_Phy_Pef7071_link, .-IfxEth_Phy_Pef7071_link
.section .text.IfxEth_Phy_Pef7071_read_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_read_mdio_reg
	.type	IfxEth_Phy_Pef7071_read_mdio_reg, @function
IfxEth_Phy_Pef7071_read_mdio_reg:
.LFB290:
	.loc 1 197 0
.LVL12:
	.loc 1 199 0
	sh	%d5, 6
.LVL13:
	or	%d5, %d5, 1
	sh	%d4, %d4, 11
.LVL14:
	movh.a	%a15, 61442
	or	%d4, %d5
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L26:
	.loc 1 201 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L26
	.loc 1 204 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	ret
.LFE290:
	.size	IfxEth_Phy_Pef7071_read_mdio_reg, .-IfxEth_Phy_Pef7071_read_mdio_reg
.section .text.IfxEth_Phy_Pef7071_write_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_write_mdio_reg
	.type	IfxEth_Phy_Pef7071_write_mdio_reg, @function
IfxEth_Phy_Pef7071_write_mdio_reg:
.LFB291:
	.loc 1 209 0
.LVL15:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	.loc 1 214 0
	sh	%d5, 6
.LVL16:
	.loc 1 211 0
	st.w	[%a15]0, %d6
	or	%d5, %d5, 3
	.loc 1 214 0
	sh	%d4, %d4, 11
.LVL17:
	movh.a	%a15, 61442
	or	%d4, %d5
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L29:
	.loc 1 216 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L29
	.loc 1 217 0
	ret
.LFE291:
	.size	IfxEth_Phy_Pef7071_write_mdio_reg, .-IfxEth_Phy_Pef7071_write_mdio_reg
.section .text.IfxEth_Phy_Pef7071_write_mmd_indirect,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_write_mmd_indirect
	.type	IfxEth_Phy_Pef7071_write_mmd_indirect, @function
IfxEth_Phy_Pef7071_write_mmd_indirect:
.LFB292:
	.loc 1 221 0
.LVL18:
.LBB48:
.LBB49:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d5
	.loc 1 214 0
	sh	%d4, %d4, 11
.LVL19:
	mov	%d2, 835
	movh.a	%a15, 61442
	or	%d2, %d4
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d2
.L32:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L32
.LVL20:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d6
	.loc 1 214 0
	mov	%d15, 899
	movh.a	%a15, 61442
	or	%d4, %d15
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L33:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L33
.LBE51:
.LBE50:
	.loc 1 227 0
	insert	%d5, %d5, 15, 14, 1
.LVL21:
.LBB52:
.LBB53:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d5
	.loc 1 214 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d2
.L34:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L34
.LVL22:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d7
	.loc 1 214 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L35:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L35
.LBE55:
.LBE54:
	.loc 1 230 0
	ret
.LFE292:
	.size	IfxEth_Phy_Pef7071_write_mmd_indirect, .-IfxEth_Phy_Pef7071_write_mmd_indirect
.section .text.IfxEth_Phy_Pef7071_read_mmd_indirect,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_read_mmd_indirect
	.type	IfxEth_Phy_Pef7071_read_mmd_indirect, @function
IfxEth_Phy_Pef7071_read_mmd_indirect:
.LFB293:
	.loc 1 234 0
.LVL23:
.LBB56:
.LBB57:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d5
	.loc 1 214 0
	sh	%d4, %d4, 11
.LVL24:
	mov	%d2, 835
	movh.a	%a15, 61442
	or	%d2, %d4
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d2
.L41:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L41
.LVL25:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d6
	.loc 1 214 0
	mov	%d15, 899
	movh.a	%a15, 61442
	or	%d15, %d4
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L42:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L42
.LBE59:
.LBE58:
	.loc 1 240 0
	insert	%d5, %d5, 15, 14, 1
.LVL26:
.LBB60:
.LBB61:
	.loc 1 211 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d5
	.loc 1 214 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d2
.L43:
	.loc 1 216 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L43
.LVL27:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 1 199 0
	mov	%d15, 897
	movh.a	%a15, 61442
	or	%d4, %d15
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L44:
	.loc 1 201 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L44
	.loc 1 204 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d15, [%a15]0
.LVL28:
	ret
.LBE63:
.LBE62:
.LFE293:
	.size	IfxEth_Phy_Pef7071_read_mmd_indirect, .-IfxEth_Phy_Pef7071_read_mmd_indirect
	.global	IfxEth_Phy_Pef7071_iPhyInitDone
.section .bss.IfxEth_Phy_Pef7071_iPhyInitDone,"aw",@nobits
	.align 2
	.type	IfxEth_Phy_Pef7071_iPhyInitDone, @object
	.size	IfxEth_Phy_Pef7071_iPhyInitDone, 4
IfxEth_Phy_Pef7071_iPhyInitDone:
	.zero	4
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
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxEth_regdef.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9c6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x65
	.uaword	0x1b0
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
	.uaword	0x185
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
	.byte	0x2
	.byte	0x83
	.uaword	0x179
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
	.uaword	0x25b
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x8f
	.uaword	0x282
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x91
	.uaword	0x255
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x92
	.uaword	0x21b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x93
	.uaword	0x25c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x8
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb8
	.uaword	0x325
	.uleb128 0x9
	.string	"GB"
	.byte	0x4
	.byte	0xba
	.uaword	0x29c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"GW"
	.byte	0x4
	.byte	0xbb
	.uaword	0x29c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"CR"
	.byte	0x4
	.byte	0xbc
	.uaword	0x29c
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"GR"
	.byte	0x4
	.byte	0xbd
	.uaword	0x29c
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PA"
	.byte	0x4
	.byte	0xbe
	.uaword	0x29c
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xbf
	.uaword	0x29c
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0xc0
	.uaword	0x2ac
	.uleb128 0x8
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc3
	.uaword	0x384
	.uleb128 0x9
	.string	"GD"
	.byte	0x4
	.byte	0xc5
	.uaword	0x29c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xc6
	.uaword	0x29c
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0xc7
	.uaword	0x346
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x5cf
	.uaword	0x3ca
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x5d1
	.uaword	0x29c
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x5d2
	.uaword	0x19a
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x5d3
	.uaword	0x325
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x4
	.uahalf	0x5d4
	.uaword	0x3a2
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x5d7
	.uaword	0x40f
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x5d9
	.uaword	0x29c
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x5da
	.uaword	0x19a
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x5db
	.uaword	0x384
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x4
	.uahalf	0x5dc
	.uaword	0x3e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.byte	0x88
	.uaword	0x463
	.uleb128 0xf
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_read_mdio_reg"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.byte	0x1
	.uaword	0x4b2
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc4
	.uaword	0x1d7
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc4
	.uaword	0x1d7
	.uleb128 0x12
	.string	"pdata"
	.byte	0x1
	.byte	0xc4
	.uaword	0x4b2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1d7
	.uleb128 0x10
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_write_mdio_reg"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.byte	0x1
	.uaword	0x507
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd0
	.uaword	0x1d7
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd0
	.uaword	0x1d7
	.uleb128 0x12
	.string	"data"
	.byte	0x1
	.byte	0xd0
	.uaword	0x1d7
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_init"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x1d7
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x633
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1d7
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB33
	.uaword	.LBE33
	.byte	0x1
	.byte	0x9c
	.uaword	0x56f
	.uleb128 0x16
	.uaword	0x4fa
	.uahalf	0x8000
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0
	.uleb128 0x17
	.uaword	0x4e4
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x463
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.byte	0xa1
	.uaword	0x59b
	.uleb128 0x18
	.uaword	0x4a4
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1335
	.sleb128 0
	.uleb128 0x17
	.uaword	0x499
	.byte	0
	.uleb128 0x17
	.uaword	0x48e
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.byte	0xa5
	.uaword	0x5c2
	.uleb128 0x16
	.uaword	0x4fa
	.uahalf	0xf702
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0x17
	.uleb128 0x17
	.uaword	0x4e4
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.byte	0xa6
	.uaword	0x5e8
	.uleb128 0x17
	.uaword	0x4fa
	.byte	0
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0x9
	.uleb128 0x17
	.uaword	0x4e4
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.byte	0xa7
	.uaword	0x60f
	.uleb128 0x16
	.uaword	0x4fa
	.uahalf	0x101
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0x4
	.uleb128 0x17
	.uaword	0x4e4
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x4b8
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.byte	0xa8
	.uleb128 0x16
	.uaword	0x4fa
	.uahalf	0x1200
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0
	.uleb128 0x17
	.uaword	0x4e4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_link"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x1a1
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6c5
	.uleb128 0x14
	.string	"linkEstablished"
	.byte	0x1
	.byte	0xb7
	.uaword	0x1a1
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.byte	0xbb
	.uaword	0x1d7
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	0x463
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0xbc
	.uleb128 0x1b
	.uaword	0x4a4
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	0x499
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	0x48e
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x463
	.uaword	.LFB290
	.uaword	.LFE290
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f3
	.uleb128 0x1b
	.uaword	0x48e
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x499
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	0x4a4
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	0x4b8
	.uaword	.LFB291
	.uaword	.LFE291
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x721
	.uleb128 0x1b
	.uaword	0x4e4
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	0x4ef
	.uaword	.LLST9
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_write_mmd_indirect"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	.LFB292
	.uaword	.LFE292
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x842
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdc
	.uaword	0x1d7
	.uaword	.LLST10
	.uleb128 0x1f
	.string	"devaddr"
	.byte	0x1
	.byte	0xdc
	.uaword	0x1d7
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdc
	.uaword	0x1d7
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"data"
	.byte	0x1
	.byte	0xdc
	.uaword	0x1d7
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0xdf
	.uaword	0x7c4
	.uleb128 0x1b
	.uaword	0x4fa
	.uaword	.LLST11
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xd
	.uleb128 0x1b
	.uaword	0x4e4
	.uaword	.LLST10
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0xe1
	.uaword	0x7ef
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xe
	.uleb128 0x18
	.uaword	0x4e4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xe3
	.uaword	0x81a
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xd
	.uleb128 0x18
	.uaword	0x4e4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.uaword	0x4b8
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xe5
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xe
	.uleb128 0x18
	.uaword	0x4e4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_read_mmd_indirect"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x969
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe9
	.uaword	0x1d7
	.uaword	.LLST14
	.uleb128 0x1f
	.string	"devaddr"
	.byte	0x1
	.byte	0xe9
	.uaword	0x1d7
	.uaword	.LLST15
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xe9
	.uaword	0x1d7
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"data"
	.byte	0x1
	.byte	0xe9
	.uaword	0x1d7
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xec
	.uaword	0x8e6
	.uleb128 0x1b
	.uaword	0x4fa
	.uaword	.LLST15
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xd
	.uleb128 0x1b
	.uaword	0x4e4
	.uaword	.LLST14
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0xee
	.uaword	0x911
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xe
	.uleb128 0x18
	.uaword	0x4e4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.uaword	0x4b8
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xf0
	.uaword	0x93c
	.uleb128 0x18
	.uaword	0x4fa
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.uaword	0x4ef
	.byte	0xd
	.uleb128 0x18
	.uaword	0x4e4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.uaword	0x463
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0xf2
	.uleb128 0x18
	.uaword	0x4a4
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2218
	.sleb128 0
	.uleb128 0x17
	.uaword	0x499
	.byte	0xe
	.uleb128 0x18
	.uaword	0x48e
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x282
	.uaword	0x979
	.uleb128 0x23
	.uaword	0x429
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0xa4
	.uaword	0x996
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x969
	.uleb128 0x26
	.string	"IfxEth_Phy_Pef7071_iPhyInitDone"
	.byte	0x1
	.byte	0x89
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_Phy_Pef7071_iPhyInitDone
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE289
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1671
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE290
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LFE290
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE291
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LFE291
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE292
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LFE292
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE293
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LFE293
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x57
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
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	.LFB290
	.uaword	.LFE290
	.uaword	.LFB291
	.uaword	.LFE291
	.uaword	.LFB292
	.uaword	.LFE292
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_16"
.LASF2:
	.string	"regaddr"
.LASF1:
	.string	"layeraddr"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
