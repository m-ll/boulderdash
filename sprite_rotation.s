	.file	"sprite_rotation.cpp"
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
	.global	_ZN15sprite_rotationC2Ev
	.type	_ZN15sprite_rotationC2Ev, %function
_ZN15sprite_rotationC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L2
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	_ZN15sprite_rotation4initEv
	.size	_ZN15sprite_rotationC2Ev, .-_ZN15sprite_rotationC2Ev
	.align	2
	.global	_ZN15sprite_rotationC1Ev
	.type	_ZN15sprite_rotationC1Ev, %function
_ZN15sprite_rotationC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L5
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	_ZN15sprite_rotation4initEv
	.size	_ZN15sprite_rotationC1Ev, .-_ZN15sprite_rotationC1Ev
	.align	2
	.global	_ZN15sprite_rotationD2Ev
	.type	_ZN15sprite_rotationD2Ev, %function
_ZN15sprite_rotationD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L10
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	_ZN15sprite_rotation4initEv
	.size	_ZN15sprite_rotationD2Ev, .-_ZN15sprite_rotationD2Ev
	.align	2
	.global	_ZN15sprite_rotationD1Ev
	.type	_ZN15sprite_rotationD1Ev, %function
_ZN15sprite_rotationD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L15
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	_ZN15sprite_rotation4initEv
	.size	_ZN15sprite_rotationD1Ev, .-_ZN15sprite_rotationD1Ev
	.align	2
	.global	_ZN15sprite_rotation4initEv
	.type	_ZN15sprite_rotation4initEv, %function
