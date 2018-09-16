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
	.loc	6 7 0                   ## native/loader.c:7:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	##DEBUG_VALUE: load:env <- %rdi
	##DEBUG_VALUE: load:priv <- %rsi
	##DEBUG_VALUE: load:info <- %rdx
Ltmp0:
	##DEBUG_VALUE: init_nif_llvm:env <- %rdi
	movq	%rdi, %rbx
Ltmp1:
	##DEBUG_VALUE: init_nif_llvm:env <- %rbx
	##DEBUG_VALUE: load:env <- %rbx
	.loc	3 10 47 prologue_end    ## native/lib.c:10:47
	leaq	L_.str(%rip), %rsi
Ltmp2:
	callq	_enif_make_atom
Ltmp3:
	.loc	3 10 21 is_stmt 0       ## native/lib.c:10:21
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 10 19                 ## native/lib.c:10:19
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 11 15 is_stmt 1       ## native/lib.c:11:15
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 11 13 is_stmt 0       ## native/lib.c:11:13
	movq	%rax, _error_atom(%rip)
Ltmp4:
	.loc	6 9 3 is_stmt 1         ## native/loader.c:9:3
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
Ltmp5:
	popq	%rbp
	retq
Ltmp6:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function unload
_unload:                                ## @unload
Lfunc_begin1:
	.loc	6 14 0                  ## native/loader.c:14:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	##DEBUG_VALUE: unload:env <- %rdi
	##DEBUG_VALUE: unload:priv <- %rsi
Ltmp7:
	.loc	6 15 1 prologue_end     ## native/loader.c:15:1
	popq	%rbp
	retq
Ltmp8:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function reload
_reload:                                ## @reload
Lfunc_begin2:
	.loc	6 19 0                  ## native/loader.c:19:0
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
Ltmp9:
	.loc	6 20 3 prologue_end     ## native/loader.c:20:3
	xorl	%eax, %eax
	popq	%rbp
	retq
Ltmp10:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function upgrade
_upgrade:                               ## @upgrade
Lfunc_begin3:
	.loc	6 25 0                  ## native/loader.c:25:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	##DEBUG_VALUE: upgrade:env <- %rdi
	##DEBUG_VALUE: upgrade:priv <- %rsi
	##DEBUG_VALUE: upgrade:old_priv <- %rdx
	##DEBUG_VALUE: upgrade:info <- %rcx
Ltmp11:
	##DEBUG_VALUE: load:env <- %rdi
	##DEBUG_VALUE: load:priv <- %rsi
	##DEBUG_VALUE: load:info <- %rcx
	##DEBUG_VALUE: init_nif_llvm:env <- %rdi
	movq	%rdi, %rbx
Ltmp12:
	##DEBUG_VALUE: init_nif_llvm:env <- %rbx
	##DEBUG_VALUE: load:env <- %rbx
	##DEBUG_VALUE: upgrade:env <- %rbx
	.loc	3 10 47 prologue_end    ## native/lib.c:10:47
	leaq	L_.str(%rip), %rsi
Ltmp13:
	callq	_enif_make_atom
Ltmp14:
	.loc	3 10 21 is_stmt 0       ## native/lib.c:10:21
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 10 19                 ## native/lib.c:10:19
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 11 15 is_stmt 1       ## native/lib.c:11:15
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 11 13 is_stmt 0       ## native/lib.c:11:13
	movq	%rax, _error_atom(%rip)
Ltmp15:
	.loc	6 26 3 is_stmt 1        ## native/loader.c:26:3
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
Ltmp16:
	popq	%rbp
	retq
Ltmp17:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ii
_asm_1_nif_ii:                          ## @asm_1_nif_ii
Lfunc_begin4:
	.loc	3 16 0                  ## native/lib.c:16:0
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
Ltmp18:
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	.loc	3 18 43 prologue_end    ## native/lib.c:18:43
	movq	(%rbx), %rsi
Ltmp19:
	.loc	3 0 43 is_stmt 0        ## native/lib.c:0:43
	leaq	-32(%rbp), %rdx
Ltmp20:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 18 23                 ## native/lib.c:18:23
	callq	_enif_get_long
	.loc	3 18 56                 ## native/lib.c:18:56
	testl	%eax, %eax
Ltmp21:
	.loc	3 18 5                  ## native/lib.c:18:5
	je	LBB4_5
Ltmp22:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 21 43 is_stmt 1       ## native/lib.c:21:43
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp23:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 21 23 is_stmt 0       ## native/lib.c:21:23
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 21 56                 ## native/lib.c:21:56
	testl	%eax, %eax
