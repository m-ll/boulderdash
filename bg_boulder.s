	.file	"bg_boulder.cpp"
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

	.global	_Unwind_SjLj_Resume
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.text
	.align	2
	.global	_ZN10bg_boulderC2Ev
	.type	_ZN10bg_boulderC2Ev, %function
_ZN10bg_boulderC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L7
	sub	fp, ip, #4
	sub	sp, sp, #52
	str	r3, [fp, #-60]
	ldr	r3, .L7+4
	ldr	r2, .L7+8
	str	r3, [fp, #-48]
	sub	r3, fp, #40
	str	r2, [fp, #-56]
	str	r0, [fp, #-88]	@  this
	str	r3, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L7+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L7+16
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, .L7+20
	str	r2, [r3, #0]	@  <variable>._vptr.background
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L7+24
	mov	lr, pc
	bx	r3
.L1:
	sub	r0, fp, #84
	ldr	r3, .L7+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L6:
.L2:
.L4:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-92]
	ldr	r3, .L7+32
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-92]
	ldr	r3, .L7+36
	mov	lr, pc
	bx	r3
.L8:
	.align	2
.L7:
	.word	__gxx_personality_sj0
	.word	.L6
	.word	.LLSDA120
	.word	_Unwind_SjLj_Register
	.word	_ZN19background_rotationC2Ev
	.word	_ZTV10bg_boulder+8
	.word	_ZN10bg_boulder4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderC2Ev, .-_ZN10bg_boulderC2Ev
	.section	.gcc_except_table,"a",%progbits
.LLSDA120:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE120-.LLSDACSB120
.LLSDACSB120:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE120:
	.text
	.align	2
	.global	_ZN10bg_boulderC1Ev
	.type	_ZN10bg_boulderC1Ev, %function
_ZN10bg_boulderC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L15
	sub	fp, ip, #4
	sub	sp, sp, #52
	str	r3, [fp, #-60]
	ldr	r3, .L15+4
	ldr	r2, .L15+8
	str	r3, [fp, #-48]
	sub	r3, fp, #40
	str	r2, [fp, #-56]
	str	r0, [fp, #-88]	@  this
	str	r3, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L15+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L15+16
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, .L15+20
	str	r2, [r3, #0]	@  <variable>._vptr.background
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L15+24
	mov	lr, pc
	bx	r3
.L9:
	sub	r0, fp, #84
	ldr	r3, .L15+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L14:
.L10:
.L12:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-92]
	ldr	r3, .L15+32
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-92]
	ldr	r3, .L15+36
	mov	lr, pc
	bx	r3
.L16:
	.align	2
.L15:
	.word	__gxx_personality_sj0
	.word	.L14
	.word	.LLSDA122
	.word	_Unwind_SjLj_Register
	.word	_ZN19background_rotationC2Ev
	.word	_ZTV10bg_boulder+8
	.word	_ZN10bg_boulder4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderC1Ev, .-_ZN10bg_boulderC1Ev
	.section	.gcc_except_table
.LLSDA122:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE122-.LLSDACSB122
.LLSDACSB122:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE122:
	.text
	.align	2
	.global	_ZN10bg_boulderC2EttttttttPKhttS1_t
	.type	_ZN10bg_boulderC2EttttttttPKhttS1_t, %function
_ZN10bg_boulderC2EttttttttPKhttS1_t:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #136
	mov	r2, r2, asl #16
	ldrsh	ip, [fp, #32]	@  s_y
	mov	r2, r2, asr #16
	mov	r3, r3, asl #16
	str	r2, [fp, #-96]	@  priority
	mov	r3, r3, asr #16
	sub	r2, fp, #40
	ldrsh	r4, [fp, #4]	@  mosaic
	ldrsh	r5, [fp, #8]	@  col_pal
	ldrsh	r6, [fp, #12]	@  screen_block
	ldrsh	r7, [fp, #16]	@  wrap
	ldrsh	r8, [fp, #20]	@  size
	ldrsh	sl, [fp, #28]	@  s_x
	ldrsh	lr, [fp, #40]	@  size_t
	str	ip, [fp, #-128]	@  s_y
	str	r3, [fp, #-100]	@  char_block
	ldr	ip, .L23
	str	r2, [fp, #-52]
	ldr	r3, .L23+4
	ldr	r2, .L23+8
	mov	r1, r1, asl #16
	mov	r1, r1, asr #16
	str	r4, [fp, #-104]	@  mosaic
	str	r5, [fp, #-108]	@  col_pal
	str	r6, [fp, #-112]	@  screen_block
	str	r7, [fp, #-116]	@  wrap
	str	r8, [fp, #-120]	@  size
	str	sl, [fp, #-124]	@  s_x
	str	lr, [fp, #-132]	@  size_t
	str	ip, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r1, [fp, #-92]	@  no_back
	sub	r0, fp, #84
	str	r3, [fp, #-60]
	str	r2, [fp, #-56]
	ldr	r3, .L23+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r6, [fp, #-104]	@  mosaic
	mov	r0, r6, asl #16
	ldr	r4, [fp, #-96]	@  priority
	ldr	r7, [fp, #-108]	@  col_pal
	ldr	r8, [fp, #-112]	@  screen_block
	ldr	sl, [fp, #-116]	@  wrap
	mov	r0, r0, lsr #16
	str	r0, [sp, #0]
	ldr	r0, [fp, #24]	@  m,  m
	ldr	r3, [fp, #-92]	@  no_back
	ldr	r5, [fp, #-100]	@  char_block
	ldr	r6, [fp, #-120]	@  size
	mov	r2, r4, asl #16
	mov	ip, r7, asl #16
	mov	lr, r8, asl #16
	ldr	r7, [fp, #-124]	@  s_x
	ldr	r8, [fp, #-128]	@  s_y
	mov	r4, sl, asl #16
	ldr	sl, [fp, #-132]	@  size_t
	str	r0, [sp, #20]	@  m
	ldr	r0, [fp, #36]	@  t,  t
	mov	r1, r3, asl #16
	mov	r3, r5, asl #16
	mov	r5, r6, asl #16
	mov	r6, r7, asl #16
	mov	r7, r8, asl #16
	mov	r8, sl, asl #16
	mov	ip, ip, lsr #16
	mov	lr, lr, lsr #16
	str	r0, [sp, #32]	@  t
	mov	r4, r4, lsr #16
	mvn	r0, #0
	mov	r5, r5, lsr #16
	mov	r6, r6, lsr #16
	mov	r7, r7, lsr #16
	mov	r8, r8, lsr #16
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	str	ip, [sp, #4]
	str	r0, [fp, #-80]
	ldr	ip, .L23+16
	ldr	r0, [fp, #-88]	@  this
	mov	r1, r1, lsr #16
	str	lr, [sp, #8]
	str	r4, [sp, #12]
	str	r5, [sp, #16]
	str	r6, [sp, #24]
	str	r7, [sp, #28]
	str	r8, [sp, #36]
	mov	lr, pc
	bx	ip
	ldr	r3, .L23+20
	ldr	ip, [fp, #-88]	@  this
	mov	r2, #1
	str	r3, [ip, #0]	@  <variable>._vptr.background
	mov	r0, ip
	str	r2, [fp, #-80]
	ldr	r3, .L23+24
	mov	lr, pc
	bx	r3
.L17:
	sub	r0, fp, #84
	ldr	r3, .L23+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L22:
.L18:
.L20:
	add	fp, fp, #40
	ldr	lr, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L23+32
	str	lr, [fp, #-136]
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-136]
	ldr	r3, .L23+36
	mov	lr, pc
	bx	r3
.L24:
	.align	2
.L23:
	.word	.L22
	.word	__gxx_personality_sj0
	.word	.LLSDA125
	.word	_Unwind_SjLj_Register
	.word	_ZN19background_rotationC2EttttttttPKhttS1_t
	.word	_ZTV10bg_boulder+8
	.word	_ZN10bg_boulder4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderC2EttttttttPKhttS1_t, .-_ZN10bg_boulderC2EttttttttPKhttS1_t
	.section	.gcc_except_table
.LLSDA125:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE125-.LLSDACSB125
.LLSDACSB125:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE125:
	.text
	.align	2
	.global	_ZN10bg_boulderC1EttttttttPKhttS1_t
	.type	_ZN10bg_boulderC1EttttttttPKhttS1_t, %function
_ZN10bg_boulderC1EttttttttPKhttS1_t:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #136
	mov	r2, r2, asl #16
	ldrsh	ip, [fp, #32]	@  s_y
	mov	r2, r2, asr #16
	mov	r3, r3, asl #16
	str	r2, [fp, #-96]	@  priority
	mov	r3, r3, asr #16
	sub	r2, fp, #40
	ldrsh	r4, [fp, #4]	@  mosaic
	ldrsh	r5, [fp, #8]	@  col_pal
	ldrsh	r6, [fp, #12]	@  screen_block
	ldrsh	r7, [fp, #16]	@  wrap
	ldrsh	r8, [fp, #20]	@  size
	ldrsh	sl, [fp, #28]	@  s_x
	ldrsh	lr, [fp, #40]	@  size_t
	str	ip, [fp, #-128]	@  s_y
	str	r3, [fp, #-100]	@  char_block
	ldr	ip, .L31
	str	r2, [fp, #-52]
	ldr	r3, .L31+4
	ldr	r2, .L31+8
	mov	r1, r1, asl #16
	mov	r1, r1, asr #16
	str	r4, [fp, #-104]	@  mosaic
	str	r5, [fp, #-108]	@  col_pal
	str	r6, [fp, #-112]	@  screen_block
	str	r7, [fp, #-116]	@  wrap
	str	r8, [fp, #-120]	@  size
	str	sl, [fp, #-124]	@  s_x
	str	lr, [fp, #-132]	@  size_t
	str	ip, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r1, [fp, #-92]	@  no_back
	sub	r0, fp, #84
	str	r3, [fp, #-60]
	str	r2, [fp, #-56]
	ldr	r3, .L31+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r6, [fp, #-104]	@  mosaic
	mov	r0, r6, asl #16
	ldr	r4, [fp, #-96]	@  priority
	ldr	r7, [fp, #-108]	@  col_pal
	ldr	r8, [fp, #-112]	@  screen_block
	ldr	sl, [fp, #-116]	@  wrap
	mov	r0, r0, lsr #16
	str	r0, [sp, #0]
	ldr	r0, [fp, #24]	@  m,  m
	ldr	r3, [fp, #-92]	@  no_back
	ldr	r5, [fp, #-100]	@  char_block
	ldr	r6, [fp, #-120]	@  size
	mov	r2, r4, asl #16
	mov	ip, r7, asl #16
	mov	lr, r8, asl #16
	ldr	r7, [fp, #-124]	@  s_x
	ldr	r8, [fp, #-128]	@  s_y
	mov	r4, sl, asl #16
	ldr	sl, [fp, #-132]	@  size_t
	str	r0, [sp, #20]	@  m
	ldr	r0, [fp, #36]	@  t,  t
	mov	r1, r3, asl #16
	mov	r3, r5, asl #16
	mov	r5, r6, asl #16
	mov	r6, r7, asl #16
	mov	r7, r8, asl #16
	mov	r8, sl, asl #16
	mov	ip, ip, lsr #16
	mov	lr, lr, lsr #16
	str	r0, [sp, #32]	@  t
	mov	r4, r4, lsr #16
	mvn	r0, #0
	mov	r5, r5, lsr #16
	mov	r6, r6, lsr #16
	mov	r7, r7, lsr #16
	mov	r8, r8, lsr #16
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	str	ip, [sp, #4]
	str	r0, [fp, #-80]
	ldr	ip, .L31+16
	ldr	r0, [fp, #-88]	@  this
	mov	r1, r1, lsr #16
	str	lr, [sp, #8]
	str	r4, [sp, #12]
	str	r5, [sp, #16]
	str	r6, [sp, #24]
	str	r7, [sp, #28]
	str	r8, [sp, #36]
	mov	lr, pc
	bx	ip
	ldr	r3, .L31+20
	ldr	ip, [fp, #-88]	@  this
	mov	r2, #1
	str	r3, [ip, #0]	@  <variable>._vptr.background
	mov	r0, ip
	str	r2, [fp, #-80]
	ldr	r3, .L31+24
	mov	lr, pc
	bx	r3
.L25:
	sub	r0, fp, #84
	ldr	r3, .L31+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L30:
.L26:
.L28:
	add	fp, fp, #40
	ldr	lr, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L31+32
	str	lr, [fp, #-136]
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-136]
	ldr	r3, .L31+36
	mov	lr, pc
	bx	r3
.L32:
	.align	2
.L31:
	.word	.L30
	.word	__gxx_personality_sj0
	.word	.LLSDA127
	.word	_Unwind_SjLj_Register
	.word	_ZN19background_rotationC2EttttttttPKhttS1_t
	.word	_ZTV10bg_boulder+8
	.word	_ZN10bg_boulder4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderC1EttttttttPKhttS1_t, .-_ZN10bg_boulderC1EttttttttPKhttS1_t
	.section	.gcc_except_table
.LLSDA127:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE127-.LLSDACSB127
.LLSDACSB127:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE127:
	.text
	.align	2
	.global	_ZN10bg_boulderD2Ev
	.type	_ZN10bg_boulderD2Ev, %function
_ZN10bg_boulderD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L53
	sub	fp, ip, #4
	sub	sp, sp, #60
	ldr	r2, .L53+4
	str	r3, [fp, #-60]
	ldr	r3, .L53+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L53+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #100]	@  this,  <variable>.level
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L53+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L50
.L36:
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #104]	@  this,  <variable>.tombe
	cmp	r0, #0	@  this
	bne	.L51
.L38:
	ldr	r2, [fp, #-88]	@  this
	ldr	r2, [r2, #112]	@  <variable>.oeuf
	cmp	r2, #0
	str	r2, [fp, #-92]
	bne	.L52
.L40:
	ldr	r3, [fp, #-88]	@  this
	ldr	r3, [r3, #108]	@  <variable>.pierre
	cmp	r3, #0
	str	r3, [fp, #-96]
	beq	.L42
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-96]
	ldr	r3, .L53+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-96]
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
.L42:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L53+28
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L53+32
	mov	lr, pc
	bx	r3
.L33:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L53+36
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L53+40
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L52:
	mov	r3, #1
	str	r3, [fp, #-80]
	mov	r0, r2
	ldr	r3, .L53+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-92]
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	b	.L40
.L51:
	ldr	r3, .L53+44
	mov	lr, pc
	bx	r3
	b	.L38
.L50:
	ldr	r3, .L53+44
	mov	lr, pc
	bx	r3
	b	.L36
.L49:
.L43:
.L45:
	add	fp, fp, #40
	ldr	r2, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	str	r2, [fp, #-100]
	ldr	r3, .L53+36
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-100]
	ldr	r3, .L53+48
	mov	lr, pc
	bx	r3
.L54:
	.align	2
.L53:
	.word	__gxx_personality_sj0
	.word	.LLSDA130
	.word	.L49
	.word	_Unwind_SjLj_Register
	.word	_ZTV10bg_boulder+8
	.word	_ZN10tab_spriteD1Ev
	.word	_ZdlPv
	.word	_ZN10bg_boulder4initEv
	.word	_ZN19background_rotation4initEv
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderD2Ev, .-_ZN10bg_boulderD2Ev
	.section	.gcc_except_table
.LLSDA130:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE130-.LLSDACSB130
.LLSDACSB130:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE130:
	.text
	.align	2
	.global	_ZN10bg_boulderD1Ev
	.type	_ZN10bg_boulderD1Ev, %function
_ZN10bg_boulderD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L75
	sub	fp, ip, #4
	sub	sp, sp, #60
	ldr	r2, .L75+4
	str	r3, [fp, #-60]
	ldr	r3, .L75+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L75+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #100]	@  this,  <variable>.level
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L75+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L72
.L58:
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #104]	@  this,  <variable>.tombe
	cmp	r0, #0	@  this
	bne	.L73
.L60:
	ldr	r2, [fp, #-88]	@  this
	ldr	r2, [r2, #112]	@  <variable>.oeuf
	cmp	r2, #0
	str	r2, [fp, #-92]
	bne	.L74
.L62:
	ldr	r3, [fp, #-88]	@  this
	ldr	r3, [r3, #108]	@  <variable>.pierre
	cmp	r3, #0
	str	r3, [fp, #-96]
	beq	.L64
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-96]
	ldr	r3, .L75+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-96]
	ldr	r3, .L75+24
	mov	lr, pc
	bx	r3
.L64:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L75+28
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L75+32
	mov	lr, pc
	bx	r3
.L55:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L75+36
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L75+40
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L74:
	mov	r3, #1
	str	r3, [fp, #-80]
	mov	r0, r2
	ldr	r3, .L75+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-92]
	ldr	r3, .L75+24
	mov	lr, pc
	bx	r3
	b	.L62
.L73:
	ldr	r3, .L75+44
	mov	lr, pc
	bx	r3
	b	.L60
.L72:
	ldr	r3, .L75+44
	mov	lr, pc
	bx	r3
	b	.L58
.L71:
.L65:
.L67:
	add	fp, fp, #40
	ldr	r2, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	str	r2, [fp, #-100]
	ldr	r3, .L75+36
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-100]
	ldr	r3, .L75+48
	mov	lr, pc
	bx	r3
.L76:
	.align	2
.L75:
	.word	__gxx_personality_sj0
	.word	.LLSDA132
	.word	.L71
	.word	_Unwind_SjLj_Register
	.word	_ZTV10bg_boulder+8
	.word	_ZN10tab_spriteD1Ev
	.word	_ZdlPv
	.word	_ZN10bg_boulder4initEv
	.word	_ZN19background_rotation4initEv
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderD1Ev, .-_ZN10bg_boulderD1Ev
	.section	.gcc_except_table
.LLSDA132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE132-.LLSDACSB132
.LLSDACSB132:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE132:
	.text
	.align	2
	.global	_ZN10bg_boulderD0Ev
	.type	_ZN10bg_boulderD0Ev, %function
_ZN10bg_boulderD0Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L97
	sub	fp, ip, #4
	sub	sp, sp, #60
	ldr	r2, .L97+4
	str	r3, [fp, #-60]
	ldr	r3, .L97+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L97+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #100]	@  this,  <variable>.level
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L97+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L94
.L80:
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #104]	@  this,  <variable>.tombe
	cmp	r0, #0	@  this
	bne	.L95
.L82:
	ldr	r2, [fp, #-88]	@  this
	ldr	r2, [r2, #112]	@  <variable>.oeuf
	cmp	r2, #0
	str	r2, [fp, #-92]
	bne	.L96
.L84:
	ldr	r3, [fp, #-88]	@  this
	ldr	r3, [r3, #108]	@  <variable>.pierre
	cmp	r3, #0
	str	r3, [fp, #-96]
	beq	.L86
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-96]
	ldr	r3, .L97+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-96]
	ldr	r3, .L97+24
	mov	lr, pc
	bx	r3
.L86:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L97+28
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L97+32
	mov	lr, pc
	bx	r3
.L77:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L97+36
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L97+24
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L97+40
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L96:
	mov	r3, #1
	str	r3, [fp, #-80]
	mov	r0, r2
	ldr	r3, .L97+20
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-92]
	ldr	r3, .L97+24
	mov	lr, pc
	bx	r3
	b	.L84
.L95:
	ldr	r3, .L97+44
	mov	lr, pc
	bx	r3
	b	.L82
.L94:
	ldr	r3, .L97+44
	mov	lr, pc
	bx	r3
	b	.L80
.L93:
.L87:
.L89:
	add	fp, fp, #40
	ldr	r2, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	str	r2, [fp, #-100]
	ldr	r3, .L97+36
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-100]
	ldr	r3, .L97+48
	mov	lr, pc
	bx	r3
.L98:
	.align	2
.L97:
	.word	__gxx_personality_sj0
	.word	.LLSDA134
	.word	.L93
	.word	_Unwind_SjLj_Register
	.word	_ZTV10bg_boulder+8
	.word	_ZN10tab_spriteD1Ev
	.word	_ZdlPv
	.word	_ZN10bg_boulder4initEv
	.word	_ZN19background_rotation4initEv
	.word	_ZN19background_rotationD2Ev
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN10bg_boulderD0Ev, .-_ZN10bg_boulderD0Ev
	.section	.gcc_except_table
.LLSDA134:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE134-.LLSDACSB134
.LLSDACSB134:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE134:
	.text
	.align	2
	.global	_ZN10bg_boulder4initEv
	.type	_ZN10bg_boulder4initEv, %function
_ZN10bg_boulder4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	@ lr needed for prologue
	str	r3, [r0, #108]	@  <variable>.pierre
	str	r3, [r0, #100]	@  <variable>.level
	str	r3, [r0, #104]	@  <variable>.tombe
	str	r3, [r0, #112]	@  <variable>.oeuf
	bx	lr
	.size	_ZN10bg_boulder4initEv, .-_ZN10bg_boulder4initEv
	.global	__divsi3
	.align	2
	.global	_ZN10bg_boulder9set_levelEPKh
	.type	_ZN10bg_boulder9set_levelEPKh, %function
_ZN10bg_boulder9set_levelEPKh:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L180
	sub	fp, ip, #4
	sub	sp, sp, #132
	ldr	r2, .L180+4
	str	r3, [fp, #-60]
	ldr	r3, .L180+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	str	r1, [fp, #-92]	@  l
	ldr	r3, .L180+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldrh	r2, [r3, #20]	@  <variable>.map_size_x
	ldrh	r3, [r3, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	mvn	r1, #0
	mul	r0, r3, r2	@  this
	str	r1, [fp, #-80]
	ldr	r3, .L180+16
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-88]	@  this
	ldrh	r2, [ip, #20]	@  <variable>.map_size_x
	ldrh	r3, [ip, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	muls	r2, r3, r2
	str	r0, [ip, #100]	@  this,  <variable>.level
	mov	r0, #0	@  i
	beq	.L164
.L105:
	sub	r2, fp, #92
	ldmia	r2, {r2, ip}	@ phole ldm
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ * i
	ldr	r3, [ip, #100]	@  <variable>.level
	strb	r1, [r3, r0]	@ * i
	ldrh	r2, [ip, #20]	@  <variable>.map_size_x
	ldrh	r3, [ip, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	mul	r1, r3, r2
	add	r0, r0, #1	@  i,  i
	cmp	r0, r1	@  i
	blt	.L105
.L164:
	ldr	r1, [fp, #-88]	@  this
	ldrh	r2, [r1, #20]	@  <variable>.map_size_x
	ldrh	r3, [r1, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	mvn	r1, #0
	mul	r0, r3, r2	@  this
	str	r1, [fp, #-80]
	ldr	r3, .L180+16
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldrh	r2, [r3, #20]	@  <variable>.map_size_x
	ldrh	r3, [r3, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	muls	r2, r3, r2
	ldr	ip, [fp, #-88]	@  this
	str	r0, [ip, #104]	@  this,  <variable>.tombe
	mov	r0, #0	@  i
	beq	.L166
	mov	ip, r0	@  i,  i
.L110:
	ldr	r1, [fp, #-88]	@  this
	ldr	r3, [r1, #104]	@  <variable>.tombe
	strb	ip, [r3, r0]	@  i, * i
	ldrh	r2, [r1, #20]	@  <variable>.map_size_x
	ldrh	r3, [r1, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	mul	r1, r3, r2
	add	r0, r0, #1	@  i,  i
	cmp	r0, r1	@  i
	blt	.L110
.L166:
	mvn	r3, #0
	mov	r0, #4096	@  this
	str	r3, [fp, #-80]
	add	r0, r0, #4	@  this,  this
	ldr	r3, .L180+20
	mov	lr, pc
	bx	r3
	mov	r3, #4
	mov	r2, #1
	str	r3, [fp, #-80]
	str	r0, [fp, #-96]
	strb	r2, [fp, #-97]
	ldr	r3, .L180+24
	mov	lr, pc
	bx	r3
.L115:
	ldr	r1, [fp, #-96]
	ldr	ip, [fp, #-88]	@  this
	mvn	r3, #0
	mov	r0, #4096	@  this
	str	r1, [ip, #112]	@  <variable>.oeuf
	add	r0, r0, #4	@  this,  this
	str	r3, [fp, #-80]
	ldr	r3, .L180+20
	mov	lr, pc
	bx	r3
	mov	r3, #3
	str	r3, [fp, #-80]
	mov	r2, #0
	mov	r3, #1
	strb	r3, [fp, #-109]
	str	r0, [fp, #-108]
	strb	r2, [fp, #-97]
	ldr	r3, .L180+24
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-108]
	ldr	r2, [fp, #-88]	@  this
	mov	ip, #0
	mov	r1, #0
	str	ip, [fp, #-116]	@  y
	strb	r1, [fp, #-109]
	str	r3, [r2, #108]	@  <variable>.pierre
.L123:
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-116]	@  y
	ldrh	r3, [ip, #22]	@  <variable>.map_size_y
	cmp	r1, r3, lsr #1
	bge	.L175
.L121:
	ldr	r1, [fp, #-88]	@  this
	ldrh	r3, [r1, #20]	@  <variable>.map_size_x
	mov	r2, #0
	mov	r3, r3, asl #16
	cmp	r2, r3, lsr #17
	str	r2, [fp, #-120]	@  x
	bge	.L168
.L159:
	ldr	r1, [fp, #-116]	@  y
	ldr	ip, [fp, #-120]	@  x
	mov	r3, r3, lsr #17
	mla	r1, r3, r1, ip
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [r3, #100]	@  <variable>.level
	ldrb	r3, [r2, r1]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L176
	cmp	r3, #112
	beq	.L177
.L139:
	cmp	r3, #111
	beq	.L178
	cmp	r3, #118
	ldreq	r3, [fp, #-120]	@  x
	ldreq	ip, [fp, #-116]	@  y
	moveq	r1, r3, asl #17
	moveq	r2, ip, asl #17
	beq	.L169
	cmp	r3, #120
	beq	.L179
.L129:
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-120]	@  x
	ldrh	r3, [ip, #20]	@  <variable>.map_size_x
	add	r1, r1, #1
	mov	r3, r3, asl #16
	cmp	r1, r3, lsr #17
	str	r1, [fp, #-120]	@  x
	blt	.L159
.L168:
	ldr	r2, [fp, #-116]	@  y
	add	r2, r2, #1
	str	r2, [fp, #-116]	@  y
	b	.L123
.L179:
	sub	r2, fp, #120
	ldmia	r2, {r2, r3}	@ phole ldm
	mov	r1, r2, asl #17
	mov	r2, r3, asl #17
.L169:
	mov	r3, #0	@  no0
	mvn	r0, #0
	str	r3, [sp, #0]	@  no0
	str	r3, [sp, #4]	@  no0
	str	r3, [sp, #8]	@  no0
	str	r0, [fp, #-80]
	mov	r1, r1, lsr #16	@  l
	mov	r2, r2, lsr #16
.L172:
	ldr	r0, [fp, #-88]	@  this
.L170:
	ldr	ip, .L180+28
	mov	lr, pc
	bx	ip
	b	.L129
.L178:
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r3, .L180+20
	mov	r0, #68
	mov	lr, pc
	bx	r3
	ldr	r3, .L180+32
	ldr	r1, [fp, #-120]	@  x
	ldrh	lr, [r3, #0]	@  oeuf_Width
	ldr	r2, .L180+36
	mov	r3, r1, asl #20
	ldr	r1, [fp, #-116]	@  y
	ldrh	ip, [r2, #0]	@  oeuf_Height
	mov	r3, r3, lsr #16
	mov	r2, r1, asl #20
	mov	r2, r2, lsr #16
	str	r3, [sp, #0]
	ldr	r3, .L180+40
	mov	r1, #1	@  l
	str	r2, [sp, #4]
	mov	r2, #0
	str	r3, [sp, #24]
	str	ip, [sp, #32]
	str	r2, [sp, #8]
	str	r2, [sp, #12]
	str	r1, [sp, #16]	@  l
	str	r2, [sp, #20]
	str	r1, [fp, #-80]	@  l
	strb	r1, [fp, #-133]	@  l
	str	r0, [fp, #-132]
	mov	r1, r2
	str	lr, [sp, #28]
	mov	r2, #4096
	mov	r3, #8192
	ldr	ip, .L180+44
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-132]
	mov	ip, #16	@ movhi
	ldr	r0, [r3, #20]	@  this,  <variable>.x
	strh	ip, [r3, #54]	@ movhi 	@  <variable>.pas_move_y
	strh	ip, [r3, #52]	@ movhi 	@  <variable>.pas_move_x
	mov	r1, #16
	ldr	r2, .L180+48
	mov	lr, pc
	bx	r2
	ldr	ip, [fp, #-132]
	ldr	r3, [ip, #4]	@  this,  <variable>.y
	str	r0, [ip, #60]	@  this,  <variable>.map_x
	mov	r1, #16
	mov	r0, r3	@  this
	ldr	r2, .L180+48
	mov	lr, pc
	bx	r2
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-132]
	ldr	r3, [ip, #112]	@  this,  <variable>.oeuf
	mvn	r2, #0
	str	r0, [r1, #64]	@  this,  <variable>.map_y
	mov	r0, r3	@  this
	str	r2, [fp, #-80]
	ldr	r3, .L180+52
	mov	lr, pc
	bx	r3
	sub	r3, fp, #120
	ldmia	r3, {r3, ip}	@ phole ldm
	mov	r2, ip, asl #17
	mov	ip, #0
	mov	r1, r3, asl #17
	mov	lr, #0	@  no0
	ldr	r0, [fp, #-88]	@  this
	strb	ip, [fp, #-133]
	mov	r1, r1, lsr #16	@  l
	mov	r2, r2, lsr #16
	mov	r3, lr	@  no0
.L173:
	str	lr, [sp, #0]	@  no0
	str	lr, [sp, #4]	@  no0
	str	lr, [sp, #8]	@  no0
	b	.L170
.L177:
	mvn	r1, #0
	str	r1, [fp, #-80]
	ldr	r3, .L180+20
	mov	r0, #68
	mov	lr, pc
	bx	r3
	ldr	r2, .L180+56
	ldr	r3, .L180+60
	ldrh	ip, [r2, #0]	@  pierre_Height
	ldr	r2, [fp, #-120]	@  x
	ldrh	lr, [r3, #0]	@  pierre_Width
	ldr	r1, [fp, #-116]	@  y
	mov	r3, r2, asl #20
	mov	r3, r3, lsr #16
	mov	r2, r1, asl #20
	str	r3, [sp, #0]
	ldr	r3, .L180+64
	mov	r2, r2, lsr #16
	mov	r1, #1
	str	r2, [sp, #4]
	str	r3, [sp, #24]
	mov	r2, #0
	mov	r3, #2
	str	r1, [sp, #16]
	str	ip, [sp, #32]
	str	r2, [sp, #8]
	str	r2, [sp, #12]
	str	r2, [sp, #20]
	str	r3, [fp, #-80]
	strb	r1, [fp, #-125]
	str	r0, [fp, #-124]
	str	lr, [sp, #28]
	mov	r1, #1024
	mov	r2, #4096
	mov	r3, #8192
	ldr	ip, .L180+44
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-124]
	mov	ip, #16	@ movhi
	ldr	r0, [r3, #20]	@  this,  <variable>.x
	strh	ip, [r3, #54]	@ movhi 	@  <variable>.pas_move_y
	strh	ip, [r3, #52]	@ movhi 	@  <variable>.pas_move_x
	mov	r1, #16
	ldr	r2, .L180+48
	mov	lr, pc
	bx	r2
	ldr	ip, [fp, #-124]
	ldr	r3, [ip, #4]	@  this,  <variable>.y
	str	r0, [ip, #60]	@  this,  <variable>.map_x
	mov	r1, #16
	mov	r0, r3	@  this
	ldr	r2, .L180+48
	mov	lr, pc
	bx	r2
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-124]
	ldr	r3, [ip, #108]	@  this,  <variable>.pierre
	mvn	r2, #0
	str	r0, [r1, #64]	@  this,  <variable>.map_y
	mov	r0, r3	@  this
	str	r2, [fp, #-80]
	ldr	r3, .L180+52
	mov	lr, pc
	bx	r3
	sub	r3, fp, #120
	ldmia	r3, {r3, ip}	@ phole ldm
	mov	r1, r3, asl #17
	mov	r2, ip, asl #17
	mov	lr, #0	@  no0
	ldr	r0, [fp, #-88]	@  this
	mov	ip, #0
	mov	r1, r1, lsr #16	@  l
	mov	r2, r2, lsr #16
	mov	r3, lr	@  no0
	strb	ip, [fp, #-125]
	b	.L173
.L176:
	mov	r1, ip, asl #17
	ldr	ip, [fp, #-116]	@  y
	mov	r3, #2	@  no1
	mov	r0, #15	@  no2
	mov	r2, ip, asl #17
	str	r3, [sp, #0]	@  no1
	mov	r3, #16	@  no3
	stmib	sp, {r0, r3}	@ phole stm
	mvn	r0, #0
	mov	r1, r1, lsr #16	@  l
	mov	r2, r2, lsr #16
	mov	r3, #1
	str	r0, [fp, #-80]
	b	.L172
.L100:
.L175:
	sub	r0, fp, #84
	ldr	r3, .L180+68
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L111:
	ldrb	r3, [fp, #-97]
	tst	r3, #255
	ldrne	r0, [fp, #-96]
.L174:
	bne	.L171
.L148:
.L149:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-104]
	ldr	r3, .L180+72
	mov	lr, pc
	bx	r3
.L171:
	ldr	r3, .L180+76
	mov	lr, pc
	bx	r3
	b	.L148
.L117:
	ldrb	ip, [fp, #-109]
	tst	ip, #255
	ldrne	r0, [fp, #-108]
	b	.L174
.L135:
	ldrb	r1, [fp, #-125]
	tst	r1, #255
	ldrne	r0, [fp, #-124]
	b	.L174
.L161:
	add	fp, fp, #40
	ldr	r3, [fp, #-80]
	ldr	r1, [fp, #-76]
	cmp	r3, #1
	str	r1, [fp, #-104]
	beq	.L135
	cmp	r3, #2
	beq	.L117
	cmp	r3, #3
	beq	.L111
.L145:
	ldrb	r2, [fp, #-133]
	tst	r2, #255
	beq	.L148
	ldr	r0, [fp, #-132]
	b	.L171
.L181:
	.align	2
.L180:
	.word	__gxx_personality_sj0
	.word	.LLSDA138
	.word	.L161
	.word	_Unwind_SjLj_Register
	.word	_Znam
	.word	_Znwm
	.word	_ZN10tab_spriteC1Ev
	.word	_ZN19background_rotation14change_tile_16Etttttt
	.word	oeuf_Width
	.word	oeuf_Height
	.word	oeuf_Bitmap
	.word	_ZN6spriteC1EtttttttttPKhtt
	.word	__divsi3
	.word	_ZN10tab_sprite10add_spriteEP6sprite
	.word	pierre_Height
	.word	pierre_Width
	.word	pierre_Bitmap
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.word	_ZdlPv
	.size	_ZN10bg_boulder9set_levelEPKh, .-_ZN10bg_boulder9set_levelEPKh
	.section	.gcc_except_table
.LLSDA138:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE138-.LLSDACSB138
.LLSDACSB138:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x3
	.uleb128 0x0
.LLSDACSE138:
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC10:
	.ascii	"%s : %d\n"
	.ascii	"\tc %c\000"
	.align	2
.LC9:
	.ascii	"%s : %d\n"
	.ascii	"\ty %d\000"
	.align	2
.LC8:
	.ascii	"%s : %d\n"
	.ascii	"\tx %d\000"
	.text
	.align	2
	.global	_ZN10bg_boulder9set_levelEtth
	.type	_ZN10bg_boulder9set_levelEtth, %function
_ZN10bg_boulder9set_levelEtth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r7, r1, asl #16	@  c
	ldrh	r1, [r0, #20]	@  <variable>.map_size_x
	mov	r6, r0	@  this
	mov	r0, r7, lsr #16	@  c
	mov	r2, r2, asl #16
	cmp	r0, r1, lsr #1	@  c
	sub	fp, ip, #4
	mov	r5, r2, asr #16	@  y
	and	r4, r3, #255	@  c
	bcs	.L188
.L183:
	mov	r5, r5, asl #16	@  y
	ldrh	r3, [r6, #22]	@  <variable>.map_size_y
	mov	r1, r5, lsr #16	@  c
	cmp	r1, r3, lsr #1	@  c
	bcs	.L189
.L184:
	cmp	r4, #118	@  c
	cmpne	r4, #109	@  c
	beq	.L185
	cmp	r4, #112	@  c
	cmpne	r4, #111	@  c
	beq	.L185
	cmp	r4, #32	@  c
	cmpne	r4, #120	@  c
	bne	.L190
.L185:
	ldrh	r1, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r1, lsr #1
	cmp	r3, r7, lsr #16
	bls	.L182
	ldrh	r3, [r6, #22]	@  <variable>.map_size_y
	mov	r3, r3, lsr #1
	cmp	r3, r5, lsr #16
	bls	.L182
	cmp	r4, #118	@  c
	cmpne	r4, #109	@  c
	beq	.L186
	cmp	r4, #112	@  c
	cmpne	r4, #111	@  c
	beq	.L186
	cmp	r4, #32	@  c
	cmpne	r4, #120	@  c
	bne	.L182
.L186:
	mov	ip, r5, lsr #16
	mov	r1, r1, lsr #1
	mov	r3, r7, lsr #16
	mla	r0, r1, ip, r3
	ldr	r2, [r6, #100]	@  <variable>.level
	strb	r4, [r2, r0]	@  c
.L182:
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L190:
	ldr	r0, .L191
	mov	r1, r4	@  c
	ldr	r3, .L191+4
	mov	lr, pc
	bx	r3
	b	.L185
.L189:
	ldr	r0, .L191+8
	ldr	r3, .L191+4
	mov	lr, pc
	bx	r3
	b	.L184
.L188:
	mov	r1, r0	@  c
	ldr	r3, .L191+4
	ldr	r0, .L191+12
	mov	lr, pc
	bx	r3
	b	.L183
.L192:
	.align	2
.L191:
	.word	.LC10
	.word	_Z5debugPcz
	.word	.LC9
	.word	.LC8
	.size	_ZN10bg_boulder9set_levelEtth, .-_ZN10bg_boulder9set_levelEtth
	.align	2
	.global	_ZN10bg_boulder9get_levelEtt
	.type	_ZN10bg_boulder9get_levelEtt, %function
_ZN10bg_boulder9get_levelEtt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r1, r1, asl #16
	ldrh	r3, [r0, #20]	@  <variable>.map_size_x
	mov	r6, r1, lsr #16
	mov	r2, r2, asl #16
	cmp	r6, r3, lsr #1
	mov	r5, r0	@  this
	sub	fp, ip, #4
	ldr	r0, .L200
	mov	r1, r6
	mov	r4, r2, asr #16	@  y
	bcs	.L198
.L194:
	mov	r3, r4, asl #16	@  y
	ldrh	r2, [r5, #22]	@  <variable>.map_size_y
	mov	r4, r3, lsr #16
	cmp	r4, r2, lsr #1
	ldr	r0, .L200+4
	mov	r1, r4
	bcs	.L199
.L195:
	ldrh	r3, [r5, #20]	@  <variable>.map_size_x
	mov	ip, r3, lsr #1
	cmp	r6, ip
	mov	r0, #0	@  this
	bcs	.L193
	ldrh	r3, [r5, #22]	@  <variable>.map_size_y
	cmp	r4, r3, lsr #1
	mlacc	r2, ip, r4, r6
	ldrcc	r3, [r5, #100]	@  <variable>.level
	ldrccb	r0, [r3, r2]	@ zero_extendqisi2	@  this
.L193:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L199:
	ldr	r3, .L200+8
	mov	lr, pc
	bx	r3
	b	.L195
.L198:
	ldr	r3, .L200+8
	mov	lr, pc
	bx	r3
	b	.L194
.L201:
	.align	2
.L200:
	.word	.LC8
	.word	.LC9
	.word	_Z5debugPcz
	.size	_ZN10bg_boulder9get_levelEtt, .-_ZN10bg_boulder9get_levelEtt
	.align	2
	.global	_ZN10bg_boulder10get_hero_xEv
	.type	_ZN10bg_boulder10get_hero_xEv, %function
_ZN10bg_boulder10get_hero_xEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldrh	r3, [r0, #22]	@  <variable>.map_size_y
	mov	r4, #0	@  y
	mov	r2, r3, lsr #1
	cmp	r4, r2	@  y
	mov	r5, r0	@  this
	bge	.L215
	ldrh	r3, [r0, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r7, r2
	mov	r8, r3
	mov	r6, r3, lsr #16
.L213:
	mov	r1, #0	@  x
	cmp	r1, r6	@  x
	bge	.L217
	mov	r0, r8, lsr #16
	mul	lr, r0, r4	@  y
	ldr	ip, [r5, #100]	@  <variable>.level
.L212:
	add	r3, lr, r1	@  x
	ldrb	r2, [ip, r3]	@ zero_extendqisi2
	cmp	r2, #120
	moveq	r3, r1, asl #16	@  x
	moveq	r0, r3, lsr #16	@  this
	beq	.L202
	add	r1, r1, #1	@  x,  x
	cmp	r1, r0	@  x
	blt	.L212
.L217:
	add	r4, r4, #1	@  y,  y
	cmp	r4, r7	@  y
	blt	.L213
.L215:
	mov	r0, #0	@  this
.L202:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	_ZN10bg_boulder10get_hero_xEv, .-_ZN10bg_boulder10get_hero_xEv
	.align	2
	.global	_ZN10bg_boulder10get_hero_yEv
	.type	_ZN10bg_boulder10get_hero_yEv, %function
_ZN10bg_boulder10get_hero_yEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldrh	r3, [r0, #22]	@  <variable>.map_size_y
	mov	r4, #0	@  y
	mov	r2, r3, lsr #1
	cmp	r4, r2	@  y
	mov	r5, r0	@  this
	bge	.L231
	ldrh	r3, [r0, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r8, r2
	mov	sl, r3
	mov	r7, r3, lsr #16
.L229:
	mov	r1, #0	@  x
	cmp	r1, r7	@  x
	bge	.L233
	mov	r0, sl, lsr #16
	mul	lr, r0, r4	@  y
	ldr	ip, [r5, #100]	@  <variable>.level
	mov	r6, r4, asl #16	@  y
.L228:
	add	r3, lr, r1	@  x
	ldrb	r2, [ip, r3]	@ zero_extendqisi2
	cmp	r2, #120
	add	r1, r1, #1	@  x,  x
	moveq	r0, r6, lsr #16	@  this
	beq	.L218
	cmp	r1, r0	@  x
	blt	.L228
.L233:
	add	r4, r4, #1	@  y,  y
	cmp	r4, r8	@  y
	blt	.L229
.L231:
	mov	r0, #0	@  this
.L218:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
	.size	_ZN10bg_boulder10get_hero_yEv, .-_ZN10bg_boulder10get_hero_yEv
	.align	2
	.global	_ZN10bg_boulder6tomberEv
	.type	_ZN10bg_boulder6tomberEv, %function
_ZN10bg_boulder6tomberEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldrh	r2, [r0, #20]	@  <variable>.map_size_x
	ldrh	r3, [r0, #22]	@  <variable>.map_size_y
	mov	r2, r2, lsr #1
	mov	r3, r3, lsr #1
	mov	r6, r0	@  this
	mul	r0, r3, r2	@  this
	ldr	r3, .L398
	mov	lr, pc
	bx	r3
	ldrh	r1, [r6, #20]	@  <variable>.map_size_x
	ldrh	r3, [r6, #22]	@  <variable>.map_size_y
	mov	r1, r1, lsr #1
	mov	r3, r3, lsr #1
	mul	r2, r3, r1
	str	r0, [fp, #-48]	@  next
	mov	ip, #3
	ldr	r0, [r6, #100]	@  this,  <variable>.level
	mov	r3, #-2080374784
	str	ip, [sp, #0]
	mov	r2, r2, asr #2
	ldr	r1, [fp, #-48]	@  next
	ldr	r4, .L398+4
	mov	lr, pc
	bx	r4
	ldrh	lr, [r6, #20]	@  <variable>.map_size_x
	mov	r3, lr, lsr #1
	sub	r3, r3, #1
	mov	r7, #1	@  x
	mov	ip, #0
	cmp	r7, r3	@  x
	str	ip, [fp, #-44]	@  play_snd
	bge	.L364
	ldrh	r2, [r6, #22]	@  <variable>.map_size_y
	ldr	r0, [r6, #100]	@  next,  <variable>.level
.L348:
	mov	r3, r2, lsr #1
	sub	r3, r3, #1
	mov	r9, #0	@  y
	cmp	r9, r3	@  y
	bge	.L354
	mov	sl, #4096
.L347:
	mov	r3, lr, lsr #1
	mla	ip, r3, r9, r7	@  y,  x
	add	r8, r9, #1	@  y,  y
	mla	r2, r3, r8, r7	@  y,  x
	ldrb	r1, [r0, ip]	@ zero_extendqisi2
	str	r1, [fp, #-52]	@  c
	ldrb	r3, [r0, r2]	@ zero_extendqisi2
	sub	r4, r1, #111
	str	r3, [fp, #-56]	@  c1
	and	r1, r4, #255
	cmp	r3, #118
	movne	r3, #0
	moveq	r3, #1
	str	r4, [fp, #-60]
	cmp	r1, #1
	movhi	r4, #0
	andls	r4, r3, #1
	cmp	r4, #0
	add	r3, r0, ip	@  next
	add	r2, r0, r2	@  next
	beq	.L243
	ldr	r1, [r6, #104]	@  <variable>.tombe
	mov	r2, #0
	strb	r2, [r1, ip]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r8, r7	@  y,  x
	ldr	r2, [r6, #104]	@  <variable>.tombe
	mov	r3, #1
	strb	r3, [r2, r1]
.L244:
	ldr	ip, [fp, #-60]
	ldr	r1, [fp, #-56]	@  c1
	and	r3, ip, #255
	cmp	r3, #1
	cmpls	r1, #118
	mov	ip, #0	@  trouve
	bne	.L248
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	ip, r3	@  trouve
	mov	r5, ip	@  i,  trouve
	bge	.L371
.L258:
	mov	r1, r5, asl #16	@  i
	str	ip, [fp, #-64]
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	ldr	ip, [fp, #-64]
	beq	.L387
.L251:
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L258
	cmp	ip, #0	@  trouve
	bne	.L368
.L371:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r5, ip	@  i,  trouve
	bge	.L368
.L269:
	mov	r1, r5, asl #16	@  i
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	beq	.L388
.L262:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L269
.L368:
	ldrh	lr, [r6, #20]	@  <variable>.map_size_x
.L270:
	sub	r2, fp, #60
	ldmia	r2, {r2, r4}	@ phole ldm
	and	r3, r2, #255
	cmp	r3, #1
	cmpls	r4, #120
	bne	.L320
	mov	r3, lr, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	ldr	r2, [r6, #104]	@  <variable>.tombe
	ldrb	r3, [r2, r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L320
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	mov	r5, #0	@  i
	cmp	r5, r3	@  i
	bge	.L362
.L332:
	mov	r1, r5, asl #16	@  i
	mov	r1, r1, lsr #16	@  next
	ldr	ip, .L398+8
	mov	lr, pc
	bx	ip
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	beq	.L389
.L323:
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L332
.L362:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	mov	r5, #0	@  i
	cmp	r5, r3	@  i
	bge	.L369
.L344:
	mov	r1, r5, asl #16	@  i
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	beq	.L390
.L335:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L344
.L369:
	ldrh	lr, [r6, #20]	@  <variable>.map_size_x
.L320:
	ldr	r2, [fp, #-60]
	and	r3, r2, #255
	cmp	r3, #1
	bhi	.L370
	mov	r3, lr, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	ldr	r0, [r6, #100]	@  next,  <variable>.level
	ldr	r3, [fp, #-48]	@  next
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L391
.L241:
	ldrh	r2, [r6, #22]	@  <variable>.map_size_y
	mov	r3, r2, lsr #1
	sub	r3, r3, #1
	cmp	r8, r3	@  y
	mov	r9, r8	@  y,  y
	blt	.L347
.L354:
	mov	r3, lr, lsr #1
	sub	r3, r3, #1
	add	r7, r7, #1	@  x,  x
	cmp	r7, r3	@  x
	blt	.L348
.L352:
	mov	r1, lr, lsr #1
	mov	r3, r2, lsr #1
	mul	r2, r3, r1
	mov	ip, #3
	mov	r1, r0	@  next
	str	ip, [sp, #0]
	mov	r2, r2, asr #2
	ldr	r0, [fp, #-48]	@  next
	mov	r3, #-2080374784
	ldr	r4, .L398+4
	mov	lr, pc
	bx	r4
	ldr	ip, [fp, #-48]	@  next
	cmp	ip, #0
	movne	r0, ip
	ldrne	r3, .L398+12
	movne	lr, pc
	bxne	r3
.L350:
	ldr	r0, [fp, #-44]	@  play_snd,  play_snd
.L234:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L391:
	ldr	r0, [r6, #104]	@  <variable>.tombe
	ldr	r4, [fp, #-52]	@  c
	ldrb	r2, [r0, r1]	@ zero_extendqisi2
	cmp	r4, #112
	movne	r3, #0
	moveq	r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	ldrne	ip, [fp, #-44]	@  play_snd
	mov	r3, #0
	orrne	ip, ip, #2
	strne	ip, [fp, #-44]	@  play_snd
	strb	r3, [r0, r1]
	ldrh	lr, [r6, #20]	@  <variable>.map_size_x
.L370:
	ldr	r0, [r6, #100]	@  next,  <variable>.level
	b	.L241
.L390:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L335
	ldr	r3, .L398+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	ldr	r2, [r4, #64]	@  <variable>.map_y
	add	r2, r2, #1
	str	r2, [r4, #64]	@  <variable>.map_y
	ldr	r4, [fp, #-48]	@  next
	mov	ip, #118
	strb	ip, [r4, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	ldr	r1, [fp, #-52]	@  c
	strb	r1, [r4, r2]
	cmp	r4, #0
.L386:
	ldrne	r0, [fp, #-48]	@  next
	ldrne	r3, .L398+12
	movne	lr, pc
	bxne	r3
.L343:
	mov	r0, #1	@  play_snd
	b	.L234
.L389:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L323
	ldr	r1, .L398+16
	mov	lr, pc
	bx	r1
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	ldr	r2, [r4, #64]	@  <variable>.map_y
	add	r2, r2, #1
	str	r2, [r4, #64]	@  <variable>.map_y
	ldr	r2, [fp, #-48]	@  next
	mov	r3, #118
	strb	r3, [r2, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	ldr	r4, [fp, #-48]	@  next
	ldr	ip, [fp, #-52]	@  c
	cmp	r4, #0
	strb	ip, [r4, r2]
	b	.L386
.L388:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L262
.L377:
	ldr	r3, .L398+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	ldr	r2, [r4, #64]	@  <variable>.map_y
	add	r2, r2, #1
	str	r2, [r4, #64]	@  <variable>.map_y
	ldr	r4, [fp, #-48]	@  next
	mov	ip, #118
	strb	ip, [r4, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	ldr	r1, [fp, #-52]	@  c
	strb	r1, [r4, r2]
	b	.L368
.L387:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L251
	b	.L377
.L248:
	cmp	r3, #1
	ldrhih	lr, [r6, #20]	@  <variable>.map_size_x
	bhi	.L271
	ldrh	lr, [r6, #20]	@  <variable>.map_size_x
	mov	r1, lr, lsr #1
	mla	r3, r1, r9, r7	@  y,  x
	ldr	r0, [r6, #100]	@  next,  <variable>.level
	add	r3, r0, r3	@  next
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #118
	beq	.L392
.L271:
	ldr	r4, [fp, #-60]
	and	r3, r4, #255
	cmp	r3, #1
	bhi	.L270
	mov	r1, lr, lsr #1
	mla	r3, r1, r9, r7	@  y,  x
	ldr	r0, [r6, #100]	@  next,  <variable>.level
	add	r3, r0, r3	@  next
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L270
	mla	r1, r8, r1, r7	@  y,  x
	add	r3, r0, r1	@  next
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L270
	ldr	ip, [fp, #-48]	@  next
	add	r3, ip, r1
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L270
	ldr	r1, [fp, #-56]	@  c1
	sub	r3, r1, #111
	cmp	r3, #1
	bhi	.L270
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	mov	ip, #0	@  trouve
	cmp	ip, r3	@  trouve
	mov	r5, ip	@  i,  trouve
	bge	.L373
.L307:
	mov	r1, r5, asl #16	@  i
	str	ip, [fp, #-64]
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	ldr	ip, [fp, #-64]
	beq	.L393
.L299:
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L307
	cmp	ip, #0	@  trouve
	bne	.L368
.L373:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r5, ip	@  i,  trouve
	bge	.L368
.L319:
	mov	r1, r5, asl #16	@  i
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	beq	.L394
.L311:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L319
	b	.L368
.L394:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L311
	ldr	r3, .L398+20
	mov	lr, pc
	bx	r3
	mov	r0, r4	@  s
	ldr	r3, .L398+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	add	r2, r4, #60
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r4, #64]	@  <variable>.map_y
	str	r2, [r4, #60]	@  <variable>.map_x
	ldr	r4, [fp, #-48]	@  next
	mov	ip, #118
	strb	ip, [r4, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	add	r2, r4, r2
.L383:
	ldr	r1, [fp, #-52]	@  c
	strb	r1, [r2, #1]
	b	.L368
.L393:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L299
	ldr	r3, .L398+20
	mov	lr, pc
	bx	r3
	mov	r0, r4	@  s
	ldr	r2, .L398+16
	mov	lr, pc
	bx	r2
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	add	r2, r4, #60
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r3, r3, #1
	str	r3, [r4, #64]	@  <variable>.map_y
	add	r2, r2, #1
	ldr	r3, [fp, #-48]	@  next
	str	r2, [r4, #60]	@  <variable>.map_x
	mov	r4, #118
	strb	r4, [r3, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	ldr	ip, [fp, #-48]	@  next
	add	r2, ip, r2
	b	.L383
.L392:
	mla	r1, r8, r1, r7	@  y,  x
	add	r3, r0, r1	@  next
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L271
	ldr	r4, [fp, #-48]	@  next
	add	r3, r4, r1
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L271
	ldr	r1, [fp, #-56]	@  c1
	sub	r3, r1, #111
	cmp	r3, #1
	bhi	.L271
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	ip, r3	@  trouve
	mov	r5, ip	@  i,  trouve
	bge	.L372
.L282:
	mov	r1, r5, asl #16	@  i
	str	ip, [fp, #-64]
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	ldr	ip, [fp, #-64]
	beq	.L395
.L274:
	ldr	r0, [r6, #112]	@  this,  <variable>.oeuf
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L282
	cmp	ip, #0	@  trouve
	bne	.L368
.L372:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r5, ip	@  i,  trouve
	bge	.L368
.L294:
	mov	r1, r5, asl #16	@  i
	mov	r1, r1, lsr #16	@  next
	ldr	r2, .L398+8
	mov	lr, pc
	bx	r2
	ldr	r3, [r0, #60]	@  <anonymous>,  <variable>.map_x
	cmp	r3, r7	@  <anonymous>,  x
	mov	r4, r0	@  s
	add	r5, r5, #1	@  i,  i
	beq	.L396
.L286:
	ldr	r0, [r6, #108]	@  this,  <variable>.pierre
	ldrh	r3, [r0, sl]	@  <variable>.nb
	cmp	r5, r3	@  i
	blt	.L294
	b	.L368
.L396:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L286
	ldr	r3, .L398+24
	mov	lr, pc
	bx	r3
	mov	r0, r4	@  s
	ldr	r3, .L398+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	add	r2, r4, #60
	ldmia	r2, {r2, r3}	@ phole ldm
	sub	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r4, #64]	@  <variable>.map_y
	str	r2, [r4, #60]	@  <variable>.map_x
	ldr	r4, [fp, #-48]	@  next
	mov	ip, #118
	strb	ip, [r4, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	add	r2, r4, r2
.L384:
	ldr	r1, [fp, #-52]	@  c
	strb	r1, [r2, #-1]
	b	.L368
.L395:
	ldr	r3, [r0, #64]	@  <anonymous>,  <variable>.map_y
	cmp	r3, r9	@  <anonymous>,  y
	bne	.L274
	ldr	r3, .L398+24
	mov	lr, pc
	bx	r3
	mov	r0, r4	@  s
	ldr	r2, .L398+16
	mov	lr, pc
	bx	r2
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r9, r7	@  y,  x
	add	r2, r4, #60
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r3, r3, #1
	str	r3, [r4, #64]	@  <variable>.map_y
	sub	r2, r2, #1
	ldr	r3, [fp, #-48]	@  next
	str	r2, [r4, #60]	@  <variable>.map_x
	mov	r4, #118
	strb	r4, [r3, r1]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r2, r3, r8, r7	@  y,  x
	ldr	ip, [fp, #-48]	@  next
	add	r2, ip, r2
	b	.L384
.L243:
	cmp	r1, #1
	bhi	.L245
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #118
	beq	.L397
.L245:
	ldr	r2, [fp, #-60]
	and	r3, r2, #255
	cmp	r3, #1
	bhi	.L244
	mov	r1, lr, lsr #1
	mla	ip, r1, r9, r7	@  y,  x
	add	r3, r0, ip	@  next
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L244
	mla	r3, r1, r8, r7	@  y,  x
	add	r3, r0, r3	@  next
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #118
	bne	.L244
	ldr	r4, [fp, #-56]	@  c1
	sub	r3, r4, #111
	cmp	r3, #1
	bhi	.L244
	ldr	r1, [r6, #104]	@  <variable>.tombe
	mov	r2, #0
	strb	r2, [r1, ip]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r8, r7	@  y,  x
	ldr	r2, [r6, #104]	@  <variable>.tombe
	mov	r3, #1
	add	r2, r2, r1
	strb	r3, [r2, #1]
	b	.L244
.L397:
	ldrb	r3, [r2, #-1]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L245
	ldr	r1, [fp, #-56]	@  c1
	sub	r3, r1, #111
	cmp	r3, #1
	bhi	.L245
	ldr	r2, [r6, #104]	@  <variable>.tombe
	strb	r4, [r2, ip]
	ldrh	r3, [r6, #20]	@  <variable>.map_size_x
	mov	r3, r3, lsr #1
	mla	r1, r3, r8, r7	@  y,  x
	ldr	r2, [r6, #104]	@  <variable>.tombe
	mov	r3, #1
	add	r2, r2, r1
	strb	r3, [r2, #-1]
	b	.L244
.L364:
	ldr	r0, [r6, #100]	@  next,  <variable>.level
	ldrh	r2, [r6, #22]	@  <variable>.map_size_y
	b	.L352
.L399:
	.align	2
.L398:
	.word	_Znam
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZN10tab_sprite10get_spriteEt
	.word	_ZdaPv
	.word	_ZN6sprite4downEv
	.word	_ZN6sprite5rightEv
	.word	_ZN6sprite4leftEv
	.size	_ZN10bg_boulder6tomberEv, .-_ZN10bg_boulder6tomberEv
	.weak	_ZTV10bg_boulder
	.section	.gnu.linkonce.r._ZTV10bg_boulder,"a",%progbits
	.align	2
	.type	_ZTV10bg_boulder, %object
	.size	_ZTV10bg_boulder, 16
_ZTV10bg_boulder:
	.word	0
	.word	_ZTI10bg_boulder
	.word	_ZN10bg_boulderD1Ev
	.word	_ZN10bg_boulderD0Ev
	.weak	_ZTI10bg_boulder
	.section	.gnu.linkonce.r._ZTI10bg_boulder,"a",%progbits
	.align	2
	.type	_ZTI10bg_boulder, %object
	.size	_ZTI10bg_boulder, 12
_ZTI10bg_boulder:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS10bg_boulder
	.word	_ZTI19background_rotation
	.weak	_ZTS10bg_boulder
	.section	.gnu.linkonce.r._ZTS10bg_boulder,"a",%progbits
	.align	2
	.type	_ZTS10bg_boulder, %object
	.size	_ZTS10bg_boulder, 13
_ZTS10bg_boulder:
	.ascii	"10bg_boulder\000"
	.ident	"GCC: (GNU) 3.3.2"
