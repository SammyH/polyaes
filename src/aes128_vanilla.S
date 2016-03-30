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
	.file	1 "aes128.c"
	.file	2 "D:\\Programs\\GNU Tools ARM Embedded\\5.2 2015q4\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file	3 "D:\\Programs\\GNU Tools ARM Embedded\\5.2 2015q4\\arm-none-eabi\\include\\sys\\_stdint.h"
	.globl	polymorph
	.align	1
	.type	polymorph,%function
	.code	16                      @ @polymorph
	.thumb_func
polymorph:
.Lfunc_begin0:
	.loc	1 23 0                  @ aes128.c:23:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.loc	1 24 5 prologue_end     @ aes128.c:24:5
	bx	lr
.Ltmp0:
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
.Lfunc_begin1:
	.loc	1 28 0                  @ aes128.c:28:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.loc	1 37 12 prologue_end    @ aes128.c:37:12
	.save	{r7, lr}
	push	{r7, lr}
.Ltmp1:
	.cfi_def_cfa_offset 8
.Ltmp2:
	.cfi_offset lr, -4
.Ltmp3:
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
.Ltmp4:
	.cfi_def_cfa_register r7
	bl	rand
	.loc	1 37 5 is_stmt 0        @ aes128.c:37:5
	pop	{r7, pc}
.Ltmp5:
.Lfunc_end1:
	.size	randsrc, .Lfunc_end1-randsrc
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	AllocateKeySchedule
	.align	1
	.type	AllocateKeySchedule,%function
	.code	16                      @ @AllocateKeySchedule
	.thumb_func
AllocateKeySchedule:
.Lfunc_begin2:
	.loc	1 41 0 is_stmt 1        @ aes128.c:41:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.loc	1 42 20 prologue_end    @ aes128.c:42:20
	.save	{r7, lr}
	push	{r7, lr}
.Ltmp6:
	.cfi_def_cfa_offset 8
.Ltmp7:
	.cfi_offset lr, -4
.Ltmp8:
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
.Ltmp9:
	.cfi_def_cfa_register r7
	movs	r0, #176
	bl	malloc
	.loc	1 42 2 is_stmt 0        @ aes128.c:42:2
	pop	{r7, pc}
.Ltmp10:
.Lfunc_end2:
	.size	AllocateKeySchedule, .Lfunc_end2-AllocateKeySchedule
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	AllocateData
	.align	1
	.type	AllocateData,%function
	.code	16                      @ @AllocateData
	.thumb_func
AllocateData:
.Lfunc_begin3:
	.loc	1 45 0 is_stmt 1        @ aes128.c:45:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset lr, -4
.Ltmp13:
	.cfi_offset r7, -8
.Ltmp14:
	.cfi_offset r5, -12