_ZN15sprite_rotation4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r2, #256
	@ lr needed for prologue
	str	r2, [r0, #16]	@  <variable>.zoomx
	str	r3, [r0, #12]	@  <variable>.angle
	str	r3, [r0, #0]	@  <variable>.oam_rot
	strh	r3, [r0, #4]	@ movhi 	@  <variable>.pas_angle
	strh	r3, [r0, #8]	@ movhi 	@  <variable>.pas_zoom_y
	strh	r3, [r0, #6]	@ movhi 	@  <variable>.pas_zoom_x
	str	r2, [r0, #20]	@  <variable>.zoomy
	bx	lr
	.size	_ZN15sprite_rotation4initEv, .-_ZN15sprite_rotation4initEv
	.align	2
	.global	_ZN15sprite_rotation4initEttttll
	.type	_ZN15sprite_rotation4initEttttll, %function
_ZN15sprite_rotation4initEttttll:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldrsh	lr, [sp, #4]	@  a,  a
	ldr	ip, [sp, #12]	@  z_y,  z_y
	mov	lr, lr, asl #16	@  a
	strh	r3, [r0, #8]	@ movhi 	@  <variable>.pas_zoom_y
	ldr	r3, [sp, #8]	@  z_x,  z_x
	mov	lr, lr, lsr #16
	str	ip, [r0, #20]	@  z_y,  <variable>.zoomy
	strh	r1, [r0, #4]	@ movhi 	@  <variable>.pas_angle
	strh	r2, [r0, #6]	@ movhi 	@  <variable>.pas_zoom_x
	str	lr, [r0, #12]	@  <variable>.angle
	str	r3, [r0, #16]	@  z_x,  <variable>.zoomx
	ldr	lr, [sp], #4
	bx	lr
	.size	_ZN15sprite_rotation4initEttttll, .-_ZN15sprite_rotation4initEttttll
	.align	2
	.global	_ZN15sprite_rotation6updateEv
	.type	_ZN15sprite_rotation6updateEv, %function
_ZN15sprite_rotation6updateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	ip, [r0, #12]	@  <variable>.angle
	ldr	r3, .L20
	ldr	r2, .L20+4
	ldr	lr, [r3, ip, asl #2]	@  SIN
	ldr	r1, [r2, ip, asl #2]	@  COS
	ldr	r7, [r0, #20]	@  <variable>.zoomy
	rsb	r3, lr, #0
	ldr	r6, [r0, #16]	@  <variable>.zoomx
	mov	r1, r1, asr #8
	mov	r3, r3, asr #8
	mov	lr, lr, asr #8
	mul	r5, r3, r6
	mul	ip, r1, r7
	mul	r4, lr, r7
	mul	r2, r1, r6
	ldr	r3, [r0, #0]	@  <variable>.oam_rot
	mov	r2, r2, asr #8
	mov	r4, r4, asr #8
	mov	r5, r5, asr #8
	mov	ip, ip, asr #8
	strh	ip, [r3, #30]	@ movhi 	@  <variable>.corner4
	strh	r2, [r3, #6]	@ movhi 	@  <variable>.corner1
	strh	r4, [r3, #14]	@ movhi 	@  <variable>.corner2
	strh	r5, [r3, #22]	@ movhi 	@  <variable>.corner3
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	SIN
	.word	COS
	.size	_ZN15sprite_rotation6updateEv, .-_ZN15sprite_rotation6updateEv
	.global	_Unwind_SjLj_Resume
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.align	2
	.global	_ZN19tab_sprite_rotationC2Ev
	.type	_ZN19tab_sprite_rotationC2Ev, %function
_ZN19tab_sprite_rotationC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L49
	sub	fp, ip, #4
	sub	sp, sp, #76
	ldr	r2, .L49+4
	str	r3, [fp, #-60]
	ldr	r3, .L49+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	ldr	r3, .L49+12
	str	sp, [fp, #-44]
	sub	r0, fp, #84
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	mov	r2, #255
	str	r3, [fp, #-92]	@  <anonymous>
	str	r3, [fp, #-96]	@  <anonymous>
	str	r2, [fp, #-100]	@  <anonymous>
.L24:
	mov	r3, #2
	ldr	r0, [fp, #-96]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationC1Ev
	sub	r2, fp, #100
	ldmia	r2, {r2, r3}	@ phole ldm
	sub	r2, r2, #1
	add	r3, r3, #24
	cmn	r2, #1
	str	r2, [fp, #-100]	@  <anonymous>
	str	r3, [fp, #-96]	@  <anonymous>
	bne	.L24
	mov	r3, #1
	mvn	r2, #0
	str	r3, [fp, #-80]
	str	r2, [fp, #-100]	@  <anonymous>
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L49+16
	mov	lr, pc
	bx	r3
.L22:
	sub	r0, fp, #84
	ldr	r3, .L49+20
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L28:
	ldr	r2, [fp, #-92]	@  <anonymous>
	cmp	r2, #0
	str	r0, [fp, #-104]	@  this
	beq	.L31
	ldr	r2, [fp, #-100]	@  <anonymous>
	rsb	r3, r2, #255
	ldr	r2, [fp, #-92]	@  <anonymous>
	add	r3, r3, r3, asl #1
	add	r3, r2, r3, asl #3
	str	r3, [fp, #-108]	@  <anonymous>
.L32:
	ldr	r3, [fp, #-92]	@  <anonymous>
	ldr	r2, [fp, #-108]	@  <anonymous>
	cmp	r3, r2
	beq	.L31
	sub	r2, r2, #24
	mov	r3, #0
	mov	r0, r2
	str	r2, [fp, #-108]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L32
.L31:
.L35:
	ldr	r0, [fp, #-104]	@  this
.L48:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, .L49+24
	mov	lr, pc
	bx	r3
.L46:
	add	fp, fp, #40
	ldr	r3, [fp, #-80]
	cmp	r3, #1
	ldr	r0, [fp, #-76]	@  this
	beq	.L28
.L37:
	ldr	r3, [fp, #-88]	@  this
	cmp	r3, #0
	str	r0, [fp, #-112]	@  this
	beq	.L40
	add	r2, r3, #6144
	str	r2, [fp, #-116]	@  <anonymous>
.L41:
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-116]	@  <anonymous>
	cmp	r3, r2
	beq	.L40
	sub	r2, r2, #24
	mov	r3, #0
	mov	r0, r2
	str	r2, [fp, #-116]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L41
.L40:
.L44:
	ldr	r0, [fp, #-112]	@  this
	b	.L48
.L50:
	.align	2
.L49:
	.word	__gxx_personality_sj0
	.word	.LLSDA105
	.word	.L46
	.word	_Unwind_SjLj_Register
	.word	_ZN19tab_sprite_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.size	_ZN19tab_sprite_rotationC2Ev, .-_ZN19tab_sprite_rotationC2Ev
	.section	.gcc_except_table,"a",%progbits
.LLSDA105:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE105-.LLSDACSB105
.LLSDACSB105:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
.LLSDACSE105:
	.text
	.align	2
	.global	_ZN19tab_sprite_rotationC1Ev
	.type	_ZN19tab_sprite_rotationC1Ev, %function
_ZN19tab_sprite_rotationC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L78
	sub	fp, ip, #4
	sub	sp, sp, #76
	ldr	r2, .L78+4
	str	r3, [fp, #-60]
	ldr	r3, .L78+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	ldr	r3, .L78+12
	str	sp, [fp, #-44]
	sub	r0, fp, #84
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	mov	r2, #255
	str	r3, [fp, #-92]	@  <anonymous>
	str	r3, [fp, #-96]	@  <anonymous>
	str	r2, [fp, #-100]	@  <anonymous>
.L53:
	mov	r3, #2
	ldr	r0, [fp, #-96]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationC1Ev
	sub	r2, fp, #100
	ldmia	r2, {r2, r3}	@ phole ldm
	sub	r2, r2, #1
	add	r3, r3, #24
	cmn	r2, #1
	str	r2, [fp, #-100]	@  <anonymous>
	str	r3, [fp, #-96]	@  <anonymous>
	bne	.L53
	mov	r3, #1
	mvn	r2, #0
	str	r3, [fp, #-80]
	str	r2, [fp, #-100]	@  <anonymous>
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L78+16
	mov	lr, pc
	bx	r3
.L51:
	sub	r0, fp, #84
	ldr	r3, .L78+20
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L57:
	ldr	r2, [fp, #-92]	@  <anonymous>
	cmp	r2, #0
	str	r0, [fp, #-104]	@  this
	beq	.L60
	ldr	r2, [fp, #-100]	@  <anonymous>
	rsb	r3, r2, #255
	ldr	r2, [fp, #-92]	@  <anonymous>
	add	r3, r3, r3, asl #1
	add	r3, r2, r3, asl #3
	str	r3, [fp, #-108]	@  <anonymous>
.L61:
	ldr	r3, [fp, #-92]	@  <anonymous>
	ldr	r2, [fp, #-108]	@  <anonymous>
	cmp	r3, r2
	beq	.L60
	sub	r2, r2, #24
	mov	r3, #0
	mov	r0, r2
	str	r2, [fp, #-108]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L61
.L60:
.L64:
	ldr	r0, [fp, #-104]	@  this
.L77:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, .L78+24
	mov	lr, pc
	bx	r3
.L75:
	add	fp, fp, #40
	ldr	r3, [fp, #-80]
	cmp	r3, #1
	ldr	r0, [fp, #-76]	@  this
	beq	.L57
.L66:
	ldr	r3, [fp, #-88]	@  this
	cmp	r3, #0
	str	r0, [fp, #-112]	@  this
	beq	.L69
	add	r2, r3, #6144
	str	r2, [fp, #-116]	@  <anonymous>
.L70:
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-116]	@  <anonymous>
	cmp	r3, r2
	beq	.L69
	sub	r2, r2, #24
	mov	r3, #0
	mov	r0, r2
	str	r2, [fp, #-116]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L70
.L69:
.L73:
	ldr	r0, [fp, #-112]	@  this
	b	.L77
.L79:
	.align	2
.L78:
	.word	__gxx_personality_sj0
	.word	.LLSDA107
	.word	.L75
	.word	_Unwind_SjLj_Register
	.word	_ZN19tab_sprite_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.size	_ZN19tab_sprite_rotationC1Ev, .-_ZN19tab_sprite_rotationC1Ev
	.section	.gcc_except_table
.LLSDA107:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE107-.LLSDACSB107
.LLSDACSB107:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
.LLSDACSE107:
	.text
	.align	2
	.global	_ZN19tab_sprite_rotationD2Ev
	.type	_ZN19tab_sprite_rotationD2Ev, %function
_ZN19tab_sprite_rotationD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L98
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	r2, .L98+4
	str	r3, [fp, #-60]
	ldr	r3, .L98+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L98+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L98+16
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	cmp	r3, #0
	beq	.L80
	add	r2, r3, #6144
	str	r2, [fp, #-96]	@  <anonymous>
.L93:
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-96]	@  <anonymous>
	cmp	r3, r2
	beq	.L80
	sub	r2, r2, #24
	mvn	r3, #0
	mov	r0, r2
	str	r2, [fp, #-96]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L93
.L80:
	sub	r0, fp, #84
	ldr	r3, .L98+20
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L97:
.L82:
	add	fp, fp, #40
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-76]
	cmp	r3, #0
	str	r2, [fp, #-92]
	beq	.L85
	add	r3, r3, #6144
	str	r3, [fp, #-96]	@  <anonymous>
.L86:
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, [fp, #-96]	@  <anonymous>
	cmp	r2, r3
	beq	.L85
	sub	r3, r3, #24
	mov	r2, #0
	mov	r0, r3
	str	r3, [fp, #-96]	@  <anonymous>
	str	r2, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L86
.L85:
.L89:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-92]	@  this
	ldr	r3, .L98+24
	mov	lr, pc
	bx	r3
.L99:
	.align	2
.L98:
	.word	__gxx_personality_sj0
	.word	.LLSDA110
	.word	.L97
	.word	_Unwind_SjLj_Register
	.word	_ZN19tab_sprite_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.size	_ZN19tab_sprite_rotationD2Ev, .-_ZN19tab_sprite_rotationD2Ev
	.section	.gcc_except_table
.LLSDA110:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE110-.LLSDACSB110
.LLSDACSB110:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE110:
	.text
	.align	2
	.global	_ZN19tab_sprite_rotationD1Ev
	.type	_ZN19tab_sprite_rotationD1Ev, %function
_ZN19tab_sprite_rotationD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L118
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	r2, .L118+4
	str	r3, [fp, #-60]
	ldr	r3, .L118+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L118+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L118+16
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	cmp	r3, #0
	beq	.L100
	add	r2, r3, #6144
	str	r2, [fp, #-96]	@  <anonymous>
.L113:
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-96]	@  <anonymous>
	cmp	r3, r2
	beq	.L100
	sub	r2, r2, #24
	mvn	r3, #0
	mov	r0, r2
	str	r2, [fp, #-96]	@  <anonymous>
	str	r3, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L113
.L100:
	sub	r0, fp, #84
	ldr	r3, .L118+20
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L117:
.L102:
	add	fp, fp, #40
	ldr	r3, [fp, #-88]	@  this
	ldr	r2, [fp, #-76]
	cmp	r3, #0
	str	r2, [fp, #-92]
	beq	.L105
	add	r3, r3, #6144
	str	r3, [fp, #-96]	@  <anonymous>
.L106:
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, [fp, #-96]	@  <anonymous>
	cmp	r2, r3
	beq	.L105
	sub	r3, r3, #24
	mov	r2, #0
	mov	r0, r3
	str	r3, [fp, #-96]	@  <anonymous>
	str	r2, [fp, #-80]
	bl	_ZN15sprite_rotationD1Ev
	b	.L106
.L105:
.L109:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-92]	@  this
	ldr	r3, .L118+24
	mov	lr, pc
	bx	r3
.L119:
	.align	2
.L118:
	.word	__gxx_personality_sj0
	.word	.LLSDA112
	.word	.L117
	.word	_Unwind_SjLj_Register
	.word	_ZN19tab_sprite_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.size	_ZN19tab_sprite_rotationD1Ev, .-_ZN19tab_sprite_rotationD1Ev
	.section	.gcc_except_table
.LLSDA112:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE112-.LLSDACSB112
.LLSDACSB112:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE112:
	.text
	.align	2
	.global	_ZN19tab_sprite_rotation4initEv
	.type	_ZN19tab_sprite_rotation4initEv, %function
_ZN19tab_sprite_rotation4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r5, #0	@  i
	ldr	r7, .L128
	sub	fp, ip, #4
	mov	r6, r0	@  this
	mov	r4, r5	@  i,  i
.L125:
	add	r0, r6, r4	@  this,  this,  i
	bl	_ZN15sprite_rotation4initEv
	ldr	r3, [r7, #0]	@  OAM_buffer_rot
	add	r3, r3, r5, asl #5	@  i
	add	r5, r5, #1	@  i,  i
	cmp	r5, #255	@  i
	str	r3, [r4, r6]	@  <variable>.oam_rot
	add	r4, r4, #24	@  i,  i
	ble	.L125
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	OAM_buffer_rot
	.size	_ZN19tab_sprite_rotation4initEv, .-_ZN19tab_sprite_rotation4initEv
	.ident	"GCC: (GNU) 3.3.2"
