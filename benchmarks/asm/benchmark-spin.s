	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__const
	.align	4
LCPI0_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI0_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_2:
	.quad	4666723172467343360     ## double 1.0E+4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16chrono_benchmarkv
	.align	4, 0x90
__Z16chrono_benchmarkv:                 ## @_Z16chrono_benchmarkv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp6:
	.cfi_offset %rbx, -48
Ltmp7:
	.cfi_offset %r12, -40
Ltmp8:
	.cfi_offset %r14, -32
Ltmp9:
	.cfi_offset %r15, -24
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	4, 0x90
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movl	$1000, %ebx             ## imm = 0x3E8
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r14
	.align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	decl	%ebx
	jne	LBB0_2
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r14, %r12
	addq	%rax, %r12
	incl	%r15d
	cmpl	$10000, %r15d           ## imm = 0x2710
	jne	LBB0_1
## BB#4:
	movd	%r12, %xmm0
	punpckldq	LCPI0_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI0_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI0_2(%rip), %xmm0
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__const
	.align	4
LCPI1_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI1_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_2:
	.quad	4666723172467343360     ## double 1.0E+4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z14mach_benchmarkv
	.align	4, 0x90
__Z14mach_benchmarkv:                   ## @_Z14mach_benchmarkv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp16:
	.cfi_offset %rbx, -48
Ltmp17:
	.cfi_offset %r12, -40
Ltmp18:
	.cfi_offset %r14, -32
Ltmp19:
	.cfi_offset %r15, -24
	cmpl	$0, __ZZ14mach_benchmarkvE13sTimebaseInfo+4(%rip)
	jne	LBB1_2
## BB#1:
	leaq	__ZZ14mach_benchmarkvE13sTimebaseInfo(%rip), %rdi
	callq	_mach_timebase_info
LBB1_2:
	callq	_mach_absolute_time
	callq	_mach_absolute_time
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	4, 0x90
LBB1_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_4 Depth 2
	movl	$1000, %ebx             ## imm = 0x3E8
	callq	_mach_absolute_time
	movq	%rax, %r14
	.align	4, 0x90
LBB1_4:                                 ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	decl	%ebx
	jne	LBB1_4
## BB#5:                                ##   in Loop: Header=BB1_3 Depth=1
	callq	_mach_absolute_time
	movq	%rax, %rcx
	movl	__ZZ14mach_benchmarkvE13sTimebaseInfo(%rip), %eax
	imulq	%r14, %rax
	movl	__ZZ14mach_benchmarkvE13sTimebaseInfo+4(%rip), %esi
	xorl	%edx, %edx
	divq	%rsi
	addq	%rcx, %r12
	subq	%rax, %r12
	incl	%r15d
	cmpl	$10000, %r15d           ## imm = 0x2710
	jne	LBB1_3
## BB#6:
	movd	%r12, %xmm0
	punpckldq	LCPI1_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__Z14gtod_benchmarkv
	.align	4, 0x90
__Z14gtod_benchmarkv:                   ## @_Z14gtod_benchmarkv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movl	$0, -36(%rbp)
	movl	$390, %eax              ## imm = 0x186
	.align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	incl	-36(%rbp)
	decl	%eax
	jne	LBB2_1
## BB#2:
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	imulq	$1000000, -32(%rbp), %rcx ## imm = 0xF4240
	movslq	-24(%rbp), %rax
	movslq	-8(%rbp), %rdx
	imulq	$-1000000, -16(%rbp), %rsi ## imm = 0xFFFFFFFFFFF0BDC0
	addq	%rcx, %rax
	addq	%rsi, %rax
	subq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__const
	.align	4
LCPI3_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI3_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI3_2:
	.quad	4666723172467343360     ## double 1.0E+4
LCPI3_3:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9benchmarkPv
	.align	4, 0x90
__Z9benchmarkPv:                        ## @_Z9benchmarkPv
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin3:
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp68:
	.cfi_def_cfa_offset 16
Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp70:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp71:
	.cfi_offset %rbx, -56
Ltmp72:
	.cfi_offset %r12, -48
Ltmp73:
	.cfi_offset %r13, -40
