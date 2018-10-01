	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.file	1 "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif.h"
	.file	2 "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_drv_nif.h"
	.file	3 "/Users/zacky/github/nif_llvm/native/lib.c"
	.file	4 "/usr/include/i386/_types.h"
	.file	5 "/usr/include/sys/_types/_size_t.h"
	.p2align	4, 0x90         ## -- Begin function load
_load:                                  ## @load
Lfunc_begin0:
	.file	6 "/Users/zacky/github/nif_llvm/native/loader.c"
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
	##DEBUG_VALUE: load:env <- $rdi
	##DEBUG_VALUE: load:priv <- $rsi
	##DEBUG_VALUE: load:info <- $rdx
Ltmp0:
	##DEBUG_VALUE: init_nif_llvm:env <- $rdi
	movq	%rdi, %rbx
Ltmp1:
	##DEBUG_VALUE: init_nif_llvm:env <- $rbx
	##DEBUG_VALUE: load:env <- $rbx
	.loc	3 79 48 prologue_end    ## native/lib.c:79:48
	leaq	L_.str(%rip), %rsi
Ltmp2:
	callq	_enif_make_atom
Ltmp3:
	.loc	3 79 22 is_stmt 0       ## native/lib.c:79:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 79 20                 ## native/lib.c:79:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 80 13 is_stmt 1       ## native/lib.c:80:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 80 11 is_stmt 0       ## native/lib.c:80:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 81 16 is_stmt 1       ## native/lib.c:81:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 81 14 is_stmt 0       ## native/lib.c:81:14
	movq	%rax, _error_atom(%rip)
	.loc	3 82 27 is_stmt 1       ## native/lib.c:82:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 82 25 is_stmt 0       ## native/lib.c:82:25
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
	##DEBUG_VALUE: unload:env <- $rdi
	##DEBUG_VALUE: unload:priv <- $rsi
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
	##DEBUG_VALUE: reload:env <- $rdi
	##DEBUG_VALUE: reload:priv <- $rsi
	##DEBUG_VALUE: reload:info <- $rdx
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
	##DEBUG_VALUE: upgrade:env <- $rdi
	##DEBUG_VALUE: upgrade:priv <- $rsi
	##DEBUG_VALUE: upgrade:old_priv <- $rdx
	##DEBUG_VALUE: upgrade:info <- $rcx
Ltmp11:
	##DEBUG_VALUE: load:env <- $rdi
	##DEBUG_VALUE: load:priv <- $rsi
	##DEBUG_VALUE: load:info <- $rcx
	##DEBUG_VALUE: init_nif_llvm:env <- $rdi
	movq	%rdi, %rbx
Ltmp12:
	##DEBUG_VALUE: init_nif_llvm:env <- $rbx
	##DEBUG_VALUE: load:env <- $rbx
	##DEBUG_VALUE: upgrade:env <- $rbx
	.loc	3 79 48 prologue_end    ## native/lib.c:79:48
	leaq	L_.str(%rip), %rsi
Ltmp13:
	callq	_enif_make_atom
Ltmp14:
	.loc	3 79 22 is_stmt 0       ## native/lib.c:79:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 79 20                 ## native/lib.c:79:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 80 13 is_stmt 1       ## native/lib.c:80:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 80 11 is_stmt 0       ## native/lib.c:80:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 81 16 is_stmt 1       ## native/lib.c:81:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 81 14 is_stmt 0       ## native/lib.c:81:14
	movq	%rax, _error_atom(%rip)
	.loc	3 82 27 is_stmt 1       ## native/lib.c:82:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 82 25 is_stmt 0       ## native/lib.c:82:25
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
	.globl	_enif_get_big_num       ## -- Begin function enif_get_big_num
	.p2align	4, 0x90
_enif_get_big_num:                      ## @enif_get_big_num
Lfunc_begin4:
	.loc	3 11 0                  ## native/lib.c:11:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	##DEBUG_VALUE: enif_get_big_num:env <- $rdi
	##DEBUG_VALUE: enif_get_big_num:term <- $rsi
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $rdx
	##DEBUG_VALUE: enif_get_big_num:value <- $rcx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
Ltmp18:
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:term <- $rsi
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	leaq	-60(%rbp), %rdx
Ltmp19:
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	leaq	-56(%rbp), %rcx
Ltmp20:
	##DEBUG_VALUE: enif_get_big_num:tuple <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:term <- $rsi
	.loc	3 14 24 prologue_end    ## native/lib.c:14:24
	callq	_enif_get_tuple
Ltmp21:
	.loc	3 0 24 is_stmt 0        ## native/lib.c:0:24
	xorl	%r12d, %r12d
	.loc	3 14 72                 ## native/lib.c:14:72
	testl	%eax, %eax
Ltmp22:
	.loc	3 14 6                  ## native/lib.c:14:6
	je	LBB4_20
Ltmp23:
## %bb.1:
	##DEBUG_VALUE: enif_get_big_num:tuple <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	cmpl	$2, -60(%rbp)
	jne	LBB4_20
Ltmp24:
## %bb.2:
	##DEBUG_VALUE: enif_get_big_num:tuple <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 20 43 is_stmt 1       ## native/lib.c:20:43
	movq	-56(%rbp), %rax
Ltmp25:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	(%rax), %rsi
	.loc	3 20 24 is_stmt 0       ## native/lib.c:20:24
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	_enif_get_uint
Ltmp26:
	.loc	3 20 66                 ## native/lib.c:20:66
	testl	%eax, %eax
Ltmp27:
	.loc	3 20 6                  ## native/lib.c:20:6
	je	LBB4_20
Ltmp28:
## %bb.3:
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 24 50 is_stmt 1       ## native/lib.c:24:50
	movq	-56(%rbp), %rax
Ltmp29:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	8(%rax), %rsi
	leaq	-44(%rbp), %rdx
Ltmp30:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 24 24 is_stmt 0       ## native/lib.c:24:24
	movq	%rbx, %rdi
	callq	_enif_get_list_length
Ltmp31:
	.loc	3 0 24                  ## native/lib.c:0:24
	xorl	%r12d, %r12d
	.loc	3 24 69                 ## native/lib.c:24:69
	testl	%eax, %eax
Ltmp32:
	.loc	3 24 6                  ## native/lib.c:24:6
	je	LBB4_20
Ltmp33:
## %bb.4:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 6                   ## native/lib.c:0:6
	movl	-44(%rbp), %eax
	.loc	3 24 6                  ## native/lib.c:24:6
	testl	%eax, %eax
	je	LBB4_20
Ltmp34:
## %bb.5:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 31 48 is_stmt 1       ## native/lib.c:31:48
	movq	-56(%rbp), %rax
Ltmp35:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	8(%rax), %rsi
	leaq	-80(%rbp), %rdx
Ltmp36:
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 0 48 is_stmt 0        ## native/lib.c:0:48
	leaq	-72(%rbp), %rcx
Ltmp37:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 31 24                 ## native/lib.c:31:24
	movq	%rbx, %rdi
	callq	_enif_get_list_cell
Ltmp38:
	.loc	3 0 24                  ## native/lib.c:0:24
	xorl	%r12d, %r12d
	.loc	3 31 72                 ## native/lib.c:31:72
	testl	%eax, %eax
Ltmp39:
	.loc	3 31 6                  ## native/lib.c:31:6
	je	LBB4_20
Ltmp40:
## %bb.6:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 34 74 is_stmt 1       ## native/lib.c:34:74
	movl	-44(%rbp), %edi
	.loc	3 34 72 is_stmt 0       ## native/lib.c:34:72
	shlq	$3, %rdi
	.loc	3 34 39                 ## native/lib.c:34:39
	callq	_enif_alloc
Ltmp41:
	.loc	3 35 26 is_stmt 1       ## native/lib.c:35:26
	testq	%rax, %rax
Ltmp42:
	.loc	3 35 6 is_stmt 0        ## native/lib.c:35:6
	je	LBB4_20
Ltmp43:
## %bb.7:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:is_negative <- $r15
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 6                   ## native/lib.c:0:6
	movq	%rax, %r15
Ltmp44:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	.loc	3 38 22 is_stmt 1       ## native/lib.c:38:22
	movl	$16, %edi
	callq	_enif_alloc
	.loc	3 38 10 is_stmt 0       ## native/lib.c:38:10
	movq	%rax, (%r14)
Ltmp45:
	.loc	3 39 31 is_stmt 1       ## native/lib.c:39:31
	testq	%rax, %rax
Ltmp46:
	.loc	3 39 6 is_stmt 0        ## native/lib.c:39:6
	je	LBB4_10
Ltmp47:
## %bb.8:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	##DEBUG_VALUE: i <- 0
	.loc	3 43 20 is_stmt 1       ## native/lib.c:43:20
	cmpl	$0, -44(%rbp)
Ltmp48:
	.loc	3 43 3 is_stmt 0        ## native/lib.c:43:3
	je	LBB4_9
Ltmp49:
## %bb.11:                              ## %.preheader
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 3                   ## native/lib.c:0:3
	movq	%r14, -88(%rbp)         ## 8-byte Spill
Ltmp50:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	xorl	%r14d, %r14d
	leaq	-80(%rbp), %r12
	leaq	-72(%rbp), %r13
Ltmp51:
	.p2align	4, 0x90
LBB4_12:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: i <- $r14
	.loc	3 44 47 is_stmt 1       ## native/lib.c:44:47
	movq	-80(%rbp), %rsi
Ltmp52:
	##DEBUG_VALUE: enif_get_big_num:head <- $rsi
	.loc	3 44 54 is_stmt 0       ## native/lib.c:44:54
	leaq	(%r15,%r14,8), %rdx
	.loc	3 44 26                 ## native/lib.c:44:26
	movq	%rbx, %rdi
	callq	_enif_get_ulong
Ltmp53:
	.loc	3 44 60                 ## native/lib.c:44:60
	testl	%eax, %eax
Ltmp54:
	.loc	3 44 8                  ## native/lib.c:44:8
	je	LBB4_13
Ltmp55:
## %bb.14:                              ##   in Loop: Header=BB4_12 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 48 50 is_stmt 1       ## native/lib.c:48:50
	movq	-72(%rbp), %rsi
Ltmp56:
	##DEBUG_VALUE: enif_get_big_num:tail <- $rsi
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 48 26 is_stmt 0       ## native/lib.c:48:26
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	_enif_get_list_cell
	.loc	3 48 70                 ## native/lib.c:48:70
	testl	%eax, %eax
Ltmp57:
	.loc	3 48 8                  ## native/lib.c:48:8
	je	LBB4_16
Ltmp58:
## %bb.15:                              ##   in Loop: Header=BB4_12 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 43 22 is_stmt 1       ## native/lib.c:43:22
	movl	-44(%rbp), %ecx
	.loc	3 43 31 is_stmt 0       ## native/lib.c:43:31
	incq	%r14
Ltmp59:
LBB4_17:                                ##   in Loop: Header=BB4_12 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	3 43 20                 ## native/lib.c:43:20
	cmpq	%rcx, %r14
Ltmp60:
	.loc	3 43 3                  ## native/lib.c:43:3
	jb	LBB4_12
	jmp	LBB4_18
Ltmp61:
LBB4_16:                                ##   in Loop: Header=BB4_12 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 49 12 is_stmt 1       ## native/lib.c:49:12
	incq	%r14
Ltmp62:
	.loc	3 49 18 is_stmt 0       ## native/lib.c:49:18
	movl	-44(%rbp), %ecx
Ltmp63:
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	.loc	3 49 16                 ## native/lib.c:49:16
	cmpq	%rcx, %r14
Ltmp64:
	.loc	3 49 10                 ## native/lib.c:49:10
	jae	LBB4_17
Ltmp65:
LBB4_13:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 0 10                  ## native/lib.c:0:10
	movq	%r15, %rdi
	callq	_enif_free
	xorl	%r12d, %r12d
	jmp	LBB4_20
Ltmp66:
LBB4_18:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 55 4 is_stmt 1        ## native/lib.c:55:4
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	jmp	LBB4_19
Ltmp67:
LBB4_9:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 4 is_stmt 0         ## native/lib.c:0:4
	xorl	%ecx, %ecx
Ltmp68:
LBB4_19:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:length <- undef
	.loc	3 55 18                 ## native/lib.c:55:18
	movl	%ecx, (%rax)
	.loc	3 56 19 is_stmt 1       ## native/lib.c:56:19
	movq	%r15, 8(%rax)
	movl	$1, %r12d
Ltmp69:
LBB4_20:
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 58 1                  ## native/lib.c:58:1
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
Ltmp70:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_10:
Ltmp71:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 40 5                  ## native/lib.c:40:5
	movq	%r15, %rdi
	callq	_enif_free
	jmp	LBB4_20
Ltmp72:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.globl	_enif_make_big_num      ## -- Begin function enif_make_big_num
	.p2align	4, 0x90
_enif_make_big_num:                     ## @enif_make_big_num
Lfunc_begin5:
	.loc	3 61 0                  ## native/lib.c:61:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	##DEBUG_VALUE: enif_make_big_num:env <- $rdi
	##DEBUG_VALUE: enif_make_big_num:is_negative <- $esi
	##DEBUG_VALUE: enif_make_big_num:value <- $rdx
Ltmp73:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %r13
	movq	%rdi, %r15