Ltmp24:
	.loc	3 21 5                  ## native/lib.c:21:5
	je	LBB4_5
Ltmp25:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 24 23 is_stmt 1       ## native/lib.c:24:23
	movq	-32(%rbp), %rax
Ltmp26:
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rax
	.loc	3 24 38 is_stmt 0       ## native/lib.c:24:38
	movq	-24(%rbp), %rsi
Ltmp27:
	##DEBUG_VALUE: asm_1_nif_ii:b <- %rsi
	.loc	3 24 36                 ## native/lib.c:24:36
	movabsq	$9223372036854775807, %rcx ## imm = 0x7FFFFFFFFFFFFFFF
	subq	%rsi, %rcx
	.loc	3 24 25                 ## native/lib.c:24:25
	cmpq	%rcx, %rax
Ltmp28:
	.loc	3 24 5                  ## native/lib.c:24:5
	jg	LBB4_3
Ltmp29:
## %bb.4:
	##DEBUG_VALUE: asm_1_nif_ii:b <- %rsi
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rax
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 27 19 is_stmt 1       ## native/lib.c:27:19
	addq	%rax, %rsi
Ltmp30:
	##DEBUG_VALUE: asm_1_nif_ii:result <- %rsi
	.loc	3 28 9                  ## native/lib.c:28:9
	movq	%r14, %rdi
	callq	_enif_make_long
Ltmp31:
LBB4_6:
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 31 1                  ## native/lib.c:31:1
	addq	$16, %rsp
	popq	%rbx
Ltmp32:
	popq	%r14
Ltmp33:
	popq	%rbp
	retq
LBB4_5:
Ltmp34:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 30 9                  ## native/lib.c:30:9
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB4_6
Ltmp35:
LBB4_3:
	##DEBUG_VALUE: asm_1_nif_ii:b <- %rsi
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rax
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 25 10                 ## native/lib.c:25:10
	movq	_error_atom(%rip), %rax
Ltmp36:
	.loc	3 0 10 is_stmt 0        ## native/lib.c:0:10
	jmp	LBB4_6
Ltmp37:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_if
_asm_1_nif_if:                          ## @asm_1_nif_if
Lfunc_begin5:
	.loc	3 35 0 is_stmt 1        ## native/lib.c:35:0
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
Ltmp38:
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	.loc	3 38 43 prologue_end    ## native/lib.c:38:43
	movq	(%rbx), %rsi
Ltmp39:
	.loc	3 0 43 is_stmt 0        ## native/lib.c:0:43
	leaq	-32(%rbp), %rdx
Ltmp40:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 38 23                 ## native/lib.c:38:23
	callq	_enif_get_long
	.loc	3 38 56                 ## native/lib.c:38:56
	testl	%eax, %eax
Ltmp41:
	.loc	3 38 5                  ## native/lib.c:38:5
	je	LBB5_3
Ltmp42:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 41 44 is_stmt 1       ## native/lib.c:41:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp43:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 41 23 is_stmt 0       ## native/lib.c:41:23
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 41 57                 ## native/lib.c:41:57
	testl	%eax, %eax
Ltmp44:
	.loc	3 41 5                  ## native/lib.c:41:5
	je	LBB5_3
Ltmp45:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 44 19 is_stmt 1       ## native/lib.c:44:19
	cvtsi2sdq	-32(%rbp), %xmm0
	.loc	3 44 30 is_stmt 0       ## native/lib.c:44:30
	addsd	-24(%rbp), %xmm0
Ltmp46:
	##DEBUG_VALUE: asm_1_nif_if:result <- %xmm0
	.loc	3 45 9 is_stmt 1        ## native/lib.c:45:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp47:
LBB5_4:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 48 1                  ## native/lib.c:48:1
	addq	$16, %rsp
	popq	%rbx
Ltmp48:
	popq	%r14
Ltmp49:
	popq	%rbp
	retq
LBB5_3:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
Ltmp50:
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 47 9                  ## native/lib.c:47:9
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB5_4
Ltmp51:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_fi
_asm_1_nif_fi:                          ## @asm_1_nif_fi
Lfunc_begin6:
	.loc	3 52 0                  ## native/lib.c:52:0
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
Ltmp52:
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	.loc	3 55 44 prologue_end    ## native/lib.c:55:44
	movq	(%rbx), %rsi
Ltmp53:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp54:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 55 23                 ## native/lib.c:55:23
	callq	_enif_get_double
	.loc	3 55 57                 ## native/lib.c:55:57
	testl	%eax, %eax
Ltmp55:
	.loc	3 55 5                  ## native/lib.c:55:5
	je	LBB6_3
