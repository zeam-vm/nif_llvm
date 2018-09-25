	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
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
	.loc	3 12 48 prologue_end    ## native/lib.c:12:48
	leaq	L_.str(%rip), %rsi
Ltmp2:
	callq	_enif_make_atom
Ltmp3:
	.loc	3 12 22 is_stmt 0       ## native/lib.c:12:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 12 20                 ## native/lib.c:12:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 13 13 is_stmt 1       ## native/lib.c:13:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 13 11 is_stmt 0       ## native/lib.c:13:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 14 16 is_stmt 1       ## native/lib.c:14:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 14 14 is_stmt 0       ## native/lib.c:14:14
	movq	%rax, _error_atom(%rip)
	.loc	3 15 27 is_stmt 1       ## native/lib.c:15:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 15 25 is_stmt 0       ## native/lib.c:15:25
	movq	%rax, _arithmetic_error_atom(%rip)
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
	.loc	3 12 48 prologue_end    ## native/lib.c:12:48
	leaq	L_.str(%rip), %rsi
Ltmp13:
	callq	_enif_make_atom
Ltmp14:
	.loc	3 12 22 is_stmt 0       ## native/lib.c:12:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 12 20                 ## native/lib.c:12:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 13 13 is_stmt 1       ## native/lib.c:13:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 13 11 is_stmt 0       ## native/lib.c:13:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 14 16 is_stmt 1       ## native/lib.c:14:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 14 14 is_stmt 0       ## native/lib.c:14:14
	movq	%rax, _error_atom(%rip)
	.loc	3 15 27 is_stmt 1       ## native/lib.c:15:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 15 25 is_stmt 0       ## native/lib.c:15:25
	movq	%rax, _arithmetic_error_atom(%rip)
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
	.loc	3 20 0                  ## native/lib.c:20:0
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
Ltmp18:
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp19:
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	.loc	3 22 44 prologue_end    ## native/lib.c:22:44
	movq	(%rbx), %rsi
Ltmp20:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp21:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 22 24                 ## native/lib.c:22:24
	callq	_enif_get_long
	.loc	3 22 57                 ## native/lib.c:22:57
	testl	%eax, %eax
Ltmp22:
	.loc	3 22 6                  ## native/lib.c:22:6
	je	LBB4_4
Ltmp23:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 25 44 is_stmt 1       ## native/lib.c:25:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp24:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 25 24 is_stmt 0       ## native/lib.c:25:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 25 57                 ## native/lib.c:25:57
	testl	%eax, %eax
Ltmp25:
	.loc	3 25 6                  ## native/lib.c:25:6
	je	LBB4_4
Ltmp26:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 31 48 is_stmt 1       ## native/lib.c:31:48
	movq	-32(%rbp), %rsi
Ltmp27:
	##DEBUG_VALUE: asm_1_nif_ii:a <- %rsi
	.loc	3 31 23 is_stmt 0       ## native/lib.c:31:23
	addq	-24(%rbp), %rsi
Ltmp28:
	.loc	3 31 6                  ## native/lib.c:31:6
	jo	LBB4_5
Ltmp29:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ii:result <- %rsi
	.loc	3 35 32 is_stmt 1       ## native/lib.c:35:32
	movq	_ok_atom(%rip), %rbx
Ltmp30:
	.loc	3 35 41 is_stmt 0       ## native/lib.c:35:41
	movq	%r14, %rdi
	callq	_enif_make_long
Ltmp31:
	movq	%rax, %rcx
Ltmp32:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rbx
	.file	7 "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h"
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp33:
LBB4_6:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp34:
LBB4_7:
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	.loc	3 40 1 is_stmt 1        ## native/lib.c:40:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp35:
	popq	%rbp
	retq
LBB4_4:
Ltmp36:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 37 10                 ## native/lib.c:37:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB4_7
Ltmp37:
LBB4_5:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ii:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- %rbx
	.loc	3 39 32                 ## native/lib.c:39:32
	movq	_error_atom(%rip), %rdx
	.loc	3 39 44 is_stmt 0       ## native/lib.c:39:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp38:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB4_6
Ltmp39:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_uu
_asm_1_nif_uu:                          ## @asm_1_nif_uu
Lfunc_begin5:
	.loc	3 45 0                  ## native/lib.c:45:0
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
	##DEBUG_VALUE: asm_1_nif_uu:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_uu:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rdx
Ltmp40:
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp41:
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	.loc	3 47 45 prologue_end    ## native/lib.c:47:45
	movq	(%rbx), %rsi
Ltmp42:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp43:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 47 24                 ## native/lib.c:47:24
	callq	_enif_get_ulong
	.loc	3 47 58                 ## native/lib.c:47:58
	testl	%eax, %eax
Ltmp44:
	.loc	3 47 6                  ## native/lib.c:47:6
	je	LBB5_4
Ltmp45:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	.loc	3 50 45 is_stmt 1       ## native/lib.c:50:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp46:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 50 24 is_stmt 0       ## native/lib.c:50:24
	movq	%r14, %rdi
	callq	_enif_get_ulong
	.loc	3 50 58                 ## native/lib.c:50:58
	testl	%eax, %eax
Ltmp47:
	.loc	3 50 6                  ## native/lib.c:50:6
	je	LBB5_4
Ltmp48:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	.loc	3 56 48 is_stmt 1       ## native/lib.c:56:48
	movq	-32(%rbp), %rsi
Ltmp49:
	##DEBUG_VALUE: asm_1_nif_uu:a <- %rsi
	.loc	3 56 23 is_stmt 0       ## native/lib.c:56:23
	addq	-24(%rbp), %rsi
Ltmp50:
	.loc	3 56 6                  ## native/lib.c:56:6
	jo	LBB5_5
Ltmp51:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_uu:result <- %rsi
	.loc	3 60 32 is_stmt 1       ## native/lib.c:60:32
	movq	_ok_atom(%rip), %rbx
Ltmp52:
	.loc	3 60 41 is_stmt 0       ## native/lib.c:60:41
	movq	%r14, %rdi
	callq	_enif_make_ulong
Ltmp53:
	movq	%rax, %rcx
Ltmp54:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp55:
LBB5_6:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp56:
LBB5_7:
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	.loc	3 65 1 is_stmt 1        ## native/lib.c:65:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp57:
	popq	%rbp
	retq
