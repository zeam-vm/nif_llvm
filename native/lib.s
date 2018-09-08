	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.file	1 "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif.h"
	.file	2 "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_drv_nif.h"
	.file	3 "native/lib.c"
	.file	4 "/usr/include/i386/_types.h"
	.file	5 "/usr/include/sys/_types/_size_t.h"
	.p2align	4, 0x90         ## -- Begin function load
_load:                                  ## @load
Lfunc_begin0:
	.file	6 "native/loader.c"
	.loc	6 5 0                   ## native/loader.c:5:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	##DEBUG_VALUE: load:env <- %rdi
	##DEBUG_VALUE: load:priv <- %rsi
	##DEBUG_VALUE: load:info <- %rdx
Ltmp0:
	.loc	6 6 3 prologue_end      ## native/loader.c:6:3
	xorl	%eax, %eax
	popq	%rbp
	retq
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function unload
_unload:                                ## @unload
Lfunc_begin1:
	.loc	6 11 0                  ## native/loader.c:11:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	##DEBUG_VALUE: unload:env <- %rdi
	##DEBUG_VALUE: unload:priv <- %rsi
Ltmp2:
	.loc	6 12 1 prologue_end     ## native/loader.c:12:1
	popq	%rbp
	retq
Ltmp3:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function reload
_reload:                                ## @reload
Lfunc_begin2:
	.loc	6 16 0                  ## native/loader.c:16:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	##DEBUG_VALUE: reload:env <- %rdi
	##DEBUG_VALUE: reload:priv <- %rsi
	##DEBUG_VALUE: reload:info <- %rdx
Ltmp4:
	.loc	6 17 3 prologue_end     ## native/loader.c:17:3
	xorl	%eax, %eax
	popq	%rbp
	retq
Ltmp5:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function upgrade
_upgrade:                               ## @upgrade
Lfunc_begin3:
	.loc	6 22 0                  ## native/loader.c:22:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	##DEBUG_VALUE: upgrade:env <- %rdi
	##DEBUG_VALUE: upgrade:priv <- %rsi
	##DEBUG_VALUE: upgrade:old_priv <- %rdx
	##DEBUG_VALUE: upgrade:info <- %rcx
Ltmp6:
	.loc	6 23 3 prologue_end     ## native/loader.c:23:3
	xorl	%eax, %eax
	popq	%rbp
	retq
Ltmp7:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ii
_asm_1_nif_ii:                          ## @asm_1_nif_ii
Lfunc_begin4:
	.loc	3 6 0                   ## native/lib.c:6:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	##DEBUG_VALUE: asm_1_nif_ii:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_ii:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rdx
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp8:
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	.loc	3 8 25 prologue_end     ## native/lib.c:8:25
	movq	(%rbx), %rsi
Ltmp9:
	.loc	3 0 25 is_stmt 0        ## native/lib.c:0:25
	leaq	-32(%rbp), %rdx
Ltmp10:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 8 5                   ## native/lib.c:8:5
	callq	_enif_get_long
	.loc	3 8 38                  ## native/lib.c:8:38
	testl	%eax, %eax
Ltmp11:
	.loc	3 8 5                   ## native/lib.c:8:5
	je	LBB4_4
Ltmp12:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 11 25 is_stmt 1       ## native/lib.c:11:25
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp13:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 11 5 is_stmt 0        ## native/lib.c:11:5
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 11 38                 ## native/lib.c:11:38
	testl	%eax, %eax
Ltmp14:
	.loc	3 11 5                  ## native/lib.c:11:5
	je	LBB4_4
Ltmp15:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 14 5 is_stmt 1        ## native/lib.c:14:5
	movq	-32(%rbp), %rax
Ltmp16:
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rax
	.loc	3 14 20 is_stmt 0       ## native/lib.c:14:20
	movq	-24(%rbp), %rsi
Ltmp17:
	##DEBUG_VALUE: asm_1_nif_ii:b <- %rsi
	.loc	3 14 18                 ## native/lib.c:14:18
	movabsq	$9223372036854775807, %rcx ## imm = 0x7FFFFFFFFFFFFFFF
	subq	%rsi, %rcx
	.loc	3 14 7                  ## native/lib.c:14:7
	cmpq	%rcx, %rax
Ltmp18:
	.loc	3 14 5                  ## native/lib.c:14:5
	jle	LBB4_3
Ltmp19:
LBB4_4:
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 20 35 is_stmt 1       ## native/lib.c:20:35
	leaq	L_.str(%rip), %rsi
	movq	%r14, %rdi
	callq	_enif_make_atom
	.loc	3 20 9 is_stmt 0        ## native/lib.c:20:9
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	jmp	LBB4_5
Ltmp20:
LBB4_3:
	##DEBUG_VALUE: asm_1_nif_ii:b <- %rsi
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rax
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 17 19 is_stmt 1       ## native/lib.c:17:19
	addq	%rax, %rsi
Ltmp21:
	##DEBUG_VALUE: asm_1_nif_ii:result <- %rsi
	.loc	3 18 9                  ## native/lib.c:18:9
	movq	%r14, %rdi
	callq	_enif_make_long