.Ltmp15:
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
.Ltmp16:
	.cfi_def_cfa r7, 8
	.pad	#32
	sub	sp, #32
	str	r0, [sp, #28]
	strd	r2, r1, [sp, #20]
	.loc	1 46 6 prologue_end     @ aes128.c:46:6
.Ltmp17:
	movs	r0, #16
	str	r0, [sp, #16]
	.loc	1 47 19                 @ aes128.c:47:19
	ldr	r0, [sp, #24]
	.loc	1 48 22                 @ aes128.c:48:22
	ldr	r4, [sp, #16]
	.loc	1 47 35                 @ aes128.c:47:35
	adds	r0, #15
	.loc	1 47 40 is_stmt 0       @ aes128.c:47:40
	asrs	r1, r0, #31
	add.w	r0, r0, r1, lsr #28
	.loc	1 48 39 is_stmt 1       @ aes128.c:48:39
	mov	r1, r4
	.loc	1 47 40                 @ aes128.c:47:40
	asrs	r0, r0, #4
	.loc	1 47 6 is_stmt 0        @ aes128.c:47:6
	str	r0, [sp, #12]
	.loc	1 48 35 is_stmt 1       @ aes128.c:48:35
	ldr	r0, [sp, #24]
	.loc	1 48 39 is_stmt 0       @ aes128.c:48:39
	bl	__aeabi_idivmod
	.loc	1 48 32                 @ aes128.c:48:32
	subs	r0, r4, r1
	.loc	1 48 6                  @ aes128.c:48:6
	str	r0, [sp, #8]
	.loc	1 49 39 is_stmt 1       @ aes128.c:49:39
	ldr	r0, [sp, #12]
	.loc	1 49 48 is_stmt 0       @ aes128.c:49:48
	lsls	r0, r0, #2
	.loc	1 49 32                 @ aes128.c:49:32
	bl	malloc
	.loc	1 49 12                 @ aes128.c:49:12
	str	r0, [sp, #4]
	movs	r0, #0
	b	.LBB3_2
.LBB3_1:                                @ %for.body
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 53 10 is_stmt 1       @ aes128.c:53:10
.Ltmp18:
	ldrd	r2, r1, [sp]
	.loc	1 53 13 is_stmt 0       @ aes128.c:53:13
	str.w	r0, [r1, r2, lsl #2]
	.loc	1 54 22 is_stmt 1       @ aes128.c:54:22
	ldr	r0, [sp, #28]
	.loc	1 54 30 is_stmt 0       @ aes128.c:54:30
	ldr	r2, [sp, #16]
	.loc	1 54 17                 @ aes128.c:54:17
	ldr	r3, [sp]
	.loc	1 54 22                 @ aes128.c:54:22
	mla	r1, r3, r2, r0
	.loc	1 54 10                 @ aes128.c:54:10
	ldr	r0, [sp, #4]
	ldr.w	r0, [r0, r3, lsl #2]
	.loc	1 54 3                  @ aes128.c:54:3
	bl	__aeabi_memcpy
.Ltmp19:
	.loc	1 51 36 is_stmt 1       @ aes128.c:51:36
	ldr	r0, [sp]
	adds	r0, #1
.Ltmp20:
.LBB3_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 51 11 is_stmt 0       @ aes128.c:51:11
	str	r0, [sp]
	.loc	1 51 18 discriminator 2 @ aes128.c:51:18
.Ltmp21:
	ldr	r4, [sp]
.Ltmp22:
	.loc	1 51 22                 @ aes128.c:51:22
	ldrd	r1, r0, [sp, #12]
	.loc	1 51 31                 @ aes128.c:51:31
	subs	r5, r1, #1
	.loc	1 53 25 is_stmt 1       @ aes128.c:53:25
.Ltmp23:
	bl	malloc
.Ltmp24:
	.loc	1 51 2                  @ aes128.c:51:2
	cmp	r4, r5
	blt	.LBB3_1
.Ltmp25:
@ BB#3:                                 @ %for.end
	.loc	1 56 9                  @ aes128.c:56:9
	ldr	r1, [sp, #12]
	.loc	1 56 2 is_stmt 0        @ aes128.c:56:2
	ldr	r2, [sp, #4]
	add.w	r1, r2, r1, lsl #2
	.loc	1 56 24                 @ aes128.c:56:24
	str	r0, [r1, #-4]
	.loc	1 57 16 is_stmt 1       @ aes128.c:57:16
	ldr	r0, [sp, #12]
	.loc	1 57 9 is_stmt 0        @ aes128.c:57:9
	ldr	r1, [sp, #4]
	add.w	r0, r1, r0, lsl #2
	.loc	1 57 35                 @ aes128.c:57:35
	ldr	r1, [sp, #16]
	.loc	1 57 9                  @ aes128.c:57:9
	ldr	r0, [r0, #-4]
	.loc	1 57 2                  @ aes128.c:57:2
	bl	__aeabi_memclr
	.loc	1 58 16 is_stmt 1       @ aes128.c:58:16
	ldr	r0, [sp, #12]
	.loc	1 58 33 is_stmt 0       @ aes128.c:58:33
	ldr	r1, [sp, #28]
	.loc	1 58 55                 @ aes128.c:58:55
	ldr	r2, [sp, #16]
	.loc	1 58 26                 @ aes128.c:58:26
	subs	r0, #1
	.loc	1 58 33                 @ aes128.c:58:33
	mla	r1, r0, r2, r1
	.loc	1 58 9                  @ aes128.c:58:9
	ldr	r2, [sp, #4]
	ldr.w	r0, [r2, r0, lsl #2]
	.loc	1 58 67                 @ aes128.c:58:67
	ldr	r2, [sp, #8]
	.loc	1 58 2                  @ aes128.c:58:2
	bl	__aeabi_memcpy
	.loc	1 60 9 is_stmt 1        @ aes128.c:60:9
	ldr	r0, [sp, #4]
	.loc	1 60 2 is_stmt 0        @ aes128.c:60:2
	add	sp, #32
	pop	{r4, r5, r7, pc}
.Ltmp26:
.Lfunc_end3:
	.size	AllocateData, .Lfunc_end3-AllocateData
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	Cipher
	.align	1
	.type	Cipher,%function
	.code	16                      @ @Cipher
	.thumb_func
Cipher:
.Lfunc_begin4:
	.loc	1 64 0 is_stmt 1        @ aes128.c:64:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
.Ltmp27:
	.cfi_def_cfa_offset 20
.Ltmp28:
	.cfi_offset lr, -4
.Ltmp29:
	.cfi_offset r7, -8
.Ltmp30:
	.cfi_offset r6, -12
.Ltmp31:
	.cfi_offset r5, -16
.Ltmp32:
	.cfi_offset r4, -20
	.setfp	r7, sp, #12
	add	r7, sp, #12
.Ltmp33:
	.cfi_def_cfa r7, 8
	.pad	#20
	sub	sp, #20
	str	r0, [sp, #16]
	movs	r0, #16
	strd	r2, r1, [sp, #8]
	.loc	1 65 29 prologue_end    @ aes128.c:65:29
.Ltmp34:
	bl	malloc
	.loc	1 66 16                 @ aes128.c:66:16
	ldr	r1, [sp, #16]
	.loc	1 65 11                 @ aes128.c:65:11
	str	r0, [sp, #4]
	.loc	1 66 2                  @ aes128.c:66:2
	ldrb	r3, [r1, #13]
	strb	r3, [r0, #13]
	ldrb.w	lr, [r1, #9]
	strb.w	lr, [r0, #9]
	ldrb.w	r12, [r1, #5]
	strb.w	r12, [r0, #5]
	ldrb	r2, [r1]
	ldrb	r4, [r1, #1]
	ldrb	r5, [r1, #2]
	ldrb	r6, [r1, #3]
	strb	r6, [r0, #3]
	strb	r5, [r0, #2]
	strb	r4, [r0, #1]
	strb	r2, [r0]
	mov	r2, r1
	ldrb	r4, [r2, #12]!
	orr.w	r3, r4, r3, lsl #8
	ldrb	r4, [r2, #2]
	ldrb	r2, [r2, #3]
	orr.w	r5, r4, r2, lsl #8
	orr.w	r3, r3, r5, lsl #16
	add.w	r5, r0, #12
	strb	r3, [r5], #2
	strb	r2, [r5, #1]
	strb	r4, [r5]
	mov	r2, r1
	ldrb	r3, [r2, #8]!
	ldrb	r6, [r2, #2]
	ldrb	r2, [r2, #3]
	orr.w	r3, r3, lr, lsl #8
	orr.w	r5, r6, r2, lsl #8
	orr.w	r3, r3, r5, lsl #16
	add.w	r5, r0, #8
	adds	r0, #4
	strb	r3, [r5], #2
	strb	r2, [r5, #1]
	strb	r6, [r5]
	ldrb	r2, [r1, #4]!
	ldrb	r3, [r1, #2]
	ldrb	r1, [r1, #3]
	orr.w	r2, r2, r12, lsl #8
	orr.w	r6, r3, r1, lsl #8
	orr.w	r2, r2, r6, lsl #16
	strb	r2, [r0], #2
	strb	r1, [r0, #1]
	strb	r3, [r0]
	.loc	1 68 14                 @ aes128.c:68:14
	ldrd	r0, r1, [sp, #4]
	.loc	1 68 2 is_stmt 0        @ aes128.c:68:2
	bl	AddRoundKey
	movs	r0, #1
	b	.LBB4_2
.LBB4_1:                                @ %for.body
                                        @   in Loop: Header=BB4_2 Depth=1
	.loc	1 74 3 is_stmt 1        @ aes128.c:74:3
.Ltmp35:
	bl	MixColumns
	.loc	1 75 25                 @ aes128.c:75:25
	ldr	r0, [sp]
	.loc	1 75 23 is_stmt 0       @ aes128.c:75:23
	ldr	r1, [sp, #8]
	add.w	r1, r1, r0, lsl #4
	.loc	1 75 15                 @ aes128.c:75:15
	ldr	r0, [sp, #4]
	.loc	1 75 3                  @ aes128.c:75:3
	bl	AddRoundKey
.Ltmp36:
	.loc	1 70 39 is_stmt 1       @ aes128.c:70:39
	ldr	r0, [sp]
	adds	r0, #1
.Ltmp37:
.LBB4_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 70 11 is_stmt 0       @ aes128.c:70:11
	str	r0, [sp]
	.loc	1 70 22 discriminator 2 @ aes128.c:70:22
.Ltmp38:
	ldrd	r4, r0, [sp]
.Ltmp39:
	.loc	1 72 3 is_stmt 1        @ aes128.c:72:3
	bl	SubBytes
	.loc	1 73 13                 @ aes128.c:73:13
	ldr	r0, [sp, #4]
	.loc	1 73 3 is_stmt 0        @ aes128.c:73:3
	bl	ShiftRows
	.loc	1 74 14 is_stmt 1       @ aes128.c:74:14
	ldr	r0, [sp, #4]
.Ltmp40:
	.loc	1 70 2                  @ aes128.c:70:2
	cmp	r4, #9
	ble	.LBB4_1
.Ltmp41:
@ BB#3:                                 @ %for.end
	.loc	1 80 22                 @ aes128.c:80:22
	ldr	r1, [sp, #8]
	adds	r1, #160
	.loc	1 80 2 is_stmt 0        @ aes128.c:80:2
	bl	AddRoundKey
	.loc	1 82 14 is_stmt 1       @ aes128.c:82:14
	ldr	r1, [sp, #4]
	.loc	1 82 9 is_stmt 0        @ aes128.c:82:9
	ldr	r0, [sp, #12]
	.loc	1 82 2                  @ aes128.c:82:2
	ldrb	r3, [r1, #13]
	strb	r3, [r0, #13]
	ldrb.w	lr, [r1, #9]
	strb.w	lr, [r0, #9]
	ldrb.w	r12, [r1, #5]
	strb.w	r12, [r0, #5]
	ldrb	r5, [r1]
	ldrb	r4, [r1, #1]
	ldrb	r2, [r1, #2]
	ldrb	r6, [r1, #3]
	strb	r6, [r0, #3]
	strb	r2, [r0, #2]
	strb	r4, [r0, #1]
	strb	r5, [r0]
	mov	r2, r1
	ldrb	r4, [r2, #12]!
	orr.w	r3, r4, r3, lsl #8
	ldrb	r4, [r2, #2]
	ldrb	r2, [r2, #3]
	orr.w	r5, r4, r2, lsl #8
	orr.w	r3, r3, r5, lsl #16
	add.w	r5, r0, #12
	strb	r3, [r5], #2
	strb	r2, [r5, #1]
	strb	r4, [r5]
	mov	r2, r1
	ldrb	r3, [r2, #8]!
	ldrb	r6, [r2, #2]
	ldrb	r2, [r2, #3]
	orr.w	r3, r3, lr, lsl #8
	orr.w	r5, r6, r2, lsl #8
	orr.w	r3, r3, r5, lsl #16
	add.w	r5, r0, #8
	adds	r0, #4
	strb	r3, [r5], #2
	strb	r2, [r5, #1]
	strb	r6, [r5]
	ldrb	r2, [r1, #4]!
	ldrb	r3, [r1, #2]
	ldrb	r1, [r1, #3]
	orr.w	r2, r2, r12, lsl #8
	orr.w	r6, r3, r1, lsl #8
	orr.w	r2, r2, r6, lsl #16
	strb	r2, [r0], #2
	strb	r1, [r0, #1]
	strb	r3, [r0]
	.loc	1 83 7 is_stmt 1        @ aes128.c:83:7
	ldr	r0, [sp, #4]
	.loc	1 83 2 is_stmt 0        @ aes128.c:83:2
	bl	free
	.loc	1 84 1 is_stmt 1        @ aes128.c:84:1
	add	sp, #20
	pop	{r4, r5, r6, r7, pc}
.Ltmp42:
.Lfunc_end4:
	.size	Cipher, .Lfunc_end4-Cipher
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	AddRoundKey
	.align	1
	.type	AddRoundKey,%function
	.code	16                      @ @AddRoundKey
	.thumb_func
AddRoundKey:
.Lfunc_begin5:
	.loc	1 130 0                 @ aes128.c:130:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.pad	#16
	sub	sp, #16
.Ltmp43:
	.cfi_def_cfa_offset 16
	strd	r1, r0, [sp, #8]
	movs	r0, #0
.LBB5_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 132 11 prologue_end   @ aes128.c:132:11
.Ltmp44:
	str	r0, [sp, #4]
	.loc	1 132 18 is_stmt 0 discriminator 2 @ aes128.c:132:18
.Ltmp45:
	ldr	r0, [sp, #4]
.Ltmp46:
	.loc	1 132 2                 @ aes128.c:132:2
	cmp	r0, #3
.Ltmp47:
	.loc	1 137 1 is_stmt 1       @ aes128.c:137:1
	itt	gt
	addgt	sp, #16
	bxgt	lr
.Ltmp48:
	@DEBUG_VALUE: col <- [SP+0]
	.loc	1 134 41                @ aes128.c:134:41
	ldr	r0, [sp, #4]
	.loc	1 134 31 is_stmt 0      @ aes128.c:134:31
	ldr	r1, [sp, #12]
	add.w	r2, r1, r0, lsl #2
	.loc	1 134 13                @ aes128.c:134:13
	str	r2, [sp]
	.loc	1 135 10 is_stmt 1      @ aes128.c:135:10
	ldr.w	r12, [r1, r0, lsl #2]
	.loc	1 135 19 is_stmt 0      @ aes128.c:135:19
	ldrd	r3, r2, [sp, #4]
	.loc	1 135 17                @ aes128.c:135:17
	ldr.w	r2, [r2, r3, lsl #2]
	.loc	1 135 15                @ aes128.c:135:15
	eor.w	r2, r2, r12
	.loc	1 135 8                 @ aes128.c:135:8
	str.w	r2, [r1, r0, lsl #2]
.Ltmp49:
	.loc	1 132 27 is_stmt 1      @ aes128.c:132:27
	ldr	r0, [sp, #4]
	adds	r0, #1
	b	.LBB5_1
.Ltmp50:
.Lfunc_end5:
	.size	AddRoundKey, .Lfunc_end5-AddRoundKey
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	SubBytes
	.align	1
	.type	SubBytes,%function
	.code	16                      @ @SubBytes
	.thumb_func
SubBytes:
.Lfunc_begin6:
	.loc	1 140 0                 @ aes128.c:140:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r7, lr}
	push	{r7, lr}
.Ltmp51:
	.cfi_def_cfa_offset 8
.Ltmp52:
	.cfi_offset lr, -4
.Ltmp53:
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
.Ltmp54:
	.cfi_def_cfa_register r7
	.pad	#8
	sub	sp, #8
	str	r0, [sp, #4]
	movs	r0, #0
.LBB6_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 142 11 prologue_end   @ aes128.c:142:11
.Ltmp55:
	str	r0, [sp]
	.loc	1 142 18 is_stmt 0 discriminator 2 @ aes128.c:142:18
.Ltmp56:
	ldr	r0, [sp]
.Ltmp57:
	.loc	1 142 2                 @ aes128.c:142:2
	cmp	r0, #15
.Ltmp58:
	.loc	1 146 1 is_stmt 1       @ aes128.c:146:1
	itt	gt
	addgt	sp, #8
	popgt	{r7, pc}
	.loc	1 144 33                @ aes128.c:144:33
.Ltmp59:
	ldrd	r0, r1, [sp]
	.loc	1 144 14 is_stmt 0      @ aes128.c:144:14
	ldrb	r0, [r1, r0]
	bl	SubRijndaels
	.loc	1 144 9                 @ aes128.c:144:9
	ldrd	r2, r1, [sp]
	.loc	1 144 12                @ aes128.c:144:12
	strb	r0, [r1, r2]
.Ltmp60:
	.loc	1 142 31 is_stmt 1      @ aes128.c:142:31
	ldr	r0, [sp]
	adds	r0, #1
	b	.LBB6_1
.Ltmp61:
.Lfunc_end6:
	.size	SubBytes, .Lfunc_end6-SubBytes
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	ShiftRows
	.align	1
	.type	ShiftRows,%function
	.code	16                      @ @ShiftRows
	.thumb_func
ShiftRows:
.Lfunc_begin7:
	.loc	1 149 0                 @ aes128.c:149:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.pad	#12
	sub	sp, #12
.Ltmp62:
	.cfi_def_cfa_offset 12
	str	r0, [sp, #8]
	.loc	1 151 11 prologue_end   @ aes128.c:151:11
.Ltmp63:
	movs	r0, #1
	str	r0, [sp, #4]
	mov	r0, sp
.LBB7_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 151 18 is_stmt 0 discriminator 2 @ aes128.c:151:18
.Ltmp64:
	ldr	r1, [sp, #4]
.Ltmp65:
	.loc	1 151 2                 @ aes128.c:151:2
	cmp	r1, #3
.Ltmp66:
	.loc	1 159 1 is_stmt 1       @ aes128.c:159:1
	itt	gt
	addgt	sp, #12
	bxgt	lr
.Ltmp67:
	@DEBUG_VALUE: row <- [SP+0]
	.loc	1 153 28                @ aes128.c:153:28
	ldrd	r1, r2, [sp, #4]
	.loc	1 153 22 is_stmt 0      @ aes128.c:153:22
	ldrb	r1, [r2, r1]
	.loc	1 153 20                @ aes128.c:153:20
	strb.w	r1, [sp]
	.loc	1 153 42                @ aes128.c:153:42
	ldrd	r2, r1, [sp, #4]
	.loc	1 153 36                @ aes128.c:153:36
	add	r1, r2
	ldrb	r1, [r1, #4]
	.loc	1 153 20                @ aes128.c:153:20
	strb.w	r1, [sp, #1]
	.loc	1 153 56                @ aes128.c:153:56
	ldrd	r2, r1, [sp, #4]
	.loc	1 153 50                @ aes128.c:153:50
	add	r1, r2
	ldrb	r1, [r1, #8]
	.loc	1 153 20                @ aes128.c:153:20
	strb.w	r1, [sp, #2]
	.loc	1 153 70                @ aes128.c:153:70
	ldrd	r2, r1, [sp, #4]
	.loc	1 154 3 is_stmt 1       @ aes128.c:154:3
	ldr	r3, [sp, #8]
	.loc	1 153 64                @ aes128.c:153:64
	add	r1, r2
	ldrb	r1, [r1, #12]
	.loc	1 153 20 is_stmt 0      @ aes128.c:153:20
	strb.w	r1, [sp, #3]
	.loc	1 154 23 is_stmt 1      @ aes128.c:154:23
	ldr	r1, [sp, #4]
	.loc	1 154 27 is_stmt 0      @ aes128.c:154:27
	asrs	r2, r1, #31
	add.w	r2, r1, r2, lsr #30
	bic	r2, r2, #3
	subs	r2, r1, r2
	.loc	1 154 18                @ aes128.c:154:18
	ldrb	r2, [r0, r2]
	.loc	1 154 16                @ aes128.c:154:16
	strb	r2, [r3, r1]
	.loc	1 155 23 is_stmt 1      @ aes128.c:155:23
	ldr	r1, [sp, #4]
	.loc	1 155 24 is_stmt 0      @ aes128.c:155:24
	adds	r2, r1, #1
	.loc	1 155 27                @ aes128.c:155:27
	asrs	r3, r2, #31
	add.w	r3, r2, r3, lsr #30
	bic	r3, r3, #3
	subs	r2, r2, r3
	.loc	1 155 3                 @ aes128.c:155:3
	ldr	r3, [sp, #8]
	.loc	1 155 18                @ aes128.c:155:18
	ldrb	r2, [r0, r2]
	.loc	1 155 3                 @ aes128.c:155:3
	add	r1, r3
	.loc	1 155 16                @ aes128.c:155:16
	strb	r2, [r1, #4]
	.loc	1 156 23 is_stmt 1      @ aes128.c:156:23
	ldr	r1, [sp, #4]
	.loc	1 156 24 is_stmt 0      @ aes128.c:156:24
	adds	r2, r1, #2
	.loc	1 156 27                @ aes128.c:156:27
	asrs	r3, r2, #31
	add.w	r3, r2, r3, lsr #30
	bic	r3, r3, #3
	subs	r2, r2, r3
	.loc	1 156 3                 @ aes128.c:156:3
	ldr	r3, [sp, #8]
	.loc	1 156 18                @ aes128.c:156:18
	ldrb	r2, [r0, r2]
	.loc	1 156 3                 @ aes128.c:156:3
	add	r1, r3
	.loc	1 156 16                @ aes128.c:156:16
	strb	r2, [r1, #8]
	.loc	1 157 24 is_stmt 1      @ aes128.c:157:24
	ldr	r1, [sp, #4]
	.loc	1 157 25 is_stmt 0      @ aes128.c:157:25
	adds	r2, r1, #3
	.loc	1 157 28                @ aes128.c:157:28
	asrs	r3, r2, #31
	add.w	r3, r2, r3, lsr #30
	bic	r3, r3, #3
	subs	r2, r2, r3
	.loc	1 157 3                 @ aes128.c:157:3
	ldr	r3, [sp, #8]
	.loc	1 157 19                @ aes128.c:157:19
	ldrb	r2, [r0, r2]
	.loc	1 157 3                 @ aes128.c:157:3
	add	r1, r3
	.loc	1 157 17                @ aes128.c:157:17
	strb	r2, [r1, #12]
.Ltmp68:
	.loc	1 151 26 is_stmt 1      @ aes128.c:151:26
	ldr	r1, [sp, #4]
	adds	r1, #1
	str	r1, [sp, #4]
	b	.LBB7_1
.Ltmp69:
.Lfunc_end7:
	.size	ShiftRows, .Lfunc_end7-ShiftRows
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	MixColumns
	.align	1
	.type	MixColumns,%function
	.code	16                      @ @MixColumns
	.thumb_func
MixColumns:
.Lfunc_begin8:
	.loc	1 162 0                 @ aes128.c:162:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, lr}
	push	{r4, lr}
.Ltmp70:
	.cfi_def_cfa_offset 8
.Ltmp71:
	.cfi_offset lr, -4
.Ltmp72:
	.cfi_offset r4, -8
	.pad	#16
	sub	sp, #16
.Ltmp73:
	.cfi_def_cfa_offset 24
	.loc	1 211 26 prologue_end   @ aes128.c:211:26
.Ltmp74:
	movw	r12, :lower16:MixColumns.gmul3
	.loc	1 211 10 is_stmt 0      @ aes128.c:211:10
	movw	lr, :lower16:MixColumns.gmul2
	str	r0, [sp, #12]
	movs	r0, #0
	.loc	1 211 26                @ aes128.c:211:26
	movt	r12, :upper16:MixColumns.gmul3
	.loc	1 211 10                @ aes128.c:211:10
	movt	lr, :upper16:MixColumns.gmul2
.Ltmp75:
	.loc	1 207 11 is_stmt 1      @ aes128.c:207:11
	str	r0, [sp, #8]
.LBB8_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 207 18 is_stmt 0 discriminator 2 @ aes128.c:207:18
.Ltmp76:
	ldr	r2, [sp, #8]
.Ltmp77:
	.loc	1 207 2                 @ aes128.c:207:2
	cmp	r2, #3
.Ltmp78:
	.loc	1 220 1 is_stmt 1       @ aes128.c:220:1
	itt	gt
	addgt	sp, #16
	popgt	{r4, pc}
.Ltmp79:
	@DEBUG_VALUE: col <- [SP+4]
	.loc	1 209 29                @ aes128.c:209:29
	ldrd	r2, r3, [sp, #8]
	.loc	1 209 19 is_stmt 0      @ aes128.c:209:19
	add.w	r0, r3, r2, lsl #2
	.loc	1 209 12                @ aes128.c:209:12
	str	r0, [sp, #4]
	.loc	1 211 26 is_stmt 1      @ aes128.c:211:26
	ldrb	r1, [r0, #1]
	.loc	1 211 10 is_stmt 0      @ aes128.c:211:10
	ldrb.w	r2, [r3, r2, lsl #2]
	.loc	1 211 42                @ aes128.c:211:42
	ldrb	r4, [r0, #2]
	.loc	1 211 51                @ aes128.c:211:51
	ldrb	r0, [r0, #3]
	.loc	1 211 26                @ aes128.c:211:26
	ldrb.w	r1, [r12, r1]
.Ltmp80:
	@DEBUG_VALUE: n <- [SP+0]
	.loc	1 211 10                @ aes128.c:211:10
	ldrb.w	r2, [lr, r2]
	eors	r1, r2
	.loc	1 211 40                @ aes128.c:211:40
	eors	r1, r4
	.loc	1 211 49                @ aes128.c:211:49
	eors	r0, r1
	.loc	1 211 8                 @ aes128.c:211:8
	strb.w	r0, [sp]
	.loc	1 212 10 is_stmt 1      @ aes128.c:212:10
	ldr	r0, [sp, #4]
	.loc	1 212 19 is_stmt 0      @ aes128.c:212:19
	ldrb	r2, [r0, #1]
	.loc	1 212 35                @ aes128.c:212:35
	ldrb	r3, [r0, #2]
	.loc	1 212 10                @ aes128.c:212:10
	ldrb	r1, [r0]
	.loc	1 212 51                @ aes128.c:212:51
	ldrb	r0, [r0, #3]
	.loc	1 212 19                @ aes128.c:212:19
	ldrb.w	r2, [lr, r2]
	.loc	1 212 35                @ aes128.c:212:35
	ldrb.w	r3, [r12, r3]
	.loc	1 212 10                @ aes128.c:212:10
	eors	r1, r2
	.loc	1 212 33                @ aes128.c:212:33
	eors	r1, r3
	.loc	1 212 49                @ aes128.c:212:49
	eors	r0, r1
	.loc	1 212 8                 @ aes128.c:212:8
	strb.w	r0, [sp, #1]
	.loc	1 213 10 is_stmt 1      @ aes128.c:213:10
	ldr	r0, [sp, #4]
	.loc	1 213 28 is_stmt 0      @ aes128.c:213:28
	ldrb	r3, [r0, #2]
	.loc	1 213 10                @ aes128.c:213:10
	ldrb	r1, [r0]
	.loc	1 213 19                @ aes128.c:213:19
	ldrb	r2, [r0, #1]
	.loc	1 213 44                @ aes128.c:213:44
	ldrb	r0, [r0, #3]
	.loc	1 213 28                @ aes128.c:213:28
	ldrb.w	r3, [lr, r3]
	.loc	1 213 44                @ aes128.c:213:44
	ldrb.w	r0, [r12, r0]
	.loc	1 213 10                @ aes128.c:213:10
	eors	r1, r2
	.loc	1 213 26                @ aes128.c:213:26
	eors	r1, r3
	.loc	1 213 42                @ aes128.c:213:42
	eors	r0, r1
	.loc	1 213 8                 @ aes128.c:213:8
	strb.w	r0, [sp, #2]
	.loc	1 214 16 is_stmt 1      @ aes128.c:214:16
	ldr	r0, [sp, #4]
	.loc	1 214 10 is_stmt 0      @ aes128.c:214:10
	ldrb	r1, [r0]
	.loc	1 214 26                @ aes128.c:214:26
	ldrb	r2, [r0, #1]
	.loc	1 214 35                @ aes128.c:214:35
	ldrb	r3, [r0, #2]
	.loc	1 214 44                @ aes128.c:214:44
	ldrb	r0, [r0, #3]
	.loc	1 214 10                @ aes128.c:214:10
	ldrb.w	r1, [r12, r1]
	.loc	1 214 44                @ aes128.c:214:44
	ldrb.w	r0, [lr, r0]
	.loc	1 214 10                @ aes128.c:214:10
	eors	r1, r2
	.loc	1 214 33                @ aes128.c:214:33
	eors	r1, r3
	.loc	1 214 42                @ aes128.c:214:42
	eors	r0, r1
	.loc	1 214 8                 @ aes128.c:214:8
	strb.w	r0, [sp, #3]
	.loc	1 215 3 is_stmt 1       @ aes128.c:215:3
	ldr	r0, [sp, #4]
	.loc	1 215 12 is_stmt 0      @ aes128.c:215:12
	ldrb.w	r1, [sp]
	.loc	1 215 10                @ aes128.c:215:10
	strb	r1, [r0]
	.loc	1 216 9 is_stmt 1       @ aes128.c:216:9
	ldr	r0, [sp, #4]
	.loc	1 216 18 is_stmt 0      @ aes128.c:216:18
	ldrb.w	r1, [sp, #1]
	.loc	1 216 16                @ aes128.c:216:16
	strb	r1, [r0, #1]
	.loc	1 217 9 is_stmt 1       @ aes128.c:217:9
	ldr	r0, [sp, #4]
	.loc	1 217 18 is_stmt 0      @ aes128.c:217:18
	ldrb.w	r1, [sp, #2]
	.loc	1 217 16                @ aes128.c:217:16
	strb	r1, [r0, #2]
	.loc	1 218 9 is_stmt 1       @ aes128.c:218:9
	ldr	r0, [sp, #4]
	.loc	1 218 18 is_stmt 0      @ aes128.c:218:18
	ldrb.w	r1, [sp, #3]
	.loc	1 218 16                @ aes128.c:218:16
	strb	r1, [r0, #3]
.Ltmp81:
	.loc	1 207 27 is_stmt 1      @ aes128.c:207:27
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	b	.LBB8_1
.Ltmp82:
.Lfunc_end8:
	.size	MixColumns, .Lfunc_end8-MixColumns
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	KeyExpansion
	.align	1
	.type	KeyExpansion,%function
	.code	16                      @ @KeyExpansion
	.thumb_func
KeyExpansion:
.Lfunc_begin9:
	.loc	1 87 0                  @ aes128.c:87:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset lr, -4
.Ltmp85:
	.cfi_offset r7, -8
.Ltmp86:
	.cfi_offset r5, -12
.Ltmp87:
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
.Ltmp88:
	.cfi_def_cfa r7, 8
	.pad	#280
	sub	sp, #280
	strd	r1, r0, [sp, #272]
	.loc	1 88 10 prologue_end    @ aes128.c:88:10
.Ltmp89:
	movw	r1, :lower16:.LKeyExpansion.Rcon
	add	r5, sp, #16
	mov.w	r2, #256
	movt	r1, :upper16:.LKeyExpansion.Rcon
	mov	r0, r5
	bl	__aeabi_memcpy4
	movs	r0, #0
	b	.LBB9_2
.LBB9_1:                                @ %for.body
                                        @   in Loop: Header=BB9_2 Depth=1
	.loc	1 110 10                @ aes128.c:110:10
.Ltmp90:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #276]
	ldrb.w	r2, [r1, r0, lsl #2]
	add.w	r1, r1, r0, lsl #2
	ldrb	r3, [r1, #1]
	ldrb	r4, [r1, #2]
	ldrb	r1, [r1, #3]
	orr.w	r2, r2, r3, lsl #8
	orr.w	r2, r2, r4, lsl #16
	orr.w	r1, r2, r1, lsl #24
	.loc	1 110 3 is_stmt 0       @ aes128.c:110:3
	ldr	r2, [sp, #272]
	.loc	1 110 8                 @ aes128.c:110:8
	str.w	r1, [r2, r0, lsl #2]
.Ltmp91:
	.loc	1 108 27 is_stmt 1      @ aes128.c:108:27
	ldr	r0, [sp, #8]
	adds	r0, #1
.Ltmp92:
.LBB9_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 108 11 is_stmt 0      @ aes128.c:108:11
	str	r0, [sp, #8]
	.loc	1 108 18 discriminator 2 @ aes128.c:108:18
.Ltmp93:
	ldr	r0, [sp, #8]
.Ltmp94:
	.loc	1 108 2                 @ aes128.c:108:2
	cmp	r0, #3
	ble	.LBB9_1
.Ltmp95:
@ BB#3:                                 @ %for.end
	@DEBUG_VALUE: i <- [SP+4]
	.loc	1 114 11 is_stmt 1      @ aes128.c:114:11
	movs	r0, #4
	b	.LBB9_5
.Ltmp96:
.LBB9_4:                                @ %if.end
                                        @   in Loop: Header=BB9_5 Depth=1
	@DEBUG_VALUE: i <- [SP+4]
	.loc	1 125 12                @ aes128.c:125:12
	ldr	r0, [sp, #4]
	.loc	1 125 10 is_stmt 0      @ aes128.c:125:10
	ldr	r1, [sp, #272]
	.loc	1 125 22                @ aes128.c:125:22
	ldr	r3, [sp, #12]
	.loc	1 125 3                 @ aes128.c:125:3
	add.w	r2, r1, r0, lsl #2
	.loc	1 125 10                @ aes128.c:125:10
	ldr	r2, [r2, #-16]
	.loc	1 125 20                @ aes128.c:125:20
	eors	r2, r3
	.loc	1 125 8                 @ aes128.c:125:8
	str.w	r2, [r1, r0, lsl #2]
.Ltmp97:
	.loc	1 114 39 is_stmt 1      @ aes128.c:114:39
	ldr	r0, [sp, #4]
	adds	r0, #1
.Ltmp98:
.LBB9_5:                                @ %for.cond.21
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 114 11 is_stmt 0      @ aes128.c:114:11
	str	r0, [sp, #4]
.Ltmp99:
	@DEBUG_VALUE: i <- [SP+4]
	.loc	1 114 19 discriminator 2 @ aes128.c:114:19
	ldr	r0, [sp, #4]
.Ltmp100:
	.loc	1 114 2                 @ aes128.c:114:2
	cmp	r0, #43
.Ltmp101:
	.loc	1 127 1 is_stmt 1       @ aes128.c:127:1
	itt	gt
	addgt	sp, #280
.Ltmp102:
	popgt	{r4, r5, r7, pc}
.Ltmp103:
	@DEBUG_VALUE: i <- [SP+4]
	.loc	1 116 12                @ aes128.c:116:12
	ldr	r0, [sp, #4]
	.loc	1 116 10 is_stmt 0      @ aes128.c:116:10
	ldr	r1, [sp, #272]
	add.w	r0, r1, r0, lsl #2
	ldr	r0, [r0, #-4]
	.loc	1 116 8                 @ aes128.c:116:8
	str	r0, [sp, #12]
	.loc	1 117 7 is_stmt 1       @ aes128.c:117:7
.Ltmp104:
	ldr	r0, [sp, #4]
	.loc	1 117 9 is_stmt 0       @ aes128.c:117:9
	asrs	r1, r0, #31
	add.w	r1, r0, r1, lsr #30
	bic	r1, r1, #3
	subs	r0, r0, r1
	bne	.LBB9_4
.Ltmp105:
@ BB#6:                                 @ %if.then
                                        @   in Loop: Header=BB9_5 Depth=1
	@DEBUG_VALUE: i <- [SP+4]
	.loc	1 119 27 is_stmt 1      @ aes128.c:119:27
	ldr	r0, [sp, #12]
	.loc	1 119 19 is_stmt 0      @ aes128.c:119:19
	bl	RotWord
.Ltmp106:
	.loc	1 119 11                @ aes128.c:119:11
	bl	SubWord
	.loc	1 119 36                @ aes128.c:119:36
	ldr	r1, [sp, #4]
	asrs	r2, r1, #31
	add.w	r1, r1, r2, lsr #30
	asrs	r1, r1, #2
	ldrb	r1, [r5, r1]
	.loc	1 119 34                @ aes128.c:119:34
	eors	r0, r1
	.loc	1 119 9                 @ aes128.c:119:9
	str	r0, [sp, #12]
	b	.LBB9_4
.Ltmp107:
.Lfunc_end9:
	.size	KeyExpansion, .Lfunc_end9-KeyExpansion
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	SubWord
	.align	1
	.type	SubWord,%function
	.code	16                      @ @SubWord
	.thumb_func
SubWord:
.Lfunc_begin10:
	.loc	1 229 0 is_stmt 1       @ aes128.c:229:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.save	{r4, r6, r7, lr}
	push	{r4, r6, r7, lr}
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset lr, -4
.Ltmp110:
	.cfi_offset r7, -8
.Ltmp111:
	.cfi_offset r6, -12
.Ltmp112:
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
.Ltmp113:
	.cfi_def_cfa r7, 8
	.pad	#8
	sub	sp, #8
	str	r0, [sp, #4]
	add	r0, sp, #4
	@DEBUG_VALUE: SubWord:w <- [R0+0]
	.loc	1 230 11 prologue_end   @ aes128.c:230:11
.Ltmp114:
	str	r0, [sp]
	.loc	1 231 9                 @ aes128.c:231:9
	ldrb.w	r0, [sp, #4]
.Ltmp115:
	bl	SubRijndaels
	mov	r4, r0
	ldr	r0, [sp]
	ldrb	r0, [r0, #1]
	bl	SubRijndaels
	orr.w	r4, r4, r0, lsl #8
	ldr	r0, [sp]
	ldrb	r0, [r0, #2]
	bl	SubRijndaels
	orr.w	r4, r4, r0, lsl #16
	ldr	r0, [sp]
	ldrb	r0, [r0, #3]
	bl	SubRijndaels
	orr.w	r0, r4, r0, lsl #24
	.loc	1 231 2 is_stmt 0       @ aes128.c:231:2
	add	sp, #8
	pop	{r4, r6, r7, pc}
.Ltmp116:
.Lfunc_end10:
	.size	SubWord, .Lfunc_end10-SubWord
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	RotWord
	.align	1
	.type	RotWord,%function
	.code	16                      @ @RotWord
	.thumb_func
RotWord:
.Lfunc_begin11:
	.loc	1 223 0 is_stmt 1       @ aes128.c:223:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.pad	#8
	sub	sp, #8
.Ltmp117:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	add	r0, sp, #4
	@DEBUG_VALUE: RotWord:w <- [R0+0]
	.loc	1 224 11 prologue_end   @ aes128.c:224:11
.Ltmp118:
	str	r0, [sp]
	.loc	1 225 9                 @ aes128.c:225:9
	ldrb.w	r1, [sp, #5]
	ldrb.w	r2, [sp, #6]
	ldrb.w	r3, [sp, #7]
	ldrb.w	r0, [sp, #4]
.Ltmp119:
	orr.w	r1, r1, r2, lsl #8
	orr.w	r1, r1, r3, lsl #16
	orr.w	r0, r1, r0, lsl #24
	.loc	1 225 2 is_stmt 0       @ aes128.c:225:2
	add	sp, #8
	bx	lr
.Ltmp120:
.Lfunc_end11:
	.size	RotWord, .Lfunc_end11-RotWord
	.cfi_endproc
	.cantunwind
	.fnend

	.globl	SubRijndaels
	.align	1
	.type	SubRijndaels,%function
	.code	16                      @ @SubRijndaels
	.thumb_func
SubRijndaels:
.Lfunc_begin12:
	.loc	1 235 0 is_stmt 1       @ aes128.c:235:0
	.fnstart
	.cfi_startproc
@ BB#0:                                 @ %entry
	.pad	#4
	sub	sp, #4
.Ltmp121:
	.cfi_def_cfa_offset 4
	strb.w	r0, [sp, #3]
	.loc	1 256 9 prologue_end    @ aes128.c:256:9
.Ltmp122:
	movw	r1, :lower16:SubRijndaels.s
	ldrb.w	r0, [sp, #3]
	movt	r1, :upper16:SubRijndaels.s
	.loc	1 256 2 is_stmt 0       @ aes128.c:256:2
	ldrb	r0, [r1, r0]
	add	sp, #4
	bx	lr
.Ltmp123:
.Lfunc_end12:
	.size	SubRijndaels, .Lfunc_end12-SubRijndaels
	.cfi_endproc
	.cantunwind
	.fnend

	.type	Nk,%object              @ @Nk
	.section	.rodata,"a",%progbits
	.globl	Nk
	.align	2
Nk:
	.long	4                       @ 0x4
	.size	Nk, 4

	.type	Nb,%object              @ @Nb
	.globl	Nb
	.align	2
Nb:
	.long	4                       @ 0x4
	.size	Nb, 4

	.type	Nr,%object              @ @Nr
	.globl	Nr
	.align	2
Nr:
	.long	10                      @ 0xa
	.size	Nr, 4

	.type	.LKeyExpansion.Rcon,%object @ @KeyExpansion.Rcon
	.align	2
.LKeyExpansion.Rcon:
	.ascii	"\215\001\002\004\b\020 @\200\0336l\330\253M\232/^\274c\306\2275j\324\263}\372\357\305\2219r\344\323\275a\302\237%J\2243f\314\203\035:t\350\313\215\001\002\004\b\020 @\200\0336l\330\253M\232/^\274c\306\2275j\324\263}\372\357\305\2219r\344\323\275a\302\237%J\2243f\314\203\035:t\350\313\215\001\002\004\b\020 @\200\0336l\330\253M\232/^\274c\306\2275j\324\263}\372\357\305\2219r\344\323\275a\302\237%J\2243f\314\203\035:t\350\313\215\001\002\004\b\020 @\200\0336l\330\253M\232/^\274c\306\2275j\324\263}\372\357\305\2219r\344\323\275a\302\237%J\2243f\314\203\035:t\350\313\215\001\002\004\b\020 @\200\0336l\330\253M\232/^\274c\306\2275j\324\263}\372\357\305\2219r\344\323\275a\302\237%J\2243f\314\203\035:t\350\313\215"
	.size	.LKeyExpansion.Rcon, 256

	.type	MixColumns.gmul2,%object @ @MixColumns.gmul2
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

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.7.0 (tags/RELEASE_370/final)" @ string offset=0
.Linfo_string1:
	.asciz	"aes128.c"              @ string offset=45
.Linfo_string2:
	.asciz	"D:\\Documents\\LLVM\\arm_aes128" @ string offset=54
.Linfo_string3:
	.asciz	"Nk"                    @ string offset=83
.Linfo_string4:
	.asciz	"int"                   @ string offset=86
.Linfo_string5:
	.asciz	"Nb"                    @ string offset=90
.Linfo_string6:
	.asciz	"Nr"                    @ string offset=93
.Linfo_string7:
	.asciz	"gmul2"                 @ string offset=96
.Linfo_string8:
	.asciz	"unsigned char"         @ string offset=102
.Linfo_string9:
	.asciz	"__uint8_t"             @ string offset=116
.Linfo_string10:
	.asciz	"uint8_t"               @ string offset=126
.Linfo_string11:
	.asciz	"sizetype"              @ string offset=134
.Linfo_string12:
	.asciz	"gmul3"                 @ string offset=143
.Linfo_string13:
	.asciz	"s"                     @ string offset=149
.Linfo_string14:
	.asciz	"unsigned int"          @ string offset=151
.Linfo_string15:
	.asciz	"__uint32_t"            @ string offset=164
.Linfo_string16:
	.asciz	"uint32_t"              @ string offset=175
.Linfo_string17:
	.asciz	"polymorph"             @ string offset=184
.Linfo_string18:
	.asciz	"randsrc"               @ string offset=194
.Linfo_string19:
	.asciz	"AllocateKeySchedule"   @ string offset=202
.Linfo_string20:
	.asciz	"AllocateData"          @ string offset=222
.Linfo_string21:
	.asciz	"Cipher"                @ string offset=235
.Linfo_string22:
	.asciz	"KeyExpansion"          @ string offset=242
.Linfo_string23:
	.asciz	"AddRoundKey"           @ string offset=255
.Linfo_string24:
	.asciz	"SubBytes"              @ string offset=267
.Linfo_string25:
	.asciz	"ShiftRows"             @ string offset=276
.Linfo_string26:
	.asciz	"MixColumns"            @ string offset=286
.Linfo_string27:
	.asciz	"RotWord"               @ string offset=297
.Linfo_string28:
	.asciz	"SubWord"               @ string offset=305
.Linfo_string29:
	.asciz	"SubRijndaels"          @ string offset=313
.Linfo_string30:
	.asciz	"input"                 @ string offset=326
.Linfo_string31:
	.asciz	"len"                   @ string offset=332
.Linfo_string32:
	.asciz	"outNumBlocks"          @ string offset=336
.Linfo_string33:
	.asciz	"blockSize"             @ string offset=349
.Linfo_string34:
	.asciz	"numBlocks"             @ string offset=359
.Linfo_string35:
	.asciz	"finalBlockLen"         @ string offset=369
.Linfo_string36:
	.asciz	"blocks"                @ string offset=383
.Linfo_string37:
	.asciz	"i"                     @ string offset=390
.Linfo_string38:
	.asciz	"in"                    @ string offset=392
.Linfo_string39:
	.asciz	"out"                   @ string offset=395
.Linfo_string40:
	.asciz	"w"                     @ string offset=399
.Linfo_string41:
	.asciz	"state"                 @ string offset=401
.Linfo_string42:
	.asciz	"round"                 @ string offset=407
.Linfo_string43:
	.asciz	"col"                   @ string offset=413
.Linfo_string44:
	.asciz	"row"                   @ string offset=417
.Linfo_string45:
	.asciz	"n"                     @ string offset=421
.Linfo_string46:
	.asciz	"key"                   @ string offset=423
.Linfo_string47:
	.asciz	"Rcon"                  @ string offset=427
.Linfo_string48:
	.asciz	"temp"                  @ string offset=432
.Linfo_string49:
	.asciz	"bs"                    @ string offset=437
.Linfo_string50:
	.asciz	"b"                     @ string offset=440
	.section	.debug_loc,"",%progbits
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	1138                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x46b DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	55                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	6                       @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	Nk
	.byte	3                       @ Abbrev [3] 0x37:0x5 DW_TAG_const_type
	.long	60                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x3c:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x43:0x11 DW_TAG_variable
	.long	.Linfo_string5          @ DW_AT_name
	.long	55                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	Nb
	.byte	2                       @ Abbrev [2] 0x54:0x11 DW_TAG_variable
	.long	.Linfo_string6          @ DW_AT_name
	.long	55                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	Nr
	.byte	5                       @ Abbrev [5] 0x65:0x78 DW_TAG_subprogram
	.long	.Lfunc_begin8           @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string26         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	161                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x76:0x11 DW_TAG_variable
	.long	.Linfo_string7          @ DW_AT_name
	.long	221                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	MixColumns.gmul2
	.byte	6                       @ Abbrev [6] 0x87:0x11 DW_TAG_variable
	.long	.Linfo_string12         @ DW_AT_name
	.long	221                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	MixColumns.gmul3
	.byte	7                       @ Abbrev [7] 0x98:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	161                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xa6:0x36 DW_TAG_lexical_block
	.long	.Ldebug_ranges4         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0xab:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	207                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xb9:0x22 DW_TAG_lexical_block
	.long	.Ldebug_ranges3         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0xbe:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string43         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	209                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0xcc:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string45         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	210                     @ DW_AT_decl_line
	.long	1116                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xdd:0xd DW_TAG_array_type
	.long	234                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe2:0x7 DW_TAG_subrange_type
	.long	268                     @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0xea:0x5 DW_TAG_const_type
	.long	239                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xef:0xb DW_TAG_typedef
	.long	250                     @ DW_AT_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0xfa:0xb DW_TAG_typedef
	.long	261                     @ DW_AT_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x105:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	13                      @ Abbrev [13] 0x10c:0x7 DW_TAG_base_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	14                      @ Abbrev [14] 0x113:0x35 DW_TAG_subprogram
	.long	.Lfunc_begin12          @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string29         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	234                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	239                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                       @ Abbrev [6] 0x128:0x11 DW_TAG_variable
	.long	.Linfo_string13         @ DW_AT_name
	.long	221                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	237                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	SubRijndaels.s
	.byte	7                       @ Abbrev [7] 0x139:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string50         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	234                     @ DW_AT_decl_line
	.long	239                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x148:0x5 DW_TAG_pointer_type
	.long	333                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x14d:0xb DW_TAG_typedef
	.long	344                     @ DW_AT_type
	.long	.Linfo_string16         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x158:0xb DW_TAG_typedef
	.long	355                     @ DW_AT_type
	.long	.Linfo_string15         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x163:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x16a:0x5 DW_TAG_pointer_type
	.long	367                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x16f:0x5 DW_TAG_pointer_type
	.long	239                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x174:0x11 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string17         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	17                      @ Abbrev [17] 0x185:0x15 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string18         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	17                      @ Abbrev [17] 0x19a:0x15 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string19         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	328                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x1af:0x90 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string20         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	362                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x1c4:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.long	.Linfo_string30         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x1d2:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.long	.Linfo_string31         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x1e0:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.long	.Linfo_string32         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	1111                    @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x1ee:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string33         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x1fc:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string34         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x20a:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string35         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x218:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string36         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	362                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x226:0x18 DW_TAG_lexical_block
	.long	.Ltmp18                 @ DW_AT_low_pc
	.long	.Ltmp25-.Ltmp18         @ DW_AT_high_pc
	.byte	9                       @ Abbrev [9] 0x22f:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x23f:0x62 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string21         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x250:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string38         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x25e:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string39         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x26c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string40         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	328                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x27a:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x288:0x18 DW_TAG_lexical_block
	.long	.Ltmp35                 @ DW_AT_low_pc
	.long	.Ltmp41-.Ltmp35         @ DW_AT_high_pc
	.byte	9                       @ Abbrev [9] 0x291:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string42         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x2a1:0x5a DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string23         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x2b2:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x2c0:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string40         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	328                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x2ce:0x2c DW_TAG_lexical_block
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0x2d3:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	132                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x2e1:0x18 DW_TAG_lexical_block
	.long	.Ltmp48                 @ DW_AT_low_pc
	.long	.Ltmp49-.Ltmp48         @ DW_AT_high_pc
	.byte	9                       @ Abbrev [9] 0x2ea:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string43         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	328                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x2fb:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string24         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x30c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x31a:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0x31f:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x32f:0x4c DW_TAG_subprogram
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string25         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x340:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x34e:0x2c DW_TAG_lexical_block
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0x353:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x361:0x18 DW_TAG_lexical_block
	.long	.Ltmp67                 @ DW_AT_low_pc
	.long	.Ltmp68-.Ltmp67         @ DW_AT_high_pc
	.byte	9                       @ Abbrev [9] 0x36a:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string44         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	153                     @ DW_AT_decl_line
	.long	1116                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x37b:0x78 DW_TAG_subprogram
	.long	.Lfunc_begin9           @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string22         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x38c:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.ascii	"\224\002"
	.long	.Linfo_string46         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x39b:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.ascii	"\220\002"
	.long	.Linfo_string40         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	328                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x3aa:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string47         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x3b8:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string48         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	333                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x3c6:0x18 DW_TAG_lexical_block
	.long	.Ltmp90                 @ DW_AT_low_pc
	.long	.Ltmp95-.Ltmp90         @ DW_AT_high_pc
	.byte	9                       @ Abbrev [9] 0x3cf:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x3de:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges5         @ DW_AT_ranges
	.byte	9                       @ Abbrev [9] 0x3e3:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string37         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	114                     @ DW_AT_decl_line
	.long	60                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x3f3:0x32 DW_TAG_subprogram
	.long	.Lfunc_begin10          @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	.Linfo_string28         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	333                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x408:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string40         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	333                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x416:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string49         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	230                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x425:0x32 DW_TAG_subprogram
	.long	.Lfunc_begin11          @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string27         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	333                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	7                       @ Abbrev [7] 0x43a:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string40         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	333                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x448:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string49         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	224                     @ DW_AT_decl_line
	.long	367                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x457:0x5 DW_TAG_pointer_type
	.long	60                      @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x45c:0xc DW_TAG_array_type
	.long	239                     @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x461:0x6 DW_TAG_subrange_type
	.long	268                     @ DW_AT_type
	.byte	4                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x468:0xd DW_TAG_array_type
	.long	239                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x46d:0x7 DW_TAG_subrange_type
	.long	268                     @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp44-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.long	.Ltmp48-.Lfunc_begin0
	.long	.Ltmp50-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp55-.Lfunc_begin0
	.long	.Ltmp58-.Lfunc_begin0
	.long	.Ltmp59-.Lfunc_begin0
	.long	.Ltmp61-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp63-.Lfunc_begin0
	.long	.Ltmp66-.Lfunc_begin0
	.long	.Ltmp67-.Lfunc_begin0
	.long	.Ltmp69-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp74-.Lfunc_begin0
	.long	.Ltmp75-.Lfunc_begin0
	.long	.Ltmp79-.Lfunc_begin0
	.long	.Ltmp81-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges4:
	.long	.Ltmp74-.Lfunc_begin0
	.long	.Ltmp78-.Lfunc_begin0
	.long	.Ltmp79-.Lfunc_begin0
	.long	.Ltmp82-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges5:
	.long	.Ltmp95-.Lfunc_begin0
	.long	.Ltmp101-.Lfunc_begin0
	.long	.Ltmp103-.Lfunc_begin0
	.long	.Ltmp107-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1142                    @ Compilation Unit Length
	.long	84                      @ DIE offset
	.asciz	"Nr"                    @ External Name
	.long	1011                    @ DIE offset
	.asciz	"SubWord"               @ External Name
	.long	118                     @ DIE offset
	.asciz	"gmul2"                 @ External Name
	.long	135                     @ DIE offset
	.asciz	"gmul3"                 @ External Name
	.long	815                     @ DIE offset
	.asciz	"ShiftRows"             @ External Name
	.long	372                     @ DIE offset
	.asciz	"polymorph"             @ External Name
	.long	275                     @ DIE offset
	.asciz	"SubRijndaels"          @ External Name
	.long	389                     @ DIE offset
	.asciz	"randsrc"               @ External Name
	.long	101                     @ DIE offset
	.asciz	"MixColumns"            @ External Name
	.long	67                      @ DIE offset
	.asciz	"Nb"                    @ External Name
	.long	763                     @ DIE offset
	.asciz	"SubBytes"              @ External Name
	.long	1061                    @ DIE offset
	.asciz	"RotWord"               @ External Name
	.long	296                     @ DIE offset
	.asciz	"s"                     @ External Name
	.long	38                      @ DIE offset
	.asciz	"Nk"                    @ External Name
	.long	673                     @ DIE offset
	.asciz	"AddRoundKey"           @ External Name
	.long	410                     @ DIE offset
	.asciz	"AllocateKeySchedule"   @ External Name
	.long	575                     @ DIE offset
	.asciz	"Cipher"                @ External Name
	.long	891                     @ DIE offset
	.asciz	"KeyExpansion"          @ External Name
	.long	431                     @ DIE offset
	.asciz	"AllocateData"          @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1142                    @ Compilation Unit Length
	.long	355                     @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	344                     @ DIE offset
	.asciz	"__uint32_t"            @ External Name
	.long	333                     @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	250                     @ DIE offset
	.asciz	"__uint8_t"             @ External Name
	.long	60                      @ DIE offset
	.asciz	"int"                   @ External Name
	.long	239                     @ DIE offset
	.asciz	"uint8_t"               @ External Name
	.long	261                     @ DIE offset
	.asciz	"unsigned char"         @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