LBB5_4:
Ltmp58:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	.loc	3 62 10                 ## native/lib.c:62:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB5_7
Ltmp59:
LBB5_5:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_uu:env <- %r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- %rbx
	.loc	3 64 32                 ## native/lib.c:64:32
	movq	_error_atom(%rip), %rdx
	.loc	3 64 44 is_stmt 0       ## native/lib.c:64:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp60:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB5_6
Ltmp61:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_if
_asm_1_nif_if:                          ## @asm_1_nif_if
Lfunc_begin6:
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
	##DEBUG_VALUE: asm_1_nif_if:env <- %rdi
	##DEBUG_VALUE: asm_1_nif_if:argc <- %esi
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rdx
Ltmp62:
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp63:
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	.loc	3 72 44 prologue_end    ## native/lib.c:72:44
	movq	(%rbx), %rsi
Ltmp64:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp65:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 72 24                 ## native/lib.c:72:24
	callq	_enif_get_long
	.loc	3 72 57                 ## native/lib.c:72:57
	testl	%eax, %eax
Ltmp66:
	.loc	3 72 6                  ## native/lib.c:72:6
	je	LBB6_3
Ltmp67:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 75 45 is_stmt 1       ## native/lib.c:75:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp68:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 75 24 is_stmt 0       ## native/lib.c:75:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 75 58                 ## native/lib.c:75:58
	testl	%eax, %eax
Ltmp69:
	.loc	3 75 6                  ## native/lib.c:75:6
	je	LBB6_3
Ltmp70:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 78 20 is_stmt 1       ## native/lib.c:78:20
	cvtsi2sdq	-32(%rbp), %xmm0
	.loc	3 78 31 is_stmt 0       ## native/lib.c:78:31
	addsd	-24(%rbp), %xmm0
Ltmp71:
	##DEBUG_VALUE: asm_1_nif_if:result <- %xmm0
	.loc	3 79 32 is_stmt 1       ## native/lib.c:79:32
	movq	_ok_atom(%rip), %rbx
Ltmp72:
	.loc	3 79 41 is_stmt 0       ## native/lib.c:79:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp73:
	movq	%rax, %rcx
Ltmp74:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp75:
LBB6_4:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	.loc	3 82 1                  ## native/lib.c:82:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp76:
	popq	%rbp
	retq
LBB6_3:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
Ltmp77:
	##DEBUG_VALUE: asm_1_nif_if:env <- %r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- %rbx
	.loc	3 81 10                 ## native/lib.c:81:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB6_4
Ltmp78:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_fi
_asm_1_nif_fi:                          ## @asm_1_nif_fi
Lfunc_begin7:
	.loc	3 86 0                  ## native/lib.c:86:0
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
Ltmp79:
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp80:
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	.loc	3 89 45 prologue_end    ## native/lib.c:89:45
	movq	(%rbx), %rsi
Ltmp81:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp82:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 89 24                 ## native/lib.c:89:24
	callq	_enif_get_double
	.loc	3 89 58                 ## native/lib.c:89:58
	testl	%eax, %eax
Ltmp83:
	.loc	3 89 6                  ## native/lib.c:89:6
	je	LBB7_3
Ltmp84:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 92 44 is_stmt 1       ## native/lib.c:92:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp85:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 92 24 is_stmt 0       ## native/lib.c:92:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 92 57                 ## native/lib.c:92:57
	testl	%eax, %eax
Ltmp86:
	.loc	3 92 6                  ## native/lib.c:92:6
	je	LBB7_3
Ltmp87:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 95 24 is_stmt 1       ## native/lib.c:95:24
	cvtsi2sdq	-24(%rbp), %xmm0
	.loc	3 95 21 is_stmt 0       ## native/lib.c:95:21
	addsd	-32(%rbp), %xmm0
Ltmp88:
	##DEBUG_VALUE: asm_1_nif_fi:result <- %xmm0
	.loc	3 96 32 is_stmt 1       ## native/lib.c:96:32
	movq	_ok_atom(%rip), %rbx
Ltmp89:
	.loc	3 96 41 is_stmt 0       ## native/lib.c:96:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp90:
	movq	%rax, %rcx
Ltmp91:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp92:
LBB7_4:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	.loc	3 99 1                  ## native/lib.c:99:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp93:
	popq	%rbp
	retq
LBB7_3:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
Ltmp94:
	##DEBUG_VALUE: asm_1_nif_fi:env <- %r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- %rbx
	.loc	3 98 10                 ## native/lib.c:98:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB7_4
Ltmp95:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ff
_asm_1_nif_ff:                          ## @asm_1_nif_ff
Lfunc_begin8:
	.loc	3 103 0                 ## native/lib.c:103:0
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
Ltmp96:
	##DEBUG_VALUE: enif_make_tuple2:env <- %rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp97:
	##DEBUG_VALUE: enif_make_tuple2:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	.loc	3 105 45 prologue_end   ## native/lib.c:105:45
	movq	(%rbx), %rsi
Ltmp98:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp99:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	.loc	3 105 24                ## native/lib.c:105:24
	callq	_enif_get_double
	.loc	3 105 58                ## native/lib.c:105:58
	testl	%eax, %eax
Ltmp100:
	.loc	3 105 6                 ## native/lib.c:105:6
	je	LBB8_3
Ltmp101:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 108 45 is_stmt 1      ## native/lib.c:108:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp102:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	.loc	3 108 24 is_stmt 0      ## native/lib.c:108:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 108 58                ## native/lib.c:108:58
	testl	%eax, %eax
Ltmp103:
	.loc	3 108 6                 ## native/lib.c:108:6
	je	LBB8_3
Ltmp104:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 111 19 is_stmt 1      ## native/lib.c:111:19
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
Ltmp105:
	##DEBUG_VALUE: asm_1_nif_ff:a <- %xmm0
	.loc	3 111 21 is_stmt 0      ## native/lib.c:111:21
	addsd	-24(%rbp), %xmm0
Ltmp106:
	##DEBUG_VALUE: asm_1_nif_ff:result <- %xmm0
	.loc	3 112 32 is_stmt 1      ## native/lib.c:112:32
	movq	_ok_atom(%rip), %rbx
Ltmp107:
	.loc	3 112 41 is_stmt 0      ## native/lib.c:112:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp108:
	movq	%rax, %rcx
Ltmp109:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- %rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- %rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp110:
LBB8_4:
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	.loc	3 115 1                 ## native/lib.c:115:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp111:
	popq	%rbp
	retq