Ltmp56:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 58 43 is_stmt 1       ## native/lib.c:58:43
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp57:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 58 23 is_stmt 0       ## native/lib.c:58:23
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 58 56                 ## native/lib.c:58:56
	testl	%eax, %eax
Ltmp58:
	.loc	3 58 5                  ## native/lib.c:58:5
	je	LBB6_3
Ltmp59:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 61 23 is_stmt 1       ## native/lib.c:61:23
	cvtsi2sdq	-24(%rbp), %xmm0
	.loc	3 61 20 is_stmt 0       ## native/lib.c:61:20
	addsd	-32(%rbp), %xmm0
Ltmp60:
	##DEBUG_VALUE: asm_1_nif_fi:result <- %xmm0
	.loc	3 62 9 is_stmt 1        ## native/lib.c:62:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp61:
LBB6_4:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 65 1                  ## native/lib.c:65:1
	addq	$16, %rsp
	popq	%rbx
Ltmp62:
	popq	%r14
Ltmp63:
	popq	%rbp
	retq
LBB6_3:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
Ltmp64:
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 64 9                  ## native/lib.c:64:9
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB6_4
Ltmp65:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ff
_asm_1_nif_ff:                          ## @asm_1_nif_ff
Lfunc_begin7:
	.loc	3 69 0                  ## native/lib.c:69:0
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
Ltmp66:
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	.loc	3 71 44 prologue_end    ## native/lib.c:71:44
	movq	(%rbx), %rsi
Ltmp67:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp68:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 71 23                 ## native/lib.c:71:23
	callq	_enif_get_double
	.loc	3 71 57                 ## native/lib.c:71:57
	testl	%eax, %eax
Ltmp69:
	.loc	3 71 5                  ## native/lib.c:71:5
	je	LBB7_3
Ltmp70:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 74 44 is_stmt 1       ## native/lib.c:74:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp71:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 74 23 is_stmt 0       ## native/lib.c:74:23
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 74 57                 ## native/lib.c:74:57
	testl	%eax, %eax
Ltmp72:
	.loc	3 74 5                  ## native/lib.c:74:5
	je	LBB7_3
Ltmp73:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 77 18 is_stmt 1       ## native/lib.c:77:18
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
Ltmp74:
	##DEBUG_VALUE: asm_1_nif_ff:a <- %xmm0
	.loc	3 77 20 is_stmt 0       ## native/lib.c:77:20
	addsd	-24(%rbp), %xmm0
Ltmp75:
	##DEBUG_VALUE: asm_1_nif_ff:result <- %xmm0
	.loc	3 78 9 is_stmt 1        ## native/lib.c:78:9
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp76:
LBB7_4:
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 81 1                  ## native/lib.c:81:1
	addq	$16, %rsp
	popq	%rbx
Ltmp77:
	popq	%r14
Ltmp78:
	popq	%rbp
	retq
LBB7_3:
Ltmp79:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 80 9                  ## native/lib.c:80:9
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB7_4
Ltmp80:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.globl	_nif_init               ## -- Begin function nif_init
	.p2align	4, 0x90
_nif_init:                              ## @nif_init
Lfunc_begin8:
	.loc	3 93 0                  ## native/lib.c:93:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp81:
	.loc	3 93 1 prologue_end     ## native/lib.c:93:1
	leaq	_nif_init.entry(%rip), %rax
	popq	%rbp
	retq
Ltmp82:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ArithmeticError"

.zerofill __DATA,__bss,_arithmetic_error,8,3 ## @arithmetic_error
L_.str.1:                               ## @.str.1
	.asciz	"error"

.zerofill __DATA,__bss,_error_atom,8,3  ## @error_atom
L_.str.2:                               ## @.str.2
	.asciz	"asm_1_nif_ii"

L_.str.3:                               ## @.str.3
	.asciz	"asm_1_nif_if"

L_.str.4:                               ## @.str.4
	.asciz	"asm_1_nif_fi"

L_.str.5:                               ## @.str.5
	.asciz	"asm_1_nif_ff"

	.section	__DATA,__data
	.p2align	4               ## @nif_funcs
_nif_funcs:
	.quad	L_.str.2
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ii
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.3
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_if
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.4
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_fi
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.5
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ff
	.long	0                       ## 0x0
	.space	4

	.p2align	3               ## @nif_init.entry
_nif_init.entry:
	.long	2                       ## 0x2
	.long	14                      ## 0xe
	.quad	L_.str.6
	.long	4                       ## 0x4
	.space	4
	.quad	_nif_funcs
	.quad	_load
	.quad	_reload
	.quad	_upgrade
	.quad	_unload
	.quad	L_.str.7
	.long	1                       ## 0x1
	.space	4
	.quad	24                      ## 0x18
	.quad	L_.str.8

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"Elixir.NifLlvm"

