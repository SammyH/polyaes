	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m4
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	fpv4-sp-d16
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"aes128.ll"
	.globl	polymorph
	.align	1
	.type	polymorph,%function
	.code	16                      @ @polymorph
	.thumb_func
polymorph:
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r7, lr}
	push	{r7, lr}
.Ltmp0:
	.cfi_def_cfa_offset 8
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
	bl	__unnamed_1
	pop	{r7, pc}
.Lfunc_end0:
	.size	polymorph, .Lfunc_end0-polymorph
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	randsrc
	.align	1
	.type	randsrc,%function
	.code	16                      @ @randsrc
	.thumb_func
randsrc:
	.fnstart
@ BB#0:                                 @ %entry
	b	rand
.Lfunc_end1:
	.size	randsrc, .Lfunc_end1-randsrc
	.cantunwind
	.fnend

	.globl	AllocateKeySchedule
	.align	1
	.type	AllocateKeySchedule,%function
	.code	16                      @ @AllocateKeySchedule
	.thumb_func
AllocateKeySchedule:
	.fnstart
@ BB#0:                                 @ %entry
	movs	r0, #176
	b	malloc
.Lfunc_end2:
	.size	AllocateKeySchedule, .Lfunc_end2-AllocateKeySchedule
	.cantunwind
	.fnend

	.globl	AllocateData
	.align	1
	.type	AllocateData,%function
	.code	16                      @ @AllocateData
	.thumb_func
AllocateData:
	.fnstart
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r7, sp, #12
	add	r7, sp, #12
	.pad	#12
	sub	sp, #12
	add.w	r4, r1, #15
	mov	r6, r0
	mov.w	r2, #-1
	asrs	r0, r4, #31
	add.w	r0, r4, r0, lsr #28
	add.w	r11, r2, r0, asr #4
	asrs	r2, r1, #31
	asrs	r0, r0, #4
	add.w	r2, r1, r2, lsr #28
	lsls	r0, r0, #2
	bic	r2, r2, #15
	sub.w	r10, r1, r2
	rsb.w	r1, r10, #16
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	malloc
	mov	r9, r0
	movs	r0, #16
	bl	malloc
	mov	r5, r0
	cmp	r4, #31
	ble	.LBB3_3
