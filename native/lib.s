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
	.loc	3 68 48 prologue_end    ## native/lib.c:68:48
	leaq	L_.str(%rip), %rsi
Ltmp2:
	callq	_enif_make_atom
Ltmp3:
	.loc	3 68 22 is_stmt 0       ## native/lib.c:68:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 68 20                 ## native/lib.c:68:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 69 13 is_stmt 1       ## native/lib.c:69:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 69 11 is_stmt 0       ## native/lib.c:69:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 70 16 is_stmt 1       ## native/lib.c:70:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 70 14 is_stmt 0       ## native/lib.c:70:14
	movq	%rax, _error_atom(%rip)
	.loc	3 71 27 is_stmt 1       ## native/lib.c:71:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 71 25 is_stmt 0       ## native/lib.c:71:25
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
	.loc	3 68 48 prologue_end    ## native/lib.c:68:48
	leaq	L_.str(%rip), %rsi
Ltmp13:
	callq	_enif_make_atom
Ltmp14:
	.loc	3 68 22 is_stmt 0       ## native/lib.c:68:22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_enif_raise_exception
	.loc	3 68 20                 ## native/lib.c:68:20
	movq	%rax, _arithmetic_error(%rip)
	.loc	3 69 13 is_stmt 1       ## native/lib.c:69:13
	leaq	L_.str.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 69 11 is_stmt 0       ## native/lib.c:69:11
	movq	%rax, _ok_atom(%rip)
	.loc	3 70 16 is_stmt 1       ## native/lib.c:70:16
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 70 14 is_stmt 0       ## native/lib.c:70:14
	movq	%rax, _error_atom(%rip)
	.loc	3 71 27 is_stmt 1       ## native/lib.c:71:27
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	callq	_enif_make_atom
	.loc	3 71 25 is_stmt 0       ## native/lib.c:71:25
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
	##DEBUG_VALUE: enif_get_big_num:value <- $rdx
	movq	%rdx, %r14
	movq	%rdi, %rbx
Ltmp18:
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
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
	je	LBB4_19
Ltmp23:
## %bb.1:
	##DEBUG_VALUE: enif_get_big_num:tuple <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	cmpl	$2, -60(%rbp)
	jne	LBB4_19
Ltmp24:
## %bb.2:
	##DEBUG_VALUE: enif_get_big_num:tuple <- [DW_OP_constu 56, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 21 42 is_stmt 1       ## native/lib.c:21:42
	movq	-56(%rbp), %rax
Ltmp25:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	(%rax), %rsi
	leaq	-92(%rbp), %rdx
Ltmp26:
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 21 24 is_stmt 0       ## native/lib.c:21:24
	movq	%rbx, %rdi
	callq	_enif_get_int
Ltmp27:
	.loc	3 21 66                 ## native/lib.c:21:66
	testl	%eax, %eax
Ltmp28:
	.loc	3 21 6                  ## native/lib.c:21:6
	je	LBB4_3
Ltmp29:
## %bb.4:
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 25 50 is_stmt 1       ## native/lib.c:25:50
	movq	-56(%rbp), %rax
Ltmp30:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	8(%rax), %rsi
	leaq	-44(%rbp), %rdx
Ltmp31:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 25 24 is_stmt 0       ## native/lib.c:25:24
	movq	%rbx, %rdi
	callq	_enif_get_list_length
Ltmp32:
	.loc	3 0 24                  ## native/lib.c:0:24
	xorl	%r12d, %r12d
	.loc	3 25 69                 ## native/lib.c:25:69
	testl	%eax, %eax
Ltmp33:
	.loc	3 25 6                  ## native/lib.c:25:6
	je	LBB4_19
Ltmp34:
## %bb.5:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 6                   ## native/lib.c:0:6
	movl	-44(%rbp), %eax
	.loc	3 25 6                  ## native/lib.c:25:6
	testl	%eax, %eax
	je	LBB4_19
Ltmp35:
## %bb.6:
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 32 48 is_stmt 1       ## native/lib.c:32:48
	movq	-56(%rbp), %rax
Ltmp36:
	##DEBUG_VALUE: enif_get_big_num:tuple <- $rax
	movq	8(%rax), %rsi
	leaq	-80(%rbp), %rdx
Ltmp37:
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 0 48 is_stmt 0        ## native/lib.c:0:48
	leaq	-72(%rbp), %rcx
Ltmp38:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 32 24                 ## native/lib.c:32:24
	movq	%rbx, %rdi
	callq	_enif_get_list_cell
Ltmp39:
	.loc	3 0 24                  ## native/lib.c:0:24
	xorl	%r12d, %r12d
	.loc	3 32 72                 ## native/lib.c:32:72
	testl	%eax, %eax
Ltmp40:
	.loc	3 32 6                  ## native/lib.c:32:6
	je	LBB4_19
Ltmp41:
## %bb.7:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 35 74 is_stmt 1       ## native/lib.c:35:74
	movslq	-44(%rbp), %rdi
	.loc	3 35 72 is_stmt 0       ## native/lib.c:35:72
	shlq	$3, %rdi
	.loc	3 35 39                 ## native/lib.c:35:39
	callq	_enif_alloc
Ltmp42:
	.loc	3 36 26 is_stmt 1       ## native/lib.c:36:26
	testq	%rax, %rax
Ltmp43:
	.loc	3 36 6 is_stmt 0        ## native/lib.c:36:6
	je	LBB4_19
Ltmp44:
## %bb.8:
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 6                   ## native/lib.c:0:6
	movq	%rax, %r15
Ltmp45:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	.loc	3 39 22 is_stmt 1       ## native/lib.c:39:22
	movl	$16, %edi
	callq	_enif_alloc
	.loc	3 39 10 is_stmt 0       ## native/lib.c:39:10
	movq	%rax, (%r14)
Ltmp46:
	.loc	3 40 31 is_stmt 1       ## native/lib.c:40:31
	testq	%rax, %rax
Ltmp47:
	.loc	3 40 6 is_stmt 0        ## native/lib.c:40:6
	je	LBB4_20
Ltmp48:
## %bb.9:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	##DEBUG_VALUE: i <- 0
	.loc	3 44 22 is_stmt 1       ## native/lib.c:44:22
	movl	-44(%rbp), %ecx
Ltmp49:
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	.loc	3 44 20 is_stmt 0       ## native/lib.c:44:20
	testl	%ecx, %ecx
Ltmp50:
	.loc	3 44 3                  ## native/lib.c:44:3
	jle	LBB4_18
Ltmp51:
## %bb.10:                              ## %.preheader
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 3                   ## native/lib.c:0:3
	movq	%r14, -88(%rbp)         ## 8-byte Spill
Ltmp52:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	xorl	%r14d, %r14d
	leaq	-80(%rbp), %r12
	leaq	-72(%rbp), %r13
Ltmp53:
	.p2align	4, 0x90
LBB4_11:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: i <- $r14
	.loc	3 45 47 is_stmt 1       ## native/lib.c:45:47
	movq	-80(%rbp), %rsi
Ltmp54:
	##DEBUG_VALUE: enif_get_big_num:head <- $rsi
	.loc	3 45 54 is_stmt 0       ## native/lib.c:45:54
	leaq	(%r15,%r14,8), %rdx
	.loc	3 45 26                 ## native/lib.c:45:26
	movq	%rbx, %rdi
	callq	_enif_get_ulong
Ltmp55:
	.loc	3 45 60                 ## native/lib.c:45:60
	testl	%eax, %eax
Ltmp56:
	.loc	3 45 8                  ## native/lib.c:45:8
	je	LBB4_12
Ltmp57:
## %bb.13:                              ##   in Loop: Header=BB4_11 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 49 50 is_stmt 1       ## native/lib.c:49:50
	movq	-72(%rbp), %rsi
Ltmp58:
	##DEBUG_VALUE: enif_get_big_num:tail <- $rsi
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 49 26 is_stmt 0       ## native/lib.c:49:26
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	_enif_get_list_cell
	.loc	3 49 70                 ## native/lib.c:49:70
	testl	%eax, %eax
Ltmp59:
	.loc	3 49 8                  ## native/lib.c:49:8
	je	LBB4_15
Ltmp60:
## %bb.14:                              ##   in Loop: Header=BB4_11 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 44 22 is_stmt 1       ## native/lib.c:44:22
	movl	-44(%rbp), %ecx
	.loc	3 44 31 is_stmt 0       ## native/lib.c:44:31
	incq	%r14
Ltmp61:
	.loc	3 44 20                 ## native/lib.c:44:20
	movslq	%ecx, %rax
Ltmp62:
LBB4_16:                                ##   in Loop: Header=BB4_11 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	cmpq	%rax, %r14
Ltmp63:
	.loc	3 44 3                  ## native/lib.c:44:3
	jl	LBB4_11
	jmp	LBB4_17
Ltmp64:
LBB4_15:                                ##   in Loop: Header=BB4_11 Depth=1
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: i <- $r14
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 50 12 is_stmt 1       ## native/lib.c:50:12
	incq	%r14
Ltmp65:
	.loc	3 50 18 is_stmt 0       ## native/lib.c:50:18
	movl	-44(%rbp), %ecx
Ltmp66:
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	.loc	3 50 16                 ## native/lib.c:50:16
	movslq	%ecx, %rax
	cmpq	%rax, %r14
Ltmp67:
	.loc	3 50 10                 ## native/lib.c:50:10
	jge	LBB4_16
Ltmp68:
LBB4_12:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 0 10                  ## native/lib.c:0:10
	movq	%r15, %rdi
	callq	_enif_free
	xorl	%r12d, %r12d
	jmp	LBB4_19
Ltmp69:
LBB4_17:
	##DEBUG_VALUE: enif_get_big_num:value <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 56 4 is_stmt 1        ## native/lib.c:56:4
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
Ltmp70:
LBB4_18:
	##DEBUG_VALUE: enif_get_big_num:length <- $ecx
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:length <- undef
	.loc	3 56 18 is_stmt 0       ## native/lib.c:56:18
	movl	%ecx, (%rax)
	.loc	3 57 19 is_stmt 1       ## native/lib.c:57:19
	movq	%r15, 8(%rax)
	movl	$1, %r12d