L_.str.7:                               ## @.str.7
	.asciz	"beam.vanilla"

L_.str.8:                               ## @.str.8
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
	.asciz	"arithmetic_error"      ## string offset=440
	.asciz	"error_atom"            ## string offset=457
	.asciz	"__uint16_t"            ## string offset=468
	.asciz	"unsigned short"        ## string offset=479
	.asciz	"__int32_t"             ## string offset=494
	.asciz	"double"                ## string offset=504
	.asciz	"init_nif_llvm"         ## string offset=511
	.asciz	"env"                   ## string offset=525
	.asciz	"priv"                  ## string offset=529
	.asciz	"info"                  ## string offset=534
	.asciz	"asm_1_nif_ii"          ## string offset=539
	.asciz	"asm_1_nif_if"          ## string offset=552
	.asciz	"asm_1_nif_fi"          ## string offset=565
	.asciz	"asm_1_nif_ff"          ## string offset=578
	.asciz	"nif_init"              ## string offset=591
	.asciz	"old_priv"              ## string offset=600
	.asciz	"argc"                  ## string offset=609
	.asciz	"argv"                  ## string offset=614
	.asciz	"a"                     ## string offset=619
	.asciz	"long int"              ## string offset=621
	.asciz	"b"                     ## string offset=630
	.asciz	"result"                ## string offset=632
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
Lset0 = Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
Lset1 = Ltmp1-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset2 = Ltmp1-Lfunc_begin0
	.quad	Lset2
Lset3 = Ltmp5-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc1:
Lset4 = Lfunc_begin0-Lfunc_begin0
	.quad	Lset4
Lset5 = Ltmp2-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc2:
Lset6 = Lfunc_begin0-Lfunc_begin0
	.quad	Lset6
Lset7 = Ltmp3-Lfunc_begin0
	.quad	Lset7
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc3:
Lset8 = Ltmp0-Lfunc_begin0
	.quad	Lset8
Lset9 = Ltmp1-Lfunc_begin0
	.quad	Lset9
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset10 = Ltmp1-Lfunc_begin0
	.quad	Lset10
Lset11 = Ltmp5-Lfunc_begin0
	.quad	Lset11
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc4:
Lset12 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset12
Lset13 = Ltmp12-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset14 = Ltmp12-Lfunc_begin0
	.quad	Lset14
Lset15 = Ltmp16-Lfunc_begin0
	.quad	Lset15
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc5:
Lset16 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset16
Lset17 = Ltmp13-Lfunc_begin0
	.quad	Lset17
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc6:
Lset18 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset18
Lset19 = Ltmp14-Lfunc_begin0
	.quad	Lset19
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc7:
Lset20 = Lfunc_begin3-Lfunc_begin0
	.quad	Lset20
Lset21 = Ltmp14-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc8:
Lset22 = Ltmp11-Lfunc_begin0
	.quad	Lset22
Lset23 = Ltmp12-Lfunc_begin0
	.quad	Lset23
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset24 = Ltmp12-Lfunc_begin0
	.quad	Lset24
Lset25 = Ltmp16-Lfunc_begin0
	.quad	Lset25
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc9:
Lset26 = Ltmp11-Lfunc_begin0
	.quad	Lset26
Lset27 = Ltmp13-Lfunc_begin0
	.quad	Lset27
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc10:
Lset28 = Ltmp11-Lfunc_begin0
	.quad	Lset28
Lset29 = Ltmp14-Lfunc_begin0
	.quad	Lset29
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc11:
Lset30 = Ltmp11-Lfunc_begin0
	.quad	Lset30
Lset31 = Ltmp12-Lfunc_begin0
	.quad	Lset31
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset32 = Ltmp12-Lfunc_begin0
	.quad	Lset32
Lset33 = Ltmp16-Lfunc_begin0
	.quad	Lset33
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc12:
Lset34 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset34
Lset35 = Ltmp18-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset36 = Ltmp18-Lfunc_begin0
	.quad	Lset36
Lset37 = Ltmp33-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset38 = Ltmp34-Lfunc_begin0
	.quad	Lset38
Lset39 = Lfunc_end4-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc13:
Lset40 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset40
Lset41 = Ltmp19-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc14:
Lset42 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset42
Lset43 = Ltmp18-Lfunc_begin0
	.quad	Lset43
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset44 = Ltmp18-Lfunc_begin0
	.quad	Lset44