LBB8_3:
Ltmp112:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus] [%rbp+0]
	##DEBUG_VALUE: asm_1_nif_ff:env <- %r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- %rbx
	.loc	3 114 10                ## native/lib.c:114:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB8_4
Ltmp113:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.globl	_nif_init               ## -- Begin function nif_init
	.p2align	4, 0x90
_nif_init:                              ## @nif_init
Lfunc_begin9:
	.loc	3 128 0                 ## native/lib.c:128:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp114:
	.loc	3 128 1 prologue_end    ## native/lib.c:128:1
	leaq	_nif_init.entry(%rip), %rax
	popq	%rbp
	retq
Ltmp115:
Lfunc_end9:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ArithmeticError"

.zerofill __DATA,__bss,_arithmetic_error,8,3 ## @arithmetic_error
L_.str.1:                               ## @.str.1
	.asciz	"ok"

.zerofill __DATA,__bss,_ok_atom,8,3     ## @ok_atom
L_.str.2:                               ## @.str.2
	.asciz	"error"

.zerofill __DATA,__bss,_error_atom,8,3  ## @error_atom
L_.str.3:                               ## @.str.3
	.asciz	"arithmetic_error"

.zerofill __DATA,__bss,_arithmetic_error_atom,8,3 ## @arithmetic_error_atom
L_.str.4:                               ## @.str.4
	.asciz	"asm_1_nif_ii"

L_.str.5:                               ## @.str.5
	.asciz	"asm_1_nif_uu"

L_.str.6:                               ## @.str.6
	.asciz	"asm_1_nif_if"

L_.str.7:                               ## @.str.7
	.asciz	"asm_1_nif_fi"

L_.str.8:                               ## @.str.8
	.asciz	"asm_1_nif_ff"

	.section	__DATA,__data
	.p2align	4               ## @nif_funcs
_nif_funcs:
	.quad	L_.str.4
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ii
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.5
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_uu
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.6
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_if
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.7
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_fi
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.8
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ff
	.long	0                       ## 0x0
	.space	4

	.p2align	3               ## @nif_init.entry
_nif_init.entry:
	.long	2                       ## 0x2
	.long	14                      ## 0xe
	.quad	L_.str.9
	.long	5                       ## 0x5
	.space	4
	.quad	_nif_funcs
	.quad	_load
	.quad	_reload
	.quad	_upgrade
	.quad	_unload
	.quad	L_.str.10
	.long	1                       ## 0x1
	.space	4
	.quad	24                      ## 0x18
	.quad	L_.str.11

	.section	__TEXT,__cstring,cstring_literals
L_.str.9:                               ## @.str.9
	.asciz	"Elixir.NifLlvm"

L_.str.10:                              ## @.str.10
	.asciz	"beam.vanilla"

L_.str.11:                              ## @.str.11
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
	.asciz	"ok_atom"               ## string offset=457
	.asciz	"error_atom"            ## string offset=465
	.asciz	"arithmetic_error_atom" ## string offset=476
	.asciz	"__uint16_t"            ## string offset=498
	.asciz	"unsigned short"        ## string offset=509
	.asciz	"__int32_t"             ## string offset=524
	.asciz	"double"                ## string offset=534
	.asciz	"init_nif_llvm"         ## string offset=541
	.asciz	"env"                   ## string offset=555
	.asciz	"priv"                  ## string offset=559
	.asciz	"info"                  ## string offset=564
	.asciz	"enif_make_tuple2"      ## string offset=569
	.asciz	"e1"                    ## string offset=586
	.asciz	"e2"                    ## string offset=589
	.asciz	"asm_1_nif_ii"          ## string offset=592
	.asciz	"asm_1_nif_uu"          ## string offset=605
	.asciz	"asm_1_nif_if"          ## string offset=618
	.asciz	"asm_1_nif_fi"          ## string offset=631
	.asciz	"asm_1_nif_ff"          ## string offset=644
	.asciz	"nif_init"              ## string offset=657
	.asciz	"old_priv"              ## string offset=666
	.asciz	"argc"                  ## string offset=675
	.asciz	"argv"                  ## string offset=680
	.asciz	"a"                     ## string offset=685
	.asciz	"long int"              ## string offset=687
	.asciz	"b"                     ## string offset=696
	.asciz	"result"                ## string offset=698
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
Lset35 = Ltmp19-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset36 = Ltmp19-Lfunc_begin0
	.quad	Lset36
Lset37 = Ltmp35-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset38 = Ltmp36-Lfunc_begin0
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
Lset41 = Ltmp20-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc14:
Lset42 = Lfunc_begin4-Lfunc_begin0
	.quad	Lset42
Lset43 = Ltmp19-Lfunc_begin0
	.quad	Lset43
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset44 = Ltmp19-Lfunc_begin0
	.quad	Lset44
Lset45 = Ltmp30-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset46 = Ltmp36-Lfunc_begin0
	.quad	Lset46
Lset47 = Lfunc_end4-Lfunc_begin0
	.quad	Lset47
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc15:
Lset48 = Ltmp18-Lfunc_begin0
	.quad	Lset48
Lset49 = Ltmp19-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset50 = Ltmp19-Lfunc_begin0
	.quad	Lset50
Lset51 = Ltmp23-Lfunc_begin0
	.quad	Lset51
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc16:
Lset52 = Ltmp18-Lfunc_begin0
	.quad	Lset52
Lset53 = Ltmp19-Lfunc_begin0
	.quad	Lset53
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset54 = Ltmp19-Lfunc_begin0
	.quad	Lset54
Lset55 = Ltmp23-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc17:
Lset56 = Ltmp21-Lfunc_begin0
	.quad	Lset56
Lset57 = Ltmp27-Lfunc_begin0
	.quad	Lset57
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset58 = Ltmp27-Lfunc_begin0
	.quad	Lset58
Lset59 = Ltmp28-Lfunc_begin0
	.quad	Lset59
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset60 = Ltmp36-Lfunc_begin0
	.quad	Lset60
Lset61 = Lfunc_end4-Lfunc_begin0
	.quad	Lset61
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc18:
Lset62 = Ltmp24-Lfunc_begin0
	.quad	Lset62
Lset63 = Lfunc_end4-Lfunc_begin0
	.quad	Lset63
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc19:
Lset64 = Ltmp29-Lfunc_begin0
	.quad	Lset64
Lset65 = Ltmp31-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc20:
Lset66 = Ltmp32-Lfunc_begin0
	.quad	Lset66
