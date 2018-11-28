	.file	"background.cpp"
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
	.global	_ZN10backgroundC2Ev
	.type	_ZN10backgroundC2Ev, %function
_ZN10backgroundC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	ldr	r2, .L2
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	str	r2, [r0, #0]	@  <variable>._vptr.background
	sub	fp, ip, #4
	ldr	r1, .L2+4
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	_ZTV10background+8
	.word	_ZN10background4initEv
	.size	_ZN10backgroundC2Ev, .-_ZN10backgroundC2Ev
	.align	2
	.global	_ZN10backgroundC1Ev
	.type	_ZN10backgroundC1Ev, %function
_ZN10backgroundC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	ldr	r2, .L5
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	str	r2, [r0, #0]	@  <variable>._vptr.background
	sub	fp, ip, #4
	ldr	r1, .L5+4
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	_ZTV10background+8
	.word	_ZN10background4initEv
	.size	_ZN10backgroundC1Ev, .-_ZN10backgroundC1Ev
	.align	2
	.global	_ZN10backgroundD2Ev
	.type	_ZN10backgroundD2Ev, %function
_ZN10backgroundD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, .L22
	ldrh	r2, [r0, #8]	@  <variable>.no_bg
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #0]	@  <variable>._vptr.background
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L9
	.p2align 2
.L14:
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
.L10:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #256
.L20:
	str	r3, [r2, #0]
.L9:
	ldr	r0, [r4, #24]	@  this,  <variable>.tile
	cmp	r0, #0	@  this
	bne	.L21
.L17:
	mov	r0, r4	@  this
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L21:
	ldr	r3, .L22+8
	mov	lr, pc
	bx	r3
	b	.L17
.L11:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #512
	b	.L20
.L12:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #1024
	b	.L20
.L13:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #2048
	b	.L20
.L23:
	.align	2
.L22:
	.word	_ZTV10background+8
	.word	_ZN10background4initEv
	.word	_ZdaPv
	.size	_ZN10backgroundD2Ev, .-_ZN10backgroundD2Ev
	.align	2
	.global	_ZN10backgroundD1Ev
	.type	_ZN10backgroundD1Ev, %function
_ZN10backgroundD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, .L39
	ldrh	r2, [r0, #8]	@  <variable>.no_bg
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #0]	@  <variable>._vptr.background
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L26
	.p2align 2
.L31:
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
.L27:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #256
.L37:
	str	r3, [r2, #0]
.L26:
	ldr	r0, [r4, #24]	@  this,  <variable>.tile
	cmp	r0, #0	@  this
	bne	.L38
.L34:
	mov	r0, r4	@  this
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L38:
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	b	.L34
.L28:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #512
	b	.L37
.L29:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #1024
	b	.L37
.L30:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #2048
	b	.L37
.L40:
	.align	2
.L39:
	.word	_ZTV10background+8
	.word	_ZN10background4initEv
	.word	_ZdaPv
	.size	_ZN10backgroundD1Ev, .-_ZN10backgroundD1Ev
	.align	2
	.global	_ZN10backgroundD0Ev
	.type	_ZN10backgroundD0Ev, %function
_ZN10backgroundD0Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, .L56
	ldrh	r2, [r0, #8]	@  <variable>.no_bg
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #0]	@  <variable>._vptr.background
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L43
	.p2align 2
.L48:
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L47
.L44:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #256
.L54:
	str	r3, [r2, #0]
.L43:
	ldr	r0, [r4, #24]	@  this,  <variable>.tile
	cmp	r0, #0	@  this
	bne	.L55
.L51:
	mov	r0, r4	@  this
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	mov	r0, r4	@  this
	ldr	r3, .L56+8
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L55:
	ldr	r3, .L56+12
	mov	lr, pc
	bx	r3
	b	.L51
.L45:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #512
	b	.L54
.L46:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #1024
	b	.L54
.L47:
	mov	r2, #67108864
	ldr	r3, [r2, #0]
	bic	r3, r3, #2048
	b	.L54
.L57:
	.align	2
.L56:
	.word	_ZTV10background+8
	.word	_ZN10background4initEv
	.word	_ZdlPv
	.word	_ZdaPv
	.size	_ZN10backgroundD0Ev, .-_ZN10backgroundD0Ev
	.align	2
	.global	_ZN10background4initEv
	.type	_ZN10background4initEv, %function
_ZN10background4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	@ lr needed for prologue
	strh	r3, [r0, #30]	@ movhi 	@  <variable>.nb_tile_x
	str	r3, [r0, #4]	@  <variable>.REG_BGXCNT
	strh	r3, [r0, #8]	@ movhi 	@  <variable>.no_bg
	str	r3, [r0, #12]	@  <variable>.cbb
	str	r3, [r0, #16]	@  <variable>.sbb
	strh	r3, [r0, #22]	@ movhi 	@  <variable>.map_size_y
	strh	r3, [r0, #20]	@ movhi 	@  <variable>.map_size_x
	str	r3, [r0, #24]	@  <variable>.tile
	strh	r3, [r0, #28]	@ movhi 	@  <variable>.tile_size
	strh	r3, [r0, #36]	@ movhi 	@  <variable>.pas_screen
	str	r3, [r0, #40]	@  <variable>.screen_xoff
	str	r3, [r0, #44]	@  <variable>.screen_yoff
	strh	r3, [r0, #50]	@ movhi 	@  <variable>.pas_map
	str	r3, [r0, #52]	@  <variable>.map_hoff
	str	r3, [r0, #56]	@  <variable>.map_voff
	strh	r3, [r0, #34]	@ movhi 	@  <variable>.max_pas_screen
	strh	r3, [r0, #48]	@ movhi 	@  <variable>.max_pas_map
	strh	r3, [r0, #32]	@ movhi 	@  <variable>.nb_tile_y
	bx	lr
	.size	_ZN10background4initEv, .-_ZN10background4initEv
	.align	2
	.global	_ZN10background8add_tileEh
	.type	_ZN10background8add_tileEh, %function
_ZN10background8add_tileEh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r5, r0	@  this
	ldrh	r0, [r0, #28]	@  <variable>.tile_size
	ldr	r3, .L69
	add	r0, r0, #64	@  this
	and	r6, r1, #255	@  no_col_pal,  this
	ldr	r7, [r5, #24]	@  temp,  <variable>.tile
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5, #28]	@  <variable>.tile_size
	mov	r1, r0	@  this
	str	r0, [r5, #24]	@  this,  <variable>.tile
	mov	r2, r2, lsr #1
	mov	ip, #3
	mov	r0, r7	@  temp
	mov	r3, #-2147483648
	ldr	r4, .L69+4
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	ldrh	r1, [r5, #28]	@  <variable>.tile_size
	mov	r2, r1	@  i
.L64:
	ldr	r3, [r5, #24]	@  <variable>.tile
	strb	r6, [r3, r2]	@  no_col_pal, * i
	ldrh	r1, [r5, #28]	@  <variable>.tile_size
	add	r2, r2, #1	@  i,  i
	add	r3, r1, #64
	cmp	r2, r3	@  i
	blt	.L64
	cmp	r7, #0	@  temp
	strh	r3, [r5, #28]	@ movhi 	@  <variable>.tile_size
	movne	r0, r7	@  temp
	ldrne	r3, .L69+8
	movne	lr, pc
	bxne	r3
.L59:
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	_Znam
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZdaPv
	.size	_ZN10background8add_tileEh, .-_ZN10background8add_tileEh
	.align	2
	.global	_ZN10background8add_tileEPh
	.type	_ZN10background8add_tileEPh, %function
_ZN10background8add_tileEPh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r5, r0	@  this
	ldrh	r0, [r0, #28]	@  <variable>.tile_size
	ldr	r3, .L81
	add	r0, r0, #64	@  this
	mov	r6, r1	@  t
	ldr	r7, [r5, #24]	@  temp,  <variable>.tile
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5, #28]	@  <variable>.tile_size
	mov	r1, r0	@  this
	str	r0, [r5, #24]	@  this,  <variable>.tile
	mov	r2, r2, lsr #1
	mov	r0, r7	@  temp
	mov	r3, #-2147483648
	mov	ip, #3
	ldr	r4, .L81+4
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	ldrh	r1, [r5, #28]	@  <variable>.tile_size
	mov	r3, r1, asl #16
	mov	r2, r3
	mov	r0, r3, lsr #16	@  i
.L76:
	sub	r3, r0, r2, lsr #16	@  i
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	ldr	r2, [r5, #24]	@  <variable>.tile
	strb	r1, [r2, r0]	@ * i
	ldrh	r1, [r5, #28]	@  <variable>.tile_size
	mov	r2, r1, asl #16
	mov	r3, r2, lsr #16
	add	r3, r3, #64
	add	r0, r0, #1	@  i,  i
	cmp	r0, r3	@  i
	blt	.L76
	add	r3, r1, #64
	cmp	r7, #0	@  temp
	strh	r3, [r5, #28]	@ movhi 	@  <variable>.tile_size
	movne	r0, r7	@  temp
	ldrne	r3, .L81+8
	movne	lr, pc
	bxne	r3
.L71:
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	_Znam
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZdaPv
	.size	_ZN10background8add_tileEPh, .-_ZN10background8add_tileEPh
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"normalement jamais arrive 2 !!!\000"
	.align	2
.LC0:
	.ascii	"normalement jamais arrive 1 !!!\000"
	.text
	.align	2
	.global	_ZN10background4leftEv
	.type	_ZN10background4leftEv, %function
_ZN10background4leftEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r2, [r0, #40]	@  <variable>.screen_xoff
	ldrh	r3, [r0, #36]	@  <variable>.pas_screen
	rsb	r2, r3, r2
	cmp	r2, #0
	sub	fp, ip, #4
	str	r2, [r0, #40]	@  <variable>.screen_xoff
	blt	.L92
.L83:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L92:
	ldr	r3, [r0, #52]	@  <variable>.map_hoff
	cmp	r3, #0
	streq	r3, [r0, #40]	@  <variable>.screen_xoff
	beq	.L83
	ldrh	ip, [r0, #50]	@  <variable>.pas_map
	rsb	r3, ip, r3
	cmp	r3, #0
	str	r3, [r0, #52]	@  <variable>.map_hoff
	blt	.L93
	ldrh	r3, [r0, #30]	@  <variable>.nb_tile_x
	mov	r3, r3, asl #3
	add	r2, r2, ip, asl #3
	sub	r3, r3, #240
	cmp	r2, r3
	str	r2, [r0, #40]	@  <variable>.screen_xoff
	ble	.L83
	ldr	r0, .L94
.L91:
	ldr	r3, .L94+4
	mov	lr, pc
	bx	r3
	b	.L83
.L93:
	ldrh	r3, [r0, #52]	@  <variable>.map_hoff
	add	r3, ip, r3
	mov	r3, r3, asl #16
	add	r3, r2, r3, lsr #13
	cmp	r3, #0
	mov	r2, #0
	str	r3, [r0, #40]	@  <variable>.screen_xoff
	strlt	r2, [r0, #40]	@  <variable>.screen_xoff
	ldrh	r3, [r0, #30]	@  <variable>.nb_tile_x
	str	r2, [r0, #52]	@  <variable>.map_hoff
	mov	r3, r3, asl #3
	ldr	r2, [r0, #40]	@  <variable>.screen_xoff
	sub	r3, r3, #240
	cmp	r2, r3
	ldrgt	r0, .L94+8
	ble	.L83
	b	.L91
.L95:
	.align	2
.L94:
	.word	.LC1
	.word	_Z5debugPcz
	.word	.LC0
	.size	_ZN10background4leftEv, .-_ZN10background4leftEv
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"jamais arrive 2 !!!\000"
	.align	2
.LC2:
	.ascii	"jamais arrive 1 !!!\000"
	.text
	.align	2
	.global	_ZN10background2upEv
	.type	_ZN10background2upEv, %function
_ZN10background2upEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r2, [r0, #44]	@  <variable>.screen_yoff
	ldrh	r3, [r0, #36]	@  <variable>.pas_screen
	rsb	r2, r3, r2
	cmp	r2, #0
	sub	fp, ip, #4
	str	r2, [r0, #44]	@  <variable>.screen_yoff
	blt	.L105
.L96:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L105:
	ldr	r3, [r0, #56]	@  <variable>.map_voff
	cmp	r3, #0
	streq	r3, [r0, #44]	@  <variable>.screen_yoff
	beq	.L96
	ldrh	ip, [r0, #50]	@  <variable>.pas_map
	rsb	r3, ip, r3
	cmp	r3, #0
	str	r3, [r0, #56]	@  <variable>.map_voff
	blt	.L106
	ldrh	r3, [r0, #32]	@  <variable>.nb_tile_y
	mov	r3, r3, asl #3
	add	r2, r2, ip, asl #3
	sub	r3, r3, #160
	cmp	r2, r3
	str	r2, [r0, #44]	@  <variable>.screen_yoff
	ble	.L96
	ldr	r0, .L107
.L104:
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	b	.L96
.L106:
	ldrh	r3, [r0, #56]	@  <variable>.map_voff
	add	r3, ip, r3
	mov	r3, r3, asl #16
	add	r3, r2, r3, lsr #13
	cmp	r3, #0
	mov	r2, #0
	str	r3, [r0, #44]	@  <variable>.screen_yoff
	strlt	r2, [r0, #44]	@  <variable>.screen_yoff
	ldrh	r3, [r0, #32]	@  <variable>.nb_tile_y
	str	r2, [r0, #56]	@  <variable>.map_voff
	mov	r3, r3, asl #3
	ldr	r2, [r0, #44]	@  <variable>.screen_yoff
	sub	r3, r3, #160
	cmp	r2, r3
	ldrgt	r0, .L107+8
	ble	.L96
	b	.L104
.L108:
	.align	2
.L107:
	.word	.LC3
	.word	_Z5debugPcz
	.word	.LC2
	.size	_ZN10background2upEv, .-_ZN10background2upEv
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"normalement jamais arrive 3 !!!\000"
	.align	2
.LC5:
	.ascii	"normalement jamais arrive 4 !!!\000"
	.text
	.align	2
	.global	_ZN10background5rightEv
	.type	_ZN10background5rightEv, %function
_ZN10background5rightEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	ldr	r3, [r0, #40]	@  <variable>.screen_xoff
	ldrh	r2, [r0, #36]	@  <variable>.pas_screen
	ldrh	r6, [r0, #30]	@  <variable>.nb_tile_x
	sub	fp, ip, #4
	add	ip, r3, r2
	add	r3, ip, #240
	mov	r4, r6, asl #3
	cmp	r3, r4
	str	ip, [r0, #40]	@  <variable>.screen_xoff
	ble	.L109
	ldr	r2, [r0, #52]	@  <variable>.map_hoff
	ldrh	r8, [r0, #20]	@  <variable>.map_size_x
	add	r3, r2, r6
	cmp	r3, r8
	subeq	r3, r4, #240
	mov	lr, r8
	streq	r3, [r0, #40]	@  <variable>.screen_xoff
	beq	.L109
	ldrh	r7, [r0, #50]	@  <variable>.pas_map
	add	r2, r2, r7
	add	r3, r2, r6
	cmp	r3, r8
	mov	r5, r7
	str	r2, [r0, #52]	@  <variable>.map_hoff
	ble	.L112
	ldrh	r3, [r0, #52]	@  <variable>.map_hoff
	add	r3, r3, r6
	rsb	r3, r8, r3
	rsb	r3, r3, r7
	mov	r3, r3, asl #16
	sub	r3, ip, r3, lsr #13
	mov	r2, r3, asr #31
	add	r2, r3, r2, lsr #29
	mov	r2, r2, asr #3
	add	r2, r2, #30
	cmp	r2, r6
	str	r3, [r0, #40]	@  <variable>.screen_xoff
	subgt	r3, r4, #240
	strgt	r3, [r0, #40]	@  <variable>.screen_xoff
	ldr	r3, [r0, #40]	@  <variable>.screen_xoff
	rsb	r1, r6, r8
	cmp	r3, #0
	str	r1, [r0, #52]	@  <variable>.map_hoff
	ldrlt	r0, .L118
	blt	.L117
.L109:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L117:
	ldr	r3, .L118+4
	mov	lr, pc
	bx	r3
	b	.L109
.L112:
	sub	r3, ip, r7, asl #3
	cmp	r3, #0
	str	r3, [r0, #40]	@  <variable>.screen_xoff
	bge	.L109
	ldr	r0, .L118+8
	b	.L117
.L119:
	.align	2
.L118:
	.word	.LC4
	.word	_Z5debugPcz
	.word	.LC5
	.size	_ZN10background5rightEv, .-_ZN10background5rightEv
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"jamais arrive 3 !!!\000"
	.align	2
.LC7:
	.ascii	"jamais arrive 4 !!!\000"
	.text
	.align	2
	.global	_ZN10background4downEv
	.type	_ZN10background4downEv, %function
_ZN10background4downEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	ldr	r3, [r0, #44]	@  <variable>.screen_yoff
	ldrh	r2, [r0, #36]	@  <variable>.pas_screen
	ldrh	r6, [r0, #32]	@  <variable>.nb_tile_y
	sub	fp, ip, #4
	add	ip, r3, r2
	add	r3, ip, #160
	mov	r4, r6, asl #3
	cmp	r3, r4
	str	ip, [r0, #44]	@  <variable>.screen_yoff
	ble	.L120
	ldr	r2, [r0, #56]	@  <variable>.map_voff
	ldrh	r8, [r0, #22]	@  <variable>.map_size_y
	add	r3, r2, r6
	cmp	r3, r8
	subeq	r3, r4, #160
	mov	lr, r8
	streq	r3, [r0, #44]	@  <variable>.screen_yoff
	beq	.L120
	ldrh	r7, [r0, #50]	@  <variable>.pas_map
	add	r2, r2, r7
	add	r3, r2, r6
	cmp	r3, r8
	mov	r5, r7
	str	r2, [r0, #56]	@  <variable>.map_voff
	ble	.L123
	ldrh	r3, [r0, #56]	@  <variable>.map_voff
	add	r3, r3, r6
	rsb	r3, r8, r3
	rsb	r3, r3, r7
	mov	r3, r3, asl #16
	sub	r3, ip, r3, lsr #13
	mov	r2, r3, asr #31
	add	r2, r3, r2, lsr #29
	mov	r2, r2, asr #3
	add	r2, r2, #20
	cmp	r2, r6
	str	r3, [r0, #44]	@  <variable>.screen_yoff
	subgt	r3, r4, #160
	strgt	r3, [r0, #44]	@  <variable>.screen_yoff
	ldr	r3, [r0, #44]	@  <variable>.screen_yoff
	rsb	r1, r6, r8
	cmp	r3, #0
	str	r1, [r0, #56]	@  <variable>.map_voff
	ldrlt	r0, .L129
	blt	.L128
.L120:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L128:
	ldr	r3, .L129+4
	mov	lr, pc
	bx	r3
	b	.L120
.L123:
	sub	r3, ip, r7, asl #3
	cmp	r3, #0
	str	r3, [r0, #44]	@  <variable>.screen_yoff
	bge	.L120
	ldr	r0, .L129+8
	b	.L128
.L130:
	.align	2
.L129:
	.word	.LC6
	.word	_Z5debugPcz
	.word	.LC7
	.size	_ZN10background4downEv, .-_ZN10background4downEv
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"background.cpp\000"
	.align	2
.LC8:
	.ascii	"%s : %d \n"
	.ascii	"\tpas %d\000"
	.text
	.align	2
	.global	_ZN10background14set_pas_screenEt
	.type	_ZN10background14set_pas_screenEt, %function
_ZN10background14set_pas_screenEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	sub	fp, ip, #4
	mov	ip, r1
	mov	ip, ip, asl #16
	mov	r4, ip, lsr #16
	tst	ip, #458752
	mov	lr, r0	@  this
	mov	r2, #272
	ldr	r1, .L139
	ldr	r0, .L139+4
	mov	r3, r4
	mov	ip, ip, asr #16	@  pas
	bne	.L138
	ldrh	r3, [lr, #34]	@  <variable>.max_pas_screen
	cmp	r3, r4
	strlsh	r3, [lr, #36]	@ movhi 	@  <variable>.pas_screen
	strhih	ip, [lr, #36]	@ movhi 	@  pas,  <variable>.pas_screen
	ldrh	r3, [lr, #50]	@  <variable>.pas_map
	ldrh	r2, [lr, #36]	@  <variable>.pas_screen
	mov	r3, r3, asl #3
	cmp	r2, r3
	strgth	r3, [lr, #36]	@ movhi 	@  <variable>.pas_screen
.L131:
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L138:
	ldr	ip, .L139+8
	mov	lr, pc
	bx	ip
	b	.L131
.L140:
	.align	2
.L139:
	.word	.LC9
	.word	.LC8
	.word	_Z5debugPcz
	.size	_ZN10background14set_pas_screenEt, .-_ZN10background14set_pas_screenEt
	.align	2
	.global	_ZN10background11set_pas_mapEt
	.type	_ZN10background11set_pas_mapEt, %function
_ZN10background11set_pas_mapEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #48]	@  <variable>.max_pas_map
	mov	r1, r1, asl #16
	cmp	r3, r1, lsr #16
	mov	r1, r1, asr #16	@  pas
	strlsh	r3, [r0, #50]	@ movhi 	@  <variable>.pas_map
	strhih	r1, [r0, #50]	@ movhi 	@  pas,  <variable>.pas_map
	ldrh	r3, [r0, #36]	@  <variable>.pas_screen
	ldrh	r2, [r0, #50]	@  <variable>.pas_map
	cmp	r3, r2, asl #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #19
	@ lr needed for prologue
	strgth	r3, [r0, #50]	@ movhi 	@  <variable>.pas_map
	bx	lr
	.size	_ZN10background11set_pas_mapEt, .-_ZN10background11set_pas_mapEt
	.weak	_ZTV10background
	.section	.gnu.linkonce.r._ZTV10background,"a",%progbits
	.align	2
	.type	_ZTV10background, %object
	.size	_ZTV10background, 16
_ZTV10background:
	.word	0
	.word	_ZTI10background
	.word	_ZN10backgroundD1Ev
	.word	_ZN10backgroundD0Ev
	.weak	_ZTI10background
	.section	.gnu.linkonce.r._ZTI10background,"a",%progbits
	.align	2
	.type	_ZTI10background, %object
	.size	_ZTI10background, 8
_ZTI10background:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS10background
	.weak	_ZTS10background
	.section	.gnu.linkonce.r._ZTS10background,"a",%progbits
	.align	2
	.type	_ZTS10background, %object
	.size	_ZTS10background, 13
_ZTS10background:
	.ascii	"10background\000"
	.ident	"GCC: (GNU) 3.3.2"