Ltmp22:
LBB4_5:
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 21 1                  ## native/lib.c:21:1
	addq	$16, %rsp
	popq	%rbx
Ltmp23:
	popq	%r14
Ltmp24:
	popq	%rbp
	retq
Ltmp25:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_if
_asm_1_nif_if:                          ## @asm_1_nif_if
Lfunc_begin5:
	.loc	3 24 0                  ## native/lib.c:24:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	##DEBUG_VALUE: asm_1_nif_if:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_if:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rdx
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp26:
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	.loc	3 27 25 prologue_end    ## native/lib.c:27:25
	movq	(%rbx), %rsi
Ltmp27:
	.loc	3 0 25 is_stmt 0        ## native/lib.c:0:25
	leaq	-32(%rbp), %rdx
Ltmp28:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 27 5                  ## native/lib.c:27:5
	callq	_enif_get_long
	.loc	3 27 38                 ## native/lib.c:27:38
	testl	%eax, %eax
Ltmp29:
	.loc	3 27 5                  ## native/lib.c:27:5
	je	LBB5_3
Ltmp30:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 30 26 is_stmt 1       ## native/lib.c:30:26
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp31:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 30 5 is_stmt 0        ## native/lib.c:30:5
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 30 39                 ## native/lib.c:30:39
	testl	%eax, %eax
Ltmp32:
	.loc	3 30 5                  ## native/lib.c:30:5
	je	LBB5_3
Ltmp33:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 33 19 is_stmt 1       ## native/lib.c:33:19
	cvtsi2sdq	-32(%rbp), %xmm0
	.loc	3 33 30 is_stmt 0       ## native/lib.c:33:30
	addsd	-24(%rbp), %xmm0
Ltmp34:
	##DEBUG_VALUE: asm_1_nif_if:result <- %xmm0
	.loc	3 34 9 is_stmt 1        ## native/lib.c:34:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp35:
	.loc	3 0 9 is_stmt 0         ## native/lib.c:0:9
	jmp	LBB5_4
Ltmp36:
LBB5_3:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 36 35 is_stmt 1       ## native/lib.c:36:35
	leaq	L_.str(%rip), %rsi
	movq	%r14, %rdi
	callq	_enif_make_atom
	.loc	3 36 9 is_stmt 0        ## native/lib.c:36:9
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
Ltmp37:
LBB5_4:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 37 1 is_stmt 1        ## native/lib.c:37:1
	addq	$16, %rsp
	popq	%rbx
Ltmp38:
	popq	%r14
Ltmp39:
	popq	%rbp
	retq
Ltmp40:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_fi
_asm_1_nif_fi:                          ## @asm_1_nif_fi
Lfunc_begin6:
	.loc	3 40 0                  ## native/lib.c:40:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	##DEBUG_VALUE: asm_1_nif_fi:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_fi:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rdx
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp41:
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	.loc	3 43 26 prologue_end    ## native/lib.c:43:26
	movq	(%rbx), %rsi
Ltmp42:
	.loc	3 0 26 is_stmt 0        ## native/lib.c:0:26
	leaq	-32(%rbp), %rdx
Ltmp43:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 43 5                  ## native/lib.c:43:5
	callq	_enif_get_double
	.loc	3 43 39                 ## native/lib.c:43:39
	testl	%eax, %eax
Ltmp44:
	.loc	3 43 5                  ## native/lib.c:43:5
	je	LBB6_3
Ltmp45:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 46 25 is_stmt 1       ## native/lib.c:46:25
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp46:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 46 5 is_stmt 0        ## native/lib.c:46:5
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 46 38                 ## native/lib.c:46:38
	testl	%eax, %eax
Ltmp47:
	.loc	3 46 5                  ## native/lib.c:46:5
	je	LBB6_3
Ltmp48:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 49 23 is_stmt 1       ## native/lib.c:49:23
	cvtsi2sdq	-24(%rbp), %xmm0
	.loc	3 49 20 is_stmt 0       ## native/lib.c:49:20
	addsd	-32(%rbp), %xmm0
Ltmp49:
	##DEBUG_VALUE: asm_1_nif_fi:result <- %xmm0
	.loc	3 50 9 is_stmt 1        ## native/lib.c:50:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp50:
	.loc	3 0 9 is_stmt 0         ## native/lib.c:0:9
	jmp	LBB6_4
Ltmp51:
LBB6_3:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 52 35 is_stmt 1       ## native/lib.c:52:35
	leaq	L_.str(%rip), %rsi
	movq	%r14, %rdi
	callq	_enif_make_atom
	.loc	3 52 9 is_stmt 0        ## native/lib.c:52:9
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
Ltmp52:
LBB6_4:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 53 1 is_stmt 1        ## native/lib.c:53:1
	addq	$16, %rsp
	popq	%rbx
Ltmp53:
	popq	%r14
Ltmp54:
	popq	%rbp
	retq
Ltmp55:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ff
_asm_1_nif_ff:                          ## @asm_1_nif_ff
Lfunc_begin7:
	.loc	3 56 0                  ## native/lib.c:56:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	##DEBUG_VALUE: asm_1_nif_ff:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_ff:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rdx
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp56:
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	.loc	3 58 26 prologue_end    ## native/lib.c:58:26
	movq	(%rbx), %rsi
