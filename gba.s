	.file	"gba.cpp"
@ GNU C++ version 3.3.2 (arm-thumb-elf)
@	compiled by GNU C version 3.3.1 (cygming special).
@ GGC heuristics: --param ggc-min-expand=64 --param ggc-min-heapsize=65470
@ options passed:  -fpreprocessed -mthumb-interwork -mlong-calls
@ -auxbase-strip -O2 -Wall -fverbose-asm
@ options enabled:  -fdefer-pop -fomit-frame-pointer
@ -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
@ -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
@ -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
@ -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
@ -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
@ -frerun-loop-opt -fdelete-null-pointer-checks -fschedule-insns
@ -fschedule-insns2 -fsched-interblock -fsched-spec -fbranch-count-reg
@ -fexceptions -freorder-blocks -freorder-functions -fcprop-registers
@ -fcommon -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
@ -fargument-alias -fstrict-aliasing -fmerge-constants
@ -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
@ -fmath-errno -ftrapping-math -mapcs -mapcs-frame -mapcs-32 -msoft-float
@ -mthumb-interwork -mlong-calls

	.global	OAM_buffer
	.bss
	.global	OAM_buffer
	.align	2
	.type	OAM_buffer, %object
	.size	OAM_buffer, 1024
OAM_buffer:
	.space	1024
	.global	OAM_buffer_rot
	.data
	.align	2
	.type	OAM_buffer_rot, %object
	.size	OAM_buffer_rot, 4
OAM_buffer_rot:
	.word	OAM_buffer
	.global	video_buffer
	.align	2
	.type	video_buffer, %object
	.size	video_buffer, 4
video_buffer:
	.word	100663296
	.text
	.align	2
	.global	_Z9copie_DMAPvS_mmh
	.type	_Z9copie_DMAPvS_mmh, %function