Lset67 = Ltmp33-Lfunc_begin0
	.quad	Lset67
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc21:
Lset68 = Ltmp32-Lfunc_begin0
	.quad	Lset68
Lset69 = Ltmp33-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc22:
Lset70 = Ltmp38-Lfunc_begin0
	.quad	Lset70
Lset71 = Lfunc_end4-Lfunc_begin0
	.quad	Lset71
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc23:
Lset72 = Ltmp38-Lfunc_begin0
	.quad	Lset72
Lset73 = Lfunc_end4-Lfunc_begin0
	.quad	Lset73
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc24:
Lset74 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset74
Lset75 = Ltmp41-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset76 = Ltmp41-Lfunc_begin0
	.quad	Lset76
Lset77 = Ltmp57-Lfunc_begin0
	.quad	Lset77
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset78 = Ltmp58-Lfunc_begin0
	.quad	Lset78
Lset79 = Lfunc_end5-Lfunc_begin0
	.quad	Lset79
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc25:
Lset80 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset80
Lset81 = Ltmp42-Lfunc_begin0
	.quad	Lset81
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc26:
Lset82 = Lfunc_begin5-Lfunc_begin0
	.quad	Lset82
Lset83 = Ltmp41-Lfunc_begin0
	.quad	Lset83
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset84 = Ltmp41-Lfunc_begin0
	.quad	Lset84
Lset85 = Ltmp52-Lfunc_begin0
	.quad	Lset85
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset86 = Ltmp58-Lfunc_begin0
	.quad	Lset86
Lset87 = Lfunc_end5-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc27:
Lset88 = Ltmp40-Lfunc_begin0
	.quad	Lset88
Lset89 = Ltmp41-Lfunc_begin0
	.quad	Lset89
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset90 = Ltmp41-Lfunc_begin0
	.quad	Lset90
Lset91 = Ltmp45-Lfunc_begin0
	.quad	Lset91
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc28:
Lset92 = Ltmp40-Lfunc_begin0
	.quad	Lset92
Lset93 = Ltmp41-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset94 = Ltmp41-Lfunc_begin0
	.quad	Lset94
Lset95 = Ltmp45-Lfunc_begin0
	.quad	Lset95
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc29:
Lset96 = Ltmp43-Lfunc_begin0
	.quad	Lset96
Lset97 = Ltmp49-Lfunc_begin0
	.quad	Lset97
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset98 = Ltmp49-Lfunc_begin0
	.quad	Lset98
Lset99 = Ltmp50-Lfunc_begin0
	.quad	Lset99
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
Lset100 = Ltmp58-Lfunc_begin0
	.quad	Lset100
Lset101 = Lfunc_end5-Lfunc_begin0
	.quad	Lset101
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc30:
Lset102 = Ltmp46-Lfunc_begin0
	.quad	Lset102
Lset103 = Lfunc_end5-Lfunc_begin0
	.quad	Lset103
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc31:
Lset104 = Ltmp51-Lfunc_begin0
	.quad	Lset104
Lset105 = Ltmp53-Lfunc_begin0
	.quad	Lset105
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc32:
Lset106 = Ltmp54-Lfunc_begin0
	.quad	Lset106
Lset107 = Ltmp55-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc33:
Lset108 = Ltmp54-Lfunc_begin0
	.quad	Lset108
Lset109 = Ltmp55-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc34:
Lset110 = Ltmp60-Lfunc_begin0
	.quad	Lset110
Lset111 = Lfunc_end5-Lfunc_begin0
	.quad	Lset111
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc35:
Lset112 = Ltmp60-Lfunc_begin0
	.quad	Lset112
Lset113 = Lfunc_end5-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc36:
Lset114 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset114
Lset115 = Ltmp63-Lfunc_begin0
	.quad	Lset115
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset116 = Ltmp63-Lfunc_begin0
	.quad	Lset116
Lset117 = Ltmp76-Lfunc_begin0
	.quad	Lset117
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset118 = Ltmp77-Lfunc_begin0
	.quad	Lset118
Lset119 = Lfunc_end6-Lfunc_begin0
	.quad	Lset119
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc37:
Lset120 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset120
Lset121 = Ltmp64-Lfunc_begin0
	.quad	Lset121
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc38:
Lset122 = Lfunc_begin6-Lfunc_begin0
	.quad	Lset122
Lset123 = Ltmp63-Lfunc_begin0
	.quad	Lset123
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset124 = Ltmp63-Lfunc_begin0
	.quad	Lset124
Lset125 = Ltmp72-Lfunc_begin0
	.quad	Lset125
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset126 = Ltmp77-Lfunc_begin0
	.quad	Lset126
Lset127 = Lfunc_end6-Lfunc_begin0
	.quad	Lset127
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc39:
Lset128 = Ltmp62-Lfunc_begin0
	.quad	Lset128
Lset129 = Ltmp63-Lfunc_begin0
	.quad	Lset129
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset130 = Ltmp63-Lfunc_begin0
	.quad	Lset130
Lset131 = Ltmp67-Lfunc_begin0
	.quad	Lset131
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc40:
Lset132 = Ltmp65-Lfunc_begin0
	.quad	Lset132
Lset133 = Lfunc_end6-Lfunc_begin0
	.quad	Lset133
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc41:
Lset134 = Ltmp68-Lfunc_begin0
	.quad	Lset134
Lset135 = Lfunc_end6-Lfunc_begin0
	.quad	Lset135
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc42:
Lset136 = Ltmp71-Lfunc_begin0
	.quad	Lset136
Lset137 = Ltmp73-Lfunc_begin0
	.quad	Lset137
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc43:
Lset138 = Ltmp74-Lfunc_begin0
	.quad	Lset138
Lset139 = Ltmp75-Lfunc_begin0
	.quad	Lset139
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc44:
Lset140 = Ltmp74-Lfunc_begin0
	.quad	Lset140
Lset141 = Ltmp75-Lfunc_begin0
	.quad	Lset141
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc45:
Lset142 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset142
Lset143 = Ltmp80-Lfunc_begin0
	.quad	Lset143
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset144 = Ltmp80-Lfunc_begin0
	.quad	Lset144
Lset145 = Ltmp93-Lfunc_begin0
	.quad	Lset145
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset146 = Ltmp94-Lfunc_begin0
	.quad	Lset146
Lset147 = Lfunc_end7-Lfunc_begin0
	.quad	Lset147
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc46:
Lset148 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset148
Lset149 = Ltmp81-Lfunc_begin0
	.quad	Lset149
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc47:
Lset150 = Lfunc_begin7-Lfunc_begin0
	.quad	Lset150