Ltmp57:
	.loc	3 0 26 is_stmt 0        ## native/lib.c:0:26
	leaq	-32(%rbp), %rdx
Ltmp58:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 58 5                  ## native/lib.c:58:5
	callq	_enif_get_double
	.loc	3 58 39                 ## native/lib.c:58:39
	testl	%eax, %eax
Ltmp59:
	.loc	3 58 5                  ## native/lib.c:58:5
	je	LBB7_3
Ltmp60:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 61 26 is_stmt 1       ## native/lib.c:61:26
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp61:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 61 5 is_stmt 0        ## native/lib.c:61:5
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 61 39                 ## native/lib.c:61:39
	testl	%eax, %eax
Ltmp62:
	.loc	3 61 5                  ## native/lib.c:61:5
	je	LBB7_3
Ltmp63:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 64 18 is_stmt 1       ## native/lib.c:64:18
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
Ltmp64:
	##DEBUG_VALUE: asm_1_nif_ff:a <- %xmm0
	.loc	3 64 20 is_stmt 0       ## native/lib.c:64:20
	addsd	-24(%rbp), %xmm0
Ltmp65:
	##DEBUG_VALUE: asm_1_nif_ff:result <- %xmm0
	.loc	3 65 9 is_stmt 1        ## native/lib.c:65:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp66:
	.loc	3 0 9 is_stmt 0         ## native/lib.c:0:9
	jmp	LBB7_4
Ltmp67:
LBB7_3:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 67 35 is_stmt 1       ## native/lib.c:67:35
	leaq	L_.str(%rip), %rsi
	movq	%r14, %rdi
	callq	_enif_make_atom
	.loc	3 67 9 is_stmt 0        ## native/lib.c:67:9
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
Ltmp68:
LBB7_4:
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 68 1 is_stmt 1        ## native/lib.c:68:1
	addq	$16, %rsp
	popq	%rbx
Ltmp69:
	popq	%r14
Ltmp70:
	popq	%rbp
	retq
Ltmp71:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.globl	_nif_init               ## -- Begin function nif_init
	.p2align	4, 0x90
_nif_init:                              ## @nif_init
Lfunc_begin8:
	.loc	3 79 0                  ## native/lib.c:79:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp72:
	.loc	3 79 1 prologue_end     ## native/lib.c:79:1
	leaq	_nif_init.entry(%rip), %rax
	popq	%rbp
	retq
Ltmp73:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ArgumentError"

L_.str.1:                               ## @.str.1
	.asciz	"asm_1_nif_ii"

L_.str.2:                               ## @.str.2
	.asciz	"asm_1_nif_if"

L_.str.3:                               ## @.str.3
	.asciz	"asm_1_nif_fi"

L_.str.4:                               ## @.str.4
	.asciz	"asm_1_nif_ff"

	.section	__DATA,__data
	.p2align	4               ## @nif_funcs
_nif_funcs:
	.quad	L_.str.1
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ii
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.2
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_if
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.3
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_fi
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.4
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ff
	.long	0                       ## 0x0
	.space	4

	.p2align	3               ## @nif_init.entry
_nif_init.entry:
	.long	2                       ## 0x2
	.long	14                      ## 0xe
	.quad	L_.str.5
	.long	4                       ## 0x4
	.space	4
	.quad	_nif_funcs
	.quad	_load
	.quad	_reload
	.quad	_upgrade
	.quad	_unload
	.quad	L_.str.6
	.long	1                       ## 0x1
	.space	4
	.quad	24                      ## 0x18
	.quad	L_.str.7

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"Elixir.NifLlvm"

L_.str.6:                               ## @.str.6
	.asciz	"beam.vanilla"