Ltmp71:
LBB4_19:
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	.loc	3 59 1                  ## native/lib.c:59:1
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
Ltmp72:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_3:
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
Ltmp73:
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 0 1 is_stmt 0         ## native/lib.c:0:1
	xorl	%r12d, %r12d
	jmp	LBB4_19
Ltmp74:
LBB4_20:
	##DEBUG_VALUE: enif_get_big_num:v <- $r15
	##DEBUG_VALUE: enif_get_big_num:tail <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:head <- [DW_OP_constu 80, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:length <- [DW_OP_constu 44, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:is_negative <- [DW_OP_constu 92, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:tuple_arity <- [DW_OP_constu 60, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: enif_get_big_num:env <- $rbx
	##DEBUG_VALUE: enif_get_big_num:value <- $r14
	.loc	3 41 5 is_stmt 1        ## native/lib.c:41:5
	movq	%r15, %rdi
	callq	_enif_free
	jmp	LBB4_19
Ltmp75:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ii
_asm_1_nif_ii:                          ## @asm_1_nif_ii
Lfunc_begin5:
	.loc	3 76 0                  ## native/lib.c:76:0
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
Ltmp76:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp77:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	3 78 44 prologue_end    ## native/lib.c:78:44
	movq	(%rdx), %rsi
Ltmp78:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp79:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 78 24                 ## native/lib.c:78:24
	callq	_enif_get_long
	.loc	3 78 57                 ## native/lib.c:78:57
	testl	%eax, %eax
Ltmp80:
	.loc	3 78 6                  ## native/lib.c:78:6
	je	LBB5_4
Ltmp81:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 81 44 is_stmt 1       ## native/lib.c:81:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp82:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 81 24 is_stmt 0       ## native/lib.c:81:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 81 57                 ## native/lib.c:81:57
	testl	%eax, %eax
Ltmp83:
	.loc	3 81 6                  ## native/lib.c:81:6
	je	LBB5_4
Ltmp84:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 87 48 is_stmt 1       ## native/lib.c:87:48
	movq	-32(%rbp), %rsi
Ltmp85:
	##DEBUG_VALUE: asm_1_nif_ii:a <- $rsi
	.loc	3 87 23 is_stmt 0       ## native/lib.c:87:23
	addq	-24(%rbp), %rsi
Ltmp86:
	.loc	3 87 6                  ## native/lib.c:87:6
	jo	LBB5_5
Ltmp87:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ii:result <- $rsi
	.loc	3 91 32 is_stmt 1       ## native/lib.c:91:32
	movq	_ok_atom(%rip), %rbx
Ltmp88:
	.loc	3 91 41 is_stmt 0       ## native/lib.c:91:41
	movq	%r14, %rdi
	callq	_enif_make_long
Ltmp89:
	movq	%rax, %rcx
Ltmp90:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.file	7 "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h"
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp91:
LBB5_6:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp92:
LBB5_7:
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	.loc	3 96 1 is_stmt 1        ## native/lib.c:96:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp93:
	popq	%rbp
	retq
LBB5_4:
Ltmp94:
	##DEBUG_VALUE: asm_1_nif_ii:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 93 10                 ## native/lib.c:93:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB5_7
Ltmp95:
LBB5_5:
	##DEBUG_VALUE: asm_1_nif_ii:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ii:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ii:argv <- $rbx
	.loc	3 95 32                 ## native/lib.c:95:32
	movq	_error_atom(%rip), %rdx
	.loc	3 95 44 is_stmt 0       ## native/lib.c:95:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp96:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB5_6
Ltmp97:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_uu
_asm_1_nif_uu:                          ## @asm_1_nif_uu
Lfunc_begin6:
	.loc	3 101 0                 ## native/lib.c:101:0
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
Ltmp98:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp99:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	3 103 45 prologue_end   ## native/lib.c:103:45
	movq	(%rdx), %rsi
Ltmp100:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp101:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 103 24                ## native/lib.c:103:24
	callq	_enif_get_ulong
	.loc	3 103 58                ## native/lib.c:103:58
	testl	%eax, %eax
Ltmp102:
	.loc	3 103 6                 ## native/lib.c:103:6
	je	LBB6_4
Ltmp103:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 106 45 is_stmt 1      ## native/lib.c:106:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp104:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 106 24 is_stmt 0      ## native/lib.c:106:24
	movq	%r14, %rdi
	callq	_enif_get_ulong
	.loc	3 106 58                ## native/lib.c:106:58
	testl	%eax, %eax
Ltmp105:
	.loc	3 106 6                 ## native/lib.c:106:6
	je	LBB6_4
Ltmp106:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 112 48 is_stmt 1      ## native/lib.c:112:48
	movq	-32(%rbp), %rsi
Ltmp107:
	##DEBUG_VALUE: asm_1_nif_uu:a <- $rsi
	.loc	3 112 23 is_stmt 0      ## native/lib.c:112:23
	addq	-24(%rbp), %rsi
Ltmp108:
	.loc	3 112 6                 ## native/lib.c:112:6
	jb	LBB6_5
Ltmp109:
## %bb.3:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uu:result <- $rsi
	.loc	3 116 32 is_stmt 1      ## native/lib.c:116:32
	movq	_ok_atom(%rip), %rbx
Ltmp110:
	.loc	3 116 41 is_stmt 0      ## native/lib.c:116:41
	movq	%r14, %rdi
	callq	_enif_make_ulong
Ltmp111:
	movq	%rax, %rcx
Ltmp112:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
Ltmp113:
LBB6_6:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	7 426 12 is_stmt 0      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	callq	_enif_make_tuple
Ltmp114:
LBB6_7:
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	.loc	3 121 1 is_stmt 1       ## native/lib.c:121:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp115:
	popq	%rbp
	retq
LBB6_4:
Ltmp116:
	##DEBUG_VALUE: asm_1_nif_uu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 118 10                ## native/lib.c:118:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB6_7
Ltmp117:
LBB6_5:
	##DEBUG_VALUE: asm_1_nif_uu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uu:argv <- $rbx
	.loc	3 120 32                ## native/lib.c:120:32
	movq	_error_atom(%rip), %rdx
	.loc	3 120 44 is_stmt 0      ## native/lib.c:120:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp118:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	LBB6_6
Ltmp119:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_bb
_asm_1_nif_bb:                          ## @asm_1_nif_bb
Lfunc_begin7:
	.loc	3 125 0                 ## native/lib.c:125:0
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
	##DEBUG_VALUE: asm_1_nif_bb:env <- $rdi
	##DEBUG_VALUE: asm_1_nif_bb:argc <- $esi
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rdx
Ltmp120:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdi, %r14
Ltmp121:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_bb:argv <- $rdx
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	.loc	3 127 46 prologue_end   ## native/lib.c:127:46
	movq	(%rdx), %rsi
Ltmp122:
	.loc	3 0 46 is_stmt 0        ## native/lib.c:0:46
	leaq	-24(%rbp), %rdx
Ltmp123:
	##DEBUG_VALUE: asm_1_nif_bb:a <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 127 24                ## native/lib.c:127:24
	callq	_enif_get_big_num
	.loc	3 127 59                ## native/lib.c:127:59
	testl	%eax, %eax
Ltmp124:
	.loc	3 127 6                 ## native/lib.c:127:6
	je	LBB7_1
Ltmp125:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_bb:a <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	.loc	3 131 13 is_stmt 1      ## native/lib.c:131:13
	movq	-24(%rbp), %rbx
Ltmp126:
	##DEBUG_VALUE: asm_1_nif_bb:a <- $rbx
	.loc	3 131 16 is_stmt 0      ## native/lib.c:131:16
	movq	8(%rbx), %rdi
	.loc	3 131 3                 ## native/lib.c:131:3
	callq	_enif_free
	.loc	3 132 3 is_stmt 1       ## native/lib.c:132:3
	movq	%rbx, %rdi
	callq	_enif_free
	.loc	3 133 32                ## native/lib.c:133:32
	movq	_error_atom(%rip), %rdx
	.loc	3 133 44 is_stmt 0      ## native/lib.c:133:44
	movq	_arithmetic_error_atom(%rip), %rcx
Ltmp127:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rdx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_enif_make_tuple
Ltmp128:
LBB7_3:
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	.loc	3 134 1                 ## native/lib.c:134:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp129:
	popq	%rbp
	retq
LBB7_1:
Ltmp130:
	##DEBUG_VALUE: asm_1_nif_bb:a <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_bb:env <- $r14
	.loc	3 128 12                ## native/lib.c:128:12
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB7_3
Ltmp131:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_if
_asm_1_nif_if:                          ## @asm_1_nif_if
Lfunc_begin8:
	.loc	3 138 0                 ## native/lib.c:138:0
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
Ltmp132:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp133:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	.loc	3 141 44 prologue_end   ## native/lib.c:141:44
	movq	(%rdx), %rsi
Ltmp134:
	.loc	3 0 44 is_stmt 0        ## native/lib.c:0:44
	leaq	-32(%rbp), %rdx
Ltmp135:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 141 24                ## native/lib.c:141:24
	callq	_enif_get_long
	.loc	3 141 57                ## native/lib.c:141:57
	testl	%eax, %eax
Ltmp136:
	.loc	3 141 6                 ## native/lib.c:141:6
	je	LBB8_3
Ltmp137:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 144 45 is_stmt 1      ## native/lib.c:144:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp138:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 144 24 is_stmt 0      ## native/lib.c:144:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 144 58                ## native/lib.c:144:58
	testl	%eax, %eax
Ltmp139:
	.loc	3 144 6                 ## native/lib.c:144:6
	je	LBB8_3
Ltmp140:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_if:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 147 20 is_stmt 1      ## native/lib.c:147:20
	cvtsi2sdq	-32(%rbp), %xmm0
	.loc	3 147 31 is_stmt 0      ## native/lib.c:147:31
	addsd	-24(%rbp), %xmm0
