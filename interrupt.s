	.file	"interrupt.cpp"
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
	.global	_Z16enable_interruptt
	.type	_Z16enable_interruptt, %function
_Z16enable_interruptt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r1, r2, #520
	mov	r3, #0	@ movhi
	strh	r3, [r1, #0]	@ movhi 
	add	r2, r2, #512
	ldrh	r3, [r2, #0]
	mov	r0, r0, asl #16
	orr	r3, r3, r0, asr #16
	strh	r3, [r2, #0]	@ movhi 
	mov	r3, #1	@ movhi
	@ lr needed for prologue
	strh	r3, [r1, #0]	@ movhi 
	bx	lr
	.size	_Z16enable_interruptt, .-_Z16enable_interruptt
	.align	2
	.global	_Z17disable_interruptt
	.type	_Z17disable_interruptt, %function
_Z17disable_interruptt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	add	r1, r1, #512
	mov	r0, r0, asl #16
	ldrh	r3, [r1, #0]
	mov	r0, r0, asr #16	@  inter
	mov	r2, r0, asl #16	@  inter
	bic	r3, r3, r0	@  inter
	cmp	r2, #1073741824
	mov	ip, #67108864
	strh	r3, [r1, #0]	@ movhi 
	add	ip, ip, #520
	moveq	r3, #0	@ movhi
	@ lr needed for prologue
	streqh	r3, [ip, #0]	@ movhi 
	bx	lr
	.size	_Z17disable_interruptt, .-_Z17disable_interruptt
	.global	IntrTable
	.data
	.align	2
	.type	IntrTable, %object
	.size	IntrTable, 56
IntrTable:
	.word	_Z6VBLANKv
	.word	_Z6HBLANKv
	.word	_Z6VCOUNTv
	.word	_Z6TIMER0v
	.word	_Z6TIMER1v
	.word	_Z6TIMER2v
	.word	_Z6TIMER3v
	.word	_Z12COMUNICATIONv
	.word	_Z4DMA0v
	.word	_Z4DMA1v
	.word	_Z4DMA2v
	.word	_Z4DMA3v
	.word	_Z8KEYBOARDv
	.word	_Z4CARTv
	.text
	.align	2
	.global	_Z6VBLANKv
	.type	_Z6VBLANKv, %function
_Z6VBLANKv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #1
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z6VBLANKv, .-_Z6VBLANKv
	.align	2
	.global	_Z6HBLANKv
	.type	_Z6HBLANKv, %function
_Z6HBLANKv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #2
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z6HBLANKv, .-_Z6HBLANKv
	.align	2
	.global	_Z4DMA0v
	.type	_Z4DMA0v, %function
_Z4DMA0v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #256
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z4DMA0v, .-_Z4DMA0v
	.align	2
	.global	_Z4DMA1v
	.type	_Z4DMA1v, %function
_Z4DMA1v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #512
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z4DMA1v, .-_Z4DMA1v
	.align	2
	.global	_Z4DMA2v
	.type	_Z4DMA2v, %function
_Z4DMA2v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #1024
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z4DMA2v, .-_Z4DMA2v
	.align	2
	.global	_Z4DMA3v
	.type	_Z4DMA3v, %function
_Z4DMA3v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #2048
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z4DMA3v, .-_Z4DMA3v
	.align	2
	.global	_Z6VCOUNTv
	.type	_Z6VCOUNTv, %function
_Z6VCOUNTv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #4
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z6VCOUNTv, .-_Z6VCOUNTv
	.align	2
	.global	_Z6TIMER0v
	.type	_Z6TIMER0v, %function
_Z6TIMER0v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L15
	ldr	r0, .L15+4
	ldr	r2, [r3, #0]	@  current_sample_dsa
	ldrh	r3, [r0, #0]	@  nb_sample_dsa
	ldr	r1, [r2, #4]	@  <variable>.length
	cmp	r3, r1
	add	r3, r3, #1
	sub	fp, ip, #4
	strcch	r3, [r0, #0]	@ movhi 	@  nb_sample_dsa
	bcs	.L14
.L13:
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #8
	strh	r3, [r2, #0]	@ movhi 
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L14:
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	b	.L13
.L16:
	.align	2
.L15:
	.word	current_sample_dsa
	.word	nb_sample_dsa
	.word	_Z14stop_sound_dsav
	.size	_Z6TIMER0v, .-_Z6TIMER0v
	.align	2
	.global	_Z6TIMER1v
	.type	_Z6TIMER1v, %function
_Z6TIMER1v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L21
	ldr	r0, .L21+4
	ldr	r2, [r3, #0]	@  current_sample_dsb
	ldrh	r3, [r0, #0]	@  nb_sample_dsb
	ldr	r1, [r2, #4]	@  <variable>.length
	cmp	r3, r1
	add	r3, r3, #1
	sub	fp, ip, #4
	strcch	r3, [r0, #0]	@ movhi 	@  nb_sample_dsb
	bcs	.L20
.L19:
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #16
	strh	r3, [r2, #0]	@ movhi 
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L20:
	ldr	r3, .L21+8
	mov	lr, pc
	bx	r3
	b	.L19
.L22:
	.align	2
.L21:
	.word	current_sample_dsb
	.word	nb_sample_dsb
	.word	_Z14stop_sound_dsbv
	.size	_Z6TIMER1v, .-_Z6TIMER1v
	.align	2
	.global	_Z6TIMER2v
	.type	_Z6TIMER2v, %function
_Z6TIMER2v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #32
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z6TIMER2v, .-_Z6TIMER2v
	.align	2
	.global	_Z6TIMER3v
	.type	_Z6TIMER3v, %function
_Z6TIMER3v:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #64
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z6TIMER3v, .-_Z6TIMER3v
	.align	2
	.global	_Z8KEYBOARDv
	.type	_Z8KEYBOARDv, %function
_Z8KEYBOARDv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #64
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z8KEYBOARDv, .-_Z8KEYBOARDv
	.align	2
	.global	_Z4CARTv
	.type	_Z4CARTv, %function
_Z4CARTv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #8192
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z4CARTv, .-_Z4CARTv
	.align	2
	.global	_Z12COMUNICATIONv
	.type	_Z12COMUNICATIONv, %function
_Z12COMUNICATIONv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #512
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	orr	r3, r3, #128
	@ lr needed for prologue
	strh	r3, [r2, #0]	@ movhi 
	bx	lr
	.size	_Z12COMUNICATIONv, .-_Z12COMUNICATIONv
	.ident	"GCC: (GNU) 3.3.2"