L_.str.7:                               ## @.str.7
	.asciz	"erts-10.0 (OTP-21)"

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"clang version 6.0.1 (tags/RELEASE_601/final)" ## string offset=0
	.asciz	"native/lib.c"          ## string offset=45
	.asciz	"/Users/zacky/github/nif_llvm" ## string offset=58
	.asciz	"nif_funcs"             ## string offset=87
	.asciz	"ErlNifFunc"            ## string offset=97
	.asciz	"enif_func_t"           ## string offset=108
	.asciz	"name"                  ## string offset=120
	.asciz	"char"                  ## string offset=125
	.asciz	"arity"                 ## string offset=130
	.asciz	"unsigned int"          ## string offset=136
	.asciz	"fptr"                  ## string offset=149
	.asciz	"ERL_NIF_TERM"          ## string offset=154
	.asciz	"ErlNifUInt"            ## string offset=167
	.asciz	"ErlNapiUInt"           ## string offset=178
	.asciz	"ErlNapiUInt64"         ## string offset=190
	.asciz	"long unsigned int"     ## string offset=204
	.asciz	"ErlNifEnv"             ## string offset=222
	.asciz	"enif_environment_t"    ## string offset=232
	.asciz	"int"                   ## string offset=251
	.asciz	"flags"                 ## string offset=255
	.asciz	"sizetype"              ## string offset=261
	.asciz	"entry"                 ## string offset=270
	.asciz	"ErlNifEntry"           ## string offset=276
	.asciz	"enif_entry_t"          ## string offset=288
	.asciz	"major"                 ## string offset=301
	.asciz	"minor"                 ## string offset=307
	.asciz	"num_of_funcs"          ## string offset=313
	.asciz	"funcs"                 ## string offset=326
	.asciz	"load"                  ## string offset=332
	.asciz	"reload"                ## string offset=337
	.asciz	"upgrade"               ## string offset=344
	.asciz	"unload"                ## string offset=352
	.asciz	"vm_variant"            ## string offset=359
	.asciz	"options"               ## string offset=370
	.asciz	"sizeof_ErlNifResourceTypeInit" ## string offset=378
	.asciz	"size_t"                ## string offset=408
	.asciz	"__darwin_size_t"       ## string offset=415
	.asciz	"min_erts"              ## string offset=431
	.asciz	"__uint16_t"            ## string offset=440
	.asciz	"unsigned short"        ## string offset=451
	.asciz	"__int32_t"             ## string offset=466
	.asciz	"double"                ## string offset=476
	.asciz	"asm_1_nif_ii"          ## string offset=483
	.asciz	"asm_1_nif_if"          ## string offset=496
	.asciz	"asm_1_nif_fi"          ## string offset=509
	.asciz	"asm_1_nif_ff"          ## string offset=522
	.asciz	"nif_init"              ## string offset=535
	.asciz	"env"                   ## string offset=544
	.asciz	"priv"                  ## string offset=548
	.asciz	"info"                  ## string offset=553
	.asciz	"old_priv"              ## string offset=558
	.asciz	"argc"                  ## string offset=567
	.asciz	"argv"                  ## string offset=572
	.asciz	"a"                     ## string offset=577
	.asciz	"long int"              ## string offset=579
	.asciz	"b"                     ## string offset=588
	.asciz	"result"                ## string offset=590
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
Lset0 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset0
Lset1 = Ltmp8-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset2 = Ltmp8-Lfunc_begin0
	.quad	Lset2
Lset3 = Ltmp24-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc1:
Lset4 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset4
Lset5 = Ltmp9-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc2:
Lset6 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset6
Lset7 = Ltmp8-Lfunc_begin0
	.quad	Lset7
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset8 = Ltmp8-Lfunc_begin0
	.quad	Lset8
Lset9 = Ltmp23-Lfunc_begin0
	.quad	Lset9
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc3:
Lset10 = Ltmp10-Lfunc_begin0
	.quad	Lset10
Lset11 = Ltmp16-Lfunc_begin0
	.quad	Lset11
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset12 = Ltmp16-Lfunc_begin0
	.quad	Lset12
Lset13 = Ltmp19-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
Lset14 = Ltmp20-Lfunc_begin0
	.quad	Lset14
Lset15 = Ltmp22-Lfunc_begin0
	.quad	Lset15
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc4:
Lset16 = Ltmp13-Lfunc_begin0
	.quad	Lset16
Lset17 = Ltmp17-Lfunc_begin0
	.quad	Lset17
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
Lset18 = Ltmp17-Lfunc_begin0
	.quad	Lset18
Lset19 = Ltmp19-Lfunc_begin0
	.quad	Lset19
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset20 = Ltmp20-Lfunc_begin0
	.quad	Lset20
Lset21 = Ltmp21-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc5:
Lset22 = Ltmp21-Lfunc_begin0
	.quad	Lset22
Lset23 = Ltmp22-Lfunc_begin0
	.quad	Lset23
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc6:
Lset24 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset24
Lset25 = Ltmp26-Lfunc_begin0
	.quad	Lset25
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset26 = Ltmp26-Lfunc_begin0
	.quad	Lset26
Lset27 = Ltmp39-Lfunc_begin0
	.quad	Lset27
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc7:
Lset28 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset28
Lset29 = Ltmp27-Lfunc_begin0
	.quad	Lset29
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc8:
Lset30 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset30
Lset31 = Ltmp26-Lfunc_begin0
	.quad	Lset31
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset32 = Ltmp26-Lfunc_begin0
	.quad	Lset32
Lset33 = Ltmp38-Lfunc_begin0
	.quad	Lset33
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc9:
Lset34 = Ltmp28-Lfunc_begin0
	.quad	Lset34
Lset35 = Lfunc_end5-Lfunc_begin0
	.quad	Lset35
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc10:
Lset36 = Ltmp31-Lfunc_begin0
	.quad	Lset36
Lset37 = Lfunc_end5-Lfunc_begin0
	.quad	Lset37
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc11:
Lset38 = Ltmp34-Lfunc_begin0
	.quad	Lset38
Lset39 = Ltmp35-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc12:
Lset40 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset40
Lset41 = Ltmp41-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset42 = Ltmp41-Lfunc_begin0
	.quad	Lset42
Lset43 = Ltmp54-Lfunc_begin0
	.quad	Lset43
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc13:
Lset44 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset44
Lset45 = Ltmp42-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc14:
Lset46 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset46
Lset47 = Ltmp41-Lfunc_begin0
	.quad	Lset47
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset48 = Ltmp41-Lfunc_begin0
	.quad	Lset48