Ltmp141:
	##DEBUG_VALUE: asm_1_nif_if:result <- $xmm0
	.loc	3 148 32 is_stmt 1      ## native/lib.c:148:32
	movq	_ok_atom(%rip), %rbx
Ltmp142:
	.loc	3 148 41 is_stmt 0      ## native/lib.c:148:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp143:
	movq	%rax, %rcx
Ltmp144:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp145:
LBB8_4:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	.loc	3 151 1                 ## native/lib.c:151:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp146:
	popq	%rbp
	retq
LBB8_3:
	##DEBUG_VALUE: asm_1_nif_if:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp147:
	##DEBUG_VALUE: asm_1_nif_if:env <- $r14
	##DEBUG_VALUE: asm_1_nif_if:argv <- $rbx
	.loc	3 150 10                ## native/lib.c:150:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB8_4
Ltmp148:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function asm_1_nif_uf
LCPI9_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI9_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_asm_1_nif_uf:                          ## @asm_1_nif_uf
Lfunc_begin9:
	.loc	3 156 0                 ## native/lib.c:156:0
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
Ltmp149:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp150:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	.loc	3 159 45 prologue_end   ## native/lib.c:159:45
	movq	(%rdx), %rsi
Ltmp151:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp152:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 159 24                ## native/lib.c:159:24
	callq	_enif_get_ulong
	.loc	3 159 58                ## native/lib.c:159:58
	testl	%eax, %eax
Ltmp153:
	.loc	3 159 6                 ## native/lib.c:159:6
	je	LBB9_3
Ltmp154:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 162 45 is_stmt 1      ## native/lib.c:162:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp155:
	##DEBUG_VALUE: asm_1_nif_uf:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 162 24 is_stmt 0      ## native/lib.c:162:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 162 58                ## native/lib.c:162:58
	testl	%eax, %eax
Ltmp156:
	.loc	3 162 6                 ## native/lib.c:162:6
	je	LBB9_3
Ltmp157:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_uf:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 165 20 is_stmt 1      ## native/lib.c:165:20
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	unpcklps	LCPI9_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI9_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	.loc	3 165 31 is_stmt 0      ## native/lib.c:165:31
	addsd	-24(%rbp), %xmm0
Ltmp158:
	##DEBUG_VALUE: asm_1_nif_uf:result <- $xmm0
	.loc	3 166 32 is_stmt 1      ## native/lib.c:166:32
	movq	_ok_atom(%rip), %rbx
Ltmp159:
	.loc	3 166 41 is_stmt 0      ## native/lib.c:166:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp160:
	movq	%rax, %rcx
Ltmp161:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp162:
LBB9_4:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	.loc	3 169 1                 ## native/lib.c:169:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp163:
	popq	%rbp
	retq
LBB9_3:
	##DEBUG_VALUE: asm_1_nif_uf:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp164:
	##DEBUG_VALUE: asm_1_nif_uf:env <- $r14
	##DEBUG_VALUE: asm_1_nif_uf:argv <- $rbx
	.loc	3 168 10                ## native/lib.c:168:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB9_4
Ltmp165:
Lfunc_end9:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_fi
_asm_1_nif_fi:                          ## @asm_1_nif_fi
Lfunc_begin10:
	.loc	3 173 0                 ## native/lib.c:173:0
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
Ltmp166:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp167:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	.loc	3 176 45 prologue_end   ## native/lib.c:176:45
	movq	(%rdx), %rsi
Ltmp168:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp169:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 176 24                ## native/lib.c:176:24
	callq	_enif_get_double
	.loc	3 176 58                ## native/lib.c:176:58
	testl	%eax, %eax
Ltmp170:
	.loc	3 176 6                 ## native/lib.c:176:6
	je	LBB10_3
Ltmp171:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 179 44 is_stmt 1      ## native/lib.c:179:44
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp172:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 179 24 is_stmt 0      ## native/lib.c:179:24
	movq	%r14, %rdi
	callq	_enif_get_long
	.loc	3 179 57                ## native/lib.c:179:57
	testl	%eax, %eax
Ltmp173:
	.loc	3 179 6                 ## native/lib.c:179:6
	je	LBB10_3
Ltmp174:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fi:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 182 24 is_stmt 1      ## native/lib.c:182:24
	cvtsi2sdq	-24(%rbp), %xmm0
	.loc	3 182 21 is_stmt 0      ## native/lib.c:182:21
	addsd	-32(%rbp), %xmm0
Ltmp175:
	##DEBUG_VALUE: asm_1_nif_fi:result <- $xmm0
	.loc	3 183 32 is_stmt 1      ## native/lib.c:183:32
	movq	_ok_atom(%rip), %rbx
Ltmp176:
	.loc	3 183 41 is_stmt 0      ## native/lib.c:183:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp177:
	movq	%rax, %rcx
Ltmp178:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp179:
LBB10_4:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	.loc	3 186 1                 ## native/lib.c:186:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp180:
	popq	%rbp
	retq
LBB10_3:
	##DEBUG_VALUE: asm_1_nif_fi:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp181:
	##DEBUG_VALUE: asm_1_nif_fi:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fi:argv <- $rbx
	.loc	3 185 10                ## native/lib.c:185:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB10_4
Ltmp182:
Lfunc_end10:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function asm_1_nif_fu
LCPI11_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI11_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_asm_1_nif_fu:                          ## @asm_1_nif_fu
Lfunc_begin11:
	.loc	3 190 0                 ## native/lib.c:190:0
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
Ltmp183:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp184:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	.loc	3 193 45 prologue_end   ## native/lib.c:193:45
	movq	(%rdx), %rsi
Ltmp185:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp186:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 193 24                ## native/lib.c:193:24
	callq	_enif_get_double
	.loc	3 193 58                ## native/lib.c:193:58
	testl	%eax, %eax
Ltmp187:
	.loc	3 193 6                 ## native/lib.c:193:6
	je	LBB11_3
Ltmp188:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 196 45 is_stmt 1      ## native/lib.c:196:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp189:
	##DEBUG_VALUE: asm_1_nif_fu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 196 24 is_stmt 0      ## native/lib.c:196:24
	movq	%r14, %rdi
	callq	_enif_get_ulong
	.loc	3 196 58                ## native/lib.c:196:58
	testl	%eax, %eax
Ltmp190:
	.loc	3 196 6                 ## native/lib.c:196:6
	je	LBB11_3
Ltmp191:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_fu:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 199 24 is_stmt 1      ## native/lib.c:199:24
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	unpcklps	LCPI11_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI11_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	.loc	3 199 21 is_stmt 0      ## native/lib.c:199:21
	addsd	-32(%rbp), %xmm0
Ltmp192:
	##DEBUG_VALUE: asm_1_nif_fu:result <- $xmm0
	.loc	3 200 32 is_stmt 1      ## native/lib.c:200:32
	movq	_ok_atom(%rip), %rbx
Ltmp193:
	.loc	3 200 41 is_stmt 0      ## native/lib.c:200:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp194:
	movq	%rax, %rcx
Ltmp195:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp196:
LBB11_4:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	.loc	3 203 1                 ## native/lib.c:203:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp197:
	popq	%rbp
	retq
LBB11_3:
	##DEBUG_VALUE: asm_1_nif_fu:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
Ltmp198:
	##DEBUG_VALUE: asm_1_nif_fu:env <- $r14
	##DEBUG_VALUE: asm_1_nif_fu:argv <- $rbx
	.loc	3 202 10                ## native/lib.c:202:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB11_4
Ltmp199:
Lfunc_end11:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function asm_1_nif_ff
_asm_1_nif_ff:                          ## @asm_1_nif_ff
Lfunc_begin12:
	.loc	3 206 0                 ## native/lib.c:206:0
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
Ltmp200:
	##DEBUG_VALUE: enif_make_tuple2:env <- $rdi
	movq	%rdx, %rbx
	movq	%rdi, %r14
Ltmp201:
	##DEBUG_VALUE: enif_make_tuple2:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	.loc	3 208 45 prologue_end   ## native/lib.c:208:45
	movq	(%rdx), %rsi
Ltmp202:
	.loc	3 0 45 is_stmt 0        ## native/lib.c:0:45
	leaq	-32(%rbp), %rdx
Ltmp203:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 208 24                ## native/lib.c:208:24
	callq	_enif_get_double
	.loc	3 208 58                ## native/lib.c:208:58
	testl	%eax, %eax
Ltmp204:
	.loc	3 208 6                 ## native/lib.c:208:6
	je	LBB12_3
Ltmp205:
## %bb.1:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 211 45 is_stmt 1      ## native/lib.c:211:45
	movq	8(%rbx), %rsi
	leaq	-24(%rbp), %rdx
Ltmp206:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 211 24 is_stmt 0      ## native/lib.c:211:24
	movq	%r14, %rdi
	callq	_enif_get_double
	.loc	3 211 58                ## native/lib.c:211:58
	testl	%eax, %eax
Ltmp207:
	.loc	3 211 6                 ## native/lib.c:211:6
	je	LBB12_3
Ltmp208:
## %bb.2:
	##DEBUG_VALUE: asm_1_nif_ff:b <- [DW_OP_constu 24, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 214 19 is_stmt 1      ## native/lib.c:214:19
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
Ltmp209:
	##DEBUG_VALUE: asm_1_nif_ff:a <- $xmm0
	.loc	3 214 21 is_stmt 0      ## native/lib.c:214:21
	addsd	-24(%rbp), %xmm0
Ltmp210:
	##DEBUG_VALUE: asm_1_nif_ff:result <- $xmm0
	.loc	3 215 32 is_stmt 1      ## native/lib.c:215:32
	movq	_ok_atom(%rip), %rbx
Ltmp211:
	.loc	3 215 41 is_stmt 0      ## native/lib.c:215:41
	movq	%r14, %rdi
	callq	_enif_make_double
Ltmp212:
	movq	%rax, %rcx