Lset151 = Ltmp80-Lfunc_begin0
	.quad	Lset151
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset152 = Ltmp80-Lfunc_begin0
	.quad	Lset152
Lset153 = Ltmp89-Lfunc_begin0
	.quad	Lset153
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset154 = Ltmp94-Lfunc_begin0
	.quad	Lset154
Lset155 = Lfunc_end7-Lfunc_begin0
	.quad	Lset155
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc48:
Lset156 = Ltmp79-Lfunc_begin0
	.quad	Lset156
Lset157 = Ltmp80-Lfunc_begin0
	.quad	Lset157
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset158 = Ltmp80-Lfunc_begin0
	.quad	Lset158
Lset159 = Ltmp84-Lfunc_begin0
	.quad	Lset159
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc49:
Lset160 = Ltmp82-Lfunc_begin0
	.quad	Lset160
Lset161 = Lfunc_end7-Lfunc_begin0
	.quad	Lset161
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc50:
Lset162 = Ltmp85-Lfunc_begin0
	.quad	Lset162
Lset163 = Lfunc_end7-Lfunc_begin0
	.quad	Lset163
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc51:
Lset164 = Ltmp88-Lfunc_begin0
	.quad	Lset164
Lset165 = Ltmp90-Lfunc_begin0
	.quad	Lset165
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc52:
Lset166 = Ltmp91-Lfunc_begin0
	.quad	Lset166
Lset167 = Ltmp92-Lfunc_begin0
	.quad	Lset167
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc53:
Lset168 = Ltmp91-Lfunc_begin0
	.quad	Lset168
Lset169 = Ltmp92-Lfunc_begin0
	.quad	Lset169
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc54:
Lset170 = Lfunc_begin8-Lfunc_begin0
	.quad	Lset170
Lset171 = Ltmp97-Lfunc_begin0
	.quad	Lset171
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset172 = Ltmp97-Lfunc_begin0
	.quad	Lset172
Lset173 = Ltmp111-Lfunc_begin0
	.quad	Lset173
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
Lset174 = Ltmp112-Lfunc_begin0
	.quad	Lset174
Lset175 = Lfunc_end8-Lfunc_begin0
	.quad	Lset175
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc55:
Lset176 = Lfunc_begin8-Lfunc_begin0
	.quad	Lset176
Lset177 = Ltmp98-Lfunc_begin0
	.quad	Lset177
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc56:
Lset178 = Lfunc_begin8-Lfunc_begin0
	.quad	Lset178
Lset179 = Ltmp97-Lfunc_begin0
	.quad	Lset179
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
Lset180 = Ltmp97-Lfunc_begin0
	.quad	Lset180
Lset181 = Ltmp107-Lfunc_begin0
	.quad	Lset181
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
Lset182 = Ltmp112-Lfunc_begin0
	.quad	Lset182
Lset183 = Lfunc_end8-Lfunc_begin0
	.quad	Lset183
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc57:
Lset184 = Ltmp96-Lfunc_begin0
	.quad	Lset184
Lset185 = Ltmp97-Lfunc_begin0
	.quad	Lset185
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
Lset186 = Ltmp97-Lfunc_begin0
	.quad	Lset186
Lset187 = Ltmp101-Lfunc_begin0
	.quad	Lset187
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc58:
Lset188 = Ltmp99-Lfunc_begin0
	.quad	Lset188
Lset189 = Ltmp105-Lfunc_begin0
	.quad	Lset189
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
Lset190 = Ltmp105-Lfunc_begin0
	.quad	Lset190
Lset191 = Ltmp106-Lfunc_begin0
	.quad	Lset191
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
Lset192 = Ltmp112-Lfunc_begin0
	.quad	Lset192
Lset193 = Lfunc_end8-Lfunc_begin0
	.quad	Lset193
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc59:
Lset194 = Ltmp102-Lfunc_begin0
	.quad	Lset194
Lset195 = Lfunc_end8-Lfunc_begin0
	.quad	Lset195
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc60:
Lset196 = Ltmp106-Lfunc_begin0
	.quad	Lset196
Lset197 = Ltmp108-Lfunc_begin0
	.quad	Lset197
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc61:
Lset198 = Ltmp109-Lfunc_begin0
	.quad	Lset198
Lset199 = Ltmp110-Lfunc_begin0
	.quad	Lset199
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc62:
Lset200 = Ltmp109-Lfunc_begin0
	.quad	Lset200
Lset201 = Ltmp110-Lfunc_begin0
	.quad	Lset201
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
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
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
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
	.byte	29                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	30                      ## Abbreviation Code
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
	.byte	31                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	85                      ## DW_AT_ranges
	.byte	23                      ## DW_FORM_sec_offset
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	2108                    ## Length of Unit
	.short	4                       ## DWARF version number
Lset202 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset202
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x835 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	45                      ## DW_AT_name
Lset203 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset203
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset204 = Lfunc_end9-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset204
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	118                     ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_nif_funcs
	.byte	3                       ## Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	282                     ## DW_AT_type
	.byte	5                       ## DW_AT_count
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
	.quad	Lfunc_begin9            ## DW_AT_low_pc
Lset205 = Lfunc_end9-Lfunc_begin9       ## DW_AT_high_pc
	.long	Lset205
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	657                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	128                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	2099                    ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x13a:0x15 DW_TAG_variable
	.long	270                     ## DW_AT_name
	.long	336                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	128                     ## DW_AT_decl_line
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
	.byte	31                      ## DW_AT_decl_line
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
	.quad	_ok_atom
	.byte	2                       ## Abbrev [2] 0x295:0x15 DW_TAG_variable
	.long	465                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_error_atom
	.byte	2                       ## Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	476                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_arithmetic_error_atom
	.byte	5                       ## Abbrev [5] 0x2bf:0xb DW_TAG_typedef
	.long	714                     ## DW_AT_type
	.long	498                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x2ca:0x7 DW_TAG_base_type
	.long	509                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x2d1:0xb DW_TAG_typedef
	.long	265                     ## DW_AT_type
	.long	524                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x2dc:0x7 DW_TAG_base_type
	.long	534                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x2e3:0x14 DW_TAG_subprogram
	.long	541                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x2eb:0xb DW_TAG_formal_parameter
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x2f7:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset206 = Lfunc_end0-Lfunc_begin0       ## DW_AT_high_pc
	.long	Lset206
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	948                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x30a:0x9 DW_TAG_formal_parameter
Lset207 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset207
	.long	960                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x313:0x9 DW_TAG_formal_parameter