Lset49 = Ltmp53-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc15:
Lset50 = Ltmp43-Lfunc_begin0
	.quad	Lset50
Lset51 = Lfunc_end6-Lfunc_begin0
	.quad	Lset51
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc16:
Lset52 = Ltmp46-Lfunc_begin0
	.quad	Lset52
Lset53 = Lfunc_end6-Lfunc_begin0
	.quad	Lset53
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc17:
Lset54 = Ltmp49-Lfunc_begin0
	.quad	Lset54
Lset55 = Ltmp50-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc18:
Lset56 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset56
Lset57 = Ltmp56-Lfunc_begin0
	.quad	Lset57
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset58 = Ltmp56-Lfunc_begin0
	.quad	Lset58
Lset59 = Ltmp70-Lfunc_begin0
	.quad	Lset59
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc19:
Lset60 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset60
Lset61 = Ltmp57-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc20:
Lset62 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset62
Lset63 = Ltmp56-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset64 = Ltmp56-Lfunc_begin0
	.quad	Lset64
Lset65 = Ltmp69-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc21:
Lset66 = Ltmp58-Lfunc_begin0
	.quad	Lset66
Lset67 = Ltmp64-Lfunc_begin0
	.quad	Lset67
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset68 = Ltmp64-Lfunc_begin0
	.quad	Lset68
Lset69 = Ltmp65-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
Lset70 = Ltmp67-Lfunc_begin0
	.quad	Lset70
Lset71 = Lfunc_end7-Lfunc_begin0
	.quad	Lset71
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc22:
Lset72 = Ltmp61-Lfunc_begin0
	.quad	Lset72
Lset73 = Lfunc_end7-Lfunc_begin0
	.quad	Lset73
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc23:
Lset74 = Ltmp65-Lfunc_begin0
	.quad	Lset74
Lset75 = Ltmp66-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	1384                    ## Length of Unit
	.short	4                       ## DWARF version number
Lset76 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset76
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x561 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	45                      ## DW_AT_name
Lset77 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset77
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset78 = Lfunc_end8-Lfunc_begin0        ## DW_AT_high_pc
	.long	Lset78
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	71                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_nif_funcs
	.byte	3                       ## Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	282                     ## DW_AT_type
	.byte	4                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x4b:0xb DW_TAG_typedef
	.long	86                      ## DW_AT_type
	.long	97                      ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	112                     ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x56:0x39 DW_TAG_structure_type
	.long	108                     ## DW_AT_name
	.byte	32                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	106                     ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x5e:0xc DW_TAG_member
	.long	120                     ## DW_AT_name
	.long	143                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	108                     ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x6a:0xc DW_TAG_member
	.long	130                     ## DW_AT_name
	.long	160                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	109                     ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x76:0xc DW_TAG_member
	.long	149                     ## DW_AT_name
	.long	167                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	110                     ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x82:0xc DW_TAG_member
	.long	255                     ## DW_AT_name
	.long	160                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x8f:0x5 DW_TAG_pointer_type
	.long	148                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0x94:0x5 DW_TAG_const_type
	.long	153                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x99:0x7 DW_TAG_base_type
	.long	125                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	10                      ## Abbrev [10] 0xa0:0x7 DW_TAG_base_type
	.long	136                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	8                       ## Abbrev [8] 0xa7:0x5 DW_TAG_pointer_type
	.long	172                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0xac:0x15 DW_TAG_subroutine_type
	.long	193                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	12                      ## Abbrev [12] 0xb1:0x5 DW_TAG_formal_parameter
	.long	244                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0xb6:0x5 DW_TAG_formal_parameter
	.long	265                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0xbb:0x5 DW_TAG_formal_parameter
	.long	272                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0xc1:0xb DW_TAG_typedef
	.long	204                     ## DW_AT_type
	.long	154                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0xcc:0xb DW_TAG_typedef
	.long	215                     ## DW_AT_type
	.long	167                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0xd7:0xb DW_TAG_typedef
	.long	226                     ## DW_AT_type
	.long	178                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0xe2:0xb DW_TAG_typedef
	.long	237                     ## DW_AT_type
	.long	190                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	110                     ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0xed:0x7 DW_TAG_base_type
	.long	204                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	8                       ## Abbrev [8] 0xf4:0x5 DW_TAG_pointer_type
	.long	249                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xf9:0xb DW_TAG_typedef
	.long	260                     ## DW_AT_type
	.long	222                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.byte	13                      ## Abbrev [13] 0x104:0x5 DW_TAG_structure_type
	.long	232                     ## DW_AT_name
                                        ## DW_AT_declaration
	.byte	10                      ## Abbrev [10] 0x109:0x7 DW_TAG_base_type
	.long	251                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	8                       ## Abbrev [8] 0x110:0x5 DW_TAG_pointer_type
	.long	277                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0x115:0x5 DW_TAG_const_type
	.long	193                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x11a:0x7 DW_TAG_base_type
	.long	261                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	15                      ## Abbrev [15] 0x121:0x2f DW_TAG_subprogram
	.quad	Lfunc_begin8            ## DW_AT_low_pc