Ltmp74:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r15
	##DEBUG_VALUE: enif_make_big_num:value <- $r13
	##DEBUG_VALUE: enif_make_big_num:is_negative <- $esi
	##DEBUG_VALUE: enif_make_big_num:env <- $r15
	##DEBUG_VALUE: enif_make_big_num:is_negative <- $esi
	.loc	3 62 34 prologue_end    ## native/lib.c:62:34
	callq	_enif_make_uint
Ltmp75:
	movq	%rax, %r14
Ltmp76:
	##DEBUG_VALUE: enif_make_big_num:term_is_negative <- $r14
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $r14
	.loc	3 63 70                 ## native/lib.c:63:70
	movslq	(%r13), %rdi
	.loc	3 63 61 is_stmt 0       ## native/lib.c:63:61
	shlq	$3, %rdi
	.loc	3 63 29                 ## native/lib.c:63:29
	callq	_enif_alloc
	movq	%rax, %r12
Ltmp77:
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: enif_make_big_num:term_array <- $r12
	.loc	3 64 28 is_stmt 1       ## native/lib.c:64:28
	movl	(%r13), %edx
	.loc	3 64 19 is_stmt 0       ## native/lib.c:64:19
	testl	%edx, %edx
Ltmp78:
	.loc	3 64 2                  ## native/lib.c:64:2
	jle	LBB5_3
Ltmp79:
## %bb.1:
	##DEBUG_VALUE: enif_make_big_num:term_array <- $r12
	##DEBUG_VALUE: enif_make_big_num:term_is_negative <- $r14
	##DEBUG_VALUE: enif_make_big_num:env <- $r15
	##DEBUG_VALUE: enif_make_big_num:value <- $r13
	.loc	3 0 2                   ## native/lib.c:0:2
	xorl	%ebx, %ebx
Ltmp80:
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: enif_make_big_num:term_array <- $r12
	##DEBUG_VALUE: enif_make_big_num:term_is_negative <- $r14
	##DEBUG_VALUE: enif_make_big_num:env <- $r15
	##DEBUG_VALUE: enif_make_big_num:value <- $r13
	##DEBUG_VALUE: i <- $rbx
	.loc	3 65 48 is_stmt 1       ## native/lib.c:65:48
	movq	8(%r13), %rax
	.loc	3 65 41 is_stmt 0       ## native/lib.c:65:41
	movq	(%rax,%rbx,8), %rsi
	.loc	3 65 19                 ## native/lib.c:65:19
	movq	%r15, %rdi
	callq	_enif_make_ulong
	.loc	3 65 17                 ## native/lib.c:65:17
	movq	%rax, (%r12,%rbx,8)
Ltmp81:
	.loc	3 64 35 is_stmt 1       ## native/lib.c:64:35
	incq	%rbx
Ltmp82:
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	3 64 28 is_stmt 0       ## native/lib.c:64:28
	movslq	(%r13), %rdx
	.loc	3 64 19                 ## native/lib.c:64:19
	cmpq	%rdx, %rbx
Ltmp83:
	.loc	3 64 2                  ## native/lib.c:64:2
	jl	LBB5_2
Ltmp84:
LBB5_3:
	##DEBUG_VALUE: enif_make_big_num:term_array <- $r12
	##DEBUG_VALUE: enif_make_big_num:term_is_negative <- $r14
	##DEBUG_VALUE: enif_make_big_num:env <- $r15
	##DEBUG_VALUE: enif_make_big_num:value <- $r13
	.loc	3 67 27 is_stmt 1       ## native/lib.c:67:27
	movq	%r15, %rdi
	movq	%r12, %rsi
                                        ## kill: def $edx killed $edx killed $rdx
	callq	_enif_make_list_from_array
	movq	%rax, %rbx
Ltmp85:
	##DEBUG_VALUE: enif_make_big_num:term_list <- $rbx
	.loc	3 68 2                  ## native/lib.c:68:2
	movq	%r12, %rdi
	callq	_enif_free
Ltmp86:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rbx
	.file	7 "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h"
	.loc	7 426 12                ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	addq	$8, %rsp
	popq	%rbx
Ltmp87:
	popq	%r12
Ltmp88:
	popq	%r13
Ltmp89:
	popq	%r14
Ltmp90:
	popq	%r15
Ltmp91:
	popq	%rbp
	jmp	_enif_make_tuple        ## TAILCALL
Ltmp92:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ii
_asm_1_nif_ii:                          ## @asm_1_nif_ii
Lfunc_begin6:
	.loc	3 87 0                  ## native/lib.c:87:0
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
	##DEBUG_VALUE: asm_1_nif_ii:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_ii:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rdx
Ltmp93:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp94:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	3 89 44 prologue_end    ## native/lib.c:89:44
	movq	(%rdx), %rsi
Ltmp95:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp96:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 89 24                 ## native/lib.c:89:24
	callq	_enif_get_long
	.loc	3 89 57                 ## native/lib.c:89:57
	testl	%eax, %eax
Ltmp97:
	.loc	3 89 6                  ## native/lib.c:89:6
	je	LBB6_4
Ltmp98:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 92 44 is_stmt 1       ## native/lib.c:92:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp99:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 92 24 is_stmt 0       ## native/lib.c:92:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 92 57                 ## native/lib.c:92:57
	testl	%eax, %eax
Ltmp100:
	.loc	3 92 6                  ## native/lib.c:92:6
	je	LBB6_4
Ltmp101:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 98 48 is_stmt 1       ## native/lib.c:98:48
	movq	-32(%rbp), %rsi
Ltmp102:
	##DEBUG_VALUE: asm_1_nif_ii:a <- $rsi
	.loc	3 98 23 is_stmt 0       ## native/lib.c:98:23
	addq	-24(%rbp), %rsi
Ltmp103:
	.loc	3 98 6                  ## native/lib.c:98:6
	jo	LBB6_5
Ltmp104:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ii:result <- $rsi
	.loc	3 102 32 is_stmt 1      ## native/lib.c:102:32
	movq	_ok_atom(%rip), %rbx
Ltmp105:
	.loc	3 102 41 is_stmt 0      ## native/lib.c:102:41
	movq	%r14, %rdi
	callq	_enif_make_long
Ltmp106:
	movq	%rax, %rcx
Ltmp107:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp108:
LBB6_6:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp109:
LBB6_7:
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	3 107 1 is_stmt 1       ## native/lib.c:107:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp110:
	popq	%rbp
	retq
LBB6_4:
Ltmp111:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 104 10                ## native/lib.c:104:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB6_7
Ltmp112:
LBB6_5:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 106 32                ## native/lib.c:106:32
	movq	_error_atom(%rip), %rdx
	.loc	3 106 44 is_stmt 0      ## native/lib.c:106:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp113:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB6_6
Ltmp114:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_uu
_asm_1_nif_uu:                          ## @asm_1_nif_uu
Lfunc_begin7:
	.loc	3 112 0                 ## native/lib.c:112:0
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
	##DEBUG_VALUE: asm_1_nif_uu:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_uu:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rdx
Ltmp115:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp116:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	3 114 45 prologue_end   ## native/lib.c:114:45
	movq	(%rdx), %rsi
Ltmp117:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp118:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 114 24                ## native/lib.c:114:24
	callq	_enif_get_ulong
	.loc	3 114 58                ## native/lib.c:114:58
	testl	%eax, %eax
Ltmp119:
	.loc	3 114 6                 ## native/lib.c:114:6
	je	LBB7_4
Ltmp120:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 117 45 is_stmt 1      ## native/lib.c:117:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp121:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 117 24 is_stmt 0      ## native/lib.c:117:24
	movq	%r14, %rdi
	callq	_enif_get_ulong
	.loc	3 117 58                ## native/lib.c:117:58
	testl	%eax, %eax
Ltmp122:
	.loc	3 117 6                 ## native/lib.c:117:6
	je	LBB7_4
Ltmp123:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 123 48 is_stmt 1      ## native/lib.c:123:48
	movq	-32(%rbp), %rsi
Ltmp124:
	##DEBUG_VALUE: asm_1_nif_uu:a <- $rsi
	.loc	3 123 23 is_stmt 0      ## native/lib.c:123:23
	addq	-24(%rbp), %rsi
Ltmp125:
	.loc	3 123 6                 ## native/lib.c:123:6
	jb	LBB7_5
Ltmp126:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uu:result <- $rsi
	.loc	3 127 32 is_stmt 1      ## native/lib.c:127:32
	movq	_ok_atom(%rip), %rbx
Ltmp127:
	.loc	3 127 41 is_stmt 0      ## native/lib.c:127:41
	movq	%r14, %rdi
	callq	_enif_make_ulong
Ltmp128:
	movq	%rax, %rcx
Ltmp129:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp130:
LBB7_6:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp131:
LBB7_7:
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	3 132 1 is_stmt 1       ## native/lib.c:132:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp132:
	popq	%rbp
	retq
LBB7_4:
Ltmp133:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 129 10                ## native/lib.c:129:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB7_7
Ltmp134:
LBB7_5:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 131 32                ## native/lib.c:131:32
	movq	_error_atom(%rip), %rdx
	.loc	3 131 44 is_stmt 0      ## native/lib.c:131:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp135:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB7_6
Ltmp136:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_bb
_asm_1_nif_bb:                          ## @asm_1_nif_bb
Lfunc_begin8:
	.loc	3 136 0                 ## native/lib.c:136:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	##DEBUG_VALUE: asm_1_nif_bb:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_bb:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rdx
Ltmp137:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp138:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	.loc	3 139 46 prologue_end   ## native/lib.c:139:46
	movq	(%rdx), %rsi
Ltmp139:
	.loc	3 0 46 is_stmt 0        ## native/lib.c:0:46
	leaq	-28(%rbp), %rdx
Ltmp140:
	##DEBUG_VALUE: asm_1_nif_bb:a_neg <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref] $rbp
	leaq	-48(%rbp), %rcx
Ltmp141:
	##DEBUG_VALUE: asm_1_nif_bb:a_v <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 139 24                ## native/lib.c:139:24
	callq	_enif_get_big_num
	.loc	3 139 69                ## native/lib.c:139:69
	testl	%eax, %eax
Ltmp142:
	.loc	3 139 6                 ## native/lib.c:139:6
	je	LBB8_5
Ltmp143:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_bb:a_v <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:a_neg <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rbx
	.loc	3 142 46 is_stmt 1      ## native/lib.c:142:46
	movq	8(%rbx), %rsi
	leaq	-52(%rbp), %rdx
Ltmp144:
	##DEBUG_VALUE: asm_1_nif_bb:b_neg <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 0 46 is_stmt 0        ## native/lib.c:0:46
	leaq	-40(%rbp), %rcx
Ltmp145:
	##DEBUG_VALUE: asm_1_nif_bb:b_v <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 142 24                ## native/lib.c:142:24
	movq	%r14, %rdi
	callq	_enif_get_big_num
	.loc	3 142 69                ## native/lib.c:142:69
	testl	%eax, %eax
Ltmp146:
	.loc	3 142 6                 ## native/lib.c:142:6
	je	LBB8_5