_Z9copie_DMAPvS_mmh:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [sp, #0]	@ zero_extendqisi2	@  channel,  channel
	@ lr needed for prologue
	cmp	ip, #3	@  channel
	ldrls	pc, [pc, ip, asl #2]	@  channel
	b	.L1
	.p2align 2
.L7:
	.word	.L3
	.word	.L4
	.word	.L5
	.word	.L6
.L3:
	orr	r2, r2, r3	@  nbval,  mode
	mov	r3, #67108864
	str	r0, [r3, #176]	@  source
	str	r1, [r3, #180]	@  dest
	str	r2, [r3, #184]
	bx	lr
.L1:
	bx	lr
.L4:
	orr	r2, r2, r3	@  nbval,  mode
	mov	r3, #67108864
	str	r0, [r3, #188]	@  source
	str	r1, [r3, #192]	@  dest
	str	r2, [r3, #196]
	bx	lr
.L5:
	orr	r2, r2, r3	@  nbval,  mode
	mov	r3, #67108864
	str	r0, [r3, #200]	@  source
	str	r1, [r3, #204]	@  dest
	str	r2, [r3, #208]
	bx	lr
.L6:
	orr	r2, r2, r3	@  nbval,  mode
	mov	r3, #67108864
	str	r0, [r3, #212]	@  source
	str	r1, [r3, #216]	@  dest
	str	r2, [r3, #220]
	b	.L1
	.size	_Z9copie_DMAPvS_mmh, .-_Z9copie_DMAPvS_mmh
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s : %d\n"
	.ascii	"\twait_time>4s : %dms\000"
	.align	2
.LC1:
	.ascii	"gba.cpp\000"
	.text
	.align	2
	.global	_Z9wait_timeii
	.type	_Z9wait_timeii, %function
_Z9wait_timeii:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	rsb	r3, r0, r0, asl #5	@  s,  s
	mov	ip, sp
	add	r0, r0, r3, asl #2	@  s
	stmfd	sp!, {r4, fp, ip, lr, pc}
	add	r4, r1, r0, asl #3	@  ms
	cmp	r4, #4000
	sub	fp, ip, #4
	bge	.L15
.L10:
	mov	r3, #67108864
	mov	r2, #8585216
	mov	r1, r4, asl #16
	str	r2, [r3, #268]
	mov	r0, r3
	mov	r1, r1, lsr #16
	add	r2, r3, #268
.L11:
	ldrh	r3, [r2, #0]
	cmp	r1, r3, lsr #4
	bhi	.L11
	mov	r3, #0
	str	r3, [r0, #268]
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L15:
	ldr	r0, .L16
	ldr	r1, .L16+4
	mov	r2, #41
	mov	r3, r4
	ldr	ip, .L16+8
	mov	lr, pc
	bx	ip
	b	.L10
.L17:
	.align	2
.L16:
	.word	.LC0
	.word	.LC1
	.word	_Z5debugPcz
	.size	_Z9wait_timeii, .-_Z9wait_timeii
	.align	2
	.global	_Z9mosaic_int
	.type	_Z9mosaic_int, %function
_Z9mosaic_int:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	rsb	r3, r0, r0, asl #5
	add	r0, r0, r3, asl #2
	mov	r0, r0, asl #3
	mov	ip, sp
	mov	r3, r0, asr #31
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	add	r5, r0, r3, lsr #28
	mov	r4, #15	@  i
	mov	r6, #67108864
.L23:
	add	r3, r4, r4, asl #4	@  i,  i
	add	r3, r3, r4, asl #8	@  i
	add	r3, r3, r4, asl #12	@  i
	mov	r0, #0
	mov	r1, r5, asr #4
	str	r3, [r6, #76]
	bl	_Z9wait_timeii
	subs	r4, r4, #1	@  i,  i
	bpl	.L23
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_Z9mosaic_int, .-_Z9mosaic_int
	.align	2
	.global	_Z10mosaic_outt
	.type	_Z10mosaic_outt, %function
_Z10mosaic_outt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	rsb	r3, r0, r0, asl #5
	add	r0, r0, r3, asl #2
	mov	r0, r0, asl #3
	mov	ip, sp
	mov	r3, r0, asr #31
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	add	r5, r0, r3, lsr #28
	mov	r4, #0	@  i
	mov	r6, #67108864
.L31:
	add	r3, r4, r4, asl #4	@  i,  i
	add	r3, r3, r4, asl #8	@  i
	add	r3, r3, r4, asl #12	@  i
	mov	r0, #0
	mov	r1, r5, asr #4
	add	r4, r4, #1	@  i,  i
	str	r3, [r6, #76]
	bl	_Z9wait_timeii
	cmp	r4, #15	@  i
	ble	.L31
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_Z10mosaic_outt, .-_Z10mosaic_outt
	.align	2
	.global	_Z8fade_outtt
	.type	_Z8fade_outtt, %function
_Z8fade_outtt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r3, r0, asl #16
	mov	r1, r1, asl #16
	mov	r3, r3, asr #16	@  target
	mov	ip, sp
	mov	r1, r1, lsr #16
	orr	r3, r3, #192	@  target
	mov	r2, #67108864
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r0, r1
	sub	fp, ip, #4
	strh	r3, [r2, #80]	@ movhi 
	ldr	r1, .L35
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	_Z4fadet
	.size	_Z8fade_outtt, .-_Z8fade_outtt
	.align	2
	.global	_Z7fade_intt
	.type	_Z7fade_intt, %function
_Z7fade_intt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r3, r0, asl #16
	mov	r1, r1, asl #16
	mov	r3, r3, asr #16	@  target
	mov	ip, sp
	mov	r1, r1, lsr #16
	orr	r3, r3, #128	@  target
	mov	r2, #67108864
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r0, r1
	sub	fp, ip, #4
	strh	r3, [r2, #80]	@ movhi 
	ldr	r1, .L38
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	_Z4fadet
	.size	_Z7fade_intt, .-_Z7fade_intt
	.align	2
	.global	_Z4fadet
	.type	_Z4fadet, %function
_Z4fadet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	rsb	r3, r0, r0, asl #5
	mov	ip, sp
	add	r0, r0, r3, asl #2
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r6, r0, asl #3
	ldr	r8, .L48
	sub	fp, ip, #4
	mov	r4, #0	@  i
	mov	r7, #67108864
	mov	r5, r6, asr #31
.L45:
	smull	r3, r1, r8, r6
	strh	r4, [r7, #84]	@ movhi 	@  i
	rsb	r1, r5, r1, asr #3
	mov	r0, #0
	add	r4, r4, #1	@  i,  i
	bl	_Z9wait_timeii
	cmp	r4, #16	@  i
	ble	.L45
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	2021161081
	.size	_Z4fadet, .-_Z4fadet
	.align	2
	.global	_Z14Mode4_PutPixeltth
	.type	_Z14Mode4_PutPixeltth, %function
_Z14Mode4_PutPixeltth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r1, asl #16
	mov	lr, r0, asl #16
	ldr	r5, .L53
	mov	r3, r4, lsr #16
	mov	r1, lr, lsr #16
	rsb	r3, r3, r3, asl #4
	add	r3, r1, r3, asl #4
	ldr	r0, [r5, #0]	@  video_buffer
	bic	r3, r3, #1
	ldrsh	ip, [r3, r0]	@  temp
	and	r3, ip, #65280	@  temp
	tst	r1, #1
	mov	r3, r3, asl #16
	and	r1, r2, #255	@  charCouleur
	add	r3, r1, r3, asr #16	@  charCouleur
	andne	ip, ip, #255	@  temp
	mov	r2, r3, asl #16
	addne	r3, ip, r1, asl #8	@  temp,  charCouleur
	movne	r3, r3, asl #16
	movne	ip, r3, asr #16	@  temp
	mov	r3, r4, lsr #16
	moveq	ip, r2, asr #16	@  temp
	rsb	r3, r3, r3, asl #4
	mov	r2, lr, lsr #16
	ldr	r1, [r5, #0]	@  video_buffer
	add	r2, r2, r3, asl #4
	bic	r2, r2, #1
	strh	ip, [r2, r1]	@ movhi 	@  temp
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	video_buffer
	.size	_Z14Mode4_PutPixeltth, .-_Z14Mode4_PutPixeltth
	.align	2
	.global	_Z11swap_bufferv
	.type	_Z11swap_bufferv, %function
_Z11swap_bufferv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #67108864
	ldr	r3, [r0, #0]
	mov	r1, #100663296
	tst	r3, #16
	@ lr needed for prologue
	add	r1, r1, #40960
	beq	.L56
	ldr	r2, [r0, #0]
	ldr	r3, .L58
	bic	r2, r2, #16
	str	r1, [r3, #0]	@  video_buffer
	str	r2, [r0, #0]
	bx	lr
.L56:
	ldr	r3, [r0, #0]
	ldr	r2, .L58
	orr	r3, r3, #16
	mov	r1, #100663296
	str	r1, [r2, #0]	@  video_buffer
	str	r3, [r0, #0]
	bx	lr
.L59:
	.align	2
.L58:
	.word	video_buffer
	.size	_Z11swap_bufferv, .-_Z11swap_bufferv
	.ident	"GCC: (GNU) 3.3.2"