Lset208 = Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset208
	.long	971                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x31c:0x9 DW_TAG_formal_parameter
Lset209 = Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset209
	.long	982                     ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x325:0x1d DW_TAG_inlined_subroutine
	.long	739                     ## DW_AT_abstract_origin
	.quad	Ltmp1                   ## DW_AT_low_pc
Lset210 = Ltmp4-Ltmp1                   ## DW_AT_high_pc
	.long	Lset210
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x338:0x9 DW_TAG_formal_parameter
Lset211 = Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset211
	.long	747                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	23                      ## Abbrev [23] 0x343:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
Lset212 = Lfunc_end1-Lfunc_begin1       ## DW_AT_high_pc
	.long	Lset212
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	352                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x358:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	555                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x365:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	559                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x373:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
Lset213 = Lfunc_end2-Lfunc_begin2       ## DW_AT_high_pc
	.long	Lset213
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	337                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x38c:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	555                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x399:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	559                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3a6:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	564                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	26                      ## Abbrev [26] 0x3b4:0x2e DW_TAG_subprogram
	.long	332                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x3c0:0xb DW_TAG_formal_parameter
	.long	555                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x3cb:0xb DW_TAG_formal_parameter
	.long	559                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x3d6:0xb DW_TAG_formal_parameter
	.long	564                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x3e2:0xa2 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
Lset214 = Lfunc_end3-Lfunc_begin3       ## DW_AT_high_pc
	.long	Lset214
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	344                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x3fb:0xf DW_TAG_formal_parameter
Lset215 = Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset215
	.long	555                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x40a:0xf DW_TAG_formal_parameter
Lset216 = Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset216
	.long	559                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x419:0xf DW_TAG_formal_parameter
Lset217 = Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset217
	.long	666                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x428:0xf DW_TAG_formal_parameter
Lset218 = Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset218
	.long	564                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x437:0x4c DW_TAG_inlined_subroutine
	.long	948                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
Lset219 = Ltmp15-Ltmp12                 ## DW_AT_high_pc
	.long	Lset219
	.byte	6                       ## DW_AT_call_file
	.byte	26                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x44a:0x9 DW_TAG_formal_parameter
Lset220 = Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset220
	.long	960                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x453:0x9 DW_TAG_formal_parameter
Lset221 = Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset221
	.long	971                     ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x45c:0x9 DW_TAG_formal_parameter
Lset222 = Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset222
	.long	982                     ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x465:0x1d DW_TAG_inlined_subroutine
	.long	739                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
Lset223 = Ltmp15-Ltmp12                 ## DW_AT_high_pc
	.long	Lset223
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x478:0x9 DW_TAG_formal_parameter
Lset224 = Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset224
	.long	747                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	28                      ## Abbrev [28] 0x484:0x32 DW_TAG_subprogram
	.long	569                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	29                      ## Abbrev [29] 0x491:0xc DW_TAG_formal_parameter
	.long	555                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x49d:0xc DW_TAG_formal_parameter
	.long	586                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	423                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x4a9:0xc DW_TAG_formal_parameter
	.long	589                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	424                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x4b6:0xca DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
Lset225 = Lfunc_end4-Lfunc_begin4       ## DW_AT_high_pc
	.long	Lset225
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	592                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x4cf:0xf DW_TAG_formal_parameter
Lset226 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset226
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4de:0xf DW_TAG_formal_parameter
Lset227 = Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset227
	.long	675                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4ed:0xf DW_TAG_formal_parameter
Lset228 = Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset228
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	19                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x4fc:0xf DW_TAG_variable
Lset229 = Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset229
	.long	685                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	2104                    ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x50b:0xf DW_TAG_variable
Lset230 = Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset230
	.long	696                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	2104                    ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x51a:0xf DW_TAG_variable
Lset231 = Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset231
	.long	698                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.long	2104                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x529:0x2f DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
	.quad	Ltmp32                  ## DW_AT_low_pc
Lset232 = Ltmp33-Ltmp32                 ## DW_AT_high_pc
	.long	Lset232
	.byte	3                       ## DW_AT_call_file
	.byte	35                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x53c:0x9 DW_TAG_formal_parameter
Lset233 = Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset233
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x545:0x9 DW_TAG_formal_parameter
Lset234 = Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset234
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x54e:0x9 DW_TAG_formal_parameter
Lset235 = Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset235
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	31                      ## Abbrev [31] 0x558:0x27 DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
Lset236 = Ldebug_ranges0-Ldebug_range   ## DW_AT_ranges
	.long	Lset236
	.byte	3                       ## DW_AT_call_file
	.byte	39                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x563:0x9 DW_TAG_formal_parameter
Lset237 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset237
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x56c:0x9 DW_TAG_formal_parameter
Lset238 = Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset238
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x575:0x9 DW_TAG_formal_parameter
Lset239 = Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset239
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x580:0xca DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
Lset240 = Lfunc_end5-Lfunc_begin5       ## DW_AT_high_pc
	.long	Lset240
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	605                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x599:0xf DW_TAG_formal_parameter
Lset241 = Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset241
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5a8:0xf DW_TAG_formal_parameter
Lset242 = Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset242
	.long	675                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5b7:0xf DW_TAG_formal_parameter
Lset243 = Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset243
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x5c6:0xf DW_TAG_variable
Lset244 = Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset244
	.long	685                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x5d5:0xf DW_TAG_variable
Lset245 = Ldebug_loc30-Lsection_debug_loc ## DW_AT_location
	.long	Lset245
	.long	696                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x5e4:0xf DW_TAG_variable
Lset246 = Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset246
	.long	698                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	54                      ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x5f3:0x2f DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
	.quad	Ltmp54                  ## DW_AT_low_pc
Lset247 = Ltmp55-Ltmp54                 ## DW_AT_high_pc
	.long	Lset247
	.byte	3                       ## DW_AT_call_file
	.byte	60                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x606:0x9 DW_TAG_formal_parameter
Lset248 = Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset248
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x60f:0x9 DW_TAG_formal_parameter
Lset249 = Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset249
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x618:0x9 DW_TAG_formal_parameter
Lset250 = Ldebug_loc32-Lsection_debug_loc ## DW_AT_location
	.long	Lset250
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	31                      ## Abbrev [31] 0x622:0x27 DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
Lset251 = Ldebug_ranges1-Ldebug_range   ## DW_AT_ranges
	.long	Lset251
	.byte	3                       ## DW_AT_call_file
	.byte	64                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x62d:0x9 DW_TAG_formal_parameter