Ltmp147:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_bb:b_v <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:b_neg <- [DW_OP_constu 52, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:a_v <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:a_neg <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rbx
	.loc	3 146 47 is_stmt 1      ## native/lib.c:146:47
	movl	-28(%rbp), %esi
Ltmp148:
	##DEBUG_VALUE: asm_1_nif_bb:a_neg <- $esi
	.loc	3 146 54 is_stmt 0      ## native/lib.c:146:54
	movq	-48(%rbp), %rbx
Ltmp149:
	##DEBUG_VALUE: asm_1_nif_bb:a_v <- $rbx
	.loc	3 146 24                ## native/lib.c:146:24
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_big_num
Ltmp150:
	movq	%rax, %r15
Ltmp151:
	##DEBUG_VALUE: asm_1_nif_bb:result <- $r15
	.loc	3 148 18 is_stmt 1      ## native/lib.c:148:18
	movq	8(%rbx), %rdi
	.loc	3 148 3 is_stmt 0       ## native/lib.c:148:3
	callq	_enif_free
	.loc	3 149 3 is_stmt 1       ## native/lib.c:149:3
	movq	%rbx, %rdi
	callq	_enif_free
	.loc	3 150 13                ## native/lib.c:150:13
	movq	-40(%rbp), %rbx
Ltmp152:
	##DEBUG_VALUE: asm_1_nif_bb:b_v <- $rbx
	.loc	3 150 18 is_stmt 0      ## native/lib.c:150:18
	movq	8(%rbx), %rdi
	.loc	3 150 3                 ## native/lib.c:150:3
	callq	_enif_free
	.loc	3 151 3 is_stmt 1       ## native/lib.c:151:3
	movq	%rbx, %rdi
	callq	_enif_free
	.loc	3 153 32                ## native/lib.c:153:32
	movq	_ok_atom(%rip), %rdx
Ltmp153:
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $r15
	.loc	7 426 12                ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	_enif_make_tuple
Ltmp154:
LBB8_3:
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	.loc	3 154 1                 ## native/lib.c:154:1
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
Ltmp155:
	popq	%r15
	popq	%rbp
	retq
Ltmp156:
LBB8_5:
	##DEBUG_VALUE: asm_1_nif_bb:a_v <- [DW_OP_constu 48, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:a_neg <- [DW_OP_constu 28, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rbx
	.loc	3 0 1 is_stmt 0         ## native/lib.c:0:1
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB8_3
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_if
_asm_1_nif_if:                          ## @asm_1_nif_if
Lfunc_begin9:
	.loc	3 158 0 is_stmt 1       ## native/lib.c:158:0
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
	##DEBUG_VALUE: asm_1_nif_if:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_if:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rdx
Ltmp157:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp158:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	.loc	3 161 44 prologue_end   ## native/lib.c:161:44
	movq	(%rdx), %rsi
Ltmp159:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp160:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 161 24                ## native/lib.c:161:24
	callq	_enif_get_long
	.loc	3 161 57                ## native/lib.c:161:57
	testl	%eax, %eax
Ltmp161:
	.loc	3 161 6                 ## native/lib.c:161:6
	je	LBB9_3
Ltmp162:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 164 45 is_stmt 1      ## native/lib.c:164:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp163:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 164 24 is_stmt 0      ## native/lib.c:164:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 164 58                ## native/lib.c:164:58
	testl	%eax, %eax
Ltmp164:
	.loc	3 164 6                 ## native/lib.c:164:6
	je	LBB9_3
Ltmp165:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 167 20 is_stmt 1      ## native/lib.c:167:20
	cvtsi2sdq	-32(%rbp), %xmm0
	.loc	3 167 31 is_stmt 0      ## native/lib.c:167:31
	addsd	-24(%rbp), %xmm0
Ltmp166:
	##DEBUG_VALUE: asm_1_nif_if:result <- $xmm0
	.loc	3 168 32 is_stmt 1      ## native/lib.c:168:32
	movq	_ok_atom(%rip), %rbx
Ltmp167:
	.loc	3 168 41 is_stmt 0      ## native/lib.c:168:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp168:
	movq	%rax, %rcx
Ltmp169:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp170:
LBB9_4:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	.loc	3 171 1                 ## native/lib.c:171:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp171:
	popq	%rbp
	retq
LBB9_3:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp172:
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 170 10                ## native/lib.c:170:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB9_4
Ltmp173:
Lfunc_end9:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function asm_1_nif_uf
LCPI10_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI10_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_asm_1_nif_uf:                          ## @asm_1_nif_uf
Lfunc_begin10:
	.loc	3 176 0                 ## native/lib.c:176:0
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
	##DEBUG_VALUE: asm_1_nif_uf:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_uf:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rdx
Ltmp174:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp175:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	.loc	3 179 45 prologue_end   ## native/lib.c:179:45
	movq	(%rdx), %rsi
Ltmp176:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp177:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 179 24                ## native/lib.c:179:24
	callq	_enif_get_ulong
	.loc	3 179 58                ## native/lib.c:179:58
	testl	%eax, %eax
Ltmp178:
	.loc	3 179 6                 ## native/lib.c:179:6
	je	LBB10_3
Ltmp179:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 182 45 is_stmt 1      ## native/lib.c:182:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp180:
	##DEBUG_VALUE: asm_1_nif_uf:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 182 24 is_stmt 0      ## native/lib.c:182:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 182 58                ## native/lib.c:182:58
	testl	%eax, %eax
Ltmp181:
	.loc	3 182 6                 ## native/lib.c:182:6
	je	LBB10_3
Ltmp182:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_uf:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 185 20 is_stmt 1      ## native/lib.c:185:20
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	unpcklps	LCPI10_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI10_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	.loc	3 185 31 is_stmt 0      ## native/lib.c:185:31
	addsd	-24(%rbp), %xmm0
Ltmp183:
	##DEBUG_VALUE: asm_1_nif_uf:result <- $xmm0
	.loc	3 186 32 is_stmt 1      ## native/lib.c:186:32
	movq	_ok_atom(%rip), %rbx
Ltmp184:
	.loc	3 186 41 is_stmt 0      ## native/lib.c:186:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp185:
	movq	%rax, %rcx
Ltmp186:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp187:
LBB10_4:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	.loc	3 189 1                 ## native/lib.c:189:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp188:
	popq	%rbp
	retq
LBB10_3:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp189:
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 188 10                ## native/lib.c:188:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB10_4
Ltmp190:
Lfunc_end10:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_fi
_asm_1_nif_fi:                          ## @asm_1_nif_fi
Lfunc_begin11:
	.loc	3 193 0                 ## native/lib.c:193:0
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
	##DEBUG_VALUE: asm_1_nif_fi:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_fi:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rdx
Ltmp191:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp192:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	.loc	3 196 45 prologue_end   ## native/lib.c:196:45
	movq	(%rdx), %rsi
Ltmp193:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp194:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 196 24                ## native/lib.c:196:24
	callq	_enif_get_double
	.loc	3 196 58                ## native/lib.c:196:58
	testl	%eax, %eax
Ltmp195:
	.loc	3 196 6                 ## native/lib.c:196:6
	je	LBB11_3
Ltmp196:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 199 44 is_stmt 1      ## native/lib.c:199:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp197:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 199 24 is_stmt 0      ## native/lib.c:199:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 199 57                ## native/lib.c:199:57
	testl	%eax, %eax
Ltmp198:
	.loc	3 199 6                 ## native/lib.c:199:6
	je	LBB11_3
Ltmp199:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 202 24 is_stmt 1      ## native/lib.c:202:24
	cvtsi2sdq	-24(%rbp), %xmm0
	.loc	3 202 21 is_stmt 0      ## native/lib.c:202:21
	addsd	-32(%rbp), %xmm0
Ltmp200:
	##DEBUG_VALUE: asm_1_nif_fi:result <- $xmm0
	.loc	3 203 32 is_stmt 1      ## native/lib.c:203:32
	movq	_ok_atom(%rip), %rbx
Ltmp201:
	.loc	3 203 41 is_stmt 0      ## native/lib.c:203:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp202:
	movq	%rax, %rcx
Ltmp203:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp204:
LBB11_4:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	.loc	3 206 1                 ## native/lib.c:206:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp205:
	popq	%rbp
	retq
LBB11_3:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp206:
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 205 10                ## native/lib.c:205:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB11_4
Ltmp207:
Lfunc_end11:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function asm_1_nif_fu
LCPI12_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI12_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_asm_1_nif_fu:                          ## @asm_1_nif_fu
Lfunc_begin12:
	.loc	3 210 0                 ## native/lib.c:210:0
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
	##DEBUG_VALUE: asm_1_nif_fu:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_fu:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rdx
Ltmp208:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp209:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	.loc	3 213 45 prologue_end   ## native/lib.c:213:45
	movq	(%rdx), %rsi
Ltmp210:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp211:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 213 24                ## native/lib.c:213:24
	callq	_enif_get_double
	.loc	3 213 58                ## native/lib.c:213:58
	testl	%eax, %eax
Ltmp212:
	.loc	3 213 6                 ## native/lib.c:213:6
	je	LBB12_3
Ltmp213:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 216 45 is_stmt 1      ## native/lib.c:216:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp214:
	##DEBUG_VALUE: asm_1_nif_fu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 216 24 is_stmt 0      ## native/lib.c:216:24
	movq	%r14, %rdi
	callq	_enif_get_ulong
	.loc	3 216 58                ## native/lib.c:216:58
	testl	%eax, %eax
Ltmp215:
	.loc	3 216 6                 ## native/lib.c:216:6
	je	LBB12_3
Ltmp216:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 219 24 is_stmt 1      ## native/lib.c:219:24
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	unpcklps	LCPI12_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI12_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	.loc	3 219 21 is_stmt 0      ## native/lib.c:219:21
	addsd	-32(%rbp), %xmm0
Ltmp217:
	##DEBUG_VALUE: asm_1_nif_fu:result <- $xmm0
	.loc	3 220 32 is_stmt 1      ## native/lib.c:220:32
	movq	_ok_atom(%rip), %rbx
Ltmp218:
	.loc	3 220 41 is_stmt 0      ## native/lib.c:220:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp219:
	movq	%rax, %rcx
Ltmp220:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp221:
LBB12_4:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	.loc	3 223 1                 ## native/lib.c:223:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp222:
	popq	%rbp
	retq
LBB12_3:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp223:
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 222 10                ## native/lib.c:222:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB12_4
Ltmp224:
Lfunc_end12:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ff
_asm_1_nif_ff:                          ## @asm_1_nif_ff
Lfunc_begin13:
	.loc	3 226 0                 ## native/lib.c:226:0
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
	##DEBUG_VALUE: asm_1_nif_ff:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_ff:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rdx
Ltmp225:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp226:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	.loc	3 228 45 prologue_end   ## native/lib.c:228:45
	movq	(%rdx), %rsi
Ltmp227:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp228:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 228 24                ## native/lib.c:228:24
	callq	_enif_get_double
	.loc	3 228 58                ## native/lib.c:228:58
	testl	%eax, %eax
Ltmp229:
	.loc	3 228 6                 ## native/lib.c:228:6
	je	LBB13_3
Ltmp230:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 231 45 is_stmt 1      ## native/lib.c:231:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp231:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 231 24 is_stmt 0      ## native/lib.c:231:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 231 58                ## native/lib.c:231:58
	testl	%eax, %eax
Ltmp232:
	.loc	3 231 6                 ## native/lib.c:231:6
	je	LBB13_3
Ltmp233:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 234 19 is_stmt 1      ## native/lib.c:234:19
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
Ltmp234:
	##DEBUG_VALUE: asm_1_nif_ff:a <- $xmm0
	.loc	3 234 21 is_stmt 0      ## native/lib.c:234:21
	addsd	-24(%rbp), %xmm0
Ltmp235:
	##DEBUG_VALUE: asm_1_nif_ff:result <- $xmm0
	.loc	3 235 32 is_stmt 1      ## native/lib.c:235:32
	movq	_ok_atom(%rip), %rbx
Ltmp236:
	.loc	3 235 41 is_stmt 0      ## native/lib.c:235:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp237:
	movq	%rax, %rcx
Ltmp238:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp239:
LBB13_4:
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	.loc	3 238 1                 ## native/lib.c:238:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp240:
	popq	%rbp
	retq
LBB13_3:
Ltmp241:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 237 10                ## native/lib.c:237:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB13_4
Ltmp242:
Lfunc_end13:
	.cfi_endproc
                                        ## -- End function
	.globl	_nif_init               ## -- Begin function nif_init
	.p2align	4, 0x90
_nif_init:                              ## @nif_init
Lfunc_begin14:
	.loc	3 254 0                 ## native/lib.c:254:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp243:
	.loc	3 254 1 prologue_end    ## native/lib.c:254:1
	leaq	_nif_init.entry(%rip), %rax
	popq	%rbp
	retq
Ltmp244:
Lfunc_end14:
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
	.asciz	"asm_1_nif_bb"

L_.str.7:                               ## @.str.7
	.asciz	"asm_1_nif_if"

L_.str.8:                               ## @.str.8
	.asciz	"asm_1_nif_uf"

L_.str.9:                               ## @.str.9
	.asciz	"asm_1_nif_fi"

L_.str.10:                              ## @.str.10
	.asciz	"asm_1_nif_fu"

L_.str.11:                              ## @.str.11
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
	.quad	_asm_1_nif_bb
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.7
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_if
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.8
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_uf
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.9
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_fi
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.10
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_fu
	.long	0                       ## 0x0
	.space	4
	.quad	L_.str.11
	.long	2                       ## 0x2
	.space	4
	.quad	_asm_1_nif_ff
	.long	0                       ## 0x0
	.space	4

	.p2align	3               ## @nif_init.entry
_nif_init.entry:
	.long	2                       ## 0x2
	.long	14                      ## 0xe
	.quad	L_.str.12
	.long	8                       ## 0x8
	.space	4
	.quad	_nif_funcs
	.quad	_load
	.quad	_reload
	.quad	_upgrade
	.quad	_unload
	.quad	L_.str.13
	.long	1                       ## 0x1
	.space	4
	.quad	24                      ## 0x18
	.quad	L_.str.14

	.section	__TEXT,__cstring,cstring_literals
L_.str.12:                              ## @.str.12
	.asciz	"Elixir.NifLlvm"

L_.str.13:                              ## @.str.13
	.asciz	"beam.vanilla"

L_.str.14:                              ## @.str.14
	.asciz	"erts-10.0 (OTP-21)"

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"clang version 7.0.0 (tags/RELEASE_700/final)" ## string offset=0
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
	.asciz	"__ARRAY_SIZE_TYPE__"   ## string offset=261
	.asciz	"entry"                 ## string offset=281
	.asciz	"ErlNifEntry"           ## string offset=287
	.asciz	"enif_entry_t"          ## string offset=299
	.asciz	"major"                 ## string offset=312
	.asciz	"minor"                 ## string offset=318
	.asciz	"num_of_funcs"          ## string offset=324
	.asciz	"funcs"                 ## string offset=337
	.asciz	"load"                  ## string offset=343
	.asciz	"reload"                ## string offset=348
	.asciz	"upgrade"               ## string offset=355
	.asciz	"unload"                ## string offset=363
	.asciz	"vm_variant"            ## string offset=370
	.asciz	"options"               ## string offset=381
	.asciz	"sizeof_ErlNifResourceTypeInit" ## string offset=389
	.asciz	"size_t"                ## string offset=419
	.asciz	"__darwin_size_t"       ## string offset=426
	.asciz	"min_erts"              ## string offset=442
	.asciz	"arithmetic_error"      ## string offset=451
	.asciz	"ok_atom"               ## string offset=468
	.asciz	"error_atom"            ## string offset=476
	.asciz	"arithmetic_error_atom" ## string offset=487
	.asciz	"__uint16_t"            ## string offset=509
	.asciz	"unsigned short"        ## string offset=520
	.asciz	"__int32_t"             ## string offset=535
	.asciz	"VECTOR"                ## string offset=545
	.asciz	"vector"                ## string offset=552
	.asciz	"size"                  ## string offset=559
	.asciz	"value"                 ## string offset=564
	.asciz	"double"                ## string offset=570
	.asciz	"init_nif_llvm"         ## string offset=577
	.asciz	"env"                   ## string offset=591
	.asciz	"priv"                  ## string offset=595
	.asciz	"info"                  ## string offset=600
	.asciz	"enif_get_big_num"      ## string offset=605
	.asciz	"enif_make_tuple2"      ## string offset=622
	.asciz	"e1"                    ## string offset=639
	.asciz	"e2"                    ## string offset=642
	.asciz	"enif_make_big_num"     ## string offset=645
	.asciz	"asm_1_nif_ii"          ## string offset=663
	.asciz	"asm_1_nif_uu"          ## string offset=676
	.asciz	"asm_1_nif_bb"          ## string offset=689
	.asciz	"asm_1_nif_if"          ## string offset=702
	.asciz	"asm_1_nif_uf"          ## string offset=715
	.asciz	"asm_1_nif_fi"          ## string offset=728
	.asciz	"asm_1_nif_fu"          ## string offset=741
	.asciz	"asm_1_nif_ff"          ## string offset=754
	.asciz	"nif_init"              ## string offset=767
	.asciz	"old_priv"              ## string offset=776
	.asciz	"term"                  ## string offset=785
	.asciz	"is_negative"           ## string offset=790
	.asciz	"tuple_arity"           ## string offset=802
	.asciz	"tuple"                 ## string offset=814
	.asciz	"length"                ## string offset=820
	.asciz	"head"                  ## string offset=827
	.asciz	"tail"                  ## string offset=832
	.asciz	"v"                     ## string offset=837
	.asciz	"i"                     ## string offset=839
	.asciz	"term_is_negative"      ## string offset=841
	.asciz	"term_array"            ## string offset=858
	.asciz	"term_list"             ## string offset=869
	.asciz	"argc"                  ## string offset=879
	.asciz	"argv"                  ## string offset=884
	.asciz	"a"                     ## string offset=889
	.asciz	"long int"              ## string offset=891
	.asciz	"b"                     ## string offset=900
	.asciz	"result"                ## string offset=902
	.asciz	"a_neg"                 ## string offset=909
	.asciz	"a_v"                   ## string offset=915
	.asciz	"b_neg"                 ## string offset=919
	.asciz	"b_v"                   ## string offset=925
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp1-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset2, Ltmp1-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp5-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset4, Lfunc_begin0-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp2-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset6, Lfunc_begin0-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp3-Lfunc_begin0
	.quad	Lset7
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset8, Ltmp0-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp1-Lfunc_begin0
	.quad	Lset9
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset10, Ltmp1-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp5-Lfunc_begin0
	.quad	Lset11
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset12, Lfunc_begin3-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp12-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset14, Ltmp12-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp16-Lfunc_begin0
	.quad	Lset15
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset16, Lfunc_begin3-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp13-Lfunc_begin0
	.quad	Lset17
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset18, Lfunc_begin3-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp14-Lfunc_begin0
	.quad	Lset19
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset20, Lfunc_begin3-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp14-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset22, Ltmp11-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp12-Lfunc_begin0
	.quad	Lset23
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset24, Ltmp12-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp16-Lfunc_begin0
	.quad	Lset25
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset26, Ltmp11-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp13-Lfunc_begin0
	.quad	Lset27
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset28, Ltmp11-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp14-Lfunc_begin0
	.quad	Lset29
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset30, Ltmp11-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp12-Lfunc_begin0
	.quad	Lset31
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset32, Ltmp12-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp16-Lfunc_begin0
	.quad	Lset33
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset34, Lfunc_begin4-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp18-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset36, Ltmp18-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp70-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset38, Ltmp71-Lfunc_begin0
	.quad	Lset38
.set Lset39, Lfunc_end4-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset40, Lfunc_begin4-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp21-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset42, Lfunc_begin4-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp18-Lfunc_begin0
	.quad	Lset43
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset44, Ltmp18-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp44-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset46, Lfunc_begin4-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp18-Lfunc_begin0
	.quad	Lset47
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
.set Lset48, Ltmp18-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp50-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset50, Ltmp50-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp67-Lfunc_begin0
	.quad	Lset51
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	168                     ## -88
	.byte	127                     ## 
.set Lset52, Ltmp67-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp68-Lfunc_begin0
	.quad	Lset53
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset54, Ltmp71-Lfunc_begin0
	.quad	Lset54
.set Lset55, Lfunc_end4-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset56, Ltmp20-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp25-Lfunc_begin0
	.quad	Lset57
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	72                      ## -56
.set Lset58, Ltmp25-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp26-Lfunc_begin0
	.quad	Lset59
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
.set Lset60, Ltmp29-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp31-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
.set Lset62, Ltmp35-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp38-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset64, Ltmp30-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp59-Lfunc_begin0
	.quad	Lset65
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
.set Lset66, Ltmp59-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp61-Lfunc_begin0
	.quad	Lset67
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset68, Ltmp61-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp63-Lfunc_begin0
	.quad	Lset69
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
.set Lset70, Ltmp63-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp65-Lfunc_begin0
	.quad	Lset71
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset72, Ltmp66-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp67-Lfunc_begin0
	.quad	Lset73
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset74, Ltmp67-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp68-Lfunc_begin0
	.quad	Lset75
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
.set Lset76, Ltmp71-Lfunc_begin0
	.quad	Lset76
.set Lset77, Lfunc_end4-Lfunc_begin0
	.quad	Lset77
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset78, Ltmp36-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp52-Lfunc_begin0
	.quad	Lset79
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
.set Lset80, Ltmp52-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp53-Lfunc_begin0
	.quad	Lset81
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset82, Ltmp56-Lfunc_begin0
	.quad	Lset82
.set Lset83, Lfunc_end4-Lfunc_begin0
	.quad	Lset83
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset84, Ltmp37-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp56-Lfunc_begin0
	.quad	Lset85
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
.set Lset86, Ltmp56-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp56-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset88, Ltmp56-Lfunc_begin0
	.quad	Lset88
.set Lset89, Lfunc_end4-Lfunc_begin0
	.quad	Lset89
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset90, Ltmp44-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp69-Lfunc_begin0
	.quad	Lset91
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset92, Ltmp71-Lfunc_begin0
	.quad	Lset92
.set Lset93, Lfunc_end4-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset94, Ltmp47-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp51-Lfunc_begin0
	.quad	Lset95
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
.set Lset96, Ltmp51-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp59-Lfunc_begin0
	.quad	Lset97
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset98, Ltmp61-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp62-Lfunc_begin0
	.quad	Lset99
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset100, Lfunc_begin5-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp74-Lfunc_begin0
	.quad	Lset101
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset102, Ltmp74-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp91-Lfunc_begin0
	.quad	Lset103
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset104, Lfunc_begin5-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp75-Lfunc_begin0
	.quad	Lset105
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset106, Lfunc_begin5-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp74-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset108, Ltmp74-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp89-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset110, Ltmp73-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp74-Lfunc_begin0
	.quad	Lset111
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset112, Ltmp74-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp79-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset114, Ltmp76-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp90-Lfunc_begin0
	.quad	Lset115
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset116, Ltmp76-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp79-Lfunc_begin0
	.quad	Lset117
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset118, Ltmp77-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp80-Lfunc_begin0
	.quad	Lset119
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
.set Lset120, Ltmp80-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp82-Lfunc_begin0
	.quad	Lset121
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset122, Ltmp77-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp88-Lfunc_begin0
	.quad	Lset123
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset124, Ltmp85-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp87-Lfunc_begin0
	.quad	Lset125
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset126, Ltmp86-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp87-Lfunc_begin0
	.quad	Lset127
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset128, Lfunc_begin6-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp94-Lfunc_begin0
	.quad	Lset129
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset130, Ltmp94-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp110-Lfunc_begin0
	.quad	Lset131
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset132, Ltmp111-Lfunc_begin0
	.quad	Lset132
.set Lset133, Lfunc_end6-Lfunc_begin0
	.quad	Lset133
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset134, Lfunc_begin6-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp95-Lfunc_begin0
	.quad	Lset135
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset136, Lfunc_begin6-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp94-Lfunc_begin0
	.quad	Lset137
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset138, Ltmp94-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp105-Lfunc_begin0
	.quad	Lset139
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset140, Ltmp111-Lfunc_begin0
	.quad	Lset140
.set Lset141, Lfunc_end6-Lfunc_begin0
	.quad	Lset141
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset142, Ltmp93-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp94-Lfunc_begin0
	.quad	Lset143
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset144, Ltmp94-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp98-Lfunc_begin0
	.quad	Lset145
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset146, Ltmp93-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp94-Lfunc_begin0
	.quad	Lset147
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset148, Ltmp94-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp98-Lfunc_begin0
	.quad	Lset149
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset150, Ltmp96-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp102-Lfunc_begin0
	.quad	Lset151
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset152, Ltmp102-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp103-Lfunc_begin0
	.quad	Lset153
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset154, Ltmp111-Lfunc_begin0
	.quad	Lset154
.set Lset155, Lfunc_end6-Lfunc_begin0
	.quad	Lset155
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset156, Ltmp99-Lfunc_begin0
	.quad	Lset156
.set Lset157, Lfunc_end6-Lfunc_begin0
	.quad	Lset157
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset158, Ltmp104-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp106-Lfunc_begin0
	.quad	Lset159
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset160, Ltmp107-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp108-Lfunc_begin0
	.quad	Lset161
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset162, Ltmp107-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp108-Lfunc_begin0
	.quad	Lset163
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset164, Ltmp113-Lfunc_begin0
	.quad	Lset164
.set Lset165, Lfunc_end6-Lfunc_begin0
	.quad	Lset165
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset166, Ltmp113-Lfunc_begin0
	.quad	Lset166
.set Lset167, Lfunc_end6-Lfunc_begin0
	.quad	Lset167
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset168, Lfunc_begin7-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp116-Lfunc_begin0
	.quad	Lset169
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset170, Ltmp116-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp132-Lfunc_begin0
	.quad	Lset171
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset172, Ltmp133-Lfunc_begin0
	.quad	Lset172
.set Lset173, Lfunc_end7-Lfunc_begin0
	.quad	Lset173
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset174, Lfunc_begin7-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp117-Lfunc_begin0
	.quad	Lset175
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset176, Lfunc_begin7-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp116-Lfunc_begin0
	.quad	Lset177
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset178, Ltmp116-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp127-Lfunc_begin0
	.quad	Lset179
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset180, Ltmp133-Lfunc_begin0
	.quad	Lset180
.set Lset181, Lfunc_end7-Lfunc_begin0
	.quad	Lset181
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset182, Ltmp115-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp116-Lfunc_begin0
	.quad	Lset183
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset184, Ltmp116-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp120-Lfunc_begin0
	.quad	Lset185
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset186, Ltmp115-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp116-Lfunc_begin0
	.quad	Lset187
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset188, Ltmp116-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp120-Lfunc_begin0
	.quad	Lset189
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset190, Ltmp118-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp124-Lfunc_begin0
	.quad	Lset191
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset192, Ltmp124-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp125-Lfunc_begin0
	.quad	Lset193
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset194, Ltmp133-Lfunc_begin0
	.quad	Lset194
.set Lset195, Lfunc_end7-Lfunc_begin0
	.quad	Lset195
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset196, Ltmp121-Lfunc_begin0
	.quad	Lset196
.set Lset197, Lfunc_end7-Lfunc_begin0
	.quad	Lset197
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset198, Ltmp126-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp128-Lfunc_begin0
	.quad	Lset199
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset200, Ltmp129-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp130-Lfunc_begin0
	.quad	Lset201
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset202, Ltmp129-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp130-Lfunc_begin0
	.quad	Lset203
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset204, Ltmp135-Lfunc_begin0
	.quad	Lset204
.set Lset205, Lfunc_end7-Lfunc_begin0
	.quad	Lset205
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset206, Ltmp135-Lfunc_begin0
	.quad	Lset206
.set Lset207, Lfunc_end7-Lfunc_begin0
	.quad	Lset207
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset208, Lfunc_begin8-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp138-Lfunc_begin0
	.quad	Lset209
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset210, Ltmp138-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp155-Lfunc_begin0
	.quad	Lset211
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset212, Ltmp156-Lfunc_begin0
	.quad	Lset212
.set Lset213, Lfunc_end8-Lfunc_begin0
	.quad	Lset213
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset214, Lfunc_begin8-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp139-Lfunc_begin0
	.quad	Lset215
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset216, Lfunc_begin8-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp138-Lfunc_begin0
	.quad	Lset217
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset218, Ltmp138-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp149-Lfunc_begin0
	.quad	Lset219
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset220, Ltmp156-Lfunc_begin0
	.quad	Lset220
.set Lset221, Lfunc_end8-Lfunc_begin0
	.quad	Lset221
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset222, Ltmp137-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp138-Lfunc_begin0
	.quad	Lset223
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset224, Ltmp138-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp143-Lfunc_begin0
	.quad	Lset225
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset226, Ltmp140-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp148-Lfunc_begin0
	.quad	Lset227
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	100                     ## -28
.set Lset228, Ltmp148-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp150-Lfunc_begin0
	.quad	Lset229
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
.set Lset230, Ltmp156-Lfunc_begin0
	.quad	Lset230
.set Lset231, Lfunc_end8-Lfunc_begin0
	.quad	Lset231
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	100                     ## -28
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset232, Ltmp141-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp149-Lfunc_begin0
	.quad	Lset233
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	80                      ## -48
.set Lset234, Ltmp149-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp152-Lfunc_begin0
	.quad	Lset235
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset236, Ltmp156-Lfunc_begin0
	.quad	Lset236
.set Lset237, Lfunc_end8-Lfunc_begin0
	.quad	Lset237
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	80                      ## -48
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset238, Ltmp144-Lfunc_begin0
	.quad	Lset238
.set Lset239, Lfunc_end8-Lfunc_begin0
	.quad	Lset239
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	76                      ## -52
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset240, Ltmp145-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp152-Lfunc_begin0
	.quad	Lset241
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	88                      ## -40
.set Lset242, Ltmp152-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp154-Lfunc_begin0
	.quad	Lset243
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset244, Ltmp151-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp154-Lfunc_begin0
	.quad	Lset245
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset246, Ltmp153-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp154-Lfunc_begin0
	.quad	Lset247
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset248, Ltmp153-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp154-Lfunc_begin0
	.quad	Lset249
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset250, Lfunc_begin9-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp158-Lfunc_begin0
	.quad	Lset251
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset252, Ltmp158-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp171-Lfunc_begin0
	.quad	Lset253
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset254, Ltmp172-Lfunc_begin0
	.quad	Lset254
.set Lset255, Lfunc_end9-Lfunc_begin0
	.quad	Lset255
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset256, Lfunc_begin9-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp159-Lfunc_begin0
	.quad	Lset257
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset258, Lfunc_begin9-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp158-Lfunc_begin0
	.quad	Lset259
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset260, Ltmp158-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp167-Lfunc_begin0
	.quad	Lset261
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset262, Ltmp172-Lfunc_begin0
	.quad	Lset262
.set Lset263, Lfunc_end9-Lfunc_begin0
	.quad	Lset263
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset264, Ltmp157-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp158-Lfunc_begin0
	.quad	Lset265
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset266, Ltmp158-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp162-Lfunc_begin0
	.quad	Lset267
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset268, Ltmp160-Lfunc_begin0
	.quad	Lset268
.set Lset269, Lfunc_end9-Lfunc_begin0
	.quad	Lset269
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset270, Ltmp163-Lfunc_begin0
	.quad	Lset270
.set Lset271, Lfunc_end9-Lfunc_begin0
	.quad	Lset271
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset272, Ltmp166-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp168-Lfunc_begin0
	.quad	Lset273
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset274, Ltmp169-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp170-Lfunc_begin0
	.quad	Lset275
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc75:
.set Lset276, Ltmp169-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp170-Lfunc_begin0
	.quad	Lset277
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc76:
.set Lset278, Lfunc_begin10-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp175-Lfunc_begin0
	.quad	Lset279
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset280, Ltmp175-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp188-Lfunc_begin0
	.quad	Lset281
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset282, Ltmp189-Lfunc_begin0
	.quad	Lset282
.set Lset283, Lfunc_end10-Lfunc_begin0
	.quad	Lset283
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc77:
.set Lset284, Lfunc_begin10-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp176-Lfunc_begin0
	.quad	Lset285
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc78:
.set Lset286, Lfunc_begin10-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp175-Lfunc_begin0
	.quad	Lset287
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset288, Ltmp175-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp184-Lfunc_begin0
	.quad	Lset289
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset290, Ltmp189-Lfunc_begin0
	.quad	Lset290
.set Lset291, Lfunc_end10-Lfunc_begin0
	.quad	Lset291
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc79:
.set Lset292, Ltmp174-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp175-Lfunc_begin0
	.quad	Lset293
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset294, Ltmp175-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp179-Lfunc_begin0
	.quad	Lset295
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc80:
.set Lset296, Ltmp177-Lfunc_begin0
	.quad	Lset296
.set Lset297, Lfunc_end10-Lfunc_begin0
	.quad	Lset297
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc81:
.set Lset298, Ltmp180-Lfunc_begin0
	.quad	Lset298
.set Lset299, Lfunc_end10-Lfunc_begin0
	.quad	Lset299
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc82:
.set Lset300, Ltmp183-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp185-Lfunc_begin0
	.quad	Lset301
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc83:
.set Lset302, Ltmp186-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp187-Lfunc_begin0
	.quad	Lset303
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc84:
.set Lset304, Ltmp186-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp187-Lfunc_begin0
	.quad	Lset305
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc85:
.set Lset306, Lfunc_begin11-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp192-Lfunc_begin0
	.quad	Lset307
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset308, Ltmp192-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp205-Lfunc_begin0
	.quad	Lset309
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset310, Ltmp206-Lfunc_begin0
	.quad	Lset310
.set Lset311, Lfunc_end11-Lfunc_begin0
	.quad	Lset311
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc86:
.set Lset312, Lfunc_begin11-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp193-Lfunc_begin0
	.quad	Lset313
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc87:
.set Lset314, Lfunc_begin11-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp192-Lfunc_begin0
	.quad	Lset315
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset316, Ltmp192-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp201-Lfunc_begin0
	.quad	Lset317
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset318, Ltmp206-Lfunc_begin0
	.quad	Lset318
.set Lset319, Lfunc_end11-Lfunc_begin0
	.quad	Lset319
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc88:
.set Lset320, Ltmp191-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp192-Lfunc_begin0
	.quad	Lset321
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset322, Ltmp192-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp196-Lfunc_begin0
	.quad	Lset323
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc89:
.set Lset324, Ltmp194-Lfunc_begin0
	.quad	Lset324
.set Lset325, Lfunc_end11-Lfunc_begin0
	.quad	Lset325
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc90:
.set Lset326, Ltmp197-Lfunc_begin0
	.quad	Lset326
.set Lset327, Lfunc_end11-Lfunc_begin0
	.quad	Lset327
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc91:
.set Lset328, Ltmp200-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp202-Lfunc_begin0
	.quad	Lset329
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc92:
.set Lset330, Ltmp203-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp204-Lfunc_begin0
	.quad	Lset331
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc93:
.set Lset332, Ltmp203-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp204-Lfunc_begin0
	.quad	Lset333
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc94:
.set Lset334, Lfunc_begin12-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp209-Lfunc_begin0
	.quad	Lset335
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset336, Ltmp209-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp222-Lfunc_begin0
	.quad	Lset337
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset338, Ltmp223-Lfunc_begin0
	.quad	Lset338
.set Lset339, Lfunc_end12-Lfunc_begin0
	.quad	Lset339
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc95:
.set Lset340, Lfunc_begin12-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp210-Lfunc_begin0
	.quad	Lset341
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc96:
.set Lset342, Lfunc_begin12-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp209-Lfunc_begin0
	.quad	Lset343
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset344, Ltmp209-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp218-Lfunc_begin0
	.quad	Lset345
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset346, Ltmp223-Lfunc_begin0
	.quad	Lset346
.set Lset347, Lfunc_end12-Lfunc_begin0
	.quad	Lset347
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc97:
.set Lset348, Ltmp208-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp209-Lfunc_begin0
	.quad	Lset349
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset350, Ltmp209-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp213-Lfunc_begin0
	.quad	Lset351
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc98:
.set Lset352, Ltmp211-Lfunc_begin0
	.quad	Lset352
.set Lset353, Lfunc_end12-Lfunc_begin0
	.quad	Lset353
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc99:
.set Lset354, Ltmp214-Lfunc_begin0
	.quad	Lset354
.set Lset355, Lfunc_end12-Lfunc_begin0
	.quad	Lset355
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc100:
.set Lset356, Ltmp217-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp219-Lfunc_begin0
	.quad	Lset357
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc101:
.set Lset358, Ltmp220-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp221-Lfunc_begin0
	.quad	Lset359
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc102:
.set Lset360, Ltmp220-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp221-Lfunc_begin0
	.quad	Lset361
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc103:
.set Lset362, Lfunc_begin13-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp226-Lfunc_begin0
	.quad	Lset363
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset364, Ltmp226-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp240-Lfunc_begin0
	.quad	Lset365
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset366, Ltmp241-Lfunc_begin0
	.quad	Lset366
.set Lset367, Lfunc_end13-Lfunc_begin0
	.quad	Lset367
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc104:
.set Lset368, Lfunc_begin13-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp227-Lfunc_begin0
	.quad	Lset369
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc105:
.set Lset370, Lfunc_begin13-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp226-Lfunc_begin0
	.quad	Lset371
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset372, Ltmp226-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp236-Lfunc_begin0
	.quad	Lset373
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset374, Ltmp241-Lfunc_begin0
	.quad	Lset374
.set Lset375, Lfunc_end13-Lfunc_begin0
	.quad	Lset375
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc106:
.set Lset376, Ltmp225-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp226-Lfunc_begin0
	.quad	Lset377
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset378, Ltmp226-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp230-Lfunc_begin0
	.quad	Lset379
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc107:
.set Lset380, Ltmp228-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp234-Lfunc_begin0
	.quad	Lset381
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset382, Ltmp234-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp235-Lfunc_begin0
	.quad	Lset383
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
.set Lset384, Ltmp241-Lfunc_begin0
	.quad	Lset384
.set Lset385, Lfunc_end13-Lfunc_begin0
	.quad	Lset385
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc108:
.set Lset386, Ltmp231-Lfunc_begin0
	.quad	Lset386
.set Lset387, Lfunc_end13-Lfunc_begin0
	.quad	Lset387
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc109:
.set Lset388, Ltmp235-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp237-Lfunc_begin0
	.quad	Lset389
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc110:
.set Lset390, Ltmp238-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp239-Lfunc_begin0
	.quad	Lset391
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc111:
.set Lset392, Ltmp238-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp239-Lfunc_begin0
	.quad	Lset393
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
	.byte	52                      ## DW_TAG_variable
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
	.byte	29                      ## Abbreviation Code
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
	.byte	30                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	31                      ## Abbreviation Code
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
	.byte	32                      ## Abbreviation Code
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
	.byte	33                      ## Abbreviation Code
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
	.long	3107                    ## Length of Unit
	.short	4                       ## DWARF version number
.set Lset394, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset394
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0xc1c DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	45                      ## DW_AT_name
.set Lset395, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset395
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset396, Lfunc_end14-Lfunc_begin0  ## DW_AT_high_pc
	.long	Lset396
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	241                     ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_nif_funcs
	.byte	3                       ## Abbrev [3] 0x3f:0xc DW_TAG_array_type
	.long	75                      ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x44:0x6 DW_TAG_subrange_type
	.long	282                     ## DW_AT_type
	.byte	8                       ## DW_AT_count
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
	.quad	Lfunc_begin14           ## DW_AT_low_pc
.set Lset397, Lfunc_end14-Lfunc_begin14 ## DW_AT_high_pc
	.long	Lset397
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	767                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	254                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	3068                    ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x13a:0x15 DW_TAG_variable
	.long	281                     ## DW_AT_name
	.long	336                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	254                     ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_nif_init.entry
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x150:0xb DW_TAG_typedef
	.long	347                     ## DW_AT_type
	.long	287                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	138                     ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x15b:0xa5 DW_TAG_structure_type
	.long	299                     ## DW_AT_name
	.byte	96                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	115                     ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x163:0xc DW_TAG_member
	.long	312                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	117                     ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x16f:0xc DW_TAG_member
	.long	318                     ## DW_AT_name
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
	.long	324                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x193:0xc DW_TAG_member
	.long	337                     ## DW_AT_name
	.long	512                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	121                     ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x19f:0xc DW_TAG_member
	.long	343                     ## DW_AT_name
	.long	517                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	122                     ## DW_AT_decl_line
	.byte	32                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1ab:0xc DW_TAG_member
	.long	348                     ## DW_AT_name
	.long	517                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	123                     ## DW_AT_decl_line
	.byte	40                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1b7:0xc DW_TAG_member
	.long	355                     ## DW_AT_name
	.long	549                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1c3:0xc DW_TAG_member
	.long	363                     ## DW_AT_name
	.long	580                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	125                     ## DW_AT_decl_line
	.byte	56                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1cf:0xc DW_TAG_member
	.long	370                     ## DW_AT_name
	.long	143                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	128                     ## DW_AT_decl_line
	.byte	64                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1db:0xc DW_TAG_member
	.long	381                     ## DW_AT_name
	.long	160                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	131                     ## DW_AT_decl_line
	.byte	72                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1e7:0xc DW_TAG_member
	.long	389                     ## DW_AT_name
	.long	597                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	134                     ## DW_AT_decl_line
	.byte	80                      ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x1f3:0xc DW_TAG_member
	.long	442                     ## DW_AT_name
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
	.long	419                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x260:0xb DW_TAG_typedef
	.long	237                     ## DW_AT_type
	.long	426                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	2                       ## Abbrev [2] 0x26b:0x15 DW_TAG_variable
	.long	451                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	72                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_arithmetic_error
	.byte	2                       ## Abbrev [2] 0x280:0x15 DW_TAG_variable
	.long	468                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	73                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_ok_atom
	.byte	2                       ## Abbrev [2] 0x295:0x15 DW_TAG_variable
	.long	476                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_error_atom
	.byte	2                       ## Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	487                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_arithmetic_error_atom
	.byte	5                       ## Abbrev [5] 0x2bf:0xb DW_TAG_typedef
	.long	714                     ## DW_AT_type
	.long	509                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.byte	10                      ## Abbrev [10] 0x2ca:0x7 DW_TAG_base_type
	.long	520                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x2d1:0xb DW_TAG_typedef
	.long	265                     ## DW_AT_type
	.long	535                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	8                       ## Abbrev [8] 0x2dc:0x5 DW_TAG_pointer_type
	.long	237                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x2e1:0x5 DW_TAG_pointer_type
	.long	742                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x2e6:0xb DW_TAG_typedef
	.long	753                     ## DW_AT_type
	.long	545                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x2f1:0x21 DW_TAG_structure_type
	.long	552                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	3                       ## DW_AT_decl_file
	.byte	5                       ## DW_AT_decl_line
	.byte	7                       ## Abbrev [7] 0x2f9:0xc DW_TAG_member
	.long	559                     ## DW_AT_name
	.long	265                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	7                       ## Abbrev [7] 0x305:0xc DW_TAG_member
	.long	564                     ## DW_AT_name
	.long	732                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	10                      ## Abbrev [10] 0x312:0x7 DW_TAG_base_type
	.long	570                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x319:0x14 DW_TAG_subprogram
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x321:0xb DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x32d:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset398, Lfunc_end0-Lfunc_begin0   ## DW_AT_high_pc
	.long	Lset398
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	1002                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x340:0x9 DW_TAG_formal_parameter
.set Lset399, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset399
	.long	1014                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x349:0x9 DW_TAG_formal_parameter
.set Lset400, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset400
	.long	1025                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x352:0x9 DW_TAG_formal_parameter
.set Lset401, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset401
	.long	1036                    ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x35b:0x1d DW_TAG_inlined_subroutine
	.long	793                     ## DW_AT_abstract_origin
	.quad	Ltmp1                   ## DW_AT_low_pc
.set Lset402, Ltmp4-Ltmp1               ## DW_AT_high_pc
	.long	Lset402
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x36e:0x9 DW_TAG_formal_parameter
.set Lset403, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset403
	.long	801                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	23                      ## Abbrev [23] 0x379:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset404, Lfunc_end1-Lfunc_begin1   ## DW_AT_high_pc
	.long	Lset404
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	363                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x38e:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x39b:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x3a9:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset405, Lfunc_end2-Lfunc_begin2   ## DW_AT_high_pc
	.long	Lset405
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	348                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x3c2:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3cf:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3dc:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	26                      ## Abbrev [26] 0x3ea:0x2e DW_TAG_subprogram
	.long	343                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x3f6:0xb DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x401:0xb DW_TAG_formal_parameter
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x40c:0xb DW_TAG_formal_parameter
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x418:0xa2 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
.set Lset406, Lfunc_end3-Lfunc_begin3   ## DW_AT_high_pc
	.long	Lset406
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	355                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x431:0xf DW_TAG_formal_parameter
.set Lset407, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset407
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x440:0xf DW_TAG_formal_parameter
.set Lset408, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset408
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x44f:0xf DW_TAG_formal_parameter
.set Lset409, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset409
	.long	776                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x45e:0xf DW_TAG_formal_parameter
.set Lset410, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset410
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x46d:0x4c DW_TAG_inlined_subroutine
	.long	1002                    ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
.set Lset411, Ltmp15-Ltmp12             ## DW_AT_high_pc
	.long	Lset411
	.byte	6                       ## DW_AT_call_file
	.byte	26                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x480:0x9 DW_TAG_formal_parameter
.set Lset412, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset412
	.long	1014                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x489:0x9 DW_TAG_formal_parameter
.set Lset413, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset413
	.long	1025                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x492:0x9 DW_TAG_formal_parameter
.set Lset414, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset414
	.long	1036                    ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x49b:0x1d DW_TAG_inlined_subroutine
	.long	793                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
.set Lset415, Ltmp15-Ltmp12             ## DW_AT_high_pc
	.long	Lset415
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x4ae:0x9 DW_TAG_formal_parameter
.set Lset416, Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset416
	.long	801                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x4ba:0xcc DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
.set Lset417, Lfunc_end4-Lfunc_begin4   ## DW_AT_high_pc
	.long	Lset417
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	605                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x4d3:0xf DW_TAG_formal_parameter
.set Lset418, Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset418
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4e2:0xf DW_TAG_formal_parameter
.set Lset419, Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset419
	.long	785                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4f1:0xf DW_TAG_formal_parameter
.set Lset420, Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset420
	.long	790                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	3073                    ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x500:0xf DW_TAG_formal_parameter
.set Lset421, Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset421
	.long	564                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	3078                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x50f:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	68
	.long	802                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	12                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x51d:0xf DW_TAG_variable
.set Lset422, Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset422
	.long	814                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x52c:0xf DW_TAG_variable
.set Lset423, Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset423
	.long	820                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	23                      ## DW_AT_decl_line
	.long	160                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x53b:0xf DW_TAG_variable
.set Lset424, Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset424
	.long	827                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x54a:0xf DW_TAG_variable
.set Lset425, Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset425
	.long	832                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x559:0xf DW_TAG_variable
.set Lset426, Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset426
	.long	837                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x568:0x1d DW_TAG_lexical_block
	.quad	Ltmp47                  ## DW_AT_low_pc
.set Lset427, Ltmp65-Ltmp47             ## DW_AT_high_pc
	.long	Lset427
	.byte	29                      ## Abbrev [29] 0x575:0xf DW_TAG_variable
.set Lset428, Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset428
	.long	839                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	31                      ## Abbrev [31] 0x586:0x32 DW_TAG_subprogram
	.long	622                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	32                      ## Abbrev [32] 0x593:0xc DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x59f:0xc DW_TAG_formal_parameter
	.long	639                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	423                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x5ab:0xc DW_TAG_formal_parameter
	.long	642                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	424                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x5b8:0xc0 DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
.set Lset429, Lfunc_end5-Lfunc_begin5   ## DW_AT_high_pc
	.long	Lset429
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	645                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x5d1:0xf DW_TAG_formal_parameter
.set Lset430, Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset430
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5e0:0xf DW_TAG_formal_parameter
.set Lset431, Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset431
	.long	790                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	3083                    ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5ef:0xf DW_TAG_formal_parameter
.set Lset432, Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset432
	.long	564                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	3088                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x5fe:0xf DW_TAG_variable
.set Lset433, Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset433
	.long	841                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	62                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x60d:0xf DW_TAG_variable
.set Lset434, Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset434
	.long	858                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	63                      ## DW_AT_decl_line
	.long	3098                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x61c:0xf DW_TAG_variable
.set Lset435, Ldebug_loc30-Lsection_debug_loc ## DW_AT_location
	.long	Lset435
	.long	869                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x62b:0x1d DW_TAG_lexical_block
	.quad	Ltmp77                  ## DW_AT_low_pc
.set Lset436, Ltmp84-Ltmp77             ## DW_AT_high_pc
	.long	Lset436
	.byte	29                      ## Abbrev [29] 0x638:0xf DW_TAG_variable
.set Lset437, Ldebug_loc28-Lsection_debug_loc ## DW_AT_location
	.long	Lset437
	.long	839                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	22                      ## Abbrev [22] 0x648:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp86                  ## DW_AT_low_pc
.set Lset438, Ltmp92-Ltmp86             ## DW_AT_high_pc
	.long	Lset438
	.byte	3                       ## DW_AT_call_file
	.byte	69                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x65b:0x9 DW_TAG_formal_parameter
.set Lset439, Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset439
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x664:0x9 DW_TAG_formal_parameter
.set Lset440, Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset440
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x66d:0x9 DW_TAG_formal_parameter
.set Lset441, Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset441
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x678:0xca DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
.set Lset442, Lfunc_end6-Lfunc_begin6   ## DW_AT_high_pc
	.long	Lset442
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	663                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x691:0xf DW_TAG_formal_parameter
.set Lset443, Ldebug_loc32-Lsection_debug_loc ## DW_AT_location
	.long	Lset443
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x6a0:0xf DW_TAG_formal_parameter
.set Lset444, Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset444
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x6af:0xf DW_TAG_formal_parameter
.set Lset445, Ldebug_loc34-Lsection_debug_loc ## DW_AT_location
	.long	Lset445
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6be:0xf DW_TAG_variable
.set Lset446, Ldebug_loc37-Lsection_debug_loc ## DW_AT_location
	.long	Lset446
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.long	3103                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6cd:0xf DW_TAG_variable
.set Lset447, Ldebug_loc38-Lsection_debug_loc ## DW_AT_location
	.long	Lset447
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.long	3103                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6dc:0xf DW_TAG_variable
.set Lset448, Ldebug_loc39-Lsection_debug_loc ## DW_AT_location
	.long	Lset448
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	96                      ## DW_AT_decl_line
	.long	3103                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x6eb:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp107                 ## DW_AT_low_pc
.set Lset449, Ltmp108-Ltmp107           ## DW_AT_high_pc
	.long	Lset449
	.byte	3                       ## DW_AT_call_file
	.byte	102                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x6fe:0x9 DW_TAG_formal_parameter
.set Lset450, Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset450
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x707:0x9 DW_TAG_formal_parameter
.set Lset451, Ldebug_loc41-Lsection_debug_loc ## DW_AT_location
	.long	Lset451
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x710:0x9 DW_TAG_formal_parameter
.set Lset452, Ldebug_loc40-Lsection_debug_loc ## DW_AT_location
	.long	Lset452
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	33                      ## Abbrev [33] 0x71a:0x27 DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
.set Lset453, Ldebug_ranges0-Ldebug_range ## DW_AT_ranges
	.long	Lset453
	.byte	3                       ## DW_AT_call_file
	.byte	106                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x725:0x9 DW_TAG_formal_parameter
.set Lset454, Ldebug_loc36-Lsection_debug_loc ## DW_AT_location
	.long	Lset454
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x72e:0x9 DW_TAG_formal_parameter
.set Lset455, Ldebug_loc43-Lsection_debug_loc ## DW_AT_location
	.long	Lset455
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x737:0x9 DW_TAG_formal_parameter
.set Lset456, Ldebug_loc42-Lsection_debug_loc ## DW_AT_location
	.long	Lset456
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x742:0xca DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
.set Lset457, Lfunc_end7-Lfunc_begin7   ## DW_AT_high_pc
	.long	Lset457
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	676                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x75b:0xf DW_TAG_formal_parameter
.set Lset458, Ldebug_loc44-Lsection_debug_loc ## DW_AT_location
	.long	Lset458
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x76a:0xf DW_TAG_formal_parameter
.set Lset459, Ldebug_loc45-Lsection_debug_loc ## DW_AT_location
	.long	Lset459
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x779:0xf DW_TAG_formal_parameter
.set Lset460, Ldebug_loc46-Lsection_debug_loc ## DW_AT_location
	.long	Lset460
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x788:0xf DW_TAG_variable
.set Lset461, Ldebug_loc49-Lsection_debug_loc ## DW_AT_location
	.long	Lset461
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	113                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x797:0xf DW_TAG_variable
.set Lset462, Ldebug_loc50-Lsection_debug_loc ## DW_AT_location
	.long	Lset462
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	113                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x7a6:0xf DW_TAG_variable
.set Lset463, Ldebug_loc51-Lsection_debug_loc ## DW_AT_location
	.long	Lset463
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	121                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x7b5:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp129                 ## DW_AT_low_pc
.set Lset464, Ltmp130-Ltmp129           ## DW_AT_high_pc
	.long	Lset464
	.byte	3                       ## DW_AT_call_file
	.byte	127                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x7c8:0x9 DW_TAG_formal_parameter
.set Lset465, Ldebug_loc47-Lsection_debug_loc ## DW_AT_location
	.long	Lset465
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x7d1:0x9 DW_TAG_formal_parameter
.set Lset466, Ldebug_loc53-Lsection_debug_loc ## DW_AT_location
	.long	Lset466
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x7da:0x9 DW_TAG_formal_parameter
.set Lset467, Ldebug_loc52-Lsection_debug_loc ## DW_AT_location
	.long	Lset467
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	33                      ## Abbrev [33] 0x7e4:0x27 DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
.set Lset468, Ldebug_ranges1-Ldebug_range ## DW_AT_ranges
	.long	Lset468
	.byte	3                       ## DW_AT_call_file
	.byte	131                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x7ef:0x9 DW_TAG_formal_parameter
.set Lset469, Ldebug_loc48-Lsection_debug_loc ## DW_AT_location
	.long	Lset469
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x7f8:0x9 DW_TAG_formal_parameter
.set Lset470, Ldebug_loc55-Lsection_debug_loc ## DW_AT_location
	.long	Lset470
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x801:0x9 DW_TAG_formal_parameter
.set Lset471, Ldebug_loc54-Lsection_debug_loc ## DW_AT_location
	.long	Lset471
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x80c:0xc1 DW_TAG_subprogram
	.quad	Lfunc_begin8            ## DW_AT_low_pc
.set Lset472, Lfunc_end8-Lfunc_begin8   ## DW_AT_high_pc
	.long	Lset472
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	689                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	135                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x825:0xf DW_TAG_formal_parameter
.set Lset473, Ldebug_loc56-Lsection_debug_loc ## DW_AT_location
	.long	Lset473
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	135                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x834:0xf DW_TAG_formal_parameter
.set Lset474, Ldebug_loc57-Lsection_debug_loc ## DW_AT_location
	.long	Lset474
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	135                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x843:0xf DW_TAG_formal_parameter
.set Lset475, Ldebug_loc58-Lsection_debug_loc ## DW_AT_location
	.long	Lset475
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	135                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x852:0xf DW_TAG_variable
.set Lset476, Ldebug_loc60-Lsection_debug_loc ## DW_AT_location
	.long	Lset476
	.long	909                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.long	160                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x861:0xf DW_TAG_variable
.set Lset477, Ldebug_loc61-Lsection_debug_loc ## DW_AT_location
	.long	Lset477
	.long	915                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	138                     ## DW_AT_decl_line
	.long	737                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x870:0xf DW_TAG_variable
.set Lset478, Ldebug_loc62-Lsection_debug_loc ## DW_AT_location
	.long	Lset478
	.long	919                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.long	160                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x87f:0xf DW_TAG_variable
.set Lset479, Ldebug_loc63-Lsection_debug_loc ## DW_AT_location
	.long	Lset479
	.long	925                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	138                     ## DW_AT_decl_line
	.long	737                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x88e:0xf DW_TAG_variable
.set Lset480, Ldebug_loc64-Lsection_debug_loc ## DW_AT_location
	.long	Lset480
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	146                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x89d:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp153                 ## DW_AT_low_pc
.set Lset481, Ltmp154-Ltmp153           ## DW_AT_high_pc
	.long	Lset481
	.byte	3                       ## DW_AT_call_file
	.byte	153                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x8b0:0x9 DW_TAG_formal_parameter
.set Lset482, Ldebug_loc59-Lsection_debug_loc ## DW_AT_location
	.long	Lset482
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x8b9:0x9 DW_TAG_formal_parameter
.set Lset483, Ldebug_loc65-Lsection_debug_loc ## DW_AT_location
	.long	Lset483
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x8c2:0x9 DW_TAG_formal_parameter
.set Lset484, Ldebug_loc66-Lsection_debug_loc ## DW_AT_location
	.long	Lset484
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x8cd:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin9            ## DW_AT_low_pc
.set Lset485, Lfunc_end9-Lfunc_begin9   ## DW_AT_high_pc
	.long	Lset485
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	702                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x8e6:0xf DW_TAG_formal_parameter
.set Lset486, Ldebug_loc67-Lsection_debug_loc ## DW_AT_location
	.long	Lset486
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x8f5:0xf DW_TAG_formal_parameter
.set Lset487, Ldebug_loc68-Lsection_debug_loc ## DW_AT_location
	.long	Lset487
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x904:0xf DW_TAG_formal_parameter
.set Lset488, Ldebug_loc69-Lsection_debug_loc ## DW_AT_location
	.long	Lset488
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x913:0xf DW_TAG_variable
.set Lset489, Ldebug_loc71-Lsection_debug_loc ## DW_AT_location
	.long	Lset489
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	159                     ## DW_AT_decl_line
	.long	3103                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x922:0xf DW_TAG_variable
.set Lset490, Ldebug_loc72-Lsection_debug_loc ## DW_AT_location
	.long	Lset490
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	160                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x931:0xf DW_TAG_variable
.set Lset491, Ldebug_loc73-Lsection_debug_loc ## DW_AT_location
	.long	Lset491
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	167                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x940:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp169                 ## DW_AT_low_pc
.set Lset492, Ltmp170-Ltmp169           ## DW_AT_high_pc
	.long	Lset492
	.byte	3                       ## DW_AT_call_file
	.byte	168                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x953:0x9 DW_TAG_formal_parameter
.set Lset493, Ldebug_loc70-Lsection_debug_loc ## DW_AT_location
	.long	Lset493
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x95c:0x9 DW_TAG_formal_parameter
.set Lset494, Ldebug_loc75-Lsection_debug_loc ## DW_AT_location
	.long	Lset494
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x965:0x9 DW_TAG_formal_parameter
.set Lset495, Ldebug_loc74-Lsection_debug_loc ## DW_AT_location
	.long	Lset495
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x970:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin10           ## DW_AT_low_pc
.set Lset496, Lfunc_end10-Lfunc_begin10 ## DW_AT_high_pc
	.long	Lset496
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	715                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	175                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x989:0xf DW_TAG_formal_parameter
.set Lset497, Ldebug_loc76-Lsection_debug_loc ## DW_AT_location
	.long	Lset497
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	175                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x998:0xf DW_TAG_formal_parameter
.set Lset498, Ldebug_loc77-Lsection_debug_loc ## DW_AT_location
	.long	Lset498
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	175                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x9a7:0xf DW_TAG_formal_parameter
.set Lset499, Ldebug_loc78-Lsection_debug_loc ## DW_AT_location
	.long	Lset499
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	175                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x9b6:0xf DW_TAG_variable
.set Lset500, Ldebug_loc80-Lsection_debug_loc ## DW_AT_location
	.long	Lset500
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	177                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x9c5:0xf DW_TAG_variable
.set Lset501, Ldebug_loc81-Lsection_debug_loc ## DW_AT_location
	.long	Lset501
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	178                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x9d4:0xf DW_TAG_variable
.set Lset502, Ldebug_loc82-Lsection_debug_loc ## DW_AT_location
	.long	Lset502
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	185                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x9e3:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp186                 ## DW_AT_low_pc
.set Lset503, Ltmp187-Ltmp186           ## DW_AT_high_pc
	.long	Lset503
	.byte	3                       ## DW_AT_call_file
	.byte	186                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x9f6:0x9 DW_TAG_formal_parameter
.set Lset504, Ldebug_loc79-Lsection_debug_loc ## DW_AT_location
	.long	Lset504
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x9ff:0x9 DW_TAG_formal_parameter
.set Lset505, Ldebug_loc84-Lsection_debug_loc ## DW_AT_location
	.long	Lset505
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xa08:0x9 DW_TAG_formal_parameter
.set Lset506, Ldebug_loc83-Lsection_debug_loc ## DW_AT_location
	.long	Lset506
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0xa13:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin11           ## DW_AT_low_pc
.set Lset507, Lfunc_end11-Lfunc_begin11 ## DW_AT_high_pc
	.long	Lset507
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	728                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	192                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0xa2c:0xf DW_TAG_formal_parameter
.set Lset508, Ldebug_loc85-Lsection_debug_loc ## DW_AT_location
	.long	Lset508
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	192                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xa3b:0xf DW_TAG_formal_parameter
.set Lset509, Ldebug_loc86-Lsection_debug_loc ## DW_AT_location
	.long	Lset509
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	192                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xa4a:0xf DW_TAG_formal_parameter
.set Lset510, Ldebug_loc87-Lsection_debug_loc ## DW_AT_location
	.long	Lset510
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	192                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa59:0xf DW_TAG_variable
.set Lset511, Ldebug_loc89-Lsection_debug_loc ## DW_AT_location
	.long	Lset511
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	194                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa68:0xf DW_TAG_variable
.set Lset512, Ldebug_loc90-Lsection_debug_loc ## DW_AT_location
	.long	Lset512
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	195                     ## DW_AT_decl_line
	.long	3103                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa77:0xf DW_TAG_variable
.set Lset513, Ldebug_loc91-Lsection_debug_loc ## DW_AT_location
	.long	Lset513
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	202                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0xa86:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp203                 ## DW_AT_low_pc
.set Lset514, Ltmp204-Ltmp203           ## DW_AT_high_pc
	.long	Lset514
	.byte	3                       ## DW_AT_call_file
	.byte	203                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0xa99:0x9 DW_TAG_formal_parameter
.set Lset515, Ldebug_loc88-Lsection_debug_loc ## DW_AT_location
	.long	Lset515
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xaa2:0x9 DW_TAG_formal_parameter
.set Lset516, Ldebug_loc93-Lsection_debug_loc ## DW_AT_location
	.long	Lset516
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xaab:0x9 DW_TAG_formal_parameter
.set Lset517, Ldebug_loc92-Lsection_debug_loc ## DW_AT_location
	.long	Lset517
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0xab6:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin12           ## DW_AT_low_pc
.set Lset518, Lfunc_end12-Lfunc_begin12 ## DW_AT_high_pc
	.long	Lset518
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	741                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	209                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0xacf:0xf DW_TAG_formal_parameter
.set Lset519, Ldebug_loc94-Lsection_debug_loc ## DW_AT_location
	.long	Lset519
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	209                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xade:0xf DW_TAG_formal_parameter
.set Lset520, Ldebug_loc95-Lsection_debug_loc ## DW_AT_location
	.long	Lset520
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	209                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xaed:0xf DW_TAG_formal_parameter
.set Lset521, Ldebug_loc96-Lsection_debug_loc ## DW_AT_location
	.long	Lset521
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	209                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xafc:0xf DW_TAG_variable
.set Lset522, Ldebug_loc98-Lsection_debug_loc ## DW_AT_location
	.long	Lset522
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	211                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xb0b:0xf DW_TAG_variable
.set Lset523, Ldebug_loc99-Lsection_debug_loc ## DW_AT_location
	.long	Lset523
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	212                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xb1a:0xf DW_TAG_variable
.set Lset524, Ldebug_loc100-Lsection_debug_loc ## DW_AT_location
	.long	Lset524
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	219                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0xb29:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp220                 ## DW_AT_low_pc
.set Lset525, Ltmp221-Ltmp220           ## DW_AT_high_pc
	.long	Lset525
	.byte	3                       ## DW_AT_call_file
	.byte	220                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0xb3c:0x9 DW_TAG_formal_parameter
.set Lset526, Ldebug_loc97-Lsection_debug_loc ## DW_AT_location
	.long	Lset526
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xb45:0x9 DW_TAG_formal_parameter
.set Lset527, Ldebug_loc102-Lsection_debug_loc ## DW_AT_location
	.long	Lset527
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xb4e:0x9 DW_TAG_formal_parameter
.set Lset528, Ldebug_loc101-Lsection_debug_loc ## DW_AT_location
	.long	Lset528
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0xb59:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin13           ## DW_AT_low_pc
.set Lset529, Lfunc_end13-Lfunc_begin13 ## DW_AT_high_pc
	.long	Lset529
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	754                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0xb72:0xf DW_TAG_formal_parameter
.set Lset530, Ldebug_loc103-Lsection_debug_loc ## DW_AT_location
	.long	Lset530
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xb81:0xf DW_TAG_formal_parameter
.set Lset531, Ldebug_loc104-Lsection_debug_loc ## DW_AT_location
	.long	Lset531
	.long	879                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xb90:0xf DW_TAG_formal_parameter
.set Lset532, Ldebug_loc105-Lsection_debug_loc ## DW_AT_location
	.long	Lset532
	.long	884                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xb9f:0xf DW_TAG_variable
.set Lset533, Ldebug_loc107-Lsection_debug_loc ## DW_AT_location
	.long	Lset533
	.long	889                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	227                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xbae:0xf DW_TAG_variable
.set Lset534, Ldebug_loc108-Lsection_debug_loc ## DW_AT_location
	.long	Lset534
	.long	900                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	227                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xbbd:0xf DW_TAG_variable
.set Lset535, Ldebug_loc109-Lsection_debug_loc ## DW_AT_location
	.long	Lset535
	.long	902                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	234                     ## DW_AT_decl_line
	.long	786                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0xbcc:0x2f DW_TAG_inlined_subroutine
	.long	1414                    ## DW_AT_abstract_origin
	.quad	Ltmp238                 ## DW_AT_low_pc
.set Lset536, Ltmp239-Ltmp238           ## DW_AT_high_pc
	.long	Lset536
	.byte	3                       ## DW_AT_call_file
	.byte	235                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0xbdf:0x9 DW_TAG_formal_parameter
.set Lset537, Ldebug_loc106-Lsection_debug_loc ## DW_AT_location
	.long	Lset537
	.long	1427                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xbe8:0x9 DW_TAG_formal_parameter
.set Lset538, Ldebug_loc111-Lsection_debug_loc ## DW_AT_location
	.long	Lset538
	.long	1439                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xbf1:0x9 DW_TAG_formal_parameter
.set Lset539, Ldebug_loc110-Lsection_debug_loc ## DW_AT_location
	.long	Lset539
	.long	1451                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0xbfc:0x5 DW_TAG_pointer_type
	.long	336                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xc01:0x5 DW_TAG_pointer_type
	.long	160                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xc06:0x5 DW_TAG_pointer_type
	.long	737                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0xc0b:0x5 DW_TAG_const_type
	.long	160                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xc10:0x5 DW_TAG_pointer_type
	.long	3093                    ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0xc15:0x5 DW_TAG_const_type
	.long	742                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xc1a:0x5 DW_TAG_pointer_type
	.long	193                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0xc1f:0x7 DW_TAG_base_type
	.long	891                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset540, Ltmp108-Lfunc_begin0
	.quad	Lset540
.set Lset541, Ltmp109-Lfunc_begin0
	.quad	Lset541
.set Lset542, Ltmp113-Lfunc_begin0
	.quad	Lset542
.set Lset543, Ltmp114-Lfunc_begin0
	.quad	Lset543
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset544, Ltmp130-Lfunc_begin0
	.quad	Lset544
.set Lset545, Ltmp131-Lfunc_begin0
	.quad	Lset545
.set Lset546, Ltmp135-Lfunc_begin0
	.quad	Lset546
.set Lset547, Ltmp136-Lfunc_begin0
	.quad	Lset547
	.quad	0
	.quad	0
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	11                      ## Header Bucket Count
	.long	23                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	6                       ## Bucket 3
	.long	7                       ## Bucket 4
	.long	10                      ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	14                      ## Bucket 8
	.long	19                      ## Bucket 9
	.long	-1                      ## Bucket 10
	.long	-1385727457             ## Hash in Bucket 0
	.long	-1847613067             ## Hash in Bucket 1
	.long	-736705852              ## Hash in Bucket 1
	.long	258013527               ## Hash in Bucket 2
	.long	1690711343              ## Hash in Bucket 2
	.long	-1583130232             ## Hash in Bucket 2
	.long	2002484960              ## Hash in Bucket 3
	.long	422307164               ## Hash in Bucket 4
	.long	550386632               ## Hash in Bucket 4
	.long	-782949233              ## Hash in Bucket 4
	.long	-1847612931             ## Hash in Bucket 5
	.long	-1847612832             ## Hash in Bucket 5
	.long	-1847612436             ## Hash in Bucket 5
	.long	-126233722              ## Hash in Bucket 5
	.long	1055338765              ## Hash in Bucket 8
	.long	2090478981              ## Hash in Bucket 8
	.long	-1847612928             ## Hash in Bucket 8
	.long	-1847612829             ## Hash in Bucket 8
	.long	-187743816              ## Hash in Bucket 8
	.long	1408168991              ## Hash in Bucket 9
	.long	-2021626987             ## Hash in Bucket 9
	.long	-1847612916             ## Hash in Bucket 9
	.long	-1847612421             ## Hash in Bucket 9
.set Lset548, LNames20-Lnames_begin     ## Offset in Bucket 0
	.long	Lset548
.set Lset549, LNames10-Lnames_begin     ## Offset in Bucket 1
	.long	Lset549
.set Lset550, LNames22-Lnames_begin     ## Offset in Bucket 1
	.long	Lset550
.set Lset551, LNames12-Lnames_begin     ## Offset in Bucket 2
	.long	Lset551
.set Lset552, LNames8-Lnames_begin      ## Offset in Bucket 2
	.long	Lset552
.set Lset553, LNames2-Lnames_begin      ## Offset in Bucket 2
	.long	Lset553
.set Lset554, LNames18-Lnames_begin     ## Offset in Bucket 3
	.long	Lset554
.set Lset555, LNames15-Lnames_begin     ## Offset in Bucket 4
	.long	Lset555
.set Lset556, LNames3-Lnames_begin      ## Offset in Bucket 4
	.long	Lset556
.set Lset557, LNames7-Lnames_begin      ## Offset in Bucket 4
	.long	Lset557
.set Lset558, LNames16-Lnames_begin     ## Offset in Bucket 5
	.long	Lset558
.set Lset559, LNames19-Lnames_begin     ## Offset in Bucket 5
	.long	Lset559
.set Lset560, LNames5-Lnames_begin      ## Offset in Bucket 5
	.long	Lset560
.set Lset561, LNames1-Lnames_begin      ## Offset in Bucket 5
	.long	Lset561
.set Lset562, LNames6-Lnames_begin      ## Offset in Bucket 8
	.long	Lset562
.set Lset563, LNames0-Lnames_begin      ## Offset in Bucket 8
	.long	Lset563
.set Lset564, LNames4-Lnames_begin      ## Offset in Bucket 8
	.long	Lset564
.set Lset565, LNames21-Lnames_begin     ## Offset in Bucket 8
	.long	Lset565
.set Lset566, LNames13-Lnames_begin     ## Offset in Bucket 8
	.long	Lset566
.set Lset567, LNames17-Lnames_begin     ## Offset in Bucket 9
	.long	Lset567
.set Lset568, LNames11-Lnames_begin     ## Offset in Bucket 9
	.long	Lset568
.set Lset569, LNames9-Lnames_begin      ## Offset in Bucket 9
	.long	Lset569
.set Lset570, LNames14-Lnames_begin     ## Offset in Bucket 9
	.long	Lset570
LNames20:
	.long	622                     ## enif_make_tuple2
	.long	11                      ## Num DIEs
	.long	1608
	.long	1771
	.long	1818
	.long	1973
	.long	2020
	.long	2205
	.long	2368
	.long	2531
	.long	2694
	.long	2857
	.long	3020
	.long	0
LNames10:
	.long	689                     ## asm_1_nif_bb
	.long	1                       ## Num DIEs
	.long	2060
	.long	0
LNames22:
	.long	645                     ## enif_make_big_num
	.long	1                       ## Num DIEs
	.long	1464
	.long	0
LNames12:
	.long	281                     ## entry
	.long	1                       ## Num DIEs
	.long	314
	.long	0
LNames8:
	.long	468                     ## ok_atom
	.long	1                       ## Num DIEs
	.long	640
	.long	0
LNames2:
	.long	487                     ## arithmetic_error_atom
	.long	1                       ## Num DIEs
	.long	682
	.long	0
LNames18:
	.long	87                      ## nif_funcs
	.long	1                       ## Num DIEs
	.long	42
	.long	0
LNames15:
	.long	348                     ## reload
	.long	1                       ## Num DIEs
	.long	937
	.long	0
LNames3:
	.long	363                     ## unload
	.long	1                       ## Num DIEs
	.long	889
	.long	0
LNames7:
	.long	577                     ## init_nif_llvm
	.long	2                       ## Num DIEs
	.long	859
	.long	1179
	.long	0
LNames16:
	.long	754                     ## asm_1_nif_ff
	.long	1                       ## Num DIEs
	.long	2905
	.long	0
LNames19:
	.long	702                     ## asm_1_nif_if
	.long	1                       ## Num DIEs
	.long	2253
	.long	0
LNames5:
	.long	715                     ## asm_1_nif_uf
	.long	1                       ## Num DIEs
	.long	2416
	.long	0
LNames1:
	.long	605                     ## enif_get_big_num
	.long	1                       ## Num DIEs
	.long	1210
	.long	0
LNames6:
	.long	355                     ## upgrade
	.long	1                       ## Num DIEs
	.long	1048
	.long	0
LNames0:
	.long	343                     ## load
	.long	2                       ## Num DIEs
	.long	813
	.long	1133
	.long	0
LNames4:
	.long	728                     ## asm_1_nif_fi
	.long	1                       ## Num DIEs
	.long	2579
	.long	0
LNames21:
	.long	663                     ## asm_1_nif_ii
	.long	1                       ## Num DIEs
	.long	1656
	.long	0
LNames13:
	.long	451                     ## arithmetic_error
	.long	1                       ## Num DIEs
	.long	619
	.long	0
LNames17:
	.long	476                     ## error_atom
	.long	1                       ## Num DIEs
	.long	661
	.long	0
LNames11:
	.long	767                     ## nif_init
	.long	1                       ## Num DIEs
	.long	289
	.long	0
LNames9:
	.long	741                     ## asm_1_nif_fu
	.long	1                       ## Num DIEs
	.long	2742
	.long	0
LNames14:
	.long	676                     ## asm_1_nif_uu
	.long	1                       ## Num DIEs
	.long	1858
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
	.long	11                      ## Header Bucket Count
	.long	23                      ## Header Hash Count
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
	.long	2                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	6                       ## Bucket 3
	.long	7                       ## Bucket 4
	.long	8                       ## Bucket 5
	.long	12                      ## Bucket 6
	.long	14                      ## Bucket 7
	.long	16                      ## Bucket 8
	.long	18                      ## Bucket 9
	.long	20                      ## Bucket 10
	.long	39355888                ## Hash in Bucket 0
	.long	2090147939              ## Hash in Bucket 0
	.long	-712936744              ## Hash in Bucket 1
	.long	479863947               ## Hash in Bucket 2
	.long	1950534918              ## Hash in Bucket 2
	.long	-594775205              ## Hash in Bucket 2
	.long	-282664779              ## Hash in Bucket 3
	.long	-1880351968             ## Hash in Bucket 4
	.long	1212739621              ## Hash in Bucket 5
	.long	1222092635              ## Hash in Bucket 5
	.long	-91109094               ## Hash in Bucket 5
	.long	-80380739               ## Hash in Bucket 5
	.long	193495088               ## Hash in Bucket 6
	.long	-2056830851             ## Hash in Bucket 6
	.long	578531224               ## Hash in Bucket 7
	.long	-1004470706             ## Hash in Bucket 7
	.long	1348063351              ## Hash in Bucket 8
	.long	-1304652851             ## Hash in Bucket 8
	.long	466678419               ## Hash in Bucket 9
	.long	-113419488              ## Hash in Bucket 9
	.long	878862258               ## Hash in Bucket 10
	.long	1212248465              ## Hash in Bucket 10
	.long	-1239759867             ## Hash in Bucket 10
.set Lset571, Ltypes7-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset571
.set Lset572, Ltypes22-Ltypes_begin     ## Offset in Bucket 0
	.long	Lset572
.set Lset573, Ltypes13-Ltypes_begin     ## Offset in Bucket 1
	.long	Lset573
.set Lset574, Ltypes3-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset574
.set Lset575, Ltypes2-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset575
.set Lset576, Ltypes15-Ltypes_begin     ## Offset in Bucket 2
	.long	Lset576
.set Lset577, Ltypes10-Ltypes_begin     ## Offset in Bucket 3
	.long	Lset577
.set Lset578, Ltypes20-Ltypes_begin     ## Offset in Bucket 4
	.long	Lset578
.set Lset579, Ltypes1-Ltypes_begin      ## Offset in Bucket 5
	.long	Lset579
.set Lset580, Ltypes16-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset580
.set Lset581, Ltypes14-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset581
.set Lset582, Ltypes17-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset582
.set Lset583, Ltypes6-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset583
.set Lset584, Ltypes18-Ltypes_begin     ## Offset in Bucket 6
	.long	Lset584
.set Lset585, Ltypes21-Ltypes_begin     ## Offset in Bucket 7
	.long	Lset585
.set Lset586, Ltypes5-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset586
.set Lset587, Ltypes11-Ltypes_begin     ## Offset in Bucket 8
	.long	Lset587
.set Lset588, Ltypes4-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset588
.set Lset589, Ltypes9-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset589
.set Lset590, Ltypes19-Ltypes_begin     ## Offset in Bucket 9
	.long	Lset590
.set Lset591, Ltypes12-Ltypes_begin     ## Offset in Bucket 10
	.long	Lset591
.set Lset592, Ltypes8-Ltypes_begin      ## Offset in Bucket 10
	.long	Lset592
.set Lset593, Ltypes0-Ltypes_begin      ## Offset in Bucket 10
	.long	Lset593
Ltypes7:
	.long	178                     ## ErlNapiUInt
	.long	1                       ## Num DIEs
	.long	215
	.short	22
	.byte	0
	.long	0
Ltypes22:
	.long	125                     ## char
	.long	1                       ## Num DIEs
	.long	153
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	545                     ## VECTOR
	.long	1                       ## Num DIEs
	.long	742
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	299                     ## enif_entry_t
	.long	1                       ## Num DIEs
	.long	347
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	535                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	721
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	261                     ## __ARRAY_SIZE_TYPE__
	.long	1                       ## Num DIEs
	.long	282
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	426                     ## __darwin_size_t
	.long	1                       ## Num DIEs
	.long	608
	.short	22
	.byte	0
	.long	0
Ltypes20:
	.long	891                     ## long int
	.long	1                       ## Num DIEs
	.long	3103
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	167                     ## ErlNifUInt
	.long	1                       ## Num DIEs
	.long	204
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	154                     ## ERL_NIF_TERM
	.long	1                       ## Num DIEs
	.long	193
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	190                     ## ErlNapiUInt64
	.long	1                       ## Num DIEs
	.long	226
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	204                     ## long unsigned int
	.long	1                       ## Num DIEs
	.long	237
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	251                     ## int
	.long	1                       ## Num DIEs
	.long	265
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	509                     ## __uint16_t
	.long	1                       ## Num DIEs
	.long	703
	.short	22
	.byte	0
	.long	0
Ltypes21:
	.long	552                     ## vector
	.long	1                       ## Num DIEs
	.long	753
	.short	19
	.byte	0
	.long	0
Ltypes5:
	.long	222                     ## ErlNifEnv
	.long	1                       ## Num DIEs
	.long	249
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	287                     ## ErlNifEntry
	.long	1                       ## Num DIEs
	.long	336
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
Ltypes9:
	.long	419                     ## size_t
	.long	1                       ## Num DIEs
	.long	597
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	570                     ## double
	.long	1                       ## Num DIEs
	.long	786
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	520                     ## unsigned short
	.long	1                       ## Num DIEs
	.long	714
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	97                      ## ErlNifFunc
	.long	1                       ## Num DIEs
	.long	75
	.short	22
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