@ BB#1:
	movs	r4, #0
	mov	r8, r6
	str	r6, [sp, #8]            @ 4-byte Spill
.LBB3_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	str.w	r5, [r9, r4, lsl #2]
	adds	r4, #1
	ldrb.w	r1, [r8, #13]
	strb	r1, [r5, #13]
	ldrb.w	lr, [r8, #9]
	strb.w	lr, [r5, #9]
	ldrb.w	r12, [r8, #5]
	strb.w	r12, [r5, #5]
	ldrb.w	r0, [r8, #2]
	ldrb.w	r2, [r8, #3]
	ldrb.w	r3, [r8]
	ldrb.w	r6, [r8, #1]
	strb	r2, [r5, #3]
	strb	r0, [r5, #2]
	mov	r0, r8
	strb	r6, [r5, #1]
	strb	r3, [r5]
	ldrb	r2, [r0, #12]!
	orr.w	r1, r2, r1, lsl #8
	ldrb	r2, [r0, #2]
	ldrb	r0, [r0, #3]
	orr.w	r3, r2, r0, lsl #8
	orr.w	r1, r1, r3, lsl #16
	add.w	r3, r5, #12
	strb	r1, [r3], #2
	strb	r0, [r3, #1]
	mov	r0, r8
	strb	r2, [r3]
	ldrb	r1, [r0, #8]!
	ldrb	r2, [r0, #2]
	ldrb	r0, [r0, #3]
	orr.w	r1, r1, lr, lsl #8
	orr.w	r3, r2, r0, lsl #8
	orr.w	r1, r1, r3, lsl #16
	add.w	r3, r5, #8
	strb	r1, [r3], #2
	strb	r0, [r3, #1]
	mov	r0, r8
	strb	r2, [r3]
	ldrb	r1, [r0, #4]!
	ldrb	r2, [r0, #2]
	ldrb	r0, [r0, #3]
	orr.w	r1, r1, r12, lsl #8
	orr.w	r3, r2, r0, lsl #8
	orr.w	r1, r1, r3, lsl #16
	adds	r3, r5, #4
	strb	r1, [r3], #2
	strb	r0, [r3, #1]
	movs	r0, #16
	strb	r2, [r3]
	bl	malloc
	mov	r5, r0
	add.w	r8, r8, #16
	cmp	r4, r11
	blt	.LBB3_2
	b	.LBB3_4
.LBB3_3:
	str	r6, [sp, #8]            @ 4-byte Spill
.LBB3_4:                                @ %for.cond.cleanup
	ldr	r4, [sp, #4]            @ 4-byte Reload
	str.w	r5, [r9, r11, lsl #2]
	cmp	r4, #15
	add.w	r0, r5, r4
	it	hi
	movhi.w	r10, #0
	mov	r1, r10
	bl	__aeabi_memclr
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	r2, r4
	add.w	r1, r0, r11, lsl #4
	mov	r0, r5
	bl	__aeabi_memcpy
	mov	r0, r9
	add	sp, #12
	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end3:
	.size	AllocateData, .Lfunc_end3-AllocateData
	.cantunwind
	.fnend

	.globl	Cipher
	.align	1
	.type	Cipher,%function
	.code	16                      @ @Cipher
	.thumb_func
Cipher:
	.fnstart
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r7, sp, #12
	add	r7, sp, #12
	.pad	#4
	sub	sp, #4
	mov	r4, r0
	movs	r0, #16
	mov	r11, r2
	mov	r8, r1
	bl	malloc
	ldrb	r1, [r4, #13]
	mov	r5, r0
	add.w	r10, r5, #8
	add.w	r9, r5, #4
	strb	r1, [r5, #13]
	ldrb.w	lr, [r4, #9]
	strb.w	lr, [r5, #9]
	ldrb.w	r12, [r4, #5]
	strb.w	r12, [r5, #5]
	ldrb	r0, [r4, #2]
	ldrb	r2, [r4, #3]
	ldrb	r3, [r4]
	ldrb	r6, [r4, #1]
	strb	r2, [r5, #3]
	strb	r0, [r5, #2]
	mov	r0, r4
	strb	r6, [r5, #1]
	strb	r3, [r5]
	ldrb	r2, [r0, #12]!
	orr.w	r1, r2, r1, lsl #8
	ldrb	r2, [r0, #2]
	ldrb	r0, [r0, #3]
	orr.w	r3, r2, r0, lsl #8
	orr.w	r1, r1, r3, lsl #16
	add.w	r3, r5, #12
	strb	r1, [r3], #2
	str	r3, [sp]                @ 4-byte Spill
	strb	r0, [r3, #1]
	mov	r0, r4
	strb	r2, [r3]
	ldrb	r1, [r0, #8]!
	ldrb	r2, [r0, #2]
	ldrb	r0, [r0, #3]
	orr.w	r1, r1, lr, lsl #8
	orr.w	r3, r2, r0, lsl #8
	orr.w	r1, r1, r3, lsl #16
	strb	r1, [r10], #2
	strb.w	r0, [r10, #1]
	strb.w	r2, [r10]
	ldrb	r0, [r4, #4]!
	ldrb	r1, [r4, #2]
	ldrb	r2, [r4, #3]
	orr.w	r0, r0, r12, lsl #8
	orr.w	r3, r1, r2, lsl #8
	orr.w	r0, r0, r3, lsl #16
	strb	r0, [r9], #2
	mov	r0, r5
	strb.w	r2, [r9, #1]
	strb.w	r1, [r9]
	mov	r1, r11
	bl	polymorph
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #16
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #32
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #48
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #64
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #80
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #96
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #112
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #128
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	mov	r0, r5
	bl	MixColumns
	add.w	r1, r11, #144
	mov	r0, r5
	bl	AddRoundKey
	mov	r0, r5
	bl	SubBytes
	mov	r0, r5
	bl	ShiftRows
	add.w	r1, r11, #160
	mov	r0, r5
	bl	AddRoundKey
	ldrb	r1, [r5, #13]
	strb.w	r1, [r8, #13]
	ldrb	r2, [r5, #9]
	strb.w	r2, [r8, #9]
	ldrb.w	r12, [r5, #5]
	strb.w	r12, [r8, #5]
	ldrb	r3, [r5]
	ldrb	r6, [r5, #1]
	ldrb	r4, [r5, #2]
	ldrb	r0, [r5, #3]
	strb.w	r0, [r8, #3]
	strb.w	r4, [r8, #2]
	strb.w	r6, [r8, #1]
	strb.w	r3, [r8]
	ldrb	r0, [r5, #12]
	ldr	r3, [sp]                @ 4-byte Reload
	orr.w	r0, r0, r1, lsl #8
	ldrb	r1, [r3]
	ldrb	r3, [r3, #1]
	orr.w	r6, r1, r3, lsl #8
	orr.w	r0, r0, r6, lsl #16
	mov	r6, r8
	strb	r0, [r6, #12]!
	strb	r3, [r6, #3]
	strb	r1, [r6, #2]
	ldrb	r0, [r5, #8]
	ldrb.w	r1, [r10]
	orr.w	r0, r0, r2, lsl #8
	ldrb.w	r2, [r10, #1]
	orr.w	r3, r1, r2, lsl #8
	orr.w	r0, r0, r3, lsl #16
	mov	r3, r8
	strb	r0, [r3, #8]!
	strb	r2, [r3, #3]
	strb	r1, [r3, #2]
	ldrb	r0, [r5, #4]
	ldrb.w	r1, [r9]
	ldrb.w	r2, [r9, #1]
	orr.w	r0, r0, r12, lsl #8
	orr.w	r3, r1, r2, lsl #8
	orr.w	r0, r0, r3, lsl #16
	strb	r0, [r8, #4]!
	mov	r0, r5
	strb.w	r2, [r8, #3]
	strb.w	r1, [r8, #2]
	add	sp, #4
	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	free
.Lfunc_end4:
	.size	Cipher, .Lfunc_end4-Cipher
	.cantunwind
	.fnend

	.globl	AddRoundKey
	.align	1
	.type	AddRoundKey,%function
	.code	16                      @ @AddRoundKey
	.thumb_func
AddRoundKey:
	.fnstart
@ BB#0:                                 @ %entry
.M_ARK_0_0:
	ldr	r2, [r0]
	ldr	r3, [r1]
	eors	r2, r3
	str	r2, [r0]
.eM_ARK_0_0:
.M_ARK_0_1:
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	eors	r2, r3
	str	r2, [r0, #4]
.eM_ARK_0_1:
.M_ARK_0_2:
	ldr	r2, [r0, #8]
	ldr	r3, [r1, #8]
	eors	r2, r3
	str	r2, [r0, #8]
.eM_ARK_0_2:
.M_ARK_0_3:
	ldr	r2, [r0, #12]
	ldr	r1, [r1, #12]
	eors	r1, r2
	str	r1, [r0, #12]
.eM_ARK_0_3:
.M_ARK_1_0:
	bx	lr
.eM_ARK_1_0:
.Lfunc_end5:
	.size	AddRoundKey, .Lfunc_end5-AddRoundKey
	.cantunwind
	.fnend

	.globl	SubBytes
	.align	1
	.type	SubBytes,%function
	.code	16                      @ @SubBytes
	.thumb_func
SubBytes:
	.fnstart
@ BB#0:                                 @ %entry
.M_SB_0_0:
	movw	r1, :lower16:SubRijndaels.s
	movt	r1, :upper16:SubRijndaels.s
.eM_SB_0_0:
.M_SB_1_0:
	ldrb	r2, [r0]
	ldrb	r2, [r1, r2]
	strb	r2, [r0]
.eM_SB_1_0:
.M_SB_1_1:
	ldrb	r2, [r0, #1]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #1]
.eM_SB_1_1:
.M_SB_1_2:
	ldrb	r2, [r0, #2]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #2]
.eM_SB_1_2:
.M_SB_1_3:
	ldrb	r2, [r0, #3]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #3]
.eM_SB_1_3:
.M_SB_1_4:
	ldrb	r2, [r0, #4]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #4]
.eM_SB_1_4:
.M_SB_1_5:
	ldrb	r2, [r0, #5]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #5]
.eM_SB_1_5:
.M_SB_1_6:
	ldrb	r2, [r0, #6]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #6]
.eM_SB_1_6:
.M_SB_1_7:
	ldrb	r2, [r0, #7]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #7]
.eM_SB_1_7:
.M_SB_1_8:
	ldrb	r2, [r0, #8]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #8]
.eM_SB_1_8:
.M_SB_1_9:
	ldrb	r2, [r0, #9]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #9]
.eM_SB_1_9:
.M_SB_1_10:
	ldrb	r2, [r0, #10]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #10]
.eM_SB_1_10:
.M_SB_1_11:
	ldrb	r2, [r0, #11]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #11]
.eM_SB_1_11:
.M_SB_1_12:
	ldrb	r2, [r0, #12]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #12]
.eM_SB_1_12:
.M_SB_1_13:
	ldrb	r2, [r0, #13]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #13]
.eM_SB_1_13:
.M_SB_1_14:
	ldrb	r2, [r0, #14]
	ldrb	r2, [r1, r2]
	strb	r2, [r0, #14]
.eM_SB_1_14:
.M_SB_1_15:
	ldrb	r2, [r0, #15]
	ldrb	r1, [r1, r2]
	strb	r1, [r0, #15]
.eM_SB_1_15:
.M_SB_2_0:
	bx	lr
.eM_SB_2_0:
.Lfunc_end6:
	.size	SubBytes, .Lfunc_end6-SubBytes
	.cantunwind
	.fnend

	.globl	ShiftRows
	.align	1
	.type	ShiftRows,%function
	.code	16                      @ @ShiftRows
	.thumb_func
ShiftRows:
	.fnstart
@ BB#0:                                 @ %entry
.M_SR_0_0:
	ldrb.w	r12, [r0, #1]
	ldrb	r2, [r0, #5]
	ldrb	r3, [r0, #9]
	ldrb	r1, [r0, #13]
	strb	r2, [r0, #1]
	strb	r3, [r0, #5]
	strb	r1, [r0, #9]
	strb.w	r12, [r0, #13]
.eM_SR_0_0:
.M_SR_0_1:
	ldrb.w	r12, [r0, #2]
	ldrb	r2, [r0, #6]
	ldrb	r3, [r0, #10]
	ldrb	r1, [r0, #14]
	strb	r3, [r0, #2]
	strb	r1, [r0, #6]
	strb.w	r12, [r0, #10]
	strb	r2, [r0, #14]
.eM_SR_0_1:
.M_SR_0_2:
	ldrb.w	r12, [r0, #3]
	ldrb	r2, [r0, #7]
	ldrb	r3, [r0, #11]
	ldrb	r1, [r0, #15]
	strb	r1, [r0, #3]
	strb.w	r12, [r0, #7]
	strb	r2, [r0, #11]
	strb	r3, [r0, #15]
.eM_SR_0_2:
.M_SR_1_0:
	bx	lr
.eM_SR_1_0:
.Lfunc_end7:
	.size	ShiftRows, .Lfunc_end7-ShiftRows
	.cantunwind
	.fnend

	.globl	MixColumns
	.align	1
	.type	MixColumns,%function
	.code	16                      @ @MixColumns
	.thumb_func
MixColumns:
	.fnstart
@ BB#0:                                 @ %entry
.M_MC_0_0:
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
	movw	r12, :lower16:MixColumns.gmul2
	movt	r12, :upper16:MixColumns.gmul2
	movw	lr, :lower16:MixColumns.gmul3
	movt	lr, :upper16:MixColumns.gmul3
.eM_MC_0_0:
.M_MC_1_0:
	ldrb	r3, [r0]
	ldrb	r1, [r0, #1]
	ldrb	r2, [r0, #2]
	ldrb	r4, [r0, #3]
	ldrb.w	r5, [r12, r3]
	ldrb.w	r6, [lr, r1]
	eor.w	r7, r4, r3
	eors	r5, r6
	ldrb.w	r6, [r12, r1]
	eors	r5, r2
	eors	r5, r4
	strb	r5, [r0]
	ldrb.w	r5, [lr, r2]
	eors	r6, r7
	eor.w	r7, r1, r3
	ldrb.w	r3, [lr, r3]
	eors	r1, r2
	eors	r5, r6
	ldrb.w	r6, [r12, r2]
	strb	r5, [r0, #1]
	ldrb.w	r5, [lr, r4]
	ldrb.w	r4, [r12, r4]
	eors	r1, r3
	eors	r6, r7
	eors	r5, r6
	eors	r1, r4
	strb	r5, [r0, #2]
	strb	r1, [r0, #3]
.eM_MC_1_0:
    
.M_MC_1_1:
	ldrb	r1, [r0, #4]
	ldrb	r2, [r0, #5]
	ldrb	r3, [r0, #6]
	ldrb	r4, [r0, #7]
	ldrb.w	r5, [r12, r1]
	ldrb.w	r6, [lr, r2]
	eor.w	r7, r4, r1
	eors	r5, r6
	ldrb.w	r6, [r12, r2]
	eors	r5, r3
	eors	r5, r4
	strb	r5, [r0, #4]
	ldrb.w	r5, [lr, r3]
	eors	r6, r7
	eor.w	r7, r2, r1
	ldrb.w	r1, [lr, r1]
	eors	r2, r3
	eors	r5, r6
	ldrb.w	r6, [r12, r3]
	strb	r5, [r0, #5]
	ldrb.w	r5, [lr, r4]
	ldrb.w	r4, [r12, r4]
	eors	r1, r2
	eors	r6, r7
	eors	r5, r6
	eors	r1, r4
	strb	r5, [r0, #6]
	strb	r1, [r0, #7]
.eM_MC_1_1:
    
.M_MC_1_2:
	ldrb	r1, [r0, #8]
	ldrb	r2, [r0, #9]
	ldrb	r3, [r0, #10]
	ldrb	r4, [r0, #11]
	ldrb.w	r5, [r12, r1]
	ldrb.w	r6, [lr, r2]
	eor.w	r7, r4, r1
	eors	r5, r6
	ldrb.w	r6, [r12, r2]
	eors	r5, r3
	eors	r5, r4
	strb	r5, [r0, #8]
	ldrb.w	r5, [lr, r3]
	eors	r6, r7
	eor.w	r7, r2, r1
	ldrb.w	r1, [lr, r1]
	eors	r2, r3
	eors	r5, r6
	ldrb.w	r6, [r12, r3]
	strb	r5, [r0, #9]
	ldrb.w	r5, [lr, r4]
	ldrb.w	r4, [r12, r4]
	eors	r1, r2
	eors	r6, r7
	eors	r5, r6
	eors	r1, r4
	strb	r5, [r0, #10]
	strb	r1, [r0, #11]
.eM_MC_1_2:
    
.M_MC_1_3:
	ldrb	r1, [r0, #12]
	ldrb	r2, [r0, #13]
	ldrb	r3, [r0, #14]
	ldrb	r4, [r0, #15]
	ldrb.w	r5, [r12, r1]
	ldrb.w	r6, [lr, r2]
	eor.w	r7, r4, r1
	eors	r5, r6
	ldrb.w	r6, [r12, r2]
	eors	r5, r3
	eors	r5, r4
	strb	r5, [r0, #12]
	ldrb.w	r5, [lr, r3]
	eors	r6, r7
	eor.w	r7, r2, r1
	ldrb.w	r1, [lr, r1]
	eors	r2, r3
	eors	r5, r6
	ldrb.w	r6, [r12, r3]
	strb	r5, [r0, #13]
	ldrb.w	r5, [lr, r4]
	eors	r1, r2
	eors	r6, r7
	ldrb.w	r7, [r12, r4]
	eors	r5, r6
	strb	r5, [r0, #14]
	eors	r1, r7
	strb	r1, [r0, #15]
.eM_MC_1_3:
.M_MC_2_0:
	pop	{r4, r5, r6, r7, pc}
.eM_MC_2_0:
.Lfunc_end8:
	.size	MixColumns, .Lfunc_end8-MixColumns
	.cantunwind
	.fnend

	.globl	KeyExpansion
	.align	1
	.type	KeyExpansion,%function
	.code	16                      @ @KeyExpansion
	.thumb_func
KeyExpansion:
	.fnstart
@ BB#0:                                 @ %if.end.39
	.save	{r4, r5, r6, r7, r8, r9, lr}
	push.w	{r4, r5, r6, r7, r8, r9, lr}
	ldrb.w	r12, [r0]
	ldrb	r3, [r0, #1]
	ldrb	r2, [r0, #2]
	ldrb.w	lr, [r0, #3]
	orr.w	r3, r12, r3, lsl #8
	orr.w	r2, r3, r2, lsl #16
	orr.w	lr, r2, lr, lsl #24
	str.w	lr, [r1]
	ldrb.w	r12, [r0, #4]
	ldrb	r2, [r0, #5]
	ldrb	r3, [r0, #6]
	ldrb	r4, [r0, #7]
	orr.w	r2, r12, r2, lsl #8
	orr.w	r2, r2, r3, lsl #16
	orr.w	r8, r2, r4, lsl #24
	str.w	r8, [r1, #4]
	ldrb	r2, [r0, #8]
	ldrb	r4, [r0, #9]
	ldrb	r3, [r0, #10]
	ldrb	r5, [r0, #11]
	orr.w	r2, r2, r4, lsl #8
	orr.w	r2, r2, r3, lsl #16
	orr.w	r9, r2, r5, lsl #24
	str.w	r9, [r1, #8]
	ldrb	r5, [r0, #13]
	ldrb	r4, [r0, #14]
	ldrb	r3, [r0, #12]
	ldrb	r6, [r0, #15]
	movw	r0, :lower16:SubRijndaels.s
	movt	r0, :upper16:SubRijndaels.s
	ldrb	r2, [r0, r5]
	ldrb	r7, [r0, r4]
	orr.w	r5, r3, r5, lsl #8
	ldrb	r3, [r0, r3]
	orr.w	r5, r5, r4, lsl #16
	orr.w	r12, r5, r6, lsl #24
	str.w	r12, [r1, #12]
	orr.w	r2, r2, r7, lsl #8
	ldrb	r7, [r0, r6]
	orr.w	r2, r2, r7, lsl #16
	orr.w	r2, r2, r3, lsl #24
	eor.w	r2, r2, lr
	eor	r3, r2, #1
	eor.w	r2, r8, r3
	str	r3, [r1, #16]
	str	r2, [r1, #20]
	eor.w	r2, r2, r9
	eor.w	r7, r12, r2
	ubfx	r6, r7, #16, #8
	ubfx	r5, r7, #8, #8
	strd	r2, r7, [r1, #24]
	ldrb	r6, [r0, r6]
	ldrb	r5, [r0, r5]
	orr.w	r6, r5, r6, lsl #8
	lsrs	r5, r7, #24
	uxtb	r7, r7
	ldrb	r5, [r0, r5]
	ldrb	r7, [r0, r7]
	orr.w	r6, r6, r5, lsl #16
	orr.w	r7, r6, r7, lsl #24
	eor	r7, r7, #2
	eor.w	r6, r3, r7
	eor.w	r3, r8, r7
	eor.w	r7, r2, r3
	eor.w	r4, r12, r3
	str	r6, [r1, #32]
	str	r3, [r1, #36]
	str	r7, [r1, #40]
	ubfx	r7, r4, #16, #8
	ubfx	r5, r4, #8, #8
	str	r4, [r1, #44]
	ldrb	r7, [r0, r7]
	ldrb	r5, [r0, r5]
	orr.w	r7, r5, r7, lsl #8
	lsrs	r5, r4, #24
	ldrb	r5, [r0, r5]
	orr.w	r7, r7, r5, lsl #16
	uxtb	r5, r4
	ldrb	r5, [r0, r5]
	orr.w	r7, r7, r5, lsl #24
	eors	r7, r6
	eor	r5, r7, #4
	eor.w	lr, r2, r5
	eor.w	r7, r3, r5
	str	r5, [r1, #48]
	eor.w	r2, r4, lr
	str	r7, [r1, #52]
	ubfx	r4, r2, #16, #8
	ubfx	r6, r2, #8, #8
	strd	lr, r2, [r1, #56]
	ldrb	r4, [r0, r4]
	ldrb	r6, [r0, r6]
	orr.w	r4, r6, r4, lsl #8
	lsrs	r6, r2, #24
	uxtb	r2, r2
	ldrb	r6, [r0, r6]
	ldrb	r2, [r0, r2]
	orr.w	r4, r4, r6, lsl #16
	orr.w	r2, r4, r2, lsl #24
	eor	r2, r2, #8
	eors	r3, r2
	eor.w	r4, r5, r2
	eor.w	r2, r2, r12
	eor.w	r5, lr, r3
	str	r4, [r1, #64]
	str	r3, [r1, #68]
	str	r5, [r1, #72]
	str	r2, [r1, #76]
	ubfx	r7, r2, #16, #8
	ubfx	r6, r2, #8, #8
	ldrb	r7, [r0, r7]
	ldrb	r6, [r0, r6]
	orr.w	r7, r6, r7, lsl #8
	lsrs	r6, r2, #24
	ldrb	r6, [r0, r6]
	orr.w	r7, r7, r6, lsl #16
	uxtb	r6, r2
	ldrb	r6, [r0, r6]
	orr.w	r7, r7, r6, lsl #24
	eors	r7, r4
	eor	r4, r7, #16
	eor.w	r7, r3, r4
	eor.w	r12, lr, r4
	str	r4, [r1, #80]
	str	r7, [r1, #84]
	eor.w	r7, r2, r12
	ubfx	r6, r7, #16, #8
	ubfx	r5, r7, #8, #8
	strd	r12, r7, [r1, #88]
	ldrb	r6, [r0, r6]
	ldrb	r5, [r0, r5]
	orr.w	r6, r5, r6, lsl #8
	lsrs	r5, r7, #24
	uxtb	r7, r7
	ldrb	r5, [r0, r5]
	ldrb	r7, [r0, r7]
	orr.w	r6, r6, r5, lsl #16
	orr.w	r7, r6, r7, lsl #24
	eor	r7, r7, #32
	eors	r3, r7
	eor.w	r6, r4, r7
	eor.w	r7, r12, r3
	str	r6, [r1, #96]
	str	r3, [r1, #100]
	str	r7, [r1, #104]
	eor.w	r7, r2, r3
	ubfx	r5, r7, #16, #8
	ubfx	r4, r7, #8, #8
	str	r7, [r1, #108]
	ldrb	r5, [r0, r5]
	ldrb	r4, [r0, r4]
	orr.w	r5, r4, r5, lsl #8
	lsrs	r4, r7, #24
	ldrb	r4, [r0, r4]
	orr.w	r5, r5, r4, lsl #16
	uxtb	r4, r7
	ldrb	r4, [r0, r4]
	orr.w	r5, r5, r4, lsl #24
	eors	r6, r5
	eor	r6, r6, #64
	eor.w	r12, r12, r6
	eor.w	r5, r3, r6
	str	r6, [r1, #112]
	eor.w	r7, r7, r12
	str	r5, [r1, #116]
	ubfx	r5, r7, #16, #8
	ubfx	r4, r7, #8, #8
	strd	r12, r7, [r1, #120]
	ldrb	r5, [r0, r5]
	ldrb	r4, [r0, r4]
	orr.w	r5, r4, r5, lsl #8
	lsrs	r4, r7, #24
	uxtb	r7, r7
	ldrb	r4, [r0, r4]
	ldrb	r7, [r0, r7]
	orr.w	r5, r5, r4, lsl #16
	orr.w	r7, r5, r7, lsl #24
	eor	r7, r7, #128
	eors	r3, r7
	eors	r6, r7
	eors	r2, r7
	eor.w	r5, r12, r3
	str.w	r6, [r1, #128]
	str.w	r3, [r1, #132]
	str.w	r5, [r1, #136]
	str.w	r2, [r1, #140]
	ubfx	r7, r2, #16, #8
	ubfx	r5, r2, #8, #8
	ldrb	r7, [r0, r7]
	ldrb	r5, [r0, r5]
	orr.w	r7, r5, r7, lsl #8
	lsrs	r5, r2, #24
	ldrb	r5, [r0, r5]
	orr.w	r7, r7, r5, lsl #16
	uxtb	r5, r2
	ldrb	r5, [r0, r5]
	orr.w	r7, r7, r5, lsl #24
	eors	r7, r6
	eor	r7, r7, #27
	eor.w	r6, r3, r7
	str.w	r7, [r1, #144]
	str.w	r6, [r1, #148]
	eor.w	r6, r12, r7
	eor.w	r5, r2, r6
	ubfx	r4, r5, #16, #8
	ldrb.w	r12, [r0, r4]
	ubfx	r4, r5, #8, #8
	strd	r6, r5, [r1, #152]
	ldrb	r4, [r0, r4]
	orr.w	r12, r4, r12, lsl #8
	lsrs	r4, r5, #24
	uxtb	r5, r5
	ldrb	r4, [r0, r4]
	ldrb	r0, [r0, r5]
	orr.w	r4, r12, r4, lsl #16
	orr.w	r0, r4, r0, lsl #24
	eor	r0, r0, #54
	eors	r7, r0
	eors	r0, r3
	eor.w	r3, r6, r0
	eors	r2, r0
	strd	r7, r0, [r1, #160]
	strd	r3, r2, [r1, #168]
	pop.w	{r4, r5, r6, r7, r8, r9, pc}
.Lfunc_end9:
	.size	KeyExpansion, .Lfunc_end9-KeyExpansion
	.cantunwind
	.fnend

	.globl	SubWord
	.align	1
	.type	SubWord,%function
	.code	16                      @ @SubWord
	.thumb_func
SubWord:
	.fnstart
@ BB#0:                                 @ %entry
	movw	r2, :lower16:SubRijndaels.s
	ubfx	r1, r0, #8, #8
	uxtb	r3, r0
	movt	r2, :upper16:SubRijndaels.s
	ldrb	r1, [r2, r1]
	ldrb	r3, [r2, r3]
	orr.w	r1, r3, r1, lsl #8
	ubfx	r3, r0, #16, #8
	lsrs	r0, r0, #24
	ldrb	r3, [r2, r3]
	ldrb	r0, [r2, r0]
	orr.w	r1, r1, r3, lsl #16
	orr.w	r0, r1, r0, lsl #24
	bx	lr
.Lfunc_end10:
	.size	SubWord, .Lfunc_end10-SubWord
	.cantunwind
	.fnend

	.globl	RotWord
	.align	1
	.type	RotWord,%function
	.code	16                      @ @RotWord
	.thumb_func
RotWord:
	.fnstart
@ BB#0:                                 @ %entry
	ror.w	r1, r0, #8
	pkhtb	r0, r1, r0, asr #8
	bx	lr
.Lfunc_end11:
	.size	RotWord, .Lfunc_end11-RotWord
	.cantunwind
	.fnend

	.globl	SubRijndaels
	.align	1
	.type	SubRijndaels,%function
	.code	16                      @ @SubRijndaels
	.thumb_func
SubRijndaels:
	.fnstart
@ BB#0:                                 @ %entry
	movw	r1, :lower16:SubRijndaels.s
	movt	r1, :upper16:SubRijndaels.s
	ldrb	r0, [r1, r0]
	bx	lr
.Lfunc_end12:
	.size	SubRijndaels, .Lfunc_end12-SubRijndaels
	.cantunwind
	.fnend
    
	.globl	__unnamed_1
	.align	1
	.type	__unnamed_1,%function
	.code	16                      @ @101
	.thumb_func
__unnamed_1:
.Lfunc_begin13:
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
.Ltmp343:
	.cfi_def_cfa_offset 32
.Ltmp344:
	.cfi_offset lr, -4
.Ltmp345:
	.cfi_offset r10, -8
.Ltmp346:
	.cfi_offset r9, -12
.Ltmp347:
	.cfi_offset r8, -16
.Ltmp348:
	.cfi_offset r7, -20
.Ltmp349:
	.cfi_offset r6, -24
.Ltmp350:
	.cfi_offset r5, -28
.Ltmp351:
	.cfi_offset r4, -32
	.pad	#32
	sub	sp, #32
.Ltmp352:
	.cfi_def_cfa_offset 64
	movw	r9, :lower16:POLYTABLE
	movw	r10, :lower16:POLYBUFFER
	mov.w	r8, #0
	movs	r0, #101
	movt	r9, :upper16:POLYTABLE
	movt	r10, :upper16:POLYBUFFER
	str.w	r8, [sp, #28]
	str	r0, [sp, #24]
	b	.LBB13_2
.LBB13_1:                               @ %for_levels.inc
                                        @   in Loop: Header=BB13_2 Depth=1
	ldr	r0, [sp, #28]
	adds	r0, #1
	str	r0, [sp, #28]
.LBB13_2:                               @ %for_levels.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_6 Depth 2
                                        @     Child Loop BB13_9 Depth 2
                                        @     Child Loop BB13_12 Depth 2
	ldrd	r0, r1, [sp, #24]
	cmp	r1, r0
	bge	.LBB13_14
@ BB#3:                                 @ %for_levels.body
                                        @   in Loop: Header=BB13_2 Depth=1
	ldr	r0, [sp, #28]
	ldr.w	r7, [r9, r0, lsl #3]
	cmp	r7, #2
	blt	.LBB13_1
@ BB#4:                                 @ %for_blocks_check.init
                                        @   in Loop: Header=BB13_2 Depth=1
	ldr	r1, [sp, #28]
	subs	r0, r7, #1
	str	r0, [sp, #20]
	add.w	r1, r9, r1, lsl #3
	ldr	r6, [r1, #4]
	ldr	r5, [r6]
	b	.LBB13_6
.LBB13_5:                               @ %for_blocks_check.inc
                                        @   in Loop: Header=BB13_6 Depth=2
	ldr	r1, [sp, #20]
	subs	r1, #1
	str	r1, [sp, #20]
.LBB13_6:                               @ %for_blocks_check.cond
                                        @   Parent Loop BB13_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [sp, #20]
	cmp	r1, #1
	blt	.LBB13_9
@ BB#7:                                 @ %for_blocks_check.body
                                        @   in Loop: Header=BB13_6 Depth=2
	ldr	r1, [sp, #20]
	ldr.w	r2, [r6, r1, lsl #3]
	add.w	r1, r6, r1, lsl #3
	ldr	r1, [r1, #4]
	subs	r1, r1, r2
	cmp	r1, #0
	bge	.LBB13_5
	b	.LBB13_1
.LBB13_8:                               @ %for_blocks.body
                                        @   in Loop: Header=BB13_9 Depth=2
	bl	randsrc
	ldr	r1, [sp, #20]
	adds	r1, #1
	bl	__aeabi_idivmod
	ldr	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr.w	r1, [r6, r0, lsl #3]
	add.w	r0, r6, r0, lsl #3
	str	r1, [sp, #8]
	ldr	r0, [r0, #4]
	str	r0, [sp, #12]
	ldrd	r1, r0, [sp, #16]
	ldr.w	r2, [r6, r1, lsl #3]
	add.w	r1, r6, r1, lsl #3
	str.w	r2, [r6, r0, lsl #3]
	add.w	r0, r6, r0, lsl #3
	ldr	r1, [r1, #4]
	str	r1, [r0, #4]
	ldr	r0, [sp, #16]
	ldrd	r1, r2, [sp, #8]
	str.w	r1, [r6, r0, lsl #3]
	add.w	r0, r6, r0, lsl #3
	str	r2, [r0, #4]
	ldr	r0, [sp, #20]
	subs	r0, #1
.LBB13_9:                               @ %for_blocks.init
                                        @   Parent Loop BB13_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #1
	bge	.LBB13_8
@ BB#10:                                @ %for_blocks2.init
                                        @   in Loop: Header=BB13_2 Depth=1
	ldr	r0, [sp, #28]
	str.w	r8, [sp, #4]
	add.w	r0, r9, r0, lsl #3
	ldr	r4, [r0, #4]
	b	.LBB13_12
.LBB13_11:                              @ %for_blocks2.body
                                        @   in Loop: Header=BB13_12 Depth=2
	ldr	r0, [sp, #20]
	ldr.w	r1, [r4, r0, lsl #3]
	add.w	r0, r4, r0, lsl #3
	ldr	r0, [r0, #4]
	subs	r6, r0, r1
	ldr	r0, [sp, #4]
	mov	r2, r6
	add	r0, r10
	bl	__aeabi_memcpy
	ldr	r0, [sp, #4]
	adds	r1, r0, r6
	add	r0, r5
	str	r1, [sp, #4]
	ldr	r1, [sp, #20]
	str.w	r0, [r4, r1, lsl #3]
	add	r0, r6
	ldr	r1, [sp, #20]
	add.w	r1, r4, r1, lsl #3
	str	r0, [r1, #4]
	ldr	r0, [sp, #20]
	adds	r0, #1
	str	r0, [sp, #20]
.LBB13_12:                              @ %for_blocks2.cond
                                        @   Parent Loop BB13_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #20]
	cmp	r0, r7
	blt	.LBB13_11
@ BB#13:                                @ %for_blocks2.end
                                        @   in Loop: Header=BB13_2 Depth=1
	ldr	r2, [sp, #4]
	mov	r0, r5
	mov	r1, r10
	bl	__aeabi_memcpy
	b	.LBB13_1
.LBB13_14:                              @ %for_levels.end
	movs	r0, #0
	add	sp, #32
	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end13:
	.size	__unnamed_1, .Lfunc_end13-__unnamed_1
	.cfi_endproc
	.fnend

	.type	MixColumns.gmul2,%object @ @MixColumns.gmul2
	.section	.rodata,"a",%progbits
MixColumns.gmul2:
	.ascii	"\000\002\004\006\b\n\f\016\020\022\024\026\030\032\034\036 \"$&(*,.02468:<>@BDFHJLNPRTVXZ\\^`bdfhjlnprtvxz|~\200\202\204\206\210\212\214\216\220\222\224\226\230\232\234\236\240\242\244\246\250\252\254\256\260\262\264\266\270\272\274\276\300\302\304\306\310\312\314\316\320\322\324\326\330\332\334\336\340\342\344\346\350\352\354\356\360\362\364\366\370\372\374\376\033\031\037\035\023\021\027\025\013\t\017\r\003\001\007\005;9?=3175+)/-#!'%[Y_]SQWUKIOMCAGE{y\177}sqwukiomcage\233\231\237\235\223\221\227\225\213\211\217\215\203\201\207\205\273\271\277\275\263\261\267\265\253\251\257\255\243\241\247\245\333\331\337\335\323\321\327\325\313\311\317\315\303\301\307\305\373\371\377\375\363\361\367\365\353\351\357\355\343\341\347\345"
	.size	MixColumns.gmul2, 256

	.type	MixColumns.gmul3,%object @ @MixColumns.gmul3
MixColumns.gmul3:
	.ascii	"\000\003\006\005\f\017\n\t\030\033\036\035\024\027\022\0210365<?:9(+.-$'\"!`cfelojix{~}twrqPSVU\\_ZYHKNMDGBA\300\303\306\305\314\317\312\311\330\333\336\335\324\327\322\321\360\363\366\365\374\377\372\371\350\353\356\355\344\347\342\341\240\243\246\245\254\257\252\251\270\273\276\275\264\267\262\261\220\223\226\225\234\237\232\231\210\213\216\215\204\207\202\201\233\230\235\236\227\224\221\222\203\200\205\206\217\214\211\212\253\250\255\256\247\244\241\242\263\260\265\266\277\274\271\272\373\370\375\376\367\364\361\362\343\340\345\346\357\354\351\352\313\310\315\316\307\304\301\302\323\320\325\326\337\334\331\332[X]^WTQRC@EFOLIJkhmngdabspuv\177|yz;8=>7412# %&/,)*\013\b\r\016\007\004\001\002\023\020\025\026\037\034\031\032"
	.size	MixColumns.gmul3, 256

	.type	SubRijndaels.s,%object  @ @SubRijndaels.s
SubRijndaels.s:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	SubRijndaels.s, 256

	.globl	__u_MC_1
	.align	2
__u_MC_1:
	.long	.M_MC_1_0
	.long	.eM_MC_1_0
	.long	.M_MC_1_1
	.long	.eM_MC_1_1
	.long	.M_MC_1_2
	.long	.eM_MC_1_2
	.long	.M_MC_1_3
	.long	.eM_MC_1_3
	.size	__u_MC_1, 32

	.globl	__u_MC_0
	.align	2
__u_MC_0:
	.long	.M_MC_0_0
	.long	.eM_MC_0_0
	.size	__u_MC_0, 8

	.globl	__u_SR_0
	.align	2
__u_SR_0:
	.long	.M_SR_0_0
	.long	.eM_SR_0_0
	.long	.M_SR_0_1
	.long	.eM_SR_0_1
	.long	.M_SR_0_2
	.long	.eM_SR_0_2
	.size	__u_SR_0, 24

	.globl	__u_SR_1
	.align	2
__u_SR_1:
	.long	.M_SR_1_0
	.long	.eM_SR_1_0
	.size	__u_SR_1, 8

	.globl	__u_ARK_0
	.align	2
__u_ARK_0:
	.long	.M_ARK_0_0
	.long	.eM_ARK_0_0
	.long	.M_ARK_0_1
	.long	.eM_ARK_0_1
	.long	.M_ARK_0_2
	.long	.eM_ARK_0_2
	.long	.M_ARK_0_3
	.long	.eM_ARK_0_3
	.size	__u_ARK_0, 32

	.globl	__u_ARK_1
	.align	2
__u_ARK_1:
	.long	.M_ARK_1_0
	.long	.eM_ARK_1_0
	.size	__u_ARK_1, 8

	.globl	__u_MC_2
	.align	2
__u_MC_2:
	.long	.M_MC_2_0
	.long	.eM_MC_2_0
	.size	__u_MC_2, 8

	.globl	__u_SB_2
	.align	2
__u_SB_2:
	.long	.M_SB_2_0
	.long	.eM_SB_2_0
	.size	__u_SB_2, 8

	.globl	__u_SB_0
	.align	2
__u_SB_0:
	.long	.M_SB_0_0
	.long	.eM_SB_0_0
	.size	__u_SB_0, 8

	.globl	__u_SB_1
	.align	2
__u_SB_1:
	.long	.M_SB_1_0
	.long	.eM_SB_1_0
	.long	.M_SB_1_1
	.long	.eM_SB_1_1
	.long	.M_SB_1_2
	.long	.eM_SB_1_2
	.long	.M_SB_1_3
	.long	.eM_SB_1_3
	.long	.M_SB_1_4
	.long	.eM_SB_1_4
	.long	.M_SB_1_5
	.long	.eM_SB_1_5
	.long	.M_SB_1_6
	.long	.eM_SB_1_6
	.long	.M_SB_1_7
	.long	.eM_SB_1_7
	.long	.M_SB_1_8
	.long	.eM_SB_1_8
	.long	.M_SB_1_9
	.long	.eM_SB_1_9
	.long	.M_SB_1_10
	.long	.eM_SB_1_10
	.long	.M_SB_1_11
	.long	.eM_SB_1_11
	.long	.M_SB_1_12
	.long	.eM_SB_1_12
	.long	.M_SB_1_13
	.long	.eM_SB_1_13
	.long	.M_SB_1_14
	.long	.eM_SB_1_14
	.long	.M_SB_1_15
	.long	.eM_SB_1_15
	.size	__u_SB_1, 128

POLYTABLE:
	.long	4
	.long	__u_MC_1
	.long	1
	.long	__u_MC_0
	.long	3
	.long	__u_SR_0
	.long	1
	.long	__u_SR_1
	.long	4
	.long	__u_ARK_0
	.long	1
	.long	__u_ARK_1
	.long	1
	.long	__u_MC_2
	.long	1
	.long	__u_SB_2
	.long	1
	.long	__u_SB_0
	.long	16
	.long	__u_SB_1
    
	.type	POLYBUFFER,%object      @ @POLYBUFFER
	.bss
	.globl	POLYBUFFER
	.align	2
POLYBUFFER:
	.zero	400
	.size	POLYBUFFER, 400

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",%progbits
