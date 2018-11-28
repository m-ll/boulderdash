	.file	"sprite.cpp"
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

	.global	tab_sp
	.bss
	.global	tab_sp
	.align	2
	.type	tab_sp, %object
	.size	tab_sp, 4
tab_sp:
	.space	4
	.global	tab_sp_bmp
	.global	tab_sp_bmp
	.align	2
	.type	tab_sp_bmp, %object
	.size	tab_sp_bmp, 4
tab_sp_bmp:
	.space	4
	.global	tab_sp_rot
	.global	tab_sp_rot
	.align	2
	.type	tab_sp_rot, %object
	.size	tab_sp_rot, 4
tab_sp_rot:
	.space	4
	.global	_Unwind_SjLj_Resume
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.text
	.align	2
	.global	_Z11init_spritev
	.type	_Z11init_spritev, %function
_Z11init_spritev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 68
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L26
	sub	fp, ip, #4
	sub	sp, sp, #68
	ldr	r2, .L26+4
	str	r3, [fp, #-60]
	ldr	r3, .L26+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	sub	r0, fp, #84
	str	r3, [fp, #-48]
	str	r2, [fp, #-52]
	ldr	r3, .L26+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r3, .L26+16
	mov	lr, pc
	bx	r3
	mov	r0, #4096
	ldr	r3, .L26+20
	add	r0, r0, #4
	mov	lr, pc
	bx	r3
	mov	r3, #3
	str	r3, [fp, #-80]
	mov	r3, #1
	strb	r3, [fp, #-89]
	str	r0, [fp, #-88]
	ldr	r3, .L26+24
	mov	lr, pc
	bx	r3
.L6:
	ldr	r2, [fp, #-88]
	ldr	r3, .L26+28
	mov	r0, #4096
	str	r2, [r3, #0]	@  tab_sp
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r3, .L26+20
	add	r0, r0, #4
	mov	lr, pc
	bx	r3
	mov	r3, #2
	str	r3, [fp, #-80]
	mov	r2, #1
	mov	r3, #0
	strb	r3, [fp, #-89]
	str	r0, [fp, #-100]
	strb	r2, [fp, #-101]
	ldr	r3, .L26+32
	mov	lr, pc
	bx	r3
.L12:
	ldr	r2, [fp, #-100]
	ldr	r3, .L26+36
	str	r2, [r3, #0]	@  tab_sp_bmp
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r3, .L26+20
	mov	r0, #6144
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #1
	strb	r3, [fp, #-101]
	str	r0, [fp, #-108]
	str	r2, [fp, #-80]
	ldr	r3, .L26+40
	mov	lr, pc
	bx	r3
.L1:
	ldr	r2, [fp, #-108]
	ldr	r3, .L26+44
	sub	r0, fp, #84
	str	r2, [r3, #0]	@  tab_sp_rot
	ldr	r2, .L26+48
	mov	lr, pc
	bx	r2
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L2:
	ldrb	r2, [fp, #-89]
	tst	r2, #255
	ldrne	r0, [fp, #-88]
.L25:
	bne	.L24
.L17:
.L18:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-96]
	ldr	r3, .L26+52
	mov	lr, pc
	bx	r3
.L24:
	ldr	r3, .L26+56
	mov	lr, pc
	bx	r3
	b	.L17
.L8:
	ldrb	r3, [fp, #-101]
	tst	r3, #255
	ldrne	r0, [fp, #-100]
	b	.L25
.L20:
	add	fp, fp, #40
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-76]
	cmp	r3, #1
	str	r2, [fp, #-96]
	beq	.L8
	cmp	r3, #2
	beq	.L2
.L14:
	mov	r3, #1
	tst	r3, #255
	beq	.L17
	ldr	r0, [fp, #-108]
	b	.L24
.L27:
	.align	2
.L26:
	.word	__gxx_personality_sj0
	.word	.LLSDA88
	.word	.L20
	.word	_Unwind_SjLj_Register
	.word	_Z8init_OAMv
	.word	_Znwm
	.word	_ZN10tab_spriteC1Ev
	.word	tab_sp
	.word	_ZN17tab_sprite_bitmapC1Ev
	.word	tab_sp_bmp
	.word	_ZN19tab_sprite_rotationC1Ev
	.word	tab_sp_rot
	.word	_Unwind_SjLj_Unregister
	.word	_Unwind_SjLj_Resume
	.word	_ZdlPv
	.size	_Z11init_spritev, .-_Z11init_spritev
	.section	.gcc_except_table,"a",%progbits
.LLSDA88:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE88-.LLSDACSB88
.LLSDACSB88:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x2
	.uleb128 0x0
.LLSDACSE88:
	.text
	.align	2
	.global	_Z13delete_spritev
	.type	_Z13delete_spritev, %function
_Z13delete_spritev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	ldr	r6, .L38
	sub	fp, ip, #4
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	ldr	r4, [r6, #0]	@  tab_sp
	subs	r0, r4, #0
	ldr	r7, .L38+8
	ldr	r5, .L38+12
	bne	.L35
.L30:
	ldr	r4, [r7, #0]	@  tab_sp_bmp
	subs	r0, r4, #0
	bne	.L36
.L32:
	ldr	r4, [r5, #0]	@  tab_sp_rot
	subs	r0, r4, #0
	bne	.L37
.L34:
	mov	r3, #0
	str	r3, [r5, #0]	@  tab_sp_rot
	str	r3, [r6, #0]	@  tab_sp
	str	r3, [r7, #0]	@  tab_sp_bmp
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L37:
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	b	.L34
.L36:
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	b	.L32
.L35:
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	b	.L30
.L39:
	.align	2
.L38:
	.word	tab_sp
	.word	_Z8init_OAMv
	.word	tab_sp_bmp
	.word	tab_sp_rot
	.word	_ZN19tab_sprite_rotationD1Ev
	.word	_ZdlPv
	.word	_ZN17tab_sprite_bitmapD1Ev
	.word	_ZN10tab_spriteD1Ev
	.size	_Z13delete_spritev, .-_Z13delete_spritev
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%s : %d \n"
	.ascii	"\t trop de sprites a l'ecran >128\000"
	.align	2
.LC2:
	.ascii	"sprite.cpp\000"
	.text
	.align	2
	.global	_Z13update_spritev
	.type	_Z13update_spritev, %function
_Z13update_spritev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	ldr	r8, .L79
	ldr	r3, .L79+4
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldr	r0, [r8, #0]	@  s,  tab_sp
	mov	r3, #4096
	ldrh	r2, [r0, r3]	@  <variable>.nb
	mov	r4, #0	@  s
	cmp	r4, r2	@  i
	mov	r7, r4	@  nb_sprite,  s
	mov	r6, r4	@  i,  nb_sprite
	bge	.L77
	ldr	sl, .L79+8
.L75:
	mov	r1, r6, asl #16	@  i
	mov	r1, r1, lsr #16
	mov	lr, pc
	bx	sl
	ldrb	r3, [r0, #56]	@ zero_extendqisi2	@  <anonymous>,  <variable>.visible_x
	cmp	r3, #0	@  <anonymous>
	mov	r4, r0	@  s
	beq	.L46
	ldrb	r3, [r0, #57]	@ zero_extendqisi2	@  <anonymous>,  <variable>.visible_y
	cmp	r3, #0	@  <anonymous>
	beq	.L46
	mov	r2, r7, asl #16	@  nb_sprite
	mov	r2, r2, lsr #16	@  no_sp
	strh	r2, [r0, #38]	@ movhi 	@  no_sp,  <variable>.ind_sp
	ldr	r5, .L79+12
	mov	lr, r2, asl #3	@  no_sp
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r0, #4]	@  <variable>.y
	and	r3, r3, #65280
	orr	r2, r2, r3
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r0, #12]	@  <variable>.alpha_flag
	bic	r3, r3, #3072
	orr	r2, r2, r3
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r0, #14]	@  <variable>.mosaic_flag
	bic	r3, r3, #4096
	orr	r2, r2, r3
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r0, #16]	@  <variable>.nb_col_flag
	bic	r3, r3, #8192
	orr	r2, r2, r3
	add	ip, lr, r5	@  o
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [ip, #2]	@  <variable>.attribute1
	ldrh	r0, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r4, #20]	@  <variable>.x
	ldrh	r1, [r4, #18]	@  <variable>.shape_flag
	and	r3, r3, #65024
	orr	r2, r2, r3
	bic	r0, r0, #49152
	strh	r2, [ip, #2]	@ movhi 	@  <variable>.attribute1
	orr	r1, r1, r0
	strh	r1, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [ip, #2]	@  <variable>.attribute1
	ldrh	r2, [r4, #30]	@  <variable>.form_flag
	bic	r3, r3, #49152
	orr	r2, r2, r3
	strh	r2, [ip, #2]	@ movhi 	@  <variable>.attribute1
	ldrh	r3, [ip, #4]	@  <variable>.attribute2
	ldrh	r2, [r4, #32]	@  <variable>.sp_no
	and	r3, r3, #64512
	orr	r2, r2, r3
	strh	r2, [ip, #4]	@ movhi 	@  <variable>.attribute2
	ldrh	r3, [ip, #4]	@  <variable>.attribute2
	ldrh	r2, [r4, #34]	@  <variable>.priority
	bic	r3, r3, #3072
	orr	r3, r3, r2, asl #10
	strh	r3, [ip, #4]	@ movhi 	@  <variable>.attribute2
	ldrh	r2, [ip, #4]	@  <variable>.attribute2
	ldrh	r3, [r4, #36]	@  <variable>.pal_no
	ldr	r0, [r4, #48]	@  <anonymous>,  <variable>.my_sprite_rotation
	bic	r2, r2, #61440
	orr	r2, r2, r3, asl #12
	cmp	r0, #0	@  <anonymous>
	strh	r2, [ip, #4]	@ movhi 	@  <variable>.attribute2
	str	ip, [r4, #40]	@  o,  <variable>.oam
	beq	.L61
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r4, #8]	@  <variable>.rot_flag
	bic	r3, r3, #256
	orr	r2, r2, r3
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [lr, r5]	@  <variable>.attribute0
	ldrh	r2, [r4, #10]	@  <variable>.size_double_flag
	bic	r3, r3, #512
	orr	r2, r2, r3
	strh	r2, [lr, r5]	@ movhi 	@  <variable>.attribute0
	ldrh	r3, [ip, #2]	@  <variable>.attribute1
	ldrh	r2, [r4, #28]	@  <variable>.rot_ind
	bic	r3, r3, #3584
	orr	r3, r3, r2, asl #9
	strh	r3, [ip, #2]	@ movhi 	@  <variable>.attribute1
	ldr	r2, .L79+16
	mov	lr, pc
	bx	r2
.L67:
	add	r3, r7, #1	@  nb_sprite
	mov	r3, r3, asl #16
	cmp	r3, #8323072
	mov	r7, r3, asr #16	@  nb_sprite
	bhi	.L78
.L43:
	ldr	r3, [r8, #0]	@  this,  tab_sp
	mov	r2, #4096
	mov	r0, r3	@  s,  this
	ldrh	r3, [r3, r2]	@  <variable>.nb
	add	r6, r6, #1	@  i,  i
	cmp	r6, r3	@  i
	blt	.L75
.L77:
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
.L40:
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L78:
	ldr	r0, .L79+24
	ldr	r1, .L79+28
	mov	r2, #80
	ldr	r3, .L79+32
	mov	lr, pc
	bx	r3
	b	.L40
.L61:
	ldrh	r3, [ip, #2]	@  <variable>.attribute1
	ldrh	r2, [r4, #24]	@  <variable>.h_flip_flag
	bic	r3, r3, #4096
	orr	r2, r2, r3
	strh	r2, [ip, #2]	@ movhi 	@  <variable>.attribute1
	ldrh	r3, [ip, #2]	@  <variable>.attribute1
	ldrh	r2, [r4, #26]	@  <variable>.v_flip_flag
	bic	r3, r3, #8192
	orr	r2, r2, r3
	strh	r2, [ip, #2]	@ movhi 	@  <variable>.attribute1
	b	.L67
.L46:
	mov	r3, #0	@  o
	strh	r3, [r4, #38]	@ movhi 	@  o,  <variable>.ind_sp
	str	r3, [r4, #40]	@  o,  <variable>.oam
	b	.L43
.L80:
	.align	2
.L79:
	.word	tab_sp
	.word	_Z8init_OAMv
	.word	_ZN10tab_sprite10get_spriteEt
	.word	OAM_buffer
	.word	_ZN15sprite_rotation6updateEv
	.word	_Z8copy_OAMv
	.word	.LC1
	.word	.LC2
	.word	_Z5debugPcz
	.size	_Z13update_spritev, .-_Z13update_spritev
	.align	2
	.global	_Z8init_OAMv
	.type	_Z8init_OAMv, %function
_Z8init_OAMv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #0	@  i
	ldr	lr, .L89
	mov	ip, r0	@  i,  i
.L86:
	add	r3, r0, #1	@  i
	mov	r3, r3, asl #16
	mov	r0, r3, asr #16	@  i
	mov	r2, r0, asl #16	@  i,  i
	mov	r1, ip, lsr #13	@  i
	cmp	r2, #8323072	@  i
	mov	ip, r2	@  i,  i
	mov	r2, #250	@ movhi
	add	r3, r1, lr
	strh	r2, [r1, lr]	@ movhi 	@  <variable>.attribute0
	mov	r2, #0	@ movhi
	strh	r2, [r3, #6]	@ movhi 	@  <variable>.attribute3
	mov	r2, #250	@ movhi
	strh	r2, [r3, #2]	@ movhi 	@  <variable>.attribute1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #4]	@ movhi 	@  <variable>.attribute2
	bls	.L86
	ldr	lr, [sp], #4
	bx	lr
.L90:
	.align	2
.L89:
	.word	OAM_buffer
	.size	_Z8init_OAMv, .-_Z8init_OAMv
	.align	2
	.global	_Z8copy_OAMv
	.type	_Z8copy_OAMv, %function
_Z8copy_OAMv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r2, #67108864
.L92:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bne	.L92
	mov	ip, #3
	ldr	r0, .L96
	mov	r1, #117440512
	mov	r2, #512
	mov	r3, #-2147483648
	ldr	r4, .L96+4
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	OAM_buffer
	.word	_Z9copie_DMAPvS_mmh
	.size	_Z8copy_OAMv, .-_Z8copy_OAMv
	.align	2
	.global	_ZN6spriteC2Ev
	.type	_ZN6spriteC2Ev, %function
_ZN6spriteC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	ldr	r2, .L99
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	str	r2, [r0, #0]	@  <variable>._vptr.sprite
	sub	fp, ip, #4
	ldr	r1, .L99+4
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.size	_ZN6spriteC2Ev, .-_ZN6spriteC2Ev
	.align	2
	.global	_ZN6spriteC1Ev
	.type	_ZN6spriteC1Ev, %function
_ZN6spriteC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	ldr	r2, .L102
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	str	r2, [r0, #0]	@  <variable>._vptr.sprite
	sub	fp, ip, #4
	ldr	r1, .L102+4
	mov	lr, pc
	bx	r1
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L103:
	.align	2
.L102:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.size	_ZN6spriteC1Ev, .-_ZN6spriteC1Ev
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"%s : %d \n"
	.ascii	"\talpha %d\000"
	.align	2
.LC12:
	.ascii	"%s : %d \n"
	.ascii	"\tbitmap %p\000"
	.align	2
.LC11:
	.ascii	"%s : %d \n"
	.ascii	"\tpal_no %d\000"
	.align	2
.LC10:
	.ascii	"%s : %d \n"
	.ascii	"\tpriority %d\000"
	.align	2
.LC9:
	.ascii	"%s : %d \n"
	.ascii	"\tv_flip %d\000"
	.align	2
.LC8:
	.ascii	"%s : %d \n"
	.ascii	"\th_flip %d\000"
	.align	2
.LC7:
	.ascii	"%s : %d \n"
	.ascii	"\tcol_pal %d\000"
	.align	2
.LC6:
	.ascii	"%s : %d \n"
	.ascii	"\tmosaic %d\000"
	.align	2
.LC4:
	.ascii	"%s : %d \n"
	.ascii	"\ts_y %d\000"
	.align	2
.LC3:
	.ascii	"%s : %d \n"
	.ascii	"\ts_x %d\000"
	.text
	.align	2
	.global	_ZN6spriteC2EtttttttttPKhtt
	.type	_ZN6spriteC2EtttttttttPKhtt, %function
_ZN6spriteC2EtttttttttPKhtt:
	@ Function supports interworking.
	@ args = 36, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	ldrsh	lr, [fp, #32]	@  s_x,  s_x
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16	@  bitmap
	ldr	ip, .L143
	ldrsh	r4, [fp, #24]	@  pal_no
	mov	r5, r1, asr #16	@  alpha
	mov	r6, r2, asr #16	@  mosaic
	ldrsh	r1, [fp, #4]	@  xx
	ldrsh	r2, [fp, #8]	@  yy
	mov	r7, r3, asr #16	@  nb_col
	ldrsh	r3, [fp, #20]	@  priority
	mov	lr, lr, asl #16	@  s_x
	str	ip, [r0, #0]	@  <variable>._vptr.sprite
	str	r3, [fp, #-56]	@  priority
	str	r4, [fp, #-60]	@  pal_no
	ldr	r3, .L143+4
	str	r0, [fp, #-44]	@  this
	str	lr, [fp, #-64]
	str	r1, [fp, #-48]	@  xx
	str	r2, [fp, #-52]	@  yy
	ldrsh	sl, [fp, #12]	@  h_flip,  h_flip
	ldrsh	r9, [fp, #16]	@  v_flip,  v_flip
	ldrsh	r4, [fp, #36]	@  s_y,  s_y
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-64]
	mov	r3, ip, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	beq	.L105
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L134
.L105:
	mov	r4, r4, asl #16	@  s_y
	mov	r3, r4, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r4, [fp, #-68]
	beq	.L106
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L135
.L106:
	mov	r8, r5, asl #16	@  alpha
	mov	r3, r8, lsr #16	@  bitmap
	cmp	r8, #0
	cmpne	r3, #1024	@  bitmap
	beq	.L107
	cmp	r3, #2048	@  bitmap
	beq	.L107
	ldr	r0, .L143+8
	ldr	r1, .L143+12
	mov	r2, #137
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
.L107:
	mov	r6, r6, asl #16	@  mosaic
	mov	r3, r6, lsr #16	@  bitmap
	cmp	r3, #4096	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r6, [fp, #-72]
	bne	.L136
.L108:
	mov	r3, r7, asl #16	@  nb_col
	mov	r0, r3, lsr #16
	cmp	r3, #0
	cmpne	r0, #8192
	str	r0, [fp, #-76]
	bne	.L137
.L109:
	mov	r3, sl, asl #16	@  h_flip
	mov	sl, r3, lsr #16	@  bitmap
	cmp	sl, #4096	@  bitmap
	cmpne	sl, #0	@  bitmap
	bne	.L138
.L110:
	mov	r3, r9, asl #16	@  v_flip
	mov	r7, r3, lsr #16	@  bitmap
	cmp	r7, #8192	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L139
.L111:
	ldr	r1, [fp, #-56]	@  priority
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #3
	str	r3, [fp, #-80]
	bhi	.L140
.L112:
	ldr	r2, [fp, #-60]	@  pal_no
	mov	r3, r2, asl #16
	mov	r9, r3, lsr #16	@  bitmap
	cmp	r9, #15	@  bitmap
	bhi	.L141
.L113:
	ldr	r3, [fp, #28]	@  bitmap
	cmp	r3, #0
	beq	.L142
.L114:
	ldr	ip, [fp, #-64]
	mov	r4, ip, lsr #16
	cmp	r4, #8
	cmpne	r4, #16
	beq	.L117
	cmp	r4, #32
	cmpne	r4, #64
	bne	.L104
.L117:
	ldr	r0, [fp, #-68]
	mov	r5, r0, lsr #16	@  bitmap
	cmp	r5, #8	@  bitmap
	cmpne	r5, #16	@  bitmap
	beq	.L118
	cmp	r5, #32	@  bitmap
	cmpne	r5, #64	@  bitmap
	bne	.L104
.L118:
	mov	r6, r8, lsr #16
	cmp	r8, #0
	cmpne	r6, #1024
	beq	.L119
	cmp	r6, #2048
	beq	.L119
.L104:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L119:
	ldr	r1, [fp, #-72]
	mov	r8, r1, lsr #16
	cmp	r8, #4096
	cmpne	r8, #0
	bne	.L104
	ldr	r2, [fp, #-76]
	cmp	r2, #0
	cmpne	r2, #8192
	bne	.L104
	cmp	sl, #4096	@  bitmap
	cmpne	sl, #0	@  bitmap
	bne	.L104
	cmp	r7, #8192	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L104
	ldr	r3, [fp, #-80]
	cmp	r9, #15	@  bitmap
	cmpls	r3, #3
	bhi	.L104
	ldr	ip, [fp, #28]	@  bitmap
	cmp	ip, #0
	beq	.L104
	ldr	r3, .L143+20
	ldr	r1, [fp, #-44]	@  this
	ldr	r0, [r3, #0]	@  this,  tab_sp
	ldr	r3, .L143+24
	mov	lr, pc
	bx	r3
	sub	r2, fp, #52
	ldmia	r2, {r2, ip}	@ phole ldm
	ldr	r0, [fp, #-44]	@  this
	mov	r3, r2, asl #16
	mov	r2, ip, asl #16
	ldr	r1, [r0, #48]	@  <variable>.my_sprite_rotation
	mov	r2, r2, lsr #16	@  xx
	str	r2, [r0, #20]	@  xx,  <variable>.x
	mov	r2, r4
	ldr	r4, [fp, #-76]
	cmp	r1, #0
	mov	r3, r3, lsr #16	@  yy
	str	r3, [r0, #4]	@  yy,  <variable>.y
	streqh	sl, [r0, #24]	@ movhi 	@  bitmap,  <variable>.h_flip_flag
	streqh	r7, [r0, #26]	@ movhi 	@  bitmap,  <variable>.v_flip_flag
	strh	r6, [r0, #12]	@ movhi 	@  <variable>.alpha_flag
	strh	r8, [r0, #14]	@ movhi 	@  <variable>.mosaic_flag
	ldr	r1, [fp, #28]	@  bitmap
	mov	r3, r5	@  bitmap
	ldr	r0, [fp, #-44]	@  this
	ldr	ip, .L143+28
	stmia	sp, {r4, r9}	@ phole stm
	mov	lr, pc
	bx	ip
	ldr	ip, [fp, #-44]	@  this
	ldr	r1, [ip, #20]	@  <variable>.x
	ldr	r0, [ip, #4]	@  <variable>.y
	mov	r3, r1, asr #31
	mov	r2, r0, asr #31
	add	r3, r1, r3, lsr #29
	add	r2, r0, r2, lsr #29
	cmp	r1, #0
	ldr	r1, [fp, #-80]
	mov	r3, r3, asr #3
	mov	r2, r2, asr #3
	strh	r1, [ip, #34]	@ movhi 	@  <variable>.priority
	str	r3, [ip, #60]	@  <variable>.map_x
	str	r2, [ip, #64]	@  <variable>.map_y
	blt	.L129
	ldr	r3, .L143+32
	mov	r0, ip
	mov	lr, pc
	bx	r3
	ldr	r2, [fp, #-44]	@  this
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r2, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	movle	r3, #1
	ldrle	r0, [r2, #4]	@  <variable>.y
	strleb	r3, [r2, #56]	@  <variable>.visible_x
	ble	.L130
	ldr	r3, [fp, #-44]	@  this
	ldr	r0, [r3, #4]	@  <variable>.y
.L129:
	ldr	r4, [fp, #-44]	@  this
	mov	r3, #0
	strb	r3, [r4, #56]	@  <variable>.visible_x
.L130:
	cmp	r0, #0
	blt	.L131
	ldr	r3, .L143+36
	ldr	r0, [fp, #-44]	@  this
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-44]	@  this
	mov	r0, r0, asl #16	@  this
	ldr	r3, [ip, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	strleb	r3, [ip, #57]	@  <variable>.visible_y
	ble	.L104
.L131:
	ldr	r0, [fp, #-44]	@  this
	mov	r3, #0
	strb	r3, [r0, #57]	@  <variable>.visible_y
	b	.L104
.L142:
	ldr	r0, .L143+40
	ldr	r1, .L143+12
	mov	r2, #144
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L114
.L141:
	ldr	r0, .L143+44
	ldr	r1, .L143+12
	mov	r2, #143
	mov	r3, r9	@  bitmap
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L113
.L140:
	ldr	r0, .L143+48
	ldr	r1, .L143+12
	mov	r2, #142
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L112
.L139:
	ldr	r0, .L143+52
	ldr	r1, .L143+12
	mov	r2, #141
	mov	r3, r7	@  bitmap
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L111
.L138:
	ldr	r0, .L143+56
	ldr	r1, .L143+12
	mov	r2, #140
	mov	r3, sl	@  bitmap
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L110
.L137:
	ldr	r0, .L143+60
	ldr	r1, .L143+12
	mov	r2, #139
	ldr	r3, [fp, #-76]
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L109
.L136:
	ldr	r0, .L143+64
	ldr	r1, .L143+12
	mov	r2, #138
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L108
.L135:
	ldr	r0, .L143+68
	ldr	r1, .L143+12
	mov	r2, #136
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L106
.L134:
	ldr	r0, .L143+72
	ldr	r1, .L143+12
	mov	r2, #135
	ldr	ip, .L143+16
	mov	lr, pc
	bx	ip
	b	.L105
.L144:
	.align	2
.L143:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.word	.LC5
	.word	.LC2
	.word	_Z5debugPcz
	.word	tab_sp
	.word	_ZN10tab_sprite10add_spriteEP6sprite
	.word	_ZN6sprite13change_bitmapEPKhtttt
	.word	_ZN6sprite12sprite2sizexEv
	.word	_ZN6sprite12sprite2sizeyEv
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.word	.LC4
	.word	.LC3
	.size	_ZN6spriteC2EtttttttttPKhtt, .-_ZN6spriteC2EtttttttttPKhtt
	.align	2
	.global	_ZN6spriteC1EtttttttttPKhtt
	.type	_ZN6spriteC1EtttttttttPKhtt, %function
_ZN6spriteC1EtttttttttPKhtt:
	@ Function supports interworking.
	@ args = 36, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	ldrsh	lr, [fp, #32]	@  s_x,  s_x
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16	@  bitmap
	ldr	ip, .L184
	ldrsh	r4, [fp, #24]	@  pal_no
	mov	r5, r1, asr #16	@  alpha
	mov	r6, r2, asr #16	@  mosaic
	ldrsh	r1, [fp, #4]	@  xx
	ldrsh	r2, [fp, #8]	@  yy
	mov	r7, r3, asr #16	@  nb_col
	ldrsh	r3, [fp, #20]	@  priority
	mov	lr, lr, asl #16	@  s_x
	str	ip, [r0, #0]	@  <variable>._vptr.sprite
	str	r3, [fp, #-56]	@  priority
	str	r4, [fp, #-60]	@  pal_no
	ldr	r3, .L184+4
	str	r0, [fp, #-44]	@  this
	str	lr, [fp, #-64]
	str	r1, [fp, #-48]	@  xx
	str	r2, [fp, #-52]	@  yy
	ldrsh	sl, [fp, #12]	@  h_flip,  h_flip
	ldrsh	r9, [fp, #16]	@  v_flip,  v_flip
	ldrsh	r4, [fp, #36]	@  s_y,  s_y
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-64]
	mov	r3, ip, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	beq	.L146
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L175
.L146:
	mov	r4, r4, asl #16	@  s_y
	mov	r3, r4, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r4, [fp, #-68]
	beq	.L147
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L176
.L147:
	mov	r8, r5, asl #16	@  alpha
	mov	r3, r8, lsr #16	@  bitmap
	cmp	r8, #0
	cmpne	r3, #1024	@  bitmap
	beq	.L148
	cmp	r3, #2048	@  bitmap
	beq	.L148
	ldr	r0, .L184+8
	ldr	r1, .L184+12
	mov	r2, #137
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
.L148:
	mov	r6, r6, asl #16	@  mosaic
	mov	r3, r6, lsr #16	@  bitmap
	cmp	r3, #4096	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r6, [fp, #-72]
	bne	.L177
.L149:
	mov	r3, r7, asl #16	@  nb_col
	mov	r0, r3, lsr #16
	cmp	r3, #0
	cmpne	r0, #8192
	str	r0, [fp, #-76]
	bne	.L178
.L150:
	mov	r3, sl, asl #16	@  h_flip
	mov	sl, r3, lsr #16	@  bitmap
	cmp	sl, #4096	@  bitmap
	cmpne	sl, #0	@  bitmap
	bne	.L179
.L151:
	mov	r3, r9, asl #16	@  v_flip
	mov	r7, r3, lsr #16	@  bitmap
	cmp	r7, #8192	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L180
.L152:
	ldr	r1, [fp, #-56]	@  priority
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #3
	str	r3, [fp, #-80]
	bhi	.L181
.L153:
	ldr	r2, [fp, #-60]	@  pal_no
	mov	r3, r2, asl #16
	mov	r9, r3, lsr #16	@  bitmap
	cmp	r9, #15	@  bitmap
	bhi	.L182
.L154:
	ldr	r3, [fp, #28]	@  bitmap
	cmp	r3, #0
	beq	.L183
.L155:
	ldr	ip, [fp, #-64]
	mov	r4, ip, lsr #16
	cmp	r4, #8
	cmpne	r4, #16
	beq	.L158
	cmp	r4, #32
	cmpne	r4, #64
	bne	.L145
.L158:
	ldr	r0, [fp, #-68]
	mov	r5, r0, lsr #16	@  bitmap
	cmp	r5, #8	@  bitmap
	cmpne	r5, #16	@  bitmap
	beq	.L159
	cmp	r5, #32	@  bitmap
	cmpne	r5, #64	@  bitmap
	bne	.L145
.L159:
	mov	r6, r8, lsr #16
	cmp	r8, #0
	cmpne	r6, #1024
	beq	.L160
	cmp	r6, #2048
	beq	.L160
.L145:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L160:
	ldr	r1, [fp, #-72]
	mov	r8, r1, lsr #16
	cmp	r8, #4096
	cmpne	r8, #0
	bne	.L145
	ldr	r2, [fp, #-76]
	cmp	r2, #0
	cmpne	r2, #8192
	bne	.L145
	cmp	sl, #4096	@  bitmap
	cmpne	sl, #0	@  bitmap
	bne	.L145
	cmp	r7, #8192	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L145
	ldr	r3, [fp, #-80]
	cmp	r9, #15	@  bitmap
	cmpls	r3, #3
	bhi	.L145
	ldr	ip, [fp, #28]	@  bitmap
	cmp	ip, #0
	beq	.L145
	ldr	r3, .L184+20
	ldr	r1, [fp, #-44]	@  this
	ldr	r0, [r3, #0]	@  this,  tab_sp
	ldr	r3, .L184+24
	mov	lr, pc
	bx	r3
	sub	r2, fp, #52
	ldmia	r2, {r2, ip}	@ phole ldm
	ldr	r0, [fp, #-44]	@  this
	mov	r3, r2, asl #16
	mov	r2, ip, asl #16
	ldr	r1, [r0, #48]	@  <variable>.my_sprite_rotation
	mov	r2, r2, lsr #16	@  xx
	str	r2, [r0, #20]	@  xx,  <variable>.x
	mov	r2, r4
	ldr	r4, [fp, #-76]
	cmp	r1, #0
	mov	r3, r3, lsr #16	@  yy
	str	r3, [r0, #4]	@  yy,  <variable>.y
	streqh	sl, [r0, #24]	@ movhi 	@  bitmap,  <variable>.h_flip_flag
	streqh	r7, [r0, #26]	@ movhi 	@  bitmap,  <variable>.v_flip_flag
	strh	r6, [r0, #12]	@ movhi 	@  <variable>.alpha_flag
	strh	r8, [r0, #14]	@ movhi 	@  <variable>.mosaic_flag
	ldr	r1, [fp, #28]	@  bitmap
	mov	r3, r5	@  bitmap
	ldr	r0, [fp, #-44]	@  this
	ldr	ip, .L184+28
	stmia	sp, {r4, r9}	@ phole stm
	mov	lr, pc
	bx	ip
	ldr	ip, [fp, #-44]	@  this
	ldr	r1, [ip, #20]	@  <variable>.x
	ldr	r0, [ip, #4]	@  <variable>.y
	mov	r3, r1, asr #31
	mov	r2, r0, asr #31
	add	r3, r1, r3, lsr #29
	add	r2, r0, r2, lsr #29
	cmp	r1, #0
	ldr	r1, [fp, #-80]
	mov	r3, r3, asr #3
	mov	r2, r2, asr #3
	strh	r1, [ip, #34]	@ movhi 	@  <variable>.priority
	str	r3, [ip, #60]	@  <variable>.map_x
	str	r2, [ip, #64]	@  <variable>.map_y
	blt	.L170
	ldr	r3, .L184+32
	mov	r0, ip
	mov	lr, pc
	bx	r3
	ldr	r2, [fp, #-44]	@  this
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r2, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	movle	r3, #1
	ldrle	r0, [r2, #4]	@  <variable>.y
	strleb	r3, [r2, #56]	@  <variable>.visible_x
	ble	.L171
	ldr	r3, [fp, #-44]	@  this
	ldr	r0, [r3, #4]	@  <variable>.y
.L170:
	ldr	r4, [fp, #-44]	@  this
	mov	r3, #0
	strb	r3, [r4, #56]	@  <variable>.visible_x
.L171:
	cmp	r0, #0
	blt	.L172
	ldr	r3, .L184+36
	ldr	r0, [fp, #-44]	@  this
	mov	lr, pc
	bx	r3
	ldr	ip, [fp, #-44]	@  this
	mov	r0, r0, asl #16	@  this
	ldr	r3, [ip, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	strleb	r3, [ip, #57]	@  <variable>.visible_y
	ble	.L145
.L172:
	ldr	r0, [fp, #-44]	@  this
	mov	r3, #0
	strb	r3, [r0, #57]	@  <variable>.visible_y
	b	.L145
.L183:
	ldr	r0, .L184+40
	ldr	r1, .L184+12
	mov	r2, #144
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L155
.L182:
	ldr	r0, .L184+44
	ldr	r1, .L184+12
	mov	r2, #143
	mov	r3, r9	@  bitmap
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L154
.L181:
	ldr	r0, .L184+48
	ldr	r1, .L184+12
	mov	r2, #142
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L153
.L180:
	ldr	r0, .L184+52
	ldr	r1, .L184+12
	mov	r2, #141
	mov	r3, r7	@  bitmap
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L152
.L179:
	ldr	r0, .L184+56
	ldr	r1, .L184+12
	mov	r2, #140
	mov	r3, sl	@  bitmap
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L151
.L178:
	ldr	r0, .L184+60
	ldr	r1, .L184+12
	mov	r2, #139
	ldr	r3, [fp, #-76]
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L150
.L177:
	ldr	r0, .L184+64
	ldr	r1, .L184+12
	mov	r2, #138
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L149
.L176:
	ldr	r0, .L184+68
	ldr	r1, .L184+12
	mov	r2, #136
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L147
.L175:
	ldr	r0, .L184+72
	ldr	r1, .L184+12
	mov	r2, #135
	ldr	ip, .L184+16
	mov	lr, pc
	bx	ip
	b	.L146
.L185:
	.align	2
.L184:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.word	.LC5
	.word	.LC2
	.word	_Z5debugPcz
	.word	tab_sp
	.word	_ZN10tab_sprite10add_spriteEP6sprite
	.word	_ZN6sprite13change_bitmapEPKhtttt
	.word	_ZN6sprite12sprite2sizexEv
	.word	_ZN6sprite12sprite2sizeyEv
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.word	.LC4
	.word	.LC3
	.size	_ZN6spriteC1EtttttttttPKhtt, .-_ZN6spriteC1EtttttttttPKhtt
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"%s : %d \n"
	.ascii	"\trot_ind %d\000"
	.align	2
.LC15:
	.ascii	"%s : %d \n"
	.ascii	"\tsd %d\000"
	.align	2
.LC14:
	.ascii	"%s : %d \n"
	.ascii	"\trot_flag %d\000"
	.text
	.align	2
	.global	_ZN6spriteC2EttttttttttPKhtt
	.type	_ZN6spriteC2EttttttttttPKhtt, %function
_ZN6spriteC2EttttttttttPKhtt:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #52
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16	@  bitmap
	mov	r7, r1, asr #16	@  rot_flag
	mov	r8, r2, asr #16	@  sd
	ldrsh	r1, [fp, #4]	@  mosaic
	ldrsh	r2, [fp, #8]	@  nb_col
	mov	sl, r3, asr #16	@  alpha
	ldrsh	r3, [fp, #12]	@  xx
	ldrsh	lr, [fp, #20]	@  rot_ind,  rot_ind
	ldr	ip, .L226
	str	r1, [fp, #-44]	@  mosaic
	str	r2, [fp, #-48]	@  nb_col
	ldrsh	r1, [fp, #16]	@  yy
	str	r3, [fp, #-52]	@  xx
	ldrsh	r2, [fp, #24]	@  priority
	ldrsh	r3, [fp, #28]	@  pal_no
	mov	lr, lr, asl #16	@  rot_ind
	str	r1, [fp, #-56]	@  yy
	str	r3, [fp, #-64]	@  pal_no
	str	ip, [r0, #0]	@  <variable>._vptr.sprite
	ldr	r3, .L226+4
	str	lr, [fp, #-68]
	str	r2, [fp, #-60]	@  priority
	mov	r4, r0	@  this
	ldrsh	r5, [fp, #36]	@  s_x,  s_x
	ldrsh	r6, [fp, #40]	@  s_y,  s_y
	mov	lr, pc
	bx	r3
	ldr	r1, [fp, #-68]
	mov	r3, r1, lsr #16	@  bitmap
	cmp	r3, #31	@  bitmap
	bhi	.L215
.L187:
	mov	r5, r5, asl #16	@  s_x
	mov	r3, r5, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r5, [fp, #-72]
	beq	.L188
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L216
.L188:
	mov	r6, r6, asl #16	@  s_y
	mov	r3, r6, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r6, [fp, #-76]
	beq	.L189
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L217
.L189:
	mov	r7, r7, asl #16	@  rot_flag
	mov	r3, r7, lsr #16	@  bitmap
	cmp	r3, #256	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r7, [fp, #-80]
	bne	.L218
.L190:
	mov	r8, r8, asl #16	@  sd
	mov	r3, r8, lsr #16	@  bitmap
	cmp	r3, #512	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r8, [fp, #-84]
	bne	.L219
.L191:
	mov	r9, sl, asl #16	@  alpha
	mov	r3, r9, lsr #16	@  bitmap
	cmp	r9, #0
	cmpne	r3, #1024	@  bitmap
	beq	.L192
	cmp	r3, #2048	@  bitmap
	beq	.L192
	ldr	r0, .L226+8
	ldr	r1, .L226+12
	mov	r2, #185
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
.L192:
	ldr	r2, [fp, #-44]	@  mosaic
	mov	r3, r2, asl #16
	mov	r7, r3, lsr #16	@  bitmap
	cmp	r7, #4096	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L220
.L193:
	ldr	r1, [fp, #-48]	@  nb_col
	mov	r3, r1, asl #16
	mov	r8, r3, lsr #16	@  bitmap
	cmp	r3, #0
	cmpne	r8, #8192	@  bitmap
	bne	.L221
.L194:
	ldr	r2, [fp, #-68]
	mov	r5, r2, lsr #16	@  bitmap
	cmp	r5, #31	@  bitmap
	bhi	.L222
.L195:
	ldr	r1, [fp, #-60]	@  priority
	mov	r3, r1, asl #16
	mov	sl, r3, lsr #16	@  bitmap
	cmp	sl, #3	@  bitmap
	bhi	.L223
.L196:
	ldr	r2, [fp, #-64]	@  pal_no
	mov	r3, r2, asl #16
	mov	r6, r3, lsr #16	@  bitmap
	cmp	r6, #15	@  bitmap
	bhi	.L224
.L197:
	ldr	r3, [fp, #32]	@  bitmap
	cmp	r3, #0
	beq	.L225
.L198:
	ldr	r3, .L226+20
	mov	r1, r4	@  this
	ldr	r0, [r3, #0]	@  this,  tab_sp
	ldr	r3, .L226+24
	mov	lr, pc
	bx	r3
	ldr	r2, .L226+28
	ldr	r0, [r2, #0]	@  tab_sp_rot
	add	r1, r5, r5, asl #1	@  bitmap,  bitmap
	add	r0, r0, r1, asl #3
	ldr	r2, [fp, #-80]
	ldr	r1, [fp, #-56]	@  yy
	str	r0, [r4, #48]	@  <variable>.my_sprite_rotation
	cmp	r0, #0
	mov	r3, r1, asl #16
	mov	r1, r2, lsr #16	@  r
	strneh	r1, [r4, #8]	@ movhi 	@  r,  <variable>.rot_flag
	mov	r3, r3, lsr #16	@  yy
	ldr	r1, [fp, #-52]	@  xx
	str	r3, [r4, #4]	@  yy,  <variable>.y
	ldr	r3, [r4, #48]	@  <variable>.my_sprite_rotation
	mov	r2, r1, asl #16
	mov	r1, r9, lsr #16	@  alpha
	cmp	r3, #0
	strh	r1, [r4, #12]	@ movhi 	@  alpha,  <variable>.alpha_flag
	sub	r1, fp, #76
	ldmia	r1, {r1, r3}	@ phole ldm
	mov	r2, r2, lsr #16	@  xx
	str	r2, [r4, #20]	@  xx,  <variable>.x
	strneh	r5, [r4, #28]	@ movhi 	@  bitmap,  <variable>.rot_ind
	strh	r7, [r4, #14]	@ movhi 	@  bitmap,  <variable>.mosaic_flag
	mov	r2, r3, lsr #16
	mov	r0, r4	@  this
	mov	r3, r1, lsr #16	@  bitmap
	str	r8, [sp, #0]	@  bitmap
	ldr	r1, [fp, #32]	@  bitmap
	str	r6, [sp, #4]	@  bitmap
	ldr	ip, .L226+32
	mov	lr, pc
	bx	ip
	ldr	r1, [r4, #20]	@  <variable>.x
	ldr	r0, [r4, #4]	@  <variable>.y
	mov	r3, r1, asr #31
	mov	r2, r0, asr #31
	add	r3, r1, r3, lsr #29
	add	r2, r0, r2, lsr #29
	mov	r3, r3, asr #3
	mov	r2, r2, asr #3
	cmp	r1, #0
	strh	sl, [r4, #34]	@ movhi 	@  bitmap,  <variable>.priority
	str	r3, [r4, #60]	@  <variable>.map_x
	str	r2, [r4, #64]	@  <variable>.map_y
	blt	.L208
	ldr	r3, .L226+36
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	ldrle	r0, [r4, #4]	@  <variable>.y
	movle	r3, #1
	ble	.L213
	ldr	r0, [r4, #4]	@  <variable>.y
.L208:
	mov	r3, #0
.L213:
	cmp	r0, #0
	strb	r3, [r4, #56]	@  <variable>.visible_x
	blt	.L210
	ldr	r3, .L226+40
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	ble	.L214
.L210:
	mov	r3, #0
.L214:
	ldr	r2, [fp, #-84]
	strb	r3, [r4, #57]	@  <variable>.visible_y
	mov	r0, r4	@  this
	mov	r1, r2, lsr #16	@  this
	ldr	r3, .L226+44
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L226+48
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L225:
	ldr	r0, .L226+52
	ldr	r1, .L226+12
	mov	r2, #191
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L198
.L224:
	ldr	r0, .L226+56
	ldr	r1, .L226+12
	mov	r2, #190
	mov	r3, r6	@  bitmap
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L197
.L223:
	ldr	r0, .L226+60
	ldr	r1, .L226+12
	mov	r2, #189
	mov	r3, sl	@  bitmap
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L196
.L222:
	ldr	r0, .L226+64
	ldr	r1, .L226+12
	mov	r2, #188
	mov	r3, r5	@  bitmap
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L195
.L221:
	ldr	r0, .L226+68
	ldr	r1, .L226+12
	mov	r2, #187
	mov	r3, r8	@  bitmap
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L194
.L220:
	ldr	r0, .L226+72
	ldr	r1, .L226+12
	mov	r2, #186
	mov	r3, r7	@  bitmap
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L193
.L219:
	ldr	r0, .L226+76
	ldr	r1, .L226+12
	mov	r2, #184
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L191
.L218:
	ldr	r0, .L226+80
	ldr	r1, .L226+12
	mov	r2, #183
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L190
.L217:
	ldr	r0, .L226+84
	ldr	r1, .L226+12
	mov	r2, #182
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L189
.L216:
	ldr	r0, .L226+88
	ldr	r1, .L226+12
	mov	r2, #181
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L188
.L215:
	ldr	r0, .L226+64
	ldr	r1, .L226+12
	mov	r2, #180
	ldr	ip, .L226+16
	mov	lr, pc
	bx	ip
	b	.L187
.L227:
	.align	2
.L226:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.word	.LC5
	.word	.LC2
	.word	_Z5debugPcz
	.word	tab_sp
	.word	_ZN10tab_sprite10add_spriteEP6sprite
	.word	tab_sp_rot
	.word	_ZN6sprite13change_bitmapEPKhtttt
	.word	_ZN6sprite12sprite2sizexEv
	.word	_ZN6sprite12sprite2sizeyEv
	.word	_ZN6sprite20set_size_double_flagEt
	.word	_ZN15sprite_rotation6updateEv
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC13
	.word	.LC7
	.word	.LC6
	.word	.LC15
	.word	.LC14
	.word	.LC4
	.word	.LC3
	.size	_ZN6spriteC2EttttttttttPKhtt, .-_ZN6spriteC2EttttttttttPKhtt
	.align	2
	.global	_ZN6spriteC1EttttttttttPKhtt
	.type	_ZN6spriteC1EttttttttttPKhtt, %function
_ZN6spriteC1EttttttttttPKhtt:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #52
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16	@  bitmap
	mov	r7, r1, asr #16	@  rot_flag
	mov	r8, r2, asr #16	@  sd
	ldrsh	r1, [fp, #4]	@  mosaic
	ldrsh	r2, [fp, #8]	@  nb_col
	mov	sl, r3, asr #16	@  alpha
	ldrsh	r3, [fp, #12]	@  xx
	ldrsh	lr, [fp, #20]	@  rot_ind,  rot_ind
	ldr	ip, .L268
	str	r1, [fp, #-44]	@  mosaic
	str	r2, [fp, #-48]	@  nb_col
	ldrsh	r1, [fp, #16]	@  yy
	str	r3, [fp, #-52]	@  xx
	ldrsh	r2, [fp, #24]	@  priority
	ldrsh	r3, [fp, #28]	@  pal_no
	mov	lr, lr, asl #16	@  rot_ind
	str	r1, [fp, #-56]	@  yy
	str	r3, [fp, #-64]	@  pal_no
	str	ip, [r0, #0]	@  <variable>._vptr.sprite
	ldr	r3, .L268+4
	str	lr, [fp, #-68]
	str	r2, [fp, #-60]	@  priority
	mov	r4, r0	@  this
	ldrsh	r5, [fp, #36]	@  s_x,  s_x
	ldrsh	r6, [fp, #40]	@  s_y,  s_y
	mov	lr, pc
	bx	r3
	ldr	r1, [fp, #-68]
	mov	r3, r1, lsr #16	@  bitmap
	cmp	r3, #31	@  bitmap
	bhi	.L257
.L229:
	mov	r5, r5, asl #16	@  s_x
	mov	r3, r5, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r5, [fp, #-72]
	beq	.L230
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L258
.L230:
	mov	r6, r6, asl #16	@  s_y
	mov	r3, r6, lsr #16	@  bitmap
	cmp	r3, #8	@  bitmap
	cmpne	r3, #16	@  bitmap
	str	r6, [fp, #-76]
	beq	.L231
	cmp	r3, #32	@  bitmap
	cmpne	r3, #64	@  bitmap
	bne	.L259
.L231:
	mov	r7, r7, asl #16	@  rot_flag
	mov	r3, r7, lsr #16	@  bitmap
	cmp	r3, #256	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r7, [fp, #-80]
	bne	.L260
.L232:
	mov	r8, r8, asl #16	@  sd
	mov	r3, r8, lsr #16	@  bitmap
	cmp	r3, #512	@  bitmap
	cmpne	r3, #0	@  bitmap
	str	r8, [fp, #-84]
	bne	.L261
.L233:
	mov	r9, sl, asl #16	@  alpha
	mov	r3, r9, lsr #16	@  bitmap
	cmp	r9, #0
	cmpne	r3, #1024	@  bitmap
	beq	.L234
	cmp	r3, #2048	@  bitmap
	beq	.L234
	ldr	r0, .L268+8
	ldr	r1, .L268+12
	mov	r2, #185
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
.L234:
	ldr	r2, [fp, #-44]	@  mosaic
	mov	r3, r2, asl #16
	mov	r7, r3, lsr #16	@  bitmap
	cmp	r7, #4096	@  bitmap
	cmpne	r7, #0	@  bitmap
	bne	.L262
.L235:
	ldr	r1, [fp, #-48]	@  nb_col
	mov	r3, r1, asl #16
	mov	r8, r3, lsr #16	@  bitmap
	cmp	r3, #0
	cmpne	r8, #8192	@  bitmap
	bne	.L263
.L236:
	ldr	r2, [fp, #-68]
	mov	r5, r2, lsr #16	@  bitmap
	cmp	r5, #31	@  bitmap
	bhi	.L264
.L237:
	ldr	r1, [fp, #-60]	@  priority
	mov	r3, r1, asl #16
	mov	sl, r3, lsr #16	@  bitmap
	cmp	sl, #3	@  bitmap
	bhi	.L265
.L238:
	ldr	r2, [fp, #-64]	@  pal_no
	mov	r3, r2, asl #16
	mov	r6, r3, lsr #16	@  bitmap
	cmp	r6, #15	@  bitmap
	bhi	.L266
.L239:
	ldr	r3, [fp, #32]	@  bitmap
	cmp	r3, #0
	beq	.L267
.L240:
	ldr	r3, .L268+20
	mov	r1, r4	@  this
	ldr	r0, [r3, #0]	@  this,  tab_sp
	ldr	r3, .L268+24
	mov	lr, pc
	bx	r3
	ldr	r2, .L268+28
	ldr	r0, [r2, #0]	@  tab_sp_rot
	add	r1, r5, r5, asl #1	@  bitmap,  bitmap
	add	r0, r0, r1, asl #3
	ldr	r2, [fp, #-80]
	ldr	r1, [fp, #-56]	@  yy
	str	r0, [r4, #48]	@  <variable>.my_sprite_rotation
	cmp	r0, #0
	mov	r3, r1, asl #16
	mov	r1, r2, lsr #16	@  r
	strneh	r1, [r4, #8]	@ movhi 	@  r,  <variable>.rot_flag
	mov	r3, r3, lsr #16	@  yy
	ldr	r1, [fp, #-52]	@  xx
	str	r3, [r4, #4]	@  yy,  <variable>.y
	ldr	r3, [r4, #48]	@  <variable>.my_sprite_rotation
	mov	r2, r1, asl #16
	mov	r1, r9, lsr #16	@  alpha
	cmp	r3, #0
	strh	r1, [r4, #12]	@ movhi 	@  alpha,  <variable>.alpha_flag
	sub	r1, fp, #76
	ldmia	r1, {r1, r3}	@ phole ldm
	mov	r2, r2, lsr #16	@  xx
	str	r2, [r4, #20]	@  xx,  <variable>.x
	strneh	r5, [r4, #28]	@ movhi 	@  bitmap,  <variable>.rot_ind
	strh	r7, [r4, #14]	@ movhi 	@  bitmap,  <variable>.mosaic_flag
	mov	r2, r3, lsr #16
	mov	r0, r4	@  this
	mov	r3, r1, lsr #16	@  bitmap
	str	r8, [sp, #0]	@  bitmap
	ldr	r1, [fp, #32]	@  bitmap
	str	r6, [sp, #4]	@  bitmap
	ldr	ip, .L268+32
	mov	lr, pc
	bx	ip
	ldr	r1, [r4, #20]	@  <variable>.x
	ldr	r0, [r4, #4]	@  <variable>.y
	mov	r3, r1, asr #31
	mov	r2, r0, asr #31
	add	r3, r1, r3, lsr #29
	add	r2, r0, r2, lsr #29
	mov	r3, r3, asr #3
	mov	r2, r2, asr #3
	cmp	r1, #0
	strh	sl, [r4, #34]	@ movhi 	@  bitmap,  <variable>.priority
	str	r3, [r4, #60]	@  <variable>.map_x
	str	r2, [r4, #64]	@  <variable>.map_y
	blt	.L250
	ldr	r3, .L268+36
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	ldrle	r0, [r4, #4]	@  <variable>.y
	movle	r3, #1
	ble	.L255
	ldr	r0, [r4, #4]	@  <variable>.y
.L250:
	mov	r3, #0
.L255:
	cmp	r0, #0
	strb	r3, [r4, #56]	@  <variable>.visible_x
	blt	.L252
	ldr	r3, .L268+40
	mov	r0, r4	@  this
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	ble	.L256
.L252:
	mov	r3, #0
.L256:
	ldr	r2, [fp, #-84]
	strb	r3, [r4, #57]	@  <variable>.visible_y
	mov	r0, r4	@  this
	mov	r1, r2, lsr #16	@  this
	ldr	r3, .L268+44
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L268+48
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L267:
	ldr	r0, .L268+52
	ldr	r1, .L268+12
	mov	r2, #191
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L240
.L266:
	ldr	r0, .L268+56
	ldr	r1, .L268+12
	mov	r2, #190
	mov	r3, r6	@  bitmap
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L239
.L265:
	ldr	r0, .L268+60
	ldr	r1, .L268+12
	mov	r2, #189
	mov	r3, sl	@  bitmap
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L238
.L264:
	ldr	r0, .L268+64
	ldr	r1, .L268+12
	mov	r2, #188
	mov	r3, r5	@  bitmap
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L237
.L263:
	ldr	r0, .L268+68
	ldr	r1, .L268+12
	mov	r2, #187
	mov	r3, r8	@  bitmap
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L236
.L262:
	ldr	r0, .L268+72
	ldr	r1, .L268+12
	mov	r2, #186
	mov	r3, r7	@  bitmap
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L235
.L261:
	ldr	r0, .L268+76
	ldr	r1, .L268+12
	mov	r2, #184
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L233
.L260:
	ldr	r0, .L268+80
	ldr	r1, .L268+12
	mov	r2, #183
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L232
.L259:
	ldr	r0, .L268+84
	ldr	r1, .L268+12
	mov	r2, #182
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L231
.L258:
	ldr	r0, .L268+88
	ldr	r1, .L268+12
	mov	r2, #181
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L230
.L257:
	ldr	r0, .L268+64
	ldr	r1, .L268+12
	mov	r2, #180
	ldr	ip, .L268+16
	mov	lr, pc
	bx	ip
	b	.L229
.L269:
	.align	2
.L268:
	.word	_ZTV6sprite+8
	.word	_ZN6sprite4initEv
	.word	.LC5
	.word	.LC2
	.word	_Z5debugPcz
	.word	tab_sp
	.word	_ZN10tab_sprite10add_spriteEP6sprite
	.word	tab_sp_rot
	.word	_ZN6sprite13change_bitmapEPKhtttt
	.word	_ZN6sprite12sprite2sizexEv
	.word	_ZN6sprite12sprite2sizeyEv
	.word	_ZN6sprite20set_size_double_flagEt
	.word	_ZN15sprite_rotation6updateEv
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC13
	.word	.LC7
	.word	.LC6
	.word	.LC15
	.word	.LC14
	.word	.LC4
	.word	.LC3
	.size	_ZN6spriteC1EttttttttttPKhtt, .-_ZN6spriteC1EttttttttttPKhtt
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"lsdnflskjdnfsdlnfsldn\000"
	.text
	.align	2
	.global	_ZN6spriteD2Ev
	.type	_ZN6spriteD2Ev, %function
_ZN6spriteD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r5, r0	@  this
	ldr	r0, [r0, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L318
	cmp	r0, #0	@  this
	str	r3, [r5, #0]	@  <variable>._vptr.sprite
	beq	.L272
	ldr	r4, .L318+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	mov	r6, #1	@  last_rot
	bge	.L310
	mov	r4, r3
	mov	lr, r1
.L278:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #48]	@  <variable>.my_sprite_rotation
	cmp	r3, r0	@  this
	add	ip, ip, #1	@  i,  i
	mov	r1, lr
	beq	.L315
.L275:
	cmp	ip, r4	@  i
	blt	.L278
	cmp	r6, #0	@  last_rot
	beq	.L272
.L310:
	mov	ip, #0
	mov	lr, #256
	mov	r3, ip
	mov	r1, ip
	mov	r2, ip
	str	ip, [sp, #0]
	str	lr, [sp, #8]
	str	lr, [sp, #4]
	ldr	ip, .L318+8
	mov	lr, pc
	bx	ip
	ldr	r0, [r5, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L318+12
	mov	lr, pc
	bx	r3
.L272:
	ldr	lr, [r5, #44]	@  <variable>.my_sprite_bitmap
	cmp	lr, #0
	beq	.L280
	ldr	r4, .L318+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L311
	mov	r4, r3
	mov	r0, r1
.L286:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #44]	@  <variable>.my_sprite_bitmap
	cmp	r3, lr
	add	ip, ip, #1	@  i,  i
	mov	r1, r0
	beq	.L316
.L283:
	cmp	ip, r4	@  i
	blt	.L286
	mov	r3, #1	@  last_bmp
	cmp	r3, #0	@  last_bmp
	beq	.L280
.L311:
	ldr	r3, .L318+16
	mov	r1, lr
	ldr	r0, [r3, #0]	@  this,  tab_sp_bmp
	ldr	r3, .L318+20
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	cmn	r0, #65536
	beq	.L317
.L280:
	ldr	r4, .L318+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L290
	mov	r2, r3
.L294:
	ldr	r3, [r1, ip, asl #2]	@  <variable>.tab
	cmp	r3, r5	@  this
	beq	.L290
	add	ip, ip, #1	@  i,  i
	cmp	ip, r2	@  i
	blt	.L294
.L290:
	ldr	r4, .L318+4
	ldr	r3, [r4, #0]	@  tab_sp
	mov	lr, #4096
	ldrh	r3, [r3, lr]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r2, r4
	beq	.L295
	sub	r3, r3, #1
	cmp	ip, r3	@  i
	bge	.L308
.L300:
	ldr	r3, [r2, #0]	@  tab_sp
	add	r2, r3, ip, asl #2	@  i
	ldr	r0, [r2, #4]	@  <variable>.tab
	ldrh	r1, [r3, lr]	@  <variable>.nb
	str	r0, [r3, ip, asl #2]	@  <variable>.tab
	sub	r1, r1, #1
	add	ip, ip, #1	@  i,  i
	cmp	ip, r1	@  i
	mov	r2, r4
	blt	.L300
.L308:
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r2, #4096
	ldrh	r3, [r1, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.nb
	ldrh	r0, [r1, r2]	@  <variable>.nb
	mov	r3, #0
	str	r3, [r1, r0, asl #2]	@  <variable>.tab
.L295:
	mov	r0, r5	@  this
	ldr	r3, .L318+24
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L317:
	ldr	r0, .L318+28
	ldr	r3, .L318+32
	mov	lr, pc
	bx	r3
	b	.L280
.L316:
	cmp	r2, r5	@  this
	beq	.L283
	b	.L280
.L315:
	cmp	r2, r5	@  this
	movne	r6, #0	@  last_rot
	b	.L275
.L319:
	.align	2
.L318:
	.word	_ZTV6sprite+8
	.word	tab_sp
	.word	_ZN15sprite_rotation4initEttttll
	.word	_ZN15sprite_rotation6updateEv
	.word	tab_sp_bmp
	.word	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap
	.word	_ZN6sprite4initEv
	.word	.LC16
	.word	_Z5debugPcz
	.size	_ZN6spriteD2Ev, .-_ZN6spriteD2Ev
	.align	2
	.global	_ZN6spriteD1Ev
	.type	_ZN6spriteD1Ev, %function
_ZN6spriteD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r5, r0	@  this
	ldr	r0, [r0, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L368
	cmp	r0, #0	@  this
	str	r3, [r5, #0]	@  <variable>._vptr.sprite
	beq	.L322
	ldr	r4, .L368+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	mov	r6, #1	@  last_rot
	bge	.L360
	mov	r4, r3
	mov	lr, r1
.L328:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #48]	@  <variable>.my_sprite_rotation
	cmp	r3, r0	@  this
	add	ip, ip, #1	@  i,  i
	mov	r1, lr
	beq	.L365
.L325:
	cmp	ip, r4	@  i
	blt	.L328
	cmp	r6, #0	@  last_rot
	beq	.L322
.L360:
	mov	ip, #0
	mov	lr, #256
	mov	r3, ip
	mov	r1, ip
	mov	r2, ip
	str	ip, [sp, #0]
	str	lr, [sp, #8]
	str	lr, [sp, #4]
	ldr	ip, .L368+8
	mov	lr, pc
	bx	ip
	ldr	r0, [r5, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L368+12
	mov	lr, pc
	bx	r3
.L322:
	ldr	lr, [r5, #44]	@  <variable>.my_sprite_bitmap
	cmp	lr, #0
	beq	.L330
	ldr	r4, .L368+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L361
	mov	r4, r3
	mov	r0, r1
.L336:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #44]	@  <variable>.my_sprite_bitmap
	cmp	r3, lr
	add	ip, ip, #1	@  i,  i
	mov	r1, r0
	beq	.L366
.L333:
	cmp	ip, r4	@  i
	blt	.L336
	mov	r3, #1	@  last_bmp
	cmp	r3, #0	@  last_bmp
	beq	.L330
.L361:
	ldr	r3, .L368+16
	mov	r1, lr
	ldr	r0, [r3, #0]	@  this,  tab_sp_bmp
	ldr	r3, .L368+20
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	cmn	r0, #65536
	beq	.L367
.L330:
	ldr	r4, .L368+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L340
	mov	r2, r3
.L344:
	ldr	r3, [r1, ip, asl #2]	@  <variable>.tab
	cmp	r3, r5	@  this
	beq	.L340
	add	ip, ip, #1	@  i,  i
	cmp	ip, r2	@  i
	blt	.L344
.L340:
	ldr	r4, .L368+4
	ldr	r3, [r4, #0]	@  tab_sp
	mov	lr, #4096
	ldrh	r3, [r3, lr]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r2, r4
	beq	.L345
	sub	r3, r3, #1
	cmp	ip, r3	@  i
	bge	.L358
.L350:
	ldr	r3, [r2, #0]	@  tab_sp
	add	r2, r3, ip, asl #2	@  i
	ldr	r0, [r2, #4]	@  <variable>.tab
	ldrh	r1, [r3, lr]	@  <variable>.nb
	str	r0, [r3, ip, asl #2]	@  <variable>.tab
	sub	r1, r1, #1
	add	ip, ip, #1	@  i,  i
	cmp	ip, r1	@  i
	mov	r2, r4
	blt	.L350
.L358:
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r2, #4096
	ldrh	r3, [r1, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.nb
	ldrh	r0, [r1, r2]	@  <variable>.nb
	mov	r3, #0
	str	r3, [r1, r0, asl #2]	@  <variable>.tab
.L345:
	mov	r0, r5	@  this
	ldr	r3, .L368+24
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L367:
	ldr	r0, .L368+28
	ldr	r3, .L368+32
	mov	lr, pc
	bx	r3
	b	.L330
.L366:
	cmp	r2, r5	@  this
	beq	.L333
	b	.L330
.L365:
	cmp	r2, r5	@  this
	movne	r6, #0	@  last_rot
	b	.L325
.L369:
	.align	2
.L368:
	.word	_ZTV6sprite+8
	.word	tab_sp
	.word	_ZN15sprite_rotation4initEttttll
	.word	_ZN15sprite_rotation6updateEv
	.word	tab_sp_bmp
	.word	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap
	.word	_ZN6sprite4initEv
	.word	.LC16
	.word	_Z5debugPcz
	.size	_ZN6spriteD1Ev, .-_ZN6spriteD1Ev
	.align	2
	.global	_ZN6spriteD0Ev
	.type	_ZN6spriteD0Ev, %function
_ZN6spriteD0Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r5, r0	@  this
	ldr	r0, [r0, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L418
	cmp	r0, #0	@  this
	str	r3, [r5, #0]	@  <variable>._vptr.sprite
	beq	.L372
	ldr	r4, .L418+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	mov	r6, #1	@  last_rot
	bge	.L410
	mov	r4, r3
	mov	lr, r1
.L378:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #48]	@  <variable>.my_sprite_rotation
	cmp	r3, r0	@  this
	add	ip, ip, #1	@  i,  i
	mov	r1, lr
	beq	.L415
.L375:
	cmp	ip, r4	@  i
	blt	.L378
	cmp	r6, #0	@  last_rot
	beq	.L372
.L410:
	mov	ip, #0
	mov	lr, #256
	mov	r3, ip
	mov	r1, ip
	mov	r2, ip
	str	ip, [sp, #0]
	str	lr, [sp, #8]
	str	lr, [sp, #4]
	ldr	ip, .L418+8
	mov	lr, pc
	bx	ip
	ldr	r0, [r5, #48]	@  this,  <variable>.my_sprite_rotation
	ldr	r3, .L418+12
	mov	lr, pc
	bx	r3
.L372:
	ldr	lr, [r5, #44]	@  <variable>.my_sprite_bitmap
	cmp	lr, #0
	beq	.L380
	ldr	r4, .L418+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L411
	mov	r4, r3
	mov	r0, r1
.L386:
	ldr	r2, [r1, ip, asl #2]	@  <variable>.tab
	ldr	r3, [r2, #44]	@  <variable>.my_sprite_bitmap
	cmp	r3, lr
	add	ip, ip, #1	@  i,  i
	mov	r1, r0
	beq	.L416
.L383:
	cmp	ip, r4	@  i
	blt	.L386
	mov	r3, #1	@  last_bmp
	cmp	r3, #0	@  last_bmp
	beq	.L380
.L411:
	ldr	r3, .L418+16
	mov	r1, lr
	ldr	r0, [r3, #0]	@  this,  tab_sp_bmp
	ldr	r3, .L418+20
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	cmn	r0, #65536
	beq	.L417
.L380:
	ldr	r4, .L418+4
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r3, #4096
	ldrh	r3, [r1, r3]	@  <variable>.nb
	mov	ip, #0	@  i
	cmp	ip, r3	@  i
	bge	.L390
	mov	r2, r3
.L394:
	ldr	r3, [r1, ip, asl #2]	@  <variable>.tab
	cmp	r3, r5	@  this
	beq	.L390
	add	ip, ip, #1	@  i,  i
	cmp	ip, r2	@  i
	blt	.L394
.L390:
	ldr	r4, .L418+4
	ldr	r3, [r4, #0]	@  tab_sp
	mov	lr, #4096
	ldrh	r3, [r3, lr]	@  <variable>.nb
	cmp	ip, r3	@  i
	mov	r2, r4
	beq	.L395
	sub	r3, r3, #1
	cmp	ip, r3	@  i
	bge	.L408
.L400:
	ldr	r3, [r2, #0]	@  tab_sp
	add	r2, r3, ip, asl #2	@  i
	ldr	r0, [r2, #4]	@  <variable>.tab
	ldrh	r1, [r3, lr]	@  <variable>.nb
	str	r0, [r3, ip, asl #2]	@  <variable>.tab
	sub	r1, r1, #1
	add	ip, ip, #1	@  i,  i
	cmp	ip, r1	@  i
	mov	r2, r4
	blt	.L400
.L408:
	ldr	r1, [r4, #0]	@  tab_sp
	mov	r2, #4096
	ldrh	r3, [r1, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.nb
	ldrh	r0, [r1, r2]	@  <variable>.nb
	mov	r3, #0
	str	r3, [r1, r0, asl #2]	@  <variable>.tab
.L395:
	mov	r0, r5	@  this
	ldr	r3, .L418+24
	mov	lr, pc
	bx	r3
	mov	r0, r5	@  this
	ldr	r3, .L418+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L417:
	ldr	r0, .L418+32
	ldr	r3, .L418+36
	mov	lr, pc
	bx	r3
	b	.L380
.L416:
	cmp	r2, r5	@  this
	beq	.L383
	b	.L380
.L415:
	cmp	r2, r5	@  this
	movne	r6, #0	@  last_rot
	b	.L375
.L419:
	.align	2
.L418:
	.word	_ZTV6sprite+8
	.word	tab_sp
	.word	_ZN15sprite_rotation4initEttttll
	.word	_ZN15sprite_rotation6updateEv
	.word	tab_sp_bmp
	.word	_ZN17tab_sprite_bitmap10rem_bitmapEP13sprite_bitmap
	.word	_ZN6sprite4initEv
	.word	_ZdlPv
	.word	.LC16
	.word	_Z5debugPcz
	.size	_ZN6spriteD0Ev, .-_ZN6spriteD0Ev
	.align	2
	.global	_ZN6sprite4initEv
	.type	_ZN6sprite4initEv, %function
_ZN6sprite4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r2, [r0, #40]	@  <variable>.oam
	mov	r3, #0
	cmp	r2, r3
	mov	r1, r3	@ movhi
	mov	ip, #250
	movne	lr, #250	@ movhi
	strneh	r3, [r2, #4]	@ movhi 	@  <variable>.attribute2
	strneh	lr, [r2, #0]	@ movhi 	@  <variable>.attribute0
	strneh	lr, [r2, #2]	@ movhi 	@  <variable>.attribute1
	strb	r1, [r0, #56]	@  <variable>.visible_x
	strh	r3, [r0, #36]	@ movhi 	@  <variable>.pal_no
	str	ip, [r0, #20]	@  <variable>.x
	str	r3, [r0, #40]	@  <variable>.oam
	strh	r3, [r0, #38]	@ movhi 	@  <variable>.ind_sp
	str	r3, [r0, #44]	@  <variable>.my_sprite_bitmap
	str	r3, [r0, #48]	@  <variable>.my_sprite_rotation
	strh	r3, [r0, #52]	@ movhi 	@  <variable>.pas_move_x
	strh	r3, [r0, #54]	@ movhi 	@  <variable>.pas_move_y
	str	r3, [r0, #64]	@  <variable>.map_y
	str	r3, [r0, #60]	@  <variable>.map_x
	strb	r1, [r0, #57]	@  <variable>.visible_y
	str	ip, [r0, #4]	@  <variable>.y
	strh	r3, [r0, #8]	@ movhi 	@  <variable>.rot_flag
	strh	r3, [r0, #10]	@ movhi 	@  <variable>.size_double_flag
	strh	r3, [r0, #12]	@ movhi 	@  <variable>.alpha_flag
	strh	r3, [r0, #14]	@ movhi 	@  <variable>.mosaic_flag
	strh	r3, [r0, #16]	@ movhi 	@  <variable>.nb_col_flag
	strh	r3, [r0, #18]	@ movhi 	@  <variable>.shape_flag
	strh	r3, [r0, #28]	@ movhi 	@  <variable>.rot_ind
	strh	r3, [r0, #24]	@ movhi 	@  <variable>.h_flip_flag
	strh	r3, [r0, #26]	@ movhi 	@  <variable>.v_flip_flag
	strh	r3, [r0, #30]	@ movhi 	@  <variable>.form_flag
	strh	r3, [r0, #32]	@ movhi 	@  <variable>.sp_no
	strh	r3, [r0, #34]	@ movhi 	@  <variable>.priority
	ldr	lr, [sp], #4
	bx	lr
	.size	_ZN6sprite4initEv, .-_ZN6sprite4initEv
	.align	2
	.global	_ZN6sprite13change_bitmapEPKhtttt
	.type	_ZN6sprite13change_bitmapEPKhtttt, %function
_ZN6sprite13change_bitmapEPKhtttt:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldrsh	ip, [fp, #4]	@  nb_col,  nb_col
	mov	r7, r3, asl #16
	ldr	r3, .L432
	mov	r4, ip, asl #16	@  nb_col
	ldr	lr, [r3, #0]	@  this,  tab_sp_bmp
	mov	ip, r4, lsr #16
	mov	r5, r2, asl #16
	mov	r2, r5, lsr #16
	mov	r3, r7, lsr #16
	mov	r6, r0	@  this
	str	ip, [sp, #0]
	mov	r0, lr	@  this
	ldr	ip, .L432+4
	ldrsh	r8, [fp, #8]	@  pal_no,  pal_no
	mov	lr, pc
	bx	ip
	mov	r1, #67108864
	ldr	r2, [r1, #0]
	ldr	r3, [r1, #0]
	tst	r3, #1
	str	r0, [r6, #44]	@  this,  <variable>.my_sprite_bitmap
	bne	.L424
	ldr	r3, [r1, #0]
	tst	r3, #2
	ldreqh	r3, [r0, #12]	@  <variable>.sp_no_deb
	addeq	r3, r3, #512
	streqh	r3, [r6, #32]	@ movhi 	@  <variable>.sp_no
	beq	.L426
.L424:
	ldrh	r0, [r0, #12]	@ movhi	@  <variable>.sp_no_deb
	strh	r0, [r6, #32]	@ movhi 	@  <variable>.sp_no
.L426:
	mov	r3, r4, lsr #16	@  c
	mov	r4, r5, lsr #16	@  bitmap
	mov	r5, r7, lsr #16
	mov	r1, r4	@  bitmap
	strh	r3, [r6, #16]	@ movhi 	@  c,  <variable>.nb_col_flag
	mov	r2, r5
	ldr	r3, .L432+8
	mov	r0, r6	@  this
	mov	lr, pc
	bx	r3
	mov	r1, r4	@  bitmap
	strh	r0, [r6, #18]	@ movhi 	@  this,  <variable>.shape_flag
	mov	r2, r5
	mov	r0, r6	@  this
	ldr	r3, .L432+12
	mov	lr, pc
	bx	r3
	strh	r8, [r6, #36]	@ movhi 	@  pal_no,  <variable>.pal_no
	strh	r0, [r6, #30]	@ movhi 	@  this,  <variable>.form_flag
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L433:
	.align	2
.L432:
	.word	tab_sp_bmp
	.word	_ZN17tab_sprite_bitmap10add_bitmapEPKhttt
	.word	_ZN6sprite10size2shapeEtt
	.word	_ZN6sprite9size2formEtt
	.size	_ZN6sprite13change_bitmapEPKhtttt, .-_ZN6sprite13change_bitmapEPKhtttt
	.align	2
	.global	_ZN6sprite5rightEv
	.type	_ZN6sprite5rightEv, %function
_ZN6sprite5rightEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, [r0, #20]	@  <variable>.x
	ldrh	r2, [r0, #52]	@  <variable>.pas_move_x
	add	r3, r3, r2
	cmp	r3, #0
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #20]	@  <variable>.x
	blt	.L435
	ldr	r3, .L438
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	movle	r3, #1
	ble	.L437
.L435:
	mov	r3, #0
.L437:
	strb	r3, [r4, #56]	@  <variable>.visible_x
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L439:
	.align	2
.L438:
	.word	_ZN6sprite12sprite2sizexEv
	.size	_ZN6sprite5rightEv, .-_ZN6sprite5rightEv
	.align	2
	.global	_ZN6sprite4leftEv
	.type	_ZN6sprite4leftEv, %function
_ZN6sprite4leftEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, [r0, #20]	@  <variable>.x
	ldrh	r2, [r0, #52]	@  <variable>.pas_move_x
	rsb	r3, r2, r3
	cmp	r3, #0
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #20]	@  <variable>.x
	blt	.L441
	ldr	r3, .L444
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #20]	@  <variable>.x
	mov	r0, r0, lsr #16
	rsb	r0, r0, #240
	cmp	r3, r0
	movle	r3, #1
	ble	.L443
.L441:
	mov	r3, #0
.L443:
	strb	r3, [r4, #56]	@  <variable>.visible_x
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L445:
	.align	2
.L444:
	.word	_ZN6sprite12sprite2sizexEv
	.size	_ZN6sprite4leftEv, .-_ZN6sprite4leftEv
	.align	2
	.global	_ZN6sprite2upEv
	.type	_ZN6sprite2upEv, %function
_ZN6sprite2upEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, [r0, #4]	@  <variable>.y
	ldrh	r2, [r0, #54]	@  <variable>.pas_move_y
	rsb	r3, r2, r3
	cmp	r3, #0
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #4]	@  <variable>.y
	blt	.L447
	ldr	r3, .L450
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	ble	.L449
.L447:
	mov	r3, #0
.L449:
	strb	r3, [r4, #57]	@  <variable>.visible_y
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L451:
	.align	2
.L450:
	.word	_ZN6sprite12sprite2sizeyEv
	.size	_ZN6sprite2upEv, .-_ZN6sprite2upEv
	.align	2
	.global	_ZN6sprite4downEv
	.type	_ZN6sprite4downEv, %function
_ZN6sprite4downEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	ldr	r3, [r0, #4]	@  <variable>.y
	ldrh	r2, [r0, #54]	@  <variable>.pas_move_y
	add	r3, r3, r2
	cmp	r3, #0
	sub	fp, ip, #4
	mov	r4, r0	@  this
	str	r3, [r0, #4]	@  <variable>.y
	blt	.L453
	ldr	r3, .L456
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #16	@  this
	ldr	r3, [r4, #4]	@  <variable>.y
	mov	r0, r0, lsr #16
	rsb	r0, r0, #160
	cmp	r3, r0
	movle	r3, #1
	ble	.L455
.L453:
	mov	r3, #0
.L455:
	strb	r3, [r4, #57]	@  <variable>.visible_y
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L457:
	.align	2
.L456:
	.word	_ZN6sprite12sprite2sizeyEv
	.size	_ZN6sprite4downEv, .-_ZN6sprite4downEv
	.align	2
	.global	_ZN6sprite9collisionEPS_
	.type	_ZN6sprite9collisionEPS_, %function
_ZN6sprite9collisionEPS_:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #60]	@  <variable>.map_x
	ldr	r3, [r1, #60]	@  <variable>.map_x
	cmp	r2, r3
	@ lr needed for prologue
	beq	.L460
.L459:
	mov	r0, #0	@  this
	bx	lr
.L460:
	ldr	r2, [r0, #64]	@  <variable>.map_y
	ldr	r3, [r1, #64]	@  <variable>.map_y
	cmp	r2, r3
	mov	r0, #1	@  this
	bne	.L459
	bx	lr
	.size	_ZN6sprite9collisionEPS_, .-_ZN6sprite9collisionEPS_
	.section	.rodata.str1.4
	.align	2
.LC17:
	.ascii	"%s : %d \n"
	.ascii	"\t size2shape() %d %d\000"
	.text
	.align	2
	.global	_ZN6sprite10size2shapeEtt
	.type	_ZN6sprite10size2shapeEtt, %function
_ZN6sprite10size2shapeEtt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r1, r1, asl #16
	mov	r2, r2, asl #16
	mov	r3, r1, lsr #16
	mov	lr, r2, lsr #16
	sub	fp, ip, #4
	sub	sp, sp, #4
	cmp	r3, lr
	mov	ip, #0	@  this
	beq	.L461
	mov	ip, #32768	@  this
	bcc	.L461
	ldr	r0, .L466
	ldr	r1, .L466+4
	mov	r2, #400
	mov	ip, #16384	@  this
	bls	.L465
.L461:
	mov	r0, ip	@  this
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L465:
	ldr	ip, .L466+8
	str	lr, [sp, #0]
	mov	lr, pc
	bx	ip
	mov	ip, #65280	@  this
	add	ip, ip, #255	@  this,  this
	b	.L461
.L467:
	.align	2
.L466:
	.word	.LC17
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN6sprite10size2shapeEtt, .-_ZN6sprite10size2shapeEtt
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"%s : %d \n"
	.ascii	"\t size2form() %d %d\000"
	.text
	.align	2
	.global	_ZN6sprite9size2formEtt
	.type	_ZN6sprite9size2formEtt, %function
_ZN6sprite9size2formEtt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r1, r1, asl #16
	mov	r2, r2, asl #16
	mov	r0, r1, lsr #16
	mov	r3, r2, lsr #16
	sub	fp, ip, #4
	sub	sp, sp, #4
	cmp	r3, #16
	cmpls	r0, #8
	moveq	r0, #0	@  this
	beq	.L468
	cmp	r0, #16
	cmpeq	r3, #16
	beq	.L471
	cmp	r0, #8
	cmpeq	r3, #32
	beq	.L471
	cmp	r3, #8
	movne	r3, #0
	moveq	r3, #1
	cmp	r0, #32
	movne	r3, #0
	andeq	r3, r3, #1
	cmp	r3, #0
	beq	.L470
.L471:
	mov	r0, #16384	@  this
.L468:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L470:
	cmp	r0, #16
	cmpne	r0, #32
	beq	.L474
	cmp	r0, #32
	beq	.L474
.L473:
	mov	ip, r2, lsr #16
	cmp	ip, #32
	movne	r3, #0
	andeq	r3, r3, #1
	cmp	r3, #0
	movne	r0, #32768	@  this
	bne	.L468
	mov	r3, r1, lsr #16
	cmp	ip, #64
	cmpne	r3, #64
	moveq	r0, #49152	@  this
	beq	.L468
	mov	r2, #408
	ldr	r0, .L476
	str	ip, [sp, #0]
	ldr	r1, .L476+4
	add	r2, r2, #3
	ldr	ip, .L476+8
	mov	lr, pc
	bx	ip
	mov	r0, #65280	@  this
	add	r0, r0, #255	@  this,  this
	b	.L468
.L474:
	mov	r3, #1
	b	.L473
.L477:
	.align	2
.L476:
	.word	.LC18
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN6sprite9size2formEtt, .-_ZN6sprite9size2formEtt
	.section	.rodata.str1.4
	.align	2
.LC19:
	.ascii	"%s : %d \n"
	.ascii	"\t sprite2sizex() %d %d\000"
	.text
	.align	2
	.global	_ZN6sprite12sprite2sizexEv
	.type	_ZN6sprite12sprite2sizexEv, %function
_ZN6sprite12sprite2sizexEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldrsh	r1, [r0, #30]	@  form,  <variable>.form_flag
	ldrsh	r2, [r0, #18]	@  shape,  <variable>.shape_flag
	orr	r3, r2, r1	@  shape,  form
	movs	r3, r3, asl #16
	beq	.L495
	mov	r3, r1, asl #16	@  form
	mov	r2, r2, asl #16	@  shape
	mov	ip, r3, lsr #16
	cmp	r2, #0
	cmpeq	ip, #16384
	mov	r3, r2, lsr #16
	beq	.L494
	cmp	r3, #0
	cmpeq	ip, #32768
	beq	.L493
	cmp	r3, #0
	cmpeq	ip, #49152
	beq	.L496
	cmp	r3, #32768
	cmpeq	ip, #0
	beq	.L495
	cmp	r3, #32768
	cmpeq	ip, #16384
	beq	.L495
	cmp	r3, #32768
	cmpeq	ip, #32768
	beq	.L494
	cmp	r3, #32768
	cmpeq	ip, #49152
	beq	.L493
	cmp	r3, #16384
	cmpeq	ip, #0
	beq	.L494
	cmp	r3, #16384
	cmpeq	ip, #16384
	beq	.L493
	cmp	r3, #16384
	cmpeq	ip, #32768
	beq	.L493
	cmp	r3, #16384
	cmpeq	ip, #49152
	bne	.L492
.L496:
	mov	r0, #64	@  this
.L478:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L492:
	ldr	r0, .L497
	str	ip, [sp, #0]
	ldr	r1, .L497+4
	mov	r2, #436
	ldr	ip, .L497+8
	mov	lr, pc
	bx	ip
	mov	r0, #65280	@  this
	add	r0, r0, #255	@  this,  this
	b	.L478
.L493:
	mov	r0, #32	@  this
	b	.L478
.L494:
	mov	r0, #16	@  this
	b	.L478
.L495:
	mov	r0, #8	@  this
	b	.L478
.L498:
	.align	2
.L497:
	.word	.LC19
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN6sprite12sprite2sizexEv, .-_ZN6sprite12sprite2sizexEv
	.section	.rodata.str1.4
	.align	2
.LC20:
	.ascii	"%s : %d \n"
	.ascii	"\t sprite2sizey() %d %d\000"
	.text
	.align	2
	.global	_ZN6sprite12sprite2sizeyEv
	.type	_ZN6sprite12sprite2sizeyEv, %function
_ZN6sprite12sprite2sizeyEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldrsh	r1, [r0, #30]	@  form,  <variable>.form_flag
	ldrsh	r2, [r0, #18]	@  shape,  <variable>.shape_flag
	orr	r3, r2, r1	@  shape,  form
	movs	r3, r3, asl #16
	beq	.L514
	mov	r3, r1, asl #16	@  form
	mov	r2, r2, asl #16	@  shape
	mov	ip, r3, lsr #16
	cmp	r2, #0
	cmpeq	ip, #16384
	mov	r3, r2, lsr #16
	beq	.L516
	cmp	r3, #0
	cmpeq	ip, #32768
	beq	.L515
	cmp	r3, #0
	cmpeq	ip, #49152
	beq	.L517
	cmp	r3, #32768
	cmpeq	ip, #0
	beq	.L516
	cmp	r3, #32768
	cmpeq	ip, #16384
	beq	.L515
	cmp	r3, #32768
	cmpeq	ip, #32768
	beq	.L515
	cmp	r3, #32768
	cmpeq	ip, #49152
	beq	.L517
	cmp	r3, #16384
	cmpeq	ip, #0
	beq	.L514
	cmp	r3, #16384
	cmpeq	ip, #16384
	beq	.L514
	cmp	r3, #16384
	cmpeq	ip, #32768
	beq	.L516
	cmp	r3, #16384
	cmpeq	ip, #49152
	bne	.L513
.L515:
	mov	r0, #32	@  this
.L499:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L513:
	mov	r2, #460
	ldr	r0, .L518
	str	ip, [sp, #0]
	ldr	r1, .L518+4
	add	r2, r2, #1
	ldr	ip, .L518+8
	mov	lr, pc
	bx	ip
	mov	r0, #65280	@  this
	add	r0, r0, #255	@  this,  this
	b	.L499
.L516:
	mov	r0, #16	@  this
	b	.L499
.L514:
	mov	r0, #8	@  this
	b	.L499
.L517:
	mov	r0, #64	@  this
	b	.L499
.L519:
	.align	2
.L518:
	.word	.LC20
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN6sprite12sprite2sizeyEv, .-_ZN6sprite12sprite2sizeyEv
	.section	.rodata.str1.4
	.align	2
.LC21:
	.ascii	"%s : %d \n"
	.ascii	"\t set_size_double_flag() sd %d\000"
	.text
	.align	2
	.global	_ZN6sprite20set_size_double_flagEt
	.type	_ZN6sprite20set_size_double_flagEt, %function
_ZN6sprite20set_size_double_flagEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r1, r1, asl #16
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r5, r1, lsr #16
	cmp	r1, #0
	cmpne	r5, #512
	sub	fp, ip, #4
	mov	r4, r0	@  this
	mov	r6, r1, asr #16	@  sd
	bne	.L529
.L521:
	ldr	r3, [r4, #48]	@  <variable>.my_sprite_rotation
	cmp	r3, #0
	beq	.L520
	ldrh	r3, [r4, #10]	@  <variable>.size_double_flag
	cmp	r3, r5
	beq	.L520
	mov	r0, r4	@  this
	ldrsh	r8, [r4, #52]	@  px,  <variable>.pas_move_x
	ldrsh	r7, [r4, #54]	@  py,  <variable>.pas_move_y
	bl	_ZN6sprite12sprite2sizexEv
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #17
	strh	r0, [r4, #52]	@ movhi 	@  <variable>.pas_move_x
	mov	r0, r4	@  this
	bl	_ZN6sprite12sprite2sizeyEv
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #17
	cmp	r5, #512
	strh	r0, [r4, #54]	@ movhi 	@  <variable>.pas_move_y
	beq	.L524
	mov	r0, r4	@  this
	bl	_ZN6sprite5rightEv
	mov	r0, r4	@  this
	bl	_ZN6sprite4downEv
.L525:
	strh	r7, [r4, #54]	@ movhi 	@  py,  <variable>.pas_move_y
	strh	r6, [r4, #10]	@ movhi 	@  sd,  <variable>.size_double_flag
.L528:
	strh	r8, [r4, #52]	@ movhi 	@  px,  <variable>.pas_move_x
.L520:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L524:
	ldrh	r2, [r4, #52]	@  <variable>.pas_move_x
	ldr	r3, [r4, #20]	@  <variable>.x
	cmp	r3, r2
	blt	.L527
	ldrh	r2, [r4, #54]	@  <variable>.pas_move_y
	ldr	r3, [r4, #4]	@  <variable>.y
	cmp	r3, r2
	bge	.L526
.L527:
	strh	r7, [r4, #54]	@ movhi 	@  py,  <variable>.pas_move_y
	b	.L528
.L526:
	mov	r0, r4	@  this
	bl	_ZN6sprite4leftEv
	mov	r0, r4	@  this
	bl	_ZN6sprite2upEv
	b	.L525
.L529:
	mov	r2, #472
	ldr	r0, .L530
	ldr	r1, .L530+4
	add	r2, r2, #2
	mov	r3, r5
	ldr	ip, .L530+8
	mov	lr, pc
	bx	ip
	b	.L521
.L531:
	.align	2
.L530:
	.word	.LC21
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN6sprite20set_size_double_flagEt, .-_ZN6sprite20set_size_double_flagEt
	.align	2
	.global	_ZN10tab_spriteC2Ev
	.type	_ZN10tab_spriteC2Ev, %function
_ZN10tab_spriteC2Ev:
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
.L537:
	str	r1, [r0, r2, asl #2]	@  i,  <variable>.tab
	add	r2, r2, #1	@  i,  i
	cmp	r2, r3	@  i
	ble	.L537
	bx	lr
	.size	_ZN10tab_spriteC2Ev, .-_ZN10tab_spriteC2Ev
	.align	2
	.global	_ZN10tab_spriteC1Ev
	.type	_ZN10tab_spriteC1Ev, %function
_ZN10tab_spriteC1Ev:
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
.L545:
	str	r1, [r0, r2, asl #2]	@  i,  <variable>.tab
	add	r2, r2, #1	@  i,  i
	cmp	r2, r3	@  i
	ble	.L545
	bx	lr
	.size	_ZN10tab_spriteC1Ev, .-_ZN10tab_spriteC1Ev
	.align	2
	.global	_ZN10tab_spriteD2Ev
	.type	_ZN10tab_spriteD2Ev, %function
_ZN10tab_spriteD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r4, #0	@  i
	mov	r6, #1020
	sub	fp, ip, #4
	mov	r5, r0	@  this
	mov	r7, r4	@  i,  i
	add	r6, r6, #3
.L556:
	ldr	r3, [r5, r4, asl #2]	@  this,  <variable>.tab
	cmp	r3, #0	@  this
	mov	r0, r3	@  this
	bne	.L560
.L555:
	str	r7, [r5, r4, asl #2]	@  i,  <variable>.tab
	add	r4, r4, #1	@  i,  i
	cmp	r4, r6	@  i
	ble	.L556
	mov	r3, #4096
	strh	r7, [r5, r3]	@ movhi 	@  i,  <variable>.nb
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L560:
	ldr	r3, [r3, #0]	@  <variable>._vptr.sprite
	ldr	ip, [r3, #4]
	mov	lr, pc
	bx	ip
	b	.L555
	.size	_ZN10tab_spriteD2Ev, .-_ZN10tab_spriteD2Ev
	.align	2
	.global	_ZN10tab_spriteD1Ev
	.type	_ZN10tab_spriteD1Ev, %function
_ZN10tab_spriteD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r4, #0	@  i
	mov	r6, #1020
	sub	fp, ip, #4
	mov	r5, r0	@  this
	mov	r7, r4	@  i,  i
	add	r6, r6, #3
.L569:
	ldr	r3, [r5, r4, asl #2]	@  this,  <variable>.tab
	cmp	r3, #0	@  this
	mov	r0, r3	@  this
	bne	.L573
.L568:
	str	r7, [r5, r4, asl #2]	@  i,  <variable>.tab
	add	r4, r4, #1	@  i,  i
	cmp	r4, r6	@  i
	ble	.L569
	mov	r3, #4096
	strh	r7, [r5, r3]	@ movhi 	@  i,  <variable>.nb
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L573:
	ldr	r3, [r3, #0]	@  <variable>._vptr.sprite
	ldr	ip, [r3, #4]
	mov	lr, pc
	bx	ip
	b	.L568
	.size	_ZN10tab_spriteD1Ev, .-_ZN10tab_spriteD1Ev
	.section	.rodata.str1.4
	.align	2
.LC22:
	.ascii	"%s : %d \n"
	.ascii	"\t add_sprite() nb %d\000"
	.text
	.align	2
	.global	_ZN10tab_sprite10add_spriteEP6sprite
	.type	_ZN10tab_sprite10add_spriteEP6sprite, %function
_ZN10tab_sprite10add_spriteEP6sprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	mov	r6, #4096
	sub	fp, ip, #4
	mov	r5, #1020
	ldrh	ip, [r0, r6]	@  <variable>.nb
	add	r5, r5, #2
	mov	r2, #540
	cmp	ip, r5
	mov	r4, r0	@  this
	mov	r7, r1	@  s
	mov	r3, ip
	ldr	r0, .L578
	add	r2, r2, #2
	ldr	r1, .L578+4
	bhi	.L577
.L575:
	cmp	ip, r5
	add	r2, ip, #1
	strlsh	r2, [r4, r6]	@ movhi 	@  <variable>.nb
	strls	r7, [r4, ip, asl #2]	@  s,  <variable>.tab
	ldmea	fp, {r4, r5, r6, r7, fp, sp, lr}
	bx	lr
.L577:
	ldr	ip, .L578+8
	mov	lr, pc
	bx	ip
	ldrh	ip, [r4, r6]	@  <variable>.nb
	b	.L575
.L579:
	.align	2
.L578:
	.word	.LC22
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN10tab_sprite10add_spriteEP6sprite, .-_ZN10tab_sprite10add_spriteEP6sprite
	.align	2
	.global	_ZN10tab_sprite10rem_spriteEP6sprite
	.type	_ZN10tab_sprite10rem_spriteEP6sprite, %function
_ZN10tab_sprite10rem_spriteEP6sprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r3, #4096
	ldrh	r3, [r0, r3]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L582
	mov	r2, r3
.L586:
	ldr	r3, [r5, r4, asl #2]	@  <variable>.tab
	cmp	r3, r1	@  s
	beq	.L582
	add	r4, r4, #1	@  i,  i
	cmp	r4, r2	@  i
	blt	.L586
.L582:
	mov	r6, #4096
	ldrh	r2, [r5, r6]	@  <variable>.nb
	cmp	r4, r2	@  i
	beq	.L580
	ldr	r3, [r5, r4, asl #2]	@  this,  <variable>.tab
	cmp	r3, #0	@  this
	bne	.L598
.L589:
	sub	r3, r2, #1
	cmp	r4, r3	@  i
	mov	r2, #0
	str	r2, [r5, r4, asl #2]	@  <variable>.tab
	bge	.L597
	ldrh	r3, [r5, r6]	@  <variable>.nb
	add	r2, r5, r4, asl #2	@  this,  i
	sub	r1, r3, #1
.L594:
	ldr	r3, [r2, #4]!	@  <variable>.tab
	str	r3, [r5, r4, asl #2]	@  <variable>.tab
	add	r4, r4, #1	@  i,  i
	cmp	r4, r1	@  i
	blt	.L594
.L597:
	mov	r2, #4096
	ldrh	r3, [r5, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r5, r2]	@ movhi 	@  <variable>.nb
	ldrh	r1, [r5, r2]	@  <variable>.nb
	mov	r3, #0
	str	r3, [r5, r1, asl #2]	@  <variable>.tab
.L580:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L598:
	mov	r0, r3	@  this
	ldr	r3, [r3, #0]	@  <variable>._vptr.sprite
	ldr	ip, [r3, #4]
	mov	lr, pc
	bx	ip
	ldrh	r2, [r5, r6]	@  <variable>.nb
	b	.L589
	.size	_ZN10tab_sprite10rem_spriteEP6sprite, .-_ZN10tab_sprite10rem_spriteEP6sprite
	.section	.rodata.str1.4
	.align	2
.LC23:
	.ascii	"%s : %d \n"
	.ascii	"\tget_sprite() ind %d >= nb %d\000"
	.text
	.align	2
	.global	_ZN10tab_sprite10rem_spriteEt
	.type	_ZN10tab_sprite10rem_spriteEt, %function
_ZN10tab_sprite10rem_spriteEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r6, #4096
	ldrh	r2, [r0, r6]	@  <variable>.nb
	mov	r1, r1, asl #16
	mov	r5, r1, lsr #16	@  i
	cmp	r2, r5	@  i
	mov	r4, r0	@  this
	mov	ip, r2
	bls	.L612
.L611:
	ldr	r3, [r4, r5, asl #2]	@  this,  <variable>.tab
	cmp	r3, #0	@  this
	bne	.L613
.L603:
	sub	r3, r2, #1
	cmp	r5, r3	@  i
	mov	r2, #0
	mov	r1, r5	@  i,  i
	str	r2, [r4, r5, asl #2]	@  <variable>.tab
	bge	.L610
	ldrh	r3, [r4, r6]	@  <variable>.nb
	add	r2, r4, r5, asl #2	@  this,  i
	sub	r0, r3, #1
.L608:
	ldr	r3, [r2, #4]!	@  <variable>.tab
	str	r3, [r4, r1, asl #2]	@  <variable>.tab
	add	r1, r1, #1	@  i,  i
	cmp	r1, r0	@  i
	blt	.L608
.L610:
	mov	r2, #4096
	ldrh	r3, [r4, r2]	@  <variable>.nb
	sub	r3, r3, #1
	strh	r3, [r4, r2]	@ movhi 	@  <variable>.nb
	ldrh	r1, [r4, r2]	@  <variable>.nb
	mov	r3, #0
	str	r3, [r4, r1, asl #2]	@  <variable>.tab
.L599:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L613:
	mov	r0, r3	@  this
	ldr	r3, [r3, #0]	@  <variable>._vptr.sprite
	ldr	ip, [r3, #4]
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, r6]	@  <variable>.nb
	b	.L603
.L612:
	mov	r2, #568
	str	ip, [sp, #0]
	ldr	r0, .L614
	ldr	r1, .L614+4
	mov	r3, r5	@  i
	ldr	ip, .L614+8
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, r6]	@  <variable>.nb
	cmp	r2, r5	@  i
	bls	.L599
	b	.L611
.L615:
	.align	2
.L614:
	.word	.LC23
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN10tab_sprite10rem_spriteEt, .-_ZN10tab_sprite10rem_spriteEt
	.align	2
	.global	_ZN10tab_sprite10get_spriteEt
	.type	_ZN10tab_sprite10get_spriteEt, %function
_ZN10tab_sprite10get_spriteEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r5, r0	@  this
	mov	r3, r1
	mov	r6, #4096
	mov	r3, r3, asl #16
	ldrh	ip, [r5, r6]	@  <variable>.nb
	mov	r4, r3, lsr #16
	cmp	ip, r4
	ldr	r0, .L620
	ldr	r1, .L620+4
	mov	r2, #584
	mov	r3, r4
	bls	.L619
.L618:
	ldr	r0, [r5, r4, asl #2]	@  this,  <variable>.tab
.L616:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L619:
	str	ip, [sp, #0]
	ldr	ip, .L620+8
	mov	lr, pc
	bx	ip
	ldrh	r3, [r5, r6]	@  <variable>.nb
	cmp	r3, r4
	mov	r0, #0	@  this
	bls	.L616
	b	.L618
.L621:
	.align	2
.L620:
	.word	.LC23
	.word	.LC2
	.word	_Z5debugPcz
	.size	_ZN10tab_sprite10get_spriteEt, .-_ZN10tab_sprite10get_spriteEt
	.align	2
	.global	_ZN10tab_sprite13change_bitmapEPKhtttt
	.type	_ZN10tab_sprite13change_bitmapEPKhtttt, %function
_ZN10tab_sprite13change_bitmapEPKhtttt:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	mov	r6, r0	@  this
	mov	r0, #4096
	ldrh	ip, [r6, r0]	@  <variable>.nb
	mov	r5, #0	@  i
	cmp	r5, ip	@  i
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16
	str	r1, [fp, #-44]	@  bitmap
	mov	r2, r2, asr #16	@  s_x
	mov	r3, r3, asr #16	@  s_y
	ldrsh	ip, [fp, #4]	@  nb_col,  nb_col
	ldrsh	r4, [fp, #8]	@  pal_no,  pal_no
	bge	.L629
	mov	r9, r2, asl #16	@  s_x
	mov	sl, r3, asl #16	@  s_y
	mov	r8, ip, asl #16	@  nb_col
	mov	r7, r4, asl #16	@  pal_no
.L627:
	ldr	r0, [r6, r5, asl #2]	@  this,  <variable>.tab
	mov	ip, r8, lsr #16
	mov	r2, r9, lsr #16
	mov	r3, sl, lsr #16
	mov	r4, r7, lsr #16
	ldr	r1, [fp, #-44]	@  bitmap
	str	ip, [sp, #0]
	str	r4, [sp, #4]
	bl	_ZN6sprite13change_bitmapEPKhtttt
	mov	r3, #4096
	ldrh	r2, [r6, r3]	@  <variable>.nb
	add	r5, r5, #1	@  i,  i
	cmp	r5, r2	@  i
	blt	.L627
.L629:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
	.size	_ZN10tab_sprite13change_bitmapEPKhtttt, .-_ZN10tab_sprite13change_bitmapEPKhtttt
	.align	2
	.global	_ZN10tab_sprite4leftEv
	.type	_ZN10tab_sprite4leftEv, %function
_ZN10tab_sprite4leftEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r2, #4096
	ldrh	r3, [r0, r2]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L637
	mov	r6, r2
.L635:
	ldr	r0, [r5, r4, asl #2]	@  this,  <variable>.tab
	bl	_ZN6sprite4leftEv
	ldrh	r3, [r5, r6]	@  <variable>.nb
	add	r4, r4, #1	@  i,  i
	cmp	r4, r3	@  i
	blt	.L635
.L637:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_ZN10tab_sprite4leftEv, .-_ZN10tab_sprite4leftEv
	.align	2
	.global	_ZN10tab_sprite5rightEv
	.type	_ZN10tab_sprite5rightEv, %function
_ZN10tab_sprite5rightEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r2, #4096
	ldrh	r3, [r0, r2]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L645
	mov	r6, r2
.L643:
	ldr	r0, [r5, r4, asl #2]	@  this,  <variable>.tab
	bl	_ZN6sprite5rightEv
	ldrh	r3, [r5, r6]	@  <variable>.nb
	add	r4, r4, #1	@  i,  i
	cmp	r4, r3	@  i
	blt	.L643
.L645:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_ZN10tab_sprite5rightEv, .-_ZN10tab_sprite5rightEv
	.align	2
	.global	_ZN10tab_sprite2upEv
	.type	_ZN10tab_sprite2upEv, %function
_ZN10tab_sprite2upEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r2, #4096
	ldrh	r3, [r0, r2]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L653
	mov	r6, r2
.L651:
	ldr	r0, [r5, r4, asl #2]	@  this,  <variable>.tab
	bl	_ZN6sprite2upEv
	ldrh	r3, [r5, r6]	@  <variable>.nb
	add	r4, r4, #1	@  i,  i
	cmp	r4, r3	@  i
	blt	.L651
.L653:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_ZN10tab_sprite2upEv, .-_ZN10tab_sprite2upEv
	.align	2
	.global	_ZN10tab_sprite4downEv
	.type	_ZN10tab_sprite4downEv, %function
_ZN10tab_sprite4downEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	mov	r2, #4096
	ldrh	r3, [r0, r2]	@  <variable>.nb
	mov	r4, #0	@  i
	cmp	r4, r3	@  i
	sub	fp, ip, #4
	mov	r5, r0	@  this
	bge	.L661
	mov	r6, r2
.L659:
	ldr	r0, [r5, r4, asl #2]	@  this,  <variable>.tab
	bl	_ZN6sprite4downEv
	ldrh	r3, [r5, r6]	@  <variable>.nb
	add	r4, r4, #1	@  i,  i
	cmp	r4, r3	@  i
	blt	.L659
.L661:
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
	.size	_ZN10tab_sprite4downEv, .-_ZN10tab_sprite4downEv
	.weak	_ZTV6sprite
	.section	.gnu.linkonce.r._ZTV6sprite,"a",%progbits
	.align	2
	.type	_ZTV6sprite, %object
	.size	_ZTV6sprite, 16
_ZTV6sprite:
	.word	0
	.word	_ZTI6sprite
	.word	_ZN6spriteD1Ev
	.word	_ZN6spriteD0Ev
	.weak	_ZTI6sprite
	.section	.gnu.linkonce.r._ZTI6sprite,"a",%progbits
	.align	2
	.type	_ZTI6sprite, %object
	.size	_ZTI6sprite, 8
_ZTI6sprite:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS6sprite
	.weak	_ZTS6sprite
	.section	.gnu.linkonce.r._ZTS6sprite,"a",%progbits
	.align	2
	.type	_ZTS6sprite, %object
	.size	_ZTS6sprite, 8
_ZTS6sprite:
	.ascii	"6sprite\000"
	.ident	"GCC: (GNU) 3.3.2"