Ltmp213:
	##DEBUG_VALUE: enif_make_tuple2:e2 <- $rcx
	##DEBUG_VALUE: enif_make_tuple2:e1 <- $rbx
	.loc	7 426 12 is_stmt 1      ## /Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h:426:12
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_enif_make_tuple
Ltmp214:
LBB12_4:
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	.loc	3 218 1                 ## native/lib.c:218:1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
Ltmp215:
	popq	%rbp
	retq
LBB12_3:
Ltmp216:
	##DEBUG_VALUE: asm_1_nif_ff:a <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: asm_1_nif_ff:env <- $r14
	##DEBUG_VALUE: asm_1_nif_ff:argv <- $rbx
	.loc	3 217 10                ## native/lib.c:217:10
	movq	_arithmetic_error(%rip), %rax
	jmp	LBB12_4
Ltmp217:
Lfunc_end12:
	.cfi_endproc
                                        ## -- End function
	.globl	_nif_init               ## -- Begin function nif_init
	.p2align	4, 0x90
_nif_init:                              ## @nif_init
Lfunc_begin13:
	.loc	3 234 0                 ## native/lib.c:234:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp218:
	.loc	3 234 1 prologue_end    ## native/lib.c:234:1
	leaq	_nif_init.entry(%rip), %rax
	popq	%rbp
	retq
Ltmp219:
Lfunc_end13:
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
	.asciz	"asm_1_nif_ii"          ## string offset=645
	.asciz	"asm_1_nif_uu"          ## string offset=658
	.asciz	"asm_1_nif_bb"          ## string offset=671
	.asciz	"asm_1_nif_if"          ## string offset=684
	.asciz	"asm_1_nif_uf"          ## string offset=697
	.asciz	"asm_1_nif_fi"          ## string offset=710
	.asciz	"asm_1_nif_fu"          ## string offset=723
	.asciz	"asm_1_nif_ff"          ## string offset=736
	.asciz	"nif_init"              ## string offset=749
	.asciz	"old_priv"              ## string offset=758
	.asciz	"term"                  ## string offset=767
	.asciz	"tuple_arity"           ## string offset=772
	.asciz	"tuple"                 ## string offset=784
	.asciz	"is_negative"           ## string offset=790
	.asciz	"length"                ## string offset=802
	.asciz	"head"                  ## string offset=809
	.asciz	"tail"                  ## string offset=814
	.asciz	"v"                     ## string offset=819
	.asciz	"i"                     ## string offset=821
	.asciz	"argc"                  ## string offset=823
	.asciz	"argv"                  ## string offset=828
	.asciz	"a"                     ## string offset=833
	.asciz	"long int"              ## string offset=835
	.asciz	"b"                     ## string offset=844
	.asciz	"result"                ## string offset=846
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
.set Lset37, Ltmp72-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset38, Ltmp73-Lfunc_begin0
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
.set Lset45, Ltmp52-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset46, Ltmp52-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp73-Lfunc_begin0
	.quad	Lset47
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	168                     ## -88
	.byte	127                     ## 
.set Lset48, Ltmp73-Lfunc_begin0
	.quad	Lset48
.set Lset49, Lfunc_end4-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset50, Ltmp20-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp25-Lfunc_begin0
	.quad	Lset51
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	72                      ## -56
.set Lset52, Ltmp25-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp27-Lfunc_begin0
	.quad	Lset53
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
.set Lset54, Ltmp30-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp32-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
.set Lset56, Ltmp36-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp39-Lfunc_begin0
	.quad	Lset57
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset58, Ltmp26-Lfunc_begin0
	.quad	Lset58
.set Lset59, Lfunc_end4-Lfunc_begin0
	.quad	Lset59
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	164                     ## -92
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset60, Ltmp31-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp49-Lfunc_begin0
	.quad	Lset61
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
.set Lset62, Ltmp49-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp55-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset64, Ltmp62-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp64-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset66, Ltmp66-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp68-Lfunc_begin0
	.quad	Lset67
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset68, Ltmp69-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp70-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	82                      ## super-register DW_OP_reg2
.set Lset70, Ltmp74-Lfunc_begin0
	.quad	Lset70
.set Lset71, Lfunc_end4-Lfunc_begin0
	.quad	Lset71
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	84                      ## -44
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset72, Ltmp37-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp54-Lfunc_begin0
	.quad	Lset73
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
.set Lset74, Ltmp54-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp55-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset76, Ltmp58-Lfunc_begin0
	.quad	Lset76
.set Lset77, Lfunc_end4-Lfunc_begin0
	.quad	Lset77
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset78, Ltmp38-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp58-Lfunc_begin0
	.quad	Lset79
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
.set Lset80, Ltmp58-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp58-Lfunc_begin0
	.quad	Lset81
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset82, Ltmp58-Lfunc_begin0
	.quad	Lset82
.set Lset83, Lfunc_end4-Lfunc_begin0
	.quad	Lset83
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset84, Ltmp45-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp71-Lfunc_begin0
	.quad	Lset85
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset86, Ltmp74-Lfunc_begin0
	.quad	Lset86
.set Lset87, Lfunc_end4-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset88, Ltmp48-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp53-Lfunc_begin0
	.quad	Lset89
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
.set Lset90, Ltmp53-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp61-Lfunc_begin0
	.quad	Lset91
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset92, Ltmp64-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp65-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset94, Lfunc_begin5-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp77-Lfunc_begin0
	.quad	Lset95
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset96, Ltmp77-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp93-Lfunc_begin0
	.quad	Lset97
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset98, Ltmp94-Lfunc_begin0
	.quad	Lset98
.set Lset99, Lfunc_end5-Lfunc_begin0
	.quad	Lset99
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset100, Lfunc_begin5-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp78-Lfunc_begin0
	.quad	Lset101
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset102, Lfunc_begin5-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp77-Lfunc_begin0
	.quad	Lset103
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset104, Ltmp77-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp88-Lfunc_begin0
	.quad	Lset105
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset106, Ltmp94-Lfunc_begin0
	.quad	Lset106
.set Lset107, Lfunc_end5-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset108, Ltmp76-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp77-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset110, Ltmp77-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp81-Lfunc_begin0
	.quad	Lset111
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset112, Ltmp76-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp77-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset114, Ltmp77-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp81-Lfunc_begin0
	.quad	Lset115
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset116, Ltmp79-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp85-Lfunc_begin0
	.quad	Lset117
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset118, Ltmp85-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp86-Lfunc_begin0
	.quad	Lset119
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset120, Ltmp94-Lfunc_begin0
	.quad	Lset120
.set Lset121, Lfunc_end5-Lfunc_begin0
	.quad	Lset121
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset122, Ltmp82-Lfunc_begin0
	.quad	Lset122
.set Lset123, Lfunc_end5-Lfunc_begin0
	.quad	Lset123
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset124, Ltmp87-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp89-Lfunc_begin0
	.quad	Lset125
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset126, Ltmp90-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp91-Lfunc_begin0
	.quad	Lset127
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset128, Ltmp90-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp91-Lfunc_begin0
	.quad	Lset129
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset130, Ltmp96-Lfunc_begin0
	.quad	Lset130
.set Lset131, Lfunc_end5-Lfunc_begin0
	.quad	Lset131
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset132, Ltmp96-Lfunc_begin0
	.quad	Lset132
.set Lset133, Lfunc_end5-Lfunc_begin0
	.quad	Lset133
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset134, Lfunc_begin6-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp99-Lfunc_begin0
	.quad	Lset135
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset136, Ltmp99-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp115-Lfunc_begin0
	.quad	Lset137
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset138, Ltmp116-Lfunc_begin0
	.quad	Lset138
.set Lset139, Lfunc_end6-Lfunc_begin0
	.quad	Lset139
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset140, Lfunc_begin6-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp100-Lfunc_begin0
	.quad	Lset141
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset142, Lfunc_begin6-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp99-Lfunc_begin0
	.quad	Lset143
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset144, Ltmp99-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp110-Lfunc_begin0
	.quad	Lset145
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset146, Ltmp116-Lfunc_begin0
	.quad	Lset146
.set Lset147, Lfunc_end6-Lfunc_begin0
	.quad	Lset147
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset148, Ltmp98-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp99-Lfunc_begin0
	.quad	Lset149
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset150, Ltmp99-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp103-Lfunc_begin0
	.quad	Lset151
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset152, Ltmp98-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp99-Lfunc_begin0
	.quad	Lset153
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset154, Ltmp99-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp103-Lfunc_begin0
	.quad	Lset155
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset156, Ltmp101-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp107-Lfunc_begin0
	.quad	Lset157
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset158, Ltmp107-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp108-Lfunc_begin0
	.quad	Lset159
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset160, Ltmp116-Lfunc_begin0
	.quad	Lset160
.set Lset161, Lfunc_end6-Lfunc_begin0
	.quad	Lset161
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset162, Ltmp104-Lfunc_begin0
	.quad	Lset162
.set Lset163, Lfunc_end6-Lfunc_begin0
	.quad	Lset163
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset164, Ltmp109-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp111-Lfunc_begin0
	.quad	Lset165
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset166, Ltmp112-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp113-Lfunc_begin0
	.quad	Lset167
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset168, Ltmp112-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp113-Lfunc_begin0
	.quad	Lset169
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset170, Ltmp118-Lfunc_begin0
	.quad	Lset170
.set Lset171, Lfunc_end6-Lfunc_begin0
	.quad	Lset171
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset172, Ltmp118-Lfunc_begin0
	.quad	Lset172
.set Lset173, Lfunc_end6-Lfunc_begin0
	.quad	Lset173
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset174, Lfunc_begin7-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp121-Lfunc_begin0
	.quad	Lset175
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset176, Ltmp121-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp129-Lfunc_begin0
	.quad	Lset177
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset178, Ltmp130-Lfunc_begin0
	.quad	Lset178
.set Lset179, Lfunc_end7-Lfunc_begin0
	.quad	Lset179
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset180, Lfunc_begin7-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp122-Lfunc_begin0
	.quad	Lset181
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset182, Lfunc_begin7-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp123-Lfunc_begin0
	.quad	Lset183
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset184, Ltmp120-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp121-Lfunc_begin0
	.quad	Lset185
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset186, Ltmp121-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp128-Lfunc_begin0
	.quad	Lset187
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset188, Ltmp123-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp126-Lfunc_begin0
	.quad	Lset189
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
.set Lset190, Ltmp126-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp128-Lfunc_begin0
	.quad	Lset191
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset192, Ltmp130-Lfunc_begin0
	.quad	Lset192