Ltmp74:
	.cfi_offset %r14, -32
Ltmp75:
	.cfi_offset %r15, -24
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_lock
	movl	$1, _p_var(%rip)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp25:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp26:
## BB#1:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp27:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp28:
## BB#2:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	leaq	_thread_start_cond(%rip), %rdi
	callq	_pthread_cond_signal
	cmpl	$2, _p_var(%rip)
	je	LBB3_5
## BB#3:
	leaq	_thread_start_cond(%rip), %r14
	leaq	_p_mutex(%rip), %rbx
	.align	4, 0x90
LBB3_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_pthread_cond_wait
	cmpl	$2, _p_var(%rip)
	jne	LBB3_4
LBB3_5:                                 ## %._crit_edge
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-72(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp33:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp34:
## BB#6:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp35:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp36:
## BB#7:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit4
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_unlock
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       ## 8-byte Spill
	xorl	%r14d, %r14d
	.align	4, 0x90
LBB3_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_9 Depth 2
                                        ##       Child Loop BB3_10 Depth 3
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movl	$0, -96(%rbp)
	movl	$0, -112(%rbp)
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	.align	4, 0x90
LBB3_9:                                 ##   Parent Loop BB3_8 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB3_10 Depth 3
	movl	$1000, %ebx             ## imm = 0x3E8
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r15
	.align	4, 0x90
LBB3_10:                                ##   Parent Loop BB3_8 Depth=1
                                        ##     Parent Loop BB3_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	movl	%eax, -96(%rbp)
	decl	%ebx
	jne	LBB3_10
## BB#11:                               ##   in Loop: Header=BB3_9 Depth=2
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r15, %r13
	addq	%rax, %r13
	incl	%r12d
	cmpl	$10000, %r12d           ## imm = 0x2710
	jne	LBB3_9
## BB#12:                               ## %_Z16chrono_benchmarkv.exit
                                        ##   in Loop: Header=BB3_8 Depth=1
	movd	%r13, %xmm0
	punpckldq	LCPI3_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI3_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI3_2(%rip), %xmm0
	movsd	-128(%rbp), %xmm1       ## 8-byte Reload
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       ## 8-byte Spill
	incl	%r14d
	cmpl	$1000, %r14d            ## imm = 0x3E8
	jne	LBB3_8
## BB#13:
	xorps	%xmm0, %xmm0
	movl	$1000, %ebx             ## imm = 0x3E8
	.align	4, 0x90
LBB3_14:                                ## %.preheader11
                                        ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -136(%rbp)       ## 8-byte Spill
	callq	__Z14mach_benchmarkv
	addsd	-136(%rbp), %xmm0       ## 8-byte Folded Reload
	decl	%ebx
	jne	LBB3_14
## BB#15:                               ## %.preheader
	movsd	%xmm0, -136(%rbp)       ## 8-byte Spill
	xorl	%ebx, %ebx
	leaq	-96(%rbp), %r14
	leaq	-112(%rbp), %r15
	xorl	%r12d, %r12d
	.align	4, 0x90
LBB3_16:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_17 Depth 2
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_gettimeofday
	movl	$0, -116(%rbp)
	movl	$390, %eax              ## imm = 0x186
	.align	4, 0x90
LBB3_17:                                ##   Parent Loop BB3_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	incl	-116(%rbp)
	decl	%eax
	jne	LBB3_17
## BB#18:                               ## %_Z14gtod_benchmarkv.exit
                                        ##   in Loop: Header=BB3_16 Depth=1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_gettimeofday
	movq	-112(%rbp), %rax
	movslq	-104(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	subq	-96(%rbp), %rax
	imulq	$1000000, %rax, %rax    ## imm = 0xF4240
	addq	%rcx, %rax
	cmpq	%rdx, %rax
	setne	%al
	movzbl	%al, %eax
	addq	%rax, %r12
	incl	%ebx
	cmpl	$1000, %ebx             ## imm = 0x3E8
	jne	LBB3_16
## BB#19:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movsd	-128(%rbp), %xmm0       ## 8-byte Reload
	divsd	LCPI3_3(%rip), %xmm0
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp41:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp42:
## BB#20:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp43:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r15b
Ltmp44:
## BB#21:                               ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit5
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r15b, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str3(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movsd	-136(%rbp), %xmm0       ## 8-byte Reload
	divsd	LCPI3_3(%rip), %xmm0
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
	leaq	-56(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp49:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp50:
## BB#22:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp51:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r15b
Ltmp52:
## BB#23:                               ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit6
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r15b, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str4(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-48(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp57:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp58:
## BB#24:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp59:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp60:
## BB#25:                               ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit7
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB3_26:
Ltmp29:
	movq	%rax, %rbx
Ltmp30:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp31:
	jmp	LBB3_27
LBB3_28:
Ltmp32:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_29:
Ltmp37:
	movq	%rax, %rbx
Ltmp38:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp39:
	jmp	LBB3_27
LBB3_30:
Ltmp40:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_31:
Ltmp45:
	movq	%rax, %rbx
Ltmp46:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp47:
	jmp	LBB3_27
LBB3_32:
Ltmp48:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_33:
Ltmp53:
	movq	%rax, %rbx
Ltmp54:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp55:
	jmp	LBB3_27
LBB3_34:
Ltmp56:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_35:
Ltmp61:
	movq	%rax, %rbx
Ltmp62:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp63:
LBB3_27:                                ## %unwind_resume
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB3_36:
Ltmp64:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end3:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table3:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\346\201\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\335\001"              ## Call site table length
Lset0 = Leh_func_begin3-Leh_func_begin3 ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp25-Leh_func_begin3          ##   Call between Leh_func_begin3 and Ltmp25
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp25-Leh_func_begin3          ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp28-Ltmp25                   ##   Call between Ltmp25 and Ltmp28
	.long	Lset3
Lset4 = Ltmp29-Leh_func_begin3          ##     jumps to Ltmp29
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp28-Leh_func_begin3          ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp33-Ltmp28                   ##   Call between Ltmp28 and Ltmp33
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset7 = Ltmp33-Leh_func_begin3          ## >> Call Site 4 <<
	.long	Lset7
Lset8 = Ltmp36-Ltmp33                   ##   Call between Ltmp33 and Ltmp36
	.long	Lset8
Lset9 = Ltmp37-Leh_func_begin3          ##     jumps to Ltmp37
	.long	Lset9
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp36-Leh_func_begin3         ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp41-Ltmp36                  ##   Call between Ltmp36 and Ltmp41
	.long	Lset11
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp41-Leh_func_begin3         ## >> Call Site 6 <<
	.long	Lset12
Lset13 = Ltmp44-Ltmp41                  ##   Call between Ltmp41 and Ltmp44
	.long	Lset13
Lset14 = Ltmp45-Leh_func_begin3         ##     jumps to Ltmp45
	.long	Lset14
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp44-Leh_func_begin3         ## >> Call Site 7 <<
	.long	Lset15
Lset16 = Ltmp49-Ltmp44                  ##   Call between Ltmp44 and Ltmp49
	.long	Lset16
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp49-Leh_func_begin3         ## >> Call Site 8 <<
	.long	Lset17
Lset18 = Ltmp52-Ltmp49                  ##   Call between Ltmp49 and Ltmp52
	.long	Lset18
Lset19 = Ltmp53-Leh_func_begin3         ##     jumps to Ltmp53
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp52-Leh_func_begin3         ## >> Call Site 9 <<
	.long	Lset20
Lset21 = Ltmp57-Ltmp52                  ##   Call between Ltmp52 and Ltmp57
	.long	Lset21
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset22 = Ltmp57-Leh_func_begin3         ## >> Call Site 10 <<
	.long	Lset22
Lset23 = Ltmp60-Ltmp57                  ##   Call between Ltmp57 and Ltmp60
	.long	Lset23
Lset24 = Ltmp61-Leh_func_begin3         ##     jumps to Ltmp61
	.long	Lset24
	.byte	0                       ##   On action: cleanup
Lset25 = Ltmp60-Leh_func_begin3         ## >> Call Site 11 <<
	.long	Lset25
Lset26 = Ltmp30-Ltmp60                  ##   Call between Ltmp60 and Ltmp30
	.long	Lset26
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp30-Leh_func_begin3         ## >> Call Site 12 <<
	.long	Lset27
Lset28 = Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.long	Lset28
Lset29 = Ltmp32-Leh_func_begin3         ##     jumps to Ltmp32
	.long	Lset29
	.byte	1                       ##   On action: 1
Lset30 = Ltmp38-Leh_func_begin3         ## >> Call Site 13 <<
	.long	Lset30
Lset31 = Ltmp39-Ltmp38                  ##   Call between Ltmp38 and Ltmp39
	.long	Lset31
Lset32 = Ltmp40-Leh_func_begin3         ##     jumps to Ltmp40
	.long	Lset32
	.byte	1                       ##   On action: 1
Lset33 = Ltmp46-Leh_func_begin3         ## >> Call Site 14 <<
	.long	Lset33
Lset34 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset34
Lset35 = Ltmp48-Leh_func_begin3         ##     jumps to Ltmp48
	.long	Lset35
	.byte	1                       ##   On action: 1
Lset36 = Ltmp54-Leh_func_begin3         ## >> Call Site 15 <<
	.long	Lset36
Lset37 = Ltmp55-Ltmp54                  ##   Call between Ltmp54 and Ltmp55
	.long	Lset37
Lset38 = Ltmp56-Leh_func_begin3         ##     jumps to Ltmp56
	.long	Lset38
	.byte	1                       ##   On action: 1
Lset39 = Ltmp62-Leh_func_begin3         ## >> Call Site 16 <<
	.long	Lset39
Lset40 = Ltmp63-Ltmp62                  ##   Call between Ltmp62 and Ltmp63
	.long	Lset40
Lset41 = Ltmp64-Leh_func_begin3         ##     jumps to Ltmp64
	.long	Lset41
	.byte	1                       ##   On action: 1
Lset42 = Ltmp63-Leh_func_begin3         ## >> Call Site 17 <<
	.long	Lset42
Lset43 = Leh_func_end3-Ltmp63           ##   Call between Ltmp63 and Leh_func_end3
	.long	Lset43
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin4:
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp109:
	.cfi_def_cfa_offset 16
Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp111:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp112:
	.cfi_offset %rbx, -56
Ltmp113:
	.cfi_offset %r12, -48
Ltmp114:
	.cfi_offset %r13, -40
Ltmp115:
	.cfi_offset %r14, -32
Ltmp116:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
Ltmp76:
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp77:
## BB#1:
	cmpb	$0, -64(%rbp)
	je	LBB4_13
## BB#2:
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r15
	movq	(%rbx), %rax
	movq	-24(%rax), %r12
	movq	40(%r12,%rbx), %rdi
	movl	$176, %eax
	andl	8(%r12,%rbx), %eax
	cmpl	$32, %eax
	movq	%r14, %r13
	jne	LBB4_4
## BB#3:
	leaq	(%r14,%r15), %r13
LBB4_4:
	leaq	(%rbx,%r12), %r8
	movl	144(%rbx,%r12), %eax
	cmpl	$-1, %eax
	jne	LBB4_10
## BB#5:
Ltmp78:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	-48(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp79:
## BB#6:                                ## %.noexc
Ltmp80:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp81:
## BB#7:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp82:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -81(%rbp)          ## 1-byte Spill
Ltmp83:
## BB#8:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
Ltmp88:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp89:
## BB#9:                                ## %.noexc1
	movsbl	-81(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%rbx,%r12)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %r8          ## 8-byte Reload
LBB4_10:
	addq	%r14, %r15
Ltmp90:
	movsbl	%al, %r9d
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp91:
## BB#11:
	testq	%rax, %rax
	jne	LBB4_13
## BB#12:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp92:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp93:
LBB4_13:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
Ltmp97:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp98:
LBB4_21:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB4_14:
Ltmp84:
	movq	%rax, %r14
Ltmp85:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp86:
	jmp	LBB4_17
LBB4_15:
Ltmp87:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB4_16:
Ltmp94:
	movq	%rax, %r14
LBB4_17:                                ## %.body
Ltmp95:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp96:
	jmp	LBB4_19
LBB4_18:
Ltmp99:
	movq	%rax, %r14
LBB4_19:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	addq	-24(%rax), %rcx
Ltmp100:
	movq	%rcx, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp101:
## BB#20:
	callq	___cxa_end_catch
	jmp	LBB4_21
LBB4_22:
Ltmp102:
	movq	%rax, %rbx
Ltmp103:
	callq	___cxa_end_catch
Ltmp104:
## BB#23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_24:
Ltmp105:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end4:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table4:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\245\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset44 = Ltmp76-Leh_func_begin4         ## >> Call Site 1 <<
	.long	Lset44
Lset45 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset45
Lset46 = Ltmp99-Leh_func_begin4         ##     jumps to Ltmp99
	.long	Lset46
	.byte	1                       ##   On action: 1
Lset47 = Ltmp78-Leh_func_begin4         ## >> Call Site 2 <<
	.long	Lset47
Lset48 = Ltmp79-Ltmp78                  ##   Call between Ltmp78 and Ltmp79
	.long	Lset48
Lset49 = Ltmp94-Leh_func_begin4         ##     jumps to Ltmp94
	.long	Lset49
	.byte	1                       ##   On action: 1
Lset50 = Ltmp80-Leh_func_begin4         ## >> Call Site 3 <<
	.long	Lset50
Lset51 = Ltmp83-Ltmp80                  ##   Call between Ltmp80 and Ltmp83
	.long	Lset51
Lset52 = Ltmp84-Leh_func_begin4         ##     jumps to Ltmp84
	.long	Lset52
	.byte	1                       ##   On action: 1
Lset53 = Ltmp88-Leh_func_begin4         ## >> Call Site 4 <<
	.long	Lset53
Lset54 = Ltmp93-Ltmp88                  ##   Call between Ltmp88 and Ltmp93
	.long	Lset54
Lset55 = Ltmp94-Leh_func_begin4         ##     jumps to Ltmp94
	.long	Lset55
	.byte	1                       ##   On action: 1
Lset56 = Ltmp97-Leh_func_begin4         ## >> Call Site 5 <<
	.long	Lset56
Lset57 = Ltmp98-Ltmp97                  ##   Call between Ltmp97 and Ltmp98
	.long	Lset57
Lset58 = Ltmp99-Leh_func_begin4         ##     jumps to Ltmp99
	.long	Lset58
	.byte	1                       ##   On action: 1
Lset59 = Ltmp85-Leh_func_begin4         ## >> Call Site 6 <<
	.long	Lset59
Lset60 = Ltmp86-Ltmp85                  ##   Call between Ltmp85 and Ltmp86
	.long	Lset60
Lset61 = Ltmp87-Leh_func_begin4         ##     jumps to Ltmp87
	.long	Lset61
	.byte	1                       ##   On action: 1
Lset62 = Ltmp95-Leh_func_begin4         ## >> Call Site 7 <<
	.long	Lset62
Lset63 = Ltmp96-Ltmp95                  ##   Call between Ltmp95 and Ltmp96
	.long	Lset63
Lset64 = Ltmp105-Leh_func_begin4        ##     jumps to Ltmp105
	.long	Lset64
	.byte	1                       ##   On action: 1
Lset65 = Ltmp96-Leh_func_begin4         ## >> Call Site 8 <<
	.long	Lset65
Lset66 = Ltmp100-Ltmp96                 ##   Call between Ltmp96 and Ltmp100
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp100-Leh_func_begin4        ## >> Call Site 9 <<
	.long	Lset67
Lset68 = Ltmp101-Ltmp100                ##   Call between Ltmp100 and Ltmp101
	.long	Lset68
Lset69 = Ltmp102-Leh_func_begin4        ##     jumps to Ltmp102
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp101-Leh_func_begin4        ## >> Call Site 10 <<
	.long	Lset70
Lset71 = Ltmp103-Ltmp101                ##   Call between Ltmp101 and Ltmp103
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp103-Leh_func_begin4        ## >> Call Site 11 <<
	.long	Lset72
Lset73 = Ltmp104-Ltmp103                ##   Call between Ltmp103 and Ltmp104
	.long	Lset73
Lset74 = Ltmp105-Leh_func_begin4        ##     jumps to Ltmp105
	.long	Lset74
	.byte	1                       ##   On action: 1
Lset75 = Ltmp104-Leh_func_begin4        ## >> Call Site 12 <<
	.long	Lset75
Lset76 = Leh_func_end4-Ltmp104          ##   Call between Ltmp104 and Leh_func_end4
	.long	Lset76
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI5_0:
	.quad	4696837146684686336     ## double 1.0E+6
LCPI5_1:
	.quad	4617315517961601024     ## double 5
LCPI5_2:
	.quad	4621819117588971520     ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z41move_pthread_to_realtime_scheduling_classP17_opaque_pthread_t
	.align	4, 0x90
__Z41move_pthread_to_realtime_scheduling_classP17_opaque_pthread_t: ## @_Z41move_pthread_to_realtime_scheduling_classP17_opaque_pthread_t
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin5:
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp128:
	.cfi_def_cfa_offset 16
Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp130:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Ltmp131:
	.cfi_offset %rbx, -32
Ltmp132:
	.cfi_offset %r14, -24
	leaq	-32(%rbp), %rdi
	callq	_mach_timebase_info
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str5(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp117:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp118:
## BB#1:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp119:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp120:
## BB#2:                                ## %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	LCPI5_0(%rip), %xmm0
	movl	$0, -48(%rbp)
	movsd	LCPI5_1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movl	%eax, -44(%rbp)
	mulsd	LCPI5_2(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	callq	_pthread_self
	movq	%rax, %rdi
	callq	_pthread_mach_thread_np
	leaq	-48(%rbp), %rdx
	movl	$2, %esi
	movl	$4, %ecx
	movl	%eax, %edi
	callq	_thread_policy_set
	testl	%eax, %eax
	jne	LBB5_3
## BB#7:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
LBB5_4:
Ltmp121:
	movq	%rax, %rbx
Ltmp122:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp123:
## BB#5:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB5_3:
	leaq	L_.str6(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_mach_error
	movl	$1, %edi
	callq	_exit
LBB5_6:
Ltmp124:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end5:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table5:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset77 = Leh_func_begin5-Leh_func_begin5 ## >> Call Site 1 <<
	.long	Lset77
Lset78 = Ltmp117-Leh_func_begin5        ##   Call between Leh_func_begin5 and Ltmp117
	.long	Lset78
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset79 = Ltmp117-Leh_func_begin5        ## >> Call Site 2 <<
	.long	Lset79
Lset80 = Ltmp120-Ltmp117                ##   Call between Ltmp117 and Ltmp120
	.long	Lset80
Lset81 = Ltmp121-Leh_func_begin5        ##     jumps to Ltmp121
	.long	Lset81
	.byte	0                       ##   On action: cleanup
Lset82 = Ltmp120-Leh_func_begin5        ## >> Call Site 3 <<
	.long	Lset82
Lset83 = Ltmp122-Ltmp120                ##   Call between Ltmp120 and Ltmp122
	.long	Lset83
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset84 = Ltmp122-Leh_func_begin5        ## >> Call Site 4 <<
	.long	Lset84
Lset85 = Ltmp123-Ltmp122                ##   Call between Ltmp122 and Ltmp123
	.long	Lset85
Lset86 = Ltmp124-Leh_func_begin5        ##     jumps to Ltmp124
	.long	Lset86
	.byte	1                       ##   On action: 1
Lset87 = Ltmp123-Leh_func_begin5        ## >> Call Site 5 <<
	.long	Lset87
Lset88 = Leh_func_end5-Ltmp123          ##   Call between Ltmp123 and Leh_func_end5
	.long	Lset88
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z30set_pthread_processor_affinityP17_opaque_pthread_t
	.align	4, 0x90
__Z30set_pthread_processor_affinityP17_opaque_pthread_t: ## @_Z30set_pthread_processor_affinityP17_opaque_pthread_t
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp135:
	.cfi_def_cfa_offset 16
Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$3, -8(%rbp)
	callq	_pthread_self
	movq	%rax, %rdi
	callq	_pthread_mach_thread_np
	leaq	-8(%rbp), %rdx
	movl	$4, %esi
	movl	$1, %ecx
	movl	%eax, %edi
	callq	_thread_policy_set
	testl	%eax, %eax
	jne	LBB6_2
## BB#1:
	addq	$16, %rsp
	popq	%rbp
	ret
LBB6_2:
	leaq	L_.str6(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_mach_error
	movl	$1, %edi
	callq	_exit
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin7:
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp149:
	.cfi_def_cfa_offset 16
Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp151:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp152:
	.cfi_offset %rbx, -32
Ltmp153:
	.cfi_offset %r14, -24
	leaq	__Z9benchmarkPv(%rip), %rdx
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_pthread_create
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_lock
	cmpl	$0, _p_var(%rip)
	jne	LBB7_3
## BB#1:
	leaq	_thread_start_cond(%rip), %r14
	leaq	_p_mutex(%rip), %rbx
	.align	4, 0x90
LBB7_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_pthread_cond_wait
	cmpl	$0, _p_var(%rip)
	je	LBB7_2
LBB7_3:                                 ## %._crit_edge
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str7(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp138:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp139:
## BB#4:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp140:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp141:
## BB#5:                                ## %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	callq	__Z41move_pthread_to_realtime_scheduling_classP17_opaque_pthread_t
	movl	$2, _p_var(%rip)
	leaq	_thread_start_cond(%rip), %rdi
	callq	_pthread_cond_signal
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_unlock
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	_pthread_join
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
LBB7_6:
Ltmp142:
	movq	%rax, %rbx
Ltmp143:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp144:
## BB#7:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB7_8:
Ltmp145:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end7:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table7:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset89 = Leh_func_begin7-Leh_func_begin7 ## >> Call Site 1 <<
	.long	Lset89
Lset90 = Ltmp138-Leh_func_begin7        ##   Call between Leh_func_begin7 and Ltmp138
	.long	Lset90
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset91 = Ltmp138-Leh_func_begin7        ## >> Call Site 2 <<
	.long	Lset91
Lset92 = Ltmp141-Ltmp138                ##   Call between Ltmp138 and Ltmp141
	.long	Lset92
Lset93 = Ltmp142-Leh_func_begin7        ##     jumps to Ltmp142
	.long	Lset93
	.byte	0                       ##   On action: cleanup
Lset94 = Ltmp141-Leh_func_begin7        ## >> Call Site 3 <<
	.long	Lset94
Lset95 = Ltmp143-Ltmp141                ##   Call between Ltmp141 and Ltmp143
	.long	Lset95
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp143-Leh_func_begin7        ## >> Call Site 4 <<
	.long	Lset96
Lset97 = Ltmp144-Ltmp143                ##   Call between Ltmp143 and Ltmp144
	.long	Lset97
Lset98 = Ltmp145-Leh_func_begin7        ##     jumps to Ltmp145
	.long	Lset98
	.byte	1                       ##   On action: 1
Lset99 = Ltmp144-Leh_func_begin7        ## >> Call Site 5 <<
	.long	Lset99
Lset100 = Leh_func_end7-Ltmp144         ##   Call between Ltmp144 and Leh_func_end7
	.long	Lset100
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin9:
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Ltmp163:
	.cfi_def_cfa_offset 16
Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp165:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp166:
	.cfi_offset %rbx, -56
Ltmp167:
	.cfi_offset %r12, -48
Ltmp168:
	.cfi_offset %r13, -40
Ltmp169:
	.cfi_offset %r14, -32
Ltmp170:
	.cfi_offset %r15, -24
	movq	%rcx, %rbx
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	LBB9_12
## BB#1:
	movq	%rbx, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r13d, %r13d
	subq	%rax, %rcx
	cmovgq	%rcx, %r13
	movq	%rdx, %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB9_3
## BB#2:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%r15, -80(%rbp)         ## 8-byte Spill
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
	movq	%r12, %rdx
	movq	%r8, %r14
	movl	%r9d, %r15d
	callq	*96(%rax)
	movl	%r15d, %r9d
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	-80(%rbp), %r15         ## 8-byte Reload
	movq	%r14, %r8
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%r12, %rcx
	jne	LBB9_12
LBB9_3:
	testq	%r13, %r13
	jle	LBB9_9
## BB#4:
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
	movq	%r8, %r12
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	je	LBB9_6
## BB#5:
	movq	-48(%rbp), %rsi
	jmp	LBB9_7
LBB9_6:
	leaq	-63(%rbp), %rsi
LBB9_7:                                 ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	(%r15), %rax
	movq	96(%rax), %rax
Ltmp154:
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp155:
## BB#8:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	cmpq	%r13, %r14
	movq	%r12, %r8
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	jne	LBB9_12
LBB9_9:
	subq	%rdx, %rbx
	testq	%rbx, %rbx
	jle	LBB9_11
## BB#10:
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r14
	callq	*96(%rax)
	movq	%r14, %r8
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	jne	LBB9_12
LBB9_11:
	movq	$0, 24(%r8)
	movq	%r15, %rax
LBB9_12:                                ## %.thread
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB9_13:
Ltmp156:
	movq	%rax, %rbx
Ltmp157:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp158:
## BB#14:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB9_15:
Ltmp159:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end9:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table9:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset101 = Leh_func_begin9-Leh_func_begin9 ## >> Call Site 1 <<
	.long	Lset101
Lset102 = Ltmp154-Leh_func_begin9       ##   Call between Leh_func_begin9 and Ltmp154
	.long	Lset102
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset103 = Ltmp154-Leh_func_begin9       ## >> Call Site 2 <<
	.long	Lset103
Lset104 = Ltmp155-Ltmp154               ##   Call between Ltmp154 and Ltmp155
	.long	Lset104
Lset105 = Ltmp156-Leh_func_begin9       ##     jumps to Ltmp156
	.long	Lset105
	.byte	0                       ##   On action: cleanup
Lset106 = Ltmp155-Leh_func_begin9       ## >> Call Site 3 <<
	.long	Lset106
Lset107 = Ltmp157-Ltmp155               ##   Call between Ltmp155 and Ltmp157
	.long	Lset107
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset108 = Ltmp157-Leh_func_begin9       ## >> Call Site 4 <<
	.long	Lset108
Lset109 = Ltmp158-Ltmp157               ##   Call between Ltmp157 and Ltmp158
	.long	Lset109
Lset110 = Ltmp159-Leh_func_begin9       ##     jumps to Ltmp159
	.long	Lset110
	.byte	1                       ##   On action: 1
Lset111 = Ltmp158-Leh_func_begin9       ## >> Call Site 5 <<
	.long	Lset111
Lset112 = Leh_func_end9-Ltmp158         ##   Call between Ltmp158 and Leh_func_end9
	.long	Lset112
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__DATA,__data
	.globl	_p_mutex                ## @p_mutex
	.align	3
_p_mutex:
	.quad	850045863               ## 0x32aaaba7
	.space	56

	.globl	_thread_start_cond      ## @thread_start_cond
	.align	3
_thread_start_cond:
	.quad	1018212795              ## 0x3cb0b1bb
	.space	40

	.globl	_p_var                  ## @p_var
.zerofill __DATA,__common,_p_var,4,2
.zerofill __DATA,__bss,__ZZ14mach_benchmarkvE13sTimebaseInfo,8,2 ## @_ZZ14mach_benchmarkvE13sTimebaseInfo
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Benchmark thread init"

L_.str1:                                ## @.str1
	.asciz	"Benchmark started"

L_.str2:                                ## @.str2
	.asciz	"Chrono:\t"

L_.str3:                                ## @.str3
	.asciz	"Mach:\t"

L_.str4:                                ## @.str4
	.asciz	"Gtod:\t"

L_.str5:                                ## @.str5
	.asciz	"time scale: "

L_.str6:                                ## @.str6
	.asciz	"thread_policy_set:"

L_.str7:                                ## @.str7
	.asciz	"Moving thread to RTS"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support

.subsections_via_symbols