Lset79 = Lfunc_end8-Lfunc_begin8        ## DW_AT_high_pc
	.long	Lset79
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	535                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	1375                    ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x13a:0x15 DW_TAG_variable
	.long	270                     ## DW_AT_name
	.long	336                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_nif_init.entry
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x150:0xb DW_TAG_typedef
	.long	347                     ## DW_AT_type
	.long	276                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	138                     ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x15b:0xa5 DW_TAG_structure_type
	.long	288                     ## DW_AT_name
	.byte	96                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	115                     ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x163:0xc DW_TAG_member
	.long	301                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	117                     ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x16f:0xc DW_TAG_member
	.long	307                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	118                     ## DW_AT_decl_line
	.byte	4                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x17b:0xc DW_TAG_member
	.long	120                     ## DW_AT_name
	.long	143                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	119                     ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x187:0xc DW_TAG_member
	.long	313                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x193:0xc DW_TAG_member
	.long	326                     ## DW_AT_name
	.long	512                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	121                     ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x19f:0xc DW_TAG_member
	.long	332                     ## DW_AT_name
	.long	517                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	122                     ## DW_AT_decl_line
	.byte	32                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1ab:0xc DW_TAG_member
	.long	337                     ## DW_AT_name
	.long	517                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	123                     ## DW_AT_decl_line
	.byte	40                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1b7:0xc DW_TAG_member
	.long	344                     ## DW_AT_name
	.long	549                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1c3:0xc DW_TAG_member
	.long	352                     ## DW_AT_name
	.long	580                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	125                     ## DW_AT_decl_line
	.byte	56                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1cf:0xc DW_TAG_member
	.long	359                     ## DW_AT_name
	.long	143                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	128                     ## DW_AT_decl_line
	.byte	64                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1db:0xc DW_TAG_member
	.long	370                     ## DW_AT_name
	.long	160                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	131                     ## DW_AT_decl_line
	.byte	72                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1e7:0xc DW_TAG_member
	.long	378                     ## DW_AT_name
	.long	597                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	134                     ## DW_AT_decl_line
	.byte	80                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1f3:0xc DW_TAG_member
	.long	431                     ## DW_AT_name
	.long	143                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.byte	88                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x200:0x5 DW_TAG_pointer_type
	.long	75                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x205:0x5 DW_TAG_pointer_type
	.long	522                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x20a:0x15 DW_TAG_subroutine_type
	.long	265                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	12                      ## Abbrev [12] 0x20f:0x5 DW_TAG_formal_parameter
	.long	244                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x214:0x5 DW_TAG_formal_parameter
	.long	543                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x219:0x5 DW_TAG_formal_parameter
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x21f:0x5 DW_TAG_pointer_type
	.long	548                     ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x224:0x1 DW_TAG_pointer_type
	.byte	8                       ## Abbrev [8] 0x225:0x5 DW_TAG_pointer_type
	.long	554                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x22a:0x1a DW_TAG_subroutine_type
	.long	265                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	12                      ## Abbrev [12] 0x22f:0x5 DW_TAG_formal_parameter
	.long	244                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x234:0x5 DW_TAG_formal_parameter
	.long	543                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x239:0x5 DW_TAG_formal_parameter
	.long	543                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x23e:0x5 DW_TAG_formal_parameter
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x244:0x5 DW_TAG_pointer_type
	.long	585                     ## DW_AT_type
	.byte	17                      ## Abbrev [17] 0x249:0xc DW_TAG_subroutine_type
                                        ## DW_AT_prototyped
	.byte	12                      ## Abbrev [12] 0x24a:0x5 DW_TAG_formal_parameter
	.long	244                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x24f:0x5 DW_TAG_formal_parameter
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x255:0xb DW_TAG_typedef
	.long	608                     ## DW_AT_type
	.long	408                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x260:0xb DW_TAG_typedef
	.long	237                     ## DW_AT_type
	.long	415                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x26b:0xb DW_TAG_typedef
	.long	630                     ## DW_AT_type
	.long	440                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x276:0x7 DW_TAG_base_type
	.long	451                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x27d:0xb DW_TAG_typedef
	.long	265                     ## DW_AT_type
	.long	466                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x288:0x7 DW_TAG_base_type
	.long	476                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x28f:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset80 = Lfunc_end0-Lfunc_begin0        ## DW_AT_high_pc
	.long	Lset80
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	332                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x2a8:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	544                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2b5:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	548                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2c2:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	553                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	4                       ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x2d0:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
Lset81 = Lfunc_end1-Lfunc_begin1        ## DW_AT_high_pc
	.long	Lset81
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	352                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x2e5:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	544                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x2f2:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	548                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x300:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
Lset82 = Lfunc_end2-Lfunc_begin2        ## DW_AT_high_pc
	.long	Lset82
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	337                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x319:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	544                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x326:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	548                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x333:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	553                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x341:0x4e DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
Lset83 = Lfunc_end3-Lfunc_begin3        ## DW_AT_high_pc
	.long	Lset83
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	344                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	19                      ## Abbrev [19] 0x35a:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	544                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x367:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	548                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x374:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	558                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x381:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	82
	.long	553                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x38f:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