.set Lset193, Lfunc_end7-Lfunc_begin0
	.quad	Lset193
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset194, Ltmp127-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp128-Lfunc_begin0
	.quad	Lset195
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset196, Ltmp127-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp128-Lfunc_begin0
	.quad	Lset197
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset198, Lfunc_begin8-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp133-Lfunc_begin0
	.quad	Lset199
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset200, Ltmp133-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp146-Lfunc_begin0
	.quad	Lset201
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset202, Ltmp147-Lfunc_begin0
	.quad	Lset202
.set Lset203, Lfunc_end8-Lfunc_begin0
	.quad	Lset203
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset204, Lfunc_begin8-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp134-Lfunc_begin0
	.quad	Lset205
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset206, Lfunc_begin8-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp133-Lfunc_begin0
	.quad	Lset207
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset208, Ltmp133-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp142-Lfunc_begin0
	.quad	Lset209
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset210, Ltmp147-Lfunc_begin0
	.quad	Lset210
.set Lset211, Lfunc_end8-Lfunc_begin0
	.quad	Lset211
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset212, Ltmp132-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp133-Lfunc_begin0
	.quad	Lset213
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset214, Ltmp133-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp137-Lfunc_begin0
	.quad	Lset215
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset216, Ltmp135-Lfunc_begin0
	.quad	Lset216
.set Lset217, Lfunc_end8-Lfunc_begin0
	.quad	Lset217
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset218, Ltmp138-Lfunc_begin0
	.quad	Lset218
.set Lset219, Lfunc_end8-Lfunc_begin0
	.quad	Lset219
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset220, Ltmp141-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp143-Lfunc_begin0
	.quad	Lset221
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset222, Ltmp144-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp145-Lfunc_begin0
	.quad	Lset223
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset224, Ltmp144-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp145-Lfunc_begin0
	.quad	Lset225
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset226, Lfunc_begin9-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp150-Lfunc_begin0
	.quad	Lset227
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset228, Ltmp150-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp163-Lfunc_begin0
	.quad	Lset229
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset230, Ltmp164-Lfunc_begin0
	.quad	Lset230
.set Lset231, Lfunc_end9-Lfunc_begin0
	.quad	Lset231
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset232, Lfunc_begin9-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp151-Lfunc_begin0
	.quad	Lset233
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset234, Lfunc_begin9-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp150-Lfunc_begin0
	.quad	Lset235
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset236, Ltmp150-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp159-Lfunc_begin0
	.quad	Lset237
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset238, Ltmp164-Lfunc_begin0
	.quad	Lset238
.set Lset239, Lfunc_end9-Lfunc_begin0
	.quad	Lset239
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset240, Ltmp149-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp150-Lfunc_begin0
	.quad	Lset241
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset242, Ltmp150-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp154-Lfunc_begin0
	.quad	Lset243
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset244, Ltmp152-Lfunc_begin0
	.quad	Lset244
.set Lset245, Lfunc_end9-Lfunc_begin0
	.quad	Lset245
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset246, Ltmp155-Lfunc_begin0
	.quad	Lset246
.set Lset247, Lfunc_end9-Lfunc_begin0
	.quad	Lset247
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset248, Ltmp158-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp160-Lfunc_begin0
	.quad	Lset249
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset250, Ltmp161-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp162-Lfunc_begin0
	.quad	Lset251
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset252, Ltmp161-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp162-Lfunc_begin0
	.quad	Lset253
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset254, Lfunc_begin10-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp167-Lfunc_begin0
	.quad	Lset255
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset256, Ltmp167-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp180-Lfunc_begin0
	.quad	Lset257
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset258, Ltmp181-Lfunc_begin0
	.quad	Lset258
.set Lset259, Lfunc_end10-Lfunc_begin0
	.quad	Lset259
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset260, Lfunc_begin10-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp168-Lfunc_begin0
	.quad	Lset261
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset262, Lfunc_begin10-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp167-Lfunc_begin0
	.quad	Lset263
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset264, Ltmp167-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp176-Lfunc_begin0
	.quad	Lset265
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset266, Ltmp181-Lfunc_begin0
	.quad	Lset266
.set Lset267, Lfunc_end10-Lfunc_begin0
	.quad	Lset267
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset268, Ltmp166-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp167-Lfunc_begin0
	.quad	Lset269
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset270, Ltmp167-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp171-Lfunc_begin0
	.quad	Lset271
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc75:
.set Lset272, Ltmp169-Lfunc_begin0
	.quad	Lset272
.set Lset273, Lfunc_end10-Lfunc_begin0
	.quad	Lset273
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc76:
.set Lset274, Ltmp172-Lfunc_begin0
	.quad	Lset274
.set Lset275, Lfunc_end10-Lfunc_begin0
	.quad	Lset275
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc77:
.set Lset276, Ltmp175-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp177-Lfunc_begin0
	.quad	Lset277
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc78:
.set Lset278, Ltmp178-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp179-Lfunc_begin0
	.quad	Lset279
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc79:
.set Lset280, Ltmp178-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp179-Lfunc_begin0
	.quad	Lset281
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc80:
.set Lset282, Lfunc_begin11-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp184-Lfunc_begin0
	.quad	Lset283
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset284, Ltmp184-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp197-Lfunc_begin0
	.quad	Lset285
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset286, Ltmp198-Lfunc_begin0
	.quad	Lset286
.set Lset287, Lfunc_end11-Lfunc_begin0
	.quad	Lset287
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc81:
.set Lset288, Lfunc_begin11-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp185-Lfunc_begin0
	.quad	Lset289
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc82:
.set Lset290, Lfunc_begin11-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp184-Lfunc_begin0
	.quad	Lset291
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset292, Ltmp184-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp193-Lfunc_begin0
	.quad	Lset293
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset294, Ltmp198-Lfunc_begin0
	.quad	Lset294
.set Lset295, Lfunc_end11-Lfunc_begin0
	.quad	Lset295
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc83:
.set Lset296, Ltmp183-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp184-Lfunc_begin0
	.quad	Lset297
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset298, Ltmp184-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp188-Lfunc_begin0
	.quad	Lset299
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc84:
.set Lset300, Ltmp186-Lfunc_begin0
	.quad	Lset300
.set Lset301, Lfunc_end11-Lfunc_begin0
	.quad	Lset301
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc85:
.set Lset302, Ltmp189-Lfunc_begin0
	.quad	Lset302
.set Lset303, Lfunc_end11-Lfunc_begin0
	.quad	Lset303
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc86:
.set Lset304, Ltmp192-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp194-Lfunc_begin0
	.quad	Lset305
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc87:
.set Lset306, Ltmp195-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp196-Lfunc_begin0
	.quad	Lset307
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc88:
.set Lset308, Ltmp195-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp196-Lfunc_begin0
	.quad	Lset309
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc89:
.set Lset310, Lfunc_begin12-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp201-Lfunc_begin0
	.quad	Lset311
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset312, Ltmp201-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp215-Lfunc_begin0
	.quad	Lset313
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset314, Ltmp216-Lfunc_begin0
	.quad	Lset314
.set Lset315, Lfunc_end12-Lfunc_begin0
	.quad	Lset315
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc90:
.set Lset316, Lfunc_begin12-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp202-Lfunc_begin0
	.quad	Lset317
	.short	1                       ## Loc expr size
	.byte	84                      ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc91:
.set Lset318, Lfunc_begin12-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp201-Lfunc_begin0
	.quad	Lset319
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset320, Ltmp201-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp211-Lfunc_begin0
	.quad	Lset321
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset322, Ltmp216-Lfunc_begin0
	.quad	Lset322
.set Lset323, Lfunc_end12-Lfunc_begin0
	.quad	Lset323
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc92:
.set Lset324, Ltmp200-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp201-Lfunc_begin0
	.quad	Lset325
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset326, Ltmp201-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp205-Lfunc_begin0
	.quad	Lset327
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc93:
.set Lset328, Ltmp203-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp209-Lfunc_begin0
	.quad	Lset329
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset330, Ltmp209-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp210-Lfunc_begin0
	.quad	Lset331
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
.set Lset332, Ltmp216-Lfunc_begin0
	.quad	Lset332
.set Lset333, Lfunc_end12-Lfunc_begin0
	.quad	Lset333
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc94:
.set Lset334, Ltmp206-Lfunc_begin0
	.quad	Lset334
.set Lset335, Lfunc_end12-Lfunc_begin0
	.quad	Lset335
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	104                     ## -24
	.quad	0
	.quad	0
Ldebug_loc95:
.set Lset336, Ltmp210-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp212-Lfunc_begin0
	.quad	Lset337
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc96:
.set Lset338, Ltmp213-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp214-Lfunc_begin0
	.quad	Lset339
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc97:
.set Lset340, Ltmp213-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp214-Lfunc_begin0
	.quad	Lset341
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
	.long	2835                    ## Length of Unit
	.short	4                       ## DWARF version number
.set Lset342, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset342
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0xb0c DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	45                      ## DW_AT_name
.set Lset343, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset343
	.long	58                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset344, Lfunc_end13-Lfunc_begin0  ## DW_AT_high_pc
	.long	Lset344
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	87                      ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	221                     ## DW_AT_decl_line
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
	.quad	Lfunc_begin13           ## DW_AT_low_pc
