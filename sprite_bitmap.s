	.file	"sprite_bitmap.cpp"
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
	.global	_ZN13sprite_bitmapC2Ev
	.type	_ZN13sprite_bitmapC2Ev, %function
_ZN13sprite_bitmapC2Ev:
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
	.word	_ZN13sprite_bitmap4initEv
	.size	_ZN13sprite_bitmapC2Ev, .-_ZN13sprite_bitmapC2Ev
	.align	2
	.global	_ZN13sprite_bitmapC1Ev
	.type	_ZN13sprite_bitmapC1Ev, %function
_ZN13sprite_bitmapC1Ev:
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
	.word	_ZN13sprite_bitmap4initEv
	.size	_ZN13sprite_bitmapC1Ev, .-_ZN13sprite_bitmapC1Ev
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s : %d \n"
	.ascii	"\tbmp %p\000"
	.align	2
.LC1:
	.ascii	"%s : %d \n"
	.ascii	"\tcol %d\000"
	.align	2
.LC2:
	.ascii	"%s : %d \n"
	.ascii	"\t ad_next_free %X    \000"
	.align	2
.LC3:
	.ascii	"sprite_bitmap.cpp\000"
	.text
	.align	2
	.global	_ZN13sprite_bitmapC2EPKhttttt
	.type	_ZN13sprite_bitmapC2EPKhttttt, %function