Lset252 = Ldebug_loc28-Lsection_debug_loc ## DW_AT_location
	.long	Lset252
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x636:0x9 DW_TAG_formal_parameter
Lset253 = Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset253
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x63f:0x9 DW_TAG_formal_parameter
Lset254 = Ldebug_loc34-Lsection_debug_loc ## DW_AT_location
	.long	Lset254
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x64a:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
Lset255 = Lfunc_end6-Lfunc_begin6       ## DW_AT_high_pc
	.long	Lset255
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	618                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x663:0xf DW_TAG_formal_parameter
Lset256 = Ldebug_loc36-Lsection_debug_loc ## DW_AT_location
	.long	Lset256
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x672:0xf DW_TAG_formal_parameter
Lset257 = Ldebug_loc37-Lsection_debug_loc ## DW_AT_location
	.long	Lset257
	.long	675                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x681:0xf DW_TAG_formal_parameter
Lset258 = Ldebug_loc38-Lsection_debug_loc ## DW_AT_location
	.long	Lset258
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	68                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x690:0xf DW_TAG_variable
Lset259 = Ldebug_loc40-Lsection_debug_loc ## DW_AT_location
	.long	Lset259
	.long	685                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.long	2104                    ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x69f:0xf DW_TAG_variable
Lset260 = Ldebug_loc41-Lsection_debug_loc ## DW_AT_location
	.long	Lset260
	.long	696                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	71                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x6ae:0xf DW_TAG_variable
Lset261 = Ldebug_loc42-Lsection_debug_loc ## DW_AT_location
	.long	Lset261
	.long	698                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x6bd:0x2f DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
	.quad	Ltmp74                  ## DW_AT_low_pc
Lset262 = Ltmp75-Ltmp74                 ## DW_AT_high_pc
	.long	Lset262
	.byte	3                       ## DW_AT_call_file
	.byte	79                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x6d0:0x9 DW_TAG_formal_parameter
Lset263 = Ldebug_loc39-Lsection_debug_loc ## DW_AT_location
	.long	Lset263
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x6d9:0x9 DW_TAG_formal_parameter
Lset264 = Ldebug_loc44-Lsection_debug_loc ## DW_AT_location
	.long	Lset264
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x6e2:0x9 DW_TAG_formal_parameter
Lset265 = Ldebug_loc43-Lsection_debug_loc ## DW_AT_location
	.long	Lset265
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x6ed:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
Lset266 = Lfunc_end7-Lfunc_begin7       ## DW_AT_high_pc
	.long	Lset266
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	631                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x706:0xf DW_TAG_formal_parameter
Lset267 = Ldebug_loc45-Lsection_debug_loc ## DW_AT_location
	.long	Lset267
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x715:0xf DW_TAG_formal_parameter
Lset268 = Ldebug_loc46-Lsection_debug_loc ## DW_AT_location
	.long	Lset268
	.long	675                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x724:0xf DW_TAG_formal_parameter
Lset269 = Ldebug_loc47-Lsection_debug_loc ## DW_AT_location
	.long	Lset269
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x733:0xf DW_TAG_variable
Lset270 = Ldebug_loc49-Lsection_debug_loc ## DW_AT_location
	.long	Lset270
	.long	685                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	87                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x742:0xf DW_TAG_variable
Lset271 = Ldebug_loc50-Lsection_debug_loc ## DW_AT_location
	.long	Lset271
	.long	696                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.long	2104                    ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x751:0xf DW_TAG_variable
Lset272 = Ldebug_loc51-Lsection_debug_loc ## DW_AT_location
	.long	Lset272
	.long	698                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	95                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x760:0x2f DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
	.quad	Ltmp91                  ## DW_AT_low_pc
Lset273 = Ltmp92-Ltmp91                 ## DW_AT_high_pc
	.long	Lset273
	.byte	3                       ## DW_AT_call_file
	.byte	96                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x773:0x9 DW_TAG_formal_parameter
Lset274 = Ldebug_loc48-Lsection_debug_loc ## DW_AT_location
	.long	Lset274
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x77c:0x9 DW_TAG_formal_parameter
Lset275 = Ldebug_loc53-Lsection_debug_loc ## DW_AT_location
	.long	Lset275
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x785:0x9 DW_TAG_formal_parameter
Lset276 = Ldebug_loc52-Lsection_debug_loc ## DW_AT_location
	.long	Lset276
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x790:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin8            ## DW_AT_low_pc
Lset277 = Lfunc_end8-Lfunc_begin8       ## DW_AT_high_pc
	.long	Lset277
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	644                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x7a9:0xf DW_TAG_formal_parameter
Lset278 = Ldebug_loc54-Lsection_debug_loc ## DW_AT_location
	.long	Lset278
	.long	555                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x7b8:0xf DW_TAG_formal_parameter
Lset279 = Ldebug_loc55-Lsection_debug_loc ## DW_AT_location
	.long	Lset279
	.long	675                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x7c7:0xf DW_TAG_formal_parameter
Lset280 = Ldebug_loc56-Lsection_debug_loc ## DW_AT_location
	.long	Lset280
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x7d6:0xf DW_TAG_variable
Lset281 = Ldebug_loc58-Lsection_debug_loc ## DW_AT_location
	.long	Lset281
	.long	685                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x7e5:0xf DW_TAG_variable
Lset282 = Ldebug_loc59-Lsection_debug_loc ## DW_AT_location
	.long	Lset282
	.long	696                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x7f4:0xf DW_TAG_variable
Lset283 = Ldebug_loc60-Lsection_debug_loc ## DW_AT_location
	.long	Lset283
	.long	698                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x803:0x2f DW_TAG_inlined_subroutine
	.long	1156                    ## DW_AT_abstract_origin
	.quad	Ltmp109                 ## DW_AT_low_pc
Lset284 = Ltmp110-Ltmp109               ## DW_AT_high_pc
	.long	Lset284
	.byte	3                       ## DW_AT_call_file
	.byte	112                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x816:0x9 DW_TAG_formal_parameter
Lset285 = Ldebug_loc57-Lsection_debug_loc ## DW_AT_location
	.long	Lset285
	.long	1169                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x81f:0x9 DW_TAG_formal_parameter
Lset286 = Ldebug_loc62-Lsection_debug_loc ## DW_AT_location
	.long	Lset286
	.long	1181                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x828:0x9 DW_TAG_formal_parameter