Lset84 = Lfunc_end4-Lfunc_begin4        ## DW_AT_high_pc
	.long	Lset84
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	483                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	21                      ## Abbrev [21] 0x3a8:0xf DW_TAG_formal_parameter
Lset85 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset85
	.long	544                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x3b7:0xf DW_TAG_formal_parameter
Lset86 = Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset86
	.long	567                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x3c6:0xf DW_TAG_formal_parameter
Lset87 = Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset87
	.long	572                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x3d5:0xf DW_TAG_variable
Lset88 = Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset88
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.long	1380                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x3e4:0xf DW_TAG_variable
Lset89 = Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset89
	.long	588                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.long	1380                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x3f3:0xf DW_TAG_variable
Lset90 = Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset90
	.long	590                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.long	1380                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x403:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
Lset91 = Lfunc_end5-Lfunc_begin5        ## DW_AT_high_pc
	.long	Lset91
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	496                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	21                      ## Abbrev [21] 0x41c:0xf DW_TAG_formal_parameter
Lset92 = Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset92
	.long	544                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x42b:0xf DW_TAG_formal_parameter
Lset93 = Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset93
	.long	567                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x43a:0xf DW_TAG_formal_parameter
Lset94 = Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset94
	.long	572                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x449:0xf DW_TAG_variable
Lset95 = Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset95
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.long	1380                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x458:0xf DW_TAG_variable
Lset96 = Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset96
	.long	588                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x467:0xf DW_TAG_variable
Lset97 = Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset97
	.long	590                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x477:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
Lset98 = Lfunc_end6-Lfunc_begin6        ## DW_AT_high_pc
	.long	Lset98
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	509                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	21                      ## Abbrev [21] 0x490:0xf DW_TAG_formal_parameter
Lset99 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset99
	.long	544                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x49f:0xf DW_TAG_formal_parameter
Lset100 = Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset100
	.long	567                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x4ae:0xf DW_TAG_formal_parameter
Lset101 = Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset101
	.long	572                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x4bd:0xf DW_TAG_variable
Lset102 = Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset102
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x4cc:0xf DW_TAG_variable
Lset103 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset103
	.long	588                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	42                      ## DW_AT_decl_line
	.long	1380                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x4db:0xf DW_TAG_variable
Lset104 = Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset104
	.long	590                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	49                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x4eb:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
Lset105 = Lfunc_end7-Lfunc_begin7       ## DW_AT_high_pc
	.long	Lset105
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	522                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	56                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	21                      ## Abbrev [21] 0x504:0xf DW_TAG_formal_parameter
Lset106 = Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset106
	.long	544                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	56                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x513:0xf DW_TAG_formal_parameter
Lset107 = Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset107
	.long	567                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	56                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x522:0xf DW_TAG_formal_parameter
Lset108 = Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset108
	.long	572                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	56                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x531:0xf DW_TAG_variable
Lset109 = Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset109
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x540:0xf DW_TAG_variable
Lset110 = Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset110
	.long	588                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x54f:0xf DW_TAG_variable
Lset111 = Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset111
	.long	590                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	648                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x55f:0x5 DW_TAG_pointer_type
	.long	336                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x564:0x7 DW_TAG_base_type
	.long	579                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	11                      ## Header Bucket Count
	.long	11                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	0                       ## Bucket 2
	.long	1                       ## Bucket 3
	.long	2                       ## Bucket 4
	.long	4                       ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	6                       ## Bucket 8
	.long	10                      ## Bucket 9
	.long	-1                      ## Bucket 10
	.long	258013527               ## Hash in Bucket 2
	.long	2002484960              ## Hash in Bucket 3
	.long	422307164               ## Hash in Bucket 4
	.long	550386632               ## Hash in Bucket 4
	.long	-1847612931             ## Hash in Bucket 5
	.long	-1847612832             ## Hash in Bucket 5
	.long	1055338765              ## Hash in Bucket 8
	.long	2090478981              ## Hash in Bucket 8
	.long	-1847612928             ## Hash in Bucket 8
	.long	-1847612829             ## Hash in Bucket 8
	.long	-2021626987             ## Hash in Bucket 9
	.long	LNames2-Lnames_begin    ## Offset in Bucket 2
	.long	LNames8-Lnames_begin    ## Offset in Bucket 3
	.long	LNames5-Lnames_begin    ## Offset in Bucket 4
	.long	LNames3-Lnames_begin    ## Offset in Bucket 4
	.long	LNames7-Lnames_begin    ## Offset in Bucket 5
	.long	LNames9-Lnames_begin    ## Offset in Bucket 5
	.long	LNames6-Lnames_begin    ## Offset in Bucket 8
	.long	LNames0-Lnames_begin    ## Offset in Bucket 8
	.long	LNames1-Lnames_begin    ## Offset in Bucket 8
	.long	LNames10-Lnames_begin   ## Offset in Bucket 8
	.long	LNames4-Lnames_begin    ## Offset in Bucket 9
LNames2:
	.long	270                     ## entry
	.long	1                       ## Num DIEs
	.long	314
	.long	0
LNames8:
	.long	87                      ## nif_funcs
	.long	1                       ## Num DIEs
	.long	42
	.long	0
LNames5:
	.long	337                     ## reload
	.long	1                       ## Num DIEs
	.long	768
	.long	0
