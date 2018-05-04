	.cpu arm926ej-s
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"test.c"
	.global	UART0DR
	.section	.rodata
	.align	2
	.type	UART0DR, %object
	.size	UART0DR, 4
UART0DR:
	.word	270471168
	.text
	.align	2
	.global	addition
	.type	addition, %function
addition:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	addition, .-addition
	.align	2
	.global	entry
	.type	entry, %function
entry:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #151552
	str	r3, [fp, #-8]
	mov	r3, #135168
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	b	.L4
.L5:
	ldr	r3, [fp, #-12]
	add	r2, r3, #4
	str	r2, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r1, r2, #4
	str	r1, [fp, #-8]
	ldr	r2, [r2]
	str	r2, [r3]
.L4:
	ldr	r2, [fp, #-8]
	ldr	r3, .L8
	cmp	r2, r3
	bls	.L5
	ldr	r3, .L8+4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, .L8+8
	str	r3, [fp, #-8]
	b	.L6
.L7:
	ldr	r3, [fp, #-12]
	add	r2, r3, #4
	str	r2, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r1, r2, #4
	str	r1, [fp, #-8]
	ldr	r2, [r2]
	str	r2, [r3]
.L6:
	ldr	r2, [fp, #-8]
	ldr	r3, .L8+12
	cmp	r2, r3
	bls	.L7
	ldr	r3, [fp, #-20]
	mov	r0, #97
	mov	r1, #1
	blx	r3
	str	r0, [fp, #-24]
	ldr	r3, .L8+16
	ldr	r2, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r0, #99
	mov	r1, #1
	blx	r3
	str	r0, [fp, #-24]
	ldr	r3, .L8+16
	ldr	r2, [fp, #-24]
	str	r2, [r3]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L9:
	.align	2
.L8:
	.word	151592
	.word	addition
	.word	151600
	.word	151640
	.word	270471168
	.size	entry, .-entry
	.ident	"GCC: (4.8.4-1+11-1) 4.8.4 20141219 (release)"