Lset45 = Ltmp32-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset46 = Ltmp34-Lfunc_begin0
	.quad	Lset46
Lset47 = Lfunc_end4-Lfunc_begin0
	.quad	Lset47
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc15:
Lset48 = Ltmp20-Lfunc_begin0
	.quad	Lset48
Lset49 = Ltmp26-Lfunc_begin0
	.quad	Lset49
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset50 = Ltmp26-Lfunc_begin0
	.quad	Lset50
Lset51 = Ltmp31-Lfunc_begin0
	.quad	Lset51
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
Lset52 = Ltmp34-Lfunc_begin0
	.quad	Lset52
Lset53 = Ltmp35-Lfunc_begin0
	.quad	Lset53
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset54 = Ltmp35-Lfunc_begin0
	.quad	Lset54
Lset55 = Ltmp36-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc16:
Lset56 = Ltmp23-Lfunc_begin0
	.quad	Lset56
Lset57 = Ltmp27-Lfunc_begin0
	.quad	Lset57
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
Lset58 = Ltmp27-Lfunc_begin0
	.quad	Lset58
Lset59 = Ltmp30-Lfunc_begin0
	.quad	Lset59
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset60 = Ltmp35-Lfunc_begin0
	.quad	Lset60
Lset61 = Lfunc_end4-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc17:
Lset62 = Ltmp30-Lfunc_begin0
	.quad	Lset62
Lset63 = Ltmp31-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc18:
Lset64 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset64
Lset65 = Ltmp38-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset66 = Ltmp38-Lfunc_begin0
	.quad	Lset66
Lset67 = Ltmp49-Lfunc_begin0
	.quad	Lset67
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset68 = Ltmp50-Lfunc_begin0
	.quad	Lset68
Lset69 = Lfunc_end5-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc19:
Lset70 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset70
Lset71 = Ltmp39-Lfunc_begin0
	.quad	Lset71
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc20:
Lset72 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset72
Lset73 = Ltmp38-Lfunc_begin0
	.quad	Lset73
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset74 = Ltmp38-Lfunc_begin0
	.quad	Lset74
Lset75 = Ltmp48-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset76 = Ltmp50-Lfunc_begin0
	.quad	Lset76
Lset77 = Lfunc_end5-Lfunc_begin0
	.quad	Lset77
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc21:
Lset78 = Ltmp40-Lfunc_begin0
	.quad	Lset78
Lset79 = Lfunc_end5-Lfunc_begin0
	.quad	Lset79
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc22:
Lset80 = Ltmp43-Lfunc_begin0
	.quad	Lset80
Lset81 = Lfunc_end5-Lfunc_begin0
	.quad	Lset81
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc23:
Lset82 = Ltmp46-Lfunc_begin0
	.quad	Lset82
Lset83 = Ltmp47-Lfunc_begin0
	.quad	Lset83
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc24:
Lset84 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset84
Lset85 = Ltmp52-Lfunc_begin0
	.quad	Lset85
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset86 = Ltmp52-Lfunc_begin0
	.quad	Lset86
Lset87 = Ltmp63-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset88 = Ltmp64-Lfunc_begin0
	.quad	Lset88
Lset89 = Lfunc_end6-Lfunc_begin0
	.quad	Lset89
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc25:
Lset90 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset90
Lset91 = Ltmp53-Lfunc_begin0
	.quad	Lset91
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc26:
Lset92 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset92
Lset93 = Ltmp52-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset94 = Ltmp52-Lfunc_begin0
	.quad	Lset94
Lset95 = Ltmp62-Lfunc_begin0
	.quad	Lset95
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset96 = Ltmp64-Lfunc_begin0
	.quad	Lset96
Lset97 = Lfunc_end6-Lfunc_begin0
	.quad	Lset97
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc27:
Lset98 = Ltmp54-Lfunc_begin0
	.quad	Lset98
Lset99 = Lfunc_end6-Lfunc_begin0
	.quad	Lset99
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc28:
Lset100 = Ltmp57-Lfunc_begin0
	.quad	Lset100
Lset101 = Lfunc_end6-Lfunc_begin0
	.quad	Lset101
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc29:
Lset102 = Ltmp60-Lfunc_begin0
	.quad	Lset102
Lset103 = Ltmp61-Lfunc_begin0
	.quad	Lset103
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc30:
Lset104 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset104
Lset105 = Ltmp66-Lfunc_begin0
	.quad	Lset105
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset106 = Ltmp66-Lfunc_begin0
	.quad	Lset106
Lset107 = Ltmp78-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset108 = Ltmp79-Lfunc_begin0
	.quad	Lset108
