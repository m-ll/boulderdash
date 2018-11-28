	.file	"background_rotation.cpp"
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
	.global	_ZN19background_rotationC2Ev
	.type	_ZN19background_rotationC2Ev, %function
_ZN19background_rotationC2Ev:
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
	.word	.LLSDA30
	.word	_Unwind_SjLj_Register
	.word	_ZN10backgroundC2Ev
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationC2Ev, .-_ZN19background_rotationC2Ev
	.section	.gcc_except_table,"a",%progbits
.LLSDA30:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE30-.LLSDACSB30
.LLSDACSB30:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE30:
	.text
	.align	2
	.global	_ZN19background_rotationC1Ev
	.type	_ZN19background_rotationC1Ev, %function
_ZN19background_rotationC1Ev:
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
	.word	.LLSDA32
	.word	_Unwind_SjLj_Register
	.word	_ZN10backgroundC2Ev
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	_Unwind_SjLj_Unregister
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationC1Ev, .-_ZN19background_rotationC1Ev
	.section	.gcc_except_table
.LLSDA32:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE32-.LLSDACSB32
.LLSDACSB32:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE32:
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC14:
	.ascii	"%s : %d pb mode\000"
	.align	2
.LC3:
	.ascii	"background_rotation.cpp\000"
	.align	2
.LC15:
	.ascii	"%s : %d \n"
	.ascii	"\tx : %d <%d \n"
	.ascii	"y : %d < %d\000"
	.align	2
.LC13:
	.ascii	"%s : %d \n"
	.ascii	"\ts_t %d\000"
	.align	2
.LC12:
	.ascii	"%s : %d \n"
	.ascii	"\tt %d\000"
	.align	2
.LC11:
	.ascii	"%s : %d \n"
	.ascii	"\tm %d\000"
	.align	2
.LC10:
	.ascii	"%s : %d \n"
	.ascii	"\tsize %d\000"
	.align	2
.LC9:
	.ascii	"%s : %d \n"
	.ascii	"\twrap %d\000"
	.align	2
.LC8:
	.ascii	"%s : %d \n"
	.ascii	"\tscreen_block %d\000"
	.align	2
.LC7:
	.ascii	"%s : %d \n"
	.ascii	"\tcol_pal %d\000"
	.align	2
.LC6:
	.ascii	"%s : %d \n"
	.ascii	"\tmosaic %d\000"
	.align	2
.LC5:
	.ascii	"%s : %d \n"
	.ascii	"\tchar_block %d\000"
	.align	2
.LC4:
	.ascii	"%s : %d \n"
	.ascii	"\tpriority %d\000"
	.align	2
.LC2:
	.ascii	"%s : %d \n"
	.ascii	"\tno_back %d\000"
	.text
	.align	2
	.global	_ZN19background_rotationC2EttttttttPKhttS1_t
	.type	_ZN19background_rotationC2EttttttttPKhttS1_t, %function