.set Lset345, Lfunc_end13-Lfunc_begin13 ## DW_AT_high_pc
	.long	Lset345
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	749                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	234                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	2821                    ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x13a:0x15 DW_TAG_variable
	.long	281                     ## DW_AT_name
	.long	336                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	234                     ## DW_AT_decl_line
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
	.byte	61                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_arithmetic_error
	.byte	2                       ## Abbrev [2] 0x280:0x15 DW_TAG_variable
	.long	468                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	62                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_ok_atom
	.byte	2                       ## Abbrev [2] 0x295:0x15 DW_TAG_variable
	.long	476                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	63                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_error_atom
	.byte	2                       ## Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	487                     ## DW_AT_name
	.long	193                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	64                      ## DW_AT_decl_line
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
	.long	786                     ## DW_AT_type
	.byte	3                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x312:0x5 DW_TAG_pointer_type
	.long	265                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x317:0x7 DW_TAG_base_type
	.long	570                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x31e:0x14 DW_TAG_subprogram
	.long	577                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	66                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x326:0xb DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	66                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x332:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset346, Lfunc_end0-Lfunc_begin0   ## DW_AT_high_pc
	.long	Lset346
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	1007                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x345:0x9 DW_TAG_formal_parameter
.set Lset347, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset347
	.long	1019                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x34e:0x9 DW_TAG_formal_parameter
.set Lset348, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset348
	.long	1030                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x357:0x9 DW_TAG_formal_parameter
.set Lset349, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset349
	.long	1041                    ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x360:0x1d DW_TAG_inlined_subroutine
	.long	798                     ## DW_AT_abstract_origin
	.quad	Ltmp1                   ## DW_AT_low_pc
.set Lset350, Ltmp4-Ltmp1               ## DW_AT_high_pc
	.long	Lset350
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x373:0x9 DW_TAG_formal_parameter
.set Lset351, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset351
	.long	806                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	23                      ## Abbrev [23] 0x37e:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset352, Lfunc_end1-Lfunc_begin1   ## DW_AT_high_pc
	.long	Lset352
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	363                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x393:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3a0:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	548                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x3ae:0x41 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset353, Lfunc_end2-Lfunc_begin2   ## DW_AT_high_pc
	.long	Lset353
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	348                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	24                      ## Abbrev [24] 0x3c7:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3d4:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x3e1:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	26                      ## Abbrev [26] 0x3ef:0x2e DW_TAG_subprogram
	.long	343                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	19                      ## Abbrev [19] 0x3fb:0xb DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x406:0xb DW_TAG_formal_parameter
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	19                      ## Abbrev [19] 0x411:0xb DW_TAG_formal_parameter
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x41d:0xa2 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
.set Lset354, Lfunc_end3-Lfunc_begin3   ## DW_AT_high_pc
	.long	Lset354
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	355                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x436:0xf DW_TAG_formal_parameter
.set Lset355, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset355
	.long	591                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x445:0xf DW_TAG_formal_parameter
.set Lset356, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset356
	.long	595                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x454:0xf DW_TAG_formal_parameter
.set Lset357, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset357
	.long	758                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	543                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x463:0xf DW_TAG_formal_parameter
.set Lset358, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset358
	.long	600                     ## DW_AT_name
	.byte	6                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x472:0x4c DW_TAG_inlined_subroutine
	.long	1007                    ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
.set Lset359, Ltmp15-Ltmp12             ## DW_AT_high_pc
	.long	Lset359
	.byte	6                       ## DW_AT_call_file
	.byte	26                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x485:0x9 DW_TAG_formal_parameter
.set Lset360, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset360
	.long	1019                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x48e:0x9 DW_TAG_formal_parameter
.set Lset361, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset361
	.long	1030                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x497:0x9 DW_TAG_formal_parameter
.set Lset362, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset362
	.long	1041                    ## DW_AT_abstract_origin
	.byte	22                      ## Abbrev [22] 0x4a0:0x1d DW_TAG_inlined_subroutine
	.long	798                     ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
.set Lset363, Ltmp15-Ltmp12             ## DW_AT_high_pc
	.long	Lset363
	.byte	6                       ## DW_AT_call_file
	.byte	8                       ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x4b3:0x9 DW_TAG_formal_parameter
.set Lset364, Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset364
	.long	806                     ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x4bf:0xcc DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
.set Lset365, Lfunc_end4-Lfunc_begin4   ## DW_AT_high_pc
	.long	Lset365
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	605                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	265                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x4d8:0xf DW_TAG_formal_parameter
.set Lset366, Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset366
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4e7:0xf DW_TAG_formal_parameter
.set Lset367, Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset367
	.long	767                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x4f6:0xf DW_TAG_formal_parameter
.set Lset368, Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset368
	.long	564                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	2826                    ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x505:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	68
	.long	772                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	12                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x513:0xf DW_TAG_variable
.set Lset369, Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset369
	.long	784                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x522:0xf DW_TAG_variable
.set Lset370, Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset370
	.long	790                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	20                      ## DW_AT_decl_line
	.long	160                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x531:0xf DW_TAG_variable
.set Lset371, Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset371
	.long	802                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	24                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x540:0xf DW_TAG_variable
.set Lset372, Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset372
	.long	809                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x54f:0xf DW_TAG_variable
.set Lset373, Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset373
	.long	814                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x55e:0xf DW_TAG_variable
.set Lset374, Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset374
	.long	819                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.long	732                     ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x56d:0x1d DW_TAG_lexical_block
	.quad	Ltmp48                  ## DW_AT_low_pc
.set Lset375, Ltmp68-Ltmp48             ## DW_AT_high_pc
	.long	Lset375
	.byte	29                      ## Abbrev [29] 0x57a:0xf DW_TAG_variable
.set Lset376, Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset376
	.long	821                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	31                      ## Abbrev [31] 0x58b:0x32 DW_TAG_subprogram
	.long	622                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	1                       ## DW_AT_inline
	.byte	32                      ## Abbrev [32] 0x598:0xc DW_TAG_formal_parameter
	.long	591                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	422                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x5a4:0xc DW_TAG_formal_parameter
	.long	639                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	423                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	32                      ## Abbrev [32] 0x5b0:0xc DW_TAG_formal_parameter
	.long	642                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.short	424                     ## DW_AT_decl_line
	.long	193                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x5bd:0xca DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
.set Lset377, Lfunc_end5-Lfunc_begin5   ## DW_AT_high_pc
	.long	Lset377
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	645                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x5d6:0xf DW_TAG_formal_parameter
.set Lset378, Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset378
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5e5:0xf DW_TAG_formal_parameter
.set Lset379, Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset379
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x5f4:0xf DW_TAG_formal_parameter
.set Lset380, Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset380
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x603:0xf DW_TAG_variable
.set Lset381, Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset381
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.long	2831                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x612:0xf DW_TAG_variable
.set Lset382, Ldebug_loc28-Lsection_debug_loc ## DW_AT_location
	.long	Lset382
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.long	2831                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x621:0xf DW_TAG_variable
.set Lset383, Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset383
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.long	2831                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x630:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp90                  ## DW_AT_low_pc
.set Lset384, Ltmp91-Ltmp90             ## DW_AT_high_pc
	.long	Lset384
	.byte	3                       ## DW_AT_call_file
	.byte	91                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x643:0x9 DW_TAG_formal_parameter
.set Lset385, Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset385
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x64c:0x9 DW_TAG_formal_parameter
.set Lset386, Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset386
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x655:0x9 DW_TAG_formal_parameter
.set Lset387, Ldebug_loc30-Lsection_debug_loc ## DW_AT_location
	.long	Lset387
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	33                      ## Abbrev [33] 0x65f:0x27 DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
.set Lset388, Ldebug_ranges0-Ldebug_range ## DW_AT_ranges
	.long	Lset388
	.byte	3                       ## DW_AT_call_file
	.byte	95                      ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x66a:0x9 DW_TAG_formal_parameter
.set Lset389, Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset389
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x673:0x9 DW_TAG_formal_parameter
.set Lset390, Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset390
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x67c:0x9 DW_TAG_formal_parameter
.set Lset391, Ldebug_loc32-Lsection_debug_loc ## DW_AT_location
	.long	Lset391
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x687:0xca DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
.set Lset392, Lfunc_end6-Lfunc_begin6   ## DW_AT_high_pc
	.long	Lset392
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	658                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x6a0:0xf DW_TAG_formal_parameter
.set Lset393, Ldebug_loc34-Lsection_debug_loc ## DW_AT_location
	.long	Lset393
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x6af:0xf DW_TAG_formal_parameter
.set Lset394, Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset394
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x6be:0xf DW_TAG_formal_parameter
.set Lset395, Ldebug_loc36-Lsection_debug_loc ## DW_AT_location
	.long	Lset395
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6cd:0xf DW_TAG_variable
.set Lset396, Ldebug_loc39-Lsection_debug_loc ## DW_AT_location
	.long	Lset396
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6dc:0xf DW_TAG_variable
.set Lset397, Ldebug_loc40-Lsection_debug_loc ## DW_AT_location
	.long	Lset397
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x6eb:0xf DW_TAG_variable
.set Lset398, Ldebug_loc41-Lsection_debug_loc ## DW_AT_location
	.long	Lset398
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	110                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x6fa:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp112                 ## DW_AT_low_pc
.set Lset399, Ltmp113-Ltmp112           ## DW_AT_high_pc
	.long	Lset399
	.byte	3                       ## DW_AT_call_file
	.byte	116                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x70d:0x9 DW_TAG_formal_parameter
.set Lset400, Ldebug_loc37-Lsection_debug_loc ## DW_AT_location
	.long	Lset400
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x716:0x9 DW_TAG_formal_parameter
.set Lset401, Ldebug_loc43-Lsection_debug_loc ## DW_AT_location
	.long	Lset401
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x71f:0x9 DW_TAG_formal_parameter
.set Lset402, Ldebug_loc42-Lsection_debug_loc ## DW_AT_location
	.long	Lset402
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	33                      ## Abbrev [33] 0x729:0x27 DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
.set Lset403, Ldebug_ranges1-Ldebug_range ## DW_AT_ranges
	.long	Lset403
	.byte	3                       ## DW_AT_call_file
	.byte	120                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x734:0x9 DW_TAG_formal_parameter