Lset109 = Lfunc_end7-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc31:
Lset110 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset110
Lset111 = Ltmp67-Lfunc_begin0
	.quad	Lset111
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc32:
Lset112 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset112
Lset113 = Ltmp66-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset114 = Ltmp66-Lfunc_begin0
	.quad	Lset114
Lset115 = Ltmp77-Lfunc_begin0
	.quad	Lset115
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset116 = Ltmp79-Lfunc_begin0
	.quad	Lset116
Lset117 = Lfunc_end7-Lfunc_begin0
	.quad	Lset117
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc33:
Lset118 = Ltmp68-Lfunc_begin0
	.quad	Lset118
Lset119 = Ltmp74-Lfunc_begin0
	.quad	Lset119
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset120 = Ltmp74-Lfunc_begin0
	.quad	Lset120
Lset121 = Ltmp75-Lfunc_begin0
	.quad	Lset121
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
Lset122 = Ltmp79-Lfunc_begin0
	.quad	Lset122
Lset123 = Lfunc_end7-Lfunc_begin0
	.quad	Lset123
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc34:
Lset124 = Ltmp71-Lfunc_begin0
	.quad	Lset124
Lset125 = Lfunc_end7-Lfunc_begin0
	.quad	Lset125
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc35:
Lset126 = Ltmp75-Lfunc_begin0
	.quad	Lset126
Lset127 = Ltmp76-Lfunc_begin0
	.quad	Lset127
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
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
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
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
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
	.byte	24                      ## Abbreviation Code
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
	.byte	25                      ## Abbreviation Code
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
	.byte	26                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
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
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	27                      ## Abbreviation Code
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
	.byte	28                      ## Abbreviation Code
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
	.long	1587                    ## Length of Unit
	.short	4                       ## DWARF version number
Lset128 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset128
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x62c DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	45                      ## DW_AT_name
Lset129 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset129
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset130 = Lfunc_end8-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset130
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
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
Lset131 = Lfunc_end8-Lfunc_begin8       ## DW_AT_high_pc
	.long	Lset131
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	93                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	1578                    ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x13a:0x15 DW_TAG_variable
	.long	270                     ## DW_AT_name
	.long	336                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	93                      ## DW_AT_decl_line
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
	.byte	2                       ## Abbrev [2] 0x26b:0x15 DW_TAG_variable
	.long	440                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	5                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_arithmetic_error
	.byte	2                       ## Abbrev [2] 0x280:0x15 DW_TAG_variable
	.long	457                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_error_atom
	.byte	5                       ## Abbrev [5] 0x295:0xb DW_TAG_typedef
	.long	672                     ## DW_AT_type
	.long	468                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x2a0:0x7 DW_TAG_base_type
	.long	479                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x2a7:0xb DW_TAG_typedef
	.long	265                     ## DW_AT_type
	.long	494                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x2b2:0x7 DW_TAG_base_type
	.long	504                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x2b9:0x14 DW_TAG_subprogram
	.long	511                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x2c1:0xb DW_TAG_formal_parameter
	.long	525                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x2cd:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset132 = Lfunc_end0-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset132
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	906                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x2e0:0x9 DW_TAG_formal_parameter
Lset133 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset133
	.long	918                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x2e9:0x9 DW_TAG_formal_parameter
Lset134 = Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset134
	.long	929                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x2f2:0x9 DW_TAG_formal_parameter
Lset135 = Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset135
	.long	940                     ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x2fb:0x1d DW_TAG_inlined_subroutine
	.long	697                     ## DW_AT_abstract_origin
	.quad	Ltmp1                   ## DW_AT_low_pc
Lset136 = Ltmp4-Ltmp1                   ## DW_AT_high_pc
	.long	Lset136
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x30e:0x9 DW_TAG_formal_parameter
Lset137 = Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset137
	.long	705                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	23                      ## Abbrev [23] 0x319:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
Lset138 = Lfunc_end1-Lfunc_begin1       ## DW_AT_high_pc
	.long	Lset138
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	352                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x32e:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	525                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x33b:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	529                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x349:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
Lset139 = Lfunc_end2-Lfunc_begin2       ## DW_AT_high_pc
	.long	Lset139
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	337                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x362:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	525                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x36f:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	529                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x37c:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	534                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	26                      ## Abbrev [26] 0x38a:0x2e DW_TAG_subprogram
	.long	332                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x396:0xb DW_TAG_formal_parameter
	.long	525                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x3a1:0xb DW_TAG_formal_parameter
	.long	529                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x3ac:0xb DW_TAG_formal_parameter
	.long	534                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x3b8:0xa2 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