_ZN19background_rotationC2EttttttttPKhttS1_t:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 140
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #152
	ldr	ip, .L72
	str	ip, [fp, #-48]
	ldrsh	ip, [fp, #4]	@  mosaic
	sub	r4, fp, #40
	str	r4, [fp, #-52]
	str	ip, [fp, #-104]	@  mosaic
	ldrsh	r4, [fp, #8]	@  col_pal
	ldrsh	ip, [fp, #12]	@  screen_block
	str	r4, [fp, #-108]	@  col_pal
	str	ip, [fp, #-112]	@  screen_block
	ldrsh	r4, [fp, #16]	@  wrap
	ldrsh	ip, [fp, #20]	@  size
	str	r4, [fp, #-116]	@  wrap
	str	ip, [fp, #-120]	@  size
	ldrsh	r4, [fp, #28]	@  s_x
	ldrsh	ip, [fp, #32]	@  s_y
	ldr	lr, .L72+4
	str	r4, [fp, #-124]	@  s_x
	str	ip, [fp, #-128]	@  s_y
	ldrsh	r4, [fp, #40]	@  s_t
	ldr	ip, .L72+8
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16	@  this
	mov	r3, r3, asl #16	@  m
	mov	r1, r1, asr #16
	mov	r2, r2, asr #16
	mov	r3, r3, asr #16
	str	ip, [fp, #-60]
	str	r1, [fp, #-92]	@  no_back
	str	r0, [fp, #-88]	@  this
	str	lr, [fp, #-56]
	sub	r0, fp, #84
	str	r2, [fp, #-96]	@  priority
	str	r3, [fp, #-100]	@  char_block
	str	sp, [fp, #-44]
	ldr	r3, .L72+12
	str	r4, [fp, #-132]	@  s_t
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L72+16
	str	r2, [fp, #-80]
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+20
	ldr	ip, [fp, #-88]	@  this
	mov	r1, #1
	str	r3, [ip, #0]	@  <variable>._vptr.background
	mov	r0, ip
	str	r1, [fp, #-80]
	ldr	r3, .L72+24
	mov	lr, pc
	bx	r3
	ldr	r2, [fp, #-92]	@  no_back
	sub	r3, r2, #2
	mov	r3, r3, asl #16
	cmp	r3, #65536
	bhi	.L61
.L18:
	ldr	r4, [fp, #-96]	@  priority
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #3	@  m
	bhi	.L62
.L19:
	ldr	r1, [fp, #-100]	@  char_block
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #3	@  m
	bhi	.L63
.L20:
	ldr	r4, [fp, #-104]	@  mosaic
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #64	@  m
	cmpne	r3, #0	@  m
	bne	.L64
.L21:
	ldr	r1, [fp, #-108]	@  col_pal
	mov	r3, r1, asl #16
	mov	r2, r3, lsr #16	@  m
	cmp	r3, #0
	cmpne	r2, #128	@  m
	bne	.L65
.L22:
	ldr	r4, [fp, #-112]	@  screen_block
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #31	@  m
	bhi	.L66
.L23:
	ldr	r1, [fp, #-116]	@  wrap
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #8192	@  m
	cmpne	r3, #0	@  m
	bne	.L67
.L24:
	ldr	r4, [fp, #-120]	@  size
	mov	r3, r4, asl #16
	mov	r2, r3, lsr #16	@  m
	cmp	r3, #0
	cmpne	r2, #16384	@  m
	beq	.L25
	cmp	r2, #32768	@  m
	cmpne	r2, #49152	@  m
	bne	.L68
.L25:
	ldr	r1, [fp, #24]	@  m
	cmp	r1, #0
	beq	.L69
.L26:
	ldr	r2, [fp, #36]	@  t
	cmp	r2, #0
	beq	.L70
.L27:
	ldr	r4, [fp, #-132]	@  s_t
	mov	r3, r4, asl #16
	tst	r3, #458752
	mov	r2, r3, lsr #16	@  m
	bne	.L71
.L28:
	mov	r1, #67108864
	ldr	r2, [r1, #0]
	ldr	r3, [r1, #0]
	tst	r3, #1
	beq	.L31
	ldr	ip, [fp, #-92]	@  no_back
	mov	r3, ip, asl #16
	cmp	r3, #131072
	beq	.L31
.L30:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L72+28
	ldr	r1, .L72+32
	mov	r2, #31
	ldr	r3, .L72+36
	mov	lr, pc
	bx	r3
.L29:
	ldr	r2, [fp, #-92]	@  no_back
	ldr	r4, [fp, #-96]	@  priority
	sub	r3, r2, #2
	mov	r3, r3, asl #16
	mov	r2, r4, asl #16
	cmp	r2, #196608
	cmpls	r3, #65536
	bhi	.L17
	ldr	ip, [fp, #-100]	@  char_block
	mov	r3, ip, asl #16
	cmp	r3, #196608
	bhi	.L17
	ldr	r1, [fp, #-104]	@  mosaic
	mov	r3, r1, asl #16
	cmp	r3, #4194304
	cmpne	r3, #0
	bne	.L17
	ldr	r2, [fp, #-108]	@  col_pal
	mov	r3, r2, asl #16
	cmp	r3, #0
	cmpne	r3, #8388608
	bne	.L17
	ldr	r4, [fp, #-112]	@  screen_block
	mov	r3, r4, asl #16
	cmp	r3, #2031616
	bhi	.L17
	ldr	ip, [fp, #-116]	@  wrap
	mov	r3, ip, asl #16
	cmp	r3, #536870912
	cmpne	r3, #0
	bne	.L17
	ldr	r1, [fp, #-120]	@  size
	mov	r3, r1, asl #16
	mov	r2, r3, lsr #16
	cmp	r3, #0
	cmpne	r2, #16384
	beq	.L34
	cmp	r2, #32768
	cmpne	r2, #49152
	bne	.L17
.L34:
	ldr	r2, [fp, #24]	@  m
	ldr	r3, [fp, #36]	@  t
	cmp	r3, #0
	cmpne	r2, #0
	beq	.L17
	ldr	r4, [fp, #-132]	@  s_t
	tst	r4, #7
	bne	.L17
	mov	r6, #67108864
	ldr	r2, [r6, #0]
	ldr	r3, [r6, #0]
	tst	r3, #1
	beq	.L37
	ldr	ip, [fp, #-92]	@  no_back
	mov	r3, ip, asl #16
	cmp	r3, #131072
	beq	.L37
.L17:
	sub	r0, fp, #84
	ldr	r3, .L72+40
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L37:
	ldr	r3, [r6, #0]
	tst	r3, #2
	beq	.L35
	ldr	r1, [fp, #-92]	@  no_back
	mov	r3, r1, asl #16
	cmp	r3, #65536
	bls	.L17
.L35:
	ldr	r2, [fp, #-92]	@  no_back
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	ldr	r4, [fp, #-88]	@  this
	cmp	r3, #2
	strh	r2, [r4, #8]	@ movhi 	@  <variable>.no_bg
	beq	.L39
	cmp	r3, #3
	beq	.L40
.L38:
	ldr	r4, [fp, #-124]	@  s_x
	ldr	ip, [fp, #-128]	@  s_y
	mov	r3, r4, asl #16
	mov	r2, ip, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-148]
	mul	r3, r2, r3
	ldr	r1, [fp, #-112]	@  screen_block
	ldr	r4, [fp, #-100]	@  char_block
	str	r3, [fp, #-144]
	str	r2, [fp, #-152]
	mov	r3, r1, asl #16
	mov	r2, r4, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r2, lsr #16
	ldr	ip, [fp, #-88]	@  this
	str	r3, [fp, #-136]
	str	r2, [fp, #-140]
	mov	r3, r3, asl #11
	mov	r2, r2, asl #14
	add	r2, r2, #100663296
	add	r3, r3, #100663296
	mov	r1, #1
	str	r2, [ip, #12]	@  <variable>.cbb
	str	r3, [ip, #16]	@  <variable>.sbb
	ldr	r0, [fp, #-144]
	str	r1, [fp, #-80]
	ldr	r2, .L72+44
	mov	lr, pc
	bx	r2
	ldr	r3, [fp, #-88]	@  this
	mov	r4, #3
	str	r0, [r3, #84]	@  this,  <variable>.map
	mov	r1, r0	@  this
	ldr	r2, [fp, #-144]
	ldr	r0, [fp, #24]	@  m
	mov	r3, #-2147483648
	str	r4, [sp, #0]
	ldr	ip, .L72+48
	mov	lr, pc
	bx	ip
	ldr	r1, [fp, #-132]	@  s_t
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, [fp, #-124]	@  s_x
	ldr	r4, [fp, #-128]	@  s_y
	mov	r1, r1, asl #16
	str	r1, [fp, #-156]
	mov	r0, r1, lsr #16	@  this
	strh	r3, [r2, #20]	@ movhi 	@  <variable>.map_size_x
	strh	r4, [r2, #22]	@ movhi 	@  <variable>.map_size_y
	ldr	ip, .L72+44
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-156]
	ldr	r4, [fp, #-88]	@  this
	mov	ip, #3
	str	r0, [r4, #24]	@  this,  <variable>.tile
	mov	r1, r0	@  this
	mov	r2, r3, lsr #17	@  this
	ldr	r0, [fp, #36]	@  t
	mov	r3, #-2147483648
	str	ip, [sp, #0]
	ldr	r4, .L72+48
	mov	lr, pc
	bx	r4
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-132]	@  s_t
	ldr	r0, [ip, #4]	@  <variable>.REG_BGXCNT
	strh	r1, [ip, #28]	@ movhi 	@  <variable>.tile_size
	ldr	r4, [fp, #-96]	@  priority
	ldrh	r2, [r0, #0]
	mov	r3, r4, asl #16
	bic	r2, r2, #3
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldrh	r3, [r0, #0]
	ldr	ip, [fp, #-140]
	bic	r3, r3, #12
	orr	r3, r3, ip, asl #2
	strh	r3, [r0, #0]	@ movhi 
	ldr	r1, [fp, #-104]	@  mosaic
	ldrh	r2, [r0, #0]
	mov	r3, r1, asl #16
	bic	r2, r2, #64
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldr	r2, [fp, #-108]	@  col_pal
	ldrh	r1, [r0, #0]
	mov	r3, r2, asl #16
	bic	r1, r1, #128
	orr	r1, r1, r3, lsr #16
	strh	r1, [r0, #0]	@ movhi 
	ldrh	r3, [r0, #0]
	ldr	r4, [fp, #-136]
	bic	r3, r3, #7936
	orr	r3, r3, r4, asl #8
	strh	r3, [r0, #0]	@ movhi 
	ldr	ip, [fp, #-116]	@  wrap
	ldrh	r2, [r0, #0]
	mov	r3, ip, asl #16
	bic	r2, r2, #8192
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldr	r1, [fp, #-120]	@  size
	ldrh	r3, [r0, #0]
	mov	r2, r1, asl #16
	bic	r3, r3, #49152
	orr	r3, r3, r2, lsr #16
	ldr	r2, [fp, #-148]
	mov	r2, r2, asl #3
	strh	r3, [r0, #0]	@ movhi 
	str	r2, [fp, #-160]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L72+52
	mov	lr, pc
	bx	r3
	ldr	r4, [fp, #-160]
	mov	r0, r0, asl #16	@  this
	cmp	r4, r0, lsr #16
	blt	.L51
	ldr	ip, [fp, #-152]
	mov	ip, ip, asl #3
	str	ip, [fp, #-164]
	ldr	r0, [fp, #-88]	@  this
	ldr	r1, .L72+52
	mov	lr, pc
	bx	r1
	ldr	r2, [fp, #-164]
	mov	r0, r0, asl #16	@  this
	cmp	r2, r0, lsr #16
	bge	.L50
.L51:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L72+24
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r4, .L72+52
	mov	lr, pc
	bx	r4
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #16
	str	r0, [fp, #-168]
	ldr	r0, [fp, #-88]	@  this
	mov	lr, pc
	bx	r4
	mov	ip, r0	@ movhi	@  this
	ldr	r1, [fp, #-152]
	ldr	r4, [fp, #-168]
	mov	ip, ip, asl #16	@  this
	mov	lr, r1, asl #3
	mov	ip, ip, lsr #16
	str	r4, [sp, #0]
	ldr	r0, .L72+56
	ldr	r1, .L72+32
	ldr	r3, [fp, #-160]
	mov	r2, #94
	str	lr, [sp, #4]
	str	ip, [sp, #8]
	ldr	r4, .L72+36
	mov	lr, pc
	bx	r4
.L50:
	ldr	ip, [fp, #-124]	@  s_x
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #13
	mov	r1, #1
	str	r3, [fp, #-172]
	str	r1, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r2, .L72+52
	mov	lr, pc
	bx	r2
	ldr	r3, [fp, #-172]
	mov	r0, r0, asl #16	@  this
	cmp	r3, r0, lsr #16
	blt	.L53
	ldr	r4, [fp, #-128]	@  s_y
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #13
	str	r3, [fp, #-176]
	ldr	r0, [fp, #-88]	@  this
	ldr	ip, .L72+52
	mov	lr, pc
	bx	ip
	ldr	r1, [fp, #-176]
	mov	r0, r0, asl #16	@  this
	cmp	r1, r0, lsr #16
	bge	.L52
.L53:
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L72+24
	mov	r2, #1
	str	r2, [fp, #-80]
.L60:
	mov	lr, pc
	bx	r3
	b	.L17
.L52:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r4, .L72+52
	mov	lr, pc
	bx	r4
	ldr	ip, [fp, #-88]	@  this
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #19
	strh	r0, [ip, #30]	@ movhi 	@  <variable>.nb_tile_x
	mov	r0, ip
	mov	lr, pc
	bx	r4
	ldr	r1, [fp, #-88]	@  this
	ldrh	r3, [r1, #30]	@  <variable>.nb_tile_x
	sub	r3, r3, #30
	strh	r3, [r1, #48]	@ movhi 	@  <variable>.max_pas_map
	ldrh	r2, [r1, #48]	@  <variable>.max_pas_map
	mov	r3, r2, asl #3
	strh	r3, [r1, #34]	@ movhi 	@  <variable>.max_pas_screen
	strh	r2, [r1, #50]	@ movhi 	@  <variable>.pas_map
	ldrh	r2, [r1, #34]	@ movhi	@  <variable>.max_pas_screen
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #19
	strh	r2, [r1, #36]	@ movhi 	@  <variable>.pas_screen
	ldr	r3, .L72+60
	strh	r0, [r1, #32]	@ movhi 	@  <variable>.nb_tile_y
	mov	r0, r1
	b	.L60
.L40:
	ldr	r3, [r6, #0]
	add	r5, r6, #60
	orr	r3, r3, #2048
	add	r2, r6, #14
	add	r1, r6, #48
	add	r0, r6, #50
	add	ip, r6, #52
	add	lr, r6, #54
	add	r4, r6, #56
.L59:
	str	r3, [r6, #0]
	ldr	r3, [fp, #-88]	@  this
	str	r2, [r3, #4]	@  <variable>.REG_BGXCNT
	str	r1, [r3, #68]	@  <variable>.REG_BGXPA
	str	r0, [r3, #72]	@  <variable>.REG_BGXPB
	str	ip, [r3, #76]	@  <variable>.REG_BGXPC
	str	lr, [r3, #80]	@  <variable>.REG_BGXPD
	str	r4, [r3, #60]	@  <variable>.REG_BGXX
	str	r5, [r3, #64]	@  <variable>.REG_BGXY
	b	.L38
.L39:
	ldr	r3, [r6, #0]
	add	r5, r6, #44
	orr	r3, r3, #1024
	add	r2, r6, #12
	add	r1, r6, #32
	add	r0, r6, #34
	add	ip, r6, #36
	add	lr, r6, #38
	add	r4, r6, #40
	b	.L59
.L31:
	ldr	r3, [r1, #0]
	tst	r3, #2
	beq	.L29
	ldr	r1, [fp, #-92]	@  no_back
	mov	r3, r1, asl #16
	cmp	r3, #65536
	bhi	.L29
	b	.L30
.L71:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L72+64
	mov	r3, r2	@  m
	ldr	r1, .L72+32
	mov	r2, #29
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L28
.L70:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L72+68
	ldr	r1, .L72+32
	mov	r2, #28
	ldr	r3, [fp, #36]	@  t
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L27
.L69:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L72+72
	ldr	r1, .L72+32
	mov	r2, #27
	ldr	r3, [fp, #24]	@  m
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L26
.L68:
	mov	ip, #1
	str	ip, [fp, #-80]
	mov	r3, r2	@  m
	ldr	r0, .L72+76
	ldr	r1, .L72+32
	mov	r2, #26
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L25
.L67:
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, .L72+80
	ldr	r1, .L72+32
	mov	r2, #24
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L24
.L66:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L72+84
	ldr	r1, .L72+32
	mov	r2, #23
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L23
.L65:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L72+88
	mov	r3, r2	@  m
	ldr	r1, .L72+32
	mov	r2, #22
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L22
.L64:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L72+92
	ldr	r1, .L72+32
	mov	r2, #21
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L21
.L63:
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, .L72+96
	ldr	r1, .L72+32
	mov	r2, #20
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L20
.L62:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L72+100
	ldr	r1, .L72+32
	mov	r2, #19
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L19
.L61:
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16	@  m
	ldr	r0, .L72+104
	ldr	r1, .L72+32
	mov	r2, #18
	ldr	ip, .L72+36
	mov	lr, pc
	bx	ip
	b	.L18
.L58:
.L54:
.L56:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-180]
	ldr	r3, .L72+108
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-180]
	ldr	r3, .L72+112
	mov	lr, pc
	bx	r3
.L73:
	.align	2
.L72:
	.word	.L58
	.word	.LLSDA35
	.word	__gxx_personality_sj0
	.word	_Unwind_SjLj_Register
	.word	_ZN10backgroundC2Ev
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	.LC14
	.word	.LC3
	.word	_Z5debugPcz
	.word	_Unwind_SjLj_Unregister
	.word	_Znam
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZN19background_rotation10size2pixelEv
	.word	.LC15
	.word	_ZN19background_rotation6updateEv
	.word	.LC13
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.word	.LC5
	.word	.LC4
	.word	.LC2
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationC2EttttttttPKhttS1_t, .-_ZN19background_rotationC2EttttttttPKhttS1_t
	.section	.gcc_except_table
.LLSDA35:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE35-.LLSDACSB35
.LLSDACSB35:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE35:
	.text
	.align	2
	.global	_ZN19background_rotationC1EttttttttPKhttS1_t
	.type	_ZN19background_rotationC1EttttttttPKhttS1_t, %function
_ZN19background_rotationC1EttttttttPKhttS1_t:
	@ Function supports interworking.
	@ args = 40, pretend = 0, frame = 140
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #152
	ldr	ip, .L129
	str	ip, [fp, #-48]
	ldrsh	ip, [fp, #4]	@  mosaic
	sub	r4, fp, #40
	str	r4, [fp, #-52]
	str	ip, [fp, #-104]	@  mosaic
	ldrsh	r4, [fp, #8]	@  col_pal
	ldrsh	ip, [fp, #12]	@  screen_block
	str	r4, [fp, #-108]	@  col_pal
	str	ip, [fp, #-112]	@  screen_block
	ldrsh	r4, [fp, #16]	@  wrap
	ldrsh	ip, [fp, #20]	@  size
	str	r4, [fp, #-116]	@  wrap
	str	ip, [fp, #-120]	@  size
	ldrsh	r4, [fp, #28]	@  s_x
	ldrsh	ip, [fp, #32]	@  s_y
	ldr	lr, .L129+4
	str	r4, [fp, #-124]	@  s_x
	str	ip, [fp, #-128]	@  s_y
	ldrsh	r4, [fp, #40]	@  s_t
	ldr	ip, .L129+8
	mov	r1, r1, asl #16	@  this
	mov	r2, r2, asl #16	@  this
	mov	r3, r3, asl #16	@  m
	mov	r1, r1, asr #16
	mov	r2, r2, asr #16
	mov	r3, r3, asr #16
	str	ip, [fp, #-60]
	str	r1, [fp, #-92]	@  no_back
	str	r0, [fp, #-88]	@  this
	str	lr, [fp, #-56]
	sub	r0, fp, #84
	str	r2, [fp, #-96]	@  priority
	str	r3, [fp, #-100]	@  char_block
	str	sp, [fp, #-44]
	ldr	r3, .L129+12
	str	r4, [fp, #-132]	@  s_t
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L129+16
	str	r2, [fp, #-80]
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+20
	ldr	ip, [fp, #-88]	@  this
	mov	r1, #1
	str	r3, [ip, #0]	@  <variable>._vptr.background
	mov	r0, ip
	str	r1, [fp, #-80]
	ldr	r3, .L129+24
	mov	lr, pc
	bx	r3
	ldr	r2, [fp, #-92]	@  no_back
	sub	r3, r2, #2
	mov	r3, r3, asl #16
	cmp	r3, #65536
	bhi	.L118
.L75:
	ldr	r4, [fp, #-96]	@  priority
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #3	@  m
	bhi	.L119
.L76:
	ldr	r1, [fp, #-100]	@  char_block
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #3	@  m
	bhi	.L120
.L77:
	ldr	r4, [fp, #-104]	@  mosaic
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #64	@  m
	cmpne	r3, #0	@  m
	bne	.L121
.L78:
	ldr	r1, [fp, #-108]	@  col_pal
	mov	r3, r1, asl #16
	mov	r2, r3, lsr #16	@  m
	cmp	r3, #0
	cmpne	r2, #128	@  m
	bne	.L122
.L79:
	ldr	r4, [fp, #-112]	@  screen_block
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #31	@  m
	bhi	.L123
.L80:
	ldr	r1, [fp, #-116]	@  wrap
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16	@  m
	cmp	r3, #8192	@  m
	cmpne	r3, #0	@  m
	bne	.L124
.L81:
	ldr	r4, [fp, #-120]	@  size
	mov	r3, r4, asl #16
	mov	r2, r3, lsr #16	@  m
	cmp	r3, #0
	cmpne	r2, #16384	@  m
	beq	.L82
	cmp	r2, #32768	@  m
	cmpne	r2, #49152	@  m
	bne	.L125
.L82:
	ldr	r1, [fp, #24]	@  m
	cmp	r1, #0
	beq	.L126
.L83:
	ldr	r2, [fp, #36]	@  t
	cmp	r2, #0
	beq	.L127
.L84:
	ldr	r4, [fp, #-132]	@  s_t
	mov	r3, r4, asl #16
	tst	r3, #458752
	mov	r2, r3, lsr #16	@  m
	bne	.L128
.L85:
	mov	r1, #67108864
	ldr	r2, [r1, #0]
	ldr	r3, [r1, #0]
	tst	r3, #1
	beq	.L88
	ldr	ip, [fp, #-92]	@  no_back
	mov	r3, ip, asl #16
	cmp	r3, #131072
	beq	.L88
.L87:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L129+28
	ldr	r1, .L129+32
	mov	r2, #31
	ldr	r3, .L129+36
	mov	lr, pc
	bx	r3
.L86:
	ldr	r2, [fp, #-92]	@  no_back
	ldr	r4, [fp, #-96]	@  priority
	sub	r3, r2, #2
	mov	r3, r3, asl #16
	mov	r2, r4, asl #16
	cmp	r2, #196608
	cmpls	r3, #65536
	bhi	.L74
	ldr	ip, [fp, #-100]	@  char_block
	mov	r3, ip, asl #16
	cmp	r3, #196608
	bhi	.L74
	ldr	r1, [fp, #-104]	@  mosaic
	mov	r3, r1, asl #16
	cmp	r3, #4194304
	cmpne	r3, #0
	bne	.L74
	ldr	r2, [fp, #-108]	@  col_pal
	mov	r3, r2, asl #16
	cmp	r3, #0
	cmpne	r3, #8388608
	bne	.L74
	ldr	r4, [fp, #-112]	@  screen_block
	mov	r3, r4, asl #16
	cmp	r3, #2031616
	bhi	.L74
	ldr	ip, [fp, #-116]	@  wrap
	mov	r3, ip, asl #16
	cmp	r3, #536870912
	cmpne	r3, #0
	bne	.L74
	ldr	r1, [fp, #-120]	@  size
	mov	r3, r1, asl #16
	mov	r2, r3, lsr #16
	cmp	r3, #0
	cmpne	r2, #16384
	beq	.L91
	cmp	r2, #32768
	cmpne	r2, #49152
	bne	.L74
.L91:
	ldr	r2, [fp, #24]	@  m
	ldr	r3, [fp, #36]	@  t
	cmp	r3, #0
	cmpne	r2, #0
	beq	.L74
	ldr	r4, [fp, #-132]	@  s_t
	tst	r4, #7
	bne	.L74
	mov	r6, #67108864
	ldr	r2, [r6, #0]
	ldr	r3, [r6, #0]
	tst	r3, #1
	beq	.L94
	ldr	ip, [fp, #-92]	@  no_back
	mov	r3, ip, asl #16
	cmp	r3, #131072
	beq	.L94
.L74:
	sub	r0, fp, #84
	ldr	r3, .L129+40
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L94:
	ldr	r3, [r6, #0]
	tst	r3, #2
	beq	.L92
	ldr	r1, [fp, #-92]	@  no_back
	mov	r3, r1, asl #16
	cmp	r3, #65536
	bls	.L74
.L92:
	ldr	r2, [fp, #-92]	@  no_back
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	ldr	r4, [fp, #-88]	@  this
	cmp	r3, #2
	strh	r2, [r4, #8]	@ movhi 	@  <variable>.no_bg
	beq	.L96
	cmp	r3, #3
	beq	.L97
.L95:
	ldr	r4, [fp, #-124]	@  s_x
	ldr	ip, [fp, #-128]	@  s_y
	mov	r3, r4, asl #16
	mov	r2, ip, asl #16
	mov	r2, r2, lsr #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-148]
	mul	r3, r2, r3
	ldr	r1, [fp, #-112]	@  screen_block
	ldr	r4, [fp, #-100]	@  char_block
	str	r3, [fp, #-144]
	str	r2, [fp, #-152]
	mov	r3, r1, asl #16
	mov	r2, r4, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r2, lsr #16
	ldr	ip, [fp, #-88]	@  this
	str	r3, [fp, #-136]
	str	r2, [fp, #-140]
	mov	r3, r3, asl #11
	mov	r2, r2, asl #14
	add	r2, r2, #100663296
	add	r3, r3, #100663296
	mov	r1, #1
	str	r2, [ip, #12]	@  <variable>.cbb
	str	r3, [ip, #16]	@  <variable>.sbb
	ldr	r0, [fp, #-144]
	str	r1, [fp, #-80]
	ldr	r2, .L129+44
	mov	lr, pc
	bx	r2
	ldr	r3, [fp, #-88]	@  this
	mov	r4, #3
	str	r0, [r3, #84]	@  this,  <variable>.map
	mov	r1, r0	@  this
	ldr	r2, [fp, #-144]
	ldr	r0, [fp, #24]	@  m
	mov	r3, #-2147483648
	str	r4, [sp, #0]
	ldr	ip, .L129+48
	mov	lr, pc
	bx	ip
	ldr	r1, [fp, #-132]	@  s_t
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, [fp, #-124]	@  s_x
	ldr	r4, [fp, #-128]	@  s_y
	mov	r1, r1, asl #16
	str	r1, [fp, #-156]
	mov	r0, r1, lsr #16	@  this
	strh	r3, [r2, #20]	@ movhi 	@  <variable>.map_size_x
	strh	r4, [r2, #22]	@ movhi 	@  <variable>.map_size_y
	ldr	ip, .L129+44
	mov	lr, pc
	bx	ip
	ldr	r3, [fp, #-156]
	ldr	r4, [fp, #-88]	@  this
	mov	ip, #3
	str	r0, [r4, #24]	@  this,  <variable>.tile
	mov	r1, r0	@  this
	mov	r2, r3, lsr #17	@  this
	ldr	r0, [fp, #36]	@  t
	mov	r3, #-2147483648
	str	ip, [sp, #0]
	ldr	r4, .L129+48
	mov	lr, pc
	bx	r4
	ldr	ip, [fp, #-88]	@  this
	ldr	r1, [fp, #-132]	@  s_t
	ldr	r0, [ip, #4]	@  <variable>.REG_BGXCNT
	strh	r1, [ip, #28]	@ movhi 	@  <variable>.tile_size
	ldr	r4, [fp, #-96]	@  priority
	ldrh	r2, [r0, #0]
	mov	r3, r4, asl #16
	bic	r2, r2, #3
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldrh	r3, [r0, #0]
	ldr	ip, [fp, #-140]
	bic	r3, r3, #12
	orr	r3, r3, ip, asl #2
	strh	r3, [r0, #0]	@ movhi 
	ldr	r1, [fp, #-104]	@  mosaic
	ldrh	r2, [r0, #0]
	mov	r3, r1, asl #16
	bic	r2, r2, #64
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldr	r2, [fp, #-108]	@  col_pal
	ldrh	r1, [r0, #0]
	mov	r3, r2, asl #16
	bic	r1, r1, #128
	orr	r1, r1, r3, lsr #16
	strh	r1, [r0, #0]	@ movhi 
	ldrh	r3, [r0, #0]
	ldr	r4, [fp, #-136]
	bic	r3, r3, #7936
	orr	r3, r3, r4, asl #8
	strh	r3, [r0, #0]	@ movhi 
	ldr	ip, [fp, #-116]	@  wrap
	ldrh	r2, [r0, #0]
	mov	r3, ip, asl #16
	bic	r2, r2, #8192
	orr	r2, r2, r3, lsr #16
	strh	r2, [r0, #0]	@ movhi 
	ldr	r1, [fp, #-120]	@  size
	ldrh	r3, [r0, #0]
	mov	r2, r1, asl #16
	bic	r3, r3, #49152
	orr	r3, r3, r2, lsr #16
	ldr	r2, [fp, #-148]
	mov	r2, r2, asl #3
	strh	r3, [r0, #0]	@ movhi 
	str	r2, [fp, #-160]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L129+52
	mov	lr, pc
	bx	r3
	ldr	r4, [fp, #-160]
	mov	r0, r0, asl #16	@  this
	cmp	r4, r0, lsr #16
	blt	.L108
	ldr	ip, [fp, #-152]
	mov	ip, ip, asl #3
	str	ip, [fp, #-164]
	ldr	r0, [fp, #-88]	@  this
	ldr	r1, .L129+52
	mov	lr, pc
	bx	r1
	ldr	r2, [fp, #-164]
	mov	r0, r0, asl #16	@  this
	cmp	r2, r0, lsr #16
	bge	.L107
.L108:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L129+24
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r4, .L129+52
	mov	lr, pc
	bx	r4
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #16
	str	r0, [fp, #-168]
	ldr	r0, [fp, #-88]	@  this
	mov	lr, pc
	bx	r4
	mov	ip, r0	@ movhi	@  this
	ldr	r1, [fp, #-152]
	ldr	r4, [fp, #-168]
	mov	ip, ip, asl #16	@  this
	mov	lr, r1, asl #3
	mov	ip, ip, lsr #16
	str	r4, [sp, #0]
	ldr	r0, .L129+56
	ldr	r1, .L129+32
	ldr	r3, [fp, #-160]
	mov	r2, #94
	str	lr, [sp, #4]
	str	ip, [sp, #8]
	ldr	r4, .L129+36
	mov	lr, pc
	bx	r4
.L107:
	ldr	ip, [fp, #-124]	@  s_x
	mov	r3, ip, asl #16
	mov	r3, r3, lsr #13
	mov	r1, #1
	str	r3, [fp, #-172]
	str	r1, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r2, .L129+52
	mov	lr, pc
	bx	r2
	ldr	r3, [fp, #-172]
	mov	r0, r0, asl #16	@  this
	cmp	r3, r0, lsr #16
	blt	.L110
	ldr	r4, [fp, #-128]	@  s_y
	mov	r3, r4, asl #16
	mov	r3, r3, lsr #13
	str	r3, [fp, #-176]
	ldr	r0, [fp, #-88]	@  this
	ldr	ip, .L129+52
	mov	lr, pc
	bx	ip
	ldr	r1, [fp, #-176]
	mov	r0, r0, asl #16	@  this
	cmp	r1, r0, lsr #16
	bge	.L109
.L110:
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L129+24
	mov	r2, #1
	str	r2, [fp, #-80]
.L117:
	mov	lr, pc
	bx	r3
	b	.L74
.L109:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r4, .L129+52
	mov	lr, pc
	bx	r4
	ldr	ip, [fp, #-88]	@  this
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #19
	strh	r0, [ip, #30]	@ movhi 	@  <variable>.nb_tile_x
	mov	r0, ip
	mov	lr, pc
	bx	r4
	ldr	r1, [fp, #-88]	@  this
	ldrh	r3, [r1, #30]	@  <variable>.nb_tile_x
	sub	r3, r3, #30
	strh	r3, [r1, #48]	@ movhi 	@  <variable>.max_pas_map
	ldrh	r2, [r1, #48]	@  <variable>.max_pas_map
	mov	r3, r2, asl #3
	strh	r3, [r1, #34]	@ movhi 	@  <variable>.max_pas_screen
	strh	r2, [r1, #50]	@ movhi 	@  <variable>.pas_map
	ldrh	r2, [r1, #34]	@ movhi	@  <variable>.max_pas_screen
	mov	r0, r0, asl #16	@  this
	mov	r0, r0, lsr #19
	strh	r2, [r1, #36]	@ movhi 	@  <variable>.pas_screen
	ldr	r3, .L129+60
	strh	r0, [r1, #32]	@ movhi 	@  <variable>.nb_tile_y
	mov	r0, r1
	b	.L117
.L97:
	ldr	r3, [r6, #0]
	add	r5, r6, #60
	orr	r3, r3, #2048
	add	r2, r6, #14
	add	r1, r6, #48
	add	r0, r6, #50
	add	ip, r6, #52
	add	lr, r6, #54
	add	r4, r6, #56
.L116:
	str	r3, [r6, #0]
	ldr	r3, [fp, #-88]	@  this
	str	r2, [r3, #4]	@  <variable>.REG_BGXCNT
	str	r1, [r3, #68]	@  <variable>.REG_BGXPA
	str	r0, [r3, #72]	@  <variable>.REG_BGXPB
	str	ip, [r3, #76]	@  <variable>.REG_BGXPC
	str	lr, [r3, #80]	@  <variable>.REG_BGXPD
	str	r4, [r3, #60]	@  <variable>.REG_BGXX
	str	r5, [r3, #64]	@  <variable>.REG_BGXY
	b	.L95
.L96:
	ldr	r3, [r6, #0]
	add	r5, r6, #44
	orr	r3, r3, #1024
	add	r2, r6, #12
	add	r1, r6, #32
	add	r0, r6, #34
	add	ip, r6, #36
	add	lr, r6, #38
	add	r4, r6, #40
	b	.L116
.L88:
	ldr	r3, [r1, #0]
	tst	r3, #2
	beq	.L86
	ldr	r1, [fp, #-92]	@  no_back
	mov	r3, r1, asl #16
	cmp	r3, #65536
	bhi	.L86
	b	.L87
.L128:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L129+64
	mov	r3, r2	@  m
	ldr	r1, .L129+32
	mov	r2, #29
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L85
.L127:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L129+68
	ldr	r1, .L129+32
	mov	r2, #28
	ldr	r3, [fp, #36]	@  t
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L84
.L126:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L129+72
	ldr	r1, .L129+32
	mov	r2, #27
	ldr	r3, [fp, #24]	@  m
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L83
.L125:
	mov	ip, #1
	str	ip, [fp, #-80]
	mov	r3, r2	@  m
	ldr	r0, .L129+76
	ldr	r1, .L129+32
	mov	r2, #26
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L82
.L124:
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, .L129+80
	ldr	r1, .L129+32
	mov	r2, #24
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L81
.L123:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L129+84
	ldr	r1, .L129+32
	mov	r2, #23
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L80
.L122:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, .L129+88
	mov	r3, r2	@  m
	ldr	r1, .L129+32
	mov	r2, #22
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L79
.L121:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L129+92
	ldr	r1, .L129+32
	mov	r2, #21
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L78
.L120:
	mov	r2, #1
	str	r2, [fp, #-80]
	ldr	r0, .L129+96
	ldr	r1, .L129+32
	mov	r2, #20
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L77
.L119:
	mov	ip, #1
	str	ip, [fp, #-80]
	ldr	r0, .L129+100
	ldr	r1, .L129+32
	mov	r2, #19
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L76
.L118:
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16	@  m
	ldr	r0, .L129+104
	ldr	r1, .L129+32
	mov	r2, #18
	ldr	ip, .L129+36
	mov	lr, pc
	bx	ip
	b	.L75
.L115:
.L111:
.L113:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-180]
	ldr	r3, .L129+108
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-180]
	ldr	r3, .L129+112
	mov	lr, pc
	bx	r3
.L130:
	.align	2
.L129:
	.word	.L115
	.word	.LLSDA37
	.word	__gxx_personality_sj0
	.word	_Unwind_SjLj_Register
	.word	_ZN10backgroundC2Ev
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	.LC14
	.word	.LC3
	.word	_Z5debugPcz
	.word	_Unwind_SjLj_Unregister
	.word	_Znam
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZN19background_rotation10size2pixelEv
	.word	.LC15
	.word	_ZN19background_rotation6updateEv
	.word	.LC13
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.word	.LC5
	.word	.LC4
	.word	.LC2
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationC1EttttttttPKhttS1_t, .-_ZN19background_rotationC1EttttttttPKhttS1_t
	.section	.gcc_except_table
.LLSDA37:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE37-.LLSDACSB37
.LLSDACSB37:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE37:
	.text
	.align	2
	.global	_ZN19background_rotationD2Ev
	.type	_ZN19background_rotationD2Ev, %function
_ZN19background_rotationD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L143
	sub	fp, ip, #4
	sub	sp, sp, #52
	ldr	r2, .L143+4
	str	r3, [fp, #-60]
	ldr	r3, .L143+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L143+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #84]	@  this,  <variable>.map
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L143+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L142
.L134:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L143+20
	mov	lr, pc
	bx	r3
.L131:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L143+24
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L143+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L142:
	ldr	r3, .L143+32
	mov	lr, pc
	bx	r3
	b	.L134
.L141:
.L135:
.L137:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-92]
	ldr	r3, .L143+24
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-92]
	ldr	r3, .L143+36
	mov	lr, pc
	bx	r3
.L144:
	.align	2
.L143:
	.word	__gxx_personality_sj0
	.word	.LLSDA40
	.word	.L141
	.word	_Unwind_SjLj_Register
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationD2Ev, .-_ZN19background_rotationD2Ev
	.section	.gcc_except_table
.LLSDA40:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE40-.LLSDACSB40
.LLSDACSB40:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE40:
	.text
	.align	2
	.global	_ZN19background_rotationD1Ev
	.type	_ZN19background_rotationD1Ev, %function
_ZN19background_rotationD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L157
	sub	fp, ip, #4
	sub	sp, sp, #52
	ldr	r2, .L157+4
	str	r3, [fp, #-60]
	ldr	r3, .L157+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L157+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #84]	@  this,  <variable>.map
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L157+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L156
.L148:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L157+20
	mov	lr, pc
	bx	r3
.L145:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L157+24
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L157+28
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L156:
	ldr	r3, .L157+32
	mov	lr, pc
	bx	r3
	b	.L148
.L155:
.L149:
.L151:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-92]
	ldr	r3, .L157+24
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-92]
	ldr	r3, .L157+36
	mov	lr, pc
	bx	r3
.L158:
	.align	2
.L157:
	.word	__gxx_personality_sj0
	.word	.LLSDA42
	.word	.L155
	.word	_Unwind_SjLj_Register
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	_ZN10backgroundD2Ev
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationD1Ev, .-_ZN19background_rotationD1Ev
	.section	.gcc_except_table
.LLSDA42:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE42-.LLSDACSB42
.LLSDACSB42:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE42:
	.text
	.align	2
	.global	_ZN19background_rotationD0Ev
	.type	_ZN19background_rotationD0Ev, %function
_ZN19background_rotationD0Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r3, .L171
	sub	fp, ip, #4
	sub	sp, sp, #52
	ldr	r2, .L171+4
	str	r3, [fp, #-60]
	ldr	r3, .L171+8
	str	r2, [fp, #-56]
	sub	r2, fp, #40
	str	r3, [fp, #-48]
	str	r0, [fp, #-88]	@  this
	str	r2, [fp, #-52]
	sub	r0, fp, #84
	ldr	r3, .L171+12
	str	sp, [fp, #-44]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-88]	@  this
	ldr	r0, [r3, #84]	@  this,  <variable>.map
	ldr	r2, [fp, #-88]	@  this
	ldr	r3, .L171+16
	cmp	r0, #0	@  this
	str	r3, [r2, #0]	@  <variable>._vptr.background
	bne	.L170
.L162:
	mov	r3, #1
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L171+20
	mov	lr, pc
	bx	r3
.L159:
	mvn	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	ldr	r0, [fp, #-88]	@  this
	ldr	r3, .L171+28
	mov	lr, pc
	bx	r3
	sub	r0, fp, #84
	ldr	r3, .L171+32
	mov	lr, pc
	bx	r3
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L170:
	ldr	r3, .L171+36
	mov	lr, pc
	bx	r3
	b	.L162
.L169:
.L163:
.L165:
	add	fp, fp, #40
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	ldr	r0, [fp, #-88]	@  this
	str	r3, [fp, #-92]
	ldr	r3, .L171+24
	mov	lr, pc
	bx	r3
	mvn	r2, #0
	str	r2, [fp, #-80]
	ldr	r0, [fp, #-92]
	ldr	r3, .L171+40
	mov	lr, pc
	bx	r3
.L172:
	.align	2
.L171:
	.word	__gxx_personality_sj0
	.word	.LLSDA44
	.word	.L169
	.word	_Unwind_SjLj_Register
	.word	_ZTV19background_rotation+8
	.word	_ZN19background_rotation4initEv
	.word	_ZN10backgroundD2Ev
	.word	_ZdlPv
	.word	_Unwind_SjLj_Unregister
	.word	_ZdaPv
	.word	_Unwind_SjLj_Resume
	.size	_ZN19background_rotationD0Ev, .-_ZN19background_rotationD0Ev
	.section	.gcc_except_table
.LLSDA44:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE44-.LLSDACSB44
.LLSDACSB44:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE44:
	.text
	.align	2
	.global	_ZN19background_rotation4initEv
	.type	_ZN19background_rotation4initEv, %function
_ZN19background_rotation4initEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, sp
	mov	r1, #256
	stmfd	sp!, {fp, ip, lr, pc}
	strh	r2, [r0, #92]	@ movhi 	@  <variable>.angle
	str	r2, [r0, #84]	@  <variable>.map
	str	r2, [r0, #68]	@  <variable>.REG_BGXPA
	str	r2, [r0, #72]	@  <variable>.REG_BGXPB
	str	r2, [r0, #76]	@  <variable>.REG_BGXPC
	str	r2, [r0, #80]	@  <variable>.REG_BGXPD
	str	r2, [r0, #60]	@  <variable>.REG_BGXX
	str	r2, [r0, #64]	@  <variable>.REG_BGXY
	strh	r2, [r0, #90]	@ movhi 	@  <variable>.center_y
	strh	r2, [r0, #88]	@ movhi 	@  <variable>.center_x
	sub	fp, ip, #4
	strh	r1, [r0, #94]	@ movhi 	@  <variable>.zoom_x
	strh	r1, [r0, #96]	@ movhi 	@  <variable>.zoom_y
	ldr	r2, .L174
	mov	lr, pc
	bx	r2
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L175:
	.align	2
.L174:
	.word	_ZN10background4initEv
	.size	_ZN19background_rotation4initEv, .-_ZN19background_rotation4initEv
	.section	.rodata.str1.4
	.align	2
.LC23:
	.ascii	"%s : %d \n"
	.ascii	"\tno_t %d\000"
	.align	2
.LC22:
	.ascii	"%s : %d \n"
	.ascii	"\ty %d\000"
	.align	2
.LC21:
	.ascii	"%s : %d \n"
	.ascii	"\tx %d\000"
	.text
	.align	2
	.global	_ZN19background_rotation11change_tileEttt
	.type	_ZN19background_rotation11change_tileEttt, %function
_ZN19background_rotation11change_tileEttt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	mov	r1, r1, asl #16
	mov	r4, r0	@  this
	ldrh	r0, [r0, #20]	@  <variable>.map_size_x
	mov	r7, r1, lsr #16
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16
	cmp	r0, r7
	sub	fp, ip, #4
	mov	r5, r2, asr #16	@  y
	mov	r8, r3, asr #16	@  no_t
	bls	.L182
.L177:
	mov	r3, r5, asl #16	@  y
	ldrh	r2, [r4, #22]	@  <variable>.map_size_y
	mov	r6, r3, lsr #16
	cmp	r2, r6
	bls	.L183
.L178:
	ldrh	r2, [r4, #28]	@  <variable>.tile_size
	mov	r3, r8, asl #16	@  no_t
	mov	r5, r3, lsr #16
	cmp	r5, r2, lsr #6
	bcs	.L184
.L179:
	ldrh	r2, [r4, #20]	@  <variable>.map_size_x
	cmp	r2, r7
	bls	.L176
	ldrh	r3, [r4, #22]	@  <variable>.map_size_y
	cmp	r3, r6
	bls	.L176
	ldrh	r3, [r4, #28]	@  <variable>.tile_size
	cmp	r5, r3, lsr #6
	mlacc	r2, r6, r2, r7
	ldrcc	r3, [r4, #84]	@  <variable>.map
	strccb	r8, [r3, r2]	@  no_t
.L176:
	ldmea	fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx	lr
.L184:
	ldr	r0, .L185
	ldr	r1, .L185+4
	mov	r2, #174
	mov	r3, r5
	ldr	ip, .L185+8
	mov	lr, pc
	bx	ip
	b	.L179
.L183:
	ldr	r0, .L185+12
	ldr	r1, .L185+4
	mov	r2, #173
	mov	r3, r6
	ldr	ip, .L185+8
	mov	lr, pc
	bx	ip
	b	.L178
.L182:
	ldr	r0, .L185+16
	ldr	r1, .L185+4
	mov	r2, #172
	mov	r3, r7
	ldr	ip, .L185+8
	mov	lr, pc
	bx	ip
	b	.L177
.L186:
	.align	2
.L185:
	.word	.LC23
	.word	.LC3
	.word	_Z5debugPcz
	.word	.LC22
	.word	.LC21
	.size	_ZN19background_rotation11change_tileEttt, .-_ZN19background_rotation11change_tileEttt
	.section	.rodata.str1.4
	.align	2
.LC27:
	.ascii	"%s : %d \n"
	.ascii	"\tno3 %d\000"
	.align	2
.LC26:
	.ascii	"%s : %d \n"
	.ascii	"\tno2 %d\000"
	.align	2
.LC25:
	.ascii	"%s : %d \n"
	.ascii	"\tno1 %d\000"
	.align	2
.LC24:
	.ascii	"%s : %d \n"
	.ascii	"\tno0 %d\000"
	.text
	.align	2
	.global	_ZN19background_rotation14change_tile_16Etttttt
	.type	_ZN19background_rotation14change_tile_16Etttttt, %function
_ZN19background_rotation14change_tile_16Etttttt:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	mov	r3, r3, asl #16
	mov	r1, r1, asl #16
	mov	r2, r2, asl #16
	mov	r3, r3, asr #16
	mov	r4, r0	@  this
	ldrh	r0, [r0, #20]	@  <variable>.map_size_x
	mov	sl, r1, lsr #16
	mov	r5, r2, asr #16	@  y
	str	r3, [fp, #-44]	@  no0
	ldrsh	r1, [fp, #4]	@  no1
	ldrsh	r2, [fp, #8]	@  no2
	ldrsh	r3, [fp, #12]	@  no3
	cmp	r0, sl
	str	r1, [fp, #-48]	@  no1
	str	r2, [fp, #-52]	@  no2
	str	r3, [fp, #-56]	@  no3
	bls	.L196
.L188:
	mov	r3, r5, asl #16	@  y
	ldrh	r2, [r4, #22]	@  <variable>.map_size_y
	mov	r9, r3, lsr #16
	cmp	r2, r9
	bls	.L197
.L189:
	ldr	r1, [fp, #-44]	@  no0
	ldrh	r2, [r4, #28]	@  <variable>.tile_size
	mov	r3, r1, asl #16
	mov	r8, r3, lsr #16
	cmp	r8, r2, lsr #6
	bcs	.L198
.L190:
	ldr	r1, [fp, #-48]	@  no1
	mov	r3, r1, asl #16
	mov	r7, r3, lsr #16
	cmp	r7, r2, lsr #6
	bcs	.L199
.L191:
	ldr	r1, [fp, #-52]	@  no2
	mov	r3, r1, asl #16
	mov	r6, r3, lsr #16
	cmp	r6, r2, lsr #6
	bcs	.L200
.L192:
	ldr	r1, [fp, #-56]	@  no3
	mov	r3, r1, asl #16
	mov	r5, r3, lsr #16
	cmp	r5, r2, lsr #6
	bcs	.L201
.L193:
	ldrh	r2, [r4, #20]	@  <variable>.map_size_x
	cmp	r2, sl
	bls	.L187
	ldrh	r3, [r4, #22]	@  <variable>.map_size_y
	cmp	r3, r9
	bls	.L187
	ldrh	r3, [r4, #28]	@  <variable>.tile_size
	mov	r3, r3, lsr #6
	cmp	r8, r3
	bcs	.L187
	cmp	r7, r3
	bcs	.L187
	cmp	r6, r3
	bcs	.L187
	cmp	r5, r3
	bcs	.L187
	mla	r1, r2, r9, sl
	ldr	r3, [r4, #84]	@  <variable>.map
	ldr	r2, [fp, #-44]	@  no0
	strb	r2, [r3, r1]
	ldrh	r2, [r4, #20]	@  <variable>.map_size_x
	mla	r1, r2, r9, sl
	ldr	r3, [r4, #84]	@  <variable>.map
	add	r3, r3, r1
	ldr	r1, [fp, #-48]	@  no1
	strb	r1, [r3, #1]
	ldrh	r2, [r4, #20]	@  <variable>.map_size_x
	add	r0, r9, #1
	mla	r1, r2, r0, sl
	ldr	r3, [r4, #84]	@  <variable>.map
	ldr	r2, [fp, #-52]	@  no2
	strb	r2, [r3, r1]
	ldrh	r2, [r4, #20]	@  <variable>.map_size_x
	mla	r1, r2, r0, sl
	ldr	r3, [r4, #84]	@  <variable>.map
	add	r3, r3, r1
	ldr	r1, [fp, #-56]	@  no3
	strb	r1, [r3, #1]
.L187:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L201:
	ldr	r0, .L202
	ldr	r1, .L202+4
	mov	r2, #192
	mov	r3, r5
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	b	.L193
.L200:
	mov	r2, #191
	ldr	r0, .L202+12
	ldr	r1, .L202+4
	mov	r3, r6
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #28]	@  <variable>.tile_size
	b	.L192
.L199:
	mov	r2, #190
	ldr	r0, .L202+16
	ldr	r1, .L202+4
	mov	r3, r7
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #28]	@  <variable>.tile_size
	b	.L191
.L198:
	mov	r2, #189
	ldr	r0, .L202+20
	ldr	r1, .L202+4
	mov	r3, r8
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	ldrh	r2, [r4, #28]	@  <variable>.tile_size
	b	.L190
.L197:
	ldr	r0, .L202+24
	ldr	r1, .L202+4
	mov	r2, #188
	mov	r3, r9
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	b	.L189
.L196:
	ldr	r0, .L202+28
	ldr	r1, .L202+4
	mov	r2, #187
	mov	r3, sl
	ldr	ip, .L202+8
	mov	lr, pc
	bx	ip
	b	.L188
.L203:
	.align	2
.L202:
	.word	.LC27
	.word	.LC3
	.word	_Z5debugPcz
	.word	.LC26
	.word	.LC25
	.word	.LC24
	.word	.LC22
	.word	.LC21
	.size	_ZN19background_rotation14change_tile_16Etttttt, .-_ZN19background_rotation14change_tile_16Etttttt
	.align	2
	.global	_ZN19background_rotation6updateEv
	.type	_ZN19background_rotation6updateEv, %function
_ZN19background_rotation6updateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r8, r0	@  this
	mov	r2, #67108864
.L205:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bne	.L205
	ldrh	r2, [r8, #28]	@  <variable>.tile_size
	ldr	r0, [r8, #24]	@  this,  <variable>.tile
	ldr	r1, [r8, #12]	@  <variable>.cbb
	mov	ip, #3
	mov	r2, r2, lsr #1
	mov	r3, #-2147483648
	ldr	sl, .L216
	str	ip, [sp, #0]
	mov	lr, pc
	bx	sl
	mov	r0, r8	@  this
	ldr	r3, .L216+4
	mov	lr, pc
	bx	r3
	mov	r0, r0, asl #13	@  taille,  this
	bic	r4, r0, #-536870912	@  taille
	mov	r4, r4, lsr #16
	mov	r5, #0	@  y
	mov	r4, r4, asl #16
	cmp	r5, r4, lsr #16	@  y
	bge	.L215
	mov	r7, r4, lsr #17
	mov	r6, r5	@  y,  y
.L213:
	ldr	r3, [r8, #56]	@  <variable>.map_voff
	ldrh	r1, [r8, #20]	@  <variable>.map_size_x
	ldr	r2, [r8, #52]	@  <variable>.map_hoff
	add	r3, r5, r3	@  y
	mla	ip, r1, r3, r2
	ldr	r0, [r8, #84]	@  <variable>.map
	ldr	r1, [r8, #16]	@  <variable>.sbb
	add	r0, r0, ip	@  this
	add	r1, r1, r6	@  y
	mov	ip, #3
	mov	r2, r7
	mov	r3, #-2147483648
	add	r5, r5, #1	@  y,  y
	str	ip, [sp, #0]
	mov	lr, pc
	bx	sl
	cmp	r5, r4, lsr #16	@  y
	add	r6, r6, r7, asl #1	@  y,  y
	blt	.L213
.L215:
	ldrsh	r1, [r8, #90]	@  <variable>.center_y
	ldrsh	r2, [r8, #96]	@  <variable>.zoom_y
	ldrsh	r7, [r8, #94]	@  <variable>.zoom_x
	ldrsh	r3, [r8, #88]	@  <variable>.center_x
	mul	r0, r2, r1
	mul	ip, r7, r3
	ldrh	lr, [r8, #92]	@  <variable>.angle
	ldr	r5, .L216+8
	ldr	r6, .L216+12
	ldr	r3, [r5, lr, asl #2]	@  SIN
	ldr	r1, [r6, lr, asl #2]	@  COS
	mov	r0, r0, asl #8
	mov	r0, r0, asr #16	@  c_y
	mov	r3, r3, asr #8
	mov	ip, ip, asl #8
	mov	ip, ip, asr #16	@  c_x
	mul	r2, r3, r0	@  c_y
	mov	r1, r1, asr #8
	mul	r4, r1, ip	@  c_x
	ldr	r3, [r8, #40]	@  <variable>.screen_xoff
	add	r3, r3, ip	@  c_x
	rsb	r2, r2, r3, asl #8
	ldr	r1, [r8, #60]	@  <variable>.REG_BGXX
	rsb	r2, r4, r2
	str	r2, [r1, #0]
	ldr	r3, [r6, lr, asl #2]	@  COS
	mov	r3, r3, asr #8
	mul	r1, r3, r0	@  c_y
	ldr	r2, [r8, #44]	@  <variable>.screen_yoff
	ldr	r3, [r5, lr, asl #2]	@  SIN
	add	r2, r2, r0	@  c_y
	rsb	r1, r1, r2, asl #8
	mov	r3, r3, asr #8
	mla	r0, r3, ip, r1	@  c_x
	ldr	r2, [r8, #64]	@  <variable>.REG_BGXY
	str	r0, [r2, #0]
	ldr	r3, [r6, lr, asl #2]	@  COS
	mov	r3, r3, asr #8
	mul	r2, r7, r3
	ldr	r0, [r8, #68]	@  <variable>.REG_BGXPA
	mov	r2, r2, asr #8
	strh	r2, [r0, #0]	@ movhi 
	ldrh	r1, [r8, #92]	@  <variable>.angle
	ldr	r3, [r5, r1, asl #2]	@  SIN
	ldrsh	r0, [r8, #96]	@  <variable>.zoom_y
	mov	r3, r3, asr #8
	mul	r2, r0, r3
	ldr	ip, [r8, #72]	@  <variable>.REG_BGXPB
	mov	r2, r2, asr #8
	strh	r2, [ip, #0]	@ movhi 
	ldrh	r1, [r8, #92]	@  <variable>.angle
	ldr	r3, [r5, r1, asl #2]	@  SIN
	ldrsh	r1, [r8, #94]	@  <variable>.zoom_x
	rsb	r3, r3, #0
	mov	r3, r3, asr #8
	mul	r2, r1, r3
	ldr	r0, [r8, #76]	@  <variable>.REG_BGXPC
	mov	r2, r2, asr #8
	strh	r2, [r0, #0]	@ movhi 
	ldrh	r1, [r8, #92]	@  <variable>.angle
	ldr	r3, [r6, r1, asl #2]	@  COS
	ldrsh	r0, [r8, #96]	@  <variable>.zoom_y
	mov	r3, r3, asr #8
	mul	r2, r0, r3
	ldr	r1, [r8, #80]	@  <variable>.REG_BGXPD
	mov	r2, r2, asr #8
	strh	r2, [r1, #0]	@ movhi 
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L217:
	.align	2
.L216:
	.word	_Z9copie_DMAPvS_mmh
	.word	_ZN19background_rotation10size2pixelEv
	.word	SIN
	.word	COS
	.size	_ZN19background_rotation6updateEv, .-_ZN19background_rotation6updateEv
	.align	2
	.global	_ZN19background_rotation5rightEv
	.type	_ZN19background_rotation5rightEv, %function
_ZN19background_rotation5rightEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L219
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L220:
	.align	2
.L219:
	.word	_ZN10background5rightEv
	.size	_ZN19background_rotation5rightEv, .-_ZN19background_rotation5rightEv
	.align	2
	.global	_ZN19background_rotation4downEv
	.type	_ZN19background_rotation4downEv, %function
_ZN19background_rotation4downEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L222
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L223:
	.align	2
.L222:
	.word	_ZN10background4downEv
	.size	_ZN19background_rotation4downEv, .-_ZN19background_rotation4downEv
	.align	2
	.global	_ZN19background_rotation2upEv
	.type	_ZN19background_rotation2upEv, %function
_ZN19background_rotation2upEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L225
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L226:
	.align	2
.L225:
	.word	_ZN10background2upEv
	.size	_ZN19background_rotation2upEv, .-_ZN19background_rotation2upEv
	.align	2
	.global	_ZN19background_rotation4leftEv
	.type	_ZN19background_rotation4leftEv, %function
_ZN19background_rotation4leftEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L228
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L229:
	.align	2
.L228:
	.word	_ZN10background4leftEv
	.size	_ZN19background_rotation4leftEv, .-_ZN19background_rotation4leftEv
	.section	.rodata.str1.4
	.align	2
.LC28:
	.ascii	"%s : %d \n"
	.ascii	"\ta %d\000"
	.text
	.align	2
	.global	_ZN19background_rotation6rotateEt
	.type	_ZN19background_rotation6rotateEt, %function
_ZN19background_rotation6rotateEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r2, r1, asl #16
	mov	r3, r2, lsr #16
	mov	ip, sp
	cmp	r3, #360
	mov	r1, r3
	mov	r2, r2, asr #16	@  a
	mov	r3, r0	@  this
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r0, .L235
	sub	fp, ip, #4
	strlsh	r2, [r3, #92]	@ movhi 	@  a,  <variable>.angle
	bhi	.L234
.L230:
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L234:
	ldr	r3, .L235+4
	mov	lr, pc
	bx	r3
	b	.L230
.L236:
	.align	2
.L235:
	.word	.LC28
	.word	_Z5debugPcz
	.size	_ZN19background_rotation6rotateEt, .-_ZN19background_rotation6rotateEt
	.align	2
	.global	_ZN19background_rotation10set_centerEss
	.type	_ZN19background_rotation10set_centerEss, %function
_ZN19background_rotation10set_centerEss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	strh	r2, [r0, #90]	@ movhi 	@  <variable>.center_y
	strh	r1, [r0, #88]	@ movhi 	@  <variable>.center_x
	bx	lr
	.size	_ZN19background_rotation10set_centerEss, .-_ZN19background_rotation10set_centerEss
	.section	.rodata.str1.4
	.align	2
.LC29:
	.ascii	"pas de zoom : a faire !!!\000"
	.text
	.align	2
	.global	_ZN19background_rotation8set_zoomEss
	.type	_ZN19background_rotation8set_zoomEss, %function
_ZN19background_rotation8set_zoomEss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	ldr	r3, .L239
	mov	r6, r0	@  this
	sub	fp, ip, #4
	ldr	r0, .L239+4
	mov	r5, r1, asl #16
	mov	r4, r2, asl #16
	mov	lr, pc
	bx	r3
	mov	r5, r5, asr #16	@  z_x
	mov	r4, r4, asr #16	@  z_y
	strh	r4, [r6, #96]	@ movhi 	@  z_y,  <variable>.zoom_y
	strh	r5, [r6, #94]	@ movhi 	@  z_x,  <variable>.zoom_x
	ldmea	fp, {r4, r5, r6, fp, sp, lr}
	bx	lr
.L240:
	.align	2
.L239:
	.word	_Z5debugPcz
	.word	.LC29
	.size	_ZN19background_rotation8set_zoomEss, .-_ZN19background_rotation8set_zoomEss
	.align	2
	.global	_ZN19background_rotation10size2pixelEv
	.type	_ZN19background_rotation10size2pixelEv, %function
_ZN19background_rotation10size2pixelEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]	@  <variable>.REG_BGXCNT
	ldrh	r3, [r2, #0]
	ands	r3, r3, #49152
	@ lr needed for prologue
	mov	r0, #128	@  this
	bxeq	lr
	cmp	r3, #16384
	mov	r0, #256	@  this
	bxeq	lr
	mov	r2, #65280
	cmp	r3, #32768
	mov	r0, #512	@  this
	add	r2, r2, #255
	bxeq	lr
	cmp	r3, #49152
	movne	r0, r2	@  this
	moveq	r0, #1024	@  this
	bx	lr
	.size	_ZN19background_rotation10size2pixelEv, .-_ZN19background_rotation10size2pixelEv
	.align	2
	.global	_ZN19background_rotation10pixel2sizeEt
	.type	_ZN19background_rotation10pixel2sizeEt, %function
_ZN19background_rotation10pixel2sizeEt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r1, asl #16
	mov	r1, r1, lsr #16
	cmp	r1, #128
	@ lr needed for prologue
	mov	r0, #0	@  this
	bxeq	lr
	cmp	r1, #256
	mov	r0, #16384	@  this
	bxeq	lr
	mov	r3, #65280
	cmp	r1, #512
	mov	r0, #32768	@  this
	add	r3, r3, #255
	bxeq	lr
	cmp	r1, #1024
	movne	r0, r3	@  this
	moveq	r0, #49152	@  this
	bx	lr
	.size	_ZN19background_rotation10pixel2sizeEt, .-_ZN19background_rotation10pixel2sizeEt
	.weak	_ZTV19background_rotation
	.section	.gnu.linkonce.r._ZTV19background_rotation,"a",%progbits
	.align	2
	.type	_ZTV19background_rotation, %object
	.size	_ZTV19background_rotation, 16
_ZTV19background_rotation:
	.word	0
	.word	_ZTI19background_rotation
	.word	_ZN19background_rotationD1Ev
	.word	_ZN19background_rotationD0Ev
	.weak	_ZTI19background_rotation
	.section	.gnu.linkonce.r._ZTI19background_rotation,"a",%progbits
	.align	2
	.type	_ZTI19background_rotation, %object
	.size	_ZTI19background_rotation, 12
_ZTI19background_rotation:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS19background_rotation
	.word	_ZTI10background
	.weak	_ZTS19background_rotation
	.section	.gnu.linkonce.r._ZTS19background_rotation,"a",%progbits
	.align	2
	.type	_ZTS19background_rotation, %object
	.size	_ZTS19background_rotation, 22
_ZTS19background_rotation:
	.ascii	"19background_rotation\000"
	.ident	"GCC: (GNU) 3.3.2"
