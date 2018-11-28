	.file	"save.cpp"
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

	.text
	.align	2
	.global	_Z6save_8th
	.type	_Z6save_8th, %function
_Z6save_8th:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r0, asl #16
	mov	r3, #234881024
	@ lr needed for prologue
	strb	r1, [r3, r0, lsr #16]
	bx	lr
	.size	_Z6save_8th, .-_Z6save_8th
	.align	2
	.global	_Z7save_16tt
	.type	_Z7save_16tt, %function
_Z7save_16tt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	mov	r5, r1, asl #16	@  b1
	mov	r4, r0, asl #16
	mov	r5, r5, asr #16	@  val
	mov	r0, r4, lsr #16
	and	r1, r5, #255	@  b1,  val
	sub	fp, ip, #4
	bl	_Z6save_8th
	mov	r4, r4, asr #16	@  offset
	add	r4, r4, #1	@  offset
	mov	r5, r5, asl #16	@  val
	mov	r4, r4, asl #16
	mov	r5, r5, lsr #24	@  b2
	mov	r4, r4, lsr #16
	mov	r0, r4
	mov	r1, r5	@  b2
	ldmea	fp, {r4, r5, fp, sp, lr}
	b	_Z6save_8th
	.size	_Z7save_16tt, .-_Z7save_16tt
	.align	2
	.global	_Z7save_32tm
	.type	_Z7save_32tm, %function
_Z7save_32tm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r4, r0, asl #16
	sub	fp, ip, #4
	mov	r7, r1	@  val
	mov	r0, r4, lsr #16
	and	r1, r1, #255	@  b1,  val
	mov	r4, r4, asr #16	@  offset
	bl	_Z6save_8th
	mov	r5, r7, lsr #8	@  val
	add	r0, r4, #1	@  offset
	and	r5, r5, #255	@  b2
	mov	r0, r0, asl #16
	mov	r1, r5	@  b2
	mov	r0, r0, lsr #16
	bl	_Z6save_8th
	mov	r6, r7, lsr #16	@  val
	add	r0, r4, #2	@  offset
	and	r6, r6, #255	@  b3
	mov	r0, r0, asl #16
	mov	r1, r6	@  b3
	mov	r0, r0, lsr #16
	bl	_Z6save_8th
	add	r4, r4, #3	@  offset
	mov	r4, r4, asl #16
	mov	r7, r7, lsr #24	@  b4,  val
	mov	r4, r4, lsr #16
	mov	r0, r4
	mov	r1, r7	@  b4
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	b	_Z6save_8th
	.size	_Z7save_32tm, .-_Z7save_32tm
	.align	2
	.global	_Z11save_stringtPc
	.type	_Z11save_stringtPc, %function
_Z11save_stringtPc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r3, r0, asl #16	@  str
	sub	fp, ip, #4
	mov	r0, r1	@  str
	ldr	r2, .L12
	mov	r7, r1	@  str
	mov	r6, r3, asr #16	@  offset
	mov	lr, pc
	bx	r2
	mov	r0, r0, asl #16	@  str
	mov	r0, r0, lsr #16
	add	r0, r0, #1
	mov	r4, #0	@  i
	cmp	r4, r0	@  i
	bge	.L11
	mov	r5, r0
	mov	r2, r4	@  i,  i
.L9:
	add	r0, r6, r4	@  offset,  i
	mov	r0, r0, asl #16
	ldrb	r1, [r7, r2, lsr #16]	@ zero_extendqisi2	@  str, * str
	mov	r0, r0, lsr #16	@  str
	bl	_Z6save_8th
	add	r3, r4, #1	@  i
	mov	r3, r3, asl #16
	mov	r4, r3, asr #16	@  i
	mov	r2, r4, asl #16	@  i,  i
	cmp	r5, r2, lsr #16	@  i
	bgt	.L9
.L11:
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	strlen
	.size	_Z11save_stringtPc, .-_Z11save_stringtPc
	.align	2
	.global	_Z6load_8t
	.type	_Z6load_8t, %function
_Z6load_8t:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #234881024
	mov	r0, r0, asl #16
	ldrb	r0, [r3, r0, lsr #16]	@ zero_extendqisi2
	@ lr needed for prologue
	bx	lr
	.size	_Z6load_8t, .-_Z6load_8t
	.align	2
	.global	_Z7load_16t
	.type	_Z7load_16t, %function
_Z7load_16t:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	mov	r4, r0, asl #16
	sub	fp, ip, #4
	mov	r0, r4, lsr #16
	bl	_Z6load_8t
	mov	r4, r4, asr #16	@  offset
	add	r4, r4, #1	@  offset
	mov	r4, r4, asl #16
	mov	r4, r4, lsr #16
	mov	r5, r0
	mov	r0, r4
	bl	_Z6load_8t
	and	r5, r5, #255	@  b1
	mov	r5, r5, asl #16	@  b1
	orr	r5, r5, r0, asl #24
	mov	r5, r5, lsr #16
	mov	r0, r5
	ldmea	fp, {r4, r5, fp, sp, lr}
	bx	lr
	.size	_Z7load_16t, .-_Z7load_16t
	.align	2
	.global	_Z7load_32t
	.type	_Z7load_32t, %function
_Z7load_32t:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r4, r0, asl #16
	sub	fp, ip, #4
	mov	r0, r4, lsr #16
	bl	_Z6load_8t
	mov	r4, r4, asr #16	@  offset
	mov	r5, r0
	add	r0, r4, #1	@  offset
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	bl	_Z6load_8t
	mov	r7, r0
	add	r0, r4, #2	@  offset
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	bl	_Z6load_8t
	add	r4, r4, #3	@  offset
	mov	r4, r4, asl #16
	mov	r4, r4, lsr #16
	mov	r6, r0
	mov	r0, r4
	bl	_Z6load_8t
	and	r7, r7, #255	@  b2
	and	r5, r5, #255	@  b1
	and	r6, r6, #255	@  b3
	orr	r5, r5, r7, asl #8	@  b1,  b2
	orr	r5, r5, r6, asl #16	@  b3
	orr	r5, r5, r0, asl #24
	mov	r0, r5
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
	.size	_Z7load_32t, .-_Z7load_32t
	.align	2
	.global	_Z11load_stringttPc
	.type	_Z11load_stringttPc, %function
_Z11load_stringttPc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r8, r1, asl #16
	mov	r5, #0	@  i
	mov	r0, r0, asl #16
	cmp	r5, r8, lsr #16	@  i
	sub	fp, ip, #4
	mov	r7, r2	@  str
	mov	r6, r0, asr #16	@  offset
	bcs	.L24
	mov	r2, r5	@  i,  i
.L22:
	add	r0, r6, r5	@  offset,  i
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	mov	r4, r2, lsr #16	@  i
	bl	_Z6load_8t
	add	r3, r5, #1	@  i
	mov	r3, r3, asl #16
	mov	r5, r3, asr #16	@  i
	mov	r2, r5, asl #16	@  i,  i
	cmp	r2, r8	@  i
	strb	r0, [r7, r4]
	bcc	.L22
.L24:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
	.size	_Z11load_stringttPc, .-_Z11load_stringttPc
	.ident	"GCC: (GNU) 3.3.2"