Lset140 = Lfunc_end3-Lfunc_begin3       ## DW_AT_high_pc
	.long	Lset140
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	344                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x3d1:0xf DW_TAG_formal_parameter
Lset141 = Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset141
	.long	525                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x3e0:0xf DW_TAG_formal_parameter
Lset142 = Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset142
	.long	529                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x3ef:0xf DW_TAG_formal_parameter
Lset143 = Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset143
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x3fe:0xf DW_TAG_formal_parameter
Lset144 = Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset144
	.long	534                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x40d:0x4c DW_TAG_inlined_subroutine
	.long	906                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
Lset145 = Ltmp15-Ltmp12                 ## DW_AT_high_pc
	.long	Lset145
	.byte	6                       ## DW_AT_call_file
	.byte	26                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x420:0x9 DW_TAG_formal_parameter
Lset146 = Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset146
	.long	918                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x429:0x9 DW_TAG_formal_parameter
Lset147 = Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset147
	.long	929                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x432:0x9 DW_TAG_formal_parameter
Lset148 = Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset148
	.long	940                     ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x43b:0x1d DW_TAG_inlined_subroutine
	.long	697                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
Lset149 = Ltmp15-Ltmp12                 ## DW_AT_high_pc
	.long	Lset149
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x44e:0x9 DW_TAG_formal_parameter
Lset150 = Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset150
	.long	705                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x45a:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
Lset151 = Lfunc_end4-Lfunc_begin4       ## DW_AT_high_pc
	.long	Lset151
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	539                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x473:0xf DW_TAG_formal_parameter
Lset152 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset152
	.long	525                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x482:0xf DW_TAG_formal_parameter
Lset153 = Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset153
	.long	609                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x491:0xf DW_TAG_formal_parameter
Lset154 = Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset154
	.long	614                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x4a0:0xf DW_TAG_variable
Lset155 = Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset155
	.long	619                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.long	1583                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x4af:0xf DW_TAG_variable
Lset156 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset156
	.long	630                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
	.long	1583                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x4be:0xf DW_TAG_variable
Lset157 = Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset157
	.long	632                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	27                      ## DW_AT_decl_line
	.long	1583                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x4ce:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
Lset158 = Lfunc_end5-Lfunc_begin5       ## DW_AT_high_pc
	.long	Lset158
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	552                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x4e7:0xf DW_TAG_formal_parameter
Lset159 = Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset159
	.long	525                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4f6:0xf DW_TAG_formal_parameter
Lset160 = Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset160
	.long	609                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x505:0xf DW_TAG_formal_parameter
Lset161 = Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset161
	.long	614                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x514:0xf DW_TAG_variable
Lset162 = Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset162
	.long	619                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.long	1583                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x523:0xf DW_TAG_variable
Lset163 = Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset163
	.long	630                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x532:0xf DW_TAG_variable
Lset164 = Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset164
	.long	632                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x542:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
Lset165 = Lfunc_end6-Lfunc_begin6       ## DW_AT_high_pc
	.long	Lset165
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	565                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x55b:0xf DW_TAG_formal_parameter
Lset166 = Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset166
	.long	525                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x56a:0xf DW_TAG_formal_parameter
Lset167 = Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset167
	.long	609                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x579:0xf DW_TAG_formal_parameter
Lset168 = Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset168
	.long	614                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x588:0xf DW_TAG_variable
Lset169 = Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset169
	.long	619                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	53                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x597:0xf DW_TAG_variable
Lset170 = Ldebug_loc28-Lsection_debug_loc ## DW_AT_location
	.long	Lset170
	.long	630                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	54                      ## DW_AT_decl_line
	.long	1583                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x5a6:0xf DW_TAG_variable
Lset171 = Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset171
	.long	632                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	61                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x5b6:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
Lset172 = Lfunc_end7-Lfunc_begin7       ## DW_AT_high_pc
	.long	Lset172
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	578                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x5cf:0xf DW_TAG_formal_parameter
Lset173 = Ldebug_loc30-Lsection_debug_loc ## DW_AT_location
	.long	Lset173
	.long	525                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5de:0xf DW_TAG_formal_parameter
Lset174 = Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset174
	.long	609                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5ed:0xf DW_TAG_formal_parameter
Lset175 = Ldebug_loc32-Lsection_debug_loc ## DW_AT_location
	.long	Lset175
	.long	614                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x5fc:0xf DW_TAG_variable
Lset176 = Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset176
	.long	619                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x60b:0xf DW_TAG_variable
Lset177 = Ldebug_loc34-Lsection_debug_loc ## DW_AT_location
	.long	Lset177
	.long	630                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x61a:0xf DW_TAG_variable