_ZN13sprite_bitmapC2EPKhttttt:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	mov	r3, r3, asl #16
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mov	r2, r2, asl #16
	sub	fp, ip, #4
	mov	r6, r1	@  bmp
	mov	r8, r3, asr #16	@  s_y
	ldr	r3, .L16
	mov	r5, r0	@  this
	mov	sl, r2, asr #16	@  s_x
	ldrsh	r7, [fp, #4]	@  ad,  ad
	ldrsh	r9, [fp, #8]	@  sp_no,  sp_no
	ldrsh	r4, [fp, #12]	@  nb_col,  nb_col
	mov	lr, pc
	bx	r3
	cmp	r6, #0	@  bmp
	ldr	r0, .L16+4
	mov	r1, r6	@  bmp
	beq	.L13
.L8:
	mov	r3, r4, asl #16	@  nb_col
	mov	r4, r3, lsr #16	@  bmp
	cmp	r3, #0
	cmpne	r4, #8192	@  bmp
	ldr	r0, .L16+8
	mov	r1, r4	@  bmp
	bne	.L14
.L9:
	cmp	r6, #0	@  bmp
	beq	.L7
	cmp	r4, #0	@  bmp
	cmpne	r4, #8192	@  bmp
	bne	.L7
	strh	r7, [r5, #8]	@ movhi 	@  ad,  <variable>.ad_deb
	ldrh	r3, [r5, #8]	@  <variable>.ad_deb
	mla	ip, r8, sl, r3	@  s_y,  s_x
	strh	ip, [r5, #10]	@ movhi 	@  <variable>.ad_next_free
	ldrh	ip, [r5, #10]	@  <variable>.ad_next_free
	movs	r3, ip, asl #16
	ldr	r0, .L16+12
	ldr	r1, .L16+16
	mov	r2, #30
	str	r6, [r5, #0]	@  bmp,  <variable>.bitmap
	strh	r9, [r5, #12]	@ movhi 	@  sp_no,  <variable>.sp_no_deb
	strh	sl, [r5, #4]	@ movhi 	@  s_x,  <variable>.size_x
	strh	r8, [r5, #6]	@ movhi 	@  s_y,  <variable>.size_y
	mov	r3, r3, lsr #16
	bmi	.L15
.L12:
	mov	r2, ip, lsr #4
	mov	r0, r5	@  this
	strh	r2, [r5, #14]	@ movhi 	@  <variable>.sp_no_next_free
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
.L7:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L15:
	ldr	ip, .L16+24
	mov	lr, pc
	bx	ip
	ldrh	ip, [r5, #10]	@  <variable>.ad_next_free
	b	.L12
.L14:
	ldr	r3, .L16+24
	mov	lr, pc
	bx	r3
	b	.L9
.L13:
	ldr	r3, .L16+24
	mov	lr, pc
	bx	r3
	b	.L8
.L17:
	.align	2
.L16:
	.word	_ZN13sprite_bitmap4initEv
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	_ZN13sprite_bitmap6updateEv
	.word	_Z5debugPcz
	.size	_ZN13sprite_bitmapC2EPKhttttt, .-_ZN13sprite_bitmapC2EPKhttttt
	.align	2
	.global	_ZN13sprite_bitmapC1EPKhttttt
	.type	_ZN13sprite_bitmapC1EPKhttttt, %function
_ZN13sprite_bitmapC1EPKhttttt:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	mov	r3, r3, asl #16
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mov	r2, r2, asl #16
	sub	fp, ip, #4
	mov	r6, r1	@  bmp
	mov	r8, r3, asr #16	@  s_y
	ldr	r3, .L27
	mov	r5, r0	@  this
	mov	sl, r2, asr #16	@  s_x
	ldrsh	r7, [fp, #4]	@  ad,  ad
	ldrsh	r9, [fp, #8]	@  sp_no,  sp_no
	ldrsh	r4, [fp, #12]	@  nb_col,  nb_col
	mov	lr, pc
	bx	r3
	cmp	r6, #0	@  bmp
	ldr	r0, .L27+4
	mov	r1, r6	@  bmp
	beq	.L24
.L19:
	mov	r3, r4, asl #16	@  nb_col
	mov	r4, r3, lsr #16	@  bmp
	cmp	r3, #0
	cmpne	r4, #8192	@  bmp
	ldr	r0, .L27+8
	mov	r1, r4	@  bmp
	bne	.L25
.L20:
	cmp	r6, #0	@  bmp
	beq	.L18
	cmp	r4, #0	@  bmp
	cmpne	r4, #8192	@  bmp
	bne	.L18
	strh	r7, [r5, #8]	@ movhi 	@  ad,  <variable>.ad_deb
	ldrh	r3, [r5, #8]	@  <variable>.ad_deb
	mla	ip, r8, sl, r3	@  s_y,  s_x
	strh	ip, [r5, #10]	@ movhi 	@  <variable>.ad_next_free
	ldrh	ip, [r5, #10]	@  <variable>.ad_next_free
	movs	r3, ip, asl #16
	ldr	r0, .L27+12
	ldr	r1, .L27+16
	mov	r2, #30
	str	r6, [r5, #0]	@  bmp,  <variable>.bitmap
	strh	r9, [r5, #12]	@ movhi 	@  sp_no,  <variable>.sp_no_deb
	strh	sl, [r5, #4]	@ movhi 	@  s_x,  <variable>.size_x
	strh	r8, [r5, #6]	@ movhi 	@  s_y,  <variable>.size_y
	mov	r3, r3, lsr #16
	bmi	.L26
.L23:
	mov	r2, ip, lsr #4
	mov	r0, r5	@  this
	strh	r2, [r5, #14]	@ movhi 	@  <variable>.sp_no_next_free
	ldr	r3, .L27+20
	mov	lr, pc
	bx	r3
.L18:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L26:
	ldr	ip, .L27+24
	mov	lr, pc
	bx	ip
	ldrh	ip, [r5, #10]	@  <variable>.ad_next_free
	b	.L23
.L25:
	ldr	r3, .L27+24
	mov	lr, pc
	bx	r3
	b	.L20
.L24:
	ldr	r3, .L27+24
	mov	lr, pc
	bx	r3
	b	.L19
.L28:
	.align	2
.L27:
	.word	_ZN13sprite_bitmap4initEv
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	_ZN13sprite_bitmap6updateEv
	.word	_Z5debugPcz
	.size	_ZN13sprite_bitmapC1EPKhttttt, .-_ZN13sprite_bitmapC1EPKhttttt
	.align	2
	.global	_ZN13sprite_bitmapD2Ev
	.type	_ZN13sprite_bitmapD2Ev, %function
_ZN13sprite_bitmapD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L32
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	_ZN13sprite_bitmap4initEv
	.size	_ZN13sprite_bitmapD2Ev, .-_ZN13sprite_bitmapD2Ev
	.align	2
	.global	_ZN13sprite_bitmapD1Ev
	.type	_ZN13sprite_bitmapD1Ev, %function
_ZN13sprite_bitmapD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L37
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	_ZN13sprite_bitmap4initEv
	.size	_ZN13sprite_bitmapD1Ev, .-_ZN13sprite_bitmapD1Ev
	.align	2
	.global	_ZN13sprite_bitmap4initEv
	.type	_ZN13sprite_bitmap4initEv, %function
_ZN13sprite_bitmap4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	@ lr needed for prologue
	strh	r3, [r0, #12]	@ movhi 	@  <variable>.sp_no_deb
	str	r3, [r0, #0]	@  <variable>.bitmap
	strh	r3, [r0, #6]	@ movhi 	@  <variable>.size_y
	strh	r3, [r0, #4]	@ movhi 	@  <variable>.size_x
	strh	r3, [r0, #10]	@ movhi 	@  <variable>.ad_next_free
	strh	r3, [r0, #8]	@ movhi 	@  <variable>.ad_deb
	strh	r3, [r0, #14]	@ movhi 	@  <variable>.sp_no_next_free
	bx	lr
	.size	_ZN13sprite_bitmap4initEv, .-_ZN13sprite_bitmap4initEv
	.align	2
	.global	_ZN13sprite_bitmap6updateEv
	.type	_ZN13sprite_bitmap6updateEv, %function
_ZN13sprite_bitmap6updateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	lr, #67108864
	ldr	r1, [lr, #0]
	ldr	r2, [lr, #0]
	tst	r2, #1
	mov	r3, #-2147483648
	mov	ip, r0	@  this
	bne	.L42
	ldr	r2, [lr, #0]
	tst	r2, #2
	beq	.L41
.L42:
	ldrh	r0, [ip, #6]	@  <variable>.size_y
	ldrh	r1, [ip, #4]	@  <variable>.size_x
	mul	r2, r0, r1
	ldrh	r1, [ip, #8]	@  <variable>.ad_deb
	mov	r1, r1, asl #1
	add	r1, r1, #100663296
	add	r2, r2, r2, lsr #31
	ldr	r0, [ip, #0]	@  this,  <variable>.bitmap
	mov	r2, r2, asr #1
	add	r1, r1, #65536
.L44:
	mov	ip, #3
	ldr	r4, .L45
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L41:
	ldrh	r1, [r0, #6]	@  <variable>.size_y
	ldrh	r3, [r0, #4]	@  <variable>.size_x
	mul	r2, r1, r3
	ldrh	r1, [r0, #8]	@  <variable>.ad_deb
	mov	r1, r1, asl #1
	add	r1, r1, #100663296
	add	r2, r2, r2, lsr #31
	ldr	r0, [r0, #0]	@  this,  <variable>.bitmap
	mov	r2, r2, asr #1
	add	r1, r1, #81920
	mov	r3, #-2147483648
	b	.L44
.L46:
	.align	2
.L45:
	.word	_Z9copie_DMAPvS_mmh
	.size	_ZN13sprite_bitmap6updateEv, .-_ZN13sprite_bitmap6updateEv
	.align	2
	.global	_ZN17tab_sprite_bitmapC2Ev
	.type	_ZN17tab_sprite_bitmapC2Ev, %function
_ZN17tab_sprite_bitmapC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0	@  i
	mov	r3, #4096
	strh	r2, [r0, r3]	@ movhi 	@  i,  <variable>.nb
	mov	r3, #1020
	@ lr needed for prologue
	add	r3, r3, #3
	mov	r1, r2	@  i,  i
.L52:
	str	r1, [r0, r2, asl #2]	@  i,  <variable>.tab
	add	r2, r2, #1	@  i,  i
	cmp	r2, r3	@  i
	ble	.L52
	bx	lr
	.size	_ZN17tab_sprite_bitmapC2Ev, .-_ZN17tab_sprite_bitmapC2Ev
	.align	2
	.global	_ZN17tab_sprite_bitmapC1Ev
	.type	_ZN17tab_sprite_bitmapC1Ev, %function
_ZN17tab_sprite_bitmapC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0	@  i
	mov	r3, #4096
	strh	r2, [r0, r3]	@ movhi 	@  i,  <variable>.nb
	mov	r3, #1020
	@ lr needed for prologue
	add	r3, r3, #3
	mov	r1, r2	@  i,  i
.L60:
	str	r1, [r0, r2, asl #2]	@  i,  <variable>.tab
	add	r2, r2, #1	@  i,  i
	cmp	r2, r3	@  i
	ble	.L60
	bx	lr
	.size	_ZN17tab_sprite_bitmapC1Ev, .-_ZN17tab_sprite_bitmapC1Ev
	.align	2
	.global	_ZN17tab_sprite_bitmapD2Ev
	.type	_ZN17tab_sprite_bitmapD2Ev, %function
_ZN17tab_sprite_bitmapD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r5, #0	@  i
	ldr	r8, .L76
	sub	fp, ip, #4
	mov	r6, r0	@  this
	mov	r7, r5	@  i,  i
.L71:
	ldr	r4, [r6, r5, asl #2]	@  this,  <variable>.tab
	subs	r0, r4, #0	@  this
	bne	.L75
.L70:
	str	r7, [r6, r5, asl #2]	@  i,  <variable>.tab
	add	r5, r5, #1	@  i,  i
	cmp	r5, #1024	@  i
	blt	.L71
	mov	r3, #4096
	strh	r7, [r6, r3]	@ movhi 	@  i,  <variable>.nb
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L75:
	bl	_ZN13sprite_bitmapD1Ev
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r8
	b	.L70
.L77:
	.align	2
.L76:
	.word	_ZdlPv
	.size	_ZN17tab_sprite_bitmapD2Ev, .-_ZN17tab_sprite_bitmapD2Ev
	.align	2
	.global	_ZN17tab_sprite_bitmapD1Ev
	.type	_ZN17tab_sprite_bitmapD1Ev, %function
_ZN17tab_sprite_bitmapD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r5, #0	@  i
	ldr	r8, .L91
	sub	fp, ip, #4
	mov	r6, r0	@  this
	mov	r7, r5	@  i,  i
.L86:
	ldr	r4, [r6, r5, asl #2]	@  this,  <variable>.tab
	subs	r0, r4, #0	@  this
	bne	.L90
.L85:
	str	r7, [r6, r5, asl #2]	@  i,  <variable>.tab
	add	r5, r5, #1	@  i,  i
	cmp	r5, #1024	@  i
	blt	.L86
	mov	r3, #4096
	strh	r7, [r6, r3]	@ movhi 	@  i,  <variable>.nb
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L90:
	bl	_ZN13sprite_bitmapD1Ev
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r8
	b	.L85
.L92:
	.align	2
.L91:
	.word	_ZdlPv
	.size	_ZN17tab_sprite_bitmapD1Ev, .-_ZN17tab_sprite_bitmapD1Ev
	.global	_Unwind_SjLj_Resume
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"%s : %d \n"
	.ascii	"\tcol_pal %d\000"
	.align	2
.LC6:
	.ascii	"%s : %d \n"
	.ascii	"\ts_y %d\000"
	.align	2
.LC5:
	.ascii	"%s : %d \n"
	.ascii	"\ts_x %d\000"
	.align	2
.LC4:
	.ascii	"%s : %d \n"
	.ascii	"\t add_bitmap() nb %d\000"
	.text
	.align	2
	.global	_ZN17tab_sprite_bitmap10add_bitmapEPKhttt
	.type	_ZN17tab_sprite_bitmap10add_bitmapEPKhttt, %function
_ZN17tab_sprite_bitmap10add_bitmapEPKhttt:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 92
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #104
	ldr	ip, .L125
	ldrsh	r4, [fp, #4]	@  col
	str	ip, [fp, #-48]
	ldr	lr, .L125+4
	ldr	ip, .L125+8
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16
	mov	r2, r2, asr #16
	str	r0, [fp, #-92]	@  this
	mov	r3, r3, asr #16
	sub	r0, fp, #40
	str	r0, [fp, #-52]
	str	ip, [fp, #-60]
	str	r2, [fp, #-100]	@  s_x
	str	r3, [fp, #-104]	@  s_y
	str	sp, [fp, #-44]
	ldr	r3, .L125+12
	sub	r0, fp, #84
	str	r4, [fp, #-108]	@  col
	str	lr, [fp, #-56]
	str	r1, [fp, #-96]	@  bmp
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-92]	@  this
	mov	r2, #4096
	ldrh	r2, [ip, r2]	@  <variable>.nb
	mov	r3, #1020
	add	r3, r3, #2
	cmp	r2, r3
	bhi	.L120
.L94:
	ldr	lr, [fp, #-100]	@  s_x
	mov	r3, lr, asl #16
	mov	r2, r3, lsr #16
	cmp	r2, #8
	cmpne	r2, #16
	beq	.L95
	cmp	r2, #32
	cmpne	r2, #64
	bne	.L121
.L95:
	ldr	r0, [fp, #-104]	@  s_y
	mov	r3, r0, asl #16
	mov	r2, r3, lsr #16
	cmp	r2, #8
	cmpne	r2, #16
	beq	.L96
	cmp	r2, #32
	cmpne	r2, #64
	bne	.L122
.L96:
	ldr	r1, [fp, #-108]	@  col
	mov	r3, r1, asl #16
	mov	r2, r3, lsr #16
	cmp	r3, #0
	cmpne	r2, #8192
	str	r2, [fp, #-112]
	bne	.L123
.L97:
	ldr	r3, [fp, #-92]	@  this
	mov	r2, #4096
	ldrh	r2, [r3, r2]	@  <variable>.nb
	mov	r3, #1020
	add	r3, r3, #2
	cmp	r2, r3
	bhi	.L99
	ldr	r4, [fp, #-100]	@  s_x
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #8
	cmpne	r3, #16
	beq	.L100
	cmp	r3, #32
	cmpne	r3, #64
	bne	.L99
.L100:
	ldr	ip, [fp, #-104]	@  s_y
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #8
	cmpne	r3, #16
	beq	.L101
	cmp	r3, #32
	cmpne	r3, #64
	bne	.L99
.L101:
	ldr	lr, [fp, #-112]
	subs	r3, lr, #8192
	movne	r3, #1
	cmp	lr, #0
	moveq	r3, #0	@  i
	andne	r3, r3, #1	@  i
	cmp	r3, #0	@  i
	beq	.L98
.L99:
	mov	r0, #0
	str	r0, [fp, #-88]
.L93:
	sub	r0, fp, #84
	ldr	r3, .L125+16
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L98:
	cmp	r3, r2	@  i
	mov	r1, r3	@  i,  i
	bge	.L118
	mov	r0, r2
.L107:
	ldr	r3, [fp, #-92]	@  this
	ldr	r2, [r3, r1, asl #2]	@  this,  <variable>.tab
	ldr	r4, [fp, #-96]	@  bmp
	ldr	r3, [r2, #0]	@  <variable>.bitmap
	cmp	r3, r4
	streq	r2, [fp, #-88]	@  this
	beq	.L93
	add	r1, r1, #1	@  i,  i
	cmp	r1, r0	@  i
	blt	.L107
.L118:
	ldr	ip, [fp, #-92]	@  this
	mov	r3, #4096
	ldrh	r1, [ip, r3]	@  <variable>.nb
	mov	lr, #0
	cmp	r1, #0
	str	lr, [fp, #-120]	@  last_sp_no_free
	str	lr, [fp, #-116]	@  last_ad_free
	beq	.L108
	add	r3, ip, r1, asl #2
	ldr	r2, [r3, #-4]	@  <variable>.tab
	ldrsh	r0, [r2, #14]	@  <variable>.sp_no_next_free
	ldrsh	r2, [r2, #10]	@  <variable>.ad_next_free
	str	r0, [fp, #-120]	@  last_sp_no_free
	str	r2, [fp, #-116]	@  last_ad_free
.L108:
	mvn	r3, #0
	str	r3, [fp, #-80]
	str	r1, [fp, #-124]
	ldr	r3, .L125+20
	mov	r0, #16
	mov	lr, pc
	bx	r3
	ldr	r4, [fp, #-104]	@  s_y
	ldr	r1, [fp, #-100]	@  s_x
	ldr	ip, [fp, #-116]	@  last_ad_free
	mov	r3, r4, asl #16
	ldr	lr, [fp, #-120]	@  last_sp_no_free
	ldr	r4, [fp, #-108]	@  col
	mov	r2, r1, asl #16
	mov	r1, ip, asl #16
	mov	r1, r1, lsr #16
	mov	ip, lr, asl #16
	mov	lr, r4, asl #16
	mov	ip, ip, lsr #16
	mov	lr, lr, lsr #16
	mov	r4, #1
	str	r1, [sp, #0]
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	ldr	r1, [fp, #-96]	@  bmp
	str	r0, [fp, #-128]
	stmib	sp, {ip, lr}	@ phole stm
	str	r4, [fp, #-80]
	bl	_ZN13sprite_bitmapC1EPKhttttt
	ldr	r0, [fp, #-92]	@  this
	mov	r3, #4096
	ldrh	r2, [r0, r3]	@  <variable>.nb
	add	r2, r2, #1
	strh	r2, [r0, r3]	@ movhi 	@  <variable>.nb
	ldr	r2, [fp, #-124]
	ldrh	r1, [r0, r3]	@  <variable>.nb
	ldr	r3, [fp, #-128]
	str	r3, [r0, r2, asl #2]	@  <variable>.tab
	add	r1, r0, r1, asl #2
	ldr	r1, [r1, #-4]	@  <variable>.tab
	str	r1, [fp, #-88]
	b	.L93
.L123:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, .L125+24
	ldr	r1, .L125+28
	mov	r2, #94
	ldr	r3, [fp, #-112]
	ldr	ip, .L125+32
	mov	lr, pc
	bx	ip
	b	.L97
.L122:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, .L125+36
	mov	r3, r2
	ldr	r1, .L125+28
	mov	r2, #93
	ldr	ip, .L125+32
	mov	lr, pc
	bx	ip
	b	.L96
.L121:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, .L125+40
	mov	r3, r2
	ldr	r1, .L125+28
	mov	r2, #92
	ldr	ip, .L125+32
	mov	lr, pc
	bx	ip
	b	.L95
.L120:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, .L125+44
	mov	r3, r2
	ldr	r1, .L125+28
	mov	r2, #91
	ldr	ip, .L125+32
	mov	lr, pc
	bx	ip
	b	.L94
.L115:
.L109:
	add	fp, fp, #40
	mov	ip, #1
	ldr	lr, [fp, #-76]
	cmp	ip, #0
	str	lr, [fp, #-132]
	bne	.L124
.L112:
.L113:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-132]
	ldr	r3, .L125+48
	mov	lr, pc
	bx	r3
.L124:
	ldr	r0, [fp, #-128]
	ldr	r3, .L125+52
	mov	lr, pc
	bx	r3
	b	.L112
.L126:
	.align	2
.L125:
	.word	.L115
	.word	.LLSDA117
	.word	__gxx_personality_sj0
	.word	_Unwind_SjLj_Register
	.word	_Unwind_SjLj_Unregister
	.word	_Znwm
	.word	.LC7
	.word	.LC3
	.word	_Z5debugPcz
	.word	.LC6
	.word	.LC5
	.word	.LC4
	.word	_Unwind_SjLj_Resume
	.word	_ZdlPv
	.size	_ZN17tab_sprite_bitmap10add_bitmapEPKhttt, .-_ZN17tab_sprite_bitmap10add_bitmapEPKhttt
	.section	.gcc_except_table,"a",%progbits
.LLSDA117:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE117-.LLSDACSB117
.LLSDACSB117:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE117:
	.text
	.align	2
	.global	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap
	.type	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap, %function
_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r3, #4096
	ldrh	r3, [r0, r3]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L129
	mov	r2, r3
.L133:
	ldr	r3, [r5, r4, asl #2]	@  <variable>.tab
	cmp	r3, r1	@  s
	beq	.L129
	add	r4, r4, #1	@  i,  i
	cmp	r4, r2	@  i
	blt	.L133
.L129:
	mov	r7, #4096
	ldrh	r2, [r5, r7]	@  <variable>.nb
	cmp	r4, r2	@  i
	mov	r3, r4, asl #16	@  i
	moveq	r0, #65280	@  this
	mov	r8, r3, asr #16	@  ind
	addeq	r0, r0, #255	@  this,  this
	beq	.L127
	ldr	r6, [r5, r4, asl #2]	@  this,  <variable>.tab
	cmp	r6, #0	@  this
	bne	.L145
.L136:
	sub	r3, r2, #1
	cmp	r4, r3	@  i
	mov	r2, #0
	str	r2, [r5, r4, asl #2]	@  <variable>.tab
	bge	.L144
	ldrh	r3, [r5, r7]	@  <variable>.nb
	add	r2, r5, r4, asl #2	@  this,  i
	sub	r1, r3, #1
.L141:
	ldr	r3, [r2, #4]!	@  <variable>.tab
	str	r3, [r5, r4, asl #2]	@  <variable>.tab
	add	r4, r4, #1	@  i,  i
	cmp	r4, r1	@  i
	blt	.L141
.L144:
	mov	r2, #4096
	ldrh	r3, [r5, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r5, r2]	@ movhi 	@  <variable>.nb
	ldrh	r1, [r5, r2]	@  <variable>.nb
	mov	r3, #0
	mov	r2, r8, asl #16	@  ind
	str	r3, [r5, r1, asl #2]	@  <variable>.tab
	mov	r0, r2, lsr #16	@  this
.L127:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L145:
	mov	r0, r6	@  this
	bl	_ZN13sprite_bitmapD1Ev
	mov	r0, r6	@  this
	ldr	r3, .L146
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5, r7]	@  <variable>.nb
	b	.L136
.L147:
	.align	2
.L146:
	.word	_ZdlPv
	.size	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap, .-_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap
	.ident	"GCC: (GNU) 3.3.2"