.set Lset404, Ldebug_loc38-Lsection_debug_loc ## DW_AT_location
	.long	Lset404
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x73d:0x9 DW_TAG_formal_parameter
.set Lset405, Ldebug_loc45-Lsection_debug_loc ## DW_AT_location
	.long	Lset405
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x746:0x9 DW_TAG_formal_parameter
.set Lset406, Ldebug_loc44-Lsection_debug_loc ## DW_AT_location
	.long	Lset406
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x751:0x85 DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
.set Lset407, Lfunc_end7-Lfunc_begin7   ## DW_AT_high_pc
	.long	Lset407
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	671                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x76a:0xf DW_TAG_formal_parameter
.set Lset408, Ldebug_loc46-Lsection_debug_loc ## DW_AT_location
	.long	Lset408
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x779:0xf DW_TAG_formal_parameter
.set Lset409, Ldebug_loc47-Lsection_debug_loc ## DW_AT_location
	.long	Lset409
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x788:0xf DW_TAG_formal_parameter
.set Lset410, Ldebug_loc48-Lsection_debug_loc ## DW_AT_location
	.long	Lset410
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	124                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x797:0xf DW_TAG_variable
.set Lset411, Ldebug_loc50-Lsection_debug_loc ## DW_AT_location
	.long	Lset411
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	126                     ## DW_AT_decl_line
	.long	737                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x7a6:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp127                 ## DW_AT_low_pc
.set Lset412, Ltmp128-Ltmp127           ## DW_AT_high_pc
	.long	Lset412
	.byte	3                       ## DW_AT_call_file
	.byte	133                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x7b9:0x9 DW_TAG_formal_parameter
.set Lset413, Ldebug_loc49-Lsection_debug_loc ## DW_AT_location
	.long	Lset413
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x7c2:0x9 DW_TAG_formal_parameter
.set Lset414, Ldebug_loc52-Lsection_debug_loc ## DW_AT_location
	.long	Lset414
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x7cb:0x9 DW_TAG_formal_parameter
.set Lset415, Ldebug_loc51-Lsection_debug_loc ## DW_AT_location
	.long	Lset415
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x7d6:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin8            ## DW_AT_low_pc
.set Lset416, Lfunc_end8-Lfunc_begin8   ## DW_AT_high_pc
	.long	Lset416
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	684                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x7ef:0xf DW_TAG_formal_parameter
.set Lset417, Ldebug_loc53-Lsection_debug_loc ## DW_AT_location
	.long	Lset417
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x7fe:0xf DW_TAG_formal_parameter
.set Lset418, Ldebug_loc54-Lsection_debug_loc ## DW_AT_location
	.long	Lset418
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x80d:0xf DW_TAG_formal_parameter
.set Lset419, Ldebug_loc55-Lsection_debug_loc ## DW_AT_location
	.long	Lset419
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x81c:0xf DW_TAG_variable
.set Lset420, Ldebug_loc57-Lsection_debug_loc ## DW_AT_location
	.long	Lset420
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	139                     ## DW_AT_decl_line
	.long	2831                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x82b:0xf DW_TAG_variable
.set Lset421, Ldebug_loc58-Lsection_debug_loc ## DW_AT_location
	.long	Lset421
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	140                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x83a:0xf DW_TAG_variable
.set Lset422, Ldebug_loc59-Lsection_debug_loc ## DW_AT_location
	.long	Lset422
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	147                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x849:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp144                 ## DW_AT_low_pc
.set Lset423, Ltmp145-Ltmp144           ## DW_AT_high_pc
	.long	Lset423
	.byte	3                       ## DW_AT_call_file
	.byte	148                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x85c:0x9 DW_TAG_formal_parameter
.set Lset424, Ldebug_loc56-Lsection_debug_loc ## DW_AT_location
	.long	Lset424
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x865:0x9 DW_TAG_formal_parameter
.set Lset425, Ldebug_loc61-Lsection_debug_loc ## DW_AT_location
	.long	Lset425
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x86e:0x9 DW_TAG_formal_parameter
.set Lset426, Ldebug_loc60-Lsection_debug_loc ## DW_AT_location
	.long	Lset426
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x879:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin9            ## DW_AT_low_pc
.set Lset427, Lfunc_end9-Lfunc_begin9   ## DW_AT_high_pc
	.long	Lset427
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	697                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x892:0xf DW_TAG_formal_parameter
.set Lset428, Ldebug_loc62-Lsection_debug_loc ## DW_AT_location
	.long	Lset428
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x8a1:0xf DW_TAG_formal_parameter
.set Lset429, Ldebug_loc63-Lsection_debug_loc ## DW_AT_location
	.long	Lset429
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x8b0:0xf DW_TAG_formal_parameter
.set Lset430, Ldebug_loc64-Lsection_debug_loc ## DW_AT_location
	.long	Lset430
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x8bf:0xf DW_TAG_variable
.set Lset431, Ldebug_loc66-Lsection_debug_loc ## DW_AT_location
	.long	Lset431
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x8ce:0xf DW_TAG_variable
.set Lset432, Ldebug_loc67-Lsection_debug_loc ## DW_AT_location
	.long	Lset432
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	158                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x8dd:0xf DW_TAG_variable
.set Lset433, Ldebug_loc68-Lsection_debug_loc ## DW_AT_location
	.long	Lset433
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	165                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x8ec:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp161                 ## DW_AT_low_pc
.set Lset434, Ltmp162-Ltmp161           ## DW_AT_high_pc
	.long	Lset434
	.byte	3                       ## DW_AT_call_file
	.byte	166                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x8ff:0x9 DW_TAG_formal_parameter
.set Lset435, Ldebug_loc65-Lsection_debug_loc ## DW_AT_location
	.long	Lset435
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x908:0x9 DW_TAG_formal_parameter
.set Lset436, Ldebug_loc70-Lsection_debug_loc ## DW_AT_location
	.long	Lset436
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x911:0x9 DW_TAG_formal_parameter
.set Lset437, Ldebug_loc69-Lsection_debug_loc ## DW_AT_location
	.long	Lset437
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x91c:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin10           ## DW_AT_low_pc
.set Lset438, Lfunc_end10-Lfunc_begin10 ## DW_AT_high_pc
	.long	Lset438
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	710                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	172                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x935:0xf DW_TAG_formal_parameter
.set Lset439, Ldebug_loc71-Lsection_debug_loc ## DW_AT_location
	.long	Lset439
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	172                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x944:0xf DW_TAG_formal_parameter
.set Lset440, Ldebug_loc72-Lsection_debug_loc ## DW_AT_location
	.long	Lset440
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	172                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x953:0xf DW_TAG_formal_parameter
.set Lset441, Ldebug_loc73-Lsection_debug_loc ## DW_AT_location
	.long	Lset441
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	172                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x962:0xf DW_TAG_variable
.set Lset442, Ldebug_loc75-Lsection_debug_loc ## DW_AT_location
	.long	Lset442
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	174                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x971:0xf DW_TAG_variable
.set Lset443, Ldebug_loc76-Lsection_debug_loc ## DW_AT_location
	.long	Lset443
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	175                     ## DW_AT_decl_line
	.long	2831                    ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x980:0xf DW_TAG_variable
.set Lset444, Ldebug_loc77-Lsection_debug_loc ## DW_AT_location
	.long	Lset444
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	182                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x98f:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp178                 ## DW_AT_low_pc
.set Lset445, Ltmp179-Ltmp178           ## DW_AT_high_pc
	.long	Lset445
	.byte	3                       ## DW_AT_call_file
	.byte	183                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0x9a2:0x9 DW_TAG_formal_parameter
.set Lset446, Ldebug_loc74-Lsection_debug_loc ## DW_AT_location
	.long	Lset446
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x9ab:0x9 DW_TAG_formal_parameter
.set Lset447, Ldebug_loc79-Lsection_debug_loc ## DW_AT_location
	.long	Lset447
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0x9b4:0x9 DW_TAG_formal_parameter
.set Lset448, Ldebug_loc78-Lsection_debug_loc ## DW_AT_location
	.long	Lset448
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x9bf:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin11           ## DW_AT_low_pc
.set Lset449, Lfunc_end11-Lfunc_begin11 ## DW_AT_high_pc
	.long	Lset449
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	723                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	189                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0x9d8:0xf DW_TAG_formal_parameter
.set Lset450, Ldebug_loc80-Lsection_debug_loc ## DW_AT_location
	.long	Lset450
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	189                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x9e7:0xf DW_TAG_formal_parameter
.set Lset451, Ldebug_loc81-Lsection_debug_loc ## DW_AT_location
	.long	Lset451
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	189                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x9f6:0xf DW_TAG_formal_parameter
.set Lset452, Ldebug_loc82-Lsection_debug_loc ## DW_AT_location
	.long	Lset452
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	189                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa05:0xf DW_TAG_variable
.set Lset453, Ldebug_loc84-Lsection_debug_loc ## DW_AT_location
	.long	Lset453
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	191                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa14:0xf DW_TAG_variable
.set Lset454, Ldebug_loc85-Lsection_debug_loc ## DW_AT_location
	.long	Lset454
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	192                     ## DW_AT_decl_line
	.long	237                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xa23:0xf DW_TAG_variable
.set Lset455, Ldebug_loc86-Lsection_debug_loc ## DW_AT_location
	.long	Lset455
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	199                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0xa32:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp195                 ## DW_AT_low_pc
.set Lset456, Ltmp196-Ltmp195           ## DW_AT_high_pc
	.long	Lset456
	.byte	3                       ## DW_AT_call_file
	.byte	200                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0xa45:0x9 DW_TAG_formal_parameter
.set Lset457, Ldebug_loc83-Lsection_debug_loc ## DW_AT_location
	.long	Lset457
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xa4e:0x9 DW_TAG_formal_parameter
.set Lset458, Ldebug_loc88-Lsection_debug_loc ## DW_AT_location
	.long	Lset458
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xa57:0x9 DW_TAG_formal_parameter
.set Lset459, Ldebug_loc87-Lsection_debug_loc ## DW_AT_location
	.long	Lset459
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0xa62:0xa3 DW_TAG_subprogram
	.quad	Lfunc_begin12           ## DW_AT_low_pc
.set Lset460, Lfunc_end12-Lfunc_begin12 ## DW_AT_high_pc
	.long	Lset460
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	736                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	205                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	193                     ## DW_AT_type
                                        ## DW_AT_APPLE_optimized
	.byte	27                      ## Abbrev [27] 0xa7b:0xf DW_TAG_formal_parameter