Lset178 = Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset178
	.long	632                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.long	690                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x62a:0x5 DW_TAG_pointer_type
	.long	336                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x62f:0x7 DW_TAG_base_type
	.long	621                     ## DW_AT_name
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
	.long	14                      ## Header Bucket Count
	.long	14                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	4                       ## Bucket 3
	.long	5                       ## Bucket 4
	.long	6                       ## Bucket 5
	.long	9                       ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	-1                      ## Bucket 8
	.long	10                      ## Bucket 9
	.long	12                      ## Bucket 10
	.long	-1                      ## Bucket 11
	.long	13                      ## Bucket 12
	.long	-1                      ## Bucket 13
	.long	2002484960              ## Hash in Bucket 0
	.long	-1847612931             ## Hash in Bucket 1
	.long	-782949233              ## Hash in Bucket 1
	.long	-1847612832             ## Hash in Bucket 2
	.long	2090478981              ## Hash in Bucket 3
	.long	-1847612928             ## Hash in Bucket 4
	.long	1055338765              ## Hash in Bucket 5
	.long	1408168991              ## Hash in Bucket 5
	.long	-1847612829             ## Hash in Bucket 5
	.long	422307164               ## Hash in Bucket 6
	.long	258013527               ## Hash in Bucket 9
	.long	-2021626987             ## Hash in Bucket 9
	.long	-187743816              ## Hash in Bucket 10
	.long	550386632               ## Hash in Bucket 12
	.long	LNames11-Lnames_begin   ## Offset in Bucket 0
	.long	LNames8-Lnames_begin    ## Offset in Bucket 1
	.long	LNames3-Lnames_begin    ## Offset in Bucket 1
	.long	LNames12-Lnames_begin   ## Offset in Bucket 2
	.long	LNames0-Lnames_begin    ## Offset in Bucket 3
	.long	LNames10-Lnames_begin   ## Offset in Bucket 4
	.long	LNames2-Lnames_begin    ## Offset in Bucket 5
	.long	LNames9-Lnames_begin    ## Offset in Bucket 5
	.long	LNames13-Lnames_begin   ## Offset in Bucket 5
	.long	LNames7-Lnames_begin    ## Offset in Bucket 6
	.long	LNames5-Lnames_begin    ## Offset in Bucket 9
	.long	LNames4-Lnames_begin    ## Offset in Bucket 9
	.long	LNames6-Lnames_begin    ## Offset in Bucket 10
	.long	LNames1-Lnames_begin    ## Offset in Bucket 12
LNames11:
	.long	87                      ## nif_funcs
	.long	1                       ## Num DIEs
	.long	42
	.long	0
LNames8:
	.long	578                     ## asm_1_nif_ff
	.long	1                       ## Num DIEs
	.long	1462
	.long	0
LNames3:
	.long	511                     ## init_nif_llvm
	.long	2                       ## Num DIEs
	.long	763
	.long	1083
	.long	0
LNames12:
	.long	552                     ## asm_1_nif_if
	.long	1                       ## Num DIEs
	.long	1230
	.long	0
LNames0:
	.long	332                     ## load
	.long	2                       ## Num DIEs
	.long	717
	.long	1037
	.long	0
LNames10:
	.long	565                     ## asm_1_nif_fi
	.long	1                       ## Num DIEs
	.long	1346
	.long	0
LNames2:
	.long	344                     ## upgrade
	.long	1                       ## Num DIEs
	.long	952
	.long	0
LNames9:
	.long	457                     ## error_atom
	.long	1                       ## Num DIEs
	.long	640
	.long	0
LNames13:
	.long	539                     ## asm_1_nif_ii
	.long	1                       ## Num DIEs
	.long	1114
	.long	0
LNames7:
	.long	337                     ## reload
	.long	1                       ## Num DIEs
	.long	841
	.long	0
LNames5:
	.long	270                     ## entry
	.long	1                       ## Num DIEs
	.long	314
	.long	0
LNames4:
	.long	591                     ## nif_init
	.long	1                       ## Num DIEs
	.long	289
	.long	0
LNames6:
	.long	440                     ## arithmetic_error
	.long	1                       ## Num DIEs
	.long	619
	.long	0
LNames1:
	.long	352                     ## unload
	.long	1                       ## Num DIEs
	.long	793
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
	.long	468                     ## __uint16_t
	.long	1                       ## Num DIEs
	.long	661
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
	.long	479                     ## unsigned short
	.long	1                       ## Num DIEs
	.long	672
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	494                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	679
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	621                     ## long int
	.long	1                       ## Num DIEs
	.long	1583
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	504                     ## double
	.long	1                       ## Num DIEs
	.long	690
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