LNames3:
	.long	352                     ## unload
	.long	1                       ## Num DIEs
	.long	720
	.long	0
LNames7:
	.long	522                     ## asm_1_nif_ff
	.long	1                       ## Num DIEs
	.long	1259
	.long	0
LNames9:
	.long	496                     ## asm_1_nif_if
	.long	1                       ## Num DIEs
	.long	1027
	.long	0
LNames6:
	.long	344                     ## upgrade
	.long	1                       ## Num DIEs
	.long	833
	.long	0
LNames0:
	.long	332                     ## load
	.long	1                       ## Num DIEs
	.long	655
	.long	0
LNames1:
	.long	509                     ## asm_1_nif_fi
	.long	1                       ## Num DIEs
	.long	1143
	.long	0
LNames10:
	.long	483                     ## asm_1_nif_ii
	.long	1                       ## Num DIEs
	.long	911
	.long	0
LNames4:
	.long	535                     ## nif_init
	.long	1                       ## Num DIEs
	.long	289
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	10                      ## Header Bucket Count
	.long	20                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	-1                      ## Bucket 4
	.long	4                       ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	8                       ## Bucket 7
	.long	11                      ## Bucket 8
	.long	17                      ## Bucket 9
	.long	-1004470706             ## Hash in Bucket 0
	.long	1212739621              ## Hash in Bucket 1
	.long	1348063351              ## Hash in Bucket 1
	.long	-91109094               ## Hash in Bucket 2
	.long	1212248465              ## Hash in Bucket 5
	.long	1222092635              ## Hash in Bucket 5
	.long	-2056830851             ## Hash in Bucket 5
	.long	-1304652851             ## Hash in Bucket 5
	.long	479863947               ## Hash in Bucket 7
	.long	-282664779              ## Hash in Bucket 7
	.long	-80380739               ## Hash in Bucket 7
	.long	39355888                ## Hash in Bucket 8
	.long	193495088               ## Hash in Bucket 8
	.long	878862258               ## Hash in Bucket 8
	.long	1950534918              ## Hash in Bucket 8
	.long	-1880351968             ## Hash in Bucket 8
	.long	-113419488              ## Hash in Bucket 8
	.long	466678419               ## Hash in Bucket 9
	.long	2090147939              ## Hash in Bucket 9
	.long	-1239759867             ## Hash in Bucket 9
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes11-Ltypes_begin   ## Offset in Bucket 1
	.long	Ltypes13-Ltypes_begin   ## Offset in Bucket 2
	.long	Ltypes8-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes14-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes16-Ltypes_begin   ## Offset in Bucket 5
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 7
	.long	Ltypes10-Ltypes_begin   ## Offset in Bucket 7
	.long	Ltypes15-Ltypes_begin   ## Offset in Bucket 7
	.long	Ltypes7-Ltypes_begin    ## Offset in Bucket 8
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 8
	.long	Ltypes12-Ltypes_begin   ## Offset in Bucket 8
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 8
	.long	Ltypes18-Ltypes_begin   ## Offset in Bucket 8
	.long	Ltypes17-Ltypes_begin   ## Offset in Bucket 8
	.long	Ltypes9-Ltypes_begin    ## Offset in Bucket 9
	.long	Ltypes19-Ltypes_begin   ## Offset in Bucket 9
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 9
Ltypes5:
	.long	222                     ## ErlNifEnv
	.long	1                       ## Num DIEs
	.long	249
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	167                     ## ErlNifUInt
	.long	1                       ## Num DIEs
	.long	204
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	276                     ## ErlNifEntry
	.long	1                       ## Num DIEs
	.long	336
	.short	22
	.byte	0
	.long	0
Ltypes13:
	.long	190                     ## ErlNapiUInt64
	.long	1                       ## Num DIEs
	.long	226
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	97                      ## ErlNifFunc
	.long	1                       ## Num DIEs
	.long	75
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	154                     ## ERL_NIF_TERM
	.long	1                       ## Num DIEs
	.long	193
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	440                     ## __uint16_t
	.long	1                       ## Num DIEs
	.long	619
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	136                     ## unsigned int
	.long	1                       ## Num DIEs
	.long	160
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	288                     ## enif_entry_t
	.long	1                       ## Num DIEs
	.long	347
	.short	19
	.byte	0
	.long	0
Ltypes10:
	.long	415                     ## __darwin_size_t
	.long	1                       ## Num DIEs
	.long	608
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	204                     ## long unsigned int
	.long	1                       ## Num DIEs
	.long	237
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	178                     ## ErlNapiUInt
	.long	1                       ## Num DIEs
	.long	215
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	251                     ## int
	.long	1                       ## Num DIEs
	.long	265
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	451                     ## unsigned short
	.long	1                       ## Num DIEs
	.long	630
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	466                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	637
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	579                     ## long int
	.long	1                       ## Num DIEs
	.long	1380
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	476                     ## double
	.long	1                       ## Num DIEs
	.long	648
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	408                     ## size_t
	.long	1                       ## Num DIEs
	.long	597
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	125                     ## char
	.long	1                       ## Num DIEs
	.long	153
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	108                     ## enif_func_t
	.long	1                       ## Num DIEs
	.long	86
	.short	19
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