.set Lset461, Ldebug_loc89-Lsection_debug_loc ## DW_AT_location
	.long	Lset461
	.long	591                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	205                     ## DW_AT_decl_line
	.long	244                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xa8a:0xf DW_TAG_formal_parameter
.set Lset462, Ldebug_loc90-Lsection_debug_loc ## DW_AT_location
	.long	Lset462
	.long	823                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	205                     ## DW_AT_decl_line
	.long	265                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0xa99:0xf DW_TAG_formal_parameter
.set Lset463, Ldebug_loc91-Lsection_debug_loc ## DW_AT_location
	.long	Lset463
	.long	828                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	205                     ## DW_AT_decl_line
	.long	272                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xaa8:0xf DW_TAG_variable
.set Lset464, Ldebug_loc93-Lsection_debug_loc ## DW_AT_location
	.long	Lset464
	.long	833                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	207                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xab7:0xf DW_TAG_variable
.set Lset465, Ldebug_loc94-Lsection_debug_loc ## DW_AT_location
	.long	Lset465
	.long	844                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	207                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0xac6:0xf DW_TAG_variable
.set Lset466, Ldebug_loc95-Lsection_debug_loc ## DW_AT_location
	.long	Lset466
	.long	846                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	214                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0xad5:0x2f DW_TAG_inlined_subroutine
	.long	1419                    ## DW_AT_abstract_origin
	.quad	Ltmp213                 ## DW_AT_low_pc
.set Lset467, Ltmp214-Ltmp213           ## DW_AT_high_pc
	.long	Lset467
	.byte	3                       ## DW_AT_call_file
	.byte	215                     ## DW_AT_call_line
	.byte	21                      ## Abbrev [21] 0xae8:0x9 DW_TAG_formal_parameter
.set Lset468, Ldebug_loc92-Lsection_debug_loc ## DW_AT_location
	.long	Lset468
	.long	1432                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xaf1:0x9 DW_TAG_formal_parameter
.set Lset469, Ldebug_loc97-Lsection_debug_loc ## DW_AT_location
	.long	Lset469
	.long	1444                    ## DW_AT_abstract_origin
	.byte	21                      ## Abbrev [21] 0xafa:0x9 DW_TAG_formal_parameter
.set Lset470, Ldebug_loc96-Lsection_debug_loc ## DW_AT_location
	.long	Lset470
	.long	1456                    ## DW_AT_abstract_origin
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0xb05:0x5 DW_TAG_pointer_type
	.long	336                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xb0a:0x5 DW_TAG_pointer_type
	.long	737                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0xb0f:0x7 DW_TAG_base_type
	.long	835                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset471, Ltmp91-Lfunc_begin0
	.quad	Lset471
.set Lset472, Ltmp92-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp96-Lfunc_begin0
	.quad	Lset473
.set Lset474, Ltmp97-Lfunc_begin0
	.quad	Lset474
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset475, Ltmp113-Lfunc_begin0
	.quad	Lset475
.set Lset476, Ltmp114-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp118-Lfunc_begin0
	.quad	Lset477
.set Lset478, Ltmp119-Lfunc_begin0
	.quad	Lset478
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
	.long	22                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	2                       ## Bucket 2
	.long	5                       ## Bucket 3
	.long	6                       ## Bucket 4
	.long	9                       ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	13                      ## Bucket 8
	.long	18                      ## Bucket 9
	.long	-1                      ## Bucket 10
	.long	-1385727457             ## Hash in Bucket 0
	.long	-1847613067             ## Hash in Bucket 1
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
.set Lset479, LNames20-Lnames_begin     ## Offset in Bucket 0
	.long	Lset479
.set Lset480, LNames10-Lnames_begin     ## Offset in Bucket 1
	.long	Lset480
.set Lset481, LNames12-Lnames_begin     ## Offset in Bucket 2
	.long	Lset481
.set Lset482, LNames8-Lnames_begin      ## Offset in Bucket 2
	.long	Lset482
.set Lset483, LNames2-Lnames_begin      ## Offset in Bucket 2
	.long	Lset483
.set Lset484, LNames18-Lnames_begin     ## Offset in Bucket 3
	.long	Lset484
.set Lset485, LNames15-Lnames_begin     ## Offset in Bucket 4
	.long	Lset485
.set Lset486, LNames3-Lnames_begin      ## Offset in Bucket 4
	.long	Lset486
.set Lset487, LNames7-Lnames_begin      ## Offset in Bucket 4
	.long	Lset487
.set Lset488, LNames16-Lnames_begin     ## Offset in Bucket 5
	.long	Lset488
.set Lset489, LNames19-Lnames_begin     ## Offset in Bucket 5
	.long	Lset489
.set Lset490, LNames5-Lnames_begin      ## Offset in Bucket 5
	.long	Lset490
.set Lset491, LNames1-Lnames_begin      ## Offset in Bucket 5
	.long	Lset491
.set Lset492, LNames6-Lnames_begin      ## Offset in Bucket 8
	.long	Lset492
.set Lset493, LNames0-Lnames_begin      ## Offset in Bucket 8
	.long	Lset493
.set Lset494, LNames4-Lnames_begin      ## Offset in Bucket 8
	.long	Lset494
.set Lset495, LNames21-Lnames_begin     ## Offset in Bucket 8
	.long	Lset495
.set Lset496, LNames13-Lnames_begin     ## Offset in Bucket 8
	.long	Lset496
.set Lset497, LNames17-Lnames_begin     ## Offset in Bucket 9
	.long	Lset497
.set Lset498, LNames11-Lnames_begin     ## Offset in Bucket 9
	.long	Lset498
.set Lset499, LNames9-Lnames_begin      ## Offset in Bucket 9
	.long	Lset499
.set Lset500, LNames14-Lnames_begin     ## Offset in Bucket 9
	.long	Lset500
LNames20:
	.long	622                     ## enif_make_tuple2
	.long	10                      ## Num DIEs
	.long	1584
	.long	1631
	.long	1786
	.long	1833
	.long	1958
	.long	2121
	.long	2284
	.long	2447
	.long	2610
	.long	2773
	.long	0
LNames10:
	.long	671                     ## asm_1_nif_bb
	.long	1                       ## Num DIEs
	.long	1873
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
	.long	942
	.long	0
LNames3:
	.long	363                     ## unload
	.long	1                       ## Num DIEs
	.long	894
	.long	0
LNames7:
	.long	577                     ## init_nif_llvm
	.long	2                       ## Num DIEs
	.long	864
	.long	1184
	.long	0
LNames16:
	.long	736                     ## asm_1_nif_ff
	.long	1                       ## Num DIEs
	.long	2658
	.long	0
LNames19:
	.long	684                     ## asm_1_nif_if
	.long	1                       ## Num DIEs
	.long	2006
	.long	0
LNames5:
	.long	697                     ## asm_1_nif_uf
	.long	1                       ## Num DIEs
	.long	2169
	.long	0
LNames1:
	.long	605                     ## enif_get_big_num
	.long	1                       ## Num DIEs
	.long	1215
	.long	0
LNames6:
	.long	355                     ## upgrade
	.long	1                       ## Num DIEs
	.long	1053
	.long	0
LNames0:
	.long	343                     ## load
	.long	2                       ## Num DIEs
	.long	818
	.long	1138
	.long	0
LNames4:
	.long	710                     ## asm_1_nif_fi
	.long	1                       ## Num DIEs
	.long	2332
	.long	0
LNames21:
	.long	645                     ## asm_1_nif_ii
	.long	1                       ## Num DIEs
	.long	1469
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
	.long	749                     ## nif_init
	.long	1                       ## Num DIEs
	.long	289
	.long	0
LNames9:
	.long	723                     ## asm_1_nif_fu
	.long	1                       ## Num DIEs
	.long	2495
	.long	0
LNames14:
	.long	658                     ## asm_1_nif_uu
	.long	1                       ## Num DIEs
	.long	1671
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
.set Lset501, Ltypes7-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset501
.set Lset502, Ltypes22-Ltypes_begin     ## Offset in Bucket 0
	.long	Lset502
.set Lset503, Ltypes13-Ltypes_begin     ## Offset in Bucket 1
	.long	Lset503
.set Lset504, Ltypes3-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset504
.set Lset505, Ltypes2-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset505
.set Lset506, Ltypes15-Ltypes_begin     ## Offset in Bucket 2
	.long	Lset506
.set Lset507, Ltypes10-Ltypes_begin     ## Offset in Bucket 3
	.long	Lset507
.set Lset508, Ltypes20-Ltypes_begin     ## Offset in Bucket 4
	.long	Lset508
.set Lset509, Ltypes1-Ltypes_begin      ## Offset in Bucket 5
	.long	Lset509
.set Lset510, Ltypes16-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset510
.set Lset511, Ltypes14-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset511
.set Lset512, Ltypes17-Ltypes_begin     ## Offset in Bucket 5
	.long	Lset512
.set Lset513, Ltypes6-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset513
.set Lset514, Ltypes18-Ltypes_begin     ## Offset in Bucket 6
	.long	Lset514
.set Lset515, Ltypes21-Ltypes_begin     ## Offset in Bucket 7
	.long	Lset515
.set Lset516, Ltypes5-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset516
.set Lset517, Ltypes11-Ltypes_begin     ## Offset in Bucket 8
	.long	Lset517
.set Lset518, Ltypes4-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset518
.set Lset519, Ltypes9-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset519
.set Lset520, Ltypes19-Ltypes_begin     ## Offset in Bucket 9
	.long	Lset520
.set Lset521, Ltypes12-Ltypes_begin     ## Offset in Bucket 10
	.long	Lset521
.set Lset522, Ltypes8-Ltypes_begin      ## Offset in Bucket 10
	.long	Lset522
.set Lset523, Ltypes0-Ltypes_begin      ## Offset in Bucket 10
	.long	Lset523
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
	.long	835                     ## long int
	.long	1                       ## Num DIEs
	.long	2831
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
	.long	791
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