Lset287 = Ldebug_loc61-Lsection_debug_loc ## DW_AT_location
	.long	Lset287
	.long	1193                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x833:0x5 DW_TAG_pointer_type
	.long	336                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x838:0x7 DW_TAG_base_type
	.long	687                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
Lset288 = Ltmp33-Lfunc_begin0
	.quad	Lset288
Lset289 = Ltmp34-Lfunc_begin0
	.quad	Lset289
Lset290 = Ltmp38-Lfunc_begin0
	.quad	Lset290
Lset291 = Ltmp39-Lfunc_begin0
	.quad	Lset291
	.quad	0
	.quad	0
Ldebug_ranges1:
Lset292 = Ltmp55-Lfunc_begin0
	.quad	Lset292
Lset293 = Ltmp56-Lfunc_begin0
	.quad	Lset293
Lset294 = Ltmp60-Lfunc_begin0
	.quad	Lset294
Lset295 = Ltmp61-Lfunc_begin0
	.quad	Lset295
	.quad	0
	.quad	0
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	9                       ## Header Bucket Count
	.long	18                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	7                       ## Bucket 3
	.long	9                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	11                      ## Bucket 6
	.long	13                      ## Bucket 7
	.long	16                      ## Bucket 8
	.long	-1385727457             ## Hash in Bucket 0
	.long	-1847612928             ## Hash in Bucket 1
	.long	-1847612829             ## Hash in Bucket 1
	.long	422307164               ## Hash in Bucket 2
	.long	550386632               ## Hash in Bucket 2
	.long	1408168991              ## Hash in Bucket 2
	.long	-782949233              ## Hash in Bucket 2
	.long	2090478981              ## Hash in Bucket 3
	.long	-1583130232             ## Hash in Bucket 3
	.long	-1847612421             ## Hash in Bucket 4
	.long	-187743816              ## Hash in Bucket 4
	.long	258013527               ## Hash in Bucket 6
	.long	-2021626987             ## Hash in Bucket 6
	.long	1055338765              ## Hash in Bucket 7
	.long	-1847612931             ## Hash in Bucket 7
	.long	-1847612832             ## Hash in Bucket 7
	.long	1690711343              ## Hash in Bucket 8
	.long	2002484960              ## Hash in Bucket 8
	.long	LNames16-Lnames_begin   ## Offset in Bucket 0
	.long	LNames1-Lnames_begin    ## Offset in Bucket 1
	.long	LNames17-Lnames_begin   ## Offset in Bucket 1
	.long	LNames11-Lnames_begin   ## Offset in Bucket 2
	.long	LNames3-Lnames_begin    ## Offset in Bucket 2
	.long	LNames13-Lnames_begin   ## Offset in Bucket 2
	.long	LNames5-Lnames_begin    ## Offset in Bucket 2
	.long	LNames0-Lnames_begin    ## Offset in Bucket 3
	.long	LNames2-Lnames_begin    ## Offset in Bucket 3
	.long	LNames10-Lnames_begin   ## Offset in Bucket 4
	.long	LNames9-Lnames_begin    ## Offset in Bucket 4
	.long	LNames8-Lnames_begin    ## Offset in Bucket 6
	.long	LNames7-Lnames_begin    ## Offset in Bucket 6
	.long	LNames4-Lnames_begin    ## Offset in Bucket 7
	.long	LNames12-Lnames_begin   ## Offset in Bucket 7
	.long	LNames15-Lnames_begin   ## Offset in Bucket 7
	.long	LNames6-Lnames_begin    ## Offset in Bucket 8
	.long	LNames14-Lnames_begin   ## Offset in Bucket 8
LNames16:
	.long	569                     ## enif_make_tuple2
	.long	7                       ## Num DIEs
	.long	1321
	.long	1368
	.long	1523
	.long	1570
	.long	1725
	.long	1888
	.long	2051
	.long	0
LNames1:
	.long	631                     ## asm_1_nif_fi
	.long	1                       ## Num DIEs
	.long	1773
	.long	0
LNames17:
	.long	592                     ## asm_1_nif_ii
	.long	1                       ## Num DIEs
	.long	1206
	.long	0
LNames11:
	.long	337                     ## reload
	.long	1                       ## Num DIEs
	.long	883
	.long	0
LNames3:
	.long	352                     ## unload
	.long	1                       ## Num DIEs
	.long	835
	.long	0
LNames13:
	.long	465                     ## error_atom
	.long	1                       ## Num DIEs
	.long	661
	.long	0
LNames5:
	.long	541                     ## init_nif_llvm
	.long	2                       ## Num DIEs
	.long	805
	.long	1125
	.long	0
LNames0:
	.long	332                     ## load
	.long	2                       ## Num DIEs
	.long	759
	.long	1079
	.long	0
LNames2:
	.long	476                     ## arithmetic_error_atom
	.long	1                       ## Num DIEs
	.long	682
	.long	0
LNames10:
	.long	605                     ## asm_1_nif_uu
	.long	1                       ## Num DIEs
	.long	1408
	.long	0
LNames9:
	.long	440                     ## arithmetic_error
	.long	1                       ## Num DIEs
	.long	619
	.long	0
LNames8:
	.long	270                     ## entry
	.long	1                       ## Num DIEs
	.long	314
	.long	0
LNames7:
	.long	657                     ## nif_init
	.long	1                       ## Num DIEs
	.long	289
	.long	0
LNames4:
	.long	344                     ## upgrade
	.long	1                       ## Num DIEs
	.long	994
	.long	0
LNames12:
	.long	644                     ## asm_1_nif_ff
	.long	1                       ## Num DIEs
	.long	1936
	.long	0
LNames15:
	.long	618                     ## asm_1_nif_if
	.long	1                       ## Num DIEs
	.long	1610
	.long	0
LNames6:
	.long	457                     ## ok_atom
	.long	1                       ## Num DIEs
	.long	640
	.long	0
LNames14:
	.long	87                      ## nif_funcs
	.long	1                       ## Num DIEs
	.long	42
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
	.long	498                     ## __uint16_t
	.long	1                       ## Num DIEs
	.long	703
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
	.long	509                     ## unsigned short
	.long	1                       ## Num DIEs
	.long	714
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	524                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	721
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	687                     ## long int
	.long	1                       ## Num DIEs
	.long	2104
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	534                     ## double
	.long	1                       ## Num DIEs
	.long	732
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
